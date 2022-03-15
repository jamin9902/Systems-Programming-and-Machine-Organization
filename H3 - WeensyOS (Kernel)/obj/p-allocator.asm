
obj/p-allocator.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  100000:	f3 0f 1e fa          	endbr64 
  100004:	55                   	push   %rbp
  100005:	48 89 e5             	mov    %rsp,%rbp
  100008:	41 54                	push   %r12
  10000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

__always_inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  100010:	0f 05                	syscall 
    return rax;
  100012:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  100015:	41 89 c4             	mov    %eax,%r12d
    pid_t p = sys_getpid();
    srand(p);
  100018:	89 c7                	mov    %eax,%edi
  10001a:	e8 f0 01 00 00       	callq  10020f <srand(unsigned int)>
//    Return the smallest multiple of `m` greater than or equal to `x`.
//    Equivalently, round `x` up to the nearest multiple of `m`.
template <typename T>
inline constexpr T round_up(T x, unsigned m) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + m - 1, m);
  10001f:	ba 1b 30 10 00       	mov    $0x10301b,%edx

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  100024:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
  10002b:	48 89 15 d6 1f 00 00 	mov    %rdx,0x1fd6(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  100032:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  100035:	48 83 e8 01          	sub    $0x1,%rax
  100039:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  10003f:	48 89 05 ba 1f 00 00 	mov    %rax,0x1fba(%rip)        # 102000 <stack_bottom>

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    while (heap_top != stack_bottom) {
  100046:	48 39 c2             	cmp    %rax,%rdx
  100049:	75 4d                	jne    100098 <process_main()+0x98>
    register uintptr_t rax asm("rax") = syscallno;
  10004b:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100050:	0f 05                	syscall 
    return rax;
  100052:	eb f7                	jmp    10004b <process_main()+0x4b>
            }
            // check that the page starts out all zero
            for (unsigned long* l = (unsigned long*) heap_top;
                 l != (unsigned long*) (heap_top + PAGESIZE);
                 ++l) {
                assert(*l == 0);
  100054:	b9 00 00 00 00       	mov    $0x0,%ecx
  100059:	ba 30 0d 10 00       	mov    $0x100d30,%edx
  10005e:	be 24 00 00 00       	mov    $0x24,%esi
  100063:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  100068:	e8 64 0c 00 00       	callq  100cd1 <assert_fail(char const*, int, char const*, char const*)>
            }
            // check we can write to new page
            *heap_top = p;
  10006d:	88 19                	mov    %bl,(%rcx)
            // check we can write to console
            console[CPOS(24, 79)] = p;
  10006f:	66 89 1d 28 8f fb ff 	mov    %bx,-0x470d8(%rip)        # b8f9e <console+0xf9e>
            // update `heap_top`
            heap_top += PAGESIZE;
  100076:	48 81 05 87 1f 00 00 	addq   $0x1000,0x1f87(%rip)        # 102008 <heap_top>
  10007d:	00 10 00 00 
    register uintptr_t rax asm("rax") = syscallno;
  100081:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100086:	0f 05                	syscall 
    while (heap_top != stack_bottom) {
  100088:	48 8b 05 71 1f 00 00 	mov    0x1f71(%rip),%rax        # 102000 <stack_bottom>
  10008f:	48 39 05 72 1f 00 00 	cmp    %rax,0x1f72(%rip)        # 102008 <heap_top>
  100096:	74 b3                	je     10004b <process_main()+0x4b>
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  100098:	be 63 00 00 00       	mov    $0x63,%esi
  10009d:	bf 00 00 00 00       	mov    $0x0,%edi
  1000a2:	e8 87 01 00 00       	callq  10022e <rand(int, int)>
  1000a7:	44 39 e0             	cmp    %r12d,%eax
  1000aa:	7d d5                	jge    100081 <process_main()+0x81>
    register uintptr_t rax asm("rax") = syscallno;
  1000ac:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  1000b1:	48 8b 3d 50 1f 00 00 	mov    0x1f50(%rip),%rdi        # 102008 <heap_top>
  1000b8:	0f 05                	syscall 
            if (sys_page_alloc(heap_top) < 0) {
  1000ba:	85 c0                	test   %eax,%eax
  1000bc:	78 8d                	js     10004b <process_main()+0x4b>
            for (unsigned long* l = (unsigned long*) heap_top;
  1000be:	48 8b 0d 43 1f 00 00 	mov    0x1f43(%rip),%rcx        # 102008 <heap_top>
                 l != (unsigned long*) (heap_top + PAGESIZE);
  1000c5:	48 8d 91 00 10 00 00 	lea    0x1000(%rcx),%rdx
            for (unsigned long* l = (unsigned long*) heap_top;
  1000cc:	48 89 c8             	mov    %rcx,%rax
                assert(*l == 0);
  1000cf:	48 83 38 00          	cmpq   $0x0,(%rax)
  1000d3:	0f 85 7b ff ff ff    	jne    100054 <process_main()+0x54>
            for (unsigned long* l = (unsigned long*) heap_top;
  1000d9:	48 83 c0 08          	add    $0x8,%rax
                 l != (unsigned long*) (heap_top + PAGESIZE);
  1000dd:	48 39 d0             	cmp    %rdx,%rax
  1000e0:	75 ed                	jne    1000cf <process_main()+0xcf>
  1000e2:	eb 89                	jmp    10006d <process_main()+0x6d>

00000000001000e4 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1000e4:	f3 0f 1e fa          	endbr64 
  1000e8:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1000eb:	48 39 fe             	cmp    %rdi,%rsi
  1000ee:	73 09                	jae    1000f9 <memmove+0x15>
  1000f0:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  1000f4:	48 39 cf             	cmp    %rcx,%rdi
  1000f7:	72 1d                	jb     100116 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  1000f9:	b9 00 00 00 00       	mov    $0x0,%ecx
  1000fe:	48 85 d2             	test   %rdx,%rdx
  100101:	74 12                	je     100115 <memmove+0x31>
            *d++ = *s++;
  100103:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  100107:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  10010b:	48 83 c1 01          	add    $0x1,%rcx
  10010f:	48 39 d1             	cmp    %rdx,%rcx
  100112:	75 ef                	jne    100103 <memmove+0x1f>
        }
    }
    return dst;
}
  100114:	c3                   	retq   
  100115:	c3                   	retq   
        while (n-- > 0) {
  100116:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10011a:	48 85 d2             	test   %rdx,%rdx
  10011d:	74 f5                	je     100114 <memmove+0x30>
            *--d = *--s;
  10011f:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100123:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  100126:	48 83 e9 01          	sub    $0x1,%rcx
  10012a:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  10012e:	75 ef                	jne    10011f <memmove+0x3b>
  100130:	c3                   	retq   

0000000000100131 <memset>:

void* memset(void* v, int c, size_t n) {
  100131:	f3 0f 1e fa          	endbr64 
  100135:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100138:	48 85 d2             	test   %rdx,%rdx
  10013b:	74 13                	je     100150 <memset+0x1f>
  10013d:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  100141:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  100144:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100147:	48 83 c2 01          	add    $0x1,%rdx
  10014b:	48 39 d1             	cmp    %rdx,%rcx
  10014e:	75 f4                	jne    100144 <memset+0x13>
    }
    return v;
}
  100150:	c3                   	retq   

0000000000100151 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  100151:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  100155:	80 3f 00             	cmpb   $0x0,(%rdi)
  100158:	74 10                	je     10016a <strlen+0x19>
  10015a:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  10015f:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  100163:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100167:	75 f6                	jne    10015f <strlen+0xe>
  100169:	c3                   	retq   
  10016a:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  10016f:	c3                   	retq   

0000000000100170 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  100170:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100174:	48 85 f6             	test   %rsi,%rsi
  100177:	74 15                	je     10018e <strnlen+0x1e>
  100179:	b8 00 00 00 00       	mov    $0x0,%eax
  10017e:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100182:	74 0d                	je     100191 <strnlen+0x21>
        ++n;
  100184:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100188:	48 39 c6             	cmp    %rax,%rsi
  10018b:	75 f1                	jne    10017e <strnlen+0xe>
  10018d:	c3                   	retq   
  10018e:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  100191:	c3                   	retq   

0000000000100192 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  100192:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  100196:	0f b6 07             	movzbl (%rdi),%eax
  100199:	84 c0                	test   %al,%al
  10019b:	74 10                	je     1001ad <strchr+0x1b>
  10019d:	40 38 f0             	cmp    %sil,%al
  1001a0:	74 18                	je     1001ba <strchr+0x28>
        ++s;
  1001a2:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1001a6:	0f b6 07             	movzbl (%rdi),%eax
  1001a9:	84 c0                	test   %al,%al
  1001ab:	75 f0                	jne    10019d <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  1001ad:	40 84 f6             	test   %sil,%sil
  1001b0:	b8 00 00 00 00       	mov    $0x0,%eax
  1001b5:	48 0f 44 c7          	cmove  %rdi,%rax
  1001b9:	c3                   	retq   
  1001ba:	48 89 f8             	mov    %rdi,%rax
    }
}
  1001bd:	c3                   	retq   

00000000001001be <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  1001be:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  1001c2:	83 3d 4f 1e 00 00 00 	cmpl   $0x0,0x1e4f(%rip)        # 102018 <rand_seed_set>
  1001c9:	74 27                	je     1001f2 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  1001cb:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  1001d2:	f4 51 58 
  1001d5:	48 0f af 05 33 1e 00 	imul   0x1e33(%rip),%rax        # 102010 <rand_seed>
  1001dc:	00 
  1001dd:	48 83 c0 01          	add    $0x1,%rax
  1001e1:	48 89 05 28 1e 00 00 	mov    %rax,0x1e28(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1001e8:	48 c1 e8 20          	shr    $0x20,%rax
  1001ec:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  1001f1:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  1001f2:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  1001f9:	87 d4 30 
  1001fc:	48 89 05 0d 1e 00 00 	mov    %rax,0x1e0d(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100203:	c7 05 0b 1e 00 00 01 	movl   $0x1,0x1e0b(%rip)        # 102018 <rand_seed_set>
  10020a:	00 00 00 
}
  10020d:	eb bc                	jmp    1001cb <rand()+0xd>

000000000010020f <srand(unsigned int)>:
void srand(unsigned seed) {
  10020f:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  100213:	89 f8                	mov    %edi,%eax
  100215:	48 c1 e7 20          	shl    $0x20,%rdi
  100219:	48 09 c7             	or     %rax,%rdi
  10021c:	48 89 3d ed 1d 00 00 	mov    %rdi,0x1ded(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100223:	c7 05 eb 1d 00 00 01 	movl   $0x1,0x1deb(%rip)        # 102018 <rand_seed_set>
  10022a:	00 00 00 
}
  10022d:	c3                   	retq   

000000000010022e <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  10022e:	f3 0f 1e fa          	endbr64 
  100232:	55                   	push   %rbp
  100233:	48 89 e5             	mov    %rsp,%rbp
  100236:	41 54                	push   %r12
  100238:	53                   	push   %rbx
    assert(min <= max);
  100239:	39 f7                	cmp    %esi,%edi
  10023b:	7f 27                	jg     100264 <rand(int, int)+0x36>
  10023d:	41 89 fc             	mov    %edi,%r12d
  100240:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100242:	e8 77 ff ff ff       	callq  1001be <rand()>
  100247:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100249:	44 29 e3             	sub    %r12d,%ebx
  10024c:	8d 43 01             	lea    0x1(%rbx),%eax
  10024f:	48 98                	cltq   
    unsigned long r = rand();
  100251:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100254:	48 0f af c3          	imul   %rbx,%rax
  100258:	48 c1 e8 1f          	shr    $0x1f,%rax
  10025c:	44 01 e0             	add    %r12d,%eax
}
  10025f:	5b                   	pop    %rbx
  100260:	41 5c                	pop    %r12
  100262:	5d                   	pop    %rbp
  100263:	c3                   	retq   
    assert(min <= max);
  100264:	b9 00 00 00 00       	mov    $0x0,%ecx
  100269:	ba 47 0d 10 00       	mov    $0x100d47,%edx
  10026e:	be ff 00 00 00       	mov    $0xff,%esi
  100273:	bf 52 0d 10 00       	mov    $0x100d52,%edi
  100278:	e8 54 0a 00 00       	callq  100cd1 <assert_fail(char const*, int, char const*, char const*)>
  10027d:	90                   	nop

000000000010027e <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  10027e:	f3 0f 1e fa          	endbr64 
  100282:	55                   	push   %rbp
  100283:	48 89 e5             	mov    %rsp,%rbp
  100286:	41 57                	push   %r15
  100288:	41 56                	push   %r14
  10028a:	41 55                	push   %r13
  10028c:	41 54                	push   %r12
  10028e:	53                   	push   %rbx
  10028f:	48 83 ec 58          	sub    $0x58,%rsp
  100293:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  100297:	0f b6 02             	movzbl (%rdx),%eax
  10029a:	84 c0                	test   %al,%al
  10029c:	0f 84 c6 07 00 00    	je     100a68 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  1002a2:	49 89 fe             	mov    %rdi,%r14
  1002a5:	41 89 f7             	mov    %esi,%r15d
  1002a8:	48 89 d3             	mov    %rdx,%rbx
  1002ab:	e9 b9 03 00 00       	jmpq   100669 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  1002b0:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  1002b4:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  1002b8:	84 db                	test   %bl,%bl
  1002ba:	0f 84 8a 07 00 00    	je     100a4a <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  1002c0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  1002c6:	0f be f3             	movsbl %bl,%esi
  1002c9:	bf 30 14 10 00       	mov    $0x101430,%edi
  1002ce:	e8 bf fe ff ff       	callq  100192 <strchr>
  1002d3:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  1002d6:	48 85 c0             	test   %rax,%rax
  1002d9:	74 74                	je     10034f <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  1002db:	48 81 e9 30 14 10 00 	sub    $0x101430,%rcx
  1002e2:	b8 01 00 00 00       	mov    $0x1,%eax
  1002e7:	d3 e0                	shl    %cl,%eax
  1002e9:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1002ec:	49 83 c4 01          	add    $0x1,%r12
  1002f0:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  1002f5:	84 db                	test   %bl,%bl
  1002f7:	75 cd                	jne    1002c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  1002f9:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  100300:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  100307:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  10030c:	0f 84 cc 00 00 00    	je     1003de <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  100312:	41 0f b6 04 24       	movzbl (%r12),%eax
  100317:	3c 6c                	cmp    $0x6c,%al
  100319:	0f 84 54 01 00 00    	je     100473 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  10031f:	0f 8f 42 01 00 00    	jg     100467 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  100325:	3c 68                	cmp    $0x68,%al
  100327:	0f 85 68 01 00 00    	jne    100495 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  10032d:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  100332:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100338:	8d 50 bd             	lea    -0x43(%rax),%edx
  10033b:	80 fa 35             	cmp    $0x35,%dl
  10033e:	0f 87 aa 05 00 00    	ja     1008ee <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  100344:	0f b6 d2             	movzbl %dl,%edx
  100347:	3e ff 24 d5 70 0d 10 	notrack jmpq *0x100d70(,%rdx,8)
  10034e:	00 
        if (*format >= '1' && *format <= '9') {
  10034f:	8d 43 cf             	lea    -0x31(%rbx),%eax
  100352:	3c 08                	cmp    $0x8,%al
  100354:	77 35                	ja     10038b <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100356:	41 0f b6 04 24       	movzbl (%r12),%eax
  10035b:	8d 50 d0             	lea    -0x30(%rax),%edx
  10035e:	80 fa 09             	cmp    $0x9,%dl
  100361:	77 63                	ja     1003c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  100363:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  100368:	49 83 c4 01          	add    $0x1,%r12
  10036c:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  10036f:	0f be c0             	movsbl %al,%eax
  100372:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100376:	41 0f b6 04 24       	movzbl (%r12),%eax
  10037b:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10037e:	80 f9 09             	cmp    $0x9,%cl
  100381:	76 e5                	jbe    100368 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  100383:	89 55 98             	mov    %edx,-0x68(%rbp)
  100386:	e9 75 ff ff ff       	jmpq   100300 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  10038b:	80 fb 2a             	cmp    $0x2a,%bl
  10038e:	75 42                	jne    1003d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  100390:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100394:	8b 07                	mov    (%rdi),%eax
  100396:	83 f8 2f             	cmp    $0x2f,%eax
  100399:	77 19                	ja     1003b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  10039b:	89 c2                	mov    %eax,%edx
  10039d:	48 03 57 10          	add    0x10(%rdi),%rdx
  1003a1:	83 c0 08             	add    $0x8,%eax
  1003a4:	89 07                	mov    %eax,(%rdi)
  1003a6:	8b 02                	mov    (%rdx),%eax
  1003a8:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  1003ab:	49 83 c4 01          	add    $0x1,%r12
  1003af:	e9 4c ff ff ff       	jmpq   100300 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  1003b4:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1003b8:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1003bc:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1003c0:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1003c4:	eb e0                	jmp    1003a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003c6:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  1003cd:	e9 2e ff ff ff       	jmpq   100300 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  1003d2:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  1003d9:	e9 22 ff ff ff       	jmpq   100300 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  1003de:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  1003e3:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1003e9:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1003ec:	80 f9 09             	cmp    $0x9,%cl
  1003ef:	76 13                	jbe    100404 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  1003f1:	3c 2a                	cmp    $0x2a,%al
  1003f3:	74 32                	je     100427 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  1003f5:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  1003f8:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  1003ff:	e9 0e ff ff ff       	jmpq   100312 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100404:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  100409:	48 83 c2 01          	add    $0x1,%rdx
  10040d:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  100410:	0f be c0             	movsbl %al,%eax
  100413:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100417:	0f b6 02             	movzbl (%rdx),%eax
  10041a:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10041d:	80 f9 09             	cmp    $0x9,%cl
  100420:	76 e7                	jbe    100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  100422:	49 89 d4             	mov    %rdx,%r12
  100425:	eb 1c                	jmp    100443 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  100427:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10042b:	8b 01                	mov    (%rcx),%eax
  10042d:	83 f8 2f             	cmp    $0x2f,%eax
  100430:	77 23                	ja     100455 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  100432:	89 c2                	mov    %eax,%edx
  100434:	48 03 51 10          	add    0x10(%rcx),%rdx
  100438:	83 c0 08             	add    $0x8,%eax
  10043b:	89 01                	mov    %eax,(%rcx)
  10043d:	8b 32                	mov    (%rdx),%esi
                ++format;
  10043f:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  100443:	85 f6                	test   %esi,%esi
  100445:	b8 00 00 00 00       	mov    $0x0,%eax
  10044a:	0f 49 c6             	cmovns %esi,%eax
  10044d:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100450:	e9 bd fe ff ff       	jmpq   100312 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  100455:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100459:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10045d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100461:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100465:	eb d6                	jmp    10043d <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  100467:	3c 74                	cmp    $0x74,%al
  100469:	74 08                	je     100473 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  10046b:	3c 7a                	cmp    $0x7a,%al
  10046d:	0f 85 e2 05 00 00    	jne    100a55 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  100473:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  100478:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10047e:	8d 50 bd             	lea    -0x43(%rax),%edx
  100481:	80 fa 35             	cmp    $0x35,%dl
  100484:	0f 87 64 04 00 00    	ja     1008ee <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  10048a:	0f b6 d2             	movzbl %dl,%edx
  10048d:	3e ff 24 d5 20 0f 10 	notrack jmpq *0x100f20(,%rdx,8)
  100494:	00 
  100495:	8d 50 bd             	lea    -0x43(%rax),%edx
  100498:	80 fa 35             	cmp    $0x35,%dl
  10049b:	0f 87 4a 04 00 00    	ja     1008eb <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  1004a1:	0f b6 d2             	movzbl %dl,%edx
  1004a4:	3e ff 24 d5 d0 10 10 	notrack jmpq *0x1010d0(,%rdx,8)
  1004ab:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1004ac:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004b0:	8b 07                	mov    (%rdi),%eax
  1004b2:	83 f8 2f             	cmp    $0x2f,%eax
  1004b5:	0f 87 c9 01 00 00    	ja     100684 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  1004bb:	89 c2                	mov    %eax,%edx
  1004bd:	48 03 57 10          	add    0x10(%rdi),%rdx
  1004c1:	83 c0 08             	add    $0x8,%eax
  1004c4:	89 07                	mov    %eax,(%rdi)
  1004c6:	48 8b 12             	mov    (%rdx),%rdx
  1004c9:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  1004cc:	48 89 d0             	mov    %rdx,%rax
  1004cf:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  1004d3:	49 89 d0             	mov    %rdx,%r8
  1004d6:	49 f7 d8             	neg    %r8
  1004d9:	25 80 00 00 00       	and    $0x80,%eax
  1004de:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  1004e2:	41 09 c5             	or     %eax,%r13d
  1004e5:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  1004e9:	bb 05 15 10 00       	mov    $0x101505,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1004ee:	44 89 e8             	mov    %r13d,%eax
  1004f1:	83 e0 20             	and    $0x20,%eax
  1004f4:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1004f7:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1004fd:	0f 85 0e 04 00 00    	jne    100911 <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  100503:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  100507:	44 89 e8             	mov    %r13d,%eax
  10050a:	83 e0 60             	and    $0x60,%eax
  10050d:	83 f8 60             	cmp    $0x60,%eax
  100510:	0f 84 3e 04 00 00    	je     100954 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100516:	44 89 e8             	mov    %r13d,%eax
  100519:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  10051c:	48 c7 45 a8 05 15 10 	movq   $0x101505,-0x58(%rbp)
  100523:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100524:	83 f8 21             	cmp    $0x21,%eax
  100527:	0f 84 66 04 00 00    	je     100993 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  10052d:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100530:	89 c8                	mov    %ecx,%eax
  100532:	f7 d0                	not    %eax
  100534:	c1 e8 1f             	shr    $0x1f,%eax
  100537:	89 45 88             	mov    %eax,-0x78(%rbp)
  10053a:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  10053e:	0f 85 8b 04 00 00    	jne    1009cf <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  100544:	84 c0                	test   %al,%al
  100546:	0f 84 83 04 00 00    	je     1009cf <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  10054c:	48 63 f1             	movslq %ecx,%rsi
  10054f:	48 89 df             	mov    %rbx,%rdi
  100552:	e8 19 fc ff ff       	callq  100170 <strnlen>
  100557:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  10055a:	8b 45 8c             	mov    -0x74(%rbp),%eax
  10055d:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  100560:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  100567:	83 f8 22             	cmp    $0x22,%eax
  10056a:	0f 84 97 04 00 00    	je     100a07 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  100570:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100574:	e8 d8 fb ff ff       	callq  100151 <strlen>
  100579:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  10057c:	03 55 a0             	add    -0x60(%rbp),%edx
  10057f:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100582:	29 d7                	sub    %edx,%edi
  100584:	89 fa                	mov    %edi,%edx
  100586:	29 c2                	sub    %eax,%edx
  100588:	89 55 98             	mov    %edx,-0x68(%rbp)
  10058b:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10058e:	41 f6 c5 04          	test   $0x4,%r13b
  100592:	75 32                	jne    1005c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  100594:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100597:	85 d2                	test   %edx,%edx
  100599:	7e 2b                	jle    1005c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  10059b:	49 8b 06             	mov    (%r14),%rax
  10059e:	44 89 fa             	mov    %r15d,%edx
  1005a1:	be 20 00 00 00       	mov    $0x20,%esi
  1005a6:	4c 89 f7             	mov    %r14,%rdi
  1005a9:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1005ab:	41 83 ed 01          	sub    $0x1,%r13d
  1005af:	45 85 ed             	test   %r13d,%r13d
  1005b2:	7f e7                	jg     10059b <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  1005b4:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1005b7:	85 ff                	test   %edi,%edi
  1005b9:	b8 01 00 00 00       	mov    $0x1,%eax
  1005be:	0f 4f c7             	cmovg  %edi,%eax
  1005c1:	29 c7                	sub    %eax,%edi
  1005c3:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  1005c6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  1005ca:	0f b6 00             	movzbl (%rax),%eax
  1005cd:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  1005d1:	84 c0                	test   %al,%al
  1005d3:	74 1b                	je     1005f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  1005d5:	0f b6 f0             	movzbl %al,%esi
  1005d8:	49 8b 06             	mov    (%r14),%rax
  1005db:	44 89 fa             	mov    %r15d,%edx
  1005de:	4c 89 f7             	mov    %r14,%rdi
  1005e1:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  1005e3:	49 83 c5 01          	add    $0x1,%r13
  1005e7:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  1005ec:	84 c0                	test   %al,%al
  1005ee:	75 e5                	jne    1005d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  1005f0:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  1005f4:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  1005f8:	7e 16                	jle    100610 <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  1005fa:	49 8b 06             	mov    (%r14),%rax
  1005fd:	44 89 fa             	mov    %r15d,%edx
  100600:	be 30 00 00 00       	mov    $0x30,%esi
  100605:	4c 89 f7             	mov    %r14,%rdi
  100608:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  10060a:	41 83 ed 01          	sub    $0x1,%r13d
  10060e:	75 ea                	jne    1005fa <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  100610:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  100614:	7e 22                	jle    100638 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  100616:	8b 45 a0             	mov    -0x60(%rbp),%eax
  100619:	8d 40 ff             	lea    -0x1(%rax),%eax
  10061c:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  100621:	0f b6 33             	movzbl (%rbx),%esi
  100624:	49 8b 06             	mov    (%r14),%rax
  100627:	44 89 fa             	mov    %r15d,%edx
  10062a:	4c 89 f7             	mov    %r14,%rdi
  10062d:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  10062f:	48 83 c3 01          	add    $0x1,%rbx
  100633:	4c 39 eb             	cmp    %r13,%rbx
  100636:	75 e9                	jne    100621 <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  100638:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  10063b:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  10063f:	7e 15                	jle    100656 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  100641:	49 8b 06             	mov    (%r14),%rax
  100644:	44 89 fa             	mov    %r15d,%edx
  100647:	be 20 00 00 00       	mov    $0x20,%esi
  10064c:	4c 89 f7             	mov    %r14,%rdi
  10064f:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  100651:	83 eb 01             	sub    $0x1,%ebx
  100654:	75 eb                	jne    100641 <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  100656:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  10065b:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100661:	84 c0                	test   %al,%al
  100663:	0f 84 ff 03 00 00    	je     100a68 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  100669:	3c 25                	cmp    $0x25,%al
  10066b:	0f 84 3f fc ff ff    	je     1002b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  100671:	0f b6 f0             	movzbl %al,%esi
  100674:	49 8b 06             	mov    (%r14),%rax
  100677:	44 89 fa             	mov    %r15d,%edx
  10067a:	4c 89 f7             	mov    %r14,%rdi
  10067d:	ff 10                	callq  *(%rax)
            continue;
  10067f:	49 89 dc             	mov    %rbx,%r12
  100682:	eb d2                	jmp    100656 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100684:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100688:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10068c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100690:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100694:	e9 2d fe ff ff       	jmpq   1004c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  100699:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10069c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006a0:	8b 01                	mov    (%rcx),%eax
  1006a2:	83 f8 2f             	cmp    $0x2f,%eax
  1006a5:	77 13                	ja     1006ba <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  1006a7:	89 c2                	mov    %eax,%edx
  1006a9:	48 03 51 10          	add    0x10(%rcx),%rdx
  1006ad:	83 c0 08             	add    $0x8,%eax
  1006b0:	89 01                	mov    %eax,(%rcx)
  1006b2:	48 63 12             	movslq (%rdx),%rdx
  1006b5:	e9 12 fe ff ff       	jmpq   1004cc <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  1006ba:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006be:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1006c2:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006c6:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1006ca:	eb e6                	jmp    1006b2 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  1006cc:	49 89 cc             	mov    %rcx,%r12
  1006cf:	b8 01 00 00 00       	mov    $0x1,%eax
  1006d4:	be 0a 00 00 00       	mov    $0xa,%esi
  1006d9:	e9 a8 00 00 00       	jmpq   100786 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1006de:	49 89 cc             	mov    %rcx,%r12
  1006e1:	b8 00 00 00 00       	mov    $0x0,%eax
  1006e6:	be 0a 00 00 00       	mov    $0xa,%esi
  1006eb:	e9 96 00 00 00       	jmpq   100786 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1006f0:	b8 00 00 00 00       	mov    $0x0,%eax
  1006f5:	be 0a 00 00 00       	mov    $0xa,%esi
  1006fa:	e9 87 00 00 00       	jmpq   100786 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1006ff:	b8 00 00 00 00       	mov    $0x0,%eax
  100704:	be 0a 00 00 00       	mov    $0xa,%esi
  100709:	eb 7b                	jmp    100786 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10070b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10070f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100713:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100717:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10071b:	e9 84 00 00 00       	jmpq   1007a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  100720:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100724:	8b 01                	mov    (%rcx),%eax
  100726:	83 f8 2f             	cmp    $0x2f,%eax
  100729:	77 10                	ja     10073b <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  10072b:	89 c2                	mov    %eax,%edx
  10072d:	48 03 51 10          	add    0x10(%rcx),%rdx
  100731:	83 c0 08             	add    $0x8,%eax
  100734:	89 01                	mov    %eax,(%rcx)
  100736:	44 8b 02             	mov    (%rdx),%r8d
  100739:	eb 6c                	jmp    1007a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  10073b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10073f:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100743:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100747:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10074b:	eb e9                	jmp    100736 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  10074d:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  100750:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  100757:	bf 60 14 10 00       	mov    $0x101460,%edi
  10075c:	e9 c0 01 00 00       	jmpq   100921 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  100761:	49 89 cc             	mov    %rcx,%r12
  100764:	b8 01 00 00 00       	mov    $0x1,%eax
  100769:	eb 16                	jmp    100781 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  10076b:	49 89 cc             	mov    %rcx,%r12
  10076e:	b8 00 00 00 00       	mov    $0x0,%eax
  100773:	eb 0c                	jmp    100781 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  100775:	b8 00 00 00 00       	mov    $0x0,%eax
  10077a:	eb 05                	jmp    100781 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  10077c:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  100781:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100786:	85 c0                	test   %eax,%eax
  100788:	74 96                	je     100720 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  10078a:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10078e:	8b 01                	mov    (%rcx),%eax
  100790:	83 f8 2f             	cmp    $0x2f,%eax
  100793:	0f 87 72 ff ff ff    	ja     10070b <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  100799:	89 c2                	mov    %eax,%edx
  10079b:	48 03 51 10          	add    0x10(%rcx),%rdx
  10079f:	83 c0 08             	add    $0x8,%eax
  1007a2:	89 01                	mov    %eax,(%rcx)
  1007a4:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  1007a7:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  1007ab:	85 f6                	test   %esi,%esi
  1007ad:	79 9e                	jns    10074d <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  1007af:	41 89 f1             	mov    %esi,%r9d
  1007b2:	f7 de                	neg    %esi
  1007b4:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  1007bb:	bf 40 14 10 00       	mov    $0x101440,%edi
  1007c0:	e9 5c 01 00 00       	jmpq   100921 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1007c5:	49 89 cc             	mov    %rcx,%r12
  1007c8:	b8 01 00 00 00       	mov    $0x1,%eax
  1007cd:	eb 16                	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  1007cf:	49 89 cc             	mov    %rcx,%r12
  1007d2:	b8 00 00 00 00       	mov    $0x0,%eax
  1007d7:	eb 0c                	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  1007d9:	b8 00 00 00 00       	mov    $0x0,%eax
  1007de:	eb 05                	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  1007e0:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  1007e5:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1007ea:	eb 9a                	jmp    100786 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1007ec:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  1007ef:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1007f3:	8b 01                	mov    (%rcx),%eax
  1007f5:	83 f8 2f             	cmp    $0x2f,%eax
  1007f8:	77 21                	ja     10081b <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  1007fa:	89 c2                	mov    %eax,%edx
  1007fc:	48 03 51 10          	add    0x10(%rcx),%rdx
  100800:	83 c0 08             	add    $0x8,%eax
  100803:	89 01                	mov    %eax,(%rcx)
  100805:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  100808:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  10080f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100814:	eb 99                	jmp    1007af <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  100816:	49 89 cc             	mov    %rcx,%r12
  100819:	eb d4                	jmp    1007ef <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  10081b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10081f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100823:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100827:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10082b:	eb d8                	jmp    100805 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  10082d:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  100830:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100834:	8b 07                	mov    (%rdi),%eax
  100836:	83 f8 2f             	cmp    $0x2f,%eax
  100839:	77 1e                	ja     100859 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  10083b:	89 c2                	mov    %eax,%edx
  10083d:	48 03 57 10          	add    0x10(%rdi),%rdx
  100841:	83 c0 08             	add    $0x8,%eax
  100844:	89 07                	mov    %eax,(%rdi)
  100846:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  100849:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  10084f:	e9 9a fc ff ff       	jmpq   1004ee <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  100854:	49 89 cc             	mov    %rcx,%r12
  100857:	eb d7                	jmp    100830 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  100859:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10085d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100861:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100865:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100869:	eb db                	jmp    100846 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  10086b:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  10086e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100872:	8b 01                	mov    (%rcx),%eax
  100874:	83 f8 2f             	cmp    $0x2f,%eax
  100877:	77 18                	ja     100891 <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  100879:	89 c2                	mov    %eax,%edx
  10087b:	48 03 51 10          	add    0x10(%rcx),%rdx
  10087f:	83 c0 08             	add    $0x8,%eax
  100882:	89 01                	mov    %eax,(%rcx)
  100884:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  100887:	e9 ca fd ff ff       	jmpq   100656 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  10088c:	49 89 cc             	mov    %rcx,%r12
  10088f:	eb dd                	jmp    10086e <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  100891:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100895:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100899:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10089d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1008a1:	eb e1                	jmp    100884 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  1008a3:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  1008a6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008aa:	8b 07                	mov    (%rdi),%eax
  1008ac:	83 f8 2f             	cmp    $0x2f,%eax
  1008af:	77 28                	ja     1008d9 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  1008b1:	89 c2                	mov    %eax,%edx
  1008b3:	48 03 57 10          	add    0x10(%rdi),%rdx
  1008b7:	83 c0 08             	add    $0x8,%eax
  1008ba:	89 07                	mov    %eax,(%rdi)
  1008bc:	8b 02                	mov    (%rdx),%eax
  1008be:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1008c1:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1008c5:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1008c9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  1008cf:	e9 1a fc ff ff       	jmpq   1004ee <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  1008d4:	49 89 cc             	mov    %rcx,%r12
  1008d7:	eb cd                	jmp    1008a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  1008d9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008dd:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1008e1:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008e5:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1008e9:	eb d1                	jmp    1008bc <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  1008eb:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  1008ee:	84 c0                	test   %al,%al
  1008f0:	0f 85 3b 01 00 00    	jne    100a31 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  1008f6:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1008fa:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1008fe:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  100902:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100906:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  10090c:	e9 dd fb ff ff       	jmpq   1004ee <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  100911:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  100917:	bf 60 14 10 00       	mov    $0x101460,%edi
        if (flags & FLAG_NUMERIC) {
  10091c:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  100921:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100925:	4c 89 c1             	mov    %r8,%rcx
  100928:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  10092c:	48 63 f6             	movslq %esi,%rsi
  10092f:	48 83 eb 01          	sub    $0x1,%rbx
  100933:	48 89 c8             	mov    %rcx,%rax
  100936:	ba 00 00 00 00       	mov    $0x0,%edx
  10093b:	48 f7 f6             	div    %rsi
  10093e:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100942:	88 13                	mov    %dl,(%rbx)
        val /= base;
  100944:	48 89 ca             	mov    %rcx,%rdx
  100947:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  10094a:	48 39 d6             	cmp    %rdx,%rsi
  10094d:	76 e0                	jbe    10092f <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  10094f:	e9 af fb ff ff       	jmpq   100503 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  100954:	48 c7 45 a8 5e 0d 10 	movq   $0x100d5e,-0x58(%rbp)
  10095b:	00 
            if (flags & FLAG_NEGATIVE) {
  10095c:	41 f6 c5 80          	test   $0x80,%r13b
  100960:	0f 85 c7 fb ff ff    	jne    10052d <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  100966:	48 c7 45 a8 5c 0d 10 	movq   $0x100d5c,-0x58(%rbp)
  10096d:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  10096e:	41 f6 c5 10          	test   $0x10,%r13b
  100972:	0f 85 b5 fb ff ff    	jne    10052d <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  100978:	41 f6 c5 08          	test   $0x8,%r13b
  10097c:	ba 05 15 10 00       	mov    $0x101505,%edx
  100981:	b8 f6 14 10 00       	mov    $0x1014f6,%eax
  100986:	48 0f 44 c2          	cmove  %rdx,%rax
  10098a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  10098e:	e9 9a fb ff ff       	jmpq   10052d <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  100993:	41 8d 41 10          	lea    0x10(%r9),%eax
  100997:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  10099c:	0f 85 8b fb ff ff    	jne    10052d <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  1009a2:	4d 85 c0             	test   %r8,%r8
  1009a5:	75 0d                	jne    1009b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  1009a7:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  1009ae:	0f 84 79 fb ff ff    	je     10052d <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  1009b4:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  1009b8:	ba 59 0d 10 00       	mov    $0x100d59,%edx
  1009bd:	b8 60 0d 10 00       	mov    $0x100d60,%eax
  1009c2:	48 0f 44 c2          	cmove  %rdx,%rax
  1009c6:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  1009ca:	e9 5e fb ff ff       	jmpq   10052d <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  1009cf:	48 89 df             	mov    %rbx,%rdi
  1009d2:	e8 7a f7 ff ff       	callq  100151 <strlen>
  1009d7:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  1009da:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1009de:	0f 84 76 fb ff ff    	je     10055a <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  1009e4:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  1009e8:	0f 84 6c fb ff ff    	je     10055a <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  1009ee:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1009f1:	89 ca                	mov    %ecx,%edx
  1009f3:	29 c2                	sub    %eax,%edx
  1009f5:	39 c1                	cmp    %eax,%ecx
  1009f7:	b8 00 00 00 00       	mov    $0x0,%eax
  1009fc:	0f 4f c2             	cmovg  %edx,%eax
  1009ff:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100a02:	e9 69 fb ff ff       	jmpq   100570 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  100a07:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100a0b:	e8 41 f7 ff ff       	callq  100151 <strlen>
  100a10:	8b 75 a0             	mov    -0x60(%rbp),%esi
  100a13:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100a16:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100a19:	89 f9                	mov    %edi,%ecx
  100a1b:	29 f1                	sub    %esi,%ecx
  100a1d:	29 c1                	sub    %eax,%ecx
  100a1f:	39 fa                	cmp    %edi,%edx
  100a21:	b8 00 00 00 00       	mov    $0x0,%eax
  100a26:	0f 4c c1             	cmovl  %ecx,%eax
  100a29:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100a2c:	e9 3f fb ff ff       	jmpq   100570 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  100a31:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  100a34:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100a37:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100a3b:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100a3f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100a45:	e9 a4 fa ff ff       	jmpq   1004ee <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  100a4a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100a50:	e9 a4 f8 ff ff       	jmpq   1002f9 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  100a55:	8d 50 bd             	lea    -0x43(%rax),%edx
  100a58:	80 fa 35             	cmp    $0x35,%dl
  100a5b:	77 d7                	ja     100a34 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  100a5d:	0f b6 d2             	movzbl %dl,%edx
  100a60:	3e ff 24 d5 80 12 10 	notrack jmpq *0x101280(,%rdx,8)
  100a67:	00 
        }
    }
}
  100a68:	48 83 c4 58          	add    $0x58,%rsp
  100a6c:	5b                   	pop    %rbx
  100a6d:	41 5c                	pop    %r12
  100a6f:	41 5d                	pop    %r13
  100a71:	41 5e                	pop    %r14
  100a73:	41 5f                	pop    %r15
  100a75:	5d                   	pop    %rbp
  100a76:	c3                   	retq   
  100a77:	90                   	nop

0000000000100a78 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100a78:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100a7c:	48 c7 07 e8 14 10 00 	movq   $0x1014e8,(%rdi)
  100a83:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100a8a:	00 
  100a8b:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100a8e:	85 f6                	test   %esi,%esi
  100a90:	78 18                	js     100aaa <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100a92:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100a98:	7f 0f                	jg     100aa9 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100a9a:	48 63 f6             	movslq %esi,%rsi
  100a9d:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100aa4:	00 
  100aa5:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100aa9:	c3                   	retq   
        cell_ += cursorpos;
  100aaa:	8b 05 4c 85 fb ff    	mov    -0x47ab4(%rip),%eax        # b8ffc <cursorpos>
  100ab0:	48 98                	cltq   
  100ab2:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100ab9:	00 
  100aba:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100abe:	c3                   	retq   
  100abf:	90                   	nop

0000000000100ac0 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100ac0:	f3 0f 1e fa          	endbr64 
  100ac4:	55                   	push   %rbp
  100ac5:	48 89 e5             	mov    %rsp,%rbp
  100ac8:	53                   	push   %rbx
  100ac9:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100acd:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100ad4:	00 
  100ad5:	72 18                	jb     100aef <console_printer::scroll()+0x2f>
  100ad7:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100ada:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100ade:	75 28                	jne    100b08 <console_printer::scroll()+0x48>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  100ae0:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100ae7:	00 
    }
}
  100ae8:	48 83 c4 08          	add    $0x8,%rsp
  100aec:	5b                   	pop    %rbx
  100aed:	5d                   	pop    %rbp
  100aee:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100aef:	b9 00 00 00 00       	mov    $0x0,%ecx
  100af4:	ba 78 14 10 00       	mov    $0x101478,%edx
  100af9:	be 2c 02 00 00       	mov    $0x22c,%esi
  100afe:	bf 52 0d 10 00       	mov    $0x100d52,%edi
  100b03:	e8 c9 01 00 00       	callq  100cd1 <assert_fail(char const*, int, char const*, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100b08:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100b0d:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100b12:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  100b17:	e8 c8 f5 ff ff       	callq  1000e4 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100b1c:	ba a0 00 00 00       	mov    $0xa0,%edx
  100b21:	be 00 00 00 00       	mov    $0x0,%esi
  100b26:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100b2b:	e8 01 f6 ff ff       	callq  100131 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100b30:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  100b37:	00 
  100b38:	eb ae                	jmp    100ae8 <console_printer::scroll()+0x28>

0000000000100b3a <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100b3a:	f3 0f 1e fa          	endbr64 
  100b3e:	55                   	push   %rbp
  100b3f:	48 89 e5             	mov    %rsp,%rbp
  100b42:	41 55                	push   %r13
  100b44:	41 54                	push   %r12
  100b46:	53                   	push   %rbx
  100b47:	48 83 ec 08          	sub    $0x8,%rsp
  100b4b:	48 89 fb             	mov    %rdi,%rbx
  100b4e:	41 89 f5             	mov    %esi,%r13d
  100b51:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b54:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100b58:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100b5e:	72 14                	jb     100b74 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100b60:	48 89 df             	mov    %rbx,%rdi
  100b63:	e8 58 ff ff ff       	callq  100ac0 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b68:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100b6c:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100b72:	73 ec                	jae    100b60 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100b74:	41 80 fd 0a          	cmp    $0xa,%r13b
  100b78:	74 1e                	je     100b98 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100b7a:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100b7e:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100b82:	45 0f b6 ed          	movzbl %r13b,%r13d
  100b86:	45 09 ec             	or     %r13d,%r12d
  100b89:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  100b8d:	48 83 c4 08          	add    $0x8,%rsp
  100b91:	5b                   	pop    %rbx
  100b92:	41 5c                	pop    %r12
  100b94:	41 5d                	pop    %r13
  100b96:	5d                   	pop    %rbp
  100b97:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  100b98:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100b9e:	48 89 c1             	mov    %rax,%rcx
  100ba1:	48 89 c6             	mov    %rax,%rsi
  100ba4:	48 d1 fe             	sar    %rsi
  100ba7:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100bae:	66 66 66 
  100bb1:	48 89 f0             	mov    %rsi,%rax
  100bb4:	48 f7 ea             	imul   %rdx
  100bb7:	48 c1 fa 05          	sar    $0x5,%rdx
  100bbb:	48 89 c8             	mov    %rcx,%rax
  100bbe:	48 c1 f8 3f          	sar    $0x3f,%rax
  100bc2:	48 29 c2             	sub    %rax,%rdx
  100bc5:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  100bc9:	48 c1 e0 04          	shl    $0x4,%rax
  100bcd:	89 f2                	mov    %esi,%edx
  100bcf:	29 c2                	sub    %eax,%edx
  100bd1:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  100bd3:	41 83 cc 20          	or     $0x20,%r12d
  100bd7:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  100bdb:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  100bdf:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  100be3:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  100be7:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100bea:	83 f8 50             	cmp    $0x50,%eax
  100bed:	75 e8                	jne    100bd7 <console_printer::putc(unsigned char, int)+0x9d>
  100bef:	eb 9c                	jmp    100b8d <console_printer::putc(unsigned char, int)+0x53>
  100bf1:	90                   	nop

0000000000100bf2 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100bf2:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100bf6:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100bfa:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c00:	48 d1 f8             	sar    %rax
  100c03:	89 05 f3 83 fb ff    	mov    %eax,-0x47c0d(%rip)        # b8ffc <cursorpos>
}
  100c09:	c3                   	retq   

