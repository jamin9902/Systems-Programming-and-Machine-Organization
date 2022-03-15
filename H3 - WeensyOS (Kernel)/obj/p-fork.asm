
obj/p-fork.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:
    int field2;
};
const test_struct test1 = {61, {0}, 6161};
test_struct test2;

void process_main() {
  100000:	f3 0f 1e fa          	endbr64 
  100004:	55                   	push   %rbp
  100005:	48 89 e5             	mov    %rsp,%rbp
  100008:	41 56                	push   %r14
  10000a:	41 55                	push   %r13
  10000c:	41 54                	push   %r12
  10000e:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

__always_inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  10000f:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  100014:	0f 05                	syscall 
    return rax;
  100016:	49 89 c4             	mov    %rax,%r12
    pid_t initial_pid = sys_getpid();
    test2.field1 = 61;
  100019:	c7 05 dd 1f 00 00 3d 	movl   $0x3d,0x1fdd(%rip)        # 102000 <test2>
  100020:	00 00 00 
    register uintptr_t rax asm("rax") = syscallno;
  100023:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  100028:	0f 05                	syscall 
    return rax;
  10002a:	49 89 c6             	mov    %rax,%r14
    register uintptr_t rax asm("rax") = syscallno;
  10002d:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  100032:	0f 05                	syscall 
    return rax;
  100034:	48 89 c3             	mov    %rax,%rbx
    assert(test1.field1 == 61 && test1.field2 == 6161);

    // Fork a total of three new copies, checking `fork` return values.
    pid_t p1 = sys_fork();
    pid_t intermediate_pid = sys_getpid();
    if (p1 == 0) {
  100037:	45 85 f6             	test   %r14d,%r14d
  10003a:	0f 85 c7 00 00 00    	jne    100107 <process_main()+0x107>
        assert(intermediate_pid != initial_pid);
  100040:	41 39 c4             	cmp    %eax,%r12d
  100043:	0f 84 a5 00 00 00    	je     1000ee <process_main()+0xee>
    register uintptr_t rax asm("rax") = syscallno;
  100049:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  10004e:	0f 05                	syscall 
    return rax;
  100050:	49 89 c5             	mov    %rax,%r13
    register uintptr_t rax asm("rax") = syscallno;
  100053:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  100058:	0f 05                	syscall 
        assert(intermediate_pid == initial_pid && p1 != initial_pid);
    }

    pid_t p2 = sys_fork();
    pid_t final_pid = sys_getpid();
    if (p2 == 0) {
  10005a:	45 85 ed             	test   %r13d,%r13d
  10005d:	0f 85 e4 00 00 00    	jne    100147 <process_main()+0x147>
        assert(final_pid != initial_pid && final_pid != intermediate_pid);
  100063:	41 39 c4             	cmp    %eax,%r12d
  100066:	0f 84 c2 00 00 00    	je     10012e <process_main()+0x12e>
  10006c:	39 c3                	cmp    %eax,%ebx
  10006e:	0f 84 ba 00 00 00    	je     10012e <process_main()+0x12e>
        assert(final_pid == intermediate_pid);
    }

    // Check that multi-page segments can be loaded.
    assert(test1.field1 == 61 && test1.field2 == 6161);
    assert(test2.field1 == 61);
  100074:	83 3d 85 1f 00 00 3d 	cmpl   $0x3d,0x1f85(%rip)        # 102000 <test2>
  10007b:	0f 85 15 01 00 00    	jne    100196 <process_main()+0x196>
    test2.field2 = 61 + final_pid;
  100081:	8d 58 3d             	lea    0x3d(%rax),%ebx
  100084:	89 1d 7a 2f 00 00    	mov    %ebx,0x2f7a(%rip)        # 103004 <test2+0x1004>
    register uintptr_t rax asm("rax") = syscallno;
  10008a:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  10008f:	0f 05                	syscall 
    sys_yield();
    assert(test2.field2 == 61 + final_pid);
  100091:	3b 1d 6d 2f 00 00    	cmp    0x2f6d(%rip),%ebx        # 103004 <test2+0x1004>
  100097:	0f 85 12 01 00 00    	jne    1001af <process_main()+0x1af>
    register uintptr_t rax asm("rax") = syscallno;
  10009d:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  1000a2:	0f 05                	syscall 
    return rax;
  1000a4:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  1000a7:	41 89 c5             	mov    %eax,%r13d

    // The rest of this code is like p-allocator.c.

    pid_t p = sys_getpid();
    srand(p);
  1000aa:	89 c7                	mov    %eax,%edi
  1000ac:	e8 f3 02 00 00       	callq  1003a4 <srand(unsigned int)>
//    Return the smallest multiple of `m` greater than or equal to `x`.
//    Equivalently, round `x` up to the nearest multiple of `m`.
template <typename T>
inline constexpr T round_up(T x, unsigned m) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + m - 1, m);
  1000b1:	41 bc 23 40 10 00    	mov    $0x104023,%r12d
  1000b7:	49 81 e4 00 f0 ff ff 	and    $0xfffffffffffff000,%r12

    uint8_t* heap_bottom = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1000be:	4d 89 e6             	mov    %r12,%r14
    heap_top = heap_bottom;
  1000c1:	4c 89 25 48 2f 00 00 	mov    %r12,0x2f48(%rip)        # 103010 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1000c8:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000cb:	48 83 e8 01          	sub    $0x1,%rax
  1000cf:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000d5:	48 89 05 2c 2f 00 00 	mov    %rax,0x2f2c(%rip)        # 103008 <stack_bottom>

    while (heap_top != stack_bottom) {
  1000dc:	4c 39 e0             	cmp    %r12,%rax
  1000df:	0f 85 48 01 00 00    	jne    10022d <process_main()+0x22d>
    register uintptr_t rax asm("rax") = syscallno;
  1000e5:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  1000ea:	0f 05                	syscall 
    return rax;
  1000ec:	eb f7                	jmp    1000e5 <process_main()+0xe5>
        assert(intermediate_pid != initial_pid);
  1000ee:	b9 00 00 00 00       	mov    $0x0,%ecx
  1000f3:	ba d0 0e 10 00       	mov    $0x100ed0,%edx
  1000f8:	be 1d 00 00 00       	mov    $0x1d,%esi
  1000fd:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  100102:	e8 5e 0d 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
        assert(intermediate_pid == initial_pid && p1 != initial_pid);
  100107:	41 39 c4             	cmp    %eax,%r12d
  10010a:	75 09                	jne    100115 <process_main()+0x115>
  10010c:	45 39 f4             	cmp    %r14d,%r12d
  10010f:	0f 85 34 ff ff ff    	jne    100049 <process_main()+0x49>
  100115:	b9 00 00 00 00       	mov    $0x0,%ecx
  10011a:	ba f0 0e 10 00       	mov    $0x100ef0,%edx
  10011f:	be 1f 00 00 00       	mov    $0x1f,%esi
  100124:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  100129:	e8 37 0d 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
        assert(final_pid != initial_pid && final_pid != intermediate_pid);
  10012e:	b9 00 00 00 00       	mov    $0x0,%ecx
  100133:	ba 28 0f 10 00       	mov    $0x100f28,%edx
  100138:	be 25 00 00 00       	mov    $0x25,%esi
  10013d:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  100142:	e8 1e 0d 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
        assert(p2 != p1 && p2 != intermediate_pid && p2 != initial_pid);
  100147:	45 39 ee             	cmp    %r13d,%r14d
  10014a:	0f 94 c1             	sete   %cl
  10014d:	44 39 eb             	cmp    %r13d,%ebx
  100150:	0f 94 c2             	sete   %dl
  100153:	08 d1                	or     %dl,%cl
  100155:	75 26                	jne    10017d <process_main()+0x17d>
  100157:	45 39 ec             	cmp    %r13d,%r12d
  10015a:	74 21                	je     10017d <process_main()+0x17d>
        assert(final_pid == intermediate_pid);
  10015c:	39 c3                	cmp    %eax,%ebx
  10015e:	0f 84 10 ff ff ff    	je     100074 <process_main()+0x74>
  100164:	b9 00 00 00 00       	mov    $0x0,%ecx
  100169:	ba c9 0f 10 00       	mov    $0x100fc9,%edx
  10016e:	be 28 00 00 00       	mov    $0x28,%esi
  100173:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  100178:	e8 e8 0c 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
        assert(p2 != p1 && p2 != intermediate_pid && p2 != initial_pid);
  10017d:	b9 00 00 00 00       	mov    $0x0,%ecx
  100182:	ba 68 0f 10 00       	mov    $0x100f68,%edx
  100187:	be 27 00 00 00       	mov    $0x27,%esi
  10018c:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  100191:	e8 cf 0c 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
    assert(test2.field1 == 61);
  100196:	b9 00 00 00 00       	mov    $0x0,%ecx
  10019b:	ba e7 0f 10 00       	mov    $0x100fe7,%edx
  1001a0:	be 2d 00 00 00       	mov    $0x2d,%esi
  1001a5:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  1001aa:	e8 b6 0c 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
    assert(test2.field2 == 61 + final_pid);
  1001af:	b9 00 00 00 00       	mov    $0x0,%ecx
  1001b4:	ba a0 0f 10 00       	mov    $0x100fa0,%edx
  1001b9:	be 30 00 00 00       	mov    $0x30,%esi
  1001be:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  1001c3:	e8 9d 0c 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
    register uintptr_t rax asm("rax") = syscallno;
  1001c8:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  1001cd:	48 8b 3d 3c 2e 00 00 	mov    0x2e3c(%rip),%rdi        # 103010 <heap_top>
  1001d4:	0f 05                	syscall 
        int x = rand(0, ALLOC_SLOWDOWN - 1);
        if (x < p) {
            if (sys_page_alloc(heap_top) < 0) {
  1001d6:	85 c0                	test   %eax,%eax
  1001d8:	0f 88 07 ff ff ff    	js     1000e5 <process_main()+0xe5>
                break;
            }
            // check that the page starts out all zero
            for (unsigned long* l = (unsigned long*) heap_top;
  1001de:	48 8b 0d 2b 2e 00 00 	mov    0x2e2b(%rip),%rcx        # 103010 <heap_top>
                 l != (unsigned long*) (heap_top + PAGESIZE);
  1001e5:	48 8d 91 00 10 00 00 	lea    0x1000(%rcx),%rdx
            for (unsigned long* l = (unsigned long*) heap_top;
  1001ec:	48 89 c8             	mov    %rcx,%rax
                 ++l) {
                assert(*l == 0);
  1001ef:	48 83 38 00          	cmpq   $0x0,(%rax)
  1001f3:	75 6b                	jne    100260 <process_main()+0x260>
            for (unsigned long* l = (unsigned long*) heap_top;
  1001f5:	48 83 c0 08          	add    $0x8,%rax
                 l != (unsigned long*) (heap_top + PAGESIZE);
  1001f9:	48 39 d0             	cmp    %rdx,%rax
  1001fc:	75 f1                	jne    1001ef <process_main()+0x1ef>
            }
            // check we can write to new page
            *heap_top = p;
  1001fe:	88 19                	mov    %bl,(%rcx)
            // check we can write to console
            console[CPOS(24, 79)] = p;
  100200:	66 89 1d 97 8d fb ff 	mov    %bx,-0x47269(%rip)        # b8f9e <console+0xf9e>
            // update `heap_top`
            heap_top += PAGESIZE;
  100207:	48 81 05 fe 2d 00 00 	addq   $0x1000,0x2dfe(%rip)        # 103010 <heap_top>
  10020e:	00 10 00 00 
    register uintptr_t rax asm("rax") = syscallno;
  100212:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100217:	0f 05                	syscall 
    while (heap_top != stack_bottom) {
  100219:	48 8b 05 e8 2d 00 00 	mov    0x2de8(%rip),%rax        # 103008 <stack_bottom>
  100220:	48 39 05 e9 2d 00 00 	cmp    %rax,0x2de9(%rip)        # 103010 <heap_top>
  100227:	0f 84 b8 fe ff ff    	je     1000e5 <process_main()+0xe5>
        int x = rand(0, ALLOC_SLOWDOWN - 1);
  10022d:	be 63 00 00 00       	mov    $0x63,%esi
  100232:	bf 00 00 00 00       	mov    $0x0,%edi
  100237:	e8 87 01 00 00       	callq  1003c3 <rand(int, int)>
        if (x < p) {
  10023c:	44 39 e8             	cmp    %r13d,%eax
  10023f:	7c 87                	jl     1001c8 <process_main()+0x1c8>
        } else if (x < p + 1 && heap_bottom < heap_top) {
  100241:	75 cf                	jne    100212 <process_main()+0x212>
  100243:	48 8b 05 c6 2d 00 00 	mov    0x2dc6(%rip),%rax        # 103010 <heap_top>
  10024a:	4c 39 f0             	cmp    %r14,%rax
  10024d:	76 c3                	jbe    100212 <process_main()+0x212>
            // ensure we can write to any previously-allocated page
            uintptr_t addr = rand((uintptr_t) heap_bottom,
                                  (uintptr_t) heap_top - 1);
  10024f:	8d 70 ff             	lea    -0x1(%rax),%esi
            uintptr_t addr = rand((uintptr_t) heap_bottom,
  100252:	44 89 e7             	mov    %r12d,%edi
  100255:	e8 69 01 00 00       	callq  1003c3 <rand(int, int)>
                                  (uintptr_t) heap_top - 1);
  10025a:	48 98                	cltq   
            *((char*) addr) = p;
  10025c:	88 18                	mov    %bl,(%rax)
  10025e:	eb b2                	jmp    100212 <process_main()+0x212>
                assert(*l == 0);
  100260:	b9 00 00 00 00       	mov    $0x0,%ecx
  100265:	ba fa 0f 10 00       	mov    $0x100ffa,%edx
  10026a:	be 45 00 00 00       	mov    $0x45,%esi
  10026f:	bf bf 0f 10 00       	mov    $0x100fbf,%edi
  100274:	e8 ec 0b 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>

0000000000100279 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  100279:	f3 0f 1e fa          	endbr64 
  10027d:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  100280:	48 39 fe             	cmp    %rdi,%rsi
  100283:	73 09                	jae    10028e <memmove+0x15>
  100285:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100289:	48 39 cf             	cmp    %rcx,%rdi
  10028c:	72 1d                	jb     1002ab <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  10028e:	b9 00 00 00 00       	mov    $0x0,%ecx
  100293:	48 85 d2             	test   %rdx,%rdx
  100296:	74 12                	je     1002aa <memmove+0x31>
            *d++ = *s++;
  100298:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  10029c:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  1002a0:	48 83 c1 01          	add    $0x1,%rcx
  1002a4:	48 39 d1             	cmp    %rdx,%rcx
  1002a7:	75 ef                	jne    100298 <memmove+0x1f>
        }
    }
    return dst;
}
  1002a9:	c3                   	retq   
  1002aa:	c3                   	retq   
        while (n-- > 0) {
  1002ab:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  1002af:	48 85 d2             	test   %rdx,%rdx
  1002b2:	74 f5                	je     1002a9 <memmove+0x30>
            *--d = *--s;
  1002b4:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1002b8:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  1002bb:	48 83 e9 01          	sub    $0x1,%rcx
  1002bf:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1002c3:	75 ef                	jne    1002b4 <memmove+0x3b>
  1002c5:	c3                   	retq   

00000000001002c6 <memset>:

void* memset(void* v, int c, size_t n) {
  1002c6:	f3 0f 1e fa          	endbr64 
  1002ca:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1002cd:	48 85 d2             	test   %rdx,%rdx
  1002d0:	74 13                	je     1002e5 <memset+0x1f>
  1002d2:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  1002d6:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  1002d9:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1002dc:	48 83 c2 01          	add    $0x1,%rdx
  1002e0:	48 39 d1             	cmp    %rdx,%rcx
  1002e3:	75 f4                	jne    1002d9 <memset+0x13>
    }
    return v;
}
  1002e5:	c3                   	retq   

00000000001002e6 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  1002e6:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  1002ea:	80 3f 00             	cmpb   $0x0,(%rdi)
  1002ed:	74 10                	je     1002ff <strlen+0x19>
  1002ef:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  1002f4:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  1002f8:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1002fc:	75 f6                	jne    1002f4 <strlen+0xe>
  1002fe:	c3                   	retq   
  1002ff:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  100304:	c3                   	retq   

0000000000100305 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  100305:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100309:	48 85 f6             	test   %rsi,%rsi
  10030c:	74 15                	je     100323 <strnlen+0x1e>
  10030e:	b8 00 00 00 00       	mov    $0x0,%eax
  100313:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100317:	74 0d                	je     100326 <strnlen+0x21>
        ++n;
  100319:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  10031d:	48 39 c6             	cmp    %rax,%rsi
  100320:	75 f1                	jne    100313 <strnlen+0xe>
  100322:	c3                   	retq   
  100323:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  100326:	c3                   	retq   

0000000000100327 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  100327:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  10032b:	0f b6 07             	movzbl (%rdi),%eax
  10032e:	84 c0                	test   %al,%al
  100330:	74 10                	je     100342 <strchr+0x1b>
  100332:	40 38 f0             	cmp    %sil,%al
  100335:	74 18                	je     10034f <strchr+0x28>
        ++s;
  100337:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  10033b:	0f b6 07             	movzbl (%rdi),%eax
  10033e:	84 c0                	test   %al,%al
  100340:	75 f0                	jne    100332 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  100342:	40 84 f6             	test   %sil,%sil
  100345:	b8 00 00 00 00       	mov    $0x0,%eax
  10034a:	48 0f 44 c7          	cmove  %rdi,%rax
  10034e:	c3                   	retq   
  10034f:	48 89 f8             	mov    %rdi,%rax
    }
}
  100352:	c3                   	retq   

0000000000100353 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  100353:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  100357:	83 3d c2 2c 00 00 00 	cmpl   $0x0,0x2cc2(%rip)        # 103020 <rand_seed_set>
  10035e:	74 27                	je     100387 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  100360:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  100367:	f4 51 58 
  10036a:	48 0f af 05 a6 2c 00 	imul   0x2ca6(%rip),%rax        # 103018 <rand_seed>
  100371:	00 
  100372:	48 83 c0 01          	add    $0x1,%rax
  100376:	48 89 05 9b 2c 00 00 	mov    %rax,0x2c9b(%rip)        # 103018 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  10037d:	48 c1 e8 20          	shr    $0x20,%rax
  100381:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100386:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100387:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  10038e:	87 d4 30 
  100391:	48 89 05 80 2c 00 00 	mov    %rax,0x2c80(%rip)        # 103018 <rand_seed>
    rand_seed_set = 1;
  100398:	c7 05 7e 2c 00 00 01 	movl   $0x1,0x2c7e(%rip)        # 103020 <rand_seed_set>
  10039f:	00 00 00 
}
  1003a2:	eb bc                	jmp    100360 <rand()+0xd>

