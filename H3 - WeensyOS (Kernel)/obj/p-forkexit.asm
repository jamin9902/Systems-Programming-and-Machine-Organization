
obj/p-forkexit.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <sys_exit()>:
    return make_syscall(SYSCALL_FORK);
}

// sys_exit()
//    Exit this process. Does not return.
[[noreturn]] inline void sys_exit() {
  100000:	f3 0f 1e fa          	endbr64 
    register uintptr_t rax asm("rax") = syscallno;
  100004:	b8 06 00 00 00       	mov    $0x6,%eax
              "r10", "r11");
  100009:	0f 05                	syscall 
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100010:	bf c0 0f 10 00       	mov    $0x100fc0,%edi
  100015:	0f 05                	syscall 
    make_syscall(SYSCALL_EXIT);
    make_syscall(SYSCALL_PANIC, (uintptr_t) "sys_exit should not return!");

    // should never get here
    while (true) {
  100017:	eb fe                	jmp    100017 <sys_exit()+0x17>

0000000000100019 <process_main()>:
uint8_t* stack_bottom;

// Remember which pages we wrote data into
unsigned char pagemark[4096] = {0};

void process_main() {
  100019:	f3 0f 1e fa          	endbr64 
  10001d:	55                   	push   %rbp
  10001e:	48 89 e5             	mov    %rsp,%rbp
  100021:	41 57                	push   %r15
  100023:	41 56                	push   %r14
  100025:	41 55                	push   %r13
  100027:	41 54                	push   %r12
  100029:	53                   	push   %rbx
  10002a:	48 83 ec 18          	sub    $0x18,%rsp
    for (size_t i = 0; i != sizeof(pagemark); ++i) {
  10002e:	b8 00 00 00 00       	mov    $0x0,%eax
        assert(pagemark[i] == 0);
  100033:	80 b8 00 20 10 00 00 	cmpb   $0x0,0x102000(%rax)
  10003a:	75 0e                	jne    10004a <process_main()+0x31>
    for (size_t i = 0; i != sizeof(pagemark); ++i) {
  10003c:	48 83 c0 01          	add    $0x1,%rax
  100040:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  100046:	75 eb                	jne    100033 <process_main()+0x1a>
  100048:	eb 2c                	jmp    100076 <process_main()+0x5d>
        assert(pagemark[i] == 0);
  10004a:	b9 00 00 00 00       	mov    $0x0,%ecx
  10004f:	ba dc 0f 10 00       	mov    $0x100fdc,%edx
  100054:	be 10 00 00 00       	mov    $0x10,%esi
  100059:	bf ed 0f 10 00       	mov    $0x100fed,%edi
  10005e:	e8 fe 0e 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>
        if (x == 0) {
            // fork, then either exit or start allocating
            pid_t p = sys_fork();
            int choice = rand(0, 2);
            if (choice == 0 && p > 0) {
                sys_exit();
  100063:	e8 98 ff ff ff       	callq  100000 <sys_exit()>
            } else if (choice != 2 ? p > 0 : p == 0) {
  100068:	85 db                	test   %ebx,%ebx
  10006a:	0f 94 c2             	sete   %dl
  10006d:	eb 45                	jmp    1000b4 <process_main()+0x9b>
    register uintptr_t rax asm("rax") = syscallno;
  10006f:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100074:	0f 05                	syscall 
        int x = rand(0, ALLOC_SLOWDOWN);
  100076:	be 12 00 00 00       	mov    $0x12,%esi
  10007b:	bf 00 00 00 00       	mov    $0x0,%edi
  100080:	e8 00 04 00 00       	callq  100485 <rand(int, int)>
        if (x == 0) {
  100085:	85 c0                	test   %eax,%eax
  100087:	75 e6                	jne    10006f <process_main()+0x56>
    register uintptr_t rax asm("rax") = syscallno;
  100089:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  10008e:	0f 05                	syscall 
    return rax;
  100090:	48 89 c3             	mov    %rax,%rbx
            int choice = rand(0, 2);
  100093:	be 02 00 00 00       	mov    $0x2,%esi
  100098:	bf 00 00 00 00       	mov    $0x0,%edi
  10009d:	e8 e3 03 00 00       	callq  100485 <rand(int, int)>
            if (choice == 0 && p > 0) {
  1000a2:	85 db                	test   %ebx,%ebx
  1000a4:	0f 9f c2             	setg   %dl
  1000a7:	85 c0                	test   %eax,%eax
  1000a9:	75 04                	jne    1000af <process_main()+0x96>
  1000ab:	84 d2                	test   %dl,%dl
  1000ad:	75 b4                	jne    100063 <process_main()+0x4a>
            } else if (choice != 2 ? p > 0 : p == 0) {
  1000af:	83 f8 02             	cmp    $0x2,%eax
  1000b2:	74 b4                	je     100068 <process_main()+0x4f>
  1000b4:	84 d2                	test   %dl,%dl
  1000b6:	74 be                	je     100076 <process_main()+0x5d>
        } else {
            sys_yield();
        }
    }

    int speed = rand(1, 16);
  1000b8:	be 10 00 00 00       	mov    $0x10,%esi
  1000bd:	bf 01 00 00 00       	mov    $0x1,%edi
  1000c2:	e8 be 03 00 00       	callq  100485 <rand(int, int)>
  1000c7:	41 89 c4             	mov    %eax,%r12d
    register uintptr_t rax asm("rax") = syscallno;
  1000ca:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  1000cf:	0f 05                	syscall 
    return make_syscall(SYSCALL_GETPID);
  1000d1:	41 89 c6             	mov    %eax,%r14d
//    Return the smallest multiple of `m` greater than or equal to `x`.
//    Equivalently, round `x` up to the nearest multiple of `m`.
template <typename T>
inline constexpr T round_up(T x, unsigned m) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + m - 1, m);
  1000d4:	41 bd 1b 40 10 00    	mov    $0x10401b,%r13d
    pid_t self = sys_getpid();

    uint8_t* heap_bottom = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1000da:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    heap_top = heap_bottom;
  1000e1:	4c 89 2d 20 2f 00 00 	mov    %r13,0x2f20(%rip)        # 103008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1000e8:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000eb:	48 83 e8 01          	sub    $0x1,%rax
  1000ef:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000f5:	48 89 05 04 2f 00 00 	mov    %rax,0x2f04(%rip)        # 103000 <stack_bottom>
    unsigned nalloc = 0;

    // Allocate heap pages until out of address space,
    // forking along the way.
    while (heap_top != stack_bottom) {
  1000fc:	4c 39 e8             	cmp    %r13,%rax
  1000ff:	0f 84 34 02 00 00    	je     100339 <process_main()+0x320>
    unsigned nalloc = 0;
  100105:	bb 00 00 00 00       	mov    $0x0,%ebx
            }
            sys_yield();
            continue;
        }

        x = rand(0, 7 + min(nalloc / 4, 10U));
  10010a:	41 bf 0a 00 00 00    	mov    $0xa,%r15d
  100110:	eb 34                	jmp    100146 <process_main()+0x12d>
                    assert(*addr == pagemark[pn]);
  100112:	b9 00 00 00 00       	mov    $0x0,%ecx
  100117:	ba fb 0f 10 00       	mov    $0x100ffb,%edx
  10011c:	be 34 00 00 00       	mov    $0x34,%esi
  100121:	bf ed 0f 10 00       	mov    $0x100fed,%edi
  100126:	e8 36 0e 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>
    register uintptr_t rax asm("rax") = syscallno;
  10012b:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100130:	0f 05                	syscall 
    while (heap_top != stack_bottom) {
  100132:	48 8b 05 c7 2e 00 00 	mov    0x2ec7(%rip),%rax        # 103000 <stack_bottom>
  100139:	48 39 05 c8 2e 00 00 	cmp    %rax,0x2ec8(%rip)        # 103008 <heap_top>
  100140:	0f 84 f3 01 00 00    	je     100339 <process_main()+0x320>
        int x = rand(0, 6 * ALLOC_SLOWDOWN);
  100146:	be 6c 00 00 00       	mov    $0x6c,%esi
  10014b:	bf 00 00 00 00       	mov    $0x0,%edi
  100150:	e8 30 03 00 00       	callq  100485 <rand(int, int)>
        if (x >= 8 * speed) {
  100155:	42 8d 14 e5 00 00 00 	lea    0x0(,%r12,8),%edx
  10015c:	00 
  10015d:	39 c2                	cmp    %eax,%edx
  10015f:	0f 8f 88 00 00 00    	jg     1001ed <process_main()+0x1d4>
            if (x % 4 < 2 && heap_top != heap_bottom) {
  100165:	99                   	cltd   
  100166:	c1 ea 1e             	shr    $0x1e,%edx
  100169:	01 d0                	add    %edx,%eax
  10016b:	83 e0 03             	and    $0x3,%eax
  10016e:	29 d0                	sub    %edx,%eax
  100170:	83 f8 01             	cmp    $0x1,%eax
  100173:	7f b6                	jg     10012b <process_main()+0x112>
  100175:	48 8b 05 8c 2e 00 00 	mov    0x2e8c(%rip),%rax        # 103008 <heap_top>
  10017c:	4c 39 e8             	cmp    %r13,%rax
  10017f:	74 aa                	je     10012b <process_main()+0x112>
                unsigned pn = rand(0, (heap_top - heap_bottom - 1) / PAGESIZE);
  100181:	4c 29 e8             	sub    %r13,%rax
  100184:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
  100188:	48 c1 ee 0c          	shr    $0xc,%rsi
  10018c:	bf 00 00 00 00       	mov    $0x0,%edi
  100191:	e8 ef 02 00 00       	callq  100485 <rand(int, int)>
                if (pn < sizeof(pagemark)) {
  100196:	3d ff 0f 00 00       	cmp    $0xfff,%eax
  10019b:	77 8e                	ja     10012b <process_main()+0x112>
                    volatile uint8_t* addr = heap_bottom + pn * PAGESIZE;
  10019d:	89 c1                	mov    %eax,%ecx
  10019f:	48 89 ca             	mov    %rcx,%rdx
  1001a2:	48 c1 e2 0c          	shl    $0xc,%rdx
  1001a6:	4c 01 ea             	add    %r13,%rdx
                    assert(*addr == pagemark[pn]);
  1001a9:	0f b6 32             	movzbl (%rdx),%esi
  1001ac:	40 3a b1 00 20 10 00 	cmp    0x102000(%rcx),%sil
  1001b3:	0f 85 59 ff ff ff    	jne    100112 <process_main()+0xf9>
                    *addr = pagemark[pn] = self;
  1001b9:	89 c0                	mov    %eax,%eax
  1001bb:	44 88 b0 00 20 10 00 	mov    %r14b,0x102000(%rax)
  1001c2:	44 88 32             	mov    %r14b,(%rdx)
                    assert(*addr == self);
  1001c5:	0f b6 02             	movzbl (%rdx),%eax
  1001c8:	0f b6 c0             	movzbl %al,%eax
  1001cb:	44 39 f0             	cmp    %r14d,%eax
  1001ce:	0f 84 57 ff ff ff    	je     10012b <process_main()+0x112>
  1001d4:	b9 00 00 00 00       	mov    $0x0,%ecx
  1001d9:	ba 11 10 10 00       	mov    $0x101011,%edx
  1001de:	be 36 00 00 00       	mov    $0x36,%esi
  1001e3:	bf ed 0f 10 00       	mov    $0x100fed,%edi
  1001e8:	e8 74 0d 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>
        x = rand(0, 7 + min(nalloc / 4, 10U));
  1001ed:	89 de                	mov    %ebx,%esi
  1001ef:	c1 ee 02             	shr    $0x2,%esi
  1001f2:	83 fb 2b             	cmp    $0x2b,%ebx
  1001f5:	41 0f 47 f7          	cmova  %r15d,%esi
  1001f9:	83 c6 07             	add    $0x7,%esi
  1001fc:	bf 00 00 00 00       	mov    $0x0,%edi
  100201:	e8 7f 02 00 00       	callq  100485 <rand(int, int)>
        if (x < 2) {
  100206:	83 f8 01             	cmp    $0x1,%eax
  100209:	7e 28                	jle    100233 <process_main()+0x21a>
                pid_t new_self = sys_getpid();
                assert(new_self != self);
                self = new_self;
                speed = rand(1, 16);
            }
        } else if (x < 3) {
  10020b:	83 f8 02             	cmp    $0x2,%eax
  10020e:	7e 76                	jle    100286 <process_main()+0x26d>
    register uintptr_t rax asm("rax") = syscallno;
  100210:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100215:	48 8b 3d ec 2d 00 00 	mov    0x2dec(%rip),%rdi        # 103008 <heap_top>
  10021c:	0f 05                	syscall 
            sys_exit();
        } else if (sys_page_alloc(heap_top) >= 0) {
  10021e:	85 c0                	test   %eax,%eax
  100220:	79 69                	jns    10028b <process_main()+0x272>
            nalloc = (heap_top - heap_bottom) / PAGESIZE;
            // clear "Out of physical memory" msg
            if (console[CPOS(24, 0)]) {
                console_printf(CPOS(24, 0), 0, "\n");
            }
        } else if (nalloc < 4) {
  100222:	83 fb 03             	cmp    $0x3,%ebx
  100225:	0f 86 09 01 00 00    	jbe    100334 <process_main()+0x31b>
            sys_exit();
        } else {
            nalloc -= 4;
  10022b:	83 eb 04             	sub    $0x4,%ebx
  10022e:	e9 ff fe ff ff       	jmpq   100132 <process_main()+0x119>
    register uintptr_t rax asm("rax") = syscallno;
  100233:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  100238:	0f 05                	syscall 
            if (sys_fork() == 0) {
  10023a:	85 c0                	test   %eax,%eax
  10023c:	0f 85 f0 fe ff ff    	jne    100132 <process_main()+0x119>
    register uintptr_t rax asm("rax") = syscallno;
  100242:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  100247:	0f 05                	syscall 
    return rax;
  100249:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
                assert(new_self != self);
  10024d:	44 39 f0             	cmp    %r14d,%eax
  100250:	74 1b                	je     10026d <process_main()+0x254>
                speed = rand(1, 16);
  100252:	be 10 00 00 00       	mov    $0x10,%esi
  100257:	bf 01 00 00 00       	mov    $0x1,%edi
  10025c:	e8 24 02 00 00       	callq  100485 <rand(int, int)>
  100261:	41 89 c4             	mov    %eax,%r12d
                self = new_self;
  100264:	44 8b 75 c8          	mov    -0x38(%rbp),%r14d
  100268:	e9 c5 fe ff ff       	jmpq   100132 <process_main()+0x119>
                assert(new_self != self);
  10026d:	b9 00 00 00 00       	mov    $0x0,%ecx
  100272:	ba 1f 10 10 00       	mov    $0x10101f,%edx
  100277:	be 41 00 00 00       	mov    $0x41,%esi
  10027c:	bf ed 0f 10 00       	mov    $0x100fed,%edi
  100281:	e8 db 0c 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>
            sys_exit();
  100286:	e8 75 fd ff ff       	callq  100000 <sys_exit()>
            for (unsigned long* l = (unsigned long*) heap_top;
  10028b:	48 8b 0d 76 2d 00 00 	mov    0x2d76(%rip),%rcx        # 103008 <heap_top>
                 l != (unsigned long*) (heap_top + PAGESIZE);
  100292:	48 8d 91 00 10 00 00 	lea    0x1000(%rcx),%rdx
            for (unsigned long* l = (unsigned long*) heap_top;
  100299:	48 89 c8             	mov    %rcx,%rax
                assert(*l == 0);
  10029c:	48 83 38 00          	cmpq   $0x0,(%rax)
  1002a0:	75 79                	jne    10031b <process_main()+0x302>
            for (unsigned long* l = (unsigned long*) heap_top;
  1002a2:	48 83 c0 08          	add    $0x8,%rax
                 l != (unsigned long*) (heap_top + PAGESIZE);
  1002a6:	48 39 d0             	cmp    %rdx,%rax
  1002a9:	75 f1                	jne    10029c <process_main()+0x283>
            *heap_top = speed;
  1002ab:	44 88 21             	mov    %r12b,(%rcx)
            console[CPOS(24, 79)] = speed;
  1002ae:	66 44 89 25 e8 8c fb 	mov    %r12w,-0x47318(%rip)        # b8f9e <console+0xf9e>
  1002b5:	ff 
            unsigned pn = (heap_top - heap_bottom) / PAGESIZE;
  1002b6:	48 8b 05 4b 2d 00 00 	mov    0x2d4b(%rip),%rax        # 103008 <heap_top>
  1002bd:	48 89 c2             	mov    %rax,%rdx
  1002c0:	4c 29 ea             	sub    %r13,%rdx
  1002c3:	48 c1 ea 0c          	shr    $0xc,%rdx
            if (pn < sizeof(pagemark)) {
  1002c7:	81 fa ff 0f 00 00    	cmp    $0xfff,%edx
  1002cd:	77 09                	ja     1002d8 <process_main()+0x2bf>
                pagemark[pn] = speed;
  1002cf:	89 d2                	mov    %edx,%edx
  1002d1:	44 88 a2 00 20 10 00 	mov    %r12b,0x102000(%rdx)
            heap_top += PAGESIZE;
  1002d8:	48 05 00 10 00 00    	add    $0x1000,%rax
  1002de:	48 89 05 23 2d 00 00 	mov    %rax,0x2d23(%rip)        # 103008 <heap_top>
            nalloc = (heap_top - heap_bottom) / PAGESIZE;
  1002e5:	4c 29 e8             	sub    %r13,%rax
  1002e8:	48 89 c3             	mov    %rax,%rbx
  1002eb:	48 c1 eb 0c          	shr    $0xc,%rbx
            if (console[CPOS(24, 0)]) {
  1002ef:	66 83 3d 09 8c fb ff 	cmpw   $0x0,-0x473f7(%rip)        # b8f00 <console+0xf00>
  1002f6:	00 
  1002f7:	0f 84 35 fe ff ff    	je     100132 <process_main()+0x119>
                console_printf(CPOS(24, 0), 0, "\n");
  1002fd:	ba f4 17 10 00       	mov    $0x1017f4,%edx
  100302:	be 00 00 00 00       	mov    $0x0,%esi
  100307:	bf 80 07 00 00       	mov    $0x780,%edi
  10030c:	b8 00 00 00 00       	mov    $0x0,%eax
  100311:	e8 b3 0b 00 00       	callq  100ec9 <console_printf(int, int, char const*, ...)>
  100316:	e9 17 fe ff ff       	jmpq   100132 <process_main()+0x119>
                assert(*l == 0);
  10031b:	b9 00 00 00 00       	mov    $0x0,%ecx
  100320:	ba 30 10 10 00       	mov    $0x101030,%edx
  100325:	be 4c 00 00 00       	mov    $0x4c,%esi
  10032a:	bf ed 0f 10 00       	mov    $0x100fed,%edi
  10032f:	e8 2d 0c 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>
            sys_exit();
  100334:	e8 c7 fc ff ff       	callq  100000 <sys_exit()>
        }
    }

    // After running out of memory
    while (true) {
        if (rand(0, 2 * ALLOC_SLOWDOWN - 1) == 0) {
  100339:	be 23 00 00 00       	mov    $0x23,%esi
  10033e:	bf 00 00 00 00       	mov    $0x0,%edi
  100343:	e8 3d 01 00 00       	callq  100485 <rand(int, int)>
  100348:	85 c0                	test   %eax,%eax
  10034a:	74 09                	je     100355 <process_main()+0x33c>
    register uintptr_t rax asm("rax") = syscallno;
  10034c:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100351:	0f 05                	syscall 
}
  100353:	eb e4                	jmp    100339 <process_main()+0x320>
            sys_exit();
  100355:	e8 a6 fc ff ff       	callq  100000 <sys_exit()>

000000000010035a <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  10035a:	f3 0f 1e fa          	endbr64 
  10035e:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  100361:	48 39 fe             	cmp    %rdi,%rsi
  100364:	73 09                	jae    10036f <memmove+0x15>
  100366:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  10036a:	48 39 cf             	cmp    %rcx,%rdi
  10036d:	72 1d                	jb     10038c <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  10036f:	b9 00 00 00 00       	mov    $0x0,%ecx
  100374:	48 85 d2             	test   %rdx,%rdx
  100377:	74 12                	je     10038b <memmove+0x31>
            *d++ = *s++;
  100379:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  10037d:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  100381:	48 83 c1 01          	add    $0x1,%rcx
  100385:	48 39 d1             	cmp    %rdx,%rcx
  100388:	75 ef                	jne    100379 <memmove+0x1f>
        }
    }
    return dst;
}
  10038a:	c3                   	retq   
  10038b:	c3                   	retq   
        while (n-- > 0) {
  10038c:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  100390:	48 85 d2             	test   %rdx,%rdx
  100393:	74 f5                	je     10038a <memmove+0x30>
            *--d = *--s;
  100395:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100399:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  10039c:	48 83 e9 01          	sub    $0x1,%rcx
  1003a0:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1003a4:	75 ef                	jne    100395 <memmove+0x3b>
  1003a6:	c3                   	retq   

00000000001003a7 <memset>:

void* memset(void* v, int c, size_t n) {
  1003a7:	f3 0f 1e fa          	endbr64 
  1003ab:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1003ae:	48 85 d2             	test   %rdx,%rdx
  1003b1:	74 13                	je     1003c6 <memset+0x1f>
  1003b3:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  1003b7:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  1003ba:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1003bd:	48 83 c2 01          	add    $0x1,%rdx
  1003c1:	48 39 d1             	cmp    %rdx,%rcx
  1003c4:	75 f4                	jne    1003ba <memset+0x13>
    }
    return v;
}
  1003c6:	c3                   	retq   

00000000001003c7 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  1003c7:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  1003cb:	80 3f 00             	cmpb   $0x0,(%rdi)
  1003ce:	74 10                	je     1003e0 <strlen+0x19>
  1003d0:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  1003d5:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  1003d9:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1003dd:	75 f6                	jne    1003d5 <strlen+0xe>
  1003df:	c3                   	retq   
  1003e0:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  1003e5:	c3                   	retq   

00000000001003e6 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  1003e6:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1003ea:	48 85 f6             	test   %rsi,%rsi
  1003ed:	74 15                	je     100404 <strnlen+0x1e>
  1003ef:	b8 00 00 00 00       	mov    $0x0,%eax
  1003f4:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1003f8:	74 0d                	je     100407 <strnlen+0x21>
        ++n;
  1003fa:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1003fe:	48 39 c6             	cmp    %rax,%rsi
  100401:	75 f1                	jne    1003f4 <strnlen+0xe>
  100403:	c3                   	retq   
  100404:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  100407:	c3                   	retq   

0000000000100408 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  100408:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  10040c:	0f b6 07             	movzbl (%rdi),%eax
  10040f:	84 c0                	test   %al,%al
  100411:	74 10                	je     100423 <strchr+0x1b>
  100413:	40 38 f0             	cmp    %sil,%al
  100416:	74 18                	je     100430 <strchr+0x28>
        ++s;
  100418:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  10041c:	0f b6 07             	movzbl (%rdi),%eax
  10041f:	84 c0                	test   %al,%al
  100421:	75 f0                	jne    100413 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  100423:	40 84 f6             	test   %sil,%sil
  100426:	b8 00 00 00 00       	mov    $0x0,%eax
  10042b:	48 0f 44 c7          	cmove  %rdi,%rax
  10042f:	c3                   	retq   
  100430:	48 89 f8             	mov    %rdi,%rax
    }
}
  100433:	c3                   	retq   

0000000000100434 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  100434:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  100438:	83 3d d9 2b 00 00 00 	cmpl   $0x0,0x2bd9(%rip)        # 103018 <rand_seed_set>
  10043f:	74 27                	je     100468 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  100441:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  100448:	f4 51 58 
  10044b:	48 0f af 05 bd 2b 00 	imul   0x2bbd(%rip),%rax        # 103010 <rand_seed>
  100452:	00 
  100453:	48 83 c0 01          	add    $0x1,%rax
  100457:	48 89 05 b2 2b 00 00 	mov    %rax,0x2bb2(%rip)        # 103010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  10045e:	48 c1 e8 20          	shr    $0x20,%rax
  100462:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100467:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100468:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  10046f:	87 d4 30 
  100472:	48 89 05 97 2b 00 00 	mov    %rax,0x2b97(%rip)        # 103010 <rand_seed>
    rand_seed_set = 1;
  100479:	c7 05 95 2b 00 00 01 	movl   $0x1,0x2b95(%rip)        # 103018 <rand_seed_set>
  100480:	00 00 00 
}
  100483:	eb bc                	jmp    100441 <rand()+0xd>

0000000000100485 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100485:	f3 0f 1e fa          	endbr64 
  100489:	55                   	push   %rbp
  10048a:	48 89 e5             	mov    %rsp,%rbp
  10048d:	41 54                	push   %r12
  10048f:	53                   	push   %rbx
    assert(min <= max);
  100490:	39 f7                	cmp    %esi,%edi
  100492:	7f 27                	jg     1004bb <rand(int, int)+0x36>
  100494:	41 89 fc             	mov    %edi,%r12d
  100497:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100499:	e8 96 ff ff ff       	callq  100434 <rand()>
  10049e:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1004a0:	44 29 e3             	sub    %r12d,%ebx
  1004a3:	8d 43 01             	lea    0x1(%rbx),%eax
  1004a6:	48 98                	cltq   
    unsigned long r = rand();
  1004a8:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1004ab:	48 0f af c3          	imul   %rbx,%rax
  1004af:	48 c1 e8 1f          	shr    $0x1f,%rax
  1004b3:	44 01 e0             	add    %r12d,%eax
}
  1004b6:	5b                   	pop    %rbx
  1004b7:	41 5c                	pop    %r12
  1004b9:	5d                   	pop    %rbp
  1004ba:	c3                   	retq   
    assert(min <= max);
  1004bb:	b9 00 00 00 00       	mov    $0x0,%ecx
  1004c0:	ba 38 10 10 00       	mov    $0x101038,%edx
  1004c5:	be ff 00 00 00       	mov    $0xff,%esi
  1004ca:	bf 43 10 10 00       	mov    $0x101043,%edi
  1004cf:	e8 8d 0a 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>

00000000001004d4 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  1004d4:	f3 0f 1e fa          	endbr64 
  1004d8:	55                   	push   %rbp
  1004d9:	48 89 e5             	mov    %rsp,%rbp
  1004dc:	41 57                	push   %r15
  1004de:	41 56                	push   %r14
  1004e0:	41 55                	push   %r13
  1004e2:	41 54                	push   %r12
  1004e4:	53                   	push   %rbx
  1004e5:	48 83 ec 58          	sub    $0x58,%rsp
  1004e9:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  1004ed:	0f b6 02             	movzbl (%rdx),%eax
  1004f0:	84 c0                	test   %al,%al
  1004f2:	0f 84 c6 07 00 00    	je     100cbe <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  1004f8:	49 89 fe             	mov    %rdi,%r14
  1004fb:	41 89 f7             	mov    %esi,%r15d
  1004fe:	48 89 d3             	mov    %rdx,%rbx
  100501:	e9 b9 03 00 00       	jmpq   1008bf <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  100506:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  10050a:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  10050e:	84 db                	test   %bl,%bl
  100510:	0f 84 8a 07 00 00    	je     100ca0 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  100516:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  10051c:	0f be f3             	movsbl %bl,%esi
  10051f:	bf 20 17 10 00       	mov    $0x101720,%edi
  100524:	e8 df fe ff ff       	callq  100408 <strchr>
  100529:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  10052c:	48 85 c0             	test   %rax,%rax
  10052f:	74 74                	je     1005a5 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  100531:	48 81 e9 20 17 10 00 	sub    $0x101720,%rcx
  100538:	b8 01 00 00 00       	mov    $0x1,%eax
  10053d:	d3 e0                	shl    %cl,%eax
  10053f:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  100542:	49 83 c4 01          	add    $0x1,%r12
  100546:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  10054b:	84 db                	test   %bl,%bl
  10054d:	75 cd                	jne    10051c <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  10054f:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  100556:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  10055d:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  100562:	0f 84 cc 00 00 00    	je     100634 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  100568:	41 0f b6 04 24       	movzbl (%r12),%eax
  10056d:	3c 6c                	cmp    $0x6c,%al
  10056f:	0f 84 54 01 00 00    	je     1006c9 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  100575:	0f 8f 42 01 00 00    	jg     1006bd <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  10057b:	3c 68                	cmp    $0x68,%al
  10057d:	0f 85 68 01 00 00    	jne    1006eb <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  100583:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  100588:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10058e:	8d 50 bd             	lea    -0x43(%rax),%edx
  100591:	80 fa 35             	cmp    $0x35,%dl
  100594:	0f 87 aa 05 00 00    	ja     100b44 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  10059a:	0f b6 d2             	movzbl %dl,%edx
  10059d:	3e ff 24 d5 60 10 10 	notrack jmpq *0x101060(,%rdx,8)
  1005a4:	00 
        if (*format >= '1' && *format <= '9') {
  1005a5:	8d 43 cf             	lea    -0x31(%rbx),%eax
  1005a8:	3c 08                	cmp    $0x8,%al
  1005aa:	77 35                	ja     1005e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1005ac:	41 0f b6 04 24       	movzbl (%r12),%eax
  1005b1:	8d 50 d0             	lea    -0x30(%rax),%edx
  1005b4:	80 fa 09             	cmp    $0x9,%dl
  1005b7:	77 63                	ja     10061c <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  1005b9:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  1005be:	49 83 c4 01          	add    $0x1,%r12
  1005c2:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1005c5:	0f be c0             	movsbl %al,%eax
  1005c8:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1005cc:	41 0f b6 04 24       	movzbl (%r12),%eax
  1005d1:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1005d4:	80 f9 09             	cmp    $0x9,%cl
  1005d7:	76 e5                	jbe    1005be <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  1005d9:	89 55 98             	mov    %edx,-0x68(%rbp)
  1005dc:	e9 75 ff ff ff       	jmpq   100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  1005e1:	80 fb 2a             	cmp    $0x2a,%bl
  1005e4:	75 42                	jne    100628 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  1005e6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1005ea:	8b 07                	mov    (%rdi),%eax
  1005ec:	83 f8 2f             	cmp    $0x2f,%eax
  1005ef:	77 19                	ja     10060a <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  1005f1:	89 c2                	mov    %eax,%edx
  1005f3:	48 03 57 10          	add    0x10(%rdi),%rdx
  1005f7:	83 c0 08             	add    $0x8,%eax
  1005fa:	89 07                	mov    %eax,(%rdi)
  1005fc:	8b 02                	mov    (%rdx),%eax
  1005fe:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  100601:	49 83 c4 01          	add    $0x1,%r12
  100605:	e9 4c ff ff ff       	jmpq   100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  10060a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10060e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100612:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100616:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10061a:	eb e0                	jmp    1005fc <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10061c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  100623:	e9 2e ff ff ff       	jmpq   100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  100628:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  10062f:	e9 22 ff ff ff       	jmpq   100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  100634:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  100639:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10063f:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100642:	80 f9 09             	cmp    $0x9,%cl
  100645:	76 13                	jbe    10065a <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  100647:	3c 2a                	cmp    $0x2a,%al
  100649:	74 32                	je     10067d <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  10064b:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  10064e:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  100655:	e9 0e ff ff ff       	jmpq   100568 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  10065a:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  10065f:	48 83 c2 01          	add    $0x1,%rdx
  100663:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  100666:	0f be c0             	movsbl %al,%eax
  100669:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  10066d:	0f b6 02             	movzbl (%rdx),%eax
  100670:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100673:	80 f9 09             	cmp    $0x9,%cl
  100676:	76 e7                	jbe    10065f <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  100678:	49 89 d4             	mov    %rdx,%r12
  10067b:	eb 1c                	jmp    100699 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  10067d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100681:	8b 01                	mov    (%rcx),%eax
  100683:	83 f8 2f             	cmp    $0x2f,%eax
  100686:	77 23                	ja     1006ab <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  100688:	89 c2                	mov    %eax,%edx
  10068a:	48 03 51 10          	add    0x10(%rcx),%rdx
  10068e:	83 c0 08             	add    $0x8,%eax
  100691:	89 01                	mov    %eax,(%rcx)
  100693:	8b 32                	mov    (%rdx),%esi
                ++format;
  100695:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  100699:	85 f6                	test   %esi,%esi
  10069b:	b8 00 00 00 00       	mov    $0x0,%eax
  1006a0:	0f 49 c6             	cmovns %esi,%eax
  1006a3:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1006a6:	e9 bd fe ff ff       	jmpq   100568 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  1006ab:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006af:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1006b3:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006b7:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1006bb:	eb d6                	jmp    100693 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  1006bd:	3c 74                	cmp    $0x74,%al
  1006bf:	74 08                	je     1006c9 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1006c1:	3c 7a                	cmp    $0x7a,%al
  1006c3:	0f 85 e2 05 00 00    	jne    100cab <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  1006c9:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  1006ce:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1006d4:	8d 50 bd             	lea    -0x43(%rax),%edx
  1006d7:	80 fa 35             	cmp    $0x35,%dl
  1006da:	0f 87 64 04 00 00    	ja     100b44 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1006e0:	0f b6 d2             	movzbl %dl,%edx
  1006e3:	3e ff 24 d5 10 12 10 	notrack jmpq *0x101210(,%rdx,8)
  1006ea:	00 
  1006eb:	8d 50 bd             	lea    -0x43(%rax),%edx
  1006ee:	80 fa 35             	cmp    $0x35,%dl
  1006f1:	0f 87 4a 04 00 00    	ja     100b41 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  1006f7:	0f b6 d2             	movzbl %dl,%edx
  1006fa:	3e ff 24 d5 c0 13 10 	notrack jmpq *0x1013c0(,%rdx,8)
  100701:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100702:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100706:	8b 07                	mov    (%rdi),%eax
  100708:	83 f8 2f             	cmp    $0x2f,%eax
  10070b:	0f 87 c9 01 00 00    	ja     1008da <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  100711:	89 c2                	mov    %eax,%edx
  100713:	48 03 57 10          	add    0x10(%rdi),%rdx
  100717:	83 c0 08             	add    $0x8,%eax
  10071a:	89 07                	mov    %eax,(%rdi)
  10071c:	48 8b 12             	mov    (%rdx),%rdx
  10071f:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  100722:	48 89 d0             	mov    %rdx,%rax
  100725:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  100729:	49 89 d0             	mov    %rdx,%r8
  10072c:	49 f7 d8             	neg    %r8
  10072f:	25 80 00 00 00       	and    $0x80,%eax
  100734:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  100738:	41 09 c5             	or     %eax,%r13d
  10073b:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  10073f:	bb f5 17 10 00       	mov    $0x1017f5,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  100744:	44 89 e8             	mov    %r13d,%eax
  100747:	83 e0 20             	and    $0x20,%eax
  10074a:	89 45 9c             	mov    %eax,-0x64(%rbp)
  10074d:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  100753:	0f 85 0e 04 00 00    	jne    100b67 <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  100759:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  10075d:	44 89 e8             	mov    %r13d,%eax
  100760:	83 e0 60             	and    $0x60,%eax
  100763:	83 f8 60             	cmp    $0x60,%eax
  100766:	0f 84 3e 04 00 00    	je     100baa <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  10076c:	44 89 e8             	mov    %r13d,%eax
  10076f:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  100772:	48 c7 45 a8 f5 17 10 	movq   $0x1017f5,-0x58(%rbp)
  100779:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  10077a:	83 f8 21             	cmp    $0x21,%eax
  10077d:	0f 84 66 04 00 00    	je     100be9 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  100783:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100786:	89 c8                	mov    %ecx,%eax
  100788:	f7 d0                	not    %eax
  10078a:	c1 e8 1f             	shr    $0x1f,%eax
  10078d:	89 45 88             	mov    %eax,-0x78(%rbp)
  100790:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100794:	0f 85 8b 04 00 00    	jne    100c25 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  10079a:	84 c0                	test   %al,%al
  10079c:	0f 84 83 04 00 00    	je     100c25 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  1007a2:	48 63 f1             	movslq %ecx,%rsi
  1007a5:	48 89 df             	mov    %rbx,%rdi
  1007a8:	e8 39 fc ff ff       	callq  1003e6 <strnlen>
  1007ad:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  1007b0:	8b 45 8c             	mov    -0x74(%rbp),%eax
  1007b3:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  1007b6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1007bd:	83 f8 22             	cmp    $0x22,%eax
  1007c0:	0f 84 97 04 00 00    	je     100c5d <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  1007c6:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1007ca:	e8 f8 fb ff ff       	callq  1003c7 <strlen>
  1007cf:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  1007d2:	03 55 a0             	add    -0x60(%rbp),%edx
  1007d5:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1007d8:	29 d7                	sub    %edx,%edi
  1007da:	89 fa                	mov    %edi,%edx
  1007dc:	29 c2                	sub    %eax,%edx
  1007de:	89 55 98             	mov    %edx,-0x68(%rbp)
  1007e1:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1007e4:	41 f6 c5 04          	test   $0x4,%r13b
  1007e8:	75 32                	jne    10081c <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  1007ea:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1007ed:	85 d2                	test   %edx,%edx
  1007ef:	7e 2b                	jle    10081c <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  1007f1:	49 8b 06             	mov    (%r14),%rax
  1007f4:	44 89 fa             	mov    %r15d,%edx
  1007f7:	be 20 00 00 00       	mov    $0x20,%esi
  1007fc:	4c 89 f7             	mov    %r14,%rdi
  1007ff:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100801:	41 83 ed 01          	sub    $0x1,%r13d
  100805:	45 85 ed             	test   %r13d,%r13d
  100808:	7f e7                	jg     1007f1 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  10080a:	8b 7d 98             	mov    -0x68(%rbp),%edi
  10080d:	85 ff                	test   %edi,%edi
  10080f:	b8 01 00 00 00       	mov    $0x1,%eax
  100814:	0f 4f c7             	cmovg  %edi,%eax
  100817:	29 c7                	sub    %eax,%edi
  100819:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  10081c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  100820:	0f b6 00             	movzbl (%rax),%eax
  100823:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  100827:	84 c0                	test   %al,%al
  100829:	74 1b                	je     100846 <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  10082b:	0f b6 f0             	movzbl %al,%esi
  10082e:	49 8b 06             	mov    (%r14),%rax
  100831:	44 89 fa             	mov    %r15d,%edx
  100834:	4c 89 f7             	mov    %r14,%rdi
  100837:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  100839:	49 83 c5 01          	add    $0x1,%r13
  10083d:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  100842:	84 c0                	test   %al,%al
  100844:	75 e5                	jne    10082b <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  100846:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  10084a:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  10084e:	7e 16                	jle    100866 <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  100850:	49 8b 06             	mov    (%r14),%rax
  100853:	44 89 fa             	mov    %r15d,%edx
  100856:	be 30 00 00 00       	mov    $0x30,%esi
  10085b:	4c 89 f7             	mov    %r14,%rdi
  10085e:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  100860:	41 83 ed 01          	sub    $0x1,%r13d
  100864:	75 ea                	jne    100850 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  100866:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  10086a:	7e 22                	jle    10088e <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  10086c:	8b 45 a0             	mov    -0x60(%rbp),%eax
  10086f:	8d 40 ff             	lea    -0x1(%rax),%eax
  100872:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  100877:	0f b6 33             	movzbl (%rbx),%esi
  10087a:	49 8b 06             	mov    (%r14),%rax
  10087d:	44 89 fa             	mov    %r15d,%edx
  100880:	4c 89 f7             	mov    %r14,%rdi
  100883:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  100885:	48 83 c3 01          	add    $0x1,%rbx
  100889:	4c 39 eb             	cmp    %r13,%rbx
  10088c:	75 e9                	jne    100877 <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  10088e:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  100891:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100895:	7e 15                	jle    1008ac <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  100897:	49 8b 06             	mov    (%r14),%rax
  10089a:	44 89 fa             	mov    %r15d,%edx
  10089d:	be 20 00 00 00       	mov    $0x20,%esi
  1008a2:	4c 89 f7             	mov    %r14,%rdi
  1008a5:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  1008a7:	83 eb 01             	sub    $0x1,%ebx
  1008aa:	75 eb                	jne    100897 <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  1008ac:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  1008b1:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1008b7:	84 c0                	test   %al,%al
  1008b9:	0f 84 ff 03 00 00    	je     100cbe <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  1008bf:	3c 25                	cmp    $0x25,%al
  1008c1:	0f 84 3f fc ff ff    	je     100506 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  1008c7:	0f b6 f0             	movzbl %al,%esi
  1008ca:	49 8b 06             	mov    (%r14),%rax
  1008cd:	44 89 fa             	mov    %r15d,%edx
  1008d0:	4c 89 f7             	mov    %r14,%rdi
  1008d3:	ff 10                	callq  *(%rax)
            continue;
  1008d5:	49 89 dc             	mov    %rbx,%r12
  1008d8:	eb d2                	jmp    1008ac <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1008da:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008de:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1008e2:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008e6:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1008ea:	e9 2d fe ff ff       	jmpq   10071c <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  1008ef:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1008f2:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008f6:	8b 01                	mov    (%rcx),%eax
  1008f8:	83 f8 2f             	cmp    $0x2f,%eax
  1008fb:	77 13                	ja     100910 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  1008fd:	89 c2                	mov    %eax,%edx
  1008ff:	48 03 51 10          	add    0x10(%rcx),%rdx
  100903:	83 c0 08             	add    $0x8,%eax
  100906:	89 01                	mov    %eax,(%rcx)
  100908:	48 63 12             	movslq (%rdx),%rdx
  10090b:	e9 12 fe ff ff       	jmpq   100722 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  100910:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100914:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100918:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10091c:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100920:	eb e6                	jmp    100908 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  100922:	49 89 cc             	mov    %rcx,%r12
  100925:	b8 01 00 00 00       	mov    $0x1,%eax
  10092a:	be 0a 00 00 00       	mov    $0xa,%esi
  10092f:	e9 a8 00 00 00       	jmpq   1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  100934:	49 89 cc             	mov    %rcx,%r12
  100937:	b8 00 00 00 00       	mov    $0x0,%eax
  10093c:	be 0a 00 00 00       	mov    $0xa,%esi
  100941:	e9 96 00 00 00       	jmpq   1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  100946:	b8 00 00 00 00       	mov    $0x0,%eax
  10094b:	be 0a 00 00 00       	mov    $0xa,%esi
  100950:	e9 87 00 00 00       	jmpq   1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  100955:	b8 00 00 00 00       	mov    $0x0,%eax
  10095a:	be 0a 00 00 00       	mov    $0xa,%esi
  10095f:	eb 7b                	jmp    1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100961:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100965:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100969:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10096d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100971:	e9 84 00 00 00       	jmpq   1009fa <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  100976:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10097a:	8b 01                	mov    (%rcx),%eax
  10097c:	83 f8 2f             	cmp    $0x2f,%eax
  10097f:	77 10                	ja     100991 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  100981:	89 c2                	mov    %eax,%edx
  100983:	48 03 51 10          	add    0x10(%rcx),%rdx
  100987:	83 c0 08             	add    $0x8,%eax
  10098a:	89 01                	mov    %eax,(%rcx)
  10098c:	44 8b 02             	mov    (%rdx),%r8d
  10098f:	eb 6c                	jmp    1009fd <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  100991:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100995:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100999:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10099d:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1009a1:	eb e9                	jmp    10098c <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  1009a3:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  1009a6:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  1009ad:	bf 50 17 10 00       	mov    $0x101750,%edi
  1009b2:	e9 c0 01 00 00       	jmpq   100b77 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1009b7:	49 89 cc             	mov    %rcx,%r12
  1009ba:	b8 01 00 00 00       	mov    $0x1,%eax
  1009bf:	eb 16                	jmp    1009d7 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1009c1:	49 89 cc             	mov    %rcx,%r12
  1009c4:	b8 00 00 00 00       	mov    $0x0,%eax
  1009c9:	eb 0c                	jmp    1009d7 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  1009cb:	b8 00 00 00 00       	mov    $0x0,%eax
  1009d0:	eb 05                	jmp    1009d7 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1009d2:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  1009d7:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1009dc:	85 c0                	test   %eax,%eax
  1009de:	74 96                	je     100976 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  1009e0:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1009e4:	8b 01                	mov    (%rcx),%eax
  1009e6:	83 f8 2f             	cmp    $0x2f,%eax
  1009e9:	0f 87 72 ff ff ff    	ja     100961 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  1009ef:	89 c2                	mov    %eax,%edx
  1009f1:	48 03 51 10          	add    0x10(%rcx),%rdx
  1009f5:	83 c0 08             	add    $0x8,%eax
  1009f8:	89 01                	mov    %eax,(%rcx)
  1009fa:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  1009fd:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  100a01:	85 f6                	test   %esi,%esi
  100a03:	79 9e                	jns    1009a3 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  100a05:	41 89 f1             	mov    %esi,%r9d
  100a08:	f7 de                	neg    %esi
  100a0a:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  100a11:	bf 30 17 10 00       	mov    $0x101730,%edi
  100a16:	e9 5c 01 00 00       	jmpq   100b77 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  100a1b:	49 89 cc             	mov    %rcx,%r12
  100a1e:	b8 01 00 00 00       	mov    $0x1,%eax
  100a23:	eb 16                	jmp    100a3b <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  100a25:	49 89 cc             	mov    %rcx,%r12
  100a28:	b8 00 00 00 00       	mov    $0x0,%eax
  100a2d:	eb 0c                	jmp    100a3b <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  100a2f:	b8 00 00 00 00       	mov    $0x0,%eax
  100a34:	eb 05                	jmp    100a3b <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  100a36:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  100a3b:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  100a40:	eb 9a                	jmp    1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  100a42:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  100a45:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100a49:	8b 01                	mov    (%rcx),%eax
  100a4b:	83 f8 2f             	cmp    $0x2f,%eax
  100a4e:	77 21                	ja     100a71 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  100a50:	89 c2                	mov    %eax,%edx
  100a52:	48 03 51 10          	add    0x10(%rcx),%rdx
  100a56:	83 c0 08             	add    $0x8,%eax
  100a59:	89 01                	mov    %eax,(%rcx)
  100a5b:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  100a5e:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  100a65:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100a6a:	eb 99                	jmp    100a05 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  100a6c:	49 89 cc             	mov    %rcx,%r12
  100a6f:	eb d4                	jmp    100a45 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  100a71:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100a75:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100a79:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100a7d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100a81:	eb d8                	jmp    100a5b <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  100a83:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  100a86:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100a8a:	8b 07                	mov    (%rdi),%eax
  100a8c:	83 f8 2f             	cmp    $0x2f,%eax
  100a8f:	77 1e                	ja     100aaf <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  100a91:	89 c2                	mov    %eax,%edx
  100a93:	48 03 57 10          	add    0x10(%rdi),%rdx
  100a97:	83 c0 08             	add    $0x8,%eax
  100a9a:	89 07                	mov    %eax,(%rdi)
  100a9c:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  100a9f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  100aa5:	e9 9a fc ff ff       	jmpq   100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  100aaa:	49 89 cc             	mov    %rcx,%r12
  100aad:	eb d7                	jmp    100a86 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  100aaf:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100ab3:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100ab7:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100abb:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100abf:	eb db                	jmp    100a9c <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  100ac1:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  100ac4:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100ac8:	8b 01                	mov    (%rcx),%eax
  100aca:	83 f8 2f             	cmp    $0x2f,%eax
  100acd:	77 18                	ja     100ae7 <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  100acf:	89 c2                	mov    %eax,%edx
  100ad1:	48 03 51 10          	add    0x10(%rcx),%rdx
  100ad5:	83 c0 08             	add    $0x8,%eax
  100ad8:	89 01                	mov    %eax,(%rcx)
  100ada:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  100add:	e9 ca fd ff ff       	jmpq   1008ac <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  100ae2:	49 89 cc             	mov    %rcx,%r12
  100ae5:	eb dd                	jmp    100ac4 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  100ae7:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100aeb:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100aef:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100af3:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100af7:	eb e1                	jmp    100ada <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  100af9:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  100afc:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100b00:	8b 07                	mov    (%rdi),%eax
  100b02:	83 f8 2f             	cmp    $0x2f,%eax
  100b05:	77 28                	ja     100b2f <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  100b07:	89 c2                	mov    %eax,%edx
  100b09:	48 03 57 10          	add    0x10(%rdi),%rdx
  100b0d:	83 c0 08             	add    $0x8,%eax
  100b10:	89 07                	mov    %eax,(%rdi)
  100b12:	8b 02                	mov    (%rdx),%eax
  100b14:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100b17:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100b1b:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100b1f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  100b25:	e9 1a fc ff ff       	jmpq   100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  100b2a:	49 89 cc             	mov    %rcx,%r12
  100b2d:	eb cd                	jmp    100afc <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  100b2f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100b33:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100b37:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100b3b:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100b3f:	eb d1                	jmp    100b12 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  100b41:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  100b44:	84 c0                	test   %al,%al
  100b46:	0f 85 3b 01 00 00    	jne    100c87 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  100b4c:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  100b50:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  100b54:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  100b58:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100b5c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100b62:	e9 dd fb ff ff       	jmpq   100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  100b67:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  100b6d:	bf 50 17 10 00       	mov    $0x101750,%edi
        if (flags & FLAG_NUMERIC) {
  100b72:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  100b77:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100b7b:	4c 89 c1             	mov    %r8,%rcx
  100b7e:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  100b82:	48 63 f6             	movslq %esi,%rsi
  100b85:	48 83 eb 01          	sub    $0x1,%rbx
  100b89:	48 89 c8             	mov    %rcx,%rax
  100b8c:	ba 00 00 00 00       	mov    $0x0,%edx
  100b91:	48 f7 f6             	div    %rsi
  100b94:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100b98:	88 13                	mov    %dl,(%rbx)
        val /= base;
  100b9a:	48 89 ca             	mov    %rcx,%rdx
  100b9d:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  100ba0:	48 39 d6             	cmp    %rdx,%rsi
  100ba3:	76 e0                	jbe    100b85 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  100ba5:	e9 af fb ff ff       	jmpq   100759 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  100baa:	48 c7 45 a8 4f 10 10 	movq   $0x10104f,-0x58(%rbp)
  100bb1:	00 
            if (flags & FLAG_NEGATIVE) {
  100bb2:	41 f6 c5 80          	test   $0x80,%r13b
  100bb6:	0f 85 c7 fb ff ff    	jne    100783 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  100bbc:	48 c7 45 a8 4d 10 10 	movq   $0x10104d,-0x58(%rbp)
  100bc3:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  100bc4:	41 f6 c5 10          	test   $0x10,%r13b
  100bc8:	0f 85 b5 fb ff ff    	jne    100783 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  100bce:	41 f6 c5 08          	test   $0x8,%r13b
  100bd2:	ba f5 17 10 00       	mov    $0x1017f5,%edx
  100bd7:	b8 e6 17 10 00       	mov    $0x1017e6,%eax
  100bdc:	48 0f 44 c2          	cmove  %rdx,%rax
  100be0:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100be4:	e9 9a fb ff ff       	jmpq   100783 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  100be9:	41 8d 41 10          	lea    0x10(%r9),%eax
  100bed:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100bf2:	0f 85 8b fb ff ff    	jne    100783 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  100bf8:	4d 85 c0             	test   %r8,%r8
  100bfb:	75 0d                	jne    100c0a <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  100bfd:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  100c04:	0f 84 79 fb ff ff    	je     100783 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  100c0a:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100c0e:	ba 4a 10 10 00       	mov    $0x10104a,%edx
  100c13:	b8 51 10 10 00       	mov    $0x101051,%eax
  100c18:	48 0f 44 c2          	cmove  %rdx,%rax
  100c1c:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100c20:	e9 5e fb ff ff       	jmpq   100783 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  100c25:	48 89 df             	mov    %rbx,%rdi
  100c28:	e8 9a f7 ff ff       	callq  1003c7 <strlen>
  100c2d:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  100c30:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100c34:	0f 84 76 fb ff ff    	je     1007b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  100c3a:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  100c3e:	0f 84 6c fb ff ff    	je     1007b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  100c44:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100c47:	89 ca                	mov    %ecx,%edx
  100c49:	29 c2                	sub    %eax,%edx
  100c4b:	39 c1                	cmp    %eax,%ecx
  100c4d:	b8 00 00 00 00       	mov    $0x0,%eax
  100c52:	0f 4f c2             	cmovg  %edx,%eax
  100c55:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100c58:	e9 69 fb ff ff       	jmpq   1007c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  100c5d:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100c61:	e8 61 f7 ff ff       	callq  1003c7 <strlen>
  100c66:	8b 75 a0             	mov    -0x60(%rbp),%esi
  100c69:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100c6c:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100c6f:	89 f9                	mov    %edi,%ecx
  100c71:	29 f1                	sub    %esi,%ecx
  100c73:	29 c1                	sub    %eax,%ecx
  100c75:	39 fa                	cmp    %edi,%edx
  100c77:	b8 00 00 00 00       	mov    $0x0,%eax
  100c7c:	0f 4c c1             	cmovl  %ecx,%eax
  100c7f:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100c82:	e9 3f fb ff ff       	jmpq   1007c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  100c87:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  100c8a:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100c8d:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100c91:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100c95:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100c9b:	e9 a4 fa ff ff       	jmpq   100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  100ca0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100ca6:	e9 a4 f8 ff ff       	jmpq   10054f <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  100cab:	8d 50 bd             	lea    -0x43(%rax),%edx
  100cae:	80 fa 35             	cmp    $0x35,%dl
  100cb1:	77 d7                	ja     100c8a <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  100cb3:	0f b6 d2             	movzbl %dl,%edx
  100cb6:	3e ff 24 d5 70 15 10 	notrack jmpq *0x101570(,%rdx,8)
  100cbd:	00 
        }
    }
}
  100cbe:	48 83 c4 58          	add    $0x58,%rsp
  100cc2:	5b                   	pop    %rbx
  100cc3:	41 5c                	pop    %r12
  100cc5:	41 5d                	pop    %r13
  100cc7:	41 5e                	pop    %r14
  100cc9:	41 5f                	pop    %r15
  100ccb:	5d                   	pop    %rbp
  100ccc:	c3                   	retq   
  100ccd:	90                   	nop

0000000000100cce <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100cce:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100cd2:	48 c7 07 d8 17 10 00 	movq   $0x1017d8,(%rdi)
  100cd9:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100ce0:	00 
  100ce1:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100ce4:	85 f6                	test   %esi,%esi
  100ce6:	78 18                	js     100d00 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100ce8:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100cee:	7f 0f                	jg     100cff <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100cf0:	48 63 f6             	movslq %esi,%rsi
  100cf3:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100cfa:	00 
  100cfb:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100cff:	c3                   	retq   
        cell_ += cursorpos;
  100d00:	8b 05 f6 82 fb ff    	mov    -0x47d0a(%rip),%eax        # b8ffc <cursorpos>
  100d06:	48 98                	cltq   
  100d08:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100d0f:	00 
  100d10:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100d14:	c3                   	retq   
  100d15:	90                   	nop

0000000000100d16 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100d16:	f3 0f 1e fa          	endbr64 
  100d1a:	55                   	push   %rbp
  100d1b:	48 89 e5             	mov    %rsp,%rbp
  100d1e:	53                   	push   %rbx
  100d1f:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100d23:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100d2a:	00 
  100d2b:	72 18                	jb     100d45 <console_printer::scroll()+0x2f>
  100d2d:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100d30:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100d34:	75 28                	jne    100d5e <console_printer::scroll()+0x48>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  100d36:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100d3d:	00 
    }
}
  100d3e:	48 83 c4 08          	add    $0x8,%rsp
  100d42:	5b                   	pop    %rbx
  100d43:	5d                   	pop    %rbp
  100d44:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100d45:	b9 00 00 00 00       	mov    $0x0,%ecx
  100d4a:	ba 68 17 10 00       	mov    $0x101768,%edx
  100d4f:	be 2c 02 00 00       	mov    $0x22c,%esi
  100d54:	bf 43 10 10 00       	mov    $0x101043,%edi
  100d59:	e8 03 02 00 00       	callq  100f61 <assert_fail(char const*, int, char const*, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100d5e:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100d63:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100d68:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  100d6d:	e8 e8 f5 ff ff       	callq  10035a <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100d72:	ba a0 00 00 00       	mov    $0xa0,%edx
  100d77:	be 00 00 00 00       	mov    $0x0,%esi
  100d7c:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100d81:	e8 21 f6 ff ff       	callq  1003a7 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100d86:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  100d8d:	00 
  100d8e:	eb ae                	jmp    100d3e <console_printer::scroll()+0x28>

0000000000100d90 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100d90:	f3 0f 1e fa          	endbr64 
  100d94:	55                   	push   %rbp
  100d95:	48 89 e5             	mov    %rsp,%rbp
  100d98:	41 55                	push   %r13
  100d9a:	41 54                	push   %r12
  100d9c:	53                   	push   %rbx
  100d9d:	48 83 ec 08          	sub    $0x8,%rsp
  100da1:	48 89 fb             	mov    %rdi,%rbx
  100da4:	41 89 f5             	mov    %esi,%r13d
  100da7:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100daa:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100dae:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100db4:	72 14                	jb     100dca <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100db6:	48 89 df             	mov    %rbx,%rdi
  100db9:	e8 58 ff ff ff       	callq  100d16 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100dbe:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100dc2:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100dc8:	73 ec                	jae    100db6 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100dca:	41 80 fd 0a          	cmp    $0xa,%r13b
  100dce:	74 1e                	je     100dee <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100dd0:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100dd4:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100dd8:	45 0f b6 ed          	movzbl %r13b,%r13d
  100ddc:	45 09 ec             	or     %r13d,%r12d
  100ddf:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  100de3:	48 83 c4 08          	add    $0x8,%rsp
  100de7:	5b                   	pop    %rbx
  100de8:	41 5c                	pop    %r12
  100dea:	41 5d                	pop    %r13
  100dec:	5d                   	pop    %rbp
  100ded:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  100dee:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100df4:	48 89 c1             	mov    %rax,%rcx
  100df7:	48 89 c6             	mov    %rax,%rsi
  100dfa:	48 d1 fe             	sar    %rsi
  100dfd:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100e04:	66 66 66 
  100e07:	48 89 f0             	mov    %rsi,%rax
  100e0a:	48 f7 ea             	imul   %rdx
  100e0d:	48 c1 fa 05          	sar    $0x5,%rdx
  100e11:	48 89 c8             	mov    %rcx,%rax
  100e14:	48 c1 f8 3f          	sar    $0x3f,%rax
  100e18:	48 29 c2             	sub    %rax,%rdx
  100e1b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  100e1f:	48 c1 e0 04          	shl    $0x4,%rax
  100e23:	89 f2                	mov    %esi,%edx
  100e25:	29 c2                	sub    %eax,%edx
  100e27:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  100e29:	41 83 cc 20          	or     $0x20,%r12d
  100e2d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  100e31:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  100e35:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  100e39:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  100e3d:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100e40:	83 f8 50             	cmp    $0x50,%eax
  100e43:	75 e8                	jne    100e2d <console_printer::putc(unsigned char, int)+0x9d>
  100e45:	eb 9c                	jmp    100de3 <console_printer::putc(unsigned char, int)+0x53>
  100e47:	90                   	nop

0000000000100e48 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100e48:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100e4c:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100e50:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100e56:	48 d1 f8             	sar    %rax
  100e59:	89 05 9d 81 fb ff    	mov    %eax,-0x47e63(%rip)        # b8ffc <cursorpos>
}
  100e5f:	c3                   	retq   

0000000000100e60 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100e60:	f3 0f 1e fa          	endbr64 
  100e64:	55                   	push   %rbp
  100e65:	48 89 e5             	mov    %rsp,%rbp
  100e68:	41 56                	push   %r14
  100e6a:	41 55                	push   %r13
  100e6c:	41 54                	push   %r12
  100e6e:	53                   	push   %rbx
  100e6f:	48 83 ec 20          	sub    $0x20,%rsp
  100e73:	89 fb                	mov    %edi,%ebx
  100e75:	41 89 f4             	mov    %esi,%r12d
  100e78:	49 89 d5             	mov    %rdx,%r13
  100e7b:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100e7e:	89 fa                	mov    %edi,%edx
  100e80:	c1 ea 1f             	shr    $0x1f,%edx
  100e83:	89 fe                	mov    %edi,%esi
  100e85:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100e89:	e8 40 fe ff ff       	callq  100cce <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100e8e:	4c 89 f1             	mov    %r14,%rcx
  100e91:	4c 89 ea             	mov    %r13,%rdx
  100e94:	44 89 e6             	mov    %r12d,%esi
  100e97:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100e9b:	e8 34 f6 ff ff       	callq  1004d4 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100ea0:	85 db                	test   %ebx,%ebx
  100ea2:	78 1a                	js     100ebe <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100ea4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100ea8:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100eae:	48 d1 f8             	sar    %rax
}
  100eb1:	48 83 c4 20          	add    $0x20,%rsp
  100eb5:	5b                   	pop    %rbx
  100eb6:	41 5c                	pop    %r12
  100eb8:	41 5d                	pop    %r13
  100eba:	41 5e                	pop    %r14
  100ebc:	5d                   	pop    %rbp
  100ebd:	c3                   	retq   
        cp.move_cursor();
  100ebe:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100ec2:	e8 81 ff ff ff       	callq  100e48 <console_printer::move_cursor()>
  100ec7:	eb db                	jmp    100ea4 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100ec9 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100ec9:	f3 0f 1e fa          	endbr64 
  100ecd:	55                   	push   %rbp
  100ece:	48 89 e5             	mov    %rsp,%rbp
  100ed1:	48 83 ec 50          	sub    $0x50,%rsp
  100ed5:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100ed9:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100edd:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100ee1:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100ee8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100eec:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100ef0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100ef4:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100ef8:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100efc:	e8 5f ff ff ff       	callq  100e60 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100f01:	c9                   	leaveq 
  100f02:	c3                   	retq   

0000000000100f03 <error_printf(char const*, ...)>:
    error_vprintf(-1, color, format, val);
    va_end(val);
}

__noinline
void error_printf(const char* format, ...) {
  100f03:	f3 0f 1e fa          	endbr64 
  100f07:	55                   	push   %rbp
  100f08:	48 89 e5             	mov    %rsp,%rbp
  100f0b:	48 83 ec 50          	sub    $0x50,%rsp
  100f0f:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  100f13:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  100f17:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100f1b:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100f1f:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100f23:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
  100f2a:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100f2e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100f32:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100f36:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
  100f3a:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100f3e:	48 89 fa             	mov    %rdi,%rdx
  100f41:	be 00 c0 00 00       	mov    $0xc000,%esi
  100f46:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  100f4b:	e8 02 00 00 00       	callq  100f52 <error_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
}
  100f50:	c9                   	leaveq 
  100f51:	c3                   	retq   

0000000000100f52 <error_vprintf(int, int, char const*, __va_list_tag*)>:
    }
    (void) console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

int error_vprintf(int cpos, int color, const char* format, va_list val) {
  100f52:	f3 0f 1e fa          	endbr64 
  100f56:	55                   	push   %rbp
  100f57:	48 89 e5             	mov    %rsp,%rbp
    return console_vprintf(cpos, color, format, val);
  100f5a:	e8 01 ff ff ff       	callq  100e60 <console_vprintf(int, int, char const*, __va_list_tag*)>
}
  100f5f:	5d                   	pop    %rbp
  100f60:	c3                   	retq   

0000000000100f61 <assert_fail(char const*, int, char const*, char const*)>:

void assert_fail(const char* file, int line, const char* msg,
                 const char* description) {
  100f61:	f3 0f 1e fa          	endbr64 
  100f65:	55                   	push   %rbp
  100f66:	48 89 e5             	mov    %rsp,%rbp
  100f69:	41 55                	push   %r13
  100f6b:	41 54                	push   %r12
  100f6d:	53                   	push   %rbx
  100f6e:	48 83 ec 08          	sub    $0x8,%rsp
  100f72:	48 89 fb             	mov    %rdi,%rbx
  100f75:	41 89 f4             	mov    %esi,%r12d
  100f78:	49 89 d5             	mov    %rdx,%r13
    cursorpos = CPOS(23, 0);
  100f7b:	c7 05 77 80 fb ff 30 	movl   $0x730,-0x47f89(%rip)        # b8ffc <cursorpos>
  100f82:	07 00 00 
    if (description) {
  100f85:	48 85 c9             	test   %rcx,%rcx
  100f88:	74 11                	je     100f9b <assert_fail(char const*, int, char const*, char const*)+0x3a>
        error_printf("%s:%d: %s\n", file, line, description);
  100f8a:	89 f2                	mov    %esi,%edx
  100f8c:	48 89 fe             	mov    %rdi,%rsi
  100f8f:	bf eb 17 10 00       	mov    $0x1017eb,%edi
  100f94:	b0 00                	mov    $0x0,%al
  100f96:	e8 68 ff ff ff       	callq  100f03 <error_printf(char const*, ...)>
    }
    error_printf("%s:%d: user assertion '%s' failed\n", file, line, msg);
  100f9b:	4c 89 e9             	mov    %r13,%rcx
  100f9e:	44 89 e2             	mov    %r12d,%edx
  100fa1:	48 89 de             	mov    %rbx,%rsi
  100fa4:	bf f8 17 10 00       	mov    $0x1017f8,%edi
  100fa9:	b0 00                	mov    $0x0,%al
  100fab:	e8 53 ff ff ff       	callq  100f03 <error_printf(char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100fb0:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100fb5:	bf 00 00 00 00       	mov    $0x0,%edi
  100fba:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100fbc:	eb fe                	jmp    100fbc <assert_fail(char const*, int, char const*, char const*)+0x5b>
