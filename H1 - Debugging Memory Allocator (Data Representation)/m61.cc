#define M61_DISABLE 1
#include "m61.hh"
#include <cstdlib>
#include <cstring>
#include <cstdio>
#include <cinttypes>
#include <cassert>

// initialized statistics
m61_statistics statistics = {
    0, 0, 0, 0, 0, 0, NULL, NULL
};

// initialized head of linked list of metadata
metadata* mtd_head = nullptr;

// function for inserting node at head of linked list of metadata
void insert_mtd_node (metadata* n) {
    n -> next = mtd_head;
    n -> prev = nullptr;
    if (mtd_head){
      mtd_head -> prev = n;
    }
    mtd_head = n;
}

// function for removing node from linked list of metadata
void remove_mtd_node (metadata* n) {
  	if (n -> next) {
      n -> next -> prev = n -> prev;
    }
  	if (n -> prev) {
  		n -> prev -> next = n -> next;
    }
  	else {
  		mtd_head = n -> next;
    }
}

// check if ptr has a corresponding node in linked list of metadata
int find_mtd_node (void *ptr) {
    metadata* temp = mtd_head;
    while (temp) {
      if (temp -> plptr == ptr) {
        return 1;
      }
      temp = temp -> next;
    }
    return 0;
}

// initialized head of linked list of heavy hitters
heavyhitter* hh_head = nullptr;

// function for inserting node at head of linked list of heavy hitters
void insert_hh_node (heavyhitter* n) {
    n -> next = hh_head;
    n -> prev = nullptr;
    if (hh_head){
      hh_head -> prev = n;
    }
    hh_head = n;
}

// function for removing node from linked list of heavy hitters
void remove_hh_node (heavyhitter* n) {
  	if (n -> next) {
      n -> next -> prev = n -> prev;
    }
  	if (n -> prev) {
  		n -> prev -> next = n -> next;
    }
  	else {
  		hh_head = n -> next;
    }
}

// find corresponding node of line in linked list of heavy hitters
heavyhitter* find_hh_node (long line) {
    heavyhitter* temp = hh_head;
    while (temp) {
      if (temp -> line == line) {
        return temp;
      }
      temp = temp -> next;
    }
    return nullptr;
}

// initialize number of allocations sampled
long sampled = 0;

/// m61_malloc(sz, file, line)
///    Return a pointer to `sz` bytes of newly-allocated dynamic memory.
///    The memory is not initialized. If `sz == 0`, then m61_malloc must
///    return a unique, newly-allocated pointer value. The allocation
///    request was at location `file`:`line`.

void* m61_malloc(size_t sz, const char* file, long line) {
    (void) file, (void) line;   // avoid uninitialized variable warnings

    // checks for integer overflow
    size_t max = sz + sizeof(metadata) + sizeof(boundary);
    if (sz > max) {
        statistics.fail_size += sz;
        statistics.nfail ++;
        return nullptr;
    }

  	// checks for size zero
    if (sz == 0) {
        return nullptr;
    }

  	// allocates space for sz and metadata
    metadata* ptr = (metadata*) base_malloc(sz + sizeof(metadata) + sizeof(boundary));

  	// checks if allocation fails
    if (!ptr) {
        statistics.fail_size += sz;
        statistics.nfail ++;
        return nullptr;
    }

    // set metadata
    ptr -> plptr = (char*) (ptr + 1);
    ptr -> state = ALLOCATED;
    ptr -> size = sz;
    ptr -> file = file;
    ptr -> line = line;

    // set boundary
    boundary *end = (boundary*) (ptr -> plptr + sz);
    end -> buffer = END;

    // update stats
    statistics.active_size += sz;
    statistics.nactive ++;
    statistics.total_size += sz;
    statistics.ntotal ++;

    // insert ptr at head of linked list of metadata
    insert_mtd_node(ptr);

    // set heap_min and heap_max if empty
    if (statistics.heap_min == NULL && statistics.heap_max == NULL) {
       statistics.heap_min = (uintptr_t) (ptr -> plptr);
       statistics.heap_max = (uintptr_t) (ptr -> plptr + sz + sizeof(boundary));
    }
    // update heap_min and heap_max with ptr if applicable
    if (statistics.heap_min > (uintptr_t) (ptr -> plptr)) {
       statistics.heap_min = (uintptr_t) (ptr -> plptr);
    }
    if (statistics.heap_max < (uintptr_t) (ptr -> plptr + sz + sizeof(boundary))) {
       statistics.heap_max = (uintptr_t) (ptr -> plptr + sz + sizeof(boundary));
    }

    // update heavy hitter
    heavyhitter* node = find_hh_node(line);
    if (node) {
      	node -> size += sz;
      	sampled += sz;
    }
    else if (random() % 99 == 1){
      	heavyhitter* new_node = (heavyhitter*) malloc(sizeof(heavyhitter));
        new_node -> size = sz;
      	new_node -> file = file;
      	new_node -> line = line;
      	insert_hh_node(new_node);
      	sampled += sz;
    }


    // return pointer to payload
    return (void*) (ptr -> plptr);
}