00000000001003a4 <srand(unsigned int)>:
void srand(unsigned seed) {
  1003a4:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  1003a8:	89 f8                	mov    %edi,%eax
  1003aa:	48 c1 e7 20          	shl    $0x20,%rdi
  1003ae:	48 09 c7             	or     %rax,%rdi
  1003b1:	48 89 3d 60 2c 00 00 	mov    %rdi,0x2c60(%rip)        # 103018 <rand_seed>
    rand_seed_set = 1;
  1003b8:	c7 05 5e 2c 00 00 01 	movl   $0x1,0x2c5e(%rip)        # 103020 <rand_seed_set>
  1003bf:	00 00 00 
}
  1003c2:	c3                   	retq   

00000000001003c3 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  1003c3:	f3 0f 1e fa          	endbr64 
  1003c7:	55                   	push   %rbp
  1003c8:	48 89 e5             	mov    %rsp,%rbp
  1003cb:	41 54                	push   %r12
  1003cd:	53                   	push   %rbx
    assert(min <= max);
  1003ce:	39 f7                	cmp    %esi,%edi
  1003d0:	7f 27                	jg     1003f9 <rand(int, int)+0x36>
  1003d2:	41 89 fc             	mov    %edi,%r12d
  1003d5:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  1003d7:	e8 77 ff ff ff       	callq  100353 <rand()>
  1003dc:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1003de:	44 29 e3             	sub    %r12d,%ebx
  1003e1:	8d 43 01             	lea    0x1(%rbx),%eax
  1003e4:	48 98                	cltq   
    unsigned long r = rand();
  1003e6:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1003e9:	48 0f af c3          	imul   %rbx,%rax
  1003ed:	48 c1 e8 1f          	shr    $0x1f,%rax
  1003f1:	44 01 e0             	add    %r12d,%eax
}
  1003f4:	5b                   	pop    %rbx
  1003f5:	41 5c                	pop    %r12
  1003f7:	5d                   	pop    %rbp
  1003f8:	c3                   	retq   
    assert(min <= max);
  1003f9:	b9 00 00 00 00       	mov    $0x0,%ecx
  1003fe:	ba 02 10 10 00       	mov    $0x101002,%edx
  100403:	be ff 00 00 00       	mov    $0xff,%esi
  100408:	bf 0d 10 10 00       	mov    $0x10100d,%edi
  10040d:	e8 53 0a 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>