0000000000100c0a <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100c0a:	f3 0f 1e fa          	endbr64 
  100c0e:	55                   	push   %rbp
  100c0f:	48 89 e5             	mov    %rsp,%rbp
  100c12:	41 56                	push   %r14
  100c14:	41 55                	push   %r13
  100c16:	41 54                	push   %r12
  100c18:	53                   	push   %rbx
  100c19:	48 83 ec 20          	sub    $0x20,%rsp
  100c1d:	89 fb                	mov    %edi,%ebx
  100c1f:	41 89 f4             	mov    %esi,%r12d
  100c22:	49 89 d5             	mov    %rdx,%r13
  100c25:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100c28:	89 fa                	mov    %edi,%edx
  100c2a:	c1 ea 1f             	shr    $0x1f,%edx
  100c2d:	89 fe                	mov    %edi,%esi
  100c2f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c33:	e8 40 fe ff ff       	callq  100a78 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100c38:	4c 89 f1             	mov    %r14,%rcx
  100c3b:	4c 89 ea             	mov    %r13,%rdx
  100c3e:	44 89 e6             	mov    %r12d,%esi
  100c41:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c45:	e8 34 f6 ff ff       	callq  10027e <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100c4a:	85 db                	test   %ebx,%ebx
  100c4c:	78 1a                	js     100c68 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100c4e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100c52:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c58:	48 d1 f8             	sar    %rax
}
  100c5b:	48 83 c4 20          	add    $0x20,%rsp
  100c5f:	5b                   	pop    %rbx
  100c60:	41 5c                	pop    %r12
  100c62:	41 5d                	pop    %r13
  100c64:	41 5e                	pop    %r14
  100c66:	5d                   	pop    %rbp
  100c67:	c3                   	retq   
        cp.move_cursor();
  100c68:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c6c:	e8 81 ff ff ff       	callq  100bf2 <console_printer::move_cursor()>
  100c71:	eb db                	jmp    100c4e <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100c73 <error_printf(char const*, ...)>:
    error_vprintf(-1, color, format, val);
    va_end(val);
}