/// m61_free(ptr, file, line)
///    Free the memory space pointed to by `ptr`, which must have been
///    returned by a previous call to m61_malloc. If `ptr == NULL`,
///    does nothing. The free was called at location `file`:`line`.

void m61_free(void* ptr, const char* file, long line) {
    (void) file, (void) line;   // avoid uninitialized variable warnings

    // checks for null pointer
    if (ptr == nullptr) {
        return;
    }

	  // checks if pointer is not within heap_min and heap_max
    if (ptr > (void*) statistics.heap_max || ptr < (void*) statistics.heap_min) {
        fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not in heap\n", file, line, ptr);
        abort();
    }

    // create a pointer to the metadata of ptr
    metadata* mdptr = (metadata*) ptr - 1;

    // check for double frees
    if (mdptr -> state == FREE) {
        fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, double free\n", file, line, ptr);
        abort();
    }

    // check for frees of not allocated pointers
    if (!find_mtd_node(ptr) || mdptr -> state != ALLOCATED || !mdptr) {
        fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not allocated\n", file, line, ptr);

        // find specific location for leaker report
        metadata * temp = mtd_head;
        while (temp) {
            if (temp -> plptr < ptr && ptr < (temp -> plptr + temp -> size)) {
                size_t location = (size_t) ptr - (size_t) temp -> plptr;
                fprintf(stderr, "%s:%ld: %p is %zu bytes inside a %zu byte region allocated here\n",
                        file, (line - 2), ptr, location, temp -> size);
            }
            temp = temp -> next;
        }
        abort();
    }

    // create a pointer to boundary of ptr
    boundary* end = (boundary*) (ptr + mdptr -> size);

    // check for boundary overwrite
    if (end -> buffer != END) {
        fprintf(stderr, "MEMORY BUG: %s:%ld: detected wild write during free of pointer %p\n",file, line, ptr);
        abort();
    }

    // update metadata
    mdptr -> state = FREE;

  	// update stats
    statistics.active_size -= mdptr -> size;
    statistics.nactive --;

  	// free pointer and remove from linked list of metadata
    remove_mtd_node(mdptr);
    base_free(mdptr);
}


/// m61_calloc(nmemb, sz, file, line)
///    Return a pointer to newly-allocated dynamic memory big enough to
///    hold an array of `nmemb` elements of `sz` bytes each. If `sz == 0`,
///    then must return a unique, newly-allocated pointer value. Returned
///    memory should be initialized to zero. The allocation request was at
///    location `file`:`line`.

void* m61_calloc(size_t nmemb, size_t sz, const char* file, long line) {

    // initialize total size and ptr
    size_t total_sz = nmemb * sz;
    void* ptr = nullptr;

    // checks for integer overflow
  	if ((total_sz / sz != nmemb) || (total_sz / nmemb != sz)) {
  		statistics.fail_size += sz;
      statistics.nfail ++;
  		return nullptr;
  	}

  	ptr = m61_malloc(nmemb * sz, file, line);
    if (ptr) {
          memset(ptr, 0, nmemb * sz);
    }
    return ptr;
}


/// m61_get_statistics(stats)
///    Store the current memory statistics in `*stats`.

void m61_get_statistics(m61_statistics* stats) {
    // Stub: set all statistics to enormous numbers
    memset(stats, 255, sizeof(m61_statistics));
    *stats = statistics;
}


/// m61_print_statistics()
///    Print the current memory statistics.

void m61_print_statistics() {
    m61_statistics stats;
    m61_get_statistics(&stats);

    printf("alloc count: active %10llu   total %10llu   fail %10llu\n",
           stats.nactive, stats.ntotal, stats.nfail);
    printf("alloc size:  active %10llu   total %10llu   fail %10llu\n",
           stats.active_size, stats.total_size, stats.fail_size);
}


/// m61_print_leak_report()
///    Print a report of all currently-active allocated blocks of dynamic
///    memory.

void m61_print_leak_report() {
    if (mtd_head != nullptr){
        metadata* temp = mtd_head;
        while (temp != nullptr) {
            if (temp -> state == ALLOCATED) {
		            printf("LEAK CHECK: %s:%ld: allocated object %p with size %zu\n",
                        temp -> file, temp -> line, temp -> plptr, temp -> size);
            }
	          temp = temp -> next;
        }
    }
}


/// m61_print_heavy_hitter_report()
///    Print a report of heavily-used allocation locations.

void m61_print_heavy_hitter_report() {
    heavyhitter* temp = hh_head;
    heavyhitter* free;
    while (temp) {
        double allocated = (double) temp -> size;
        double allocated_percentage = (allocated / sampled) * 100.0;
        if (allocated_percentage >= 20.0){
                printf("HEAVY HITTER: %s:%ld: %f bytes (~%.1f%%)\n",
                temp -> file, temp -> line, allocated, allocated_percentage);
        }
        if (temp -> next) {
            temp = temp -> next;
            free = temp -> prev;
        }
        else {
            free = temp;
            temp = NULL;
        }
        remove_hh_node(free);
        base_free(free);
    }
}