0000000000100412 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  100412:	f3 0f 1e fa          	endbr64 
  100416:	55                   	push   %rbp
  100417:	48 89 e5             	mov    %rsp,%rbp
  10041a:	41 57                	push   %r15
  10041c:	41 56                	push   %r14
  10041e:	41 55                	push   %r13
  100420:	41 54                	push   %r12
  100422:	53                   	push   %rbx
  100423:	48 83 ec 58          	sub    $0x58,%rsp
  100427:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  10042b:	0f b6 02             	movzbl (%rdx),%eax
  10042e:	84 c0                	test   %al,%al
  100430:	0f 84 c6 07 00 00    	je     100bfc <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  100436:	49 89 fe             	mov    %rdi,%r14
  100439:	41 89 f7             	mov    %esi,%r15d
  10043c:	48 89 d3             	mov    %rdx,%rbx
  10043f:	e9 b9 03 00 00       	jmpq   1007fd <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  100444:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  100448:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  10044c:	84 db                	test   %bl,%bl
  10044e:	0f 84 8a 07 00 00    	je     100bde <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  100454:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  10045a:	0f be f3             	movsbl %bl,%esi
  10045d:	bf f0 16 10 00       	mov    $0x1016f0,%edi
  100462:	e8 c0 fe ff ff       	callq  100327 <strchr>
  100467:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  10046a:	48 85 c0             	test   %rax,%rax
  10046d:	74 74                	je     1004e3 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  10046f:	48 81 e9 f0 16 10 00 	sub    $0x1016f0,%rcx
  100476:	b8 01 00 00 00       	mov    $0x1,%eax
  10047b:	d3 e0                	shl    %cl,%eax
  10047d:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  100480:	49 83 c4 01          	add    $0x1,%r12
  100484:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  100489:	84 db                	test   %bl,%bl
  10048b:	75 cd                	jne    10045a <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  10048d:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  100494:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  10049b:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  1004a0:	0f 84 cc 00 00 00    	je     100572 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  1004a6:	41 0f b6 04 24       	movzbl (%r12),%eax
  1004ab:	3c 6c                	cmp    $0x6c,%al
  1004ad:	0f 84 54 01 00 00    	je     100607 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1004b3:	0f 8f 42 01 00 00    	jg     1005fb <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  1004b9:	3c 68                	cmp    $0x68,%al
  1004bb:	0f 85 68 01 00 00    	jne    100629 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  1004c1:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  1004c6:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1004cc:	8d 50 bd             	lea    -0x43(%rax),%edx
  1004cf:	80 fa 35             	cmp    $0x35,%dl
  1004d2:	0f 87 aa 05 00 00    	ja     100a82 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1004d8:	0f b6 d2             	movzbl %dl,%edx
  1004db:	3e ff 24 d5 30 10 10 	notrack jmpq *0x101030(,%rdx,8)
  1004e2:	00 
        if (*format >= '1' && *format <= '9') {
  1004e3:	8d 43 cf             	lea    -0x31(%rbx),%eax
  1004e6:	3c 08                	cmp    $0x8,%al
  1004e8:	77 35                	ja     10051f <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1004ea:	41 0f b6 04 24       	movzbl (%r12),%eax
  1004ef:	8d 50 d0             	lea    -0x30(%rax),%edx
  1004f2:	80 fa 09             	cmp    $0x9,%dl
  1004f5:	77 63                	ja     10055a <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  1004f7:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  1004fc:	49 83 c4 01          	add    $0x1,%r12
  100500:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  100503:	0f be c0             	movsbl %al,%eax
  100506:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10050a:	41 0f b6 04 24       	movzbl (%r12),%eax
  10050f:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100512:	80 f9 09             	cmp    $0x9,%cl
  100515:	76 e5                	jbe    1004fc <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  100517:	89 55 98             	mov    %edx,-0x68(%rbp)
  10051a:	e9 75 ff ff ff       	jmpq   100494 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  10051f:	80 fb 2a             	cmp    $0x2a,%bl
  100522:	75 42                	jne    100566 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  100524:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100528:	8b 07                	mov    (%rdi),%eax
  10052a:	83 f8 2f             	cmp    $0x2f,%eax
  10052d:	77 19                	ja     100548 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  10052f:	89 c2                	mov    %eax,%edx
  100531:	48 03 57 10          	add    0x10(%rdi),%rdx
  100535:	83 c0 08             	add    $0x8,%eax
  100538:	89 07                	mov    %eax,(%rdi)
  10053a:	8b 02                	mov    (%rdx),%eax
  10053c:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  10053f:	49 83 c4 01          	add    $0x1,%r12
  100543:	e9 4c ff ff ff       	jmpq   100494 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  100548:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10054c:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100550:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100554:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100558:	eb e0                	jmp    10053a <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10055a:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  100561:	e9 2e ff ff ff       	jmpq   100494 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  100566:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  10056d:	e9 22 ff ff ff       	jmpq   100494 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  100572:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  100577:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10057d:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100580:	80 f9 09             	cmp    $0x9,%cl
  100583:	76 13                	jbe    100598 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  100585:	3c 2a                	cmp    $0x2a,%al
  100587:	74 32                	je     1005bb <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  100589:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  10058c:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  100593:	e9 0e ff ff ff       	jmpq   1004a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100598:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  10059d:	48 83 c2 01          	add    $0x1,%rdx
  1005a1:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  1005a4:	0f be c0             	movsbl %al,%eax
  1005a7:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1005ab:	0f b6 02             	movzbl (%rdx),%eax
  1005ae:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1005b1:	80 f9 09             	cmp    $0x9,%cl
  1005b4:	76 e7                	jbe    10059d <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  1005b6:	49 89 d4             	mov    %rdx,%r12
  1005b9:	eb 1c                	jmp    1005d7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  1005bb:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1005bf:	8b 01                	mov    (%rcx),%eax
  1005c1:	83 f8 2f             	cmp    $0x2f,%eax
  1005c4:	77 23                	ja     1005e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  1005c6:	89 c2                	mov    %eax,%edx
  1005c8:	48 03 51 10          	add    0x10(%rcx),%rdx
  1005cc:	83 c0 08             	add    $0x8,%eax
  1005cf:	89 01                	mov    %eax,(%rcx)
  1005d1:	8b 32                	mov    (%rdx),%esi
                ++format;
  1005d3:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  1005d7:	85 f6                	test   %esi,%esi
  1005d9:	b8 00 00 00 00       	mov    $0x0,%eax
  1005de:	0f 49 c6             	cmovns %esi,%eax
  1005e1:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1005e4:	e9 bd fe ff ff       	jmpq   1004a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  1005e9:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1005ed:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1005f1:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1005f5:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1005f9:	eb d6                	jmp    1005d1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  1005fb:	3c 74                	cmp    $0x74,%al
  1005fd:	74 08                	je     100607 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1005ff:	3c 7a                	cmp    $0x7a,%al
  100601:	0f 85 e2 05 00 00    	jne    100be9 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  100607:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  10060c:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100612:	8d 50 bd             	lea    -0x43(%rax),%edx
  100615:	80 fa 35             	cmp    $0x35,%dl
  100618:	0f 87 64 04 00 00    	ja     100a82 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  10061e:	0f b6 d2             	movzbl %dl,%edx
  100621:	3e ff 24 d5 e0 11 10 	notrack jmpq *0x1011e0(,%rdx,8)
  100628:	00 
  100629:	8d 50 bd             	lea    -0x43(%rax),%edx
  10062c:	80 fa 35             	cmp    $0x35,%dl
  10062f:	0f 87 4a 04 00 00    	ja     100a7f <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  100635:	0f b6 d2             	movzbl %dl,%edx
  100638:	3e ff 24 d5 90 13 10 	notrack jmpq *0x101390(,%rdx,8)
  10063f:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100640:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100644:	8b 07                	mov    (%rdi),%eax
  100646:	83 f8 2f             	cmp    $0x2f,%eax
  100649:	0f 87 c9 01 00 00    	ja     100818 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  10064f:	89 c2                	mov    %eax,%edx
  100651:	48 03 57 10          	add    0x10(%rdi),%rdx
  100655:	83 c0 08             	add    $0x8,%eax
  100658:	89 07                	mov    %eax,(%rdi)
  10065a:	48 8b 12             	mov    (%rdx),%rdx
  10065d:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  100660:	48 89 d0             	mov    %rdx,%rax
  100663:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  100667:	49 89 d0             	mov    %rdx,%r8
  10066a:	49 f7 d8             	neg    %r8
  10066d:	25 80 00 00 00       	and    $0x80,%eax
  100672:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  100676:	41 09 c5             	or     %eax,%r13d
  100679:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  10067d:	bb c5 17 10 00       	mov    $0x1017c5,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  100682:	44 89 e8             	mov    %r13d,%eax
  100685:	83 e0 20             	and    $0x20,%eax
  100688:	89 45 9c             	mov    %eax,-0x64(%rbp)
  10068b:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  100691:	0f 85 0e 04 00 00    	jne    100aa5 <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  100697:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  10069b:	44 89 e8             	mov    %r13d,%eax
  10069e:	83 e0 60             	and    $0x60,%eax
  1006a1:	83 f8 60             	cmp    $0x60,%eax
  1006a4:	0f 84 3e 04 00 00    	je     100ae8 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1006aa:	44 89 e8             	mov    %r13d,%eax
  1006ad:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1006b0:	48 c7 45 a8 c5 17 10 	movq   $0x1017c5,-0x58(%rbp)
  1006b7:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1006b8:	83 f8 21             	cmp    $0x21,%eax
  1006bb:	0f 84 66 04 00 00    	je     100b27 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1006c1:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1006c4:	89 c8                	mov    %ecx,%eax
  1006c6:	f7 d0                	not    %eax
  1006c8:	c1 e8 1f             	shr    $0x1f,%eax
  1006cb:	89 45 88             	mov    %eax,-0x78(%rbp)
  1006ce:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1006d2:	0f 85 8b 04 00 00    	jne    100b63 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  1006d8:	84 c0                	test   %al,%al
  1006da:	0f 84 83 04 00 00    	je     100b63 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  1006e0:	48 63 f1             	movslq %ecx,%rsi
  1006e3:	48 89 df             	mov    %rbx,%rdi
  1006e6:	e8 1a fc ff ff       	callq  100305 <strnlen>
  1006eb:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  1006ee:	8b 45 8c             	mov    -0x74(%rbp),%eax
  1006f1:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  1006f4:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1006fb:	83 f8 22             	cmp    $0x22,%eax
  1006fe:	0f 84 97 04 00 00    	je     100b9b <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  100704:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100708:	e8 d9 fb ff ff       	callq  1002e6 <strlen>
  10070d:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  100710:	03 55 a0             	add    -0x60(%rbp),%edx
  100713:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100716:	29 d7                	sub    %edx,%edi
  100718:	89 fa                	mov    %edi,%edx
  10071a:	29 c2                	sub    %eax,%edx
  10071c:	89 55 98             	mov    %edx,-0x68(%rbp)
  10071f:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100722:	41 f6 c5 04          	test   $0x4,%r13b
  100726:	75 32                	jne    10075a <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  100728:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10072b:	85 d2                	test   %edx,%edx
  10072d:	7e 2b                	jle    10075a <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  10072f:	49 8b 06             	mov    (%r14),%rax
  100732:	44 89 fa             	mov    %r15d,%edx
  100735:	be 20 00 00 00       	mov    $0x20,%esi
  10073a:	4c 89 f7             	mov    %r14,%rdi
  10073d:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10073f:	41 83 ed 01          	sub    $0x1,%r13d
  100743:	45 85 ed             	test   %r13d,%r13d
  100746:	7f e7                	jg     10072f <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  100748:	8b 7d 98             	mov    -0x68(%rbp),%edi
  10074b:	85 ff                	test   %edi,%edi
  10074d:	b8 01 00 00 00       	mov    $0x1,%eax
  100752:	0f 4f c7             	cmovg  %edi,%eax
  100755:	29 c7                	sub    %eax,%edi
  100757:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  10075a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  10075e:	0f b6 00             	movzbl (%rax),%eax
  100761:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  100765:	84 c0                	test   %al,%al
  100767:	74 1b                	je     100784 <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  100769:	0f b6 f0             	movzbl %al,%esi
  10076c:	49 8b 06             	mov    (%r14),%rax
  10076f:	44 89 fa             	mov    %r15d,%edx
  100772:	4c 89 f7             	mov    %r14,%rdi
  100775:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  100777:	49 83 c5 01          	add    $0x1,%r13
  10077b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  100780:	84 c0                	test   %al,%al
  100782:	75 e5                	jne    100769 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  100784:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  100788:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  10078c:	7e 16                	jle    1007a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  10078e:	49 8b 06             	mov    (%r14),%rax
  100791:	44 89 fa             	mov    %r15d,%edx
  100794:	be 30 00 00 00       	mov    $0x30,%esi
  100799:	4c 89 f7             	mov    %r14,%rdi
  10079c:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  10079e:	41 83 ed 01          	sub    $0x1,%r13d
  1007a2:	75 ea                	jne    10078e <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  1007a4:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  1007a8:	7e 22                	jle    1007cc <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  1007aa:	8b 45 a0             	mov    -0x60(%rbp),%eax
  1007ad:	8d 40 ff             	lea    -0x1(%rax),%eax
  1007b0:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  1007b5:	0f b6 33             	movzbl (%rbx),%esi
  1007b8:	49 8b 06             	mov    (%r14),%rax
  1007bb:	44 89 fa             	mov    %r15d,%edx
  1007be:	4c 89 f7             	mov    %r14,%rdi
  1007c1:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1007c3:	48 83 c3 01          	add    $0x1,%rbx
  1007c7:	4c 39 eb             	cmp    %r13,%rbx
  1007ca:	75 e9                	jne    1007b5 <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  1007cc:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  1007cf:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1007d3:	7e 15                	jle    1007ea <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  1007d5:	49 8b 06             	mov    (%r14),%rax
  1007d8:	44 89 fa             	mov    %r15d,%edx
  1007db:	be 20 00 00 00       	mov    $0x20,%esi
  1007e0:	4c 89 f7             	mov    %r14,%rdi
  1007e3:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  1007e5:	83 eb 01             	sub    $0x1,%ebx
  1007e8:	75 eb                	jne    1007d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  1007ea:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  1007ef:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1007f5:	84 c0                	test   %al,%al
  1007f7:	0f 84 ff 03 00 00    	je     100bfc <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  1007fd:	3c 25                	cmp    $0x25,%al
  1007ff:	0f 84 3f fc ff ff    	je     100444 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  100805:	0f b6 f0             	movzbl %al,%esi
  100808:	49 8b 06             	mov    (%r14),%rax
  10080b:	44 89 fa             	mov    %r15d,%edx
  10080e:	4c 89 f7             	mov    %r14,%rdi
  100811:	ff 10                	callq  *(%rax)
            continue;
  100813:	49 89 dc             	mov    %rbx,%r12
  100816:	eb d2                	jmp    1007ea <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100818:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10081c:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100820:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100824:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100828:	e9 2d fe ff ff       	jmpq   10065a <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  10082d:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100830:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100834:	8b 01                	mov    (%rcx),%eax
  100836:	83 f8 2f             	cmp    $0x2f,%eax
  100839:	77 13                	ja     10084e <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  10083b:	89 c2                	mov    %eax,%edx
  10083d:	48 03 51 10          	add    0x10(%rcx),%rdx
  100841:	83 c0 08             	add    $0x8,%eax
  100844:	89 01                	mov    %eax,(%rcx)
  100846:	48 63 12             	movslq (%rdx),%rdx
  100849:	e9 12 fe ff ff       	jmpq   100660 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  10084e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100852:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100856:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10085a:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10085e:	eb e6                	jmp    100846 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  100860:	49 89 cc             	mov    %rcx,%r12
  100863:	b8 01 00 00 00       	mov    $0x1,%eax
  100868:	be 0a 00 00 00       	mov    $0xa,%esi
  10086d:	e9 a8 00 00 00       	jmpq   10091a <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  100872:	49 89 cc             	mov    %rcx,%r12
  100875:	b8 00 00 00 00       	mov    $0x0,%eax
  10087a:	be 0a 00 00 00       	mov    $0xa,%esi
  10087f:	e9 96 00 00 00       	jmpq   10091a <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  100884:	b8 00 00 00 00       	mov    $0x0,%eax
  100889:	be 0a 00 00 00       	mov    $0xa,%esi
  10088e:	e9 87 00 00 00       	jmpq   10091a <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  100893:	b8 00 00 00 00       	mov    $0x0,%eax
  100898:	be 0a 00 00 00       	mov    $0xa,%esi
  10089d:	eb 7b                	jmp    10091a <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10089f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008a3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1008a7:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008ab:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1008af:	e9 84 00 00 00       	jmpq   100938 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  1008b4:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008b8:	8b 01                	mov    (%rcx),%eax
  1008ba:	83 f8 2f             	cmp    $0x2f,%eax
  1008bd:	77 10                	ja     1008cf <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  1008bf:	89 c2                	mov    %eax,%edx
  1008c1:	48 03 51 10          	add    0x10(%rcx),%rdx
  1008c5:	83 c0 08             	add    $0x8,%eax
  1008c8:	89 01                	mov    %eax,(%rcx)
  1008ca:	44 8b 02             	mov    (%rdx),%r8d
  1008cd:	eb 6c                	jmp    10093b <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  1008cf:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008d3:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1008d7:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008db:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1008df:	eb e9                	jmp    1008ca <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  1008e1:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  1008e4:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  1008eb:	bf 20 17 10 00       	mov    $0x101720,%edi
  1008f0:	e9 c0 01 00 00       	jmpq   100ab5 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1008f5:	49 89 cc             	mov    %rcx,%r12
  1008f8:	b8 01 00 00 00       	mov    $0x1,%eax
  1008fd:	eb 16                	jmp    100915 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1008ff:	49 89 cc             	mov    %rcx,%r12
  100902:	b8 00 00 00 00       	mov    $0x0,%eax
  100907:	eb 0c                	jmp    100915 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  100909:	b8 00 00 00 00       	mov    $0x0,%eax
  10090e:	eb 05                	jmp    100915 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  100910:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  100915:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10091a:	85 c0                	test   %eax,%eax
  10091c:	74 96                	je     1008b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  10091e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100922:	8b 01                	mov    (%rcx),%eax
  100924:	83 f8 2f             	cmp    $0x2f,%eax
  100927:	0f 87 72 ff ff ff    	ja     10089f <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  10092d:	89 c2                	mov    %eax,%edx
  10092f:	48 03 51 10          	add    0x10(%rcx),%rdx
  100933:	83 c0 08             	add    $0x8,%eax
  100936:	89 01                	mov    %eax,(%rcx)
  100938:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  10093b:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  10093f:	85 f6                	test   %esi,%esi
  100941:	79 9e                	jns    1008e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  100943:	41 89 f1             	mov    %esi,%r9d
  100946:	f7 de                	neg    %esi
  100948:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  10094f:	bf 00 17 10 00       	mov    $0x101700,%edi
  100954:	e9 5c 01 00 00       	jmpq   100ab5 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  100959:	49 89 cc             	mov    %rcx,%r12
  10095c:	b8 01 00 00 00       	mov    $0x1,%eax
  100961:	eb 16                	jmp    100979 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  100963:	49 89 cc             	mov    %rcx,%r12
  100966:	b8 00 00 00 00       	mov    $0x0,%eax
  10096b:	eb 0c                	jmp    100979 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  10096d:	b8 00 00 00 00       	mov    $0x0,%eax
  100972:	eb 05                	jmp    100979 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  100974:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  100979:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  10097e:	eb 9a                	jmp    10091a <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  100980:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  100983:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100987:	8b 01                	mov    (%rcx),%eax
  100989:	83 f8 2f             	cmp    $0x2f,%eax
  10098c:	77 21                	ja     1009af <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  10098e:	89 c2                	mov    %eax,%edx
  100990:	48 03 51 10          	add    0x10(%rcx),%rdx
  100994:	83 c0 08             	add    $0x8,%eax
  100997:	89 01                	mov    %eax,(%rcx)
  100999:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  10099c:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  1009a3:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1009a8:	eb 99                	jmp    100943 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  1009aa:	49 89 cc             	mov    %rcx,%r12
  1009ad:	eb d4                	jmp    100983 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  1009af:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1009b3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1009b7:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1009bb:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1009bf:	eb d8                	jmp    100999 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  1009c1:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  1009c4:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1009c8:	8b 07                	mov    (%rdi),%eax
  1009ca:	83 f8 2f             	cmp    $0x2f,%eax
  1009cd:	77 1e                	ja     1009ed <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  1009cf:	89 c2                	mov    %eax,%edx
  1009d1:	48 03 57 10          	add    0x10(%rdi),%rdx
  1009d5:	83 c0 08             	add    $0x8,%eax
  1009d8:	89 07                	mov    %eax,(%rdi)
  1009da:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  1009dd:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  1009e3:	e9 9a fc ff ff       	jmpq   100682 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  1009e8:	49 89 cc             	mov    %rcx,%r12
  1009eb:	eb d7                	jmp    1009c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  1009ed:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1009f1:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1009f5:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1009f9:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1009fd:	eb db                	jmp    1009da <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  1009ff:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  100a02:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100a06:	8b 01                	mov    (%rcx),%eax
  100a08:	83 f8 2f             	cmp    $0x2f,%eax
  100a0b:	77 18                	ja     100a25 <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  100a0d:	89 c2                	mov    %eax,%edx
  100a0f:	48 03 51 10          	add    0x10(%rcx),%rdx
  100a13:	83 c0 08             	add    $0x8,%eax
  100a16:	89 01                	mov    %eax,(%rcx)
  100a18:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  100a1b:	e9 ca fd ff ff       	jmpq   1007ea <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  100a20:	49 89 cc             	mov    %rcx,%r12
  100a23:	eb dd                	jmp    100a02 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  100a25:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100a29:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100a2d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100a31:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100a35:	eb e1                	jmp    100a18 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  100a37:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  100a3a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100a3e:	8b 07                	mov    (%rdi),%eax
  100a40:	83 f8 2f             	cmp    $0x2f,%eax
  100a43:	77 28                	ja     100a6d <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  100a45:	89 c2                	mov    %eax,%edx
  100a47:	48 03 57 10          	add    0x10(%rdi),%rdx
  100a4b:	83 c0 08             	add    $0x8,%eax
  100a4e:	89 07                	mov    %eax,(%rdi)
  100a50:	8b 02                	mov    (%rdx),%eax
  100a52:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100a55:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100a59:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100a5d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  100a63:	e9 1a fc ff ff       	jmpq   100682 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  100a68:	49 89 cc             	mov    %rcx,%r12
  100a6b:	eb cd                	jmp    100a3a <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  100a6d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100a71:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100a75:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100a79:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100a7d:	eb d1                	jmp    100a50 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  100a7f:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  100a82:	84 c0                	test   %al,%al
  100a84:	0f 85 3b 01 00 00    	jne    100bc5 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  100a8a:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  100a8e:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  100a92:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  100a96:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100a9a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100aa0:	e9 dd fb ff ff       	jmpq   100682 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  100aa5:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  100aab:	bf 20 17 10 00       	mov    $0x101720,%edi
        if (flags & FLAG_NUMERIC) {
  100ab0:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  100ab5:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100ab9:	4c 89 c1             	mov    %r8,%rcx
  100abc:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  100ac0:	48 63 f6             	movslq %esi,%rsi
  100ac3:	48 83 eb 01          	sub    $0x1,%rbx
  100ac7:	48 89 c8             	mov    %rcx,%rax
  100aca:	ba 00 00 00 00       	mov    $0x0,%edx
  100acf:	48 f7 f6             	div    %rsi
  100ad2:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100ad6:	88 13                	mov    %dl,(%rbx)
        val /= base;
  100ad8:	48 89 ca             	mov    %rcx,%rdx
  100adb:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  100ade:	48 39 d6             	cmp    %rdx,%rsi
  100ae1:	76 e0                	jbe    100ac3 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  100ae3:	e9 af fb ff ff       	jmpq   100697 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  100ae8:	48 c7 45 a8 19 10 10 	movq   $0x101019,-0x58(%rbp)
  100aef:	00 
            if (flags & FLAG_NEGATIVE) {
  100af0:	41 f6 c5 80          	test   $0x80,%r13b
  100af4:	0f 85 c7 fb ff ff    	jne    1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  100afa:	48 c7 45 a8 17 10 10 	movq   $0x101017,-0x58(%rbp)
  100b01:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  100b02:	41 f6 c5 10          	test   $0x10,%r13b
  100b06:	0f 85 b5 fb ff ff    	jne    1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  100b0c:	41 f6 c5 08          	test   $0x8,%r13b
  100b10:	ba c5 17 10 00       	mov    $0x1017c5,%edx
  100b15:	b8 b6 17 10 00       	mov    $0x1017b6,%eax
  100b1a:	48 0f 44 c2          	cmove  %rdx,%rax
  100b1e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100b22:	e9 9a fb ff ff       	jmpq   1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  100b27:	41 8d 41 10          	lea    0x10(%r9),%eax
  100b2b:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100b30:	0f 85 8b fb ff ff    	jne    1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  100b36:	4d 85 c0             	test   %r8,%r8
  100b39:	75 0d                	jne    100b48 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  100b3b:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  100b42:	0f 84 79 fb ff ff    	je     1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  100b48:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100b4c:	ba 14 10 10 00       	mov    $0x101014,%edx
  100b51:	b8 1b 10 10 00       	mov    $0x10101b,%eax
  100b56:	48 0f 44 c2          	cmove  %rdx,%rax
  100b5a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100b5e:	e9 5e fb ff ff       	jmpq   1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  100b63:	48 89 df             	mov    %rbx,%rdi
  100b66:	e8 7b f7 ff ff       	callq  1002e6 <strlen>
  100b6b:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  100b6e:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100b72:	0f 84 76 fb ff ff    	je     1006ee <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  100b78:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  100b7c:	0f 84 6c fb ff ff    	je     1006ee <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  100b82:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100b85:	89 ca                	mov    %ecx,%edx
  100b87:	29 c2                	sub    %eax,%edx
  100b89:	39 c1                	cmp    %eax,%ecx
  100b8b:	b8 00 00 00 00       	mov    $0x0,%eax
  100b90:	0f 4f c2             	cmovg  %edx,%eax
  100b93:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100b96:	e9 69 fb ff ff       	jmpq   100704 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  100b9b:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100b9f:	e8 42 f7 ff ff       	callq  1002e6 <strlen>
  100ba4:	8b 75 a0             	mov    -0x60(%rbp),%esi
  100ba7:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100baa:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100bad:	89 f9                	mov    %edi,%ecx
  100baf:	29 f1                	sub    %esi,%ecx
  100bb1:	29 c1                	sub    %eax,%ecx
  100bb3:	39 fa                	cmp    %edi,%edx
  100bb5:	b8 00 00 00 00       	mov    $0x0,%eax
  100bba:	0f 4c c1             	cmovl  %ecx,%eax
  100bbd:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100bc0:	e9 3f fb ff ff       	jmpq   100704 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  100bc5:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  100bc8:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100bcb:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100bcf:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100bd3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100bd9:	e9 a4 fa ff ff       	jmpq   100682 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  100bde:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100be4:	e9 a4 f8 ff ff       	jmpq   10048d <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  100be9:	8d 50 bd             	lea    -0x43(%rax),%edx
  100bec:	80 fa 35             	cmp    $0x35,%dl
  100bef:	77 d7                	ja     100bc8 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  100bf1:	0f b6 d2             	movzbl %dl,%edx
  100bf4:	3e ff 24 d5 40 15 10 	notrack jmpq *0x101540(,%rdx,8)
  100bfb:	00 
        }
    }
}
  100bfc:	48 83 c4 58          	add    $0x58,%rsp
  100c00:	5b                   	pop    %rbx
  100c01:	41 5c                	pop    %r12
  100c03:	41 5d                	pop    %r13
  100c05:	41 5e                	pop    %r14
  100c07:	41 5f                	pop    %r15
  100c09:	5d                   	pop    %rbp
  100c0a:	c3                   	retq   
  100c0b:	90                   	nop