__noinline
void error_printf(const char* format, ...) {
  100c73:	f3 0f 1e fa          	endbr64 
  100c77:	55                   	push   %rbp
  100c78:	48 89 e5             	mov    %rsp,%rbp
  100c7b:	48 83 ec 50          	sub    $0x50,%rsp
  100c7f:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  100c83:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  100c87:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100c8b:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100c8f:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100c93:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
  100c9a:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100c9e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100ca2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100ca6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
  100caa:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100cae:	48 89 fa             	mov    %rdi,%rdx
  100cb1:	be 00 c0 00 00       	mov    $0xc000,%esi
  100cb6:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  100cbb:	e8 02 00 00 00       	callq  100cc2 <error_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
}
  100cc0:	c9                   	leaveq 
  100cc1:	c3                   	retq   

0000000000100cc2 <error_vprintf(int, int, char const*, __va_list_tag*)>:
    }
    (void) console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

int error_vprintf(int cpos, int color, const char* format, va_list val) {
  100cc2:	f3 0f 1e fa          	endbr64 
  100cc6:	55                   	push   %rbp
  100cc7:	48 89 e5             	mov    %rsp,%rbp
    return console_vprintf(cpos, color, format, val);
  100cca:	e8 3b ff ff ff       	callq  100c0a <console_vprintf(int, int, char const*, __va_list_tag*)>
}
  100ccf:	5d                   	pop    %rbp
  100cd0:	c3                   	retq   

