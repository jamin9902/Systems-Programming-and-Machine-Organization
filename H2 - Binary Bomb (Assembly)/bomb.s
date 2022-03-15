
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400ba8 <_init>:
  400ba8:	48 83 ec 08          	sub    $0x8,%rsp
  400bac:	48 8b 05 45 34 20 00 	mov    0x203445(%rip),%rax        # 603ff8 <__gmon_start__>
  400bb3:	48 85 c0             	test   %rax,%rax
  400bb6:	74 02                	je     400bba <_init+0x12>
  400bb8:	ff d0                	callq  *%rax
  400bba:	48 83 c4 08          	add    $0x8,%rsp
  400bbe:	c3                   	retq   

Disassembly of section .plt:

0000000000400bc0 <.plt>:
  400bc0:	ff 35 42 34 20 00    	pushq  0x203442(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bc6:	ff 25 44 34 20 00    	jmpq   *0x203444(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400bd0 <setvbuf@plt>:
  400bd0:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604018 <setvbuf@GLIBC_2.2.5>
  400bd6:	68 00 00 00 00       	pushq  $0x0
  400bdb:	e9 e0 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400be0 <__errno_location@plt>:
  400be0:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400be6:	68 01 00 00 00       	pushq  $0x1
  400beb:	e9 d0 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400bf0 <printf@plt>:
  400bf0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604028 <printf@GLIBC_2.2.5>
  400bf6:	68 02 00 00 00       	pushq  $0x2
  400bfb:	e9 c0 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c00 <isspace@plt>:
  400c00:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604030 <isspace@GLIBC_2.2.5>
  400c06:	68 03 00 00 00       	pushq  $0x3
  400c0b:	e9 b0 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c10 <sprintf@plt>:
  400c10:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604038 <sprintf@GLIBC_2.2.5>
  400c16:	68 04 00 00 00       	pushq  $0x4
  400c1b:	e9 a0 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c20 <socket@plt>:
  400c20:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604040 <socket@GLIBC_2.2.5>
  400c26:	68 05 00 00 00       	pushq  $0x5
  400c2b:	e9 90 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c30 <strtoul@plt>:
  400c30:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604048 <strtoul@GLIBC_2.2.5>
  400c36:	68 06 00 00 00       	pushq  $0x6
  400c3b:	e9 80 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604050 <write@GLIBC_2.2.5>
  400c46:	68 07 00 00 00       	pushq  $0x7
  400c4b:	e9 70 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c50 <strspn@plt>:
  400c50:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604058 <strspn@GLIBC_2.2.5>
  400c56:	68 08 00 00 00       	pushq  $0x8
  400c5b:	e9 60 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c60 <strlen@plt>:
  400c60:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604060 <strlen@GLIBC_2.2.5>
  400c66:	68 09 00 00 00       	pushq  $0x9
  400c6b:	e9 50 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c70 <__assert_fail@plt>:
  400c70:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604068 <__assert_fail@GLIBC_2.2.5>
  400c76:	68 0a 00 00 00       	pushq  $0xa
  400c7b:	e9 40 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c80 <sscanf@plt>:
  400c80:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604070 <sscanf@GLIBC_2.2.5>
  400c86:	68 0b 00 00 00       	pushq  $0xb
  400c8b:	e9 30 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400c90 <sleep@plt>:
  400c90:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604078 <sleep@GLIBC_2.2.5>
  400c96:	68 0c 00 00 00       	pushq  $0xc
  400c9b:	e9 20 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400ca0 <connect@plt>:
  400ca0:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604080 <connect@GLIBC_2.2.5>
  400ca6:	68 0d 00 00 00       	pushq  $0xd
  400cab:	e9 10 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400cb0 <__cxa_atexit@plt>:
  400cb0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604088 <__cxa_atexit@GLIBC_2.2.5>
  400cb6:	68 0e 00 00 00       	pushq  $0xe
  400cbb:	e9 00 ff ff ff       	jmpq   400bc0 <.plt>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604090 <strcpy@GLIBC_2.2.5>
  400cc6:	68 0f 00 00 00       	pushq  $0xf
  400ccb:	e9 f0 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400cd0 <gethostbyname@plt>:
  400cd0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604098 <gethostbyname@GLIBC_2.2.5>
  400cd6:	68 10 00 00 00       	pushq  $0x10
  400cdb:	e9 e0 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400ce0 <fopen@plt>:
  400ce0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 6040a0 <fopen@GLIBC_2.2.5>
  400ce6:	68 11 00 00 00       	pushq  $0x11
  400ceb:	e9 d0 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400cf0 <signal@plt>:
  400cf0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 6040a8 <signal@GLIBC_2.2.5>
  400cf6:	68 12 00 00 00       	pushq  $0x12
  400cfb:	e9 c0 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d00 <exit@plt>:
  400d00:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 6040b0 <exit@GLIBC_2.2.5>
  400d06:	68 13 00 00 00       	pushq  $0x13
  400d0b:	e9 b0 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d10 <sigemptyset@plt>:
  400d10:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 6040b8 <sigemptyset@GLIBC_2.2.5>
  400d16:	68 14 00 00 00       	pushq  $0x14
  400d1b:	e9 a0 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d20 <sigaction@plt>:
  400d20:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 6040c0 <sigaction@GLIBC_2.2.5>
  400d26:	68 15 00 00 00       	pushq  $0x15
  400d2b:	e9 90 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d30 <strcmp@plt>:
  400d30:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 6040c8 <strcmp@GLIBC_2.2.5>
  400d36:	68 16 00 00 00       	pushq  $0x16
  400d3b:	e9 80 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d40 <strtol@plt>:
  400d40:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040d0 <strtol@GLIBC_2.2.5>
  400d46:	68 17 00 00 00       	pushq  $0x17
  400d4b:	e9 70 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d50 <fprintf@plt>:
  400d50:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040d8 <fprintf@GLIBC_2.2.5>
  400d56:	68 18 00 00 00       	pushq  $0x18
  400d5b:	e9 60 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d60 <read@plt>:
  400d60:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040e0 <read@GLIBC_2.2.5>
  400d66:	68 19 00 00 00       	pushq  $0x19
  400d6b:	e9 50 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d70 <puts@plt>:
  400d70:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040e8 <puts@GLIBC_2.2.5>
  400d76:	68 1a 00 00 00       	pushq  $0x1a
  400d7b:	e9 40 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d80 <fgets@plt>:
  400d80:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040f0 <fgets@GLIBC_2.2.5>
  400d86:	68 1b 00 00 00       	pushq  $0x1b
  400d8b:	e9 30 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400d90 <memmove@plt>:
  400d90:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040f8 <memmove@GLIBC_2.2.5>
  400d96:	68 1c 00 00 00       	pushq  $0x1c
  400d9b:	e9 20 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400da0 <_exit@plt>:
  400da0:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604100 <_exit@GLIBC_2.2.5>
  400da6:	68 1d 00 00 00       	pushq  $0x1d
  400dab:	e9 10 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400db0 <alarm@plt>:
  400db0:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604108 <alarm@GLIBC_2.2.5>
  400db6:	68 1e 00 00 00       	pushq  $0x1e
  400dbb:	e9 00 fe ff ff       	jmpq   400bc0 <.plt>

0000000000400dc0 <close@plt>:
  400dc0:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604110 <close@GLIBC_2.2.5>
  400dc6:	68 1f 00 00 00       	pushq  $0x1f
  400dcb:	e9 f0 fd ff ff       	jmpq   400bc0 <.plt>

Disassembly of section .text:

0000000000400dd0 <main>:
  400dd0:	55                   	push   %rbp
  400dd1:	48 89 e5             	mov    %rsp,%rbp
  400dd4:	41 54                	push   %r12
  400dd6:	53                   	push   %rbx
  400dd7:	48 89 f3             	mov    %rsi,%rbx
  400dda:	83 ff 02             	cmp    $0x2,%edi
  400ddd:	0f 84 e0 00 00 00    	je     400ec3 <main+0xf3>
  400de3:	0f 8f 2b 01 00 00    	jg     400f14 <main+0x144>
  400de9:	e8 52 08 00 00       	callq  401640 <_Z15initialize_bombv>
  400dee:	bf 77 22 40 00       	mov    $0x402277,%edi
  400df3:	e8 78 ff ff ff       	callq  400d70 <puts@plt>
  400df8:	e8 43 09 00 00       	callq  401740 <_Z9read_linev>
  400dfd:	48 89 c7             	mov    %rax,%rdi
  400e00:	e8 1b 02 00 00       	callq  401020 <_Z7phase_1Pc>
  400e05:	e8 a6 0b 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400e0a:	bf 87 22 40 00       	mov    $0x402287,%edi
  400e0f:	e8 5c ff ff ff       	callq  400d70 <puts@plt>
  400e14:	e8 27 09 00 00       	callq  401740 <_Z9read_linev>
  400e19:	48 89 c7             	mov    %rax,%rdi
  400e1c:	e8 2f 02 00 00       	callq  401050 <_Z7phase_2Pc>
  400e21:	e8 8a 0b 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400e26:	bf 98 22 40 00       	mov    $0x402298,%edi
  400e2b:	e8 40 ff ff ff       	callq  400d70 <puts@plt>
  400e30:	e8 0b 09 00 00       	callq  401740 <_Z9read_linev>
  400e35:	48 89 c7             	mov    %rax,%rdi
  400e38:	e8 53 02 00 00       	callq  401090 <_Z7phase_3Pc>
  400e3d:	e8 6e 0b 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400e42:	bf a9 22 40 00       	mov    $0x4022a9,%edi
  400e47:	e8 24 ff ff ff       	callq  400d70 <puts@plt>
  400e4c:	e8 ef 08 00 00       	callq  401740 <_Z9read_linev>
  400e51:	48 89 c7             	mov    %rax,%rdi
  400e54:	e8 87 02 00 00       	callq  4010e0 <_Z7phase_4Pc>
  400e59:	e8 52 0b 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400e5e:	bf ba 22 40 00       	mov    $0x4022ba,%edi
  400e63:	e8 08 ff ff ff       	callq  400d70 <puts@plt>
  400e68:	e8 d3 08 00 00       	callq  401740 <_Z9read_linev>
  400e6d:	48 89 c7             	mov    %rax,%rdi
  400e70:	e8 fb 02 00 00       	callq  401170 <_Z7phase_5Pc>
  400e75:	e8 36 0b 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400e7a:	bf cb 22 40 00       	mov    $0x4022cb,%edi
  400e7f:	e8 ec fe ff ff       	callq  400d70 <puts@plt>
  400e84:	e8 b7 08 00 00       	callq  401740 <_Z9read_linev>
  400e89:	48 89 c7             	mov    %rax,%rdi
  400e8c:	e8 7f 04 00 00       	callq  401310 <_Z7phase_6Pc>
  400e91:	e8 1a 0b 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400e96:	bf dc 22 40 00       	mov    $0x4022dc,%edi
  400e9b:	e8 d0 fe ff ff       	callq  400d70 <puts@plt>
  400ea0:	e8 9b 08 00 00       	callq  401740 <_Z9read_linev>
  400ea5:	48 89 c7             	mov    %rax,%rdi
  400ea8:	e8 b3 04 00 00       	callq  401360 <_Z7phase_7Pc>
  400ead:	e8 fe 0a 00 00       	callq  4019b0 <_Z13phase_defusedv>
  400eb2:	bf ed 22 40 00       	mov    $0x4022ed,%edi
  400eb7:	e8 b4 fe ff ff       	callq  400d70 <puts@plt>
  400ebc:	31 c0                	xor    %eax,%eax
  400ebe:	5b                   	pop    %rbx
  400ebf:	41 5c                	pop    %r12
  400ec1:	5d                   	pop    %rbp
  400ec2:	c3                   	retq   
  400ec3:	4c 8b 66 08          	mov    0x8(%rsi),%r12
  400ec7:	be 44 22 40 00       	mov    $0x402244,%esi
  400ecc:	4c 89 e7             	mov    %r12,%rdi
  400ecf:	e8 5c fe ff ff       	callq  400d30 <strcmp@plt>
  400ed4:	85 c0                	test   %eax,%eax
  400ed6:	0f 84 0d ff ff ff    	je     400de9 <main+0x19>
  400edc:	be 46 22 40 00       	mov    $0x402246,%esi
  400ee1:	4c 89 e7             	mov    %r12,%rdi
  400ee4:	e8 f7 fd ff ff       	callq  400ce0 <fopen@plt>
  400ee9:	48 89 05 e0 34 20 00 	mov    %rax,0x2034e0(%rip)        # 6043d0 <infile>
  400ef0:	48 85 c0             	test   %rax,%rax
  400ef3:	0f 85 f0 fe ff ff    	jne    400de9 <main+0x19>
  400ef9:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400efd:	48 8b 33             	mov    (%rbx),%rsi
  400f00:	bf 48 22 40 00       	mov    $0x402248,%edi
  400f05:	e8 e6 fc ff ff       	callq  400bf0 <printf@plt>
  400f0a:	bf 08 00 00 00       	mov    $0x8,%edi
  400f0f:	e8 ec fd ff ff       	callq  400d00 <exit@plt>
  400f14:	48 8b 36             	mov    (%rsi),%rsi
  400f17:	bf 65 22 40 00       	mov    $0x402265,%edi
  400f1c:	31 c0                	xor    %eax,%eax
  400f1e:	e8 cd fc ff ff       	callq  400bf0 <printf@plt>
  400f23:	bf 08 00 00 00       	mov    $0x8,%edi
  400f28:	e8 d3 fd ff ff       	callq  400d00 <exit@plt>
  400f2d:	0f 1f 00             	nopl   (%rax)

0000000000400f30 <_GLOBAL__sub_I_infile>:
  400f30:	48 8b 05 79 34 20 00 	mov    0x203479(%rip),%rax        # 6043b0 <stdin@@GLIBC_2.2.5>
  400f37:	48 89 05 92 34 20 00 	mov    %rax,0x203492(%rip)        # 6043d0 <infile>
  400f3e:	c3                   	retq   
  400f3f:	90                   	nop

0000000000400f40 <_start>:
  400f40:	31 ed                	xor    %ebp,%ebp
  400f42:	49 89 d1             	mov    %rdx,%r9
  400f45:	5e                   	pop    %rsi
  400f46:	48 89 e2             	mov    %rsp,%rdx
  400f49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f4d:	50                   	push   %rax
  400f4e:	54                   	push   %rsp
  400f4f:	49 c7 c0 f0 21 40 00 	mov    $0x4021f0,%r8
  400f56:	48 c7 c1 90 21 40 00 	mov    $0x402190,%rcx
  400f5d:	48 c7 c7 d0 0d 40 00 	mov    $0x400dd0,%rdi
  400f64:	ff 15 86 30 20 00    	callq  *0x203086(%rip)        # 603ff0 <__libc_start_main@GLIBC_2.2.5>
  400f6a:	f4                   	hlt    
  400f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f70 <deregister_tm_clones>:
  400f70:	b8 98 43 60 00       	mov    $0x604398,%eax
  400f75:	48 3d 98 43 60 00    	cmp    $0x604398,%rax
  400f7b:	74 13                	je     400f90 <deregister_tm_clones+0x20>
  400f7d:	b8 00 00 00 00       	mov    $0x0,%eax
  400f82:	48 85 c0             	test   %rax,%rax
  400f85:	74 09                	je     400f90 <deregister_tm_clones+0x20>
  400f87:	bf 98 43 60 00       	mov    $0x604398,%edi
  400f8c:	ff e0                	jmpq   *%rax
  400f8e:	66 90                	xchg   %ax,%ax
  400f90:	c3                   	retq   
  400f91:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f9d:	00 00 00 

0000000000400fa0 <register_tm_clones>:
  400fa0:	be 98 43 60 00       	mov    $0x604398,%esi
  400fa5:	48 81 ee 98 43 60 00 	sub    $0x604398,%rsi
  400fac:	48 89 f0             	mov    %rsi,%rax
  400faf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400fb3:	48 c1 f8 03          	sar    $0x3,%rax
  400fb7:	48 01 c6             	add    %rax,%rsi
  400fba:	48 d1 fe             	sar    %rsi
  400fbd:	74 11                	je     400fd0 <register_tm_clones+0x30>
  400fbf:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc4:	48 85 c0             	test   %rax,%rax
  400fc7:	74 07                	je     400fd0 <register_tm_clones+0x30>
  400fc9:	bf 98 43 60 00       	mov    $0x604398,%edi
  400fce:	ff e0                	jmpq   *%rax
  400fd0:	c3                   	retq   
  400fd1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400fd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fdd:	00 00 00 

0000000000400fe0 <__do_global_dtors_aux>:
  400fe0:	80 3d e1 33 20 00 00 	cmpb   $0x0,0x2033e1(%rip)        # 6043c8 <completed.7354>
  400fe7:	75 17                	jne    401000 <__do_global_dtors_aux+0x20>
  400fe9:	55                   	push   %rbp
  400fea:	48 89 e5             	mov    %rsp,%rbp
  400fed:	e8 7e ff ff ff       	callq  400f70 <deregister_tm_clones>
  400ff2:	c6 05 cf 33 20 00 01 	movb   $0x1,0x2033cf(%rip)        # 6043c8 <completed.7354>
  400ff9:	5d                   	pop    %rbp
  400ffa:	c3                   	retq   
  400ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <frame_dummy>:
  401010:	eb 8e                	jmp    400fa0 <register_tm_clones>
  401012:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401019:	00 00 00 
  40101c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401020 <_Z7phase_1Pc>:
  401020:	55                   	push   %rbp
  401021:	31 d2                	xor    %edx,%edx
  401023:	48 89 e5             	mov    %rsp,%rbp
  401026:	48 83 ec 10          	sub    $0x10,%rsp
  40102a:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
  40102e:	e8 0d fd ff ff       	callq  400d40 <strtol@plt>
  401033:	48 3d bf 56 00 00    	cmp    $0x56bf,%rax
  401039:	75 05                	jne    401040 <_Z7phase_1Pc+0x20>
  40103b:	c9                   	leaveq 
  40103c:	c3                   	retq   
  40103d:	0f 1f 00             	nopl   (%rax)
  401040:	e8 eb 08 00 00       	callq  401930 <_Z12explode_bombv>
  401045:	90                   	nop
  401046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40104d:	00 00 00 

0000000000401050 <_Z7phase_2Pc>:
  401050:	55                   	push   %rbp
  401051:	48 89 e5             	mov    %rsp,%rbp
  401054:	48 83 ec 20          	sub    $0x20,%rsp
  401058:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  40105c:	e8 0f 09 00 00       	callq  401970 <_Z16read_six_numbersPKcPi>
  401061:	8b 75 e0             	mov    -0x20(%rbp),%esi
  401064:	31 c0                	xor    %eax,%eax
  401066:	89 f1                	mov    %esi,%ecx
  401068:	eb 0a                	jmp    401074 <_Z7phase_2Pc+0x24>
  40106a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401070:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
  401074:	89 c2                	mov    %eax,%edx
  401076:	0f af d0             	imul   %eax,%edx
  401079:	01 f2                	add    %esi,%edx
  40107b:	39 ca                	cmp    %ecx,%edx
  40107d:	75 0c                	jne    40108b <_Z7phase_2Pc+0x3b>
  40107f:	48 83 c0 01          	add    $0x1,%rax
  401083:	48 83 f8 06          	cmp    $0x6,%rax
  401087:	75 e7                	jne    401070 <_Z7phase_2Pc+0x20>
  401089:	c9                   	leaveq 
  40108a:	c3                   	retq   
  40108b:	e8 a0 08 00 00       	callq  401930 <_Z12explode_bombv>

0000000000401090 <_Z7phase_3Pc>:
  401090:	55                   	push   %rbp
  401091:	31 c0                	xor    %eax,%eax
  401093:	be a7 26 40 00       	mov    $0x4026a7,%esi
  401098:	48 89 e5             	mov    %rsp,%rbp
  40109b:	48 83 ec 10          	sub    $0x10,%rsp
  40109f:	4c 8d 45 fc          	lea    -0x4(%rbp),%r8
  4010a3:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  4010a7:	48 8d 55 f4          	lea    -0xc(%rbp),%rdx
  4010ab:	e8 d0 fb ff ff       	callq  400c80 <sscanf@plt>
  4010b0:	83 f8 02             	cmp    $0x2,%eax
  4010b3:	7e 19                	jle    4010ce <_Z7phase_3Pc+0x3e>
  4010b5:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4010b8:	83 f8 07             	cmp    $0x7,%eax
  4010bb:	77 11                	ja     4010ce <_Z7phase_3Pc+0x3e>
  4010bd:	8b 55 f8             	mov    -0x8(%rbp),%edx
  4010c0:	2b 55 fc             	sub    -0x4(%rbp),%edx
  4010c3:	3b 14 85 e0 23 40 00 	cmp    0x4023e0(,%rax,4),%edx
  4010ca:	75 02                	jne    4010ce <_Z7phase_3Pc+0x3e>
  4010cc:	c9                   	leaveq 
  4010cd:	c3                   	retq   
  4010ce:	e8 5d 08 00 00       	callq  401930 <_Z12explode_bombv>
  4010d3:	0f 1f 00             	nopl   (%rax)
  4010d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010dd:	00 00 00 

00000000004010e0 <_Z7phase_4Pc>:
  4010e0:	55                   	push   %rbp
  4010e1:	be 38 23 40 00       	mov    $0x402338,%esi
  4010e6:	48 89 e5             	mov    %rsp,%rbp
  4010e9:	e8 42 fc ff ff       	callq  400d30 <strcmp@plt>
  4010ee:	85 c0                	test   %eax,%eax
  4010f0:	75 02                	jne    4010f4 <_Z7phase_4Pc+0x14>
  4010f2:	5d                   	pop    %rbp
  4010f3:	c3                   	retq   
  4010f4:	e8 37 08 00 00       	callq  401930 <_Z12explode_bombv>
  4010f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401100 <_Z4playPKcmPcm>:
  401100:	55                   	push   %rbp
  401101:	48 89 e5             	mov    %rsp,%rbp
  401104:	48 39 f1             	cmp    %rsi,%rcx
  401107:	74 17                	je     401120 <_Z4playPKcmPcm+0x20>
  401109:	b8 00 00 00 00       	mov    $0x0,%eax
  40110e:	72 0b                	jb     40111b <_Z4playPKcmPcm+0x1b>
  401110:	44 0f b6 44 0a ff    	movzbl -0x1(%rdx,%rcx,1),%r8d
  401116:	44 38 02             	cmp    %r8b,(%rdx)
  401119:	74 3d                	je     401158 <_Z4playPKcmPcm+0x58>
  40111b:	5d                   	pop    %rbp
  40111c:	c3                   	retq   
  40111d:	0f 1f 00             	nopl   (%rax)
  401120:	b8 01 00 00 00       	mov    $0x1,%eax
  401125:	48 85 c9             	test   %rcx,%rcx
  401128:	74 f1                	je     40111b <_Z4playPKcmPcm+0x1b>
  40112a:	0f b6 32             	movzbl (%rdx),%esi
  40112d:	31 c0                	xor    %eax,%eax
  40112f:	40 38 37             	cmp    %sil,(%rdi)
  401132:	75 e7                	jne    40111b <_Z4playPKcmPcm+0x1b>
  401134:	48 8d 71 ff          	lea    -0x1(%rcx),%rsi
  401138:	48 83 c2 01          	add    $0x1,%rdx
  40113c:	48 83 c7 01          	add    $0x1,%rdi
  401140:	48 89 f1             	mov    %rsi,%rcx
  401143:	e8 b8 ff ff ff       	callq  401100 <_Z4playPKcmPcm>
  401148:	5d                   	pop    %rbp
  401149:	85 c0                	test   %eax,%eax
  40114b:	0f 95 c0             	setne  %al
  40114e:	0f b6 c0             	movzbl %al,%eax
  401151:	c3                   	retq   
  401152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401158:	48 83 e9 02          	sub    $0x2,%rcx
  40115c:	48 83 c2 01          	add    $0x1,%rdx
  401160:	e8 9b ff ff ff       	callq  401100 <_Z4playPKcmPcm>
  401165:	5d                   	pop    %rbp
  401166:	85 c0                	test   %eax,%eax
  401168:	0f 95 c0             	setne  %al
  40116b:	0f b6 c0             	movzbl %al,%eax
  40116e:	c3                   	retq   
  40116f:	90                   	nop

0000000000401170 <_Z7phase_5Pc>:
  401170:	55                   	push   %rbp
  401171:	31 c0                	xor    %eax,%eax
  401173:	be c1 25 40 00       	mov    $0x4025c1,%esi
  401178:	48 89 e5             	mov    %rsp,%rbp
  40117b:	41 54                	push   %r12
  40117d:	53                   	push   %rbx
  40117e:	48 8d 8d 50 ff ff ff 	lea    -0xb0(%rbp),%rcx
  401185:	48 8d 95 b0 fe ff ff 	lea    -0x150(%rbp),%rdx
  40118c:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  401193:	e8 e8 fa ff ff       	callq  400c80 <sscanf@plt>
  401198:	83 f8 02             	cmp    $0x2,%eax
  40119b:	75 7b                	jne    401218 <_Z7phase_5Pc+0xa8>
  40119d:	bb 00 24 40 00       	mov    $0x402400,%ebx
  4011a2:	bf fe 22 40 00       	mov    $0x4022fe,%edi
  4011a7:	eb 14                	jmp    4011bd <_Z7phase_5Pc+0x4d>
  4011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4011b0:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4011b4:	48 83 c3 08          	add    $0x8,%rbx
  4011b8:	48 85 ff             	test   %rdi,%rdi
  4011bb:	74 5b                	je     401218 <_Z7phase_5Pc+0xa8>
  4011bd:	48 8d b5 b0 fe ff ff 	lea    -0x150(%rbp),%rsi
  4011c4:	e8 67 fb ff ff       	callq  400d30 <strcmp@plt>
  4011c9:	85 c0                	test   %eax,%eax
  4011cb:	75 e3                	jne    4011b0 <_Z7phase_5Pc+0x40>
  4011cd:	48 8d bd 50 ff ff ff 	lea    -0xb0(%rbp),%rdi
  4011d4:	e8 87 fa ff ff       	callq  400c60 <strlen@plt>
  4011d9:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4011e0:	49 89 c4             	mov    %rax,%r12
  4011e3:	e8 78 fa ff ff       	callq  400c60 <strlen@plt>
  4011e8:	4c 89 e1             	mov    %r12,%rcx
  4011eb:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
  4011f2:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4011f9:	48 89 c6             	mov    %rax,%rsi
  4011fc:	e8 ff fe ff ff       	callq  401100 <_Z4playPKcmPcm>
  401201:	85 c0                	test   %eax,%eax
  401203:	74 13                	je     401218 <_Z7phase_5Pc+0xa8>
  401205:	48 81 c4 40 01 00 00 	add    $0x140,%rsp
  40120c:	5b                   	pop    %rbx
  40120d:	41 5c                	pop    %r12
  40120f:	5d                   	pop    %rbp
  401210:	c3                   	retq   
  401211:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401218:	e8 13 07 00 00       	callq  401930 <_Z12explode_bombv>
  40121d:	0f 1f 00             	nopl   (%rax)

0000000000401220 <_Z12calc6_factorPcP5calc6>:
  401220:	55                   	push   %rbp
  401221:	48 89 e5             	mov    %rsp,%rbp
  401224:	41 55                	push   %r13
  401226:	41 54                	push   %r12
  401228:	49 89 f4             	mov    %rsi,%r12
  40122b:	be 04 23 40 00       	mov    $0x402304,%esi
  401230:	53                   	push   %rbx
  401231:	48 89 fb             	mov    %rdi,%rbx
  401234:	48 83 ec 08          	sub    $0x8,%rsp
  401238:	e8 13 fa ff ff       	callq  400c50 <strspn@plt>
  40123d:	31 f6                	xor    %esi,%esi
  40123f:	48 89 df             	mov    %rbx,%rdi
  401242:	ba 0a 00 00 00       	mov    $0xa,%edx
  401247:	49 89 c5             	mov    %rax,%r13
  40124a:	e8 e1 f9 ff ff       	callq  400c30 <strtoul@plt>
  40124f:	4d 85 ed             	test   %r13,%r13
  401252:	0f b7 c0             	movzwl %ax,%eax
  401255:	41 89 04 24          	mov    %eax,(%r12)
  401259:	0f 94 c0             	sete   %al
  40125c:	41 08 44 24 04       	or     %al,0x4(%r12)
  401261:	48 83 c4 08          	add    $0x8,%rsp
  401265:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
  401269:	5b                   	pop    %rbx
  40126a:	41 5c                	pop    %r12
  40126c:	41 5d                	pop    %r13
  40126e:	5d                   	pop    %rbp
  40126f:	c3                   	retq   

0000000000401270 <_Z10calc6_termPcP5calc6>:
  401270:	55                   	push   %rbp
  401271:	48 89 e5             	mov    %rsp,%rbp
  401274:	41 54                	push   %r12
  401276:	53                   	push   %rbx
  401277:	48 89 f3             	mov    %rsi,%rbx
  40127a:	e8 a1 ff ff ff       	callq  401220 <_Z12calc6_factorPcP5calc6>
  40127f:	80 38 3c             	cmpb   $0x3c,(%rax)
  401282:	74 15                	je     401299 <_Z10calc6_termPcP5calc6+0x29>
  401284:	eb 40                	jmp    4012c6 <_Z10calc6_termPcP5calc6+0x56>
  401286:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40128d:	00 00 00 
  401290:	c6 43 04 01          	movb   $0x1,0x4(%rbx)
  401294:	80 38 3c             	cmpb   $0x3c,(%rax)
  401297:	75 2d                	jne    4012c6 <_Z10calc6_termPcP5calc6+0x56>
  401299:	80 78 01 3c          	cmpb   $0x3c,0x1(%rax)
  40129d:	75 27                	jne    4012c6 <_Z10calc6_termPcP5calc6+0x56>
  40129f:	48 8d 78 02          	lea    0x2(%rax),%rdi
  4012a3:	48 89 de             	mov    %rbx,%rsi
  4012a6:	44 8b 23             	mov    (%rbx),%r12d
  4012a9:	e8 72 ff ff ff       	callq  401220 <_Z12calc6_factorPcP5calc6>
  4012ae:	80 7b 04 00          	cmpb   $0x0,0x4(%rbx)
  4012b2:	75 e0                	jne    401294 <_Z10calc6_termPcP5calc6+0x24>
  4012b4:	8b 0b                	mov    (%rbx),%ecx
  4012b6:	83 f9 1f             	cmp    $0x1f,%ecx
  4012b9:	77 d5                	ja     401290 <_Z10calc6_termPcP5calc6+0x20>
  4012bb:	41 d3 e4             	shl    %cl,%r12d
  4012be:	44 89 23             	mov    %r12d,(%rbx)
  4012c1:	80 38 3c             	cmpb   $0x3c,(%rax)
  4012c4:	74 d3                	je     401299 <_Z10calc6_termPcP5calc6+0x29>
  4012c6:	5b                   	pop    %rbx
  4012c7:	41 5c                	pop    %r12
  4012c9:	5d                   	pop    %rbp
  4012ca:	c3                   	retq   
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <_Z10calc6_exprPcP5calc6>:
  4012d0:	55                   	push   %rbp
  4012d1:	48 89 e5             	mov    %rsp,%rbp
  4012d4:	41 54                	push   %r12
  4012d6:	53                   	push   %rbx
  4012d7:	48 89 f3             	mov    %rsi,%rbx
  4012da:	e8 91 ff ff ff       	callq  401270 <_Z10calc6_termPcP5calc6>
  4012df:	80 38 7c             	cmpb   $0x7c,(%rax)
  4012e2:	75 23                	jne    401307 <_Z10calc6_exprPcP5calc6+0x37>
  4012e4:	44 8b 23             	mov    (%rbx),%r12d
  4012e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4012ee:	00 00 
  4012f0:	48 8d 78 01          	lea    0x1(%rax),%rdi
  4012f4:	48 89 de             	mov    %rbx,%rsi
  4012f7:	e8 74 ff ff ff       	callq  401270 <_Z10calc6_termPcP5calc6>
  4012fc:	44 0b 23             	or     (%rbx),%r12d
  4012ff:	44 89 23             	mov    %r12d,(%rbx)
  401302:	80 38 7c             	cmpb   $0x7c,(%rax)
  401305:	74 e9                	je     4012f0 <_Z10calc6_exprPcP5calc6+0x20>
  401307:	5b                   	pop    %rbx
  401308:	41 5c                	pop    %r12
  40130a:	5d                   	pop    %rbp
  40130b:	c3                   	retq   
  40130c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401310 <_Z7phase_6Pc>:
  401310:	55                   	push   %rbp
  401311:	48 89 e5             	mov    %rsp,%rbp
  401314:	48 83 ec 10          	sub    $0x10,%rsp
  401318:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
  40131c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401323:	c6 45 fc 00          	movb   $0x0,-0x4(%rbp)
  401327:	e8 a4 ff ff ff       	callq  4012d0 <_Z10calc6_exprPcP5calc6>
  40132c:	80 7d fc 00          	cmpb   $0x0,-0x4(%rbp)
  401330:	75 0e                	jne    401340 <_Z7phase_6Pc+0x30>
  401332:	8b 75 f8             	mov    -0x8(%rbp),%esi
  401335:	81 fe a3 0d 0b 66    	cmp    $0x660b0da3,%esi
  40133b:	75 08                	jne    401345 <_Z7phase_6Pc+0x35>
  40133d:	c9                   	leaveq 
  40133e:	c3                   	retq   
  40133f:	90                   	nop
  401340:	be ff ff ff ff       	mov    $0xffffffff,%esi
  401345:	bf 0f 23 40 00       	mov    $0x40230f,%edi
  40134a:	31 c0                	xor    %eax,%eax
  40134c:	e8 9f f8 ff ff       	callq  400bf0 <printf@plt>
  401351:	e8 da 05 00 00       	callq  401930 <_Z12explode_bombv>
  401356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40135d:	00 00 00 

0000000000401360 <_Z7phase_7Pc>:
  401360:	55                   	push   %rbp
  401361:	48 89 e5             	mov    %rsp,%rbp
  401364:	48 83 ec 50          	sub    $0x50,%rsp
  401368:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
  40136c:	e8 ff 05 00 00       	callq  401970 <_Z16read_six_numbersPKcPi>
  401371:	b9 01 00 00 00       	mov    $0x1,%ecx
  401376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40137d:	00 00 00 
  401380:	8b 54 8d ac          	mov    -0x54(%rbp,%rcx,4),%edx
  401384:	8d 42 ff             	lea    -0x1(%rdx),%eax
  401387:	83 f8 05             	cmp    $0x5,%eax
  40138a:	0f 87 f2 00 00 00    	ja     401482 <_Z7phase_7Pc+0x122>
  401390:	48 83 f9 06          	cmp    $0x6,%rcx
  401394:	74 23                	je     4013b9 <_Z7phase_7Pc+0x59>
  401396:	48 89 c8             	mov    %rcx,%rax
  401399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4013a0:	3b 54 85 b0          	cmp    -0x50(%rbp,%rax,4),%edx
  4013a4:	0f 84 d8 00 00 00    	je     401482 <_Z7phase_7Pc+0x122>
  4013aa:	48 83 c0 01          	add    $0x1,%rax
  4013ae:	83 f8 06             	cmp    $0x6,%eax
  4013b1:	75 ed                	jne    4013a0 <_Z7phase_7Pc+0x40>
  4013b3:	48 83 c1 01          	add    $0x1,%rcx
  4013b7:	eb c7                	jmp    401380 <_Z7phase_7Pc+0x20>
  4013b9:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4013bd:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
  4013c1:	b9 07 00 00 00       	mov    $0x7,%ecx
  4013c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013cd:	00 00 00 
  4013d0:	89 ca                	mov    %ecx,%edx
  4013d2:	2b 10                	sub    (%rax),%edx
  4013d4:	48 83 c0 04          	add    $0x4,%rax
  4013d8:	89 50 fc             	mov    %edx,-0x4(%rax)
  4013db:	48 39 f0             	cmp    %rsi,%rax
  4013de:	75 f0                	jne    4013d0 <_Z7phase_7Pc+0x70>
  4013e0:	31 f6                	xor    %esi,%esi
  4013e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4013e8:	8b 4c b5 b0          	mov    -0x50(%rbp,%rsi,4),%ecx
  4013ec:	83 f9 01             	cmp    $0x1,%ecx
  4013ef:	7e 77                	jle    401468 <_Z7phase_7Pc+0x108>
  4013f1:	b8 01 00 00 00       	mov    $0x1,%eax
  4013f6:	ba 10 43 60 00       	mov    $0x604310,%edx
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401400:	83 c0 01             	add    $0x1,%eax
  401403:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401407:	39 c8                	cmp    %ecx,%eax
  401409:	75 f5                	jne    401400 <_Z7phase_7Pc+0xa0>
  40140b:	48 89 54 f5 d0       	mov    %rdx,-0x30(%rbp,%rsi,8)
  401410:	48 83 c6 01          	add    $0x1,%rsi
  401414:	48 83 fe 06          	cmp    $0x6,%rsi
  401418:	75 ce                	jne    4013e8 <_Z7phase_7Pc+0x88>
  40141a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40141e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401422:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401426:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40142a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  40142e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401432:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401436:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40143a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  40143e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401442:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401446:	8b 08                	mov    (%rax),%ecx
  401448:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  40144f:	00 
  401450:	ba 05 00 00 00       	mov    $0x5,%edx
  401455:	48 8b 40 08          	mov    0x8(%rax),%rax
  401459:	89 ce                	mov    %ecx,%esi
  40145b:	8b 08                	mov    (%rax),%ecx
  40145d:	39 f1                	cmp    %esi,%ecx
  40145f:	7f 21                	jg     401482 <_Z7phase_7Pc+0x122>
  401461:	83 ea 01             	sub    $0x1,%edx
  401464:	75 ef                	jne    401455 <_Z7phase_7Pc+0xf5>
  401466:	c9                   	leaveq 
  401467:	c3                   	retq   
  401468:	ba 10 43 60 00       	mov    $0x604310,%edx
  40146d:	48 89 54 f5 d0       	mov    %rdx,-0x30(%rbp,%rsi,8)
  401472:	48 83 c6 01          	add    $0x1,%rsi
  401476:	48 83 fe 06          	cmp    $0x6,%rsi
  40147a:	0f 85 68 ff ff ff    	jne    4013e8 <_Z7phase_7Pc+0x88>
  401480:	eb 98                	jmp    40141a <_Z7phase_7Pc+0xba>
  401482:	e8 a9 04 00 00       	callq  401930 <_Z12explode_bombv>
  401487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40148e:	00 00 

0000000000401490 <_Z2f8P14treeNodeStructi>:
  401490:	48 85 ff             	test   %rdi,%rdi
  401493:	74 30                	je     4014c5 <_Z2f8P14treeNodeStructi+0x35>
  401495:	55                   	push   %rbp
  401496:	48 89 e5             	mov    %rsp,%rbp
  401499:	39 37                	cmp    %esi,(%rdi)
  40149b:	7f 1b                	jg     4014b8 <_Z2f8P14treeNodeStructi+0x28>
  40149d:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a2:	74 0d                	je     4014b1 <_Z2f8P14treeNodeStructi+0x21>
  4014a4:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4014a8:	e8 e3 ff ff ff       	callq  401490 <_Z2f8P14treeNodeStructi>
  4014ad:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4014b1:	5d                   	pop    %rbp
  4014b2:	c3                   	retq   
  4014b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4014b8:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4014bc:	e8 cf ff ff ff       	callq  401490 <_Z2f8P14treeNodeStructi>
  4014c1:	5d                   	pop    %rbp
  4014c2:	01 c0                	add    %eax,%eax
  4014c4:	c3                   	retq   
  4014c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4014ca:	c3                   	retq   
  4014cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014d0 <_Z12secret_phasev>:
  4014d0:	55                   	push   %rbp
  4014d1:	48 89 e5             	mov    %rsp,%rbp
  4014d4:	e8 67 02 00 00       	callq  401740 <_Z9read_linev>
  4014d9:	31 f6                	xor    %esi,%esi
  4014db:	31 d2                	xor    %edx,%edx
  4014dd:	48 89 c7             	mov    %rax,%rdi
  4014e0:	e8 5b f8 ff ff       	callq  400d40 <strtol@plt>
  4014e5:	48 89 c6             	mov    %rax,%rsi
  4014e8:	48 83 e8 01          	sub    $0x1,%rax
  4014ec:	48 3d e8 03 00 00    	cmp    $0x3e8,%rax
  4014f2:	77 1f                	ja     401513 <_Z12secret_phasev+0x43>
  4014f4:	bf 30 41 60 00       	mov    $0x604130,%edi
  4014f9:	e8 92 ff ff ff       	callq  401490 <_Z2f8P14treeNodeStructi>
  4014fe:	83 f8 04             	cmp    $0x4,%eax
  401501:	75 10                	jne    401513 <_Z12secret_phasev+0x43>
  401503:	bf a8 23 40 00       	mov    $0x4023a8,%edi
  401508:	e8 63 f8 ff ff       	callq  400d70 <puts@plt>
  40150d:	5d                   	pop    %rbp
  40150e:	e9 9d 04 00 00       	jmpq   4019b0 <_Z13phase_defusedv>
  401513:	e8 18 04 00 00       	callq  401930 <_Z12explode_bombv>
  401518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40151f:	00 

0000000000401520 <_ZL11sig_handleri>:
  401520:	55                   	push   %rbp
  401521:	ba 39 00 00 00       	mov    $0x39,%edx
  401526:	be 28 24 40 00       	mov    $0x402428,%esi
  40152b:	bf 01 00 00 00       	mov    $0x1,%edi
  401530:	48 89 e5             	mov    %rsp,%rbp
  401533:	e8 08 f7 ff ff       	callq  400c40 <write@plt>
  401538:	bf 03 00 00 00       	mov    $0x3,%edi
  40153d:	e8 4e f7 ff ff       	callq  400c90 <sleep@plt>
  401542:	ba 07 00 00 00       	mov    $0x7,%edx
  401547:	be ab 25 40 00       	mov    $0x4025ab,%esi
  40154c:	bf 01 00 00 00       	mov    $0x1,%edi
  401551:	e8 ea f6 ff ff       	callq  400c40 <write@plt>
  401556:	bf 01 00 00 00       	mov    $0x1,%edi
  40155b:	e8 30 f7 ff ff       	callq  400c90 <sleep@plt>
  401560:	bf 01 00 00 00       	mov    $0x1,%edi
  401565:	ba 08 00 00 00       	mov    $0x8,%edx
  40156a:	be b3 25 40 00       	mov    $0x4025b3,%esi
  40156f:	e8 cc f6 ff ff       	callq  400c40 <write@plt>
  401574:	bf 10 00 00 00       	mov    $0x10,%edi
  401579:	e8 22 f8 ff ff       	callq  400da0 <_exit@plt>
  40157e:	66 90                	xchg   %ax,%ax

0000000000401580 <_Z1ev.part.0>:
  401580:	55                   	push   %rbp
  401581:	31 c0                	xor    %eax,%eax
  401583:	be bc 25 40 00       	mov    $0x4025bc,%esi
  401588:	bf 40 45 60 00       	mov    $0x604540,%edi
  40158d:	48 89 e5             	mov    %rsp,%rbp
  401590:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  401597:	4c 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%r8
  40159e:	4c 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%r9
  4015a5:	4c 89 c1             	mov    %r8,%rcx
  4015a8:	4c 89 c2             	mov    %r8,%rdx
  4015ab:	e8 d0 f6 ff ff       	callq  400c80 <sscanf@plt>
  4015b0:	83 f8 04             	cmp    $0x4,%eax
  4015b3:	74 1b                	je     4015d0 <_Z1ev.part.0+0x50>
  4015b5:	bf c8 24 40 00       	mov    $0x4024c8,%edi
  4015ba:	e8 b1 f7 ff ff       	callq  400d70 <puts@plt>
  4015bf:	bf f0 24 40 00       	mov    $0x4024f0,%edi
  4015c4:	e8 a7 f7 ff ff       	callq  400d70 <puts@plt>
  4015c9:	c9                   	leaveq 
  4015ca:	c3                   	retq   
  4015cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4015d0:	be c8 25 40 00       	mov    $0x4025c8,%esi
  4015d5:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  4015dc:	e8 4f f7 ff ff       	callq  400d30 <strcmp@plt>
  4015e1:	85 c0                	test   %eax,%eax
  4015e3:	75 d0                	jne    4015b5 <_Z1ev.part.0+0x35>
  4015e5:	bf 68 24 40 00       	mov    $0x402468,%edi
  4015ea:	e8 81 f7 ff ff       	callq  400d70 <puts@plt>
  4015ef:	bf 90 24 40 00       	mov    $0x402490,%edi
  4015f4:	e8 77 f7 ff ff       	callq  400d70 <puts@plt>
  4015f9:	e8 d2 fe ff ff       	callq  4014d0 <_Z12secret_phasev>
  4015fe:	eb b5                	jmp    4015b5 <_Z1ev.part.0+0x35>

0000000000401600 <_Z1ev>:
  401600:	83 3d d9 2d 20 00 07 	cmpl   $0x7,0x202dd9(%rip)        # 6043e0 <ndefused>
  401607:	74 07                	je     401610 <_Z1ev+0x10>
  401609:	c3                   	retq   
  40160a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401610:	e9 6b ff ff ff       	jmpq   401580 <_Z1ev.part.0>
  401615:	90                   	nop
  401616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40161d:	00 00 00 

0000000000401620 <_Z13invalid_phasePc>:
  401620:	55                   	push   %rbp
  401621:	48 89 fe             	mov    %rdi,%rsi
  401624:	31 c0                	xor    %eax,%eax
  401626:	bf d4 25 40 00       	mov    $0x4025d4,%edi
  40162b:	48 89 e5             	mov    %rsp,%rbp
  40162e:	e8 bd f5 ff ff       	callq  400bf0 <printf@plt>
  401633:	bf 08 00 00 00       	mov    $0x8,%edi
  401638:	e8 c3 f6 ff ff       	callq  400d00 <exit@plt>
  40163d:	0f 1f 00             	nopl   (%rax)

0000000000401640 <_Z15initialize_bombv>:
  401640:	55                   	push   %rbp
  401641:	48 89 e5             	mov    %rsp,%rbp
  401644:	48 81 ec a0 20 00 00 	sub    $0x20a0,%rsp
  40164b:	48 8d bd 68 df ff ff 	lea    -0x2098(%rbp),%rdi
  401652:	48 c7 85 60 df ff ff 	movq   $0x401520,-0x20a0(%rbp)
  401659:	20 15 40 00 
  40165d:	e8 ae f6 ff ff       	callq  400d10 <sigemptyset@plt>
  401662:	31 d2                	xor    %edx,%edx
  401664:	bf 02 00 00 00       	mov    $0x2,%edi
  401669:	48 8d b5 60 df ff ff 	lea    -0x20a0(%rbp),%rsi
  401670:	c7 85 e8 df ff ff 00 	movl   $0x0,-0x2018(%rbp)
  401677:	00 00 00 
  40167a:	e8 a1 f6 ff ff       	callq  400d20 <sigaction@plt>
  40167f:	48 8b 3d 1a 2d 20 00 	mov    0x202d1a(%rip),%rdi        # 6043a0 <stdout@@GLIBC_2.2.5>
  401686:	31 c9                	xor    %ecx,%ecx
  401688:	31 f6                	xor    %esi,%esi
  40168a:	ba 02 00 00 00       	mov    $0x2,%edx
  40168f:	e8 3c f5 ff ff       	callq  400bd0 <setvbuf@plt>
  401694:	48 8b 3d 25 2d 20 00 	mov    0x202d25(%rip),%rdi        # 6043c0 <stderr@@GLIBC_2.2.5>
  40169b:	31 c9                	xor    %ecx,%ecx
  40169d:	31 f6                	xor    %esi,%esi
  40169f:	ba 02 00 00 00       	mov    $0x2,%edx
  4016a4:	e8 27 f5 ff ff       	callq  400bd0 <setvbuf@plt>
  4016a9:	48 8d bd 00 e0 ff ff 	lea    -0x2000(%rbp),%rdi
  4016b0:	e8 fb 08 00 00       	callq  401fb0 <_Z11init_driverPc>
  4016b5:	85 c0                	test   %eax,%eax
  4016b7:	78 0c                	js     4016c5 <_Z15initialize_bombv+0x85>
  4016b9:	bf 00 16 40 00       	mov    $0x401600,%edi
  4016be:	e8 3d 0b 00 00       	callq  402200 <atexit>
  4016c3:	c9                   	leaveq 
  4016c4:	c3                   	retq   
  4016c5:	bf e5 25 40 00       	mov    $0x4025e5,%edi
  4016ca:	48 8d b5 00 e0 ff ff 	lea    -0x2000(%rbp),%rsi
  4016d1:	31 c0                	xor    %eax,%eax
  4016d3:	e8 18 f5 ff ff       	callq  400bf0 <printf@plt>
  4016d8:	bf 08 00 00 00       	mov    $0x8,%edi
  4016dd:	e8 1e f6 ff ff       	callq  400d00 <exit@plt>
  4016e2:	0f 1f 40 00          	nopl   0x0(%rax)
  4016e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016ed:	00 00 00 

00000000004016f0 <_Z21initialize_bomb_solvev>:
  4016f0:	c3                   	retq   
  4016f1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4016f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016fd:	00 00 00 

0000000000401700 <_Z10blank_linePc>:
  401700:	55                   	push   %rbp
  401701:	48 89 e5             	mov    %rsp,%rbp
  401704:	53                   	push   %rbx
  401705:	48 89 fb             	mov    %rdi,%rbx
  401708:	48 83 ec 08          	sub    $0x8,%rsp
  40170c:	eb 0f                	jmp    40171d <_Z10blank_linePc+0x1d>
  40170e:	66 90                	xchg   %ax,%ax
  401710:	48 83 c3 01          	add    $0x1,%rbx
  401714:	e8 e7 f4 ff ff       	callq  400c00 <isspace@plt>
  401719:	85 c0                	test   %eax,%eax
  40171b:	74 0d                	je     40172a <_Z10blank_linePc+0x2a>
  40171d:	0f be 3b             	movsbl (%rbx),%edi
  401720:	40 84 ff             	test   %dil,%dil
  401723:	75 eb                	jne    401710 <_Z10blank_linePc+0x10>
  401725:	b8 01 00 00 00       	mov    $0x1,%eax
  40172a:	48 83 c4 08          	add    $0x8,%rsp
  40172e:	5b                   	pop    %rbx
  40172f:	5d                   	pop    %rbp
  401730:	c3                   	retq   
  401731:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40173d:	00 00 00 

0000000000401740 <_Z9read_linev>:
  401740:	55                   	push   %rbp
  401741:	48 63 05 98 2c 20 00 	movslq 0x202c98(%rip),%rax        # 6043e0 <ndefused>
  401748:	48 89 e5             	mov    %rsp,%rbp
  40174b:	41 54                	push   %r12
  40174d:	53                   	push   %rbx
  40174e:	83 f8 13             	cmp    $0x13,%eax
  401751:	0f 87 ff 00 00 00    	ja     401856 <_Z9read_linev+0x116>
  401757:	4c 8d 24 80          	lea    (%rax,%rax,4),%r12
  40175b:	48 8b 15 6e 2c 20 00 	mov    0x202c6e(%rip),%rdx        # 6043d0 <infile>
  401762:	49 c1 e4 05          	shl    $0x5,%r12
  401766:	49 81 c4 00 44 60 00 	add    $0x604400,%r12
  40176d:	0f 1f 00             	nopl   (%rax)
  401770:	be a0 00 00 00       	mov    $0xa0,%esi
  401775:	4c 89 e7             	mov    %r12,%rdi
  401778:	e8 03 f6 ff ff       	callq  400d80 <fgets@plt>
  40177d:	48 85 c0             	test   %rax,%rax
  401780:	75 1e                	jne    4017a0 <_Z9read_linev+0x60>
  401782:	48 8b 15 27 2c 20 00 	mov    0x202c27(%rip),%rdx        # 6043b0 <stdin@@GLIBC_2.2.5>
  401789:	48 39 15 40 2c 20 00 	cmp    %rdx,0x202c40(%rip)        # 6043d0 <infile>
  401790:	0f 84 ac 00 00 00    	je     401842 <_Z9read_linev+0x102>
  401796:	48 89 15 33 2c 20 00 	mov    %rdx,0x202c33(%rip)        # 6043d0 <infile>
  40179d:	eb d1                	jmp    401770 <_Z9read_linev+0x30>
  40179f:	90                   	nop
  4017a0:	4c 89 e3             	mov    %r12,%rbx
  4017a3:	eb 10                	jmp    4017b5 <_Z9read_linev+0x75>
  4017a5:	0f 1f 00             	nopl   (%rax)
  4017a8:	48 83 c3 01          	add    $0x1,%rbx
  4017ac:	e8 4f f4 ff ff       	callq  400c00 <isspace@plt>
  4017b1:	85 c0                	test   %eax,%eax
  4017b3:	74 1b                	je     4017d0 <_Z9read_linev+0x90>
  4017b5:	0f be 3b             	movsbl (%rbx),%edi
  4017b8:	40 84 ff             	test   %dil,%dil
  4017bb:	75 eb                	jne    4017a8 <_Z9read_linev+0x68>
  4017bd:	48 8b 15 0c 2c 20 00 	mov    0x202c0c(%rip),%rdx        # 6043d0 <infile>
  4017c4:	eb aa                	jmp    401770 <_Z9read_linev+0x30>
  4017c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017cd:	00 00 00 
  4017d0:	4c 89 e7             	mov    %r12,%rdi
  4017d3:	e8 88 f4 ff ff       	callq  400c60 <strlen@plt>
  4017d8:	48 3d 9e 00 00 00    	cmp    $0x9e,%rax
  4017de:	76 48                	jbe    401828 <_Z9read_linev+0xe8>
  4017e0:	41 80 bc 24 9f 00 00 	cmpb   $0xa,0x9f(%r12)
  4017e7:	00 0a 
  4017e9:	74 25                	je     401810 <_Z9read_linev+0xd0>
  4017eb:	bf 31 26 40 00       	mov    $0x402631,%edi
  4017f0:	e8 7b f5 ff ff       	callq  400d70 <puts@plt>
  4017f5:	4c 89 e7             	mov    %r12,%rdi
  4017f8:	be 4c 26 40 00       	mov    $0x40264c,%esi
  4017fd:	e8 be f4 ff ff       	callq  400cc0 <strcpy@plt>
  401802:	4c 89 e7             	mov    %r12,%rdi
  401805:	e8 56 f4 ff ff       	callq  400c60 <strlen@plt>
  40180a:	48 85 c0             	test   %rax,%rax
  40180d:	74 1e                	je     40182d <_Z9read_linev+0xed>
  40180f:	90                   	nop
  401810:	48 83 e8 01          	sub    $0x1,%rax
  401814:	41 0f b6 14 04       	movzbl (%r12,%rax,1),%edx
  401819:	80 fa 0a             	cmp    $0xa,%dl
  40181c:	74 05                	je     401823 <_Z9read_linev+0xe3>
  40181e:	80 fa 0d             	cmp    $0xd,%dl
  401821:	75 0a                	jne    40182d <_Z9read_linev+0xed>
  401823:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  401828:	48 85 c0             	test   %rax,%rax
  40182b:	75 e3                	jne    401810 <_Z9read_linev+0xd0>
  40182d:	4c 89 e6             	mov    %r12,%rsi
  401830:	bf a0 50 60 00       	mov    $0x6050a0,%edi
  401835:	e8 86 f4 ff ff       	callq  400cc0 <strcpy@plt>
  40183a:	4c 89 e0             	mov    %r12,%rax
  40183d:	5b                   	pop    %rbx
  40183e:	41 5c                	pop    %r12
  401840:	5d                   	pop    %rbp
  401841:	c3                   	retq   
  401842:	bf 1c 26 40 00       	mov    $0x40261c,%edi
  401847:	e8 24 f5 ff ff       	callq  400d70 <puts@plt>
  40184c:	bf 08 00 00 00       	mov    $0x8,%edi
  401851:	e8 4a f5 ff ff       	callq  400da0 <_exit@plt>
  401856:	b9 ff 25 40 00       	mov    $0x4025ff,%ecx
  40185b:	ba c4 00 00 00       	mov    $0xc4,%edx
  401860:	be 11 26 40 00       	mov    $0x402611,%esi
  401865:	bf 38 25 40 00       	mov    $0x402538,%edi
  40186a:	e8 01 f4 ff ff       	callq  400c70 <__assert_fail@plt>
  40186f:	90                   	nop

0000000000401870 <_Z8send_msgi>:
  401870:	55                   	push   %rbp
  401871:	48 89 e5             	mov    %rsp,%rbp
  401874:	53                   	push   %rbx
  401875:	89 fb                	mov    %edi,%ebx
  401877:	bf a0 50 60 00       	mov    $0x6050a0,%edi
  40187c:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401883:	e8 d8 f3 ff ff       	callq  400c60 <strlen@plt>
  401888:	48 83 c0 64          	add    $0x64,%rax
  40188c:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401892:	77 7f                	ja     401913 <_Z8send_msgi+0xa3>
  401894:	85 db                	test   %ebx,%ebx
  401896:	b8 69 26 40 00       	mov    $0x402669,%eax
  40189b:	b9 61 26 40 00       	mov    $0x402661,%ecx
  4018a0:	8b 15 ee 2a 20 00    	mov    0x202aee(%rip),%edx        # 604394 <bomb_id>
  4018a6:	48 0f 44 c8          	cmove  %rax,%rcx
  4018aa:	8b 05 30 2b 20 00    	mov    0x202b30(%rip),%eax        # 6043e0 <ndefused>
  4018b0:	be 72 26 40 00       	mov    $0x402672,%esi
  4018b5:	48 8d bd f0 bf ff ff 	lea    -0x4010(%rbp),%rdi
  4018bc:	41 b9 a0 50 60 00    	mov    $0x6050a0,%r9d
  4018c2:	44 8d 40 01          	lea    0x1(%rax),%r8d
  4018c6:	31 c0                	xor    %eax,%eax
  4018c8:	e8 43 f3 ff ff       	callq  400c10 <sprintf@plt>
  4018cd:	31 c9                	xor    %ecx,%ecx
  4018cf:	be 70 43 60 00       	mov    $0x604370,%esi
  4018d4:	4c 8d 85 f0 df ff ff 	lea    -0x2010(%rbp),%r8
  4018db:	48 8d 95 f0 bf ff ff 	lea    -0x4010(%rbp),%rdx
  4018e2:	bf 88 43 60 00       	mov    $0x604388,%edi
  4018e7:	e8 e4 07 00 00       	callq  4020d0 <_Z11driver_postPcS_S_iS_>
  4018ec:	85 c0                	test   %eax,%eax
  4018ee:	78 10                	js     401900 <_Z8send_msgi+0x90>
  4018f0:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  4018f7:	5b                   	pop    %rbx
  4018f8:	5d                   	pop    %rbp
  4018f9:	c3                   	retq   
  4018fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401900:	48 8d bd f0 df ff ff 	lea    -0x2010(%rbp),%rdi
  401907:	e8 64 f4 ff ff       	callq  400d70 <puts@plt>
  40190c:	31 ff                	xor    %edi,%edi
  40190e:	e8 8d f4 ff ff       	callq  400da0 <_exit@plt>
  401913:	bf 60 25 40 00       	mov    $0x402560,%edi
  401918:	e8 53 f4 ff ff       	callq  400d70 <puts@plt>
  40191d:	bf 08 00 00 00       	mov    $0x8,%edi
  401922:	e8 79 f4 ff ff       	callq  400da0 <_exit@plt>
  401927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40192e:	00 00 

0000000000401930 <_Z12explode_bombv>:
  401930:	55                   	push   %rbp
  401931:	bf 7e 26 40 00       	mov    $0x40267e,%edi
  401936:	48 89 e5             	mov    %rsp,%rbp
  401939:	e8 32 f4 ff ff       	callq  400d70 <puts@plt>
  40193e:	bf 87 26 40 00       	mov    $0x402687,%edi
  401943:	e8 28 f4 ff ff       	callq  400d70 <puts@plt>
  401948:	31 ff                	xor    %edi,%edi
  40194a:	e8 21 ff ff ff       	callq  401870 <_Z8send_msgi>
  40194f:	bf 88 25 40 00       	mov    $0x402588,%edi
  401954:	e8 17 f4 ff ff       	callq  400d70 <puts@plt>
  401959:	bf 08 00 00 00       	mov    $0x8,%edi
  40195e:	e8 3d f4 ff ff       	callq  400da0 <_exit@plt>
  401963:	0f 1f 00             	nopl   (%rax)
  401966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40196d:	00 00 00 

0000000000401970 <_Z16read_six_numbersPKcPi>:
  401970:	55                   	push   %rbp
  401971:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401975:	48 89 f2             	mov    %rsi,%rdx
  401978:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  40197c:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401980:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401984:	48 89 e5             	mov    %rsp,%rbp
  401987:	50                   	push   %rax
  401988:	48 8d 46 10          	lea    0x10(%rsi),%rax
  40198c:	be 9e 26 40 00       	mov    $0x40269e,%esi
  401991:	50                   	push   %rax
  401992:	31 c0                	xor    %eax,%eax
  401994:	e8 e7 f2 ff ff       	callq  400c80 <sscanf@plt>
  401999:	5a                   	pop    %rdx
  40199a:	59                   	pop    %rcx
  40199b:	83 f8 05             	cmp    $0x5,%eax
  40199e:	7e 02                	jle    4019a2 <_Z16read_six_numbersPKcPi+0x32>
  4019a0:	c9                   	leaveq 
  4019a1:	c3                   	retq   
  4019a2:	e8 89 ff ff ff       	callq  401930 <_Z12explode_bombv>
  4019a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4019ae:	00 00 

00000000004019b0 <_Z13phase_defusedv>:
  4019b0:	55                   	push   %rbp
  4019b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019b6:	48 89 e5             	mov    %rsp,%rbp
  4019b9:	e8 b2 fe ff ff       	callq  401870 <_Z8send_msgi>
  4019be:	83 05 1b 2a 20 00 01 	addl   $0x1,0x202a1b(%rip)        # 6043e0 <ndefused>
  4019c5:	5d                   	pop    %rbp
  4019c6:	c3                   	retq   
  4019c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4019ce:	00 00 

00000000004019d0 <_Z15sigalrm_handleri>:
  4019d0:	55                   	push   %rbp
  4019d1:	48 8b 3d e8 29 20 00 	mov    0x2029e8(%rip),%rdi        # 6043c0 <stderr@@GLIBC_2.2.5>
  4019d8:	31 d2                	xor    %edx,%edx
  4019da:	be b0 26 40 00       	mov    $0x4026b0,%esi
  4019df:	31 c0                	xor    %eax,%eax
  4019e1:	48 89 e5             	mov    %rsp,%rbp
  4019e4:	e8 67 f3 ff ff       	callq  400d50 <fprintf@plt>
  4019e9:	bf 01 00 00 00       	mov    $0x1,%edi
  4019ee:	e8 ad f3 ff ff       	callq  400da0 <_exit@plt>
  4019f3:	0f 1f 00             	nopl   (%rax)
  4019f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4019fd:	00 00 00 

0000000000401a00 <_ZL13rio_readlinebP5rio_tPvm.constprop.0>:
  401a00:	55                   	push   %rbp
  401a01:	48 89 e5             	mov    %rsp,%rbp
  401a04:	41 57                	push   %r15
  401a06:	49 89 ff             	mov    %rdi,%r15
  401a09:	41 56                	push   %r14
  401a0b:	41 55                	push   %r13
  401a0d:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  401a13:	41 54                	push   %r12
  401a15:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  401a19:	53                   	push   %rbx
  401a1a:	48 89 f3             	mov    %rsi,%rbx
  401a1d:	48 83 ec 08          	sub    $0x8,%rsp
  401a21:	eb 3c                	jmp    401a5f <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0x5f>
  401a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a28:	85 c0                	test   %eax,%eax
  401a2a:	0f 84 80 00 00 00    	je     401ab0 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0xb0>
  401a30:	4d 89 67 08          	mov    %r12,0x8(%r15)
  401a34:	41 0f b6 06          	movzbl (%r14),%eax
  401a38:	83 ea 01             	sub    $0x1,%edx
  401a3b:	49 83 c6 01          	add    $0x1,%r14
  401a3f:	48 83 c3 01          	add    $0x1,%rbx
  401a43:	4d 89 77 08          	mov    %r14,0x8(%r15)
  401a47:	41 89 57 04          	mov    %edx,0x4(%r15)
  401a4b:	88 43 ff             	mov    %al,-0x1(%rbx)
  401a4e:	3c 0a                	cmp    $0xa,%al
  401a50:	74 66                	je     401ab8 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0xb8>
  401a52:	49 83 c5 01          	add    $0x1,%r13
  401a56:	49 81 fd 00 20 00 00 	cmp    $0x2000,%r13
  401a5d:	74 71                	je     401ad0 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0xd0>
  401a5f:	41 8b 57 04          	mov    0x4(%r15),%edx
  401a63:	4d 89 e6             	mov    %r12,%r14
  401a66:	85 d2                	test   %edx,%edx
  401a68:	7f 76                	jg     401ae0 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0xe0>
  401a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a70:	41 8b 3f             	mov    (%r15),%edi
  401a73:	ba 00 20 00 00       	mov    $0x2000,%edx
  401a78:	4c 89 e6             	mov    %r12,%rsi
  401a7b:	e8 e0 f2 ff ff       	callq  400d60 <read@plt>
  401a80:	41 89 47 04          	mov    %eax,0x4(%r15)
  401a84:	89 c2                	mov    %eax,%edx
  401a86:	85 c0                	test   %eax,%eax
  401a88:	79 9e                	jns    401a28 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0x28>
  401a8a:	e8 51 f1 ff ff       	callq  400be0 <__errno_location@plt>
  401a8f:	83 38 04             	cmpl   $0x4,(%rax)
  401a92:	74 dc                	je     401a70 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0x70>
  401a94:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a9b:	48 83 c4 08          	add    $0x8,%rsp
  401a9f:	5b                   	pop    %rbx
  401aa0:	41 5c                	pop    %r12
  401aa2:	41 5d                	pop    %r13
  401aa4:	41 5e                	pop    %r14
  401aa6:	41 5f                	pop    %r15
  401aa8:	5d                   	pop    %rbp
  401aa9:	c3                   	retq   
  401aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ab0:	31 c0                	xor    %eax,%eax
  401ab2:	49 83 fd 01          	cmp    $0x1,%r13
  401ab6:	74 e3                	je     401a9b <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0x9b>
  401ab8:	4c 89 e8             	mov    %r13,%rax
  401abb:	c6 03 00             	movb   $0x0,(%rbx)
  401abe:	48 83 c4 08          	add    $0x8,%rsp
  401ac2:	5b                   	pop    %rbx
  401ac3:	41 5c                	pop    %r12
  401ac5:	41 5d                	pop    %r13
  401ac7:	41 5e                	pop    %r14
  401ac9:	41 5f                	pop    %r15
  401acb:	5d                   	pop    %rbp
  401acc:	c3                   	retq   
  401acd:	0f 1f 00             	nopl   (%rax)
  401ad0:	b8 00 20 00 00       	mov    $0x2000,%eax
  401ad5:	eb e4                	jmp    401abb <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0xbb>
  401ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401ade:	00 00 
  401ae0:	4d 8b 77 08          	mov    0x8(%r15),%r14
  401ae4:	e9 4b ff ff ff       	jmpq   401a34 <_ZL13rio_readlinebP5rio_tPvm.constprop.0+0x34>
  401ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401af0 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc>:
  401af0:	55                   	push   %rbp
  401af1:	48 89 e5             	mov    %rsp,%rbp
  401af4:	41 57                	push   %r15
  401af6:	4d 89 cf             	mov    %r9,%r15
  401af9:	41 56                	push   %r14
  401afb:	49 89 ce             	mov    %rcx,%r14
  401afe:	41 55                	push   %r13
  401b00:	41 54                	push   %r12
  401b02:	53                   	push   %rbx
  401b03:	89 f3                	mov    %esi,%ebx
  401b05:	be 01 00 00 00       	mov    $0x1,%esi
  401b0a:	48 81 ec 58 c0 00 00 	sub    $0xc058,%rsp
  401b11:	48 89 bd 90 3f ff ff 	mov    %rdi,-0xc070(%rbp)
  401b18:	bf 02 00 00 00       	mov    $0x2,%edi
  401b1d:	4c 8b 6d 10          	mov    0x10(%rbp),%r13
  401b21:	48 89 95 98 3f ff ff 	mov    %rdx,-0xc068(%rbp)
  401b28:	31 d2                	xor    %edx,%edx
  401b2a:	4c 89 85 88 3f ff ff 	mov    %r8,-0xc078(%rbp)
  401b31:	c7 85 ac 3f ff ff 00 	movl   $0x0,-0xc054(%rbp)
  401b38:	00 00 00 
  401b3b:	e8 e0 f0 ff ff       	callq  400c20 <socket@plt>
  401b40:	4c 8b 95 90 3f ff ff 	mov    -0xc070(%rbp),%r10
  401b47:	85 c0                	test   %eax,%eax
  401b49:	0f 88 dc 03 00 00    	js     401f2b <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x43b>
  401b4f:	4c 89 d7             	mov    %r10,%rdi
  401b52:	41 89 c4             	mov    %eax,%r12d
  401b55:	e8 76 f1 ff ff       	callq  400cd0 <gethostbyname@plt>
  401b5a:	48 85 c0             	test   %rax,%rax
  401b5d:	0f 84 ea 03 00 00    	je     401f4d <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x45d>
  401b63:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401b67:	48 8b 40 18          	mov    0x18(%rax),%rax
  401b6b:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401b6f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401b74:	0f 29 85 b0 3f ff ff 	movaps %xmm0,-0xc050(%rbp)
  401b7b:	48 8d bd b4 3f ff ff 	lea    -0xc04c(%rbp),%rdi
  401b82:	48 8b 30             	mov    (%rax),%rsi
  401b85:	66 89 8d b0 3f ff ff 	mov    %cx,-0xc050(%rbp)
  401b8c:	66 c1 cb 08          	ror    $0x8,%bx
  401b90:	e8 fb f1 ff ff       	callq  400d90 <memmove@plt>
  401b95:	ba 10 00 00 00       	mov    $0x10,%edx
  401b9a:	44 89 e7             	mov    %r12d,%edi
  401b9d:	48 8d b5 b0 3f ff ff 	lea    -0xc050(%rbp),%rsi
  401ba4:	66 89 9d b2 3f ff ff 	mov    %bx,-0xc04e(%rbp)
  401bab:	e8 f0 f0 ff ff       	callq  400ca0 <connect@plt>
  401bb0:	85 c0                	test   %eax,%eax
  401bb2:	0f 88 9f 03 00 00    	js     401f57 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x467>
  401bb8:	4c 89 ef             	mov    %r13,%rdi
  401bbb:	e8 a0 f0 ff ff       	callq  400c60 <strlen@plt>
  401bc0:	48 8b bd 98 3f ff ff 	mov    -0xc068(%rbp),%rdi
  401bc7:	48 89 85 90 3f ff ff 	mov    %rax,-0xc070(%rbp)
  401bce:	e8 8d f0 ff ff       	callq  400c60 <strlen@plt>
  401bd3:	4c 89 f7             	mov    %r14,%rdi
  401bd6:	48 89 c3             	mov    %rax,%rbx
  401bd9:	e8 82 f0 ff ff       	callq  400c60 <strlen@plt>
  401bde:	4c 89 ff             	mov    %r15,%rdi
  401be1:	48 01 c3             	add    %rax,%rbx
  401be4:	e8 77 f0 ff ff       	callq  400c60 <strlen@plt>
  401be9:	48 8b 95 90 3f ff ff 	mov    -0xc070(%rbp),%rdx
  401bf0:	48 8d 84 03 80 00 00 	lea    0x80(%rbx,%rax,1),%rax
  401bf7:	00 
  401bf8:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  401bfc:	48 01 d0             	add    %rdx,%rax
  401bff:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401c05:	0f 87 f0 02 00 00    	ja     401efb <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x40b>
  401c0b:	4c 8d 8d c0 3f ff ff 	lea    -0xc040(%rbp),%r9
  401c12:	31 c0                	xor    %eax,%eax
  401c14:	b9 00 04 00 00       	mov    $0x400,%ecx
  401c19:	4c 89 cf             	mov    %r9,%rdi
  401c1c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401c1f:	4c 89 ef             	mov    %r13,%rdi
  401c22:	e8 39 f0 ff ff       	callq  400c60 <strlen@plt>
  401c27:	4c 8d 8d c0 3f ff ff 	lea    -0xc040(%rbp),%r9
  401c2e:	85 c0                	test   %eax,%eax
  401c30:	0f 84 b2 00 00 00    	je     401ce8 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x1f8>
  401c36:	49 ba d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r10
  401c3d:	00 20 00 
  401c40:	83 e8 01             	sub    $0x1,%eax
  401c43:	4c 89 cb             	mov    %r9,%rbx
  401c46:	49 8d 4c 05 01       	lea    0x1(%r13,%rax,1),%rcx
  401c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401c50:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  401c55:	8d 42 d6             	lea    -0x2a(%rdx),%eax
  401c58:	3c 35                	cmp    $0x35,%al
  401c5a:	0f 86 00 02 00 00    	jbe    401e60 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x370>
  401c60:	89 d0                	mov    %edx,%eax
  401c62:	83 e0 df             	and    $0xffffffdf,%eax
  401c65:	83 e8 41             	sub    $0x41,%eax
  401c68:	3c 19                	cmp    $0x19,%al
  401c6a:	0f 86 f6 01 00 00    	jbe    401e66 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x376>
  401c70:	80 fa 20             	cmp    $0x20,%dl
  401c73:	0f 84 6f 02 00 00    	je     401ee8 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3f8>
  401c79:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401c7c:	3c 5f                	cmp    $0x5f,%al
  401c7e:	76 09                	jbe    401c89 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x199>
  401c80:	80 fa 09             	cmp    $0x9,%dl
  401c83:	0f 85 6b 02 00 00    	jne    401ef4 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x404>
  401c89:	be 60 29 40 00       	mov    $0x402960,%esi
  401c8e:	31 c0                	xor    %eax,%eax
  401c90:	49 83 c5 01          	add    $0x1,%r13
  401c94:	48 83 c3 03          	add    $0x3,%rbx
  401c98:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401c9f:	48 89 8d 90 3f ff ff 	mov    %rcx,-0xc070(%rbp)
  401ca6:	e8 65 ef ff ff       	callq  400c10 <sprintf@plt>
  401cab:	0f b7 85 d0 bf ff ff 	movzwl -0x4030(%rbp),%eax
  401cb2:	48 8b 8d 90 3f ff ff 	mov    -0xc070(%rbp),%rcx
  401cb9:	49 ba d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r10
  401cc0:	00 20 00 
  401cc3:	4c 8d 8d c0 3f ff ff 	lea    -0xc040(%rbp),%r9
  401cca:	66 89 43 fd          	mov    %ax,-0x3(%rbx)
  401cce:	0f b6 85 d2 bf ff ff 	movzbl -0x402e(%rbp),%eax
  401cd5:	88 43 ff             	mov    %al,-0x1(%rbx)
  401cd8:	49 39 cd             	cmp    %rcx,%r13
  401cdb:	0f 85 6f ff ff ff    	jne    401c50 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x160>
  401ce1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ce8:	48 83 ec 08          	sub    $0x8,%rsp
  401cec:	48 8b 95 98 3f ff ff 	mov    -0xc068(%rbp),%rdx
  401cf3:	4c 89 f1             	mov    %r14,%rcx
  401cf6:	31 c0                	xor    %eax,%eax
  401cf8:	41 51                	push   %r9
  401cfa:	be e0 28 40 00       	mov    $0x4028e0,%esi
  401cff:	4d 89 f9             	mov    %r15,%r9
  401d02:	4c 8b 85 88 3f ff ff 	mov    -0xc078(%rbp),%r8
  401d09:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401d10:	e8 fb ee ff ff       	callq  400c10 <sprintf@plt>
  401d15:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401d1c:	e8 3f ef ff ff       	callq  400c60 <strlen@plt>
  401d21:	49 89 c6             	mov    %rax,%r14
  401d24:	58                   	pop    %rax
  401d25:	5a                   	pop    %rdx
  401d26:	4d 85 f6             	test   %r14,%r14
  401d29:	74 35                	je     401d60 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x270>
  401d2b:	4c 89 f3             	mov    %r14,%rbx
  401d2e:	4c 8d ad d0 bf ff ff 	lea    -0x4030(%rbp),%r13
  401d35:	0f 1f 00             	nopl   (%rax)
  401d38:	48 89 da             	mov    %rbx,%rdx
  401d3b:	4c 89 ee             	mov    %r13,%rsi
  401d3e:	44 89 e7             	mov    %r12d,%edi
  401d41:	e8 fa ee ff ff       	callq  400c40 <write@plt>
  401d46:	48 85 c0             	test   %rax,%rax
  401d49:	0f 8e 51 01 00 00    	jle    401ea0 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3b0>
  401d4f:	49 01 c5             	add    %rax,%r13
  401d52:	48 29 c3             	sub    %rax,%rbx
  401d55:	75 e1                	jne    401d38 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x248>
  401d57:	4d 85 f6             	test   %r14,%r14
  401d5a:	0f 88 4e 01 00 00    	js     401eae <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3be>
  401d60:	48 8d 85 d0 9f ff ff 	lea    -0x6030(%rbp),%rax
  401d67:	48 8d b5 d0 bf ff ff 	lea    -0x4030(%rbp),%rsi
  401d6e:	44 89 a5 c0 9f ff ff 	mov    %r12d,-0x6040(%rbp)
  401d75:	48 8d bd c0 9f ff ff 	lea    -0x6040(%rbp),%rdi
  401d7c:	48 89 85 c8 9f ff ff 	mov    %rax,-0x6038(%rbp)
  401d83:	c7 85 c4 9f ff ff 00 	movl   $0x0,-0x603c(%rbp)
  401d8a:	00 00 00 
  401d8d:	e8 6e fc ff ff       	callq  401a00 <_ZL13rio_readlinebP5rio_tPvm.constprop.0>
  401d92:	48 85 c0             	test   %rax,%rax
  401d95:	0f 8e a8 01 00 00    	jle    401f43 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x453>
  401d9b:	48 8d 95 c0 5f ff ff 	lea    -0xa040(%rbp),%rdx
  401da2:	4c 8d 85 c0 7f ff ff 	lea    -0x8040(%rbp),%r8
  401da9:	31 c0                	xor    %eax,%eax
  401dab:	be 67 29 40 00       	mov    $0x402967,%esi
  401db0:	48 8d 8d ac 3f ff ff 	lea    -0xc054(%rbp),%rcx
  401db7:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401dbe:	e8 bd ee ff ff       	callq  400c80 <sscanf@plt>
  401dc3:	8b 95 ac 3f ff ff    	mov    -0xc054(%rbp),%edx
  401dc9:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  401dcf:	74 1d                	je     401dee <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x2fe>
  401dd1:	e9 2c 01 00 00       	jmpq   401f02 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x412>
  401dd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ddd:	00 00 00 
  401de0:	e8 1b fc ff ff       	callq  401a00 <_ZL13rio_readlinebP5rio_tPvm.constprop.0>
  401de5:	48 85 c0             	test   %rax,%rax
  401de8:	0f 8e ca 00 00 00    	jle    401eb8 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3c8>
  401dee:	be 78 29 40 00       	mov    $0x402978,%esi
  401df3:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401dfa:	e8 31 ef ff ff       	callq  400d30 <strcmp@plt>
  401dff:	48 8d b5 d0 bf ff ff 	lea    -0x4030(%rbp),%rsi
  401e06:	48 8d bd c0 9f ff ff 	lea    -0x6040(%rbp),%rdi
  401e0d:	85 c0                	test   %eax,%eax
  401e0f:	75 cf                	jne    401de0 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x2f0>
  401e11:	e8 ea fb ff ff       	callq  401a00 <_ZL13rio_readlinebP5rio_tPvm.constprop.0>
  401e16:	48 85 c0             	test   %rax,%rax
  401e19:	0f 8e 42 01 00 00    	jle    401f61 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x471>
  401e1f:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  401e23:	48 8d b5 d0 bf ff ff 	lea    -0x4030(%rbp),%rsi
  401e2a:	e8 91 ee ff ff       	callq  400cc0 <strcpy@plt>
  401e2f:	44 89 e7             	mov    %r12d,%edi
  401e32:	e8 89 ef ff ff       	callq  400dc0 <close@plt>
  401e37:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  401e3b:	be 7b 29 40 00       	mov    $0x40297b,%esi
  401e40:	e8 eb ee ff ff       	callq  400d30 <strcmp@plt>
  401e45:	85 c0                	test   %eax,%eax
  401e47:	0f 95 c0             	setne  %al
  401e4a:	0f b6 c0             	movzbl %al,%eax
  401e4d:	f7 d8                	neg    %eax
  401e4f:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  401e53:	5b                   	pop    %rbx
  401e54:	41 5c                	pop    %r12
  401e56:	41 5d                	pop    %r13
  401e58:	41 5e                	pop    %r14
  401e5a:	41 5f                	pop    %r15
  401e5c:	5d                   	pop    %rbp
  401e5d:	c3                   	retq   
  401e5e:	66 90                	xchg   %ax,%ax
  401e60:	49 0f a3 c2          	bt     %rax,%r10
  401e64:	73 1a                	jae    401e80 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x390>
  401e66:	88 13                	mov    %dl,(%rbx)
  401e68:	48 83 c3 01          	add    $0x1,%rbx
  401e6c:	49 83 c5 01          	add    $0x1,%r13
  401e70:	49 39 cd             	cmp    %rcx,%r13
  401e73:	0f 85 d7 fd ff ff    	jne    401c50 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x160>
  401e79:	e9 6a fe ff ff       	jmpq   401ce8 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x1f8>
  401e7e:	66 90                	xchg   %ax,%ax
  401e80:	89 d0                	mov    %edx,%eax
  401e82:	83 e0 df             	and    $0xffffffdf,%eax
  401e85:	83 e8 41             	sub    $0x41,%eax
  401e88:	3c 19                	cmp    $0x19,%al
  401e8a:	76 da                	jbe    401e66 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x376>
  401e8c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401e8f:	3c 5f                	cmp    $0x5f,%al
  401e91:	0f 87 e9 fd ff ff    	ja     401c80 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x190>
  401e97:	e9 ed fd ff ff       	jmpq   401c89 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x199>
  401e9c:	0f 1f 40 00          	nopl   0x0(%rax)
  401ea0:	e8 3b ed ff ff       	callq  400be0 <__errno_location@plt>
  401ea5:	83 38 04             	cmpl   $0x4,(%rax)
  401ea8:	0f 84 8a fe ff ff    	je     401d38 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x248>
  401eae:	be 90 27 40 00       	mov    $0x402790,%esi
  401eb3:	eb 08                	jmp    401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401eb5:	0f 1f 00             	nopl   (%rax)
  401eb8:	be 28 28 40 00       	mov    $0x402828,%esi
  401ebd:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  401ec1:	e8 fa ed ff ff       	callq  400cc0 <strcpy@plt>
  401ec6:	44 89 e7             	mov    %r12d,%edi
  401ec9:	e8 f2 ee ff ff       	callq  400dc0 <close@plt>
  401ece:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  401ed2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ed7:	5b                   	pop    %rbx
  401ed8:	41 5c                	pop    %r12
  401eda:	41 5d                	pop    %r13
  401edc:	41 5e                	pop    %r14
  401ede:	41 5f                	pop    %r15
  401ee0:	5d                   	pop    %rbp
  401ee1:	c3                   	retq   
  401ee2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ee8:	c6 03 2b             	movb   $0x2b,(%rbx)
  401eeb:	48 83 c3 01          	add    $0x1,%rbx
  401eef:	e9 78 ff ff ff       	jmpq   401e6c <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x37c>
  401ef4:	be 98 28 40 00       	mov    $0x402898,%esi
  401ef9:	eb c2                	jmp    401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401efb:	be 58 27 40 00       	mov    $0x402758,%esi
  401f00:	eb bb                	jmp    401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401f02:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  401f06:	48 8d 8d c0 7f ff ff 	lea    -0x8040(%rbp),%rcx
  401f0d:	be f8 27 40 00       	mov    $0x4027f8,%esi
  401f12:	31 c0                	xor    %eax,%eax
  401f14:	e8 f7 ec ff ff       	callq  400c10 <sprintf@plt>
  401f19:	44 89 e7             	mov    %r12d,%edi
  401f1c:	e8 9f ee ff ff       	callq  400dc0 <close@plt>
  401f21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f26:	e9 24 ff ff ff       	jmpq   401e4f <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x35f>
  401f2b:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  401f2f:	be d8 26 40 00       	mov    $0x4026d8,%esi
  401f34:	e8 87 ed ff ff       	callq  400cc0 <strcpy@plt>
  401f39:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f3e:	e9 0c ff ff ff       	jmpq   401e4f <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x35f>
  401f43:	be c0 27 40 00       	mov    $0x4027c0,%esi
  401f48:	e9 70 ff ff ff       	jmpq   401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401f4d:	be 00 27 40 00       	mov    $0x402700,%esi
  401f52:	e9 66 ff ff ff       	jmpq   401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401f57:	be 30 27 40 00       	mov    $0x402730,%esi
  401f5c:	e9 5c ff ff ff       	jmpq   401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401f61:	be 60 28 40 00       	mov    $0x402860,%esi
  401f66:	e9 52 ff ff ff       	jmpq   401ebd <_Z7submitrPKciS0_S0_S0_S0_S0_Pc+0x3cd>
  401f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401f70 <_Z12init_timeouti>:
  401f70:	85 ff                	test   %edi,%edi
  401f72:	75 04                	jne    401f78 <_Z12init_timeouti+0x8>
  401f74:	c3                   	retq   
  401f75:	0f 1f 00             	nopl   (%rax)
  401f78:	55                   	push   %rbp
  401f79:	be d0 19 40 00       	mov    $0x4019d0,%esi
  401f7e:	48 89 e5             	mov    %rsp,%rbp
  401f81:	53                   	push   %rbx
  401f82:	89 fb                	mov    %edi,%ebx
  401f84:	bf 0e 00 00 00       	mov    $0xe,%edi
  401f89:	48 83 ec 08          	sub    $0x8,%rsp
  401f8d:	e8 5e ed ff ff       	callq  400cf0 <signal@plt>
  401f92:	85 db                	test   %ebx,%ebx
  401f94:	bf 00 00 00 00       	mov    $0x0,%edi
  401f99:	0f 49 fb             	cmovns %ebx,%edi
  401f9c:	48 83 c4 08          	add    $0x8,%rsp
  401fa0:	5b                   	pop    %rbx
  401fa1:	5d                   	pop    %rbp
  401fa2:	e9 09 ee ff ff       	jmpq   400db0 <alarm@plt>
  401fa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401fae:	00 00 

0000000000401fb0 <_Z11init_driverPc>:
  401fb0:	55                   	push   %rbp
  401fb1:	be 01 00 00 00       	mov    $0x1,%esi
  401fb6:	48 89 e5             	mov    %rsp,%rbp
  401fb9:	41 55                	push   %r13
  401fbb:	49 89 fd             	mov    %rdi,%r13
  401fbe:	bf 0d 00 00 00       	mov    $0xd,%edi
  401fc3:	41 54                	push   %r12
  401fc5:	48 83 ec 10          	sub    $0x10,%rsp
  401fc9:	e8 22 ed ff ff       	callq  400cf0 <signal@plt>
  401fce:	be 01 00 00 00       	mov    $0x1,%esi
  401fd3:	bf 1d 00 00 00       	mov    $0x1d,%edi
  401fd8:	e8 13 ed ff ff       	callq  400cf0 <signal@plt>
  401fdd:	be 01 00 00 00       	mov    $0x1,%esi
  401fe2:	bf 1d 00 00 00       	mov    $0x1d,%edi
  401fe7:	e8 04 ed ff ff       	callq  400cf0 <signal@plt>
  401fec:	31 d2                	xor    %edx,%edx
  401fee:	be 01 00 00 00       	mov    $0x1,%esi
  401ff3:	bf 02 00 00 00       	mov    $0x2,%edi
  401ff8:	e8 23 ec ff ff       	callq  400c20 <socket@plt>
  401ffd:	85 c0                	test   %eax,%eax
  401fff:	78 7a                	js     40207b <_Z11init_driverPc+0xcb>
  402001:	bf 7e 29 40 00       	mov    $0x40297e,%edi
  402006:	41 89 c4             	mov    %eax,%r12d
  402009:	e8 c2 ec ff ff       	callq  400cd0 <gethostbyname@plt>
  40200e:	48 85 c0             	test   %rax,%rax
  402011:	0f 84 9b 00 00 00    	je     4020b2 <_Z11init_driverPc+0x102>
  402017:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40201b:	ba 02 00 00 00       	mov    $0x2,%edx
  402020:	48 8d 7d e4          	lea    -0x1c(%rbp),%rdi
  402024:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
  402028:	66 89 55 e0          	mov    %dx,-0x20(%rbp)
  40202c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402030:	48 8b 40 18          	mov    0x18(%rax),%rax
  402034:	48 8b 30             	mov    (%rax),%rsi
  402037:	e8 54 ed ff ff       	callq  400d90 <memmove@plt>
  40203c:	b9 3b 6e 00 00       	mov    $0x6e3b,%ecx
  402041:	ba 10 00 00 00       	mov    $0x10,%edx
  402046:	44 89 e7             	mov    %r12d,%edi
  402049:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  40204d:	66 89 4d e2          	mov    %cx,-0x1e(%rbp)
  402051:	e8 4a ec ff ff       	callq  400ca0 <connect@plt>
  402056:	85 c0                	test   %eax,%eax
  402058:	78 35                	js     40208f <_Z11init_driverPc+0xdf>
  40205a:	44 89 e7             	mov    %r12d,%edi
  40205d:	e8 5e ed ff ff       	callq  400dc0 <close@plt>
  402062:	be 7b 29 40 00       	mov    $0x40297b,%esi
  402067:	4c 89 ef             	mov    %r13,%rdi
  40206a:	e8 51 ec ff ff       	callq  400cc0 <strcpy@plt>
  40206f:	31 c0                	xor    %eax,%eax
  402071:	48 83 c4 10          	add    $0x10,%rsp
  402075:	41 5c                	pop    %r12
  402077:	41 5d                	pop    %r13
  402079:	5d                   	pop    %rbp
  40207a:	c3                   	retq   
  40207b:	be d8 26 40 00       	mov    $0x4026d8,%esi
  402080:	4c 89 ef             	mov    %r13,%rdi
  402083:	e8 38 ec ff ff       	callq  400cc0 <strcpy@plt>
  402088:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40208d:	eb e2                	jmp    402071 <_Z11init_driverPc+0xc1>
  40208f:	ba 7e 29 40 00       	mov    $0x40297e,%edx
  402094:	be 38 29 40 00       	mov    $0x402938,%esi
  402099:	4c 89 ef             	mov    %r13,%rdi
  40209c:	31 c0                	xor    %eax,%eax
  40209e:	e8 6d eb ff ff       	callq  400c10 <sprintf@plt>
  4020a3:	44 89 e7             	mov    %r12d,%edi
  4020a6:	e8 15 ed ff ff       	callq  400dc0 <close@plt>
  4020ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020b0:	eb bf                	jmp    402071 <_Z11init_driverPc+0xc1>
  4020b2:	be 00 27 40 00       	mov    $0x402700,%esi
  4020b7:	4c 89 ef             	mov    %r13,%rdi
  4020ba:	e8 01 ec ff ff       	callq  400cc0 <strcpy@plt>
  4020bf:	44 89 e7             	mov    %r12d,%edi
  4020c2:	e8 f9 ec ff ff       	callq  400dc0 <close@plt>
  4020c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020cc:	eb a3                	jmp    402071 <_Z11init_driverPc+0xc1>
  4020ce:	66 90                	xchg   %ax,%ax

00000000004020d0 <_Z11driver_postPcS_S_iS_>:
  4020d0:	55                   	push   %rbp
  4020d1:	48 89 e5             	mov    %rsp,%rbp
  4020d4:	41 56                	push   %r14
  4020d6:	49 89 d6             	mov    %rdx,%r14
  4020d9:	41 55                	push   %r13
  4020db:	4d 89 c5             	mov    %r8,%r13
  4020de:	41 54                	push   %r12
  4020e0:	53                   	push   %rbx
  4020e1:	85 c9                	test   %ecx,%ecx
  4020e3:	75 3b                	jne    402120 <_Z11driver_postPcS_S_iS_+0x50>
  4020e5:	49 89 fc             	mov    %rdi,%r12
  4020e8:	48 85 ff             	test   %rdi,%rdi
  4020eb:	74 11                	je     4020fe <_Z11driver_postPcS_S_iS_+0x2e>
  4020ed:	48 89 f3             	mov    %rsi,%rbx
  4020f0:	be 7a 29 40 00       	mov    $0x40297a,%esi
  4020f5:	e8 36 ec ff ff       	callq  400d30 <strcmp@plt>
  4020fa:	85 c0                	test   %eax,%eax
  4020fc:	75 52                	jne    402150 <_Z11driver_postPcS_S_iS_+0x80>
  4020fe:	4c 89 ef             	mov    %r13,%rdi
  402101:	be 7b 29 40 00       	mov    $0x40297b,%esi
  402106:	e8 b5 eb ff ff       	callq  400cc0 <strcpy@plt>
  40210b:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  40210f:	31 c0                	xor    %eax,%eax
  402111:	5b                   	pop    %rbx
  402112:	41 5c                	pop    %r12
  402114:	41 5d                	pop    %r13
  402116:	41 5e                	pop    %r14
  402118:	5d                   	pop    %rbp
  402119:	c3                   	retq   
  40211a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402120:	48 89 d6             	mov    %rdx,%rsi
  402123:	bf 94 29 40 00       	mov    $0x402994,%edi
  402128:	31 c0                	xor    %eax,%eax
  40212a:	e8 c1 ea ff ff       	callq  400bf0 <printf@plt>
  40212f:	4c 89 ef             	mov    %r13,%rdi
  402132:	be 7b 29 40 00       	mov    $0x40297b,%esi
  402137:	e8 84 eb ff ff       	callq  400cc0 <strcpy@plt>
  40213c:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  402140:	31 c0                	xor    %eax,%eax
  402142:	5b                   	pop    %rbx
  402143:	41 5c                	pop    %r12
  402145:	41 5d                	pop    %r13
  402147:	41 5e                	pop    %r14
  402149:	5d                   	pop    %rbp
  40214a:	c3                   	retq   
  40214b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402150:	41 55                	push   %r13
  402152:	4c 89 e1             	mov    %r12,%rcx
  402155:	49 89 d8             	mov    %rbx,%r8
  402158:	ba b5 29 40 00       	mov    $0x4029b5,%edx
  40215d:	41 56                	push   %r14
  40215f:	41 b9 ab 29 40 00    	mov    $0x4029ab,%r9d
  402165:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  40216a:	bf 7e 29 40 00       	mov    $0x40297e,%edi
  40216f:	e8 7c f9 ff ff       	callq  401af0 <_Z7submitrPKciS0_S0_S0_S0_S0_Pc>
  402174:	5a                   	pop    %rdx
  402175:	59                   	pop    %rcx
  402176:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  40217a:	5b                   	pop    %rbx
  40217b:	41 5c                	pop    %r12
  40217d:	41 5d                	pop    %r13
  40217f:	41 5e                	pop    %r14
  402181:	5d                   	pop    %rbp
  402182:	c3                   	retq   
  402183:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40218a:	00 00 00 
  40218d:	0f 1f 00             	nopl   (%rax)

0000000000402190 <__libc_csu_init>:
  402190:	41 57                	push   %r15
  402192:	41 56                	push   %r14
  402194:	49 89 d7             	mov    %rdx,%r15
  402197:	41 55                	push   %r13
  402199:	41 54                	push   %r12
  40219b:	4c 8d 25 36 1c 20 00 	lea    0x201c36(%rip),%r12        # 603dd8 <__frame_dummy_init_array_entry>
  4021a2:	55                   	push   %rbp
  4021a3:	48 8d 2d 3e 1c 20 00 	lea    0x201c3e(%rip),%rbp        # 603de8 <__do_global_dtors_aux_fini_array_entry>
  4021aa:	53                   	push   %rbx
  4021ab:	41 89 fd             	mov    %edi,%r13d
  4021ae:	49 89 f6             	mov    %rsi,%r14
  4021b1:	4c 29 e5             	sub    %r12,%rbp
  4021b4:	48 83 ec 08          	sub    $0x8,%rsp
  4021b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4021bc:	e8 e7 e9 ff ff       	callq  400ba8 <_init>
  4021c1:	48 85 ed             	test   %rbp,%rbp
  4021c4:	74 18                	je     4021de <__libc_csu_init+0x4e>
  4021c6:	31 db                	xor    %ebx,%ebx
  4021c8:	4c 89 fa             	mov    %r15,%rdx
  4021cb:	4c 89 f6             	mov    %r14,%rsi
  4021ce:	44 89 ef             	mov    %r13d,%edi
  4021d1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4021d5:	48 83 c3 01          	add    $0x1,%rbx
  4021d9:	48 39 dd             	cmp    %rbx,%rbp
  4021dc:	75 ea                	jne    4021c8 <__libc_csu_init+0x38>
  4021de:	48 83 c4 08          	add    $0x8,%rsp
  4021e2:	5b                   	pop    %rbx
  4021e3:	5d                   	pop    %rbp
  4021e4:	41 5c                	pop    %r12
  4021e6:	41 5d                	pop    %r13
  4021e8:	41 5e                	pop    %r14
  4021ea:	41 5f                	pop    %r15
  4021ec:	c3                   	retq   
  4021ed:	0f 1f 00             	nopl   (%rax)

00000000004021f0 <__libc_csu_fini>:
  4021f0:	f3 c3                	repz retq 
  4021f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021f9:	00 00 00 
  4021fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402200 <atexit>:
  402200:	48 c7 c0 28 41 60 00 	mov    $0x604128,%rax
  402207:	31 d2                	xor    %edx,%edx
  402209:	48 85 c0             	test   %rax,%rax
  40220c:	74 03                	je     402211 <atexit+0x11>
  40220e:	48 8b 10             	mov    (%rax),%rdx
  402211:	31 f6                	xor    %esi,%esi
  402213:	e9 98 ea ff ff       	jmpq   400cb0 <__cxa_atexit@plt>

Disassembly of section .fini:

0000000000402218 <_fini>:
  402218:	48 83 ec 08          	sub    $0x8,%rsp
  40221c:	48 83 c4 08          	add    $0x8,%rsp
  402220:	c3                   	retq   