0000000000100c0c <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100c0c:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100c10:	48 c7 07 a8 17 10 00 	movq   $0x1017a8,(%rdi)
  100c17:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100c1e:	00 
  100c1f:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100c22:	85 f6                	test   %esi,%esi
  100c24:	78 18                	js     100c3e <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c26:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100c2c:	7f 0f                	jg     100c3d <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100c2e:	48 63 f6             	movslq %esi,%rsi
  100c31:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100c38:	00 
  100c39:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100c3d:	c3                   	retq   
        cell_ += cursorpos;
  100c3e:	8b 05 b8 83 fb ff    	mov    -0x47c48(%rip),%eax        # b8ffc <cursorpos>
  100c44:	48 98                	cltq   
  100c46:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100c4d:	00 
  100c4e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100c52:	c3                   	retq   
  100c53:	90                   	nop

0000000000100c54 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100c54:	f3 0f 1e fa          	endbr64 
  100c58:	55                   	push   %rbp
  100c59:	48 89 e5             	mov    %rsp,%rbp
  100c5c:	53                   	push   %rbx
  100c5d:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100c61:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100c68:	00 
  100c69:	72 18                	jb     100c83 <console_printer::scroll()+0x2f>
  100c6b:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100c6e:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100c72:	75 28                	jne    100c9c <console_printer::scroll()+0x48>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  100c74:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100c7b:	00 
    }
}
  100c7c:	48 83 c4 08          	add    $0x8,%rsp
  100c80:	5b                   	pop    %rbx
  100c81:	5d                   	pop    %rbp
  100c82:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100c83:	b9 00 00 00 00       	mov    $0x0,%ecx
  100c88:	ba 38 17 10 00       	mov    $0x101738,%edx
  100c8d:	be 2c 02 00 00       	mov    $0x22c,%esi
  100c92:	bf 0d 10 10 00       	mov    $0x10100d,%edi
  100c97:	e8 c9 01 00 00       	callq  100e65 <assert_fail(char const*, int, char const*, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100c9c:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100ca1:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100ca6:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  100cab:	e8 c9 f5 ff ff       	callq  100279 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100cb0:	ba a0 00 00 00       	mov    $0xa0,%edx
  100cb5:	be 00 00 00 00       	mov    $0x0,%esi
  100cba:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100cbf:	e8 02 f6 ff ff       	callq  1002c6 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100cc4:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  100ccb:	00 
  100ccc:	eb ae                	jmp    100c7c <console_printer::scroll()+0x28>

0000000000100cce <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100cce:	f3 0f 1e fa          	endbr64 
  100cd2:	55                   	push   %rbp
  100cd3:	48 89 e5             	mov    %rsp,%rbp
  100cd6:	41 55                	push   %r13
  100cd8:	41 54                	push   %r12
  100cda:	53                   	push   %rbx
  100cdb:	48 83 ec 08          	sub    $0x8,%rsp
  100cdf:	48 89 fb             	mov    %rdi,%rbx
  100ce2:	41 89 f5             	mov    %esi,%r13d
  100ce5:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100ce8:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100cec:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100cf2:	72 14                	jb     100d08 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100cf4:	48 89 df             	mov    %rbx,%rdi
  100cf7:	e8 58 ff ff ff       	callq  100c54 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100cfc:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100d00:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100d06:	73 ec                	jae    100cf4 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100d08:	41 80 fd 0a          	cmp    $0xa,%r13b
  100d0c:	74 1e                	je     100d2c <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100d0e:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100d12:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100d16:	45 0f b6 ed          	movzbl %r13b,%r13d
  100d1a:	45 09 ec             	or     %r13d,%r12d
  100d1d:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  100d21:	48 83 c4 08          	add    $0x8,%rsp
  100d25:	5b                   	pop    %rbx
  100d26:	41 5c                	pop    %r12
  100d28:	41 5d                	pop    %r13
  100d2a:	5d                   	pop    %rbp
  100d2b:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  100d2c:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100d32:	48 89 c1             	mov    %rax,%rcx
  100d35:	48 89 c6             	mov    %rax,%rsi
  100d38:	48 d1 fe             	sar    %rsi
  100d3b:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100d42:	66 66 66 
  100d45:	48 89 f0             	mov    %rsi,%rax
  100d48:	48 f7 ea             	imul   %rdx
  100d4b:	48 c1 fa 05          	sar    $0x5,%rdx
  100d4f:	48 89 c8             	mov    %rcx,%rax
  100d52:	48 c1 f8 3f          	sar    $0x3f,%rax
  100d56:	48 29 c2             	sub    %rax,%rdx
  100d59:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  100d5d:	48 c1 e0 04          	shl    $0x4,%rax
  100d61:	89 f2                	mov    %esi,%edx
  100d63:	29 c2                	sub    %eax,%edx
  100d65:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  100d67:	41 83 cc 20          	or     $0x20,%r12d
  100d6b:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  100d6f:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  100d73:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  100d77:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  100d7b:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100d7e:	83 f8 50             	cmp    $0x50,%eax
  100d81:	75 e8                	jne    100d6b <console_printer::putc(unsigned char, int)+0x9d>
  100d83:	eb 9c                	jmp    100d21 <console_printer::putc(unsigned char, int)+0x53>
  100d85:	90                   	nop

0000000000100d86 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100d86:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100d8a:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100d8e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100d94:	48 d1 f8             	sar    %rax
  100d97:	89 05 5f 82 fb ff    	mov    %eax,-0x47da1(%rip)        # b8ffc <cursorpos>
}
  100d9d:	c3                   	retq   