0000000000100cd1 <assert_fail(char const*, int, char const*, char const*)>:

void assert_fail(const char* file, int line, const char* msg,
                 const char* description) {
  100cd1:	f3 0f 1e fa          	endbr64 
  100cd5:	55                   	push   %rbp
  100cd6:	48 89 e5             	mov    %rsp,%rbp
  100cd9:	41 55                	push   %r13
  100cdb:	41 54                	push   %r12
  100cdd:	53                   	push   %rbx
  100cde:	48 83 ec 08          	sub    $0x8,%rsp
  100ce2:	48 89 fb             	mov    %rdi,%rbx
  100ce5:	41 89 f4             	mov    %esi,%r12d
  100ce8:	49 89 d5             	mov    %rdx,%r13
    cursorpos = CPOS(23, 0);
  100ceb:	c7 05 07 83 fb ff 30 	movl   $0x730,-0x47cf9(%rip)        # b8ffc <cursorpos>
  100cf2:	07 00 00 
    if (description) {
  100cf5:	48 85 c9             	test   %rcx,%rcx
  100cf8:	74 11                	je     100d0b <assert_fail(char const*, int, char const*, char const*)+0x3a>
        error_printf("%s:%d: %s\n", file, line, description);
  100cfa:	89 f2                	mov    %esi,%edx
  100cfc:	48 89 fe             	mov    %rdi,%rsi
  100cff:	bf fb 14 10 00       	mov    $0x1014fb,%edi
  100d04:	b0 00                	mov    $0x0,%al
  100d06:	e8 68 ff ff ff       	callq  100c73 <error_printf(char const*, ...)>
    }
    error_printf("%s:%d: user assertion '%s' failed\n", file, line, msg);
  100d0b:	4c 89 e9             	mov    %r13,%rcx
  100d0e:	44 89 e2             	mov    %r12d,%edx
  100d11:	48 89 de             	mov    %rbx,%rsi
  100d14:	bf 08 15 10 00       	mov    $0x101508,%edi
  100d19:	b0 00                	mov    $0x0,%al
  100d1b:	e8 53 ff ff ff       	callq  100c73 <error_printf(char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100d20:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100d25:	bf 00 00 00 00       	mov    $0x0,%edi
  100d2a:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100d2c:	eb fe                	jmp    100d2c <assert_fail(char const*, int, char const*, char const*)+0x5b>