0000000000100d9e <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100d9e:	f3 0f 1e fa          	endbr64 
  100da2:	55                   	push   %rbp
  100da3:	48 89 e5             	mov    %rsp,%rbp
  100da6:	41 56                	push   %r14
  100da8:	41 55                	push   %r13
  100daa:	41 54                	push   %r12
  100dac:	53                   	push   %rbx
  100dad:	48 83 ec 20          	sub    $0x20,%rsp
  100db1:	89 fb                	mov    %edi,%ebx
  100db3:	41 89 f4             	mov    %esi,%r12d
  100db6:	49 89 d5             	mov    %rdx,%r13
  100db9:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100dbc:	89 fa                	mov    %edi,%edx
  100dbe:	c1 ea 1f             	shr    $0x1f,%edx
  100dc1:	89 fe                	mov    %edi,%esi
  100dc3:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100dc7:	e8 40 fe ff ff       	callq  100c0c <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100dcc:	4c 89 f1             	mov    %r14,%rcx
  100dcf:	4c 89 ea             	mov    %r13,%rdx
  100dd2:	44 89 e6             	mov    %r12d,%esi
  100dd5:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100dd9:	e8 34 f6 ff ff       	callq  100412 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100dde:	85 db                	test   %ebx,%ebx
  100de0:	78 1a                	js     100dfc <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100de2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100de6:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100dec:	48 d1 f8             	sar    %rax
}
  100def:	48 83 c4 20          	add    $0x20,%rsp
  100df3:	5b                   	pop    %rbx
  100df4:	41 5c                	pop    %r12
  100df6:	41 5d                	pop    %r13
  100df8:	41 5e                	pop    %r14
  100dfa:	5d                   	pop    %rbp
  100dfb:	c3                   	retq   
        cp.move_cursor();
  100dfc:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100e00:	e8 81 ff ff ff       	callq  100d86 <console_printer::move_cursor()>
  100e05:	eb db                	jmp    100de2 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100e07 <error_printf(char const*, ...)>:
    error_vprintf(-1, color, format, val);
    va_end(val);
}

__noinline
void error_printf(const char* format, ...) {
  100e07:	f3 0f 1e fa          	endbr64 
  100e0b:	55                   	push   %rbp
  100e0c:	48 89 e5             	mov    %rsp,%rbp
  100e0f:	48 83 ec 50          	sub    $0x50,%rsp
  100e13:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  100e17:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  100e1b:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100e1f:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100e23:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100e27:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
  100e2e:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100e32:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100e36:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100e3a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
  100e3e:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100e42:	48 89 fa             	mov    %rdi,%rdx
  100e45:	be 00 c0 00 00       	mov    $0xc000,%esi
  100e4a:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  100e4f:	e8 02 00 00 00       	callq  100e56 <error_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
}
  100e54:	c9                   	leaveq 
  100e55:	c3                   	retq   

0000000000100e56 <error_vprintf(int, int, char const*, __va_list_tag*)>:
    }
    (void) console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

int error_vprintf(int cpos, int color, const char* format, va_list val) {
  100e56:	f3 0f 1e fa          	endbr64 
  100e5a:	55                   	push   %rbp
  100e5b:	48 89 e5             	mov    %rsp,%rbp
    return console_vprintf(cpos, color, format, val);
  100e5e:	e8 3b ff ff ff       	callq  100d9e <console_vprintf(int, int, char const*, __va_list_tag*)>
}
  100e63:	5d                   	pop    %rbp
  100e64:	c3                   	retq   

0000000000100e65 <assert_fail(char const*, int, char const*, char const*)>:

void assert_fail(const char* file, int line, const char* msg,
                 const char* description) {
  100e65:	f3 0f 1e fa          	endbr64 
  100e69:	55                   	push   %rbp
  100e6a:	48 89 e5             	mov    %rsp,%rbp
  100e6d:	41 55                	push   %r13
  100e6f:	41 54                	push   %r12
  100e71:	53                   	push   %rbx
  100e72:	48 83 ec 08          	sub    $0x8,%rsp
  100e76:	48 89 fb             	mov    %rdi,%rbx
  100e79:	41 89 f4             	mov    %esi,%r12d
  100e7c:	49 89 d5             	mov    %rdx,%r13
    cursorpos = CPOS(23, 0);
  100e7f:	c7 05 73 81 fb ff 30 	movl   $0x730,-0x47e8d(%rip)        # b8ffc <cursorpos>
  100e86:	07 00 00 
    if (description) {
  100e89:	48 85 c9             	test   %rcx,%rcx
  100e8c:	74 11                	je     100e9f <assert_fail(char const*, int, char const*, char const*)+0x3a>
        error_printf("%s:%d: %s\n", file, line, description);
  100e8e:	89 f2                	mov    %esi,%edx
  100e90:	48 89 fe             	mov    %rdi,%rsi
  100e93:	bf bb 17 10 00       	mov    $0x1017bb,%edi
  100e98:	b0 00                	mov    $0x0,%al
  100e9a:	e8 68 ff ff ff       	callq  100e07 <error_printf(char const*, ...)>
    }
    error_printf("%s:%d: user assertion '%s' failed\n", file, line, msg);
  100e9f:	4c 89 e9             	mov    %r13,%rcx
  100ea2:	44 89 e2             	mov    %r12d,%edx
  100ea5:	48 89 de             	mov    %rbx,%rsi
  100ea8:	bf c8 17 10 00       	mov    $0x1017c8,%edi
  100ead:	b0 00                	mov    $0x0,%al
  100eaf:	e8 53 ff ff ff       	callq  100e07 <error_printf(char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100eb4:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100eb9:	bf 00 00 00 00       	mov    $0x0,%edi
  100ebe:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100ec0:	eb fe                	jmp    100ec0 <assert_fail(char const*, int, char const*, char const*)+0x5b>
