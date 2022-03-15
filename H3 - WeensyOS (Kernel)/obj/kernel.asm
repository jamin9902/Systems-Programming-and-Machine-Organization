
obj/kernel.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000040000 <_kernel_start>:
   40000:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40007:	48 89 e5             	mov    %rsp,%rbp
   4000a:	6a 00                	pushq  $0x0
   4000c:	9d                   	popfq  
   4000d:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
   40012:	75 0d                	jne    40021 <_kernel_start+0x21>
   40014:	f7 03 04 00 00 00    	testl  $0x4,(%rbx)
   4001a:	74 05                	je     40021 <_kernel_start+0x21>
   4001c:	8b 7b 10             	mov    0x10(%rbx),%edi
   4001f:	eb 07                	jmp    40028 <_kernel_start+0x28>
   40021:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   40028:	e9 31 18 00 00       	jmpq   4185e <kernel_start(char const*)>

000000000004002d <exception_entry_0>:
   4002d:	6a 00                	pushq  $0x0
   4002f:	6a 00                	pushq  $0x0
   40031:	e9 3c 0a 00 00       	jmpq   40a72 <exception_entry()>

0000000000040036 <exception_entry_1>:
   40036:	6a 00                	pushq  $0x0
   40038:	6a 01                	pushq  $0x1
   4003a:	e9 33 0a 00 00       	jmpq   40a72 <exception_entry()>

000000000004003f <exception_entry_2>:
   4003f:	6a 00                	pushq  $0x0
   40041:	6a 02                	pushq  $0x2
   40043:	e9 2a 0a 00 00       	jmpq   40a72 <exception_entry()>

0000000000040048 <exception_entry_3>:
   40048:	6a 00                	pushq  $0x0
   4004a:	6a 03                	pushq  $0x3
   4004c:	e9 21 0a 00 00       	jmpq   40a72 <exception_entry()>

0000000000040051 <exception_entry_4>:
   40051:	6a 00                	pushq  $0x0
   40053:	6a 04                	pushq  $0x4
   40055:	e9 18 0a 00 00       	jmpq   40a72 <exception_entry()>

000000000004005a <exception_entry_5>:
   4005a:	6a 00                	pushq  $0x0
   4005c:	6a 05                	pushq  $0x5
   4005e:	e9 0f 0a 00 00       	jmpq   40a72 <exception_entry()>

0000000000040063 <exception_entry_6>:
   40063:	6a 00                	pushq  $0x0
   40065:	6a 06                	pushq  $0x6
   40067:	e9 06 0a 00 00       	jmpq   40a72 <exception_entry()>

000000000004006c <exception_entry_7>:
   4006c:	6a 00                	pushq  $0x0
   4006e:	6a 07                	pushq  $0x7
   40070:	e9 fd 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040075 <exception_entry_8>:
   40075:	6a 08                	pushq  $0x8
   40077:	e9 f6 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004007c <exception_entry_9>:
   4007c:	6a 00                	pushq  $0x0
   4007e:	6a 09                	pushq  $0x9
   40080:	e9 ed 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040085 <exception_entry_10>:
   40085:	6a 0a                	pushq  $0xa
   40087:	e9 e6 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004008c <exception_entry_11>:
   4008c:	6a 0b                	pushq  $0xb
   4008e:	e9 df 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040093 <exception_entry_12>:
   40093:	6a 0c                	pushq  $0xc
   40095:	e9 d8 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004009a <exception_entry_13>:
   4009a:	6a 0d                	pushq  $0xd
   4009c:	e9 d1 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400a1 <exception_entry_14>:
   400a1:	6a 0e                	pushq  $0xe
   400a3:	e9 ca 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400a8 <exception_entry_15>:
   400a8:	6a 00                	pushq  $0x0
   400aa:	6a 0f                	pushq  $0xf
   400ac:	e9 c1 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400b1 <exception_entry_16>:
   400b1:	6a 00                	pushq  $0x0
   400b3:	6a 10                	pushq  $0x10
   400b5:	e9 b8 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400ba <exception_entry_17>:
   400ba:	6a 11                	pushq  $0x11
   400bc:	e9 b1 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400c1 <exception_entry_18>:
   400c1:	6a 00                	pushq  $0x0
   400c3:	6a 12                	pushq  $0x12
   400c5:	e9 a8 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400ca <exception_entry_19>:
   400ca:	6a 00                	pushq  $0x0
   400cc:	6a 13                	pushq  $0x13
   400ce:	e9 9f 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400d3 <exception_entry_20>:
   400d3:	6a 00                	pushq  $0x0
   400d5:	6a 14                	pushq  $0x14
   400d7:	e9 96 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400dc <exception_entry_21>:
   400dc:	6a 00                	pushq  $0x0
   400de:	6a 15                	pushq  $0x15
   400e0:	e9 8d 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400e5 <exception_entry_22>:
   400e5:	6a 00                	pushq  $0x0
   400e7:	6a 16                	pushq  $0x16
   400e9:	e9 84 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400ee <exception_entry_23>:
   400ee:	6a 00                	pushq  $0x0
   400f0:	6a 17                	pushq  $0x17
   400f2:	e9 7b 09 00 00       	jmpq   40a72 <exception_entry()>

00000000000400f7 <exception_entry_24>:
   400f7:	6a 00                	pushq  $0x0
   400f9:	6a 18                	pushq  $0x18
   400fb:	e9 72 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040100 <exception_entry_25>:
   40100:	6a 00                	pushq  $0x0
   40102:	6a 19                	pushq  $0x19
   40104:	e9 69 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040109 <exception_entry_26>:
   40109:	6a 00                	pushq  $0x0
   4010b:	6a 1a                	pushq  $0x1a
   4010d:	e9 60 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040112 <exception_entry_27>:
   40112:	6a 00                	pushq  $0x0
   40114:	6a 1b                	pushq  $0x1b
   40116:	e9 57 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004011b <exception_entry_28>:
   4011b:	6a 00                	pushq  $0x0
   4011d:	6a 1c                	pushq  $0x1c
   4011f:	e9 4e 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040124 <exception_entry_29>:
   40124:	6a 00                	pushq  $0x0
   40126:	6a 1d                	pushq  $0x1d
   40128:	e9 45 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004012d <exception_entry_30>:
   4012d:	6a 00                	pushq  $0x0
   4012f:	6a 1e                	pushq  $0x1e
   40131:	e9 3c 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040136 <exception_entry_31>:
   40136:	6a 00                	pushq  $0x0
   40138:	6a 1f                	pushq  $0x1f
   4013a:	e9 33 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004013f <exception_entry_32>:
   4013f:	6a 00                	pushq  $0x0
   40141:	6a 20                	pushq  $0x20
   40143:	e9 2a 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040148 <exception_entry_33>:
   40148:	6a 00                	pushq  $0x0
   4014a:	6a 21                	pushq  $0x21
   4014c:	e9 21 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040151 <exception_entry_34>:
   40151:	6a 00                	pushq  $0x0
   40153:	6a 22                	pushq  $0x22
   40155:	e9 18 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004015a <exception_entry_35>:
   4015a:	6a 00                	pushq  $0x0
   4015c:	6a 23                	pushq  $0x23
   4015e:	e9 0f 09 00 00       	jmpq   40a72 <exception_entry()>

0000000000040163 <exception_entry_36>:
   40163:	6a 00                	pushq  $0x0
   40165:	6a 24                	pushq  $0x24
   40167:	e9 06 09 00 00       	jmpq   40a72 <exception_entry()>

000000000004016c <exception_entry_37>:
   4016c:	6a 00                	pushq  $0x0
   4016e:	6a 25                	pushq  $0x25
   40170:	e9 fd 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040175 <exception_entry_38>:
   40175:	6a 00                	pushq  $0x0
   40177:	6a 26                	pushq  $0x26
   40179:	e9 f4 08 00 00       	jmpq   40a72 <exception_entry()>

000000000004017e <exception_entry_39>:
   4017e:	6a 00                	pushq  $0x0
   40180:	6a 27                	pushq  $0x27
   40182:	e9 eb 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040187 <exception_entry_40>:
   40187:	6a 00                	pushq  $0x0
   40189:	6a 28                	pushq  $0x28
   4018b:	e9 e2 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040190 <exception_entry_41>:
   40190:	6a 00                	pushq  $0x0
   40192:	6a 29                	pushq  $0x29
   40194:	e9 d9 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040199 <exception_entry_42>:
   40199:	6a 00                	pushq  $0x0
   4019b:	6a 2a                	pushq  $0x2a
   4019d:	e9 d0 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401a2 <exception_entry_43>:
   401a2:	6a 00                	pushq  $0x0
   401a4:	6a 2b                	pushq  $0x2b
   401a6:	e9 c7 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401ab <exception_entry_44>:
   401ab:	6a 00                	pushq  $0x0
   401ad:	6a 2c                	pushq  $0x2c
   401af:	e9 be 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401b4 <exception_entry_45>:
   401b4:	6a 00                	pushq  $0x0
   401b6:	6a 2d                	pushq  $0x2d
   401b8:	e9 b5 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401bd <exception_entry_46>:
   401bd:	6a 00                	pushq  $0x0
   401bf:	6a 2e                	pushq  $0x2e
   401c1:	e9 ac 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401c6 <exception_entry_47>:
   401c6:	6a 00                	pushq  $0x0
   401c8:	6a 2f                	pushq  $0x2f
   401ca:	e9 a3 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401cf <exception_entry_48>:
   401cf:	6a 00                	pushq  $0x0
   401d1:	6a 30                	pushq  $0x30
   401d3:	e9 9a 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401d8 <exception_entry_49>:
   401d8:	6a 00                	pushq  $0x0
   401da:	6a 31                	pushq  $0x31
   401dc:	e9 91 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401e1 <exception_entry_50>:
   401e1:	6a 00                	pushq  $0x0
   401e3:	6a 32                	pushq  $0x32
   401e5:	e9 88 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401ea <exception_entry_51>:
   401ea:	6a 00                	pushq  $0x0
   401ec:	6a 33                	pushq  $0x33
   401ee:	e9 7f 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401f3 <exception_entry_52>:
   401f3:	6a 00                	pushq  $0x0
   401f5:	6a 34                	pushq  $0x34
   401f7:	e9 76 08 00 00       	jmpq   40a72 <exception_entry()>

00000000000401fc <exception_entry_53>:
   401fc:	6a 00                	pushq  $0x0
   401fe:	6a 35                	pushq  $0x35
   40200:	e9 6d 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040205 <exception_entry_54>:
   40205:	6a 00                	pushq  $0x0
   40207:	6a 36                	pushq  $0x36
   40209:	e9 64 08 00 00       	jmpq   40a72 <exception_entry()>

000000000004020e <exception_entry_55>:
   4020e:	6a 00                	pushq  $0x0
   40210:	6a 37                	pushq  $0x37
   40212:	e9 5b 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040217 <exception_entry_56>:
   40217:	6a 00                	pushq  $0x0
   40219:	6a 38                	pushq  $0x38
   4021b:	e9 52 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040220 <exception_entry_57>:
   40220:	6a 00                	pushq  $0x0
   40222:	6a 39                	pushq  $0x39
   40224:	e9 49 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040229 <exception_entry_58>:
   40229:	6a 00                	pushq  $0x0
   4022b:	6a 3a                	pushq  $0x3a
   4022d:	e9 40 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040232 <exception_entry_59>:
   40232:	6a 00                	pushq  $0x0
   40234:	6a 3b                	pushq  $0x3b
   40236:	e9 37 08 00 00       	jmpq   40a72 <exception_entry()>

000000000004023b <exception_entry_60>:
   4023b:	6a 00                	pushq  $0x0
   4023d:	6a 3c                	pushq  $0x3c
   4023f:	e9 2e 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040244 <exception_entry_61>:
   40244:	6a 00                	pushq  $0x0
   40246:	6a 3d                	pushq  $0x3d
   40248:	e9 25 08 00 00       	jmpq   40a72 <exception_entry()>

000000000004024d <exception_entry_62>:
   4024d:	6a 00                	pushq  $0x0
   4024f:	6a 3e                	pushq  $0x3e
   40251:	e9 1c 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040256 <exception_entry_63>:
   40256:	6a 00                	pushq  $0x0
   40258:	6a 3f                	pushq  $0x3f
   4025a:	e9 13 08 00 00       	jmpq   40a72 <exception_entry()>

000000000004025f <exception_entry_64>:
   4025f:	6a 00                	pushq  $0x0
   40261:	6a 40                	pushq  $0x40
   40263:	e9 0a 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040268 <exception_entry_65>:
   40268:	6a 00                	pushq  $0x0
   4026a:	6a 41                	pushq  $0x41
   4026c:	e9 01 08 00 00       	jmpq   40a72 <exception_entry()>

0000000000040271 <exception_entry_66>:
   40271:	6a 00                	pushq  $0x0
   40273:	6a 42                	pushq  $0x42
   40275:	e9 f8 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004027a <exception_entry_67>:
   4027a:	6a 00                	pushq  $0x0
   4027c:	6a 43                	pushq  $0x43
   4027e:	e9 ef 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040283 <exception_entry_68>:
   40283:	6a 00                	pushq  $0x0
   40285:	6a 44                	pushq  $0x44
   40287:	e9 e6 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004028c <exception_entry_69>:
   4028c:	6a 00                	pushq  $0x0
   4028e:	6a 45                	pushq  $0x45
   40290:	e9 dd 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040295 <exception_entry_70>:
   40295:	6a 00                	pushq  $0x0
   40297:	6a 46                	pushq  $0x46
   40299:	e9 d4 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004029e <exception_entry_71>:
   4029e:	6a 00                	pushq  $0x0
   402a0:	6a 47                	pushq  $0x47
   402a2:	e9 cb 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402a7 <exception_entry_72>:
   402a7:	6a 00                	pushq  $0x0
   402a9:	6a 48                	pushq  $0x48
   402ab:	e9 c2 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402b0 <exception_entry_73>:
   402b0:	6a 00                	pushq  $0x0
   402b2:	6a 49                	pushq  $0x49
   402b4:	e9 b9 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402b9 <exception_entry_74>:
   402b9:	6a 00                	pushq  $0x0
   402bb:	6a 4a                	pushq  $0x4a
   402bd:	e9 b0 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402c2 <exception_entry_75>:
   402c2:	6a 00                	pushq  $0x0
   402c4:	6a 4b                	pushq  $0x4b
   402c6:	e9 a7 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402cb <exception_entry_76>:
   402cb:	6a 00                	pushq  $0x0
   402cd:	6a 4c                	pushq  $0x4c
   402cf:	e9 9e 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402d4 <exception_entry_77>:
   402d4:	6a 00                	pushq  $0x0
   402d6:	6a 4d                	pushq  $0x4d
   402d8:	e9 95 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402dd <exception_entry_78>:
   402dd:	6a 00                	pushq  $0x0
   402df:	6a 4e                	pushq  $0x4e
   402e1:	e9 8c 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402e6 <exception_entry_79>:
   402e6:	6a 00                	pushq  $0x0
   402e8:	6a 4f                	pushq  $0x4f
   402ea:	e9 83 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402ef <exception_entry_80>:
   402ef:	6a 00                	pushq  $0x0
   402f1:	6a 50                	pushq  $0x50
   402f3:	e9 7a 07 00 00       	jmpq   40a72 <exception_entry()>

00000000000402f8 <exception_entry_81>:
   402f8:	6a 00                	pushq  $0x0
   402fa:	6a 51                	pushq  $0x51
   402fc:	e9 71 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040301 <exception_entry_82>:
   40301:	6a 00                	pushq  $0x0
   40303:	6a 52                	pushq  $0x52
   40305:	e9 68 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004030a <exception_entry_83>:
   4030a:	6a 00                	pushq  $0x0
   4030c:	6a 53                	pushq  $0x53
   4030e:	e9 5f 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040313 <exception_entry_84>:
   40313:	6a 00                	pushq  $0x0
   40315:	6a 54                	pushq  $0x54
   40317:	e9 56 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004031c <exception_entry_85>:
   4031c:	6a 00                	pushq  $0x0
   4031e:	6a 55                	pushq  $0x55
   40320:	e9 4d 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040325 <exception_entry_86>:
   40325:	6a 00                	pushq  $0x0
   40327:	6a 56                	pushq  $0x56
   40329:	e9 44 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004032e <exception_entry_87>:
   4032e:	6a 00                	pushq  $0x0
   40330:	6a 57                	pushq  $0x57
   40332:	e9 3b 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040337 <exception_entry_88>:
   40337:	6a 00                	pushq  $0x0
   40339:	6a 58                	pushq  $0x58
   4033b:	e9 32 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040340 <exception_entry_89>:
   40340:	6a 00                	pushq  $0x0
   40342:	6a 59                	pushq  $0x59
   40344:	e9 29 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040349 <exception_entry_90>:
   40349:	6a 00                	pushq  $0x0
   4034b:	6a 5a                	pushq  $0x5a
   4034d:	e9 20 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040352 <exception_entry_91>:
   40352:	6a 00                	pushq  $0x0
   40354:	6a 5b                	pushq  $0x5b
   40356:	e9 17 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004035b <exception_entry_92>:
   4035b:	6a 00                	pushq  $0x0
   4035d:	6a 5c                	pushq  $0x5c
   4035f:	e9 0e 07 00 00       	jmpq   40a72 <exception_entry()>

0000000000040364 <exception_entry_93>:
   40364:	6a 00                	pushq  $0x0
   40366:	6a 5d                	pushq  $0x5d
   40368:	e9 05 07 00 00       	jmpq   40a72 <exception_entry()>

000000000004036d <exception_entry_94>:
   4036d:	6a 00                	pushq  $0x0
   4036f:	6a 5e                	pushq  $0x5e
   40371:	e9 fc 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040376 <exception_entry_95>:
   40376:	6a 00                	pushq  $0x0
   40378:	6a 5f                	pushq  $0x5f
   4037a:	e9 f3 06 00 00       	jmpq   40a72 <exception_entry()>

000000000004037f <exception_entry_96>:
   4037f:	6a 00                	pushq  $0x0
   40381:	6a 60                	pushq  $0x60
   40383:	e9 ea 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040388 <exception_entry_97>:
   40388:	6a 00                	pushq  $0x0
   4038a:	6a 61                	pushq  $0x61
   4038c:	e9 e1 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040391 <exception_entry_98>:
   40391:	6a 00                	pushq  $0x0
   40393:	6a 62                	pushq  $0x62
   40395:	e9 d8 06 00 00       	jmpq   40a72 <exception_entry()>

000000000004039a <exception_entry_99>:
   4039a:	6a 00                	pushq  $0x0
   4039c:	6a 63                	pushq  $0x63
   4039e:	e9 cf 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403a3 <exception_entry_100>:
   403a3:	6a 00                	pushq  $0x0
   403a5:	6a 64                	pushq  $0x64
   403a7:	e9 c6 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403ac <exception_entry_101>:
   403ac:	6a 00                	pushq  $0x0
   403ae:	6a 65                	pushq  $0x65
   403b0:	e9 bd 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403b5 <exception_entry_102>:
   403b5:	6a 00                	pushq  $0x0
   403b7:	6a 66                	pushq  $0x66
   403b9:	e9 b4 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403be <exception_entry_103>:
   403be:	6a 00                	pushq  $0x0
   403c0:	6a 67                	pushq  $0x67
   403c2:	e9 ab 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403c7 <exception_entry_104>:
   403c7:	6a 00                	pushq  $0x0
   403c9:	6a 68                	pushq  $0x68
   403cb:	e9 a2 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403d0 <exception_entry_105>:
   403d0:	6a 00                	pushq  $0x0
   403d2:	6a 69                	pushq  $0x69
   403d4:	e9 99 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403d9 <exception_entry_106>:
   403d9:	6a 00                	pushq  $0x0
   403db:	6a 6a                	pushq  $0x6a
   403dd:	e9 90 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403e2 <exception_entry_107>:
   403e2:	6a 00                	pushq  $0x0
   403e4:	6a 6b                	pushq  $0x6b
   403e6:	e9 87 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403eb <exception_entry_108>:
   403eb:	6a 00                	pushq  $0x0
   403ed:	6a 6c                	pushq  $0x6c
   403ef:	e9 7e 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403f4 <exception_entry_109>:
   403f4:	6a 00                	pushq  $0x0
   403f6:	6a 6d                	pushq  $0x6d
   403f8:	e9 75 06 00 00       	jmpq   40a72 <exception_entry()>

00000000000403fd <exception_entry_110>:
   403fd:	6a 00                	pushq  $0x0
   403ff:	6a 6e                	pushq  $0x6e
   40401:	e9 6c 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040406 <exception_entry_111>:
   40406:	6a 00                	pushq  $0x0
   40408:	6a 6f                	pushq  $0x6f
   4040a:	e9 63 06 00 00       	jmpq   40a72 <exception_entry()>

000000000004040f <exception_entry_112>:
   4040f:	6a 00                	pushq  $0x0
   40411:	6a 70                	pushq  $0x70
   40413:	e9 5a 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040418 <exception_entry_113>:
   40418:	6a 00                	pushq  $0x0
   4041a:	6a 71                	pushq  $0x71
   4041c:	e9 51 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040421 <exception_entry_114>:
   40421:	6a 00                	pushq  $0x0
   40423:	6a 72                	pushq  $0x72
   40425:	e9 48 06 00 00       	jmpq   40a72 <exception_entry()>

000000000004042a <exception_entry_115>:
   4042a:	6a 00                	pushq  $0x0
   4042c:	6a 73                	pushq  $0x73
   4042e:	e9 3f 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040433 <exception_entry_116>:
   40433:	6a 00                	pushq  $0x0
   40435:	6a 74                	pushq  $0x74
   40437:	e9 36 06 00 00       	jmpq   40a72 <exception_entry()>

000000000004043c <exception_entry_117>:
   4043c:	6a 00                	pushq  $0x0
   4043e:	6a 75                	pushq  $0x75
   40440:	e9 2d 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040445 <exception_entry_118>:
   40445:	6a 00                	pushq  $0x0
   40447:	6a 76                	pushq  $0x76
   40449:	e9 24 06 00 00       	jmpq   40a72 <exception_entry()>

000000000004044e <exception_entry_119>:
   4044e:	6a 00                	pushq  $0x0
   40450:	6a 77                	pushq  $0x77
   40452:	e9 1b 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040457 <exception_entry_120>:
   40457:	6a 00                	pushq  $0x0
   40459:	6a 78                	pushq  $0x78
   4045b:	e9 12 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040460 <exception_entry_121>:
   40460:	6a 00                	pushq  $0x0
   40462:	6a 79                	pushq  $0x79
   40464:	e9 09 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040469 <exception_entry_122>:
   40469:	6a 00                	pushq  $0x0
   4046b:	6a 7a                	pushq  $0x7a
   4046d:	e9 00 06 00 00       	jmpq   40a72 <exception_entry()>

0000000000040472 <exception_entry_123>:
   40472:	6a 00                	pushq  $0x0
   40474:	6a 7b                	pushq  $0x7b
   40476:	e9 f7 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004047b <exception_entry_124>:
   4047b:	6a 00                	pushq  $0x0
   4047d:	6a 7c                	pushq  $0x7c
   4047f:	e9 ee 05 00 00       	jmpq   40a72 <exception_entry()>

0000000000040484 <exception_entry_125>:
   40484:	6a 00                	pushq  $0x0
   40486:	6a 7d                	pushq  $0x7d
   40488:	e9 e5 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004048d <exception_entry_126>:
   4048d:	6a 00                	pushq  $0x0
   4048f:	6a 7e                	pushq  $0x7e
   40491:	e9 dc 05 00 00       	jmpq   40a72 <exception_entry()>

0000000000040496 <exception_entry_127>:
   40496:	6a 00                	pushq  $0x0
   40498:	6a 7f                	pushq  $0x7f
   4049a:	e9 d3 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004049f <exception_entry_128>:
   4049f:	6a 00                	pushq  $0x0
   404a1:	68 80 00 00 00       	pushq  $0x80
   404a6:	e9 c7 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404ab <exception_entry_129>:
   404ab:	6a 00                	pushq  $0x0
   404ad:	68 81 00 00 00       	pushq  $0x81
   404b2:	e9 bb 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404b7 <exception_entry_130>:
   404b7:	6a 00                	pushq  $0x0
   404b9:	68 82 00 00 00       	pushq  $0x82
   404be:	e9 af 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404c3 <exception_entry_131>:
   404c3:	6a 00                	pushq  $0x0
   404c5:	68 83 00 00 00       	pushq  $0x83
   404ca:	e9 a3 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404cf <exception_entry_132>:
   404cf:	6a 00                	pushq  $0x0
   404d1:	68 84 00 00 00       	pushq  $0x84
   404d6:	e9 97 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404db <exception_entry_133>:
   404db:	6a 00                	pushq  $0x0
   404dd:	68 85 00 00 00       	pushq  $0x85
   404e2:	e9 8b 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404e7 <exception_entry_134>:
   404e7:	6a 00                	pushq  $0x0
   404e9:	68 86 00 00 00       	pushq  $0x86
   404ee:	e9 7f 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404f3 <exception_entry_135>:
   404f3:	6a 00                	pushq  $0x0
   404f5:	68 87 00 00 00       	pushq  $0x87
   404fa:	e9 73 05 00 00       	jmpq   40a72 <exception_entry()>

00000000000404ff <exception_entry_136>:
   404ff:	6a 00                	pushq  $0x0
   40501:	68 88 00 00 00       	pushq  $0x88
   40506:	e9 67 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004050b <exception_entry_137>:
   4050b:	6a 00                	pushq  $0x0
   4050d:	68 89 00 00 00       	pushq  $0x89
   40512:	e9 5b 05 00 00       	jmpq   40a72 <exception_entry()>

0000000000040517 <exception_entry_138>:
   40517:	6a 00                	pushq  $0x0
   40519:	68 8a 00 00 00       	pushq  $0x8a
   4051e:	e9 4f 05 00 00       	jmpq   40a72 <exception_entry()>

0000000000040523 <exception_entry_139>:
   40523:	6a 00                	pushq  $0x0
   40525:	68 8b 00 00 00       	pushq  $0x8b
   4052a:	e9 43 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004052f <exception_entry_140>:
   4052f:	6a 00                	pushq  $0x0
   40531:	68 8c 00 00 00       	pushq  $0x8c
   40536:	e9 37 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004053b <exception_entry_141>:
   4053b:	6a 00                	pushq  $0x0
   4053d:	68 8d 00 00 00       	pushq  $0x8d
   40542:	e9 2b 05 00 00       	jmpq   40a72 <exception_entry()>

0000000000040547 <exception_entry_142>:
   40547:	6a 00                	pushq  $0x0
   40549:	68 8e 00 00 00       	pushq  $0x8e
   4054e:	e9 1f 05 00 00       	jmpq   40a72 <exception_entry()>

0000000000040553 <exception_entry_143>:
   40553:	6a 00                	pushq  $0x0
   40555:	68 8f 00 00 00       	pushq  $0x8f
   4055a:	e9 13 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004055f <exception_entry_144>:
   4055f:	6a 00                	pushq  $0x0
   40561:	68 90 00 00 00       	pushq  $0x90
   40566:	e9 07 05 00 00       	jmpq   40a72 <exception_entry()>

000000000004056b <exception_entry_145>:
   4056b:	6a 00                	pushq  $0x0
   4056d:	68 91 00 00 00       	pushq  $0x91
   40572:	e9 fb 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040577 <exception_entry_146>:
   40577:	6a 00                	pushq  $0x0
   40579:	68 92 00 00 00       	pushq  $0x92
   4057e:	e9 ef 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040583 <exception_entry_147>:
   40583:	6a 00                	pushq  $0x0
   40585:	68 93 00 00 00       	pushq  $0x93
   4058a:	e9 e3 04 00 00       	jmpq   40a72 <exception_entry()>

000000000004058f <exception_entry_148>:
   4058f:	6a 00                	pushq  $0x0
   40591:	68 94 00 00 00       	pushq  $0x94
   40596:	e9 d7 04 00 00       	jmpq   40a72 <exception_entry()>

000000000004059b <exception_entry_149>:
   4059b:	6a 00                	pushq  $0x0
   4059d:	68 95 00 00 00       	pushq  $0x95
   405a2:	e9 cb 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405a7 <exception_entry_150>:
   405a7:	6a 00                	pushq  $0x0
   405a9:	68 96 00 00 00       	pushq  $0x96
   405ae:	e9 bf 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405b3 <exception_entry_151>:
   405b3:	6a 00                	pushq  $0x0
   405b5:	68 97 00 00 00       	pushq  $0x97
   405ba:	e9 b3 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405bf <exception_entry_152>:
   405bf:	6a 00                	pushq  $0x0
   405c1:	68 98 00 00 00       	pushq  $0x98
   405c6:	e9 a7 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405cb <exception_entry_153>:
   405cb:	6a 00                	pushq  $0x0
   405cd:	68 99 00 00 00       	pushq  $0x99
   405d2:	e9 9b 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405d7 <exception_entry_154>:
   405d7:	6a 00                	pushq  $0x0
   405d9:	68 9a 00 00 00       	pushq  $0x9a
   405de:	e9 8f 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405e3 <exception_entry_155>:
   405e3:	6a 00                	pushq  $0x0
   405e5:	68 9b 00 00 00       	pushq  $0x9b
   405ea:	e9 83 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405ef <exception_entry_156>:
   405ef:	6a 00                	pushq  $0x0
   405f1:	68 9c 00 00 00       	pushq  $0x9c
   405f6:	e9 77 04 00 00       	jmpq   40a72 <exception_entry()>

00000000000405fb <exception_entry_157>:
   405fb:	6a 00                	pushq  $0x0
   405fd:	68 9d 00 00 00       	pushq  $0x9d
   40602:	e9 6b 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040607 <exception_entry_158>:
   40607:	6a 00                	pushq  $0x0
   40609:	68 9e 00 00 00       	pushq  $0x9e
   4060e:	e9 5f 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040613 <exception_entry_159>:
   40613:	6a 00                	pushq  $0x0
   40615:	68 9f 00 00 00       	pushq  $0x9f
   4061a:	e9 53 04 00 00       	jmpq   40a72 <exception_entry()>

000000000004061f <exception_entry_160>:
   4061f:	6a 00                	pushq  $0x0
   40621:	68 a0 00 00 00       	pushq  $0xa0
   40626:	e9 47 04 00 00       	jmpq   40a72 <exception_entry()>

000000000004062b <exception_entry_161>:
   4062b:	6a 00                	pushq  $0x0
   4062d:	68 a1 00 00 00       	pushq  $0xa1
   40632:	e9 3b 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040637 <exception_entry_162>:
   40637:	6a 00                	pushq  $0x0
   40639:	68 a2 00 00 00       	pushq  $0xa2
   4063e:	e9 2f 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040643 <exception_entry_163>:
   40643:	6a 00                	pushq  $0x0
   40645:	68 a3 00 00 00       	pushq  $0xa3
   4064a:	e9 23 04 00 00       	jmpq   40a72 <exception_entry()>

000000000004064f <exception_entry_164>:
   4064f:	6a 00                	pushq  $0x0
   40651:	68 a4 00 00 00       	pushq  $0xa4
   40656:	e9 17 04 00 00       	jmpq   40a72 <exception_entry()>

000000000004065b <exception_entry_165>:
   4065b:	6a 00                	pushq  $0x0
   4065d:	68 a5 00 00 00       	pushq  $0xa5
   40662:	e9 0b 04 00 00       	jmpq   40a72 <exception_entry()>

0000000000040667 <exception_entry_166>:
   40667:	6a 00                	pushq  $0x0
   40669:	68 a6 00 00 00       	pushq  $0xa6
   4066e:	e9 ff 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040673 <exception_entry_167>:
   40673:	6a 00                	pushq  $0x0
   40675:	68 a7 00 00 00       	pushq  $0xa7
   4067a:	e9 f3 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004067f <exception_entry_168>:
   4067f:	6a 00                	pushq  $0x0
   40681:	68 a8 00 00 00       	pushq  $0xa8
   40686:	e9 e7 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004068b <exception_entry_169>:
   4068b:	6a 00                	pushq  $0x0
   4068d:	68 a9 00 00 00       	pushq  $0xa9
   40692:	e9 db 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040697 <exception_entry_170>:
   40697:	6a 00                	pushq  $0x0
   40699:	68 aa 00 00 00       	pushq  $0xaa
   4069e:	e9 cf 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406a3 <exception_entry_171>:
   406a3:	6a 00                	pushq  $0x0
   406a5:	68 ab 00 00 00       	pushq  $0xab
   406aa:	e9 c3 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406af <exception_entry_172>:
   406af:	6a 00                	pushq  $0x0
   406b1:	68 ac 00 00 00       	pushq  $0xac
   406b6:	e9 b7 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406bb <exception_entry_173>:
   406bb:	6a 00                	pushq  $0x0
   406bd:	68 ad 00 00 00       	pushq  $0xad
   406c2:	e9 ab 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406c7 <exception_entry_174>:
   406c7:	6a 00                	pushq  $0x0
   406c9:	68 ae 00 00 00       	pushq  $0xae
   406ce:	e9 9f 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406d3 <exception_entry_175>:
   406d3:	6a 00                	pushq  $0x0
   406d5:	68 af 00 00 00       	pushq  $0xaf
   406da:	e9 93 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406df <exception_entry_176>:
   406df:	6a 00                	pushq  $0x0
   406e1:	68 b0 00 00 00       	pushq  $0xb0
   406e6:	e9 87 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406eb <exception_entry_177>:
   406eb:	6a 00                	pushq  $0x0
   406ed:	68 b1 00 00 00       	pushq  $0xb1
   406f2:	e9 7b 03 00 00       	jmpq   40a72 <exception_entry()>

00000000000406f7 <exception_entry_178>:
   406f7:	6a 00                	pushq  $0x0
   406f9:	68 b2 00 00 00       	pushq  $0xb2
   406fe:	e9 6f 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040703 <exception_entry_179>:
   40703:	6a 00                	pushq  $0x0
   40705:	68 b3 00 00 00       	pushq  $0xb3
   4070a:	e9 63 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004070f <exception_entry_180>:
   4070f:	6a 00                	pushq  $0x0
   40711:	68 b4 00 00 00       	pushq  $0xb4
   40716:	e9 57 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004071b <exception_entry_181>:
   4071b:	6a 00                	pushq  $0x0
   4071d:	68 b5 00 00 00       	pushq  $0xb5
   40722:	e9 4b 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040727 <exception_entry_182>:
   40727:	6a 00                	pushq  $0x0
   40729:	68 b6 00 00 00       	pushq  $0xb6
   4072e:	e9 3f 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040733 <exception_entry_183>:
   40733:	6a 00                	pushq  $0x0
   40735:	68 b7 00 00 00       	pushq  $0xb7
   4073a:	e9 33 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004073f <exception_entry_184>:
   4073f:	6a 00                	pushq  $0x0
   40741:	68 b8 00 00 00       	pushq  $0xb8
   40746:	e9 27 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004074b <exception_entry_185>:
   4074b:	6a 00                	pushq  $0x0
   4074d:	68 b9 00 00 00       	pushq  $0xb9
   40752:	e9 1b 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040757 <exception_entry_186>:
   40757:	6a 00                	pushq  $0x0
   40759:	68 ba 00 00 00       	pushq  $0xba
   4075e:	e9 0f 03 00 00       	jmpq   40a72 <exception_entry()>

0000000000040763 <exception_entry_187>:
   40763:	6a 00                	pushq  $0x0
   40765:	68 bb 00 00 00       	pushq  $0xbb
   4076a:	e9 03 03 00 00       	jmpq   40a72 <exception_entry()>

000000000004076f <exception_entry_188>:
   4076f:	6a 00                	pushq  $0x0
   40771:	68 bc 00 00 00       	pushq  $0xbc
   40776:	e9 f7 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004077b <exception_entry_189>:
   4077b:	6a 00                	pushq  $0x0
   4077d:	68 bd 00 00 00       	pushq  $0xbd
   40782:	e9 eb 02 00 00       	jmpq   40a72 <exception_entry()>

0000000000040787 <exception_entry_190>:
   40787:	6a 00                	pushq  $0x0
   40789:	68 be 00 00 00       	pushq  $0xbe
   4078e:	e9 df 02 00 00       	jmpq   40a72 <exception_entry()>

0000000000040793 <exception_entry_191>:
   40793:	6a 00                	pushq  $0x0
   40795:	68 bf 00 00 00       	pushq  $0xbf
   4079a:	e9 d3 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004079f <exception_entry_192>:
   4079f:	6a 00                	pushq  $0x0
   407a1:	68 c0 00 00 00       	pushq  $0xc0
   407a6:	e9 c7 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407ab <exception_entry_193>:
   407ab:	6a 00                	pushq  $0x0
   407ad:	68 c1 00 00 00       	pushq  $0xc1
   407b2:	e9 bb 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407b7 <exception_entry_194>:
   407b7:	6a 00                	pushq  $0x0
   407b9:	68 c2 00 00 00       	pushq  $0xc2
   407be:	e9 af 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407c3 <exception_entry_195>:
   407c3:	6a 00                	pushq  $0x0
   407c5:	68 c3 00 00 00       	pushq  $0xc3
   407ca:	e9 a3 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407cf <exception_entry_196>:
   407cf:	6a 00                	pushq  $0x0
   407d1:	68 c4 00 00 00       	pushq  $0xc4
   407d6:	e9 97 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407db <exception_entry_197>:
   407db:	6a 00                	pushq  $0x0
   407dd:	68 c5 00 00 00       	pushq  $0xc5
   407e2:	e9 8b 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407e7 <exception_entry_198>:
   407e7:	6a 00                	pushq  $0x0
   407e9:	68 c6 00 00 00       	pushq  $0xc6
   407ee:	e9 7f 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407f3 <exception_entry_199>:
   407f3:	6a 00                	pushq  $0x0
   407f5:	68 c7 00 00 00       	pushq  $0xc7
   407fa:	e9 73 02 00 00       	jmpq   40a72 <exception_entry()>

00000000000407ff <exception_entry_200>:
   407ff:	6a 00                	pushq  $0x0
   40801:	68 c8 00 00 00       	pushq  $0xc8
   40806:	e9 67 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004080b <exception_entry_201>:
   4080b:	6a 00                	pushq  $0x0
   4080d:	68 c9 00 00 00       	pushq  $0xc9
   40812:	e9 5b 02 00 00       	jmpq   40a72 <exception_entry()>

0000000000040817 <exception_entry_202>:
   40817:	6a 00                	pushq  $0x0
   40819:	68 ca 00 00 00       	pushq  $0xca
   4081e:	e9 4f 02 00 00       	jmpq   40a72 <exception_entry()>

0000000000040823 <exception_entry_203>:
   40823:	6a 00                	pushq  $0x0
   40825:	68 cb 00 00 00       	pushq  $0xcb
   4082a:	e9 43 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004082f <exception_entry_204>:
   4082f:	6a 00                	pushq  $0x0
   40831:	68 cc 00 00 00       	pushq  $0xcc
   40836:	e9 37 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004083b <exception_entry_205>:
   4083b:	6a 00                	pushq  $0x0
   4083d:	68 cd 00 00 00       	pushq  $0xcd
   40842:	e9 2b 02 00 00       	jmpq   40a72 <exception_entry()>

0000000000040847 <exception_entry_206>:
   40847:	6a 00                	pushq  $0x0
   40849:	68 ce 00 00 00       	pushq  $0xce
   4084e:	e9 1f 02 00 00       	jmpq   40a72 <exception_entry()>

0000000000040853 <exception_entry_207>:
   40853:	6a 00                	pushq  $0x0
   40855:	68 cf 00 00 00       	pushq  $0xcf
   4085a:	e9 13 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004085f <exception_entry_208>:
   4085f:	6a 00                	pushq  $0x0
   40861:	68 d0 00 00 00       	pushq  $0xd0
   40866:	e9 07 02 00 00       	jmpq   40a72 <exception_entry()>

000000000004086b <exception_entry_209>:
   4086b:	6a 00                	pushq  $0x0
   4086d:	68 d1 00 00 00       	pushq  $0xd1
   40872:	e9 fb 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040877 <exception_entry_210>:
   40877:	6a 00                	pushq  $0x0
   40879:	68 d2 00 00 00       	pushq  $0xd2
   4087e:	e9 ef 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040883 <exception_entry_211>:
   40883:	6a 00                	pushq  $0x0
   40885:	68 d3 00 00 00       	pushq  $0xd3
   4088a:	e9 e3 01 00 00       	jmpq   40a72 <exception_entry()>

000000000004088f <exception_entry_212>:
   4088f:	6a 00                	pushq  $0x0
   40891:	68 d4 00 00 00       	pushq  $0xd4
   40896:	e9 d7 01 00 00       	jmpq   40a72 <exception_entry()>

000000000004089b <exception_entry_213>:
   4089b:	6a 00                	pushq  $0x0
   4089d:	68 d5 00 00 00       	pushq  $0xd5
   408a2:	e9 cb 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408a7 <exception_entry_214>:
   408a7:	6a 00                	pushq  $0x0
   408a9:	68 d6 00 00 00       	pushq  $0xd6
   408ae:	e9 bf 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408b3 <exception_entry_215>:
   408b3:	6a 00                	pushq  $0x0
   408b5:	68 d7 00 00 00       	pushq  $0xd7
   408ba:	e9 b3 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408bf <exception_entry_216>:
   408bf:	6a 00                	pushq  $0x0
   408c1:	68 d8 00 00 00       	pushq  $0xd8
   408c6:	e9 a7 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408cb <exception_entry_217>:
   408cb:	6a 00                	pushq  $0x0
   408cd:	68 d9 00 00 00       	pushq  $0xd9
   408d2:	e9 9b 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408d7 <exception_entry_218>:
   408d7:	6a 00                	pushq  $0x0
   408d9:	68 da 00 00 00       	pushq  $0xda
   408de:	e9 8f 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408e3 <exception_entry_219>:
   408e3:	6a 00                	pushq  $0x0
   408e5:	68 db 00 00 00       	pushq  $0xdb
   408ea:	e9 83 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408ef <exception_entry_220>:
   408ef:	6a 00                	pushq  $0x0
   408f1:	68 dc 00 00 00       	pushq  $0xdc
   408f6:	e9 77 01 00 00       	jmpq   40a72 <exception_entry()>

00000000000408fb <exception_entry_221>:
   408fb:	6a 00                	pushq  $0x0
   408fd:	68 dd 00 00 00       	pushq  $0xdd
   40902:	e9 6b 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040907 <exception_entry_222>:
   40907:	6a 00                	pushq  $0x0
   40909:	68 de 00 00 00       	pushq  $0xde
   4090e:	e9 5f 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040913 <exception_entry_223>:
   40913:	6a 00                	pushq  $0x0
   40915:	68 df 00 00 00       	pushq  $0xdf
   4091a:	e9 53 01 00 00       	jmpq   40a72 <exception_entry()>

000000000004091f <exception_entry_224>:
   4091f:	6a 00                	pushq  $0x0
   40921:	68 e0 00 00 00       	pushq  $0xe0
   40926:	e9 47 01 00 00       	jmpq   40a72 <exception_entry()>

000000000004092b <exception_entry_225>:
   4092b:	6a 00                	pushq  $0x0
   4092d:	68 e1 00 00 00       	pushq  $0xe1
   40932:	e9 3b 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040937 <exception_entry_226>:
   40937:	6a 00                	pushq  $0x0
   40939:	68 e2 00 00 00       	pushq  $0xe2
   4093e:	e9 2f 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040943 <exception_entry_227>:
   40943:	6a 00                	pushq  $0x0
   40945:	68 e3 00 00 00       	pushq  $0xe3
   4094a:	e9 23 01 00 00       	jmpq   40a72 <exception_entry()>

000000000004094f <exception_entry_228>:
   4094f:	6a 00                	pushq  $0x0
   40951:	68 e4 00 00 00       	pushq  $0xe4
   40956:	e9 17 01 00 00       	jmpq   40a72 <exception_entry()>

000000000004095b <exception_entry_229>:
   4095b:	6a 00                	pushq  $0x0
   4095d:	68 e5 00 00 00       	pushq  $0xe5
   40962:	e9 0b 01 00 00       	jmpq   40a72 <exception_entry()>

0000000000040967 <exception_entry_230>:
   40967:	6a 00                	pushq  $0x0
   40969:	68 e6 00 00 00       	pushq  $0xe6
   4096e:	e9 ff 00 00 00       	jmpq   40a72 <exception_entry()>

0000000000040973 <exception_entry_231>:
   40973:	6a 00                	pushq  $0x0
   40975:	68 e7 00 00 00       	pushq  $0xe7
   4097a:	e9 f3 00 00 00       	jmpq   40a72 <exception_entry()>

000000000004097f <exception_entry_232>:
   4097f:	6a 00                	pushq  $0x0
   40981:	68 e8 00 00 00       	pushq  $0xe8
   40986:	e9 e7 00 00 00       	jmpq   40a72 <exception_entry()>

000000000004098b <exception_entry_233>:
   4098b:	6a 00                	pushq  $0x0
   4098d:	68 e9 00 00 00       	pushq  $0xe9
   40992:	e9 db 00 00 00       	jmpq   40a72 <exception_entry()>

0000000000040997 <exception_entry_234>:
   40997:	6a 00                	pushq  $0x0
   40999:	68 ea 00 00 00       	pushq  $0xea
   4099e:	e9 cf 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409a3 <exception_entry_235>:
   409a3:	6a 00                	pushq  $0x0
   409a5:	68 eb 00 00 00       	pushq  $0xeb
   409aa:	e9 c3 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409af <exception_entry_236>:
   409af:	6a 00                	pushq  $0x0
   409b1:	68 ec 00 00 00       	pushq  $0xec
   409b6:	e9 b7 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409bb <exception_entry_237>:
   409bb:	6a 00                	pushq  $0x0
   409bd:	68 ed 00 00 00       	pushq  $0xed
   409c2:	e9 ab 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409c7 <exception_entry_238>:
   409c7:	6a 00                	pushq  $0x0
   409c9:	68 ee 00 00 00       	pushq  $0xee
   409ce:	e9 9f 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409d3 <exception_entry_239>:
   409d3:	6a 00                	pushq  $0x0
   409d5:	68 ef 00 00 00       	pushq  $0xef
   409da:	e9 93 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409df <exception_entry_240>:
   409df:	6a 00                	pushq  $0x0
   409e1:	68 f0 00 00 00       	pushq  $0xf0
   409e6:	e9 87 00 00 00       	jmpq   40a72 <exception_entry()>

00000000000409eb <exception_entry_241>:
   409eb:	6a 00                	pushq  $0x0
   409ed:	68 f1 00 00 00       	pushq  $0xf1
   409f2:	eb 7e                	jmp    40a72 <exception_entry()>

00000000000409f4 <exception_entry_242>:
   409f4:	6a 00                	pushq  $0x0
   409f6:	68 f2 00 00 00       	pushq  $0xf2
   409fb:	eb 75                	jmp    40a72 <exception_entry()>

00000000000409fd <exception_entry_243>:
   409fd:	6a 00                	pushq  $0x0
   409ff:	68 f3 00 00 00       	pushq  $0xf3
   40a04:	eb 6c                	jmp    40a72 <exception_entry()>

0000000000040a06 <exception_entry_244>:
   40a06:	6a 00                	pushq  $0x0
   40a08:	68 f4 00 00 00       	pushq  $0xf4
   40a0d:	eb 63                	jmp    40a72 <exception_entry()>

0000000000040a0f <exception_entry_245>:
   40a0f:	6a 00                	pushq  $0x0
   40a11:	68 f5 00 00 00       	pushq  $0xf5
   40a16:	eb 5a                	jmp    40a72 <exception_entry()>

0000000000040a18 <exception_entry_246>:
   40a18:	6a 00                	pushq  $0x0
   40a1a:	68 f6 00 00 00       	pushq  $0xf6
   40a1f:	eb 51                	jmp    40a72 <exception_entry()>

0000000000040a21 <exception_entry_247>:
   40a21:	6a 00                	pushq  $0x0
   40a23:	68 f7 00 00 00       	pushq  $0xf7
   40a28:	eb 48                	jmp    40a72 <exception_entry()>

0000000000040a2a <exception_entry_248>:
   40a2a:	6a 00                	pushq  $0x0
   40a2c:	68 f8 00 00 00       	pushq  $0xf8
   40a31:	eb 3f                	jmp    40a72 <exception_entry()>

0000000000040a33 <exception_entry_249>:
   40a33:	6a 00                	pushq  $0x0
   40a35:	68 f9 00 00 00       	pushq  $0xf9
   40a3a:	eb 36                	jmp    40a72 <exception_entry()>

0000000000040a3c <exception_entry_250>:
   40a3c:	6a 00                	pushq  $0x0
   40a3e:	68 fa 00 00 00       	pushq  $0xfa
   40a43:	eb 2d                	jmp    40a72 <exception_entry()>

0000000000040a45 <exception_entry_251>:
   40a45:	6a 00                	pushq  $0x0
   40a47:	68 fb 00 00 00       	pushq  $0xfb
   40a4c:	eb 24                	jmp    40a72 <exception_entry()>

0000000000040a4e <exception_entry_252>:
   40a4e:	6a 00                	pushq  $0x0
   40a50:	68 fc 00 00 00       	pushq  $0xfc
   40a55:	eb 1b                	jmp    40a72 <exception_entry()>

0000000000040a57 <exception_entry_253>:
   40a57:	6a 00                	pushq  $0x0
   40a59:	68 fd 00 00 00       	pushq  $0xfd
   40a5e:	eb 12                	jmp    40a72 <exception_entry()>

0000000000040a60 <exception_entry_254>:
   40a60:	6a 00                	pushq  $0x0
   40a62:	68 fe 00 00 00       	pushq  $0xfe
   40a67:	eb 09                	jmp    40a72 <exception_entry()>

0000000000040a69 <exception_entry_255>:
   40a69:	6a 00                	pushq  $0x0
   40a6b:	68 ff 00 00 00       	pushq  $0xff
   40a70:	eb 00                	jmp    40a72 <exception_entry()>

0000000000040a72 <exception_entry()>:
   40a72:	0f a8                	pushq  %gs
   40a74:	0f a0                	pushq  %fs
   40a76:	41 57                	push   %r15
   40a78:	41 56                	push   %r14
   40a7a:	41 55                	push   %r13
   40a7c:	41 54                	push   %r12
   40a7e:	41 53                	push   %r11
   40a80:	41 52                	push   %r10
   40a82:	41 51                	push   %r9
   40a84:	41 50                	push   %r8
   40a86:	57                   	push   %rdi
   40a87:	56                   	push   %rsi
   40a88:	55                   	push   %rbp
   40a89:	53                   	push   %rbx
   40a8a:	52                   	push   %rdx
   40a8b:	51                   	push   %rcx
   40a8c:	50                   	push   %rax
   40a8d:	48 89 e7             	mov    %rsp,%rdi
   40a90:	48 c7 c0 00 60 05 00 	mov    $0x56000,%rax
   40a97:	0f 22 d8             	mov    %rax,%cr3
   40a9a:	e8 56 11 00 00       	callq  41bf5 <exception(regstate*)>

0000000000040a9f <exception_return(proc*)>:
   40a9f:	8b 47 0c             	mov    0xc(%rdi),%eax
   40aa2:	83 f8 01             	cmp    $0x1,%eax
   40aa5:	0f 85 a4 00 00 00    	jne    40b4f <proc_runnable_fail>
   40aab:	48 8b 07             	mov    (%rdi),%rax
   40aae:	0f 22 d8             	mov    %rax,%cr3
   40ab1:	48 8d 67 10          	lea    0x10(%rdi),%rsp
   40ab5:	58                   	pop    %rax
   40ab6:	59                   	pop    %rcx
   40ab7:	5a                   	pop    %rdx
   40ab8:	5b                   	pop    %rbx
   40ab9:	5d                   	pop    %rbp
   40aba:	5e                   	pop    %rsi
   40abb:	5f                   	pop    %rdi
   40abc:	41 58                	pop    %r8
   40abe:	41 59                	pop    %r9
   40ac0:	41 5a                	pop    %r10
   40ac2:	41 5b                	pop    %r11
   40ac4:	41 5c                	pop    %r12
   40ac6:	41 5d                	pop    %r13
   40ac8:	41 5e                	pop    %r14
   40aca:	41 5f                	pop    %r15
   40acc:	0f a1                	popq   %fs
   40ace:	0f a9                	popq   %gs
   40ad0:	48 83 c4 10          	add    $0x10,%rsp
   40ad4:	48 cf                	iretq  

0000000000040ad6 <syscall_entry()>:
   40ad6:	48 89 24 25 f0 ff 07 	mov    %rsp,0x7fff0
   40add:	00 
   40ade:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40ae5:	6a 23                	pushq  $0x23
   40ae7:	48 83 ec 08          	sub    $0x8,%rsp
   40aeb:	41 53                	push   %r11
   40aed:	6a 1b                	pushq  $0x1b
   40aef:	51                   	push   %rcx
   40af0:	48 83 ec 08          	sub    $0x8,%rsp
   40af4:	6a ff                	pushq  $0xffffffffffffffff
   40af6:	0f a8                	pushq  %gs
   40af8:	0f a0                	pushq  %fs
   40afa:	41 57                	push   %r15
   40afc:	41 56                	push   %r14
   40afe:	41 55                	push   %r13
   40b00:	41 54                	push   %r12
   40b02:	48 83 ec 08          	sub    $0x8,%rsp
   40b06:	41 52                	push   %r10
   40b08:	41 51                	push   %r9
   40b0a:	41 50                	push   %r8
   40b0c:	57                   	push   %rdi
   40b0d:	56                   	push   %rsi
   40b0e:	55                   	push   %rbp
   40b0f:	53                   	push   %rbx
   40b10:	52                   	push   %rdx
   40b11:	48 83 ec 08          	sub    $0x8,%rsp
   40b15:	50                   	push   %rax
   40b16:	48 c7 c0 00 60 05 00 	mov    $0x56000,%rax
   40b1d:	0f 22 d8             	mov    %rax,%cr3
   40b20:	48 89 e7             	mov    %rsp,%rdi
   40b23:	e8 d7 11 00 00       	callq  41cff <syscall(regstate*)>
   40b28:	48 8b 0c 25 00 42 05 	mov    0x54200,%rcx
   40b2f:	00 
   40b30:	8b 49 0c             	mov    0xc(%rcx),%ecx
   40b33:	83 f9 01             	cmp    $0x1,%ecx
   40b36:	75 17                	jne    40b4f <proc_runnable_fail>
   40b38:	48 8b 0c 25 00 42 05 	mov    0x54200,%rcx
   40b3f:	00 
   40b40:	48 8b 09             	mov    (%rcx),%rcx
   40b43:	0f 22 d9             	mov    %rcx,%cr3
   40b46:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   40b4d:	48 cf                	iretq  

0000000000040b4f <proc_runnable_fail>:
   40b4f:	31 c9                	xor    %ecx,%ecx
   40b51:	48 c7 c2 ce 50 04 00 	mov    $0x450ce,%rdx
   40b58:	31 f6                	xor    %esi,%esi
   40b5a:	48 c7 c7 c0 50 04 00 	mov    $0x450c0,%rdi
   40b61:	e8 55 1f 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>

0000000000040b66 <kalloc(unsigned long)>:
//    It checks all pages. (You could maybe make this faster!)
//
//    The returned memory is initially filled with 0xCC, which corresponds to
//    the x86 instruction `int3`. This may help you debug.

void* kalloc(size_t sz) {
   40b66:	f3 0f 1e fa          	endbr64 
   40b6a:	55                   	push   %rbp
   40b6b:	48 89 e5             	mov    %rsp,%rbp
   40b6e:	41 54                	push   %r12
   40b70:	53                   	push   %rbx
    if (sz > PAGESIZE) {
   40b71:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
   40b78:	77 5f                	ja     40bd9 <kalloc(unsigned long)+0x73>
        return nullptr;
    }

    for (uintptr_t pa = 0; pa != MEMSIZE_PHYSICAL; pa += PAGESIZE) {
   40b7a:	bb 00 00 00 00       	mov    $0x0,%ebx
   40b7f:	eb 10                	jmp    40b91 <kalloc(unsigned long)+0x2b>
   40b81:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
   40b88:	48 81 fb 00 00 20 00 	cmp    $0x200000,%rbx
   40b8f:	74 40                	je     40bd1 <kalloc(unsigned long)+0x6b>
        if (allocatable_physical_address(pa)
   40b91:	48 89 df             	mov    %rbx,%rdi
   40b94:	e8 5e 19 00 00       	callq  424f7 <allocatable_physical_address(unsigned long)>
            && physpages[pa / PAGESIZE].refcount == 0) {
   40b99:	84 c0                	test   %al,%al
   40b9b:	74 e4                	je     40b81 <kalloc(unsigned long)+0x1b>
   40b9d:	48 89 d8             	mov    %rbx,%rax
   40ba0:	48 c1 e8 0c          	shr    $0xc,%rax
   40ba4:	80 b8 00 40 05 00 00 	cmpb   $0x0,0x54000(%rax)
   40bab:	75 d4                	jne    40b81 <kalloc(unsigned long)+0x1b>
            ++physpages[pa / PAGESIZE].refcount;
   40bad:	c6 80 00 40 05 00 01 	movb   $0x1,0x54000(%rax)
            memset((void*) pa, 0xCC, PAGESIZE);
   40bb4:	49 89 dc             	mov    %rbx,%r12
   40bb7:	ba 00 10 00 00       	mov    $0x1000,%edx
   40bbc:	be cc 00 00 00       	mov    $0xcc,%esi
   40bc1:	48 89 df             	mov    %rbx,%rdi
   40bc4:	e8 ff 38 00 00       	callq  444c8 <memset>
            return (void*) pa;
        }
    }
    return nullptr;
}
   40bc9:	4c 89 e0             	mov    %r12,%rax
   40bcc:	5b                   	pop    %rbx
   40bcd:	41 5c                	pop    %r12
   40bcf:	5d                   	pop    %rbp
   40bd0:	c3                   	retq   
    return nullptr;
   40bd1:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40bd7:	eb f0                	jmp    40bc9 <kalloc(unsigned long)+0x63>
        return nullptr;
   40bd9:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40bdf:	eb e8                	jmp    40bc9 <kalloc(unsigned long)+0x63>

0000000000040be1 <process_setup(int, char const*)>:
// process_setup(pid, program_name)
//    Load application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
   40be1:	55                   	push   %rbp
   40be2:	48 89 e5             	mov    %rsp,%rbp
   40be5:	41 57                	push   %r15
   40be7:	41 56                	push   %r14
   40be9:	41 55                	push   %r13
   40beb:	41 54                	push   %r12
   40bed:	53                   	push   %rbx
   40bee:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   40bf5:	41 89 ff             	mov    %edi,%r15d
   40bf8:	49 89 f5             	mov    %rsi,%r13
    init_process(&ptable[pid], 0);
   40bfb:	4c 63 e7             	movslq %edi,%r12
   40bfe:	4b 8d 1c 64          	lea    (%r12,%r12,2),%rbx
   40c02:	48 c1 e3 02          	shl    $0x2,%rbx
   40c06:	4a 8d 3c 23          	lea    (%rbx,%r12,1),%rdi
   40c0a:	48 c1 e7 04          	shl    $0x4,%rdi
   40c0e:	48 81 c7 20 42 05 00 	add    $0x54220,%rdi
   40c15:	be 00 00 00 00       	mov    $0x0,%esi
   40c1a:	e8 35 19 00 00       	callq  42554 <init_process(proc*, int)>

    // initialize process page table
    ptable[pid].pagetable = kalloc_pagetable();
   40c1f:	e8 77 18 00 00       	callq  4249b <kalloc_pagetable()>
   40c24:	48 89 c2             	mov    %rax,%rdx
   40c27:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   40c2b:	48 c1 e0 04          	shl    $0x4,%rax
   40c2f:	48 89 90 20 42 05 00 	mov    %rdx,0x54220(%rax)

    // obtain reference to the program image
    program_image pgm(program_name);
   40c36:	4c 89 ee             	mov    %r13,%rsi
   40c39:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   40c3d:	e8 74 2b 00 00       	callq  437b6 <program_image::program_image(char const*)>
    void down(bool skip);
};


inline vmiter::vmiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40c42:	48 c7 85 48 ff ff ff 	movq   $0x56000,-0xb8(%rbp)
   40c49:	00 60 05 00 
   40c4d:	48 c7 85 50 ff ff ff 	movq   $0x56000,-0xb0(%rbp)
   40c54:	00 60 05 00 
   40c58:	c7 85 58 ff ff ff 03 	movl   $0x3,-0xa8(%rbp)
   40c5f:	00 00 00 
   40c62:	c7 85 5c ff ff ff ff 	movl   $0xfff,-0xa4(%rbp)
   40c69:	0f 00 00 
   40c6c:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
   40c73:	00 00 00 00 
    real_find(va);
   40c77:	be 00 00 00 00       	mov    $0x0,%esi
   40c7c:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40c83:	e8 ba 11 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>

    // copy kernel page table mappings to process page table
    for (vmiter kit(kernel_pagetable), pit(ptable[pid].pagetable);
   40c88:	4c 01 e3             	add    %r12,%rbx
   40c8b:	48 c1 e3 04          	shl    $0x4,%rbx
   40c8f:	48 8b 83 20 42 05 00 	mov    0x54220(%rbx),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40c96:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
   40c9d:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   40ca4:	c7 85 78 ff ff ff 03 	movl   $0x3,-0x88(%rbp)
   40cab:	00 00 00 
   40cae:	c7 85 7c ff ff ff ff 	movl   $0xfff,-0x84(%rbp)
   40cb5:	0f 00 00 
   40cb8:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
   40cbf:	00 
    real_find(va);
   40cc0:	be 00 00 00 00       	mov    $0x0,%esi
   40cc5:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   40ccc:	e8 71 11 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
}
inline vmiter::vmiter(const proc* p, uintptr_t va)
    : vmiter(p->pagetable, va) {
}
inline uintptr_t vmiter::va() const {
    return va_;
   40cd1:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
         kit.va() < PROC_START_ADDR;
   40cd8:	48 81 ff ff ff 0f 00 	cmp    $0xfffff,%rdi
   40cdf:	0f 87 e5 00 00 00    	ja     40dca <process_setup(int, char const*)+0x1e9>
        if (level_ > 0) {
            pa &= ~0x1000UL;
        }
        return pa + (va_ & pageoffmask(level_));
    } else {
        return -1;
   40ce5:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
            pa &= ~0x1000UL;
   40cec:	49 bc 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r12
   40cf3:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40cf6:	49 bd 00 f0 ff ff ff 	movabs $0xffffffffff000,%r13
   40cfd:	ff 0f 00 
   40d00:	eb 55                	jmp    40d57 <process_setup(int, char const*)+0x176>
}
inline void vmiter::next_range() {
    real_find(last_va());
}
inline void vmiter::map(uintptr_t pa, int perm) {
    int r = try_map(pa, perm);
   40d02:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   40d09:	e8 4c 13 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   40d0e:	85 c0                	test   %eax,%eax
   40d10:	0f 85 9b 00 00 00    	jne    40db1 <process_setup(int, char const*)+0x1d0>
    return find(va_ + delta);
   40d16:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
   40d1d:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   40d24:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40d2b:	e8 12 11 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return find(va_ + delta);
   40d30:	48 8b 45 80          	mov    -0x80(%rbp),%rax
   40d34:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   40d3b:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   40d42:	e8 fb 10 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   40d47:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
   40d4e:	48 81 ff ff ff 0f 00 	cmp    $0xfffff,%rdi
   40d55:	77 73                	ja     40dca <process_setup(int, char const*)+0x1e9>
    uint64_t ph = *pep_ & perm_;
   40d57:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
   40d5e:	48 8b 00             	mov    (%rax),%rax
   40d61:	48 63 95 5c ff ff ff 	movslq -0xa4(%rbp),%rdx
   40d68:	48 89 d1             	mov    %rdx,%rcx
   40d6b:	48 21 c1             	and    %rax,%rcx
    return ph & -(ph & PTE_P);
   40d6e:	48 89 ca             	mov    %rcx,%rdx
   40d71:	83 e2 01             	and    $0x1,%edx
   40d74:	48 f7 da             	neg    %rdx
   40d77:	48 21 ca             	and    %rcx,%rdx
        return -1;
   40d7a:	48 89 de             	mov    %rbx,%rsi
    if (*pep_ & PTE_P) {
   40d7d:	a8 01                	test   $0x1,%al
   40d7f:	74 81                	je     40d02 <process_setup(int, char const*)+0x121>
        if (level_ > 0) {
   40d81:	8b 8d 58 ff ff ff    	mov    -0xa8(%rbp),%ecx
            pa &= ~0x1000UL;
   40d87:	48 89 c6             	mov    %rax,%rsi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40d8a:	4c 21 ee             	and    %r13,%rsi
   40d8d:	4c 21 e0             	and    %r12,%rax
   40d90:	85 c9                	test   %ecx,%ecx
   40d92:	48 0f 4f f0          	cmovg  %rax,%rsi
   40d96:	49 89 f0             	mov    %rsi,%r8
// Parts of a paged address: page index, page offset
static inline int pageindex(uintptr_t addr, int level) {
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
}
static inline uintptr_t pageoffmask(int level) {
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   40d99:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40d9d:	48 89 de             	mov    %rbx,%rsi
   40da0:	48 d3 e6             	shl    %cl,%rsi
   40da3:	48 f7 d6             	not    %rsi
   40da6:	48 21 fe             	and    %rdi,%rsi
   40da9:	4c 01 c6             	add    %r8,%rsi
   40dac:	e9 51 ff ff ff       	jmpq   40d02 <process_setup(int, char const*)+0x121>
    assert(r == 0, "vmiter::map failed");
   40db1:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   40db6:	ba fe 50 04 00       	mov    $0x450fe,%edx
   40dbb:	be e4 00 00 00       	mov    $0xe4,%esi
   40dc0:	bf 05 51 04 00       	mov    $0x45105,%edi
   40dc5:	e8 f1 1c 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
         kit += PAGESIZE, pit += PAGESIZE) {
         pit.map(kit.pa(), kit.perm());
    }

    // allocate and map global memory required by loadable segments
    for (auto seg = pgm.begin(); seg != pgm.end(); ++seg) {
   40dca:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   40dce:	e8 7f 2a 00 00       	callq  43852 <program_image::begin() const>
   40dd3:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
   40dda:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
        for (uintptr_t a = round_down(seg.va(), PAGESIZE);
             a < seg.va() + seg.size();
             a += PAGESIZE) {
            vmiter pit(ptable[pid].pagetable, a);
   40de1:	4d 63 f7             	movslq %r15d,%r14
   40de4:	4f 8d 2c 76          	lea    (%r14,%r14,2),%r13
   40de8:	49 c1 e5 02          	shl    $0x2,%r13
   40dec:	e9 15 01 00 00       	jmpq   40f06 <process_setup(int, char const*)+0x325>
            if (seg.writable()) {
                pit.map((uintptr_t) kalloc(PAGESIZE), PTE_P | PTE_W | PTE_U);
            } else {
                pit.map((uintptr_t) kalloc(PAGESIZE), PTE_P | PTE_U);
   40df1:	bf 00 10 00 00       	mov    $0x1000,%edi
   40df6:	e8 6b fd ff ff       	callq  40b66 <kalloc(unsigned long)>
   40dfb:	48 89 c6             	mov    %rax,%rsi
    int r = try_map(pa, perm);
   40dfe:	ba 05 00 00 00       	mov    $0x5,%edx
   40e03:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   40e0a:	e8 4b 12 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   40e0f:	85 c0                	test   %eax,%eax
   40e11:	0f 85 ca 00 00 00    	jne    40ee1 <process_setup(int, char const*)+0x300>
             a += PAGESIZE) {
   40e17:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
             a < seg.va() + seg.size();
   40e1e:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40e25:	e8 a0 2a 00 00       	callq  438ca <program_image_segment::va() const>
   40e2a:	48 89 c3             	mov    %rax,%rbx
   40e2d:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40e34:	e8 9d 2a 00 00       	callq  438d6 <program_image_segment::size() const>
   40e39:	48 01 c3             	add    %rax,%rbx
   40e3c:	4c 39 e3             	cmp    %r12,%rbx
   40e3f:	0f 86 b5 00 00 00    	jbe    40efa <process_setup(int, char const*)+0x319>
            vmiter pit(ptable[pid].pagetable, a);
   40e45:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   40e4a:	48 c1 e0 04          	shl    $0x4,%rax
   40e4e:	48 8b 80 20 42 05 00 	mov    0x54220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40e55:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
   40e5c:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   40e63:	c7 85 78 ff ff ff 03 	movl   $0x3,-0x88(%rbp)
   40e6a:	00 00 00 
   40e6d:	c7 85 7c ff ff ff ff 	movl   $0xfff,-0x84(%rbp)
   40e74:	0f 00 00 
   40e77:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
   40e7e:	00 
    real_find(va);
   40e7f:	4c 89 e6             	mov    %r12,%rsi
   40e82:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   40e89:	e8 b4 0f 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
            if (seg.writable()) {
   40e8e:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40e95:	e8 64 2a 00 00       	callq  438fe <program_image_segment::writable() const>
   40e9a:	84 c0                	test   %al,%al
   40e9c:	0f 84 4f ff ff ff    	je     40df1 <process_setup(int, char const*)+0x210>
                pit.map((uintptr_t) kalloc(PAGESIZE), PTE_P | PTE_W | PTE_U);
   40ea2:	bf 00 10 00 00       	mov    $0x1000,%edi
   40ea7:	e8 ba fc ff ff       	callq  40b66 <kalloc(unsigned long)>
   40eac:	48 89 c6             	mov    %rax,%rsi
    int r = try_map(pa, perm);
   40eaf:	ba 07 00 00 00       	mov    $0x7,%edx
   40eb4:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   40ebb:	e8 9a 11 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   40ec0:	85 c0                	test   %eax,%eax
   40ec2:	0f 84 4f ff ff ff    	je     40e17 <process_setup(int, char const*)+0x236>
   40ec8:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   40ecd:	ba fe 50 04 00       	mov    $0x450fe,%edx
   40ed2:	be e4 00 00 00       	mov    $0xe4,%esi
   40ed7:	bf 05 51 04 00       	mov    $0x45105,%edi
   40edc:	e8 da 1b 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   40ee1:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   40ee6:	ba fe 50 04 00       	mov    $0x450fe,%edx
   40eeb:	be e4 00 00 00       	mov    $0xe4,%esi
   40ef0:	bf 05 51 04 00       	mov    $0x45105,%edi
   40ef5:	e8 c1 1b 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    for (auto seg = pgm.begin(); seg != pgm.end(); ++seg) {
   40efa:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40f01:	e8 16 2a 00 00       	callq  4391c <program_image_segment::operator++()>
   40f06:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   40f0a:	e8 77 29 00 00       	callq  43886 <program_image::end() const>
   40f0f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   40f13:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
   40f17:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
   40f1b:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40f22:	e8 e7 29 00 00       	callq  4390e <program_image_segment::operator!=(program_image_segment const&) const>
   40f27:	84 c0                	test   %al,%al
   40f29:	74 1a                	je     40f45 <process_setup(int, char const*)+0x364>
        for (uintptr_t a = round_down(seg.va(), PAGESIZE);
   40f2b:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40f32:	e8 93 29 00 00       	callq  438ca <program_image_segment::va() const>
   40f37:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
   40f3d:	49 89 c4             	mov    %rax,%r12
   40f40:	e9 d9 fe ff ff       	jmpq   40e1e <process_setup(int, char const*)+0x23d>
            }
        }
    }

    // initialize data in loadable segments
    for (auto seg = pgm.begin(); seg != pgm.end(); ++seg) {
   40f45:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   40f49:	e8 04 29 00 00       	callq  43852 <program_image::begin() const>
   40f4e:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
   40f55:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
        vmiter pit(ptable[pid].pagetable, seg.va());
   40f5c:	4d 63 ef             	movslq %r15d,%r13
   40f5f:	4f 8d 64 6d 00       	lea    0x0(%r13,%r13,2),%r12
   40f64:	49 c1 e4 02          	shl    $0x2,%r12
   40f68:	eb 42                	jmp    40fac <process_setup(int, char const*)+0x3cb>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40f6a:	48 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdi
   40f71:	ff 0f 00 
   40f74:	48 21 f9             	and    %rdi,%rcx
   40f77:	49 89 c8             	mov    %rcx,%r8
   40f7a:	e9 ed 00 00 00       	jmpq   4106c <process_setup(int, char const*)+0x48b>
   40f7f:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40f83:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   40f8a:	48 d3 e2             	shl    %cl,%rdx
   40f8d:	48 f7 d2             	not    %rdx
   40f90:	48 23 55 80          	and    -0x80(%rbp),%rdx
   40f94:	4a 8d 3c 02          	lea    (%rdx,%r8,1),%rdi
        // uses pit physical address
        memset((void *) pit.pa(), 0, seg.size());
        memcpy((void *) pit.pa(), seg.data(), seg.data_size());
   40f98:	48 89 da             	mov    %rbx,%rdx
   40f9b:	e8 b7 34 00 00       	callq  44457 <memcpy>
    for (auto seg = pgm.begin(); seg != pgm.end(); ++seg) {
   40fa0:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40fa7:	e8 70 29 00 00       	callq  4391c <program_image_segment::operator++()>
   40fac:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   40fb0:	e8 d1 28 00 00       	callq  43886 <program_image::end() const>
   40fb5:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   40fb9:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
   40fbd:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
   40fc1:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40fc8:	e8 41 29 00 00       	callq  4390e <program_image_segment::operator!=(program_image_segment const&) const>
   40fcd:	84 c0                	test   %al,%al
   40fcf:	0f 84 25 01 00 00    	je     410fa <process_setup(int, char const*)+0x519>
        vmiter pit(ptable[pid].pagetable, seg.va());
   40fd5:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   40fdc:	e8 e9 28 00 00       	callq  438ca <program_image_segment::va() const>
   40fe1:	48 89 c6             	mov    %rax,%rsi
   40fe4:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
   40fe8:	48 c1 e0 04          	shl    $0x4,%rax
   40fec:	48 8b 80 20 42 05 00 	mov    0x54220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40ff3:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
   40ffa:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   41001:	c7 85 78 ff ff ff 03 	movl   $0x3,-0x88(%rbp)
   41008:	00 00 00 
   4100b:	c7 85 7c ff ff ff ff 	movl   $0xfff,-0x84(%rbp)
   41012:	0f 00 00 
   41015:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
   4101c:	00 
    real_find(va);
   4101d:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
   41024:	e8 19 0e 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
        memset((void *) pit.pa(), 0, seg.size());
   41029:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   41030:	e8 a1 28 00 00       	callq  438d6 <program_image_segment::size() const>
   41035:	48 89 c2             	mov    %rax,%rdx
    if (*pep_ & PTE_P) {
   41038:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
   4103f:	48 8b 08             	mov    (%rax),%rcx
        return -1;
   41042:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    if (*pep_ & PTE_P) {
   41049:	f6 c1 01             	test   $0x1,%cl
   4104c:	74 37                	je     41085 <process_setup(int, char const*)+0x4a4>
        if (level_ > 0) {
   4104e:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
            pa &= ~0x1000UL;
   41054:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   4105b:	ff 0f 00 
   4105e:	48 21 cf             	and    %rcx,%rdi
   41061:	49 89 f8             	mov    %rdi,%r8
        if (level_ > 0) {
   41064:	85 c0                	test   %eax,%eax
   41066:	0f 8e fe fe ff ff    	jle    40f6a <process_setup(int, char const*)+0x389>
   4106c:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   41070:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
   41077:	48 d3 e6             	shl    %cl,%rsi
   4107a:	48 f7 d6             	not    %rsi
   4107d:	48 23 75 80          	and    -0x80(%rbp),%rsi
   41081:	4a 8d 3c 06          	lea    (%rsi,%r8,1),%rdi
   41085:	be 00 00 00 00       	mov    $0x0,%esi
   4108a:	e8 39 34 00 00       	callq  444c8 <memset>
        memcpy((void *) pit.pa(), seg.data(), seg.data_size());
   4108f:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   41096:	e8 57 28 00 00       	callq  438f2 <program_image_segment::data_size() const>
   4109b:	48 89 c3             	mov    %rax,%rbx
   4109e:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
   410a5:	e8 38 28 00 00       	callq  438e2 <program_image_segment::data() const>
   410aa:	48 89 c6             	mov    %rax,%rsi
    if (*pep_ & PTE_P) {
   410ad:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
   410b4:	48 8b 10             	mov    (%rax),%rdx
        return -1;
   410b7:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    if (*pep_ & PTE_P) {
   410be:	f6 c2 01             	test   $0x1,%dl
   410c1:	0f 84 d1 fe ff ff    	je     40f98 <process_setup(int, char const*)+0x3b7>
        if (level_ > 0) {
   410c7:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
            pa &= ~0x1000UL;
   410cd:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   410d4:	ff 0f 00 
   410d7:	48 21 d7             	and    %rdx,%rdi
   410da:	49 89 f8             	mov    %rdi,%r8
        if (level_ > 0) {
   410dd:	85 c0                	test   %eax,%eax
   410df:	0f 8f 9a fe ff ff    	jg     40f7f <process_setup(int, char const*)+0x39e>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   410e5:	48 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdi
   410ec:	ff 0f 00 
   410ef:	48 21 fa             	and    %rdi,%rdx
   410f2:	49 89 d0             	mov    %rdx,%r8
   410f5:	e9 85 fe ff ff       	jmpq   40f7f <process_setup(int, char const*)+0x39e>
    }

    // mark entry point
    ptable[pid].regs.reg_rip = pgm.entry();
   410fa:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   410fe:	e8 dd 26 00 00       	callq  437e0 <program_image::entry() const>
   41103:	48 89 c6             	mov    %rax,%rsi
   41106:	49 63 d7             	movslq %r15d,%rdx
   41109:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
   4110d:	48 c1 e0 02          	shl    $0x2,%rax
   41111:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   41115:	48 c1 e1 04          	shl    $0x4,%rcx
   41119:	48 89 b1 c8 42 05 00 	mov    %rsi,0x542c8(%rcx)

    // allocate and map stack segment
    uintptr_t stack_addr = MEMSIZE_VIRTUAL - PAGESIZE;

    vmiter pit(ptable[pid].pagetable, stack_addr);
   41120:	48 8b 81 20 42 05 00 	mov    0x54220(%rcx),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41127:	48 89 45 88          	mov    %rax,-0x78(%rbp)
   4112b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   4112f:	c7 45 98 03 00 00 00 	movl   $0x3,-0x68(%rbp)
   41136:	c7 45 9c ff 0f 00 00 	movl   $0xfff,-0x64(%rbp)
   4113d:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
   41144:	00 
    real_find(va);
   41145:	be 00 f0 2f 00       	mov    $0x2ff000,%esi
   4114a:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
   4114e:	e8 ef 0c 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    pit.map((uintptr_t) kalloc(PAGESIZE), PTE_P | PTE_W | PTE_U);
   41153:	bf 00 10 00 00       	mov    $0x1000,%edi
   41158:	e8 09 fa ff ff       	callq  40b66 <kalloc(unsigned long)>
   4115d:	48 89 c6             	mov    %rax,%rsi
    int r = try_map(pa, perm);
   41160:	ba 07 00 00 00       	mov    $0x7,%edx
   41165:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
   41169:	e8 ec 0e 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   4116e:	85 c0                	test   %eax,%eax
   41170:	75 3a                	jne    411ac <process_setup(int, char const*)+0x5cb>

    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;
   41172:	4d 63 ff             	movslq %r15d,%r15
   41175:	4b 8d 04 7f          	lea    (%r15,%r15,2),%rax
   41179:	48 c1 e0 02          	shl    $0x2,%rax
   4117d:	4a 8d 14 38          	lea    (%rax,%r15,1),%rdx
   41181:	48 c1 e2 04          	shl    $0x4,%rdx
   41185:	48 c7 82 e0 42 05 00 	movq   $0x300000,0x542e0(%rdx)
   4118c:	00 00 30 00 

    // mark process as runnable
    ptable[pid].state = P_RUNNABLE;
   41190:	c7 82 2c 42 05 00 01 	movl   $0x1,0x5422c(%rdx)
   41197:	00 00 00 
}
   4119a:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   411a1:	5b                   	pop    %rbx
   411a2:	41 5c                	pop    %r12
   411a4:	41 5d                	pop    %r13
   411a6:	41 5e                	pop    %r14
   411a8:	41 5f                	pop    %r15
   411aa:	5d                   	pop    %rbp
   411ab:	c3                   	retq   
   411ac:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   411b1:	ba fe 50 04 00       	mov    $0x450fe,%edx
   411b6:	be e4 00 00 00       	mov    $0xe4,%esi
   411bb:	bf 05 51 04 00       	mov    $0x45105,%edi
   411c0:	e8 f6 18 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>

00000000000411c5 <kfree(void*)>:
void kfree(void* kptr) {
   411c5:	f3 0f 1e fa          	endbr64 
    if (!kptr) {
   411c9:	48 85 ff             	test   %rdi,%rdi
   411cc:	74 0b                	je     411d9 <kfree(void*)+0x14>
    --physpages[((uintptr_t) kptr) / PAGESIZE].refcount;
   411ce:	48 c1 ef 0c          	shr    $0xc,%rdi
   411d2:	80 af 00 40 05 00 01 	subb   $0x1,0x54000(%rdi)
}
   411d9:	c3                   	retq   

00000000000411da <syscall_page_alloc(unsigned long)>:
// syscall_page_alloc(addr)
//    Handles the SYSCALL_PAGE_ALLOC system call. This function
//    should implement the specification for `sys_page_alloc`
//    in `u-lib.hh` (but in the handout code, it does not).

int syscall_page_alloc(uintptr_t addr) {
   411da:	f3 0f 1e fa          	endbr64 
    // invalid process address
    if (addr > MEMSIZE_VIRTUAL || addr < PROC_START_ADDR) {
   411de:	48 8d 87 00 00 f0 ff 	lea    -0x100000(%rdi),%rax
   411e5:	48 3d 00 00 20 00    	cmp    $0x200000,%rax
   411eb:	0f 87 eb 00 00 00    	ja     412dc <syscall_page_alloc(unsigned long)+0x102>
int syscall_page_alloc(uintptr_t addr) {
   411f1:	55                   	push   %rbp
   411f2:	48 89 e5             	mov    %rsp,%rbp
   411f5:	41 54                	push   %r12
   411f7:	53                   	push   %rbx
   411f8:	48 83 ec 20          	sub    $0x20,%rsp
   411fc:	48 89 fb             	mov    %rdi,%rbx
        return -1;
    }

    // new page address
    uintptr_t paddr = (uintptr_t) kalloc(PAGESIZE);
   411ff:	bf 00 10 00 00       	mov    $0x1000,%edi
   41204:	e8 5d f9 ff ff       	callq  40b66 <kalloc(unsigned long)>
   41209:	49 89 c4             	mov    %rax,%r12
    // no physical memory left
    if (!paddr) {
   4120c:	48 85 c0             	test   %rax,%rax
   4120f:	0f 84 cd 00 00 00    	je     412e2 <syscall_page_alloc(unsigned long)+0x108>
        return -1;
    }

    vmiter it(current->pagetable, addr);
   41215:	48 8b 05 e4 2f 01 00 	mov    0x12fe4(%rip),%rax        # 54200 <current>
   4121c:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4121f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   41223:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   41227:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   4122e:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   41235:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   4123c:	00 
    real_find(va);
   4123d:	48 89 de             	mov    %rbx,%rsi
   41240:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41244:	e8 f9 0b 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    int t = it.try_map(paddr, PTE_P | PTE_W | PTE_U);
   41249:	ba 07 00 00 00       	mov    $0x7,%edx
   4124e:	4c 89 e6             	mov    %r12,%rsi
   41251:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41255:	e8 00 0e 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    // free if attempted mapping fails
    if (t < 0) {
   4125a:	85 c0                	test   %eax,%eax
   4125c:	78 60                	js     412be <syscall_page_alloc(unsigned long)+0xe4>
    if (*pep_ & PTE_P) {
   4125e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   41262:	48 8b 08             	mov    (%rax),%rcx
        return -1;
   41265:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    if (*pep_ & PTE_P) {
   4126c:	f6 c1 01             	test   $0x1,%cl
   4126f:	74 30                	je     412a1 <syscall_page_alloc(unsigned long)+0xc7>
        if (level_ > 0) {
   41271:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   41274:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   4127b:	ff 0f 00 
   4127e:	48 89 fa             	mov    %rdi,%rdx
   41281:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   41284:	85 c0                	test   %eax,%eax
   41286:	7e 45                	jle    412cd <syscall_page_alloc(unsigned long)+0xf3>
   41288:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4128c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41293:	48 d3 e0             	shl    %cl,%rax
   41296:	48 f7 d0             	not    %rax
   41299:	48 23 45 e8          	and    -0x18(%rbp),%rax
   4129d:	48 8d 3c 10          	lea    (%rax,%rdx,1),%rdi
        kfree((void *) paddr);
        return -1;
    }

    // success
    memset((void*) it.pa(), 0, PAGESIZE);
   412a1:	ba 00 10 00 00       	mov    $0x1000,%edx
   412a6:	be 00 00 00 00       	mov    $0x0,%esi
   412ab:	e8 18 32 00 00       	callq  444c8 <memset>
    return 0;
   412b0:	b8 00 00 00 00       	mov    $0x0,%eax
}
   412b5:	48 83 c4 20          	add    $0x20,%rsp
   412b9:	5b                   	pop    %rbx
   412ba:	41 5c                	pop    %r12
   412bc:	5d                   	pop    %rbp
   412bd:	c3                   	retq   
        kfree((void *) paddr);
   412be:	4c 89 e7             	mov    %r12,%rdi
   412c1:	e8 ff fe ff ff       	callq  411c5 <kfree(void*)>
        return -1;
   412c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   412cb:	eb e8                	jmp    412b5 <syscall_page_alloc(unsigned long)+0xdb>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   412cd:	48 8d bf 00 10 00 00 	lea    0x1000(%rdi),%rdi
   412d4:	48 21 f9             	and    %rdi,%rcx
   412d7:	48 89 ca             	mov    %rcx,%rdx
   412da:	eb ac                	jmp    41288 <syscall_page_alloc(unsigned long)+0xae>
        return -1;
   412dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   412e1:	c3                   	retq   
        return -1;
   412e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   412e7:	eb cc                	jmp    412b5 <syscall_page_alloc(unsigned long)+0xdb>

00000000000412e9 <pfree(proc*)>:


// pfree(p)
// free memory for process at 'p'

void pfree(proc *p) {
   412e9:	f3 0f 1e fa          	endbr64 
   412ed:	55                   	push   %rbp
   412ee:	48 89 e5             	mov    %rsp,%rbp
   412f1:	41 56                	push   %r14
   412f3:	41 55                	push   %r13
   412f5:	41 54                	push   %r12
   412f7:	53                   	push   %rbx
   412f8:	48 83 ec 20          	sub    $0x20,%rsp
   412fc:	48 89 fb             	mov    %rdi,%rbx
    // free page table
    for (ptiter pit(p->pagetable);
   412ff:	48 8b 37             	mov    (%rdi),%rsi
   41302:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41306:	e8 07 10 00 00       	callq  42312 <ptiter::ptiter(x86_64_pagetable*)>
   4130b:	8b 45 d0             	mov    -0x30(%rbp),%eax
   4130e:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41312:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax

inline ptiter::ptiter(const proc* p)
    : ptiter(p->pagetable) {
}
inline uintptr_t ptiter::va() const {
    return va_ & ~pageoffmask(level_);
   41319:	48 d3 e0             	shl    %cl,%rax
   4131c:	48 23 45 d8          	and    -0x28(%rbp),%rax
         pit.va() < MEMSIZE_VIRTUAL;
   41320:	48 3d ff ff 2f 00    	cmp    $0x2fffff,%rax
   41326:	77 44                	ja     4136c <pfree(proc*)+0x83>
}
inline void ptiter::next() {
    down(true);
}
inline uintptr_t ptiter::pa() const {
    return *pep_ & PTE_PAMASK;
   41328:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   4132f:	ff 0f 00 
   41332:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   41336:	4c 89 e7             	mov    %r12,%rdi
   41339:	48 23 38             	and    (%rax),%rdi
         pit.next()) {
        kfree((void *) pit.pa());
   4133c:	e8 84 fe ff ff       	callq  411c5 <kfree(void*)>
    down(true);
   41341:	be 01 00 00 00       	mov    $0x1,%esi
   41346:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   4134a:	e8 c1 0e 00 00       	callq  42210 <ptiter::down(bool)>
   4134f:	8b 45 d0             	mov    -0x30(%rbp),%eax
   41352:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41356:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    return va_ & ~pageoffmask(level_);
   4135d:	48 d3 e0             	shl    %cl,%rax
   41360:	48 23 45 d8          	and    -0x28(%rbp),%rax
         pit.va() < MEMSIZE_VIRTUAL;
   41364:	48 3d ff ff 2f 00    	cmp    $0x2fffff,%rax
   4136a:	76 c6                	jbe    41332 <pfree(proc*)+0x49>
    }

    kfree((void *) p->pagetable);
   4136c:	48 8b 3b             	mov    (%rbx),%rdi
   4136f:	e8 51 fe ff ff       	callq  411c5 <kfree(void*)>

    // free memory
    for (vmiter vit(p->pagetable, PROC_START_ADDR);
   41374:	48 8b 03             	mov    (%rbx),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41377:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4137b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   4137f:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%rbp)
   41386:	c7 45 d4 ff 0f 00 00 	movl   $0xfff,-0x2c(%rbp)
   4138d:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
   41394:	00 
    real_find(va);
   41395:	be 00 00 10 00       	mov    $0x100000,%esi
   4139a:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   4139e:	e8 9f 0a 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   413a3:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
         vit.va() < MEMSIZE_VIRTUAL;
   413a7:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   413ae:	0f 87 97 00 00 00    	ja     4144b <pfree(proc*)+0x162>
        return -1;
   413b4:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
            pa &= ~0x1000UL;
   413bb:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   413c2:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   413c5:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   413cc:	ff 0f 00 
   413cf:	eb 54                	jmp    41425 <pfree(proc*)+0x13c>
        if (level_ > 0) {
   413d1:	8b 4d d0             	mov    -0x30(%rbp),%ecx
            pa &= ~0x1000UL;
   413d4:	48 89 d0             	mov    %rdx,%rax
   413d7:	4c 21 e8             	and    %r13,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   413da:	48 89 d7             	mov    %rdx,%rdi
   413dd:	4c 21 f7             	and    %r14,%rdi
   413e0:	48 89 c2             	mov    %rax,%rdx
   413e3:	85 c9                	test   %ecx,%ecx
   413e5:	48 89 f8             	mov    %rdi,%rax
   413e8:	48 0f 4f c2          	cmovg  %rdx,%rax
   413ec:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   413f0:	4c 89 e7             	mov    %r12,%rdi
   413f3:	48 d3 e7             	shl    %cl,%rdi
   413f6:	48 f7 d7             	not    %rdi
   413f9:	48 21 f7             	and    %rsi,%rdi
   413fc:	48 01 c7             	add    %rax,%rdi
         vit += PAGESIZE) {
         if (vit.perm()) {
            kfree((void *) vit.pa());
   413ff:	e8 c1 fd ff ff       	callq  411c5 <kfree(void*)>
    return find(va_ + delta);
   41404:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   41408:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4140f:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41413:	e8 2a 0a 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   41418:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
         vit.va() < MEMSIZE_VIRTUAL;
   4141c:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   41423:	77 26                	ja     4144b <pfree(proc*)+0x162>
    uint64_t ph = *pep_ & perm_;
   41425:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   41429:	48 8b 10             	mov    (%rax),%rdx
   4142c:	48 63 45 d4          	movslq -0x2c(%rbp),%rax
   41430:	48 21 d0             	and    %rdx,%rax
    return ph & -(ph & PTE_P);
   41433:	48 89 c1             	mov    %rax,%rcx
   41436:	83 e1 01             	and    $0x1,%ecx
   41439:	48 f7 d9             	neg    %rcx
         if (vit.perm()) {
   4143c:	48 85 c1             	test   %rax,%rcx
   4143f:	74 c3                	je     41404 <pfree(proc*)+0x11b>
        return -1;
   41441:	4c 89 e7             	mov    %r12,%rdi
    if (*pep_ & PTE_P) {
   41444:	f6 c2 01             	test   $0x1,%dl
   41447:	75 88                	jne    413d1 <pfree(proc*)+0xe8>
   41449:	eb b4                	jmp    413ff <pfree(proc*)+0x116>
        }
    }

    p->state = P_FREE;
   4144b:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%rbx)
}
   41452:	48 83 c4 20          	add    $0x20,%rsp
   41456:	5b                   	pop    %rbx
   41457:	41 5c                	pop    %r12
   41459:	41 5d                	pop    %r13
   4145b:	41 5e                	pop    %r14
   4145d:	5d                   	pop    %rbp
   4145e:	c3                   	retq   

000000000004145f <syscall_fork()>:


// syscall_fork()
int syscall_fork() {
   4145f:	f3 0f 1e fa          	endbr64 
   41463:	55                   	push   %rbp
   41464:	48 89 e5             	mov    %rsp,%rbp
   41467:	41 57                	push   %r15
   41469:	41 56                	push   %r14
   4146b:	41 55                	push   %r13
   4146d:	41 54                	push   %r12
   4146f:	53                   	push   %rbx
   41470:	48 83 ec 48          	sub    $0x48,%rsp
    // find free proccess slot (not 0) in ptable for c_pid
    int c_pid = -1;
    for (int i = 1; i < NPROC; i++) {
   41474:	ba fc 42 05 00       	mov    $0x542fc,%edx
   41479:	b8 01 00 00 00       	mov    $0x1,%eax
    int c_pid = -1;
   4147e:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
        if (ptable[i].state == P_FREE) {
   41483:	83 3a 00             	cmpl   $0x0,(%rdx)
   41486:	0f 44 d8             	cmove  %eax,%ebx
    for (int i = 1; i < NPROC; i++) {
   41489:	83 c0 01             	add    $0x1,%eax
   4148c:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   41493:	83 f8 10             	cmp    $0x10,%eax
   41496:	75 eb                	jne    41483 <syscall_fork()+0x24>
            c_pid = i;
        }
    }
    // no free slot
    if (c_pid == -1) {
   41498:	83 fb ff             	cmp    $0xffffffff,%ebx
   4149b:	0f 84 50 03 00 00    	je     417f1 <syscall_fork()+0x392>
        return c_pid;
    }

    // create child process
    proc *c_proc = &ptable[c_pid];
   414a1:	4c 63 eb             	movslq %ebx,%r13
   414a4:	4f 8d 64 6d 00       	lea    0x0(%r13,%r13,2),%r12
   414a9:	49 c1 e4 02          	shl    $0x2,%r12
   414ad:	4f 8d 3c 2c          	lea    (%r12,%r13,1),%r15
   414b1:	49 c1 e7 04          	shl    $0x4,%r15
   414b5:	49 81 c7 20 42 05 00 	add    $0x54220,%r15
    init_process(c_proc, 0);
   414bc:	be 00 00 00 00       	mov    $0x0,%esi
   414c1:	4c 89 ff             	mov    %r15,%rdi
   414c4:	e8 8b 10 00 00       	callq  42554 <init_process(proc*, int)>
    c_proc->pagetable = kalloc_pagetable();
   414c9:	e8 cd 0f 00 00       	callq  4249b <kalloc_pagetable()>
   414ce:	4d 01 ec             	add    %r13,%r12
   414d1:	49 c1 e4 04          	shl    $0x4,%r12
   414d5:	49 89 84 24 20 42 05 	mov    %rax,0x54220(%r12)
   414dc:	00 
    // page table not allocated
    if (!c_proc->pagetable) {
   414dd:	48 85 c0             	test   %rax,%rax
   414e0:	0f 84 a9 00 00 00    	je     4158f <syscall_fork()+0x130>
        c_proc->state = P_FREE;
        return -1;
    }

    for (vmiter pit(current->pagetable), cit(c_proc->pagetable);
   414e6:	48 8b 05 13 2d 01 00 	mov    0x12d13(%rip),%rax        # 54200 <current>
   414ed:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   414f0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   414f4:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   414f8:	c7 45 a0 03 00 00 00 	movl   $0x3,-0x60(%rbp)
   414ff:	c7 45 a4 ff 0f 00 00 	movl   $0xfff,-0x5c(%rbp)
   41506:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   4150d:	00 
    real_find(va);
   4150e:	be 00 00 00 00       	mov    $0x0,%esi
   41513:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   41517:	e8 26 09 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
   4151c:	48 63 c3             	movslq %ebx,%rax
   4151f:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41523:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41527:	48 c1 e0 04          	shl    $0x4,%rax
   4152b:	48 8b 80 20 42 05 00 	mov    0x54220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41532:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   41536:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   4153a:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   41541:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   41548:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   4154f:	00 
    real_find(va);
   41550:	be 00 00 00 00       	mov    $0x0,%esi
   41555:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41559:	e8 e4 08 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   4155e:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
         pit.va() < MEMSIZE_VIRTUAL;
   41562:	48 81 ff ff ff 2f 00 	cmp    $0x2fffff,%rdi
   41569:	0f 87 35 02 00 00    	ja     417a4 <syscall_fork()+0x345>
        return -1;
   4156f:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
            pa &= ~0x1000UL;
   41576:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   4157d:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41580:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   41587:	ff 0f 00 
   4158a:	e9 84 00 00 00       	jmpq   41613 <syscall_fork()+0x1b4>
        c_proc->state = P_FREE;
   4158f:	41 c7 84 24 2c 42 05 	movl   $0x0,0x5422c(%r12)
   41596:	00 00 00 00 00 
        return -1;
   4159b:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
   415a0:	e9 4c 02 00 00       	jmpq   417f1 <syscall_fork()+0x392>
        if (level_ > 0) {
   415a5:	8b 4d a0             	mov    -0x60(%rbp),%ecx
            pa &= ~0x1000UL;
   415a8:	48 89 c6             	mov    %rax,%rsi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   415ab:	4c 21 f6             	and    %r14,%rsi
   415ae:	4c 21 e8             	and    %r13,%rax
   415b1:	85 c9                	test   %ecx,%ecx
   415b3:	48 0f 4f f0          	cmovg  %rax,%rsi
   415b7:	49 89 f0             	mov    %rsi,%r8
   415ba:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   415be:	4c 89 e6             	mov    %r12,%rsi
   415c1:	48 d3 e6             	shl    %cl,%rsi
   415c4:	48 f7 d6             	not    %rsi
   415c7:	48 21 fe             	and    %rdi,%rsi
   415ca:	4c 01 c6             	add    %r8,%rsi
         pit += PAGESIZE, cit += PAGESIZE) {
         if (pit.va() < PROC_START_ADDR) {
             int t = cit.try_map(pit.pa(), pit.perm());
   415cd:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   415d1:	e8 84 0a 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
             // free if attempted mapping fails
             if (t < 0) {
   415d6:	85 c0                	test   %eax,%eax
   415d8:	78 6c                	js     41646 <syscall_fork()+0x1e7>
    return find(va_ + delta);
   415da:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   415de:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   415e5:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   415e9:	e8 54 08 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return find(va_ + delta);
   415ee:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   415f2:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   415f9:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   415fd:	e8 40 08 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   41602:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
         pit.va() < MEMSIZE_VIRTUAL;
   41606:	48 81 ff ff ff 2f 00 	cmp    $0x2fffff,%rdi
   4160d:	0f 87 91 01 00 00    	ja     417a4 <syscall_fork()+0x345>
         if (pit.va() < PROC_START_ADDR) {
   41613:	48 81 ff ff ff 0f 00 	cmp    $0xfffff,%rdi
   4161a:	77 3c                	ja     41658 <syscall_fork()+0x1f9>
    uint64_t ph = *pep_ & perm_;
   4161c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   41620:	48 8b 00             	mov    (%rax),%rax
   41623:	48 63 55 a4          	movslq -0x5c(%rbp),%rdx
   41627:	48 89 d1             	mov    %rdx,%rcx
   4162a:	48 21 c1             	and    %rax,%rcx
    return ph & -(ph & PTE_P);
   4162d:	48 89 ca             	mov    %rcx,%rdx
   41630:	83 e2 01             	and    $0x1,%edx
   41633:	48 f7 da             	neg    %rdx
   41636:	48 21 ca             	and    %rcx,%rdx
        return -1;
   41639:	4c 89 e6             	mov    %r12,%rsi
    if (*pep_ & PTE_P) {
   4163c:	a8 01                	test   $0x1,%al
   4163e:	0f 85 61 ff ff ff    	jne    415a5 <syscall_fork()+0x146>
   41644:	eb 87                	jmp    415cd <syscall_fork()+0x16e>
                 pfree(c_proc);
   41646:	4c 89 ff             	mov    %r15,%rdi
   41649:	e8 9b fc ff ff       	callq  412e9 <pfree(proc*)>
                 return -1;
   4164e:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
   41653:	e9 99 01 00 00       	jmpq   417f1 <syscall_fork()+0x392>
    uint64_t ph = *pep_ & perm_;
   41658:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   4165c:	48 8b 08             	mov    (%rax),%rcx
   4165f:	48 63 45 a4          	movslq -0x5c(%rbp),%rax
   41663:	48 21 c8             	and    %rcx,%rax
   41666:	48 89 c2             	mov    %rax,%rdx
    return ph & -(ph & PTE_P);
   41669:	83 e0 01             	and    $0x1,%eax
   4166c:	48 f7 d8             	neg    %rax
             }
        } else if (pit.perm()) {
   4166f:	48 21 d0             	and    %rdx,%rax
   41672:	0f 84 62 ff ff ff    	je     415da <syscall_fork()+0x17b>
    return (perm() & desired_perm) == desired_perm;
   41678:	83 e0 03             	and    $0x3,%eax
             uintptr_t curr_pa;
             if (pit.writable()) {
   4167b:	48 83 f8 03          	cmp    $0x3,%rax
   4167f:	0f 84 ef 00 00 00    	je     41774 <syscall_fork()+0x315>
        return -1;
   41685:	4c 89 e6             	mov    %r12,%rsi
    if (*pep_ & PTE_P) {
   41688:	f6 c1 01             	test   $0x1,%cl
   4168b:	74 2e                	je     416bb <syscall_fork()+0x25c>
        if (level_ > 0) {
   4168d:	8b 55 a0             	mov    -0x60(%rbp),%edx
            pa &= ~0x1000UL;
   41690:	48 89 c8             	mov    %rcx,%rax
   41693:	4c 21 e8             	and    %r13,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41696:	48 89 ce             	mov    %rcx,%rsi
   41699:	4c 21 f6             	and    %r14,%rsi
   4169c:	48 89 c1             	mov    %rax,%rcx
   4169f:	85 d2                	test   %edx,%edx
   416a1:	48 89 f0             	mov    %rsi,%rax
   416a4:	48 0f 4f c1          	cmovg  %rcx,%rax
   416a8:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   416ac:	4c 89 e6             	mov    %r12,%rsi
   416af:	48 d3 e6             	shl    %cl,%rsi
   416b2:	48 f7 d6             	not    %rsi
   416b5:	48 21 fe             	and    %rdi,%rsi
   416b8:	48 01 c6             	add    %rax,%rsi
                     pfree(c_proc);
                     return -1;
                 }
             } else {
                 curr_pa = pit.pa();
                 ++physpages[curr_pa / PAGESIZE].refcount;
   416bb:	48 89 f0             	mov    %rsi,%rax
   416be:	48 c1 e8 0c          	shr    $0xc,%rax
   416c2:	80 80 00 40 05 00 01 	addb   $0x1,0x54000(%rax)
    uint64_t ph = *pep_ & perm_;
   416c9:	48 63 55 a4          	movslq -0x5c(%rbp),%rdx
   416cd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   416d1:	48 23 10             	and    (%rax),%rdx
   416d4:	48 89 d0             	mov    %rdx,%rax
    return ph & -(ph & PTE_P);
   416d7:	83 e2 01             	and    $0x1,%edx
   416da:	48 f7 da             	neg    %rdx
   416dd:	48 21 c2             	and    %rax,%rdx
             }
             int t = cit.try_map(curr_pa, pit.perm());
   416e0:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   416e4:	e8 71 09 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
             // free if attempted mapping fails
             if (t < 0) {
   416e9:	85 c0                	test   %eax,%eax
   416eb:	0f 88 a6 00 00 00    	js     41797 <syscall_fork()+0x338>
    if (*pep_ & PTE_P) {
   416f1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   416f5:	48 8b 00             	mov    (%rax),%rax
        return -1;
   416f8:	4c 89 e6             	mov    %r12,%rsi
    if (*pep_ & PTE_P) {
   416fb:	a8 01                	test   $0x1,%al
   416fd:	74 2c                	je     4172b <syscall_fork()+0x2cc>
        if (level_ > 0) {
   416ff:	8b 4d a0             	mov    -0x60(%rbp),%ecx
            pa &= ~0x1000UL;
   41702:	48 89 c7             	mov    %rax,%rdi
   41705:	4c 21 ef             	and    %r13,%rdi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41708:	48 89 c6             	mov    %rax,%rsi
   4170b:	4c 21 f6             	and    %r14,%rsi
   4170e:	85 c9                	test   %ecx,%ecx
   41710:	48 89 f2             	mov    %rsi,%rdx
   41713:	48 0f 4f d7          	cmovg  %rdi,%rdx
   41717:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4171b:	4c 89 e6             	mov    %r12,%rsi
   4171e:	48 d3 e6             	shl    %cl,%rsi
   41721:	48 f7 d6             	not    %rsi
   41724:	48 23 75 a8          	and    -0x58(%rbp),%rsi
   41728:	48 01 d6             	add    %rdx,%rsi
    if (*pep_ & PTE_P) {
   4172b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4172f:	48 8b 00             	mov    (%rax),%rax
        return -1;
   41732:	4c 89 e7             	mov    %r12,%rdi
    if (*pep_ & PTE_P) {
   41735:	a8 01                	test   $0x1,%al
   41737:	74 2c                	je     41765 <syscall_fork()+0x306>
        if (level_ > 0) {
   41739:	8b 4d c0             	mov    -0x40(%rbp),%ecx
            pa &= ~0x1000UL;
   4173c:	48 89 c2             	mov    %rax,%rdx
   4173f:	4c 21 ea             	and    %r13,%rdx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41742:	48 89 c7             	mov    %rax,%rdi
   41745:	4c 21 f7             	and    %r14,%rdi
   41748:	85 c9                	test   %ecx,%ecx
   4174a:	48 0f 4f fa          	cmovg  %rdx,%rdi
   4174e:	48 89 fa             	mov    %rdi,%rdx
   41751:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   41755:	4c 89 e7             	mov    %r12,%rdi
   41758:	48 d3 e7             	shl    %cl,%rdi
   4175b:	48 f7 d7             	not    %rdi
   4175e:	48 23 7d c8          	and    -0x38(%rbp),%rdi
   41762:	48 01 d7             	add    %rdx,%rdi
                 pfree(c_proc);
                 return -1;
             }
             // copy memory
             memcpy((void *) cit.pa(), (void *) pit.pa(), PAGESIZE);
   41765:	ba 00 10 00 00       	mov    $0x1000,%edx
   4176a:	e8 e8 2c 00 00       	callq  44457 <memcpy>
   4176f:	e9 66 fe ff ff       	jmpq   415da <syscall_fork()+0x17b>
                 curr_pa = (uintptr_t) kalloc(PAGESIZE);
   41774:	bf 00 10 00 00       	mov    $0x1000,%edi
   41779:	e8 e8 f3 ff ff       	callq  40b66 <kalloc(unsigned long)>
   4177e:	48 89 c6             	mov    %rax,%rsi
                 if (!curr_pa) {
   41781:	48 85 c0             	test   %rax,%rax
   41784:	0f 85 3f ff ff ff    	jne    416c9 <syscall_fork()+0x26a>
                     pfree(c_proc);
   4178a:	4c 89 ff             	mov    %r15,%rdi
   4178d:	e8 57 fb ff ff       	callq  412e9 <pfree(proc*)>
                     return -1;
   41792:	e9 b7 fe ff ff       	jmpq   4164e <syscall_fork()+0x1ef>
                 pfree(c_proc);
   41797:	4c 89 ff             	mov    %r15,%rdi
   4179a:	e8 4a fb ff ff       	callq  412e9 <pfree(proc*)>
                 return -1;
   4179f:	e9 aa fe ff ff       	jmpq   4164e <syscall_fork()+0x1ef>
        }
    }

    // copy regs, set to runnable, return 0 to the child, and return cid to the parent.
       c_proc->regs = current->regs;
   417a4:	4c 63 c3             	movslq %ebx,%r8
   417a7:	4b 8d 04 40          	lea    (%r8,%r8,2),%rax
   417ab:	48 c1 e0 02          	shl    $0x2,%rax
   417af:	4a 8d 14 00          	lea    (%rax,%r8,1),%rdx
   417b3:	48 c1 e2 04          	shl    $0x4,%rdx
   417b7:	48 81 c2 30 42 05 00 	add    $0x54230,%rdx
   417be:	48 8b 0d 3b 2a 01 00 	mov    0x12a3b(%rip),%rcx        # 54200 <current>
   417c5:	48 8d 71 10          	lea    0x10(%rcx),%rsi
   417c9:	b9 18 00 00 00       	mov    $0x18,%ecx
   417ce:	48 89 d7             	mov    %rdx,%rdi
   417d1:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
       c_proc->regs.reg_rax = 0;
   417d4:	4a 8d 14 00          	lea    (%rax,%r8,1),%rdx
   417d8:	48 c1 e2 04          	shl    $0x4,%rdx
   417dc:	48 c7 82 30 42 05 00 	movq   $0x0,0x54230(%rdx)
   417e3:	00 00 00 00 
       c_proc->state = P_RUNNABLE;
   417e7:	c7 82 2c 42 05 00 01 	movl   $0x1,0x5422c(%rdx)
   417ee:	00 00 00 

       return c_pid;
}
   417f1:	89 d8                	mov    %ebx,%eax
   417f3:	48 83 c4 48          	add    $0x48,%rsp
   417f7:	5b                   	pop    %rbx
   417f8:	41 5c                	pop    %r12
   417fa:	41 5d                	pop    %r13
   417fc:	41 5e                	pop    %r14
   417fe:	41 5f                	pop    %r15
   41800:	5d                   	pop    %rbp
   41801:	c3                   	retq   

0000000000041802 <syscall_exit()>:


// syscall_exit()
// free memory for current process

void syscall_exit() {
   41802:	f3 0f 1e fa          	endbr64 
   41806:	55                   	push   %rbp
   41807:	48 89 e5             	mov    %rsp,%rbp
  pfree(current);
   4180a:	48 8b 3d ef 29 01 00 	mov    0x129ef(%rip),%rdi        # 54200 <current>
   41811:	e8 d3 fa ff ff       	callq  412e9 <pfree(proc*)>
}
   41816:	5d                   	pop    %rbp
   41817:	c3                   	retq   

0000000000041818 <run(proc*)>:

// run(p)
//    Run process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.

void run(proc* p) {
   41818:	f3 0f 1e fa          	endbr64 
   4181c:	55                   	push   %rbp
   4181d:	48 89 e5             	mov    %rsp,%rbp
   41820:	53                   	push   %rbx
   41821:	48 83 ec 08          	sub    $0x8,%rsp
    assert(p->state == P_RUNNABLE);
   41825:	83 7f 0c 01          	cmpl   $0x1,0xc(%rdi)
   41829:	75 1a                	jne    41845 <run(proc*)+0x2d>
   4182b:	48 89 fb             	mov    %rdi,%rbx
    current = p;
   4182e:	48 89 3d cb 29 01 00 	mov    %rdi,0x129cb(%rip)        # 54200 <current>

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);
   41835:	48 8b 3f             	mov    (%rdi),%rdi
   41838:	e8 a3 17 00 00       	callq  42fe0 <check_pagetable(x86_64_pagetable*)>

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);
   4183d:	48 89 df             	mov    %rbx,%rdi
   41840:	e8 5a f2 ff ff       	callq  40a9f <exception_return(proc*)>
    assert(p->state == P_RUNNABLE);
   41845:	b9 00 00 00 00       	mov    $0x0,%ecx
   4184a:	ba 11 51 04 00       	mov    $0x45111,%edx
   4184f:	be fd 01 00 00       	mov    $0x1fd,%esi
   41854:	bf 28 51 04 00       	mov    $0x45128,%edi
   41859:	e8 5d 12 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>

000000000004185e <kernel_start(char const*)>:
void kernel_start(const char* command) {
   4185e:	f3 0f 1e fa          	endbr64 
   41862:	55                   	push   %rbp
   41863:	48 89 e5             	mov    %rsp,%rbp
   41866:	53                   	push   %rbx
   41867:	48 83 ec 38          	sub    $0x38,%rsp
   4186b:	48 89 fb             	mov    %rdi,%rbx
    init_hardware();
   4186e:	e8 a9 12 00 00       	callq  42b1c <init_hardware()>
    log_printf("Starting WeensyOS\n");
   41873:	bf 32 51 04 00       	mov    $0x45132,%edi
   41878:	b8 00 00 00 00       	mov    $0x0,%eax
   4187d:	e8 07 0f 00 00       	callq  42789 <log_printf(char const*, ...)>
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_acquire);
	__glibcxx_assert(__b != memory_order_acq_rel);
	__glibcxx_assert(__b != memory_order_consume);

	__atomic_store_n(&_M_i, __i, int(__m));
   41882:	48 c7 05 9b 36 01 00 	movq   $0x1,0x1369b(%rip)        # 54f28 <ticks>
   41889:	01 00 00 00 
   4188d:	0f ae f0             	mfence 
    init_timer(HZ);
   41890:	bf 64 00 00 00       	mov    $0x64,%edi
   41895:	e8 db 0b 00 00       	callq  42475 <init_timer(int)>
    console_clear();
   4189a:	e8 1c 35 00 00       	callq  44dbb <console_clear()>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4189f:	48 c7 45 c8 00 60 05 	movq   $0x56000,-0x38(%rbp)
   418a6:	00 
   418a7:	48 c7 45 d0 00 60 05 	movq   $0x56000,-0x30(%rbp)
   418ae:	00 
   418af:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%rbp)
   418b6:	c7 45 dc ff 0f 00 00 	movl   $0xfff,-0x24(%rbp)
   418bd:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
   418c4:	00 
    real_find(va);
   418c5:	be 00 00 00 00       	mov    $0x0,%esi
   418ca:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   418ce:	e8 6f 05 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   418d3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   418d7:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   418de:	0f 86 c1 00 00 00    	jbe    419a5 <kernel_start(char const*)+0x147>
    for (pid_t i = 0; i < NPROC; i++) {
   418e4:	ba 28 42 05 00       	mov    $0x54228,%edx
   418e9:	b8 00 00 00 00       	mov    $0x0,%eax
        ptable[i].pid = i;
   418ee:	89 02                	mov    %eax,(%rdx)
        ptable[i].state = P_FREE;
   418f0:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    for (pid_t i = 0; i < NPROC; i++) {
   418f7:	83 c0 01             	add    $0x1,%eax
   418fa:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   41901:	83 f8 10             	cmp    $0x10,%eax
   41904:	75 e8                	jne    418ee <kernel_start(char const*)+0x90>
    if (command && !program_image(command).empty()) {
   41906:	48 85 db             	test   %rbx,%rbx
   41909:	74 1d                	je     41928 <kernel_start(char const*)+0xca>
   4190b:	48 89 de             	mov    %rbx,%rsi
   4190e:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
   41912:	e8 9f 1e 00 00       	callq  437b6 <program_image::program_image(char const*)>
   41917:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
   4191b:	e8 d6 1e 00 00       	callq  437f6 <program_image::empty() const>
   41920:	84 c0                	test   %al,%al
   41922:	0f 84 0c 01 00 00    	je     41a34 <kernel_start(char const*)+0x1d6>
        process_setup(1, "allocator");
   41928:	be 45 51 04 00       	mov    $0x45145,%esi
   4192d:	bf 01 00 00 00       	mov    $0x1,%edi
   41932:	e8 aa f2 ff ff       	callq  40be1 <process_setup(int, char const*)>
        process_setup(2, "allocator2");
   41937:	be 4f 51 04 00       	mov    $0x4514f,%esi
   4193c:	bf 02 00 00 00       	mov    $0x2,%edi
   41941:	e8 9b f2 ff ff       	callq  40be1 <process_setup(int, char const*)>
        process_setup(3, "allocator3");
   41946:	be 5a 51 04 00       	mov    $0x4515a,%esi
   4194b:	bf 03 00 00 00       	mov    $0x3,%edi
   41950:	e8 8c f2 ff ff       	callq  40be1 <process_setup(int, char const*)>
        process_setup(4, "allocator4");
   41955:	be 65 51 04 00       	mov    $0x45165,%esi
   4195a:	bf 04 00 00 00       	mov    $0x4,%edi
   4195f:	e8 7d f2 ff ff       	callq  40be1 <process_setup(int, char const*)>
    run(&ptable[1]);
   41964:	bf f0 42 05 00       	mov    $0x542f0,%edi
   41969:	e8 aa fe ff ff       	callq  41818 <run(proc*)>
    int r = try_map(pa, perm);
   4196e:	ba 07 00 00 00       	mov    $0x7,%edx
   41973:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   41977:	e8 de 06 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   4197c:	85 c0                	test   %eax,%eax
   4197e:	75 67                	jne    419e7 <kernel_start(char const*)+0x189>
    return find(va_ + delta);
   41980:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   41984:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4198b:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   4198f:	e8 ae 04 00 00       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   41994:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   41998:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4199f:	0f 87 3f ff ff ff    	ja     418e4 <kernel_start(char const*)+0x86>
        if (it.va() != 0) {
   419a5:	48 85 f6             	test   %rsi,%rsi
   419a8:	74 56                	je     41a00 <kernel_start(char const*)+0x1a2>
            if (it.va() >= PROC_START_ADDR || it.va() == CONSOLE_ADDR) {
   419aa:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   419b1:	74 bb                	je     4196e <kernel_start(char const*)+0x110>
   419b3:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   419ba:	77 b2                	ja     4196e <kernel_start(char const*)+0x110>
    int r = try_map(pa, perm);
   419bc:	ba 03 00 00 00       	mov    $0x3,%edx
   419c1:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   419c5:	e8 90 06 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   419ca:	85 c0                	test   %eax,%eax
   419cc:	74 b2                	je     41980 <kernel_start(char const*)+0x122>
   419ce:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   419d3:	ba fe 50 04 00       	mov    $0x450fe,%edx
   419d8:	be e4 00 00 00       	mov    $0xe4,%esi
   419dd:	bf 05 51 04 00       	mov    $0x45105,%edi
   419e2:	e8 d4 10 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   419e7:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   419ec:	ba fe 50 04 00       	mov    $0x450fe,%edx
   419f1:	be e4 00 00 00       	mov    $0xe4,%esi
   419f6:	bf 05 51 04 00       	mov    $0x45105,%edi
   419fb:	e8 bb 10 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    int r = try_map(pa, perm);
   41a00:	ba 00 00 00 00       	mov    $0x0,%edx
   41a05:	be 00 00 00 00       	mov    $0x0,%esi
   41a0a:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   41a0e:	e8 47 06 00 00       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   41a13:	85 c0                	test   %eax,%eax
   41a15:	0f 84 65 ff ff ff    	je     41980 <kernel_start(char const*)+0x122>
   41a1b:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   41a20:	ba fe 50 04 00       	mov    $0x450fe,%edx
   41a25:	be e4 00 00 00       	mov    $0xe4,%esi
   41a2a:	bf 05 51 04 00       	mov    $0x45105,%edi
   41a2f:	e8 87 10 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        process_setup(1, command);
   41a34:	48 89 de             	mov    %rbx,%rsi
   41a37:	bf 01 00 00 00       	mov    $0x1,%edi
   41a3c:	e8 a0 f1 ff ff       	callq  40be1 <process_setup(int, char const*)>
   41a41:	e9 1e ff ff ff       	jmpq   41964 <kernel_start(char const*)+0x106>

0000000000041a46 <memshow()>:
// memshow()
//    Draw a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.

void memshow() {
   41a46:	f3 0f 1e fa          	endbr64 
   41a4a:	55                   	push   %rbp
   41a4b:	48 89 e5             	mov    %rsp,%rbp
    static unsigned last_ticks = 0;
    static int showing = 0;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   41a4e:	83 3d cf 34 01 00 00 	cmpl   $0x0,0x134cf(%rip)        # 54f24 <memshow()::last_ticks>
   41a55:	74 16                	je     41a6d <memshow()+0x27>
      {
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_release);
	__glibcxx_assert(__b != memory_order_acq_rel);

	return __atomic_load_n(&_M_i, int(__m));
   41a57:	48 8b 05 ca 34 01 00 	mov    0x134ca(%rip),%rax        # 54f28 <ticks>
   41a5e:	8b 15 c0 34 01 00    	mov    0x134c0(%rip),%edx        # 54f24 <memshow()::last_ticks>
   41a64:	48 29 d0             	sub    %rdx,%rax
   41a67:	48 83 f8 31          	cmp    $0x31,%rax
   41a6b:	76 27                	jbe    41a94 <memshow()+0x4e>
   41a6d:	48 8b 05 b4 34 01 00 	mov    0x134b4(%rip),%rax        # 54f28 <ticks>
        last_ticks = ticks;
   41a74:	89 05 aa 34 01 00    	mov    %eax,0x134aa(%rip)        # 54f24 <memshow()::last_ticks>
        showing = (showing + 1) % NPROC;
   41a7a:	8b 05 a0 34 01 00    	mov    0x134a0(%rip),%eax        # 54f20 <memshow()::showing>
   41a80:	83 c0 01             	add    $0x1,%eax
   41a83:	99                   	cltd   
   41a84:	c1 ea 1c             	shr    $0x1c,%edx
   41a87:	01 d0                	add    %edx,%eax
   41a89:	83 e0 0f             	and    $0xf,%eax
   41a8c:	29 d0                	sub    %edx,%eax
   41a8e:	89 05 8c 34 01 00    	mov    %eax,0x1348c(%rip)        # 54f20 <memshow()::showing>
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
   41a94:	8b 05 86 34 01 00    	mov    0x13486(%rip),%eax        # 54f20 <memshow()::showing>
void memshow() {
   41a9a:	b9 10 00 00 00       	mov    $0x10,%ecx
   41a9f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   41aa5:	be 01 00 00 00       	mov    $0x1,%esi
   41aaa:	eb 16                	jmp    41ac2 <memshow()+0x7c>
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
   41aac:	83 c0 01             	add    $0x1,%eax
   41aaf:	99                   	cltd   
   41ab0:	c1 ea 1c             	shr    $0x1c,%edx
   41ab3:	01 d0                	add    %edx,%eax
   41ab5:	83 e0 0f             	and    $0xf,%eax
   41ab8:	29 d0                	sub    %edx,%eax
    for (int search = 0; !p && search < NPROC; ++search) {
   41aba:	41 89 f0             	mov    %esi,%r8d
   41abd:	83 e9 01             	sub    $0x1,%ecx
   41ac0:	74 54                	je     41b16 <memshow()+0xd0>
        if (ptable[showing].state != P_FREE
   41ac2:	48 63 d0             	movslq %eax,%rdx
   41ac5:	48 8d 3c 52          	lea    (%rdx,%rdx,2),%rdi
   41ac9:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   41acd:	48 c1 e2 04          	shl    $0x4,%rdx
   41ad1:	83 ba 2c 42 05 00 00 	cmpl   $0x0,0x5422c(%rdx)
   41ad8:	74 d2                	je     41aac <memshow()+0x66>
            && ptable[showing].pagetable) {
   41ada:	48 63 d0             	movslq %eax,%rdx
   41add:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   41ae1:	48 c1 e2 04          	shl    $0x4,%rdx
   41ae5:	48 83 ba 20 42 05 00 	cmpq   $0x0,0x54220(%rdx)
   41aec:	00 
   41aed:	74 bd                	je     41aac <memshow()+0x66>
   41aef:	45 84 c0             	test   %r8b,%r8b
   41af2:	74 06                	je     41afa <memshow()+0xb4>
   41af4:	89 05 26 34 01 00    	mov    %eax,0x13426(%rip)        # 54f20 <memshow()::showing>
            p = &ptable[showing];
   41afa:	48 98                	cltq   
   41afc:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41b00:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41b04:	48 c1 e7 04          	shl    $0x4,%rdi
   41b08:	48 81 c7 20 42 05 00 	add    $0x54220,%rdi
        }
    }

    console_memviewer(p);
   41b0f:	e8 11 26 00 00       	callq  44125 <console_memviewer(proc*)>
    if (!p) {
        console_printf(CPOS(10, 29), 0x0F00, "VIRTUAL ADDRESS SPACE\n"
            "                          [All processes have exited]\n"
            "\n\n\n\n\n\n\n\n\n\n\n");
    }
}
   41b14:	5d                   	pop    %rbp
   41b15:	c3                   	retq   
   41b16:	89 05 04 34 01 00    	mov    %eax,0x13404(%rip)        # 54f20 <memshow()::showing>
    console_memviewer(p);
   41b1c:	bf 00 00 00 00       	mov    $0x0,%edi
   41b21:	e8 ff 25 00 00       	callq  44125 <console_memviewer(proc*)>
        console_printf(CPOS(10, 29), 0x0F00, "VIRTUAL ADDRESS SPACE\n"
   41b26:	ba d8 51 04 00       	mov    $0x451d8,%edx
   41b2b:	be 00 0f 00 00       	mov    $0xf00,%esi
   41b30:	bf 3d 03 00 00       	mov    $0x33d,%edi
   41b35:	b8 00 00 00 00       	mov    $0x0,%eax
   41b3a:	e8 ae 34 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
}
   41b3f:	eb d3                	jmp    41b14 <memshow()+0xce>

0000000000041b41 <schedule()>:
void schedule() {
   41b41:	f3 0f 1e fa          	endbr64 
   41b45:	55                   	push   %rbp
   41b46:	48 89 e5             	mov    %rsp,%rbp
   41b49:	41 54                	push   %r12
   41b4b:	53                   	push   %rbx
    pid_t pid = current->pid;
   41b4c:	48 8b 05 ad 26 01 00 	mov    0x126ad(%rip),%rax        # 54200 <current>
        pid = (pid + 1) % NPROC;
   41b53:	8b 40 08             	mov    0x8(%rax),%eax
   41b56:	83 c0 01             	add    $0x1,%eax
   41b59:	99                   	cltd   
   41b5a:	c1 ea 1c             	shr    $0x1c,%edx
   41b5d:	01 d0                	add    %edx,%eax
   41b5f:	83 e0 0f             	and    $0xf,%eax
   41b62:	29 d0                	sub    %edx,%eax
   41b64:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   41b67:	48 98                	cltq   
   41b69:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41b6d:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41b71:	48 c1 e0 04          	shl    $0x4,%rax
   41b75:	83 b8 2c 42 05 00 01 	cmpl   $0x1,0x5422c(%rax)
   41b7c:	74 5c                	je     41bda <schedule()+0x99>
        check_keyboard();
   41b7e:	e8 6b 18 00 00       	callq  433ee <check_keyboard()>
    for (unsigned spins = 1; true; ++spins) {
   41b83:	bb 01 00 00 00       	mov    $0x1,%ebx
   41b88:	83 c3 01             	add    $0x1,%ebx
        pid = (pid + 1) % NPROC;
   41b8b:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   41b90:	99                   	cltd   
   41b91:	c1 ea 1c             	shr    $0x1c,%edx
   41b94:	01 d0                	add    %edx,%eax
   41b96:	83 e0 0f             	and    $0xf,%eax
   41b99:	29 d0                	sub    %edx,%eax
   41b9b:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   41b9e:	48 98                	cltq   
   41ba0:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41ba4:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41ba8:	48 c1 e0 04          	shl    $0x4,%rax
   41bac:	83 b8 2c 42 05 00 01 	cmpl   $0x1,0x5422c(%rax)
   41bb3:	74 25                	je     41bda <schedule()+0x99>
        check_keyboard();
   41bb5:	e8 34 18 00 00       	callq  433ee <check_keyboard()>
        if (spins % (1 << 12) == 0) {
   41bba:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   41bc0:	75 c6                	jne    41b88 <schedule()+0x47>
            memshow();
   41bc2:	e8 7f fe ff ff       	callq  41a46 <memshow()>
            log_printf("%u\n", spins);
   41bc7:	89 de                	mov    %ebx,%esi
   41bc9:	bf 70 51 04 00       	mov    $0x45170,%edi
   41bce:	b8 00 00 00 00       	mov    $0x0,%eax
   41bd3:	e8 b1 0b 00 00       	callq  42789 <log_printf(char const*, ...)>
   41bd8:	eb ae                	jmp    41b88 <schedule()+0x47>
            run(&ptable[pid]);
   41bda:	49 63 c4             	movslq %r12d,%rax
   41bdd:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41be1:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41be5:	48 c1 e7 04          	shl    $0x4,%rdi
   41be9:	48 81 c7 20 42 05 00 	add    $0x54220,%rdi
   41bf0:	e8 23 fc ff ff       	callq  41818 <run(proc*)>

0000000000041bf5 <exception(regstate*)>:
void exception(regstate* regs) {
   41bf5:	f3 0f 1e fa          	endbr64 
   41bf9:	55                   	push   %rbp
   41bfa:	48 89 e5             	mov    %rsp,%rbp
   41bfd:	53                   	push   %rbx
   41bfe:	48 83 ec 08          	sub    $0x8,%rsp
   41c02:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41c05:	48 8b 1d f4 25 01 00 	mov    0x125f4(%rip),%rbx        # 54200 <current>
   41c0c:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41c10:	b9 18 00 00 00       	mov    $0x18,%ecx
   41c15:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41c18:	8b 3d de 73 07 00    	mov    0x773de(%rip),%edi        # b8ffc <cursorpos>
   41c1e:	e8 b6 09 00 00       	callq  425d9 <console_show_cursor(int)>
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PTE_U)) {
   41c23:	83 bb 98 00 00 00 0e 	cmpl   $0xe,0x98(%rbx)
   41c2a:	75 09                	jne    41c35 <exception(regstate*)+0x40>
   41c2c:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   41c33:	74 05                	je     41c3a <exception(regstate*)+0x45>
        memshow();
   41c35:	e8 0c fe ff ff       	callq  41a46 <memshow()>
    check_keyboard();
   41c3a:	e8 af 17 00 00       	callq  433ee <check_keyboard()>
    switch (regs->reg_intno) {
   41c3f:	8b b3 98 00 00 00    	mov    0x98(%rbx),%esi
   41c45:	83 fe 0e             	cmp    $0xe,%esi
   41c48:	74 22                	je     41c6c <exception(regstate*)+0x77>
   41c4a:	83 fe 20             	cmp    $0x20,%esi
   41c4d:	0f 85 9d 00 00 00    	jne    41cf0 <exception(regstate*)+0xfb>
      { return __atomic_add_fetch(&_M_i, 1, int(memory_order_seq_cst)); }
   41c53:	f0 48 83 05 cc 32 01 	lock addq $0x1,0x132cc(%rip)        # 54f28 <ticks>
   41c5a:	00 01 
}
inline uint32_t lapicstate::read(int reg) const {
    return reg_[reg].v;
}
inline void lapicstate::write(int reg, uint32_t v) {
    reg_[reg].v = v;
   41c5c:	b8 b0 00 e0 fe       	mov    $0xfee000b0,%eax
   41c61:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        schedule();
   41c67:	e8 d5 fe ff ff       	callq  41b41 <schedule()>
    asm volatile("movq %0, %%cr0" : : "r" (x));
}

__always_inline uintptr_t rdcr2() {
    uintptr_t x;
    asm volatile("movq %%cr2, %0" : "=r" (x));
   41c6c:	41 0f 20 d0          	mov    %cr2,%r8
        const char* operation = regs->reg_errcode & PTE_W
   41c70:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
                ? "write" : "read";
   41c77:	a8 02                	test   $0x2,%al
   41c79:	41 b9 74 51 04 00    	mov    $0x45174,%r9d
   41c7f:	ba 7a 51 04 00       	mov    $0x4517a,%edx
   41c84:	4c 0f 44 ca          	cmove  %rdx,%r9
                ? "protection problem" : "missing page";
   41c88:	a8 01                	test   $0x1,%al
   41c8a:	b9 7f 51 04 00       	mov    $0x4517f,%ecx
   41c8f:	ba 92 51 04 00       	mov    $0x45192,%edx
   41c94:	48 0f 44 ca          	cmove  %rdx,%rcx
        if (!(regs->reg_errcode & PTE_U)) {
   41c98:	a8 04                	test   $0x4,%al
   41c9a:	74 3f                	je     41cdb <exception(regstate*)+0xe6>
        console_printf(CPOS(24, 0), 0x0C00,
   41c9c:	48 8b 05 5d 25 01 00 	mov    0x1255d(%rip),%rax        # 54200 <current>
   41ca3:	8b 40 08             	mov    0x8(%rax),%eax
   41ca6:	ff b3 a8 00 00 00    	pushq  0xa8(%rbx)
   41cac:	51                   	push   %rcx
   41cad:	89 c1                	mov    %eax,%ecx
   41caf:	ba 58 52 04 00       	mov    $0x45258,%edx
   41cb4:	be 00 0c 00 00       	mov    $0xc00,%esi
   41cb9:	bf 80 07 00 00       	mov    $0x780,%edi
   41cbe:	b8 00 00 00 00       	mov    $0x0,%eax
   41cc3:	e8 25 33 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
        current->state = P_FAULTED;
   41cc8:	48 8b 05 31 25 01 00 	mov    0x12531(%rip),%rax        # 54200 <current>
   41ccf:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%rax)
        schedule();
   41cd6:	e8 66 fe ff ff       	callq  41b41 <schedule()>
            panic("Kernel page fault on %p (%s %s)!\n",
   41cdb:	4c 89 ca             	mov    %r9,%rdx
   41cde:	4c 89 c6             	mov    %r8,%rsi
   41ce1:	bf 30 52 04 00       	mov    $0x45230,%edi
   41ce6:	b8 00 00 00 00       	mov    $0x0,%eax
   41ceb:	e8 e2 19 00 00       	callq  436d2 <panic(char const*, ...)>
        panic("Unexpected exception %d!\n", regs->reg_intno);
   41cf0:	bf 9f 51 04 00       	mov    $0x4519f,%edi
   41cf5:	b8 00 00 00 00       	mov    $0x0,%eax
   41cfa:	e8 d3 19 00 00       	callq  436d2 <panic(char const*, ...)>

0000000000041cff <syscall(regstate*)>:
uintptr_t syscall(regstate* regs) {
   41cff:	f3 0f 1e fa          	endbr64 
   41d03:	55                   	push   %rbp
   41d04:	48 89 e5             	mov    %rsp,%rbp
   41d07:	53                   	push   %rbx
   41d08:	48 83 ec 08          	sub    $0x8,%rsp
   41d0c:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41d0f:	48 8b 1d ea 24 01 00 	mov    0x124ea(%rip),%rbx        # 54200 <current>
   41d16:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41d1a:	b9 18 00 00 00       	mov    $0x18,%ecx
   41d1f:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41d22:	8b 3d d4 72 07 00    	mov    0x772d4(%rip),%edi        # b8ffc <cursorpos>
   41d28:	e8 ac 08 00 00       	callq  425d9 <console_show_cursor(int)>
    memshow();
   41d2d:	e8 14 fd ff ff       	callq  41a46 <memshow()>
    check_keyboard();
   41d32:	e8 b7 16 00 00       	callq  433ee <check_keyboard()>
    switch (regs->reg_rax) {
   41d37:	48 8b 73 10          	mov    0x10(%rbx),%rsi
   41d3b:	48 83 fe 06          	cmp    $0x6,%rsi
   41d3f:	77 61                	ja     41da2 <syscall(regstate*)+0xa3>
   41d41:	3e ff 24 f5 88 52 04 	notrack jmpq *0x45288(,%rsi,8)
   41d48:	00 
        user_panic(current);    // does not return
   41d49:	48 8b 3d b0 24 01 00 	mov    0x124b0(%rip),%rdi        # 54200 <current>
   41d50:	e8 f7 17 00 00       	callq  4354c <user_panic(proc*)>
        return current->pid;
   41d55:	48 8b 05 a4 24 01 00 	mov    0x124a4(%rip),%rax        # 54200 <current>
   41d5c:	48 63 40 08          	movslq 0x8(%rax),%rax
}
   41d60:	48 83 c4 08          	add    $0x8,%rsp
   41d64:	5b                   	pop    %rbx
   41d65:	5d                   	pop    %rbp
   41d66:	c3                   	retq   
        current->regs.reg_rax = 0;
   41d67:	48 8b 05 92 24 01 00 	mov    0x12492(%rip),%rax        # 54200 <current>
   41d6e:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   41d75:	00 
        schedule();             // does not return
   41d76:	e8 c6 fd ff ff       	callq  41b41 <schedule()>
        return syscall_page_alloc(current->regs.reg_rdi);
   41d7b:	48 8b 05 7e 24 01 00 	mov    0x1247e(%rip),%rax        # 54200 <current>
   41d82:	48 8b 78 40          	mov    0x40(%rax),%rdi
   41d86:	e8 4f f4 ff ff       	callq  411da <syscall_page_alloc(unsigned long)>
   41d8b:	48 98                	cltq   
   41d8d:	eb d1                	jmp    41d60 <syscall(regstate*)+0x61>
        return syscall_fork();
   41d8f:	e8 cb f6 ff ff       	callq  4145f <syscall_fork()>
   41d94:	48 98                	cltq   
   41d96:	eb c8                	jmp    41d60 <syscall(regstate*)+0x61>
        syscall_exit();
   41d98:	e8 65 fa ff ff       	callq  41802 <syscall_exit()>
        schedule();
   41d9d:	e8 9f fd ff ff       	callq  41b41 <schedule()>
        panic("Unexpected system call %ld!\n", regs->reg_rax);
   41da2:	bf b9 51 04 00       	mov    $0x451b9,%edi
   41da7:	b8 00 00 00 00       	mov    $0x0,%eax
   41dac:	e8 21 19 00 00       	callq  436d2 <panic(char const*, ...)>
   41db1:	90                   	nop

0000000000041db2 <vmiter::down()>:
    } else {
        return 0;
    }
}

void vmiter::down() {
   41db2:	f3 0f 1e fa          	endbr64 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41db6:	8b 47 10             	mov    0x10(%rdi),%eax
   41db9:	85 c0                	test   %eax,%eax
   41dbb:	7e 4f                	jle    41e0c <vmiter::down()+0x5a>
        perm_ &= *pep_ | ~(PTE_P | PTE_W | PTE_U);
        --level_;
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41dbd:	49 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%r8
   41dc4:	ff 0f 00 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41dc7:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
   41dcb:	48 8b 11             	mov    (%rcx),%rdx
   41dce:	48 89 d6             	mov    %rdx,%rsi
   41dd1:	81 e6 81 00 00 00    	and    $0x81,%esi
   41dd7:	48 83 fe 01          	cmp    $0x1,%rsi
   41ddb:	75 2f                	jne    41e0c <vmiter::down()+0x5a>
        perm_ &= *pep_ | ~(PTE_P | PTE_W | PTE_U);
   41ddd:	83 ca f8             	or     $0xfffffff8,%edx
   41de0:	21 57 14             	and    %edx,0x14(%rdi)
        --level_;
   41de3:	83 e8 01             	sub    $0x1,%eax
   41de6:	89 47 10             	mov    %eax,0x10(%rdi)
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41de9:	4c 89 c6             	mov    %r8,%rsi
   41dec:	48 23 31             	and    (%rcx),%rsi
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41def:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41df3:	48 8b 57 18          	mov    0x18(%rdi),%rdx
   41df7:	48 d3 ea             	shr    %cl,%rdx
        x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
        pep_ = &pt->entry[pageindex(va_, level_)];
   41dfa:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   41e00:	48 8d 14 d6          	lea    (%rsi,%rdx,8),%rdx
   41e04:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41e08:	85 c0                	test   %eax,%eax
   41e0a:	75 bb                	jne    41dc7 <vmiter::down()+0x15>
    }
    if ((*pep_ & PTE_PAMASK) >= 0x100000000UL) {
   41e0c:	48 8b 47 08          	mov    0x8(%rdi),%rax
   41e10:	48 8b 10             	mov    (%rax),%rdx
   41e13:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   41e1a:	ff 0f 00 
   41e1d:	48 21 d0             	and    %rdx,%rax
   41e20:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   41e25:	48 39 c8             	cmp    %rcx,%rax
   41e28:	77 01                	ja     41e2b <vmiter::down()+0x79>
   41e2a:	c3                   	retq   
void vmiter::down() {
   41e2b:	55                   	push   %rbp
   41e2c:	48 89 e5             	mov    %rsp,%rbp
        panic("Page table %p may contain uninitialized memory!\n"
   41e2f:	48 8b 37             	mov    (%rdi),%rsi
   41e32:	bf c0 52 04 00       	mov    $0x452c0,%edi
   41e37:	b8 00 00 00 00       	mov    $0x0,%eax
   41e3c:	e8 91 18 00 00       	callq  436d2 <panic(char const*, ...)>
   41e41:	90                   	nop

0000000000041e42 <vmiter::real_find(unsigned long)>:
              "(Page table contents: %p)\n", pt_, *pep_);
    }
}

void vmiter::real_find(uintptr_t va) {
   41e42:	f3 0f 1e fa          	endbr64 
   41e46:	55                   	push   %rbp
   41e47:	48 89 e5             	mov    %rsp,%rbp
    if (level_ == 3 || ((va_ ^ va) & ~pageoffmask(level_ + 1)) != 0) {
   41e4a:	8b 47 10             	mov    0x10(%rdi),%eax
   41e4d:	83 f8 03             	cmp    $0x3,%eax
   41e50:	74 1d                	je     41e6f <vmiter::real_find(unsigned long)+0x2d>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41e52:	8d 54 c0 09          	lea    0x9(%rax,%rax,8),%edx
   41e56:	8d 4a 0c             	lea    0xc(%rdx),%ecx
   41e59:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41e60:	48 d3 e0             	shl    %cl,%rax
   41e63:	48 89 f1             	mov    %rsi,%rcx
   41e66:	48 33 4f 18          	xor    0x18(%rdi),%rcx
   41e6a:	48 85 c8             	test   %rcx,%rax
   41e6d:	74 34                	je     41ea3 <vmiter::real_find(unsigned long)+0x61>
        level_ = 3;
   41e6f:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    return va <= VA_LOWMAX || va >= VA_HIGHMIN;
   41e76:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
   41e7d:	80 ff ff 
   41e80:	48 01 f0             	add    %rsi,%rax
        if (va_is_canonical(va)) {
   41e83:	48 ba ff ff ff ff ff 	movabs $0xfffeffffffffffff,%rdx
   41e8a:	ff fe ff 
   41e8d:	48 39 d0             	cmp    %rdx,%rax
   41e90:	77 3e                	ja     41ed0 <vmiter::real_find(unsigned long)+0x8e>
            perm_ = initial_perm;
            pep_ = &pt_->entry[pageindex(va, level_)];
        } else {
            perm_ = 0;
   41e92:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
   41e99:	48 c7 47 08 30 54 04 	movq   $0x45430,0x8(%rdi)
   41ea0:	00 
   41ea1:	eb 47                	jmp    41eea <vmiter::real_find(unsigned long)+0xa8>
        }
    } else {
        int curidx = (reinterpret_cast<uintptr_t>(pep_) % PAGESIZE) >> 3;
   41ea3:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41ea7:	8d 4a 03             	lea    0x3(%rdx),%ecx
   41eaa:	48 89 f0             	mov    %rsi,%rax
   41ead:	48 d3 e8             	shr    %cl,%rax
   41eb0:	25 ff 01 00 00       	and    $0x1ff,%eax
   41eb5:	4c 89 c2             	mov    %r8,%rdx
   41eb8:	48 c1 ea 03          	shr    $0x3,%rdx
   41ebc:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
        pep_ += pageindex(va, level_) - curidx;
   41ec2:	29 d0                	sub    %edx,%eax
   41ec4:	48 98                	cltq   
   41ec6:	49 8d 04 c0          	lea    (%r8,%rax,8),%rax
   41eca:	48 89 47 08          	mov    %rax,0x8(%rdi)
   41ece:	eb 1a                	jmp    41eea <vmiter::real_find(unsigned long)+0xa8>
            perm_ = initial_perm;
   41ed0:	c7 47 14 ff 0f 00 00 	movl   $0xfff,0x14(%rdi)
            pep_ = &pt_->entry[pageindex(va, level_)];
   41ed7:	48 89 f0             	mov    %rsi,%rax
   41eda:	48 c1 e8 24          	shr    $0x24,%rax
   41ede:	25 f8 0f 00 00       	and    $0xff8,%eax
   41ee3:	48 03 07             	add    (%rdi),%rax
   41ee6:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
    va_ = va;
   41eea:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down();
   41eee:	e8 bf fe ff ff       	callq  41db2 <vmiter::down()>
}
   41ef3:	5d                   	pop    %rbp
   41ef4:	c3                   	retq   
   41ef5:	90                   	nop

0000000000041ef6 <vmiter::range_perm(unsigned long) const>:
uint64_t vmiter::range_perm(size_t sz) const {
   41ef6:	f3 0f 1e fa          	endbr64 
   41efa:	55                   	push   %rbp
   41efb:	48 89 e5             	mov    %rsp,%rbp
   41efe:	41 55                	push   %r13
   41f00:	41 54                	push   %r12
   41f02:	53                   	push   %rbx
   41f03:	48 83 ec 28          	sub    $0x28,%rsp
    uint64_t ph = *pep_ & perm_;
   41f07:	48 8b 47 08          	mov    0x8(%rdi),%rax
   41f0b:	48 63 5f 14          	movslq 0x14(%rdi),%rbx
   41f0f:	48 23 18             	and    (%rax),%rbx
   41f12:	48 89 d8             	mov    %rbx,%rax
    return ph & -(ph & PTE_P);
   41f15:	83 e3 01             	and    $0x1,%ebx
   41f18:	48 f7 db             	neg    %rbx
   41f1b:	48 21 c3             	and    %rax,%rbx
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41f1e:	8b 47 10             	mov    0x10(%rdi),%eax
   41f21:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41f25:	b8 01 00 00 00       	mov    $0x1,%eax
   41f2a:	48 d3 e0             	shl    %cl,%rax
    if ((p & PTE_P) != 0 && sz > rsz) {
   41f2d:	f6 c3 01             	test   $0x1,%bl
   41f30:	74 05                	je     41f37 <vmiter::range_perm(unsigned long) const+0x41>
   41f32:	48 39 c6             	cmp    %rax,%rsi
   41f35:	77 18                	ja     41f4f <vmiter::range_perm(unsigned long) const+0x59>
        return 0;
   41f37:	48 89 d8             	mov    %rbx,%rax
   41f3a:	83 e0 01             	and    $0x1,%eax
   41f3d:	48 0f 44 d8          	cmove  %rax,%rbx
}
   41f41:	48 89 d8             	mov    %rbx,%rax
   41f44:	48 83 c4 28          	add    $0x28,%rsp
   41f48:	5b                   	pop    %rbx
   41f49:	41 5c                	pop    %r12
   41f4b:	41 5d                	pop    %r13
   41f4d:	5d                   	pop    %rbp
   41f4e:	c3                   	retq   
    return va_;
   41f4f:	4c 8b 67 18          	mov    0x18(%rdi),%r12
        if (sz > ((int64_t) va() < 0 ? 0 : VA_LOWEND) - va()) {
   41f53:	4c 89 e2             	mov    %r12,%rdx
   41f56:	48 f7 d2             	not    %rdx
   41f59:	48 c1 ea 3f          	shr    $0x3f,%rdx
   41f5d:	48 c1 e2 2f          	shl    $0x2f,%rdx
   41f61:	4c 29 e2             	sub    %r12,%rdx
   41f64:	48 39 f2             	cmp    %rsi,%rdx
   41f67:	0f 82 8e 00 00 00    	jb     41ffb <vmiter::range_perm(unsigned long) const+0x105>
        vmiter it(*this);
   41f6d:	48 8b 17             	mov    (%rdi),%rdx
   41f70:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
   41f74:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   41f78:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
   41f7c:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   41f80:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
   41f84:	48 8b 57 18          	mov    0x18(%rdi),%rdx
   41f88:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   41f8c:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
        sz += va() & (rsz - 1);
   41f90:	49 21 d4             	and    %rdx,%r12
   41f93:	49 01 f4             	add    %rsi,%r12
   41f96:	41 bd 01 00 00 00    	mov    $0x1,%r13d
            sz -= rsz;
   41f9c:	49 29 c4             	sub    %rax,%r12
   41f9f:	8b 45 d0             	mov    -0x30(%rbp),%eax
   41fa2:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41fa6:	4c 89 ee             	mov    %r13,%rsi
   41fa9:	48 d3 e6             	shl    %cl,%rsi
   41fac:	48 83 ee 01          	sub    $0x1,%rsi
    return (va_ | pageoffmask(level_)) + 1;
   41fb0:	48 0b 75 d8          	or     -0x28(%rbp),%rsi
   41fb4:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   41fb8:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41fbc:	e8 81 fe ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    uint64_t ph = *pep_ & perm_;
   41fc1:	48 63 45 d4          	movslq -0x2c(%rbp),%rax
   41fc5:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   41fc9:	48 23 02             	and    (%rdx),%rax
   41fcc:	48 89 c2             	mov    %rax,%rdx
    return ph & -(ph & PTE_P);
   41fcf:	83 e0 01             	and    $0x1,%eax
   41fd2:	48 f7 d8             	neg    %rax
   41fd5:	48 21 d0             	and    %rdx,%rax
            p &= it.perm();
   41fd8:	48 21 c3             	and    %rax,%rbx
   41fdb:	8b 45 d0             	mov    -0x30(%rbp),%eax
   41fde:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41fe2:	4c 89 e8             	mov    %r13,%rax
   41fe5:	48 d3 e0             	shl    %cl,%rax
        } while ((p & PTE_P) != 0 && sz > rsz);
   41fe8:	f6 c3 01             	test   $0x1,%bl
   41feb:	0f 84 46 ff ff ff    	je     41f37 <vmiter::range_perm(unsigned long) const+0x41>
   41ff1:	49 39 c4             	cmp    %rax,%r12
   41ff4:	77 a6                	ja     41f9c <vmiter::range_perm(unsigned long) const+0xa6>
   41ff6:	e9 3c ff ff ff       	jmpq   41f37 <vmiter::range_perm(unsigned long) const+0x41>
            return 0;
   41ffb:	bb 00 00 00 00       	mov    $0x0,%ebx
   42000:	e9 3c ff ff ff       	jmpq   41f41 <vmiter::range_perm(unsigned long) const+0x4b>
   42005:	90                   	nop

0000000000042006 <vmiter::next()>:

void vmiter::next() {
   42006:	f3 0f 1e fa          	endbr64 
   4200a:	55                   	push   %rbp
   4200b:	48 89 e5             	mov    %rsp,%rbp
    int level = 0;
    if (level_ > 0 && !perm()) {
   4200e:	8b 47 10             	mov    0x10(%rdi),%eax
   42011:	85 c0                	test   %eax,%eax
   42013:	7e 3e                	jle    42053 <vmiter::next()+0x4d>
    uint64_t ph = *pep_ & perm_;
   42015:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
   42019:	48 63 57 14          	movslq 0x14(%rdi),%rdx
   4201d:	48 23 11             	and    (%rcx),%rdx
    return ph & -(ph & PTE_P);
   42020:	48 89 d1             	mov    %rdx,%rcx
   42023:	83 e1 01             	and    $0x1,%ecx
   42026:	48 f7 d9             	neg    %rcx
    int level = 0;
   42029:	48 85 d1             	test   %rdx,%rcx
   4202c:	ba 00 00 00 00       	mov    $0x0,%edx
   42031:	0f 45 c2             	cmovne %edx,%eax
   42034:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42038:	be 01 00 00 00       	mov    $0x1,%esi
   4203d:	48 d3 e6             	shl    %cl,%rsi
   42040:	48 83 ee 01          	sub    $0x1,%rsi
        level = level_;
    }
    real_find((va_ | pageoffmask(level)) + 1);
   42044:	48 0b 77 18          	or     0x18(%rdi),%rsi
   42048:	48 83 c6 01          	add    $0x1,%rsi
   4204c:	e8 f1 fd ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
}
   42051:	5d                   	pop    %rbp
   42052:	c3                   	retq   
    int level = 0;
   42053:	b8 00 00 00 00       	mov    $0x0,%eax
   42058:	eb da                	jmp    42034 <vmiter::next()+0x2e>

000000000004205a <vmiter::try_map(unsigned long, int)>:

int vmiter::try_map(uintptr_t pa, int perm) {
   4205a:	f3 0f 1e fa          	endbr64 
   4205e:	55                   	push   %rbp
   4205f:	48 89 e5             	mov    %rsp,%rbp
   42062:	41 57                	push   %r15
   42064:	41 56                	push   %r14
   42066:	41 55                	push   %r13
   42068:	41 54                	push   %r12
   4206a:	53                   	push   %rbx
   4206b:	48 83 ec 08          	sub    $0x8,%rsp
   4206f:	49 89 fc             	mov    %rdi,%r12
   42072:	49 89 f6             	mov    %rsi,%r14
   42075:	41 89 d7             	mov    %edx,%r15d
    if (pa == (uintptr_t) -1 && perm == 0) {
   42078:	85 d2                	test   %edx,%edx
   4207a:	0f 94 c2             	sete   %dl
   4207d:	48 83 fe ff          	cmp    $0xffffffffffffffff,%rsi
   42081:	75 2a                	jne    420ad <vmiter::try_map(unsigned long, int)+0x53>
   42083:	84 d2                	test   %dl,%dl
   42085:	74 26                	je     420ad <vmiter::try_map(unsigned long, int)+0x53>
        pa = 0;
    }
    // virtual address is page-aligned
    assert((va_ % PAGESIZE) == 0, "vmiter::try_map va not aligned");
   42087:	4c 8b 77 18          	mov    0x18(%rdi),%r14
   4208b:	41 81 e6 ff 0f 00 00 	and    $0xfff,%r14d
   42092:	74 4d                	je     420e1 <vmiter::try_map(unsigned long, int)+0x87>
   42094:	b9 10 53 04 00       	mov    $0x45310,%ecx
   42099:	ba a3 53 04 00       	mov    $0x453a3,%edx
   4209e:	be 49 00 00 00       	mov    $0x49,%esi
   420a3:	bf b9 53 04 00       	mov    $0x453b9,%edi
   420a8:	e8 0e 0a 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   420ad:	66 41 f7 44 24 18 ff 	testw  $0xfff,0x18(%r12)
   420b4:	0f 
   420b5:	75 dd                	jne    42094 <vmiter::try_map(unsigned long, int)+0x3a>
    if (perm & PTE_P) {
   420b7:	41 f6 c7 01          	test   $0x1,%r15b
   420bb:	0f 84 ee 00 00 00    	je     421af <vmiter::try_map(unsigned long, int)+0x155>
        // if mapping present, physical address is page-aligned
        assert(pa != (uintptr_t) -1, "vmiter::try_map mapping nonexistent pa");
   420c1:	49 83 fe ff          	cmp    $0xffffffffffffffff,%r14
   420c5:	0f 84 b2 00 00 00    	je     4217d <vmiter::try_map(unsigned long, int)+0x123>
        assert((pa & PTE_PAMASK) == pa, "vmiter::try_map pa not aligned");
   420cb:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   420d2:	ff 0f 00 
   420d5:	4c 21 f0             	and    %r14,%rax
   420d8:	4c 39 f0             	cmp    %r14,%rax
   420db:	0f 85 b5 00 00 00    	jne    42196 <vmiter::try_map(unsigned long, int)+0x13c>
    } else {
        assert((pa & PTE_P) == 0, "vmiter::try_map invalid pa");
    }
    // new permissions (`perm`) cannot be less restrictive than permissions
    // imposed by higher-level page tables (`perm_`)
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   420e1:	45 8b 6c 24 14       	mov    0x14(%r12),%r13d
   420e6:	41 f7 d5             	not    %r13d
   420e9:	45 21 fd             	and    %r15d,%r13d
   420ec:	41 83 e5 07          	and    $0x7,%r13d
   420f0:	0f 85 dc 00 00 00    	jne    421d2 <vmiter::try_map(unsigned long, int)+0x178>

    while (level_ > 0 && perm) {
   420f6:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   420fb:	85 c0                	test   %eax,%eax
   420fd:	7e 57                	jle    42156 <vmiter::try_map(unsigned long, int)+0xfc>
   420ff:	84 d2                	test   %dl,%dl
   42101:	75 53                	jne    42156 <vmiter::try_map(unsigned long, int)+0xfc>
        assert(!(*pep_ & PTE_P));
   42103:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   42108:	f6 00 01             	testb  $0x1,(%rax)
   4210b:	0f 85 da 00 00 00    	jne    421eb <vmiter::try_map(unsigned long, int)+0x191>
        x86_64_pagetable* pt = (x86_64_pagetable*) kalloc(PAGESIZE);
   42111:	bf 00 10 00 00       	mov    $0x1000,%edi
   42116:	e8 4b ea ff ff       	callq  40b66 <kalloc(unsigned long)>
   4211b:	48 89 c3             	mov    %rax,%rbx
        if (!pt) {
   4211e:	48 85 c0             	test   %rax,%rax
   42121:	0f 84 dd 00 00 00    	je     42204 <vmiter::try_map(unsigned long, int)+0x1aa>
            return -1;
        }
        memset(pt, 0, PAGESIZE);
   42127:	ba 00 10 00 00       	mov    $0x1000,%edx
   4212c:	be 00 00 00 00       	mov    $0x0,%esi
   42131:	48 89 c7             	mov    %rax,%rdi
   42134:	e8 8f 23 00 00       	callq  444c8 <memset>
        *pep_ = (uintptr_t) pt | PTE_P | PTE_W | PTE_U;
   42139:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   4213e:	48 83 cb 07          	or     $0x7,%rbx
   42142:	48 89 18             	mov    %rbx,(%rax)
        down();
   42145:	4c 89 e7             	mov    %r12,%rdi
   42148:	e8 65 fc ff ff       	callq  41db2 <vmiter::down()>
    while (level_ > 0 && perm) {
   4214d:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   42152:	85 c0                	test   %eax,%eax
   42154:	7f ad                	jg     42103 <vmiter::try_map(unsigned long, int)+0xa9>
    }

    if (level_ == 0) {
   42156:	85 c0                	test   %eax,%eax
   42158:	75 11                	jne    4216b <vmiter::try_map(unsigned long, int)+0x111>
        *pep_ = pa | perm;
   4215a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
   4215f:	4d 63 ff             	movslq %r15d,%r15
   42162:	4d 09 fe             	or     %r15,%r14
   42165:	4c 89 32             	mov    %r14,(%rdx)
    }
    return 0;
   42168:	41 89 c5             	mov    %eax,%r13d
}
   4216b:	44 89 e8             	mov    %r13d,%eax
   4216e:	48 83 c4 08          	add    $0x8,%rsp
   42172:	5b                   	pop    %rbx
   42173:	41 5c                	pop    %r12
   42175:	41 5d                	pop    %r13
   42177:	41 5e                	pop    %r14
   42179:	41 5f                	pop    %r15
   4217b:	5d                   	pop    %rbp
   4217c:	c3                   	retq   
        assert(pa != (uintptr_t) -1, "vmiter::try_map mapping nonexistent pa");
   4217d:	b9 30 53 04 00       	mov    $0x45330,%ecx
   42182:	ba c5 53 04 00       	mov    $0x453c5,%edx
   42187:	be 4c 00 00 00       	mov    $0x4c,%esi
   4218c:	bf b9 53 04 00       	mov    $0x453b9,%edi
   42191:	e8 25 09 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        assert((pa & PTE_PAMASK) == pa, "vmiter::try_map pa not aligned");
   42196:	b9 58 53 04 00       	mov    $0x45358,%ecx
   4219b:	ba da 53 04 00       	mov    $0x453da,%edx
   421a0:	be 4d 00 00 00       	mov    $0x4d,%esi
   421a5:	bf b9 53 04 00       	mov    $0x453b9,%edi
   421aa:	e8 0c 09 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        assert((pa & PTE_P) == 0, "vmiter::try_map invalid pa");
   421af:	41 f6 c6 01          	test   $0x1,%r14b
   421b3:	0f 84 28 ff ff ff    	je     420e1 <vmiter::try_map(unsigned long, int)+0x87>
   421b9:	b9 f2 53 04 00       	mov    $0x453f2,%ecx
   421be:	ba 0d 54 04 00       	mov    $0x4540d,%edx
   421c3:	be 4f 00 00 00       	mov    $0x4f,%esi
   421c8:	bf b9 53 04 00       	mov    $0x453b9,%edi
   421cd:	e8 e9 08 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   421d2:	b9 00 00 00 00       	mov    $0x0,%ecx
   421d7:	ba 78 53 04 00       	mov    $0x45378,%edx
   421dc:	be 53 00 00 00       	mov    $0x53,%esi
   421e1:	bf b9 53 04 00       	mov    $0x453b9,%edi
   421e6:	e8 d0 08 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        assert(!(*pep_ & PTE_P));
   421eb:	b9 00 00 00 00       	mov    $0x0,%ecx
   421f0:	ba 1f 54 04 00       	mov    $0x4541f,%edx
   421f5:	be 56 00 00 00       	mov    $0x56,%esi
   421fa:	bf b9 53 04 00       	mov    $0x453b9,%edi
   421ff:	e8 b7 08 00 00       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
            return -1;
   42204:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   4220a:	e9 5c ff ff ff       	jmpq   4216b <vmiter::try_map(unsigned long, int)+0x111>
   4220f:	90                   	nop

0000000000042210 <ptiter::down(bool)>:
ptiter::ptiter(x86_64_pagetable* pt)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), va_(0) {
    down(false);
}

void ptiter::down(bool skip) {
   42210:	f3 0f 1e fa          	endbr64 
   42214:	55                   	push   %rbp
   42215:	48 89 e5             	mov    %rsp,%rbp
   42218:	41 55                	push   %r13
   4221a:	41 54                	push   %r12
   4221c:	53                   	push   %rbx
    int stop_level = 1;
   4221d:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   42223:	41 ba 01 00 00 00    	mov    $0x1,%r10d
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
            if (level_ == stop_level) {
                break;
            } else {
                --level_;
                uintptr_t pa = *pep_ & PTE_PAMASK;
   42229:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   42230:	ff 0f 00 
                // up one level
                if (level_ == 3) {
                    va_ = VA_NONCANONMAX + 1;
                    return;
                }
                stop_level = level_ + 1;
   42233:	41 bb 00 00 00 00    	mov    $0x0,%r11d
   42239:	eb 53                	jmp    4228e <ptiter::down(bool)+0x7e>
            if (level_ == stop_level) {
   4223b:	8b 47 10             	mov    0x10(%rdi),%eax
   4223e:	44 39 e8             	cmp    %r13d,%eax
   42241:	74 35                	je     42278 <ptiter::down(bool)+0x68>
                --level_;
   42243:	83 e8 01             	sub    $0x1,%eax
   42246:	89 47 10             	mov    %eax,0x10(%rdi)
                uintptr_t pa = *pep_ & PTE_PAMASK;
   42249:	48 89 da             	mov    %rbx,%rdx
   4224c:	49 23 14 24          	and    (%r12),%rdx
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   42250:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42254:	48 8b 47 18          	mov    0x18(%rdi),%rax
   42258:	48 d3 e8             	shr    %cl,%rax
                pep_ = &pt->entry[pageindex(va_, level_)];
   4225b:	25 ff 01 00 00       	and    $0x1ff,%eax
   42260:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   42264:	48 89 47 08          	mov    %rax,0x8(%rdi)
            }
   42268:	eb 21                	jmp    4228b <ptiter::down(bool)+0x7b>
                    va_ = VA_NONCANONMAX + 1;
   4226a:	48 b8 00 00 00 00 00 	movabs $0x1000000000000,%rax
   42271:	00 01 00 
   42274:	48 89 47 18          	mov    %rax,0x18(%rdi)
                va_ = va;
            }
            skip = false;
        }
    }
}
   42278:	5b                   	pop    %rbx
   42279:	41 5c                	pop    %r12
   4227b:	41 5d                	pop    %r13
   4227d:	5d                   	pop    %rbp
   4227e:	c3                   	retq   
                ++pep_;
   4227f:	49 83 c4 08          	add    $0x8,%r12
   42283:	4c 89 67 08          	mov    %r12,0x8(%rdi)
                va_ = va;
   42287:	48 89 47 18          	mov    %rax,0x18(%rdi)
                stop_level = level_ + 1;
   4228b:	44 89 de             	mov    %r11d,%esi
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
   4228e:	4c 8b 67 08          	mov    0x8(%rdi),%r12
   42292:	49 8b 04 24          	mov    (%r12),%rax
   42296:	25 81 00 00 00       	and    $0x81,%eax
   4229b:	48 83 f8 01          	cmp    $0x1,%rax
   4229f:	75 05                	jne    422a6 <ptiter::down(bool)+0x96>
   422a1:	40 84 f6             	test   %sil,%sil
   422a4:	74 95                	je     4223b <ptiter::down(bool)+0x2b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
   422a6:	48 8b 77 18          	mov    0x18(%rdi),%rsi
   422aa:	44 8b 4f 10          	mov    0x10(%rdi),%r9d
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   422ae:	47 8d 04 c9          	lea    (%r9,%r9,8),%r8d
   422b2:	41 8d 48 0c          	lea    0xc(%r8),%ecx
   422b6:	4c 89 d2             	mov    %r10,%rdx
   422b9:	48 d3 e2             	shl    %cl,%rdx
   422bc:	48 83 ea 01          	sub    $0x1,%rdx
   422c0:	48 09 f2             	or     %rsi,%rdx
   422c3:	48 8d 42 01          	lea    0x1(%rdx),%rax
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   422c7:	41 8d 51 01          	lea    0x1(%r9),%edx
   422cb:	41 8d 48 15          	lea    0x15(%r8),%ecx
   422cf:	4d 89 d0             	mov    %r10,%r8
   422d2:	49 d3 e0             	shl    %cl,%r8
   422d5:	4c 89 c1             	mov    %r8,%rcx
   422d8:	48 f7 d9             	neg    %rcx
   422db:	49 89 f0             	mov    %rsi,%r8
   422de:	49 31 c0             	xor    %rax,%r8
   422e1:	4c 85 c1             	test   %r8,%rcx
   422e4:	74 99                	je     4227f <ptiter::down(bool)+0x6f>
                if (level_ == 3) {
   422e6:	41 83 f9 03          	cmp    $0x3,%r9d
   422ea:	0f 84 7a ff ff ff    	je     4226a <ptiter::down(bool)+0x5a>
                level_ = 3;
   422f0:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
                pep_ = &pt_->entry[pageindex(va_, level_)];
   422f7:	48 89 f0             	mov    %rsi,%rax
   422fa:	48 c1 e8 24          	shr    $0x24,%rax
   422fe:	25 f8 0f 00 00       	and    $0xff8,%eax
   42303:	48 03 07             	add    (%rdi),%rax
   42306:	48 89 47 08          	mov    %rax,0x8(%rdi)
                stop_level = level_ + 1;
   4230a:	41 89 d5             	mov    %edx,%r13d
   4230d:	e9 79 ff ff ff       	jmpq   4228b <ptiter::down(bool)+0x7b>

0000000000042312 <ptiter::ptiter(x86_64_pagetable*)>:
ptiter::ptiter(x86_64_pagetable* pt)
   42312:	f3 0f 1e fa          	endbr64 
   42316:	55                   	push   %rbp
   42317:	48 89 e5             	mov    %rsp,%rbp
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), va_(0) {
   4231a:	48 89 37             	mov    %rsi,(%rdi)
   4231d:	48 89 77 08          	mov    %rsi,0x8(%rdi)
   42321:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
   42328:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
   4232f:	00 
    down(false);
   42330:	be 00 00 00 00       	mov    $0x0,%esi
   42335:	e8 d6 fe ff ff       	callq  42210 <ptiter::down(bool)>
}
   4233a:	5d                   	pop    %rbp
   4233b:	c3                   	retq   

000000000004233c <(anonymous namespace)::log_printer::putc(unsigned char, int)>:
         | IO_PARALLEL_CONTROL_INIT);
}

namespace {
struct log_printer : public printer {
    void putc(unsigned char c, int) override {
   4233c:	f3 0f 1e fa          	endbr64 
    if (!initialized) {
   42340:	83 3d bd 8c 01 00 00 	cmpl   $0x0,0x18cbd(%rip)        # 5b004 <parallel_port_putc(unsigned char)::initialized>
   42347:	75 15                	jne    4235e <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x22>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42349:	b8 00 00 00 00       	mov    $0x0,%eax
   4234e:	ba 7a 03 00 00       	mov    $0x37a,%edx
   42353:	ee                   	out    %al,(%dx)
        initialized = 1;
   42354:	c7 05 a6 8c 01 00 01 	movl   $0x1,0x18ca6(%rip)        # 5b004 <parallel_port_putc(unsigned char)::initialized>
   4235b:	00 00 00 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   4235e:	ba 79 03 00 00       	mov    $0x379,%edx
   42363:	ec                   	in     (%dx),%al
         i < 12800 && (inb(IO_PARALLEL1_STATUS) & IO_PARALLEL_STATUS_BUSY) == 0;
   42364:	bf 00 32 00 00       	mov    $0x3200,%edi
   42369:	b9 84 00 00 00       	mov    $0x84,%ecx
   4236e:	41 b8 79 03 00 00    	mov    $0x379,%r8d
   42374:	84 c0                	test   %al,%al
   42376:	78 13                	js     4238b <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   42378:	89 ca                	mov    %ecx,%edx
   4237a:	ec                   	in     (%dx),%al
   4237b:	ec                   	in     (%dx),%al
   4237c:	ec                   	in     (%dx),%al
   4237d:	ec                   	in     (%dx),%al
   4237e:	83 ef 01             	sub    $0x1,%edi
   42381:	74 08                	je     4238b <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   42383:	44 89 c2             	mov    %r8d,%edx
   42386:	ec                   	in     (%dx),%al
   42387:	84 c0                	test   %al,%al
   42389:	79 ed                	jns    42378 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x3c>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   4238b:	ba 78 03 00 00       	mov    $0x378,%edx
   42390:	89 f0                	mov    %esi,%eax
   42392:	ee                   	out    %al,(%dx)
   42393:	ba 7a 03 00 00       	mov    $0x37a,%edx
   42398:	b8 0d 00 00 00       	mov    $0xd,%eax
   4239d:	ee                   	out    %al,(%dx)
   4239e:	b8 0c 00 00 00       	mov    $0xc,%eax
   423a3:	ee                   	out    %al,(%dx)
        parallel_port_putc(c);
    }
   423a4:	c3                   	retq   

00000000000423a5 <stash_kernel_data(bool)>:

// stash_kernel_data
//    Soft reboot requires that we restore kernel data memory to
//    its initial state, so we store its initial state in unused
//    physical memory.
static void stash_kernel_data(bool reboot) {
   423a5:	55                   	push   %rbp
   423a6:	48 89 e5             	mov    %rsp,%rbp
   423a9:	89 f8                	mov    %edi,%eax
    // stash initial value of data segment for soft-reboot support
    extern uint8_t _data_start, _edata, _kernel_end;
    uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   423ab:	ba 40 35 05 00       	mov    $0x53540,%edx
   423b0:	48 81 ea 00 70 04 00 	sub    $0x47000,%rdx
    uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   423b7:	bf 00 70 04 01       	mov    $0x1047000,%edi
   423bc:	48 81 ef 40 35 05 00 	sub    $0x53540,%rdi
    if (reboot) {
   423c3:	84 c0                	test   %al,%al
   423c5:	74 2a                	je     423f1 <stash_kernel_data(bool)+0x4c>
        memcpy(&_data_start, data_stash, data_size);
   423c7:	48 89 fe             	mov    %rdi,%rsi
   423ca:	bf 00 70 04 00       	mov    $0x47000,%edi
   423cf:	e8 83 20 00 00       	callq  44457 <memcpy>
        memset(&_edata, 0, &_kernel_end - &_edata);
   423d4:	ba e8 b0 05 00       	mov    $0x5b0e8,%edx
   423d9:	48 81 ea 40 35 05 00 	sub    $0x53540,%rdx
   423e0:	be 00 00 00 00       	mov    $0x0,%esi
   423e5:	bf 40 35 05 00       	mov    $0x53540,%edi
   423ea:	e8 d9 20 00 00       	callq  444c8 <memset>
    } else {
        memcpy(data_stash, &_data_start, data_size);
    }
}
   423ef:	5d                   	pop    %rbp
   423f0:	c3                   	retq   
        memcpy(data_stash, &_data_start, data_size);
   423f1:	be 00 70 04 00       	mov    $0x47000,%esi
   423f6:	e8 5c 20 00 00       	callq  44457 <memcpy>
}
   423fb:	eb f2                	jmp    423ef <stash_kernel_data(bool)+0x4a>
   423fd:	90                   	nop

00000000000423fe <(anonymous namespace)::backtracer::check()>:
    void check() {
   423fe:	55                   	push   %rbp
   423ff:	48 89 e5             	mov    %rsp,%rbp
   42402:	53                   	push   %rbx
   42403:	48 83 ec 28          	sub    $0x28,%rsp
   42407:	48 89 fb             	mov    %rdi,%rbx
        if (rbp_ < rsp_
   4240a:	48 8b 37             	mov    (%rdi),%rsi
            || ((vmiter(pt_, rbp_).range_perm(16)) & PTE_P) == 0) {
   4240d:	48 3b 77 08          	cmp    0x8(%rdi),%rsi
   42411:	72 0d                	jb     42420 <(anonymous namespace)::backtracer::check()+0x22>
            || stack_top_ - rbp_ < 16
   42413:	48 8b 47 10          	mov    0x10(%rdi),%rax
   42417:	48 29 f0             	sub    %rsi,%rax
   4241a:	48 83 f8 0f          	cmp    $0xf,%rax
   4241e:	77 16                	ja     42436 <(anonymous namespace)::backtracer::check()+0x38>
            rbp_ = rsp_ = 0;
   42420:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
   42427:	00 
   42428:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    }
   4242f:	48 83 c4 28          	add    $0x28,%rsp
   42433:	5b                   	pop    %rbx
   42434:	5d                   	pop    %rbp
   42435:	c3                   	retq   
            || ((vmiter(pt_, rbp_).range_perm(16)) & PTE_P) == 0) {
   42436:	48 8b 47 18          	mov    0x18(%rdi),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4243a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   4243e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   42442:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42449:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42450:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42457:	00 
    real_find(va);
   42458:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4245c:	e8 e1 f9 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
   42461:	be 10 00 00 00       	mov    $0x10,%esi
   42466:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4246a:	e8 87 fa ff ff       	callq  41ef6 <vmiter::range_perm(unsigned long) const>
   4246f:	a8 01                	test   $0x1,%al
   42471:	75 bc                	jne    4242f <(anonymous namespace)::backtracer::check()+0x31>
   42473:	eb ab                	jmp    42420 <(anonymous namespace)::backtracer::check()+0x22>

0000000000042475 <init_timer(int)>:
void init_timer(int rate) {
   42475:	f3 0f 1e fa          	endbr64 
    if (rate > 0) {
   42479:	85 ff                	test   %edi,%edi
   4247b:	7e 12                	jle    4248f <init_timer(int)+0x1a>
        lapic.write(lapic.reg_timer_initial_count, 1000000000 / rate);
   4247d:	b8 00 ca 9a 3b       	mov    $0x3b9aca00,%eax
   42482:	99                   	cltd   
   42483:	f7 ff                	idiv   %edi
   42485:	a3 80 03 e0 fe 00 00 	movabs %eax,0xfee00380
   4248c:	00 00 
}
   4248e:	c3                   	retq   
    reg_[reg].v = v;
   4248f:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   42494:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
}
   4249a:	c3                   	retq   

000000000004249b <kalloc_pagetable()>:
x86_64_pagetable* kalloc_pagetable() {
   4249b:	f3 0f 1e fa          	endbr64 
   4249f:	55                   	push   %rbp
   424a0:	48 89 e5             	mov    %rsp,%rbp
   424a3:	53                   	push   %rbx
   424a4:	48 83 ec 08          	sub    $0x8,%rsp
    x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(kalloc(PAGESIZE));
   424a8:	bf 00 10 00 00       	mov    $0x1000,%edi
   424ad:	e8 b4 e6 ff ff       	callq  40b66 <kalloc(unsigned long)>
   424b2:	48 89 c3             	mov    %rax,%rbx
    if (pt) {
   424b5:	48 85 c0             	test   %rax,%rax
   424b8:	74 12                	je     424cc <kalloc_pagetable()+0x31>
        memset(&pt->entry[0], 0, sizeof(x86_64_pageentry_t) * 512);
   424ba:	ba 00 10 00 00       	mov    $0x1000,%edx
   424bf:	be 00 00 00 00       	mov    $0x0,%esi
   424c4:	48 89 c7             	mov    %rax,%rdi
   424c7:	e8 fc 1f 00 00       	callq  444c8 <memset>
}
   424cc:	48 89 d8             	mov    %rbx,%rax
   424cf:	48 83 c4 08          	add    $0x8,%rsp
   424d3:	5b                   	pop    %rbx
   424d4:	5d                   	pop    %rbp
   424d5:	c3                   	retq   

00000000000424d6 <reserved_physical_address(unsigned long)>:
bool reserved_physical_address(uintptr_t pa) {
   424d6:	f3 0f 1e fa          	endbr64 
    return pa < PAGESIZE || (pa >= IOPHYSMEM && pa < EXTPHYSMEM);
   424da:	48 8d 87 00 00 f6 ff 	lea    -0xa0000(%rdi),%rax
   424e1:	48 3d ff ff 05 00    	cmp    $0x5ffff,%rax
   424e7:	0f 96 c0             	setbe  %al
   424ea:	48 81 ff ff 0f 00 00 	cmp    $0xfff,%rdi
   424f1:	0f 96 c2             	setbe  %dl
   424f4:	09 d0                	or     %edx,%eax
}
   424f6:	c3                   	retq   

00000000000424f7 <allocatable_physical_address(unsigned long)>:
bool allocatable_physical_address(uintptr_t pa) {
   424f7:	f3 0f 1e fa          	endbr64 
   424fb:	55                   	push   %rbp
   424fc:	48 89 e5             	mov    %rsp,%rbp
   424ff:	53                   	push   %rbx
   42500:	48 83 ec 08          	sub    $0x8,%rsp
   42504:	48 89 fb             	mov    %rdi,%rbx
    return !reserved_physical_address(pa)
   42507:	e8 ca ff ff ff       	callq  424d6 <reserved_physical_address(unsigned long)>
        && pa < MEMSIZE_PHYSICAL;
   4250c:	84 c0                	test   %al,%al
   4250e:	75 38                	jne    42548 <allocatable_physical_address(unsigned long)+0x51>
        && (pa < KERNEL_START_ADDR
   42510:	48 81 fb ff ff 03 00 	cmp    $0x3ffff,%rbx
   42517:	76 11                	jbe    4252a <allocatable_physical_address(unsigned long)+0x33>
//    Return the smallest multiple of `m` greater than or equal to `x`.
//    Equivalently, round `x` up to the nearest multiple of `m`.
template <typename T>
inline constexpr T round_up(T x, unsigned m) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + m - 1, m);
   42519:	ba e7 c0 05 00       	mov    $0x5c0e7,%edx
            || pa >= round_up((uintptr_t) _kernel_end, PAGESIZE))
   4251e:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
   42525:	48 39 d3             	cmp    %rdx,%rbx
   42528:	72 23                	jb     4254d <allocatable_physical_address(unsigned long)+0x56>
            || pa >= KERNEL_STACK_TOP)
   4252a:	48 8d 83 00 10 f8 ff 	lea    -0x7f000(%rbx),%rax
        && (pa < KERNEL_STACK_TOP - PAGESIZE
   42531:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
   42537:	0f 97 c0             	seta   %al
        && pa < MEMSIZE_PHYSICAL;
   4253a:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   42541:	0f 96 c2             	setbe  %dl
   42544:	21 d0                	and    %edx,%eax
   42546:	eb 05                	jmp    4254d <allocatable_physical_address(unsigned long)+0x56>
   42548:	b8 00 00 00 00       	mov    $0x0,%eax
}
   4254d:	48 83 c4 08          	add    $0x8,%rsp
   42551:	5b                   	pop    %rbx
   42552:	5d                   	pop    %rbp
   42553:	c3                   	retq   

0000000000042554 <init_process(proc*, int)>:
void init_process(proc* p, int flags) {
   42554:	f3 0f 1e fa          	endbr64 
   42558:	55                   	push   %rbp
   42559:	48 89 e5             	mov    %rsp,%rbp
   4255c:	41 54                	push   %r12
   4255e:	53                   	push   %rbx
   4255f:	48 89 fb             	mov    %rdi,%rbx
   42562:	41 89 f4             	mov    %esi,%r12d
    memset(&p->regs, 0, sizeof(p->regs));
   42565:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
   42569:	ba c0 00 00 00       	mov    $0xc0,%edx
   4256e:	be 00 00 00 00       	mov    $0x0,%esi
   42573:	e8 50 1f 00 00       	callq  444c8 <memset>
    p->regs.reg_cs = SEGSEL_APP_CODE | 3;
   42578:	48 c7 83 b0 00 00 00 	movq   $0x1b,0xb0(%rbx)
   4257f:	1b 00 00 00 
    p->regs.reg_fs = SEGSEL_APP_DATA | 3;
   42583:	48 c7 83 88 00 00 00 	movq   $0x23,0x88(%rbx)
   4258a:	23 00 00 00 
    p->regs.reg_gs = SEGSEL_APP_DATA | 3;
   4258e:	48 c7 83 90 00 00 00 	movq   $0x23,0x90(%rbx)
   42595:	23 00 00 00 
    p->regs.reg_ss = SEGSEL_APP_DATA | 3;
   42599:	48 c7 83 c8 00 00 00 	movq   $0x23,0xc8(%rbx)
   425a0:	23 00 00 00 
    if (flags & PROCINIT_ALLOW_PROGRAMMED_IO) {
   425a4:	44 89 e0             	mov    %r12d,%eax
   425a7:	83 e0 01             	and    $0x1,%eax
    p->regs.reg_rflags = EFLAGS_IF;
   425aa:	83 f8 01             	cmp    $0x1,%eax
   425ad:	48 19 c0             	sbb    %rax,%rax
   425b0:	48 25 00 d0 ff ff    	and    $0xffffffffffffd000,%rax
   425b6:	48 05 00 32 00 00    	add    $0x3200,%rax
   425bc:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
    if (flags & PROCINIT_DISABLE_INTERRUPTS) {
   425c3:	41 f6 c4 02          	test   $0x2,%r12b
   425c7:	74 0b                	je     425d4 <init_process(proc*, int)+0x80>
        p->regs.reg_rflags &= ~EFLAGS_IF;
   425c9:	48 81 a3 b8 00 00 00 	andq   $0xfffffffffffffdff,0xb8(%rbx)
   425d0:	ff fd ff ff 
}
   425d4:	5b                   	pop    %rbx
   425d5:	41 5c                	pop    %r12
   425d7:	5d                   	pop    %rbp
   425d8:	c3                   	retq   

00000000000425d9 <console_show_cursor(int)>:
void console_show_cursor(int cpos) {
   425d9:	f3 0f 1e fa          	endbr64 
        cpos = 0;
   425dd:	81 ff d1 07 00 00    	cmp    $0x7d1,%edi
   425e3:	b8 00 00 00 00       	mov    $0x0,%eax
   425e8:	0f 43 f8             	cmovae %eax,%edi
   425eb:	be d4 03 00 00       	mov    $0x3d4,%esi
   425f0:	b8 0e 00 00 00       	mov    $0xe,%eax
   425f5:	89 f2                	mov    %esi,%edx
   425f7:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos / 256);
   425f8:	8d 87 ff 00 00 00    	lea    0xff(%rdi),%eax
   425fe:	85 ff                	test   %edi,%edi
   42600:	0f 49 c7             	cmovns %edi,%eax
   42603:	c1 f8 08             	sar    $0x8,%eax
   42606:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
   4260b:	89 ca                	mov    %ecx,%edx
   4260d:	ee                   	out    %al,(%dx)
   4260e:	b8 0f 00 00 00       	mov    $0xf,%eax
   42613:	89 f2                	mov    %esi,%edx
   42615:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos % 256);
   42616:	89 fa                	mov    %edi,%edx
   42618:	c1 fa 1f             	sar    $0x1f,%edx
   4261b:	c1 ea 18             	shr    $0x18,%edx
   4261e:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
   42621:	0f b6 c0             	movzbl %al,%eax
   42624:	29 d0                	sub    %edx,%eax
   42626:	89 ca                	mov    %ecx,%edx
   42628:	ee                   	out    %al,(%dx)
}
   42629:	c3                   	retq   

000000000004262a <keyboard_readc()>:
int keyboard_readc() {
   4262a:	f3 0f 1e fa          	endbr64 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   4262e:	ba 64 00 00 00       	mov    $0x64,%edx
   42633:	ec                   	in     (%dx),%al
    if ((inb(KEYBOARD_STATUSREG) & KEYBOARD_STATUS_READY) == 0) {
   42634:	a8 01                	test   $0x1,%al
   42636:	0f 84 1d 01 00 00    	je     42759 <keyboard_readc()+0x12f>
   4263c:	ba 60 00 00 00       	mov    $0x60,%edx
   42641:	ec                   	in     (%dx),%al
    uint8_t escape = last_escape;
   42642:	0f b6 15 bf 89 01 00 	movzbl 0x189bf(%rip),%edx        # 5b008 <keyboard_readc()::last_escape>
    last_escape = 0;
   42649:	c6 05 b8 89 01 00 00 	movb   $0x0,0x189b8(%rip)        # 5b008 <keyboard_readc()::last_escape>
    if (data == 0xE0) {         // mode shift
   42650:	3c e0                	cmp    $0xe0,%al
   42652:	74 2a                	je     4267e <keyboard_readc()+0x54>
    } else if (data & 0x80) {   // key release: matters only for modifier keys
   42654:	84 c0                	test   %al,%al
   42656:	78 33                	js     4268b <keyboard_readc()+0x61>
    int ch = (unsigned char) keymap[data | escape];
   42658:	09 d0                	or     %edx,%eax
   4265a:	0f b6 c0             	movzbl %al,%eax
   4265d:	0f b6 80 a0 58 04 00 	movzbl 0x458a0(%rax),%eax
    if (ch >= 'a' && ch <= 'z') {
   42664:	89 c1                	mov    %eax,%ecx
   42666:	8d 50 9f             	lea    -0x61(%rax),%edx
   42669:	83 fa 19             	cmp    $0x19,%edx
   4266c:	77 73                	ja     426e1 <keyboard_readc()+0xb7>
        if (modifiers & MOD_CONTROL) {
   4266e:	0f b6 15 94 89 01 00 	movzbl 0x18994(%rip),%edx        # 5b009 <keyboard_readc()::modifiers>
   42675:	f6 c2 02             	test   $0x2,%dl
   42678:	74 4d                	je     426c7 <keyboard_readc()+0x9d>
            ch -= 0x60;
   4267a:	83 e8 60             	sub    $0x60,%eax
   4267d:	c3                   	retq   
        last_escape = 0x80;
   4267e:	c6 05 83 89 01 00 80 	movb   $0x80,0x18983(%rip)        # 5b008 <keyboard_readc()::last_escape>
        return 0;
   42685:	b8 00 00 00 00       	mov    $0x0,%eax
   4268a:	c3                   	retq   
        int ch = keymap[(data & 0x7F) | escape];
   4268b:	83 e0 7f             	and    $0x7f,%eax
   4268e:	09 d0                	or     %edx,%eax
   42690:	0f b6 c0             	movzbl %al,%eax
   42693:	0f b6 88 a0 58 04 00 	movzbl 0x458a0(%rax),%ecx
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   4269a:	0f b6 d1             	movzbl %cl,%edx
   4269d:	81 ea fa 00 00 00    	sub    $0xfa,%edx
        return 0;
   426a3:	b8 00 00 00 00       	mov    $0x0,%eax
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   426a8:	83 fa 02             	cmp    $0x2,%edx
   426ab:	0f 87 ad 00 00 00    	ja     4275e <keyboard_readc()+0x134>
            modifiers &= ~(1 << (ch - KEY_SHIFT));
   426b1:	83 c1 06             	add    $0x6,%ecx
   426b4:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   426b9:	d3 c0                	rol    %cl,%eax
   426bb:	20 05 48 89 01 00    	and    %al,0x18948(%rip)        # 5b009 <keyboard_readc()::modifiers>
        return 0;
   426c1:	b8 00 00 00 00       	mov    $0x0,%eax
   426c6:	c3                   	retq   
        } else if (!(modifiers & MOD_SHIFT) != !(modifiers & MOD_CAPSLOCK)) {
   426c7:	89 d1                	mov    %edx,%ecx
   426c9:	83 f1 01             	xor    $0x1,%ecx
   426cc:	83 e1 01             	and    $0x1,%ecx
   426cf:	c0 ea 03             	shr    $0x3,%dl
   426d2:	83 f2 01             	xor    $0x1,%edx
   426d5:	83 e2 01             	and    $0x1,%edx
            ch -= 0x20;
   426d8:	8d 70 e0             	lea    -0x20(%rax),%esi
   426db:	38 d1                	cmp    %dl,%cl
   426dd:	0f 45 c6             	cmovne %esi,%eax
   426e0:	c3                   	retq   
    } else if (ch >= KEY_CAPSLOCK) {
   426e1:	3d fc 00 00 00       	cmp    $0xfc,%eax
   426e6:	7e 19                	jle    42701 <keyboard_readc()+0xd7>
        modifiers ^= 1 << (ch - KEY_SHIFT);
   426e8:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   426ee:	ba 01 00 00 00       	mov    $0x1,%edx
   426f3:	d3 e2                	shl    %cl,%edx
   426f5:	30 15 0e 89 01 00    	xor    %dl,0x1890e(%rip)        # 5b009 <keyboard_readc()::modifiers>
        ch = 0;
   426fb:	b8 00 00 00 00       	mov    $0x0,%eax
   42700:	c3                   	retq   
    } else if (ch >= KEY_SHIFT) {
   42701:	3d f9 00 00 00       	cmp    $0xf9,%eax
   42706:	7e 19                	jle    42721 <keyboard_readc()+0xf7>
        modifiers |= 1 << (ch - KEY_SHIFT);
   42708:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   4270e:	ba 01 00 00 00       	mov    $0x1,%edx
   42713:	d3 e2                	shl    %cl,%edx
   42715:	08 15 ee 88 01 00    	or     %dl,0x188ee(%rip)        # 5b009 <keyboard_readc()::modifiers>
        ch = 0;
   4271b:	b8 00 00 00 00       	mov    $0x0,%eax
   42720:	c3                   	retq   
    } else if (ch >= CKEY(0) && ch <= CKEY(21)) {
   42721:	83 c1 80             	add    $0xffffff80,%ecx
   42724:	83 f9 15             	cmp    $0x15,%ecx
   42727:	77 18                	ja     42741 <keyboard_readc()+0x117>
        ch = complex_keymap[ch - CKEY(0)].map[modifiers & 3];
   42729:	0f b6 15 d9 88 01 00 	movzbl 0x188d9(%rip),%edx        # 5b009 <keyboard_readc()::modifiers>
   42730:	83 e2 03             	and    $0x3,%edx
   42733:	83 c0 80             	add    $0xffffff80,%eax
   42736:	48 98                	cltq   
   42738:	0f b6 84 82 40 58 04 	movzbl 0x45840(%rdx,%rax,4),%eax
   4273f:	00 
   42740:	c3                   	retq   
    } else if (ch < 0x80 && (modifiers & MOD_CONTROL)) {
   42741:	83 f8 7f             	cmp    $0x7f,%eax
   42744:	7f 18                	jg     4275e <keyboard_readc()+0x134>
   42746:	0f b6 15 bc 88 01 00 	movzbl 0x188bc(%rip),%edx        # 5b009 <keyboard_readc()::modifiers>
   4274d:	83 e2 02             	and    $0x2,%edx
        ch = 0;
   42750:	ba 00 00 00 00       	mov    $0x0,%edx
   42755:	0f 45 c2             	cmovne %edx,%eax
   42758:	c3                   	retq   
        return -1;
   42759:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   4275e:	c3                   	retq   

000000000004275f <log_vprintf(char const*, __va_list_tag*)>:
void log_vprintf(const char* format, va_list val) {
   4275f:	f3 0f 1e fa          	endbr64 
   42763:	55                   	push   %rbp
   42764:	48 89 e5             	mov    %rsp,%rbp
   42767:	48 83 ec 10          	sub    $0x10,%rsp
   4276b:	48 89 fa             	mov    %rdi,%rdx
   4276e:	48 89 f1             	mov    %rsi,%rcx
    log_printer p;
   42771:	48 c7 45 f8 30 58 04 	movq   $0x45830,-0x8(%rbp)
   42778:	00 
    p.vprintf(0, format, val);
   42779:	be 00 00 00 00       	mov    $0x0,%esi
   4277e:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   42782:	e8 3b 1e 00 00       	callq  445c2 <printer::vprintf(int, char const*, __va_list_tag*)>
}
   42787:	c9                   	leaveq 
   42788:	c3                   	retq   

0000000000042789 <log_printf(char const*, ...)>:
void log_printf(const char* format, ...) {
   42789:	f3 0f 1e fa          	endbr64 
   4278d:	55                   	push   %rbp
   4278e:	48 89 e5             	mov    %rsp,%rbp
   42791:	48 83 ec 50          	sub    $0x50,%rsp
   42795:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   42799:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   4279d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   427a1:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   427a5:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   427a9:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   427b0:	48 8d 45 10          	lea    0x10(%rbp),%rax
   427b4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   427b8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   427bc:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    log_vprintf(format, val);
   427c0:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
   427c4:	e8 96 ff ff ff       	callq  4275f <log_vprintf(char const*, __va_list_tag*)>
}
   427c9:	c9                   	leaveq 
   427ca:	c3                   	retq   

00000000000427cb <lookup_symbol(unsigned long, char const**, unsigned long*)>:
bool lookup_symbol(uintptr_t addr, const char** name, uintptr_t* start) {
   427cb:	f3 0f 1e fa          	endbr64 
   427cf:	55                   	push   %rbp
   427d0:	48 89 e5             	mov    %rsp,%rbp
   427d3:	41 54                	push   %r12
   427d5:	53                   	push   %rbx
   427d6:	48 89 f3             	mov    %rsi,%rbx
   427d9:	49 89 d4             	mov    %rdx,%r12
    if (!kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000]) {
   427dc:	48 83 3d 5c 58 01 00 	cmpq   $0x0,0x1585c(%rip)        # 58040 <kernel_pagetable+0x2040>
   427e3:	00 
   427e4:	75 0b                	jne    427f1 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x26>
        kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000] =
   427e6:	48 c7 05 4f 58 01 00 	movq   $0x1000083,0x1584f(%rip)        # 58040 <kernel_pagetable+0x2040>
   427ed:	83 00 00 01 
    size_t r = symtab.nsym;
   427f1:	48 8b 35 b0 48 00 00 	mov    0x48b0(%rip),%rsi        # 470a8 <symtab+0x8>
        auto& sym = symtab.sym[m];
   427f8:	48 8b 15 a1 48 00 00 	mov    0x48a1(%rip),%rdx        # 470a0 <symtab>
    size_t r = symtab.nsym;
   427ff:	49 89 f1             	mov    %rsi,%r9
    size_t l = 0;
   42802:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   42808:	eb 25                	jmp    4282f <lookup_symbol(unsigned long, char const**, unsigned long*)+0x64>
                ? addr < sym.st_value + 0x1000
   4280a:	4c 8d 99 00 10 00 00 	lea    0x1000(%rcx),%r11
            && (m + 1 == symtab.nsym
   42811:	49 39 fb             	cmp    %rdi,%r11
   42814:	76 11                	jbe    42827 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5c>
            && (sym.st_size == 0 || addr <= sym.st_value + sym.st_size)) {
   42816:	4d 8b 5a 10          	mov    0x10(%r10),%r11
   4281a:	4d 85 db             	test   %r11,%r11
   4281d:	74 43                	je     42862 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x97>
   4281f:	49 01 cb             	add    %rcx,%r11
   42822:	49 39 fb             	cmp    %rdi,%r11
   42825:	73 3b                	jae    42862 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x97>
        } else if (sym.st_value < addr) {
   42827:	48 39 f9             	cmp    %rdi,%rcx
   4282a:	72 6b                	jb     42897 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xcc>
        size_t m = l + ((r - l) >> 1);
   4282c:	49 89 c1             	mov    %rax,%r9
    while (l < r) {
   4282f:	4d 39 c8             	cmp    %r9,%r8
   42832:	73 69                	jae    4289d <lookup_symbol(unsigned long, char const**, unsigned long*)+0xd2>
        size_t m = l + ((r - l) >> 1);
   42834:	4c 89 c8             	mov    %r9,%rax
   42837:	4c 29 c0             	sub    %r8,%rax
   4283a:	48 d1 e8             	shr    %rax
   4283d:	4c 01 c0             	add    %r8,%rax
        auto& sym = symtab.sym[m];
   42840:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   42844:	4c 8d 14 ca          	lea    (%rdx,%rcx,8),%r10
        if (sym.st_value <= addr
   42848:	49 8b 4a 08          	mov    0x8(%r10),%rcx
   4284c:	48 39 f9             	cmp    %rdi,%rcx
   4284f:	77 d6                	ja     42827 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5c>
            && (m + 1 == symtab.nsym
   42851:	4c 8d 58 01          	lea    0x1(%rax),%r11
        if (sym.st_value <= addr
   42855:	49 39 f3             	cmp    %rsi,%r11
   42858:	74 b0                	je     4280a <lookup_symbol(unsigned long, char const**, unsigned long*)+0x3f>
                ? addr < sym.st_value + 0x1000
   4285a:	49 39 7a 20          	cmp    %rdi,0x20(%r10)
   4285e:	76 c7                	jbe    42827 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5c>
   42860:	eb b4                	jmp    42816 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4b>
                return false;
   42862:	b8 00 00 00 00       	mov    $0x0,%eax
            if (!sym.st_value) {
   42867:	48 85 c9             	test   %rcx,%rcx
   4286a:	74 36                	je     428a2 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xd7>
            if (name) {
   4286c:	48 85 db             	test   %rbx,%rbx
   4286f:	74 0d                	je     4287e <lookup_symbol(unsigned long, char const**, unsigned long*)+0xb3>
                *name = symtab.strtab + sym.st_name;
   42871:	41 8b 02             	mov    (%r10),%eax
   42874:	48 03 05 35 48 00 00 	add    0x4835(%rip),%rax        # 470b0 <symtab+0x10>
   4287b:	48 89 03             	mov    %rax,(%rbx)
            return true;
   4287e:	b8 01 00 00 00       	mov    $0x1,%eax
            if (start) {
   42883:	4d 85 e4             	test   %r12,%r12
   42886:	74 1a                	je     428a2 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xd7>
                *start = sym.st_value;
   42888:	49 8b 42 08          	mov    0x8(%r10),%rax
   4288c:	49 89 04 24          	mov    %rax,(%r12)
            return true;
   42890:	b8 01 00 00 00       	mov    $0x1,%eax
   42895:	eb 0b                	jmp    428a2 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xd7>
            l = m + 1;
   42897:	4c 8d 40 01          	lea    0x1(%rax),%r8
   4289b:	eb 92                	jmp    4282f <lookup_symbol(unsigned long, char const**, unsigned long*)+0x64>
    return false;
   4289d:	b8 00 00 00 00       	mov    $0x0,%eax
}
   428a2:	5b                   	pop    %rbx
   428a3:	41 5c                	pop    %r12
   428a5:	5d                   	pop    %rbp
   428a6:	c3                   	retq   

00000000000428a7 <error_print_backtrace(unsigned long, unsigned long)>:
static void error_print_backtrace(uintptr_t rsp, uintptr_t rbp) {
   428a7:	55                   	push   %rbp
   428a8:	48 89 e5             	mov    %rsp,%rbp
   428ab:	41 54                	push   %r12
   428ad:	53                   	push   %rbx
   428ae:	48 83 ec 30          	sub    $0x30,%rsp
        : rbp_(rbp), rsp_(rsp), stack_top_(stack_top) {
   428b2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
   428b6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   428ba:	48 81 c7 ff 0f 00 00 	add    $0xfff,%rdi
   428c1:	48 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%rdi
   428c8:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    return x;
}

__always_inline uintptr_t rdcr3() {
    uintptr_t x;
    asm volatile("movq %%cr3, %0" : "=r" (x));
   428cc:	0f 20 d8             	mov    %cr3,%rax
        pt_ = pa2kptr<x86_64_pagetable*>(rdcr3());
   428cf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
        check();
   428d3:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   428d7:	e8 22 fb ff ff       	callq  423fe <(anonymous namespace)::backtracer::check()>
    int frame = 1;
   428dc:	bb 01 00 00 00       	mov    $0x1,%ebx
         bt.ok();
   428e1:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
   428e6:	74 65                	je     4294d <error_print_backtrace(unsigned long, unsigned long)+0xa6>
        return rbpx[1];
   428e8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   428ec:	4c 8b 60 08          	mov    0x8(%rax),%r12
        if (lookup_symbol(ret_rip, &name, nullptr)) {
   428f0:	ba 00 00 00 00       	mov    $0x0,%edx
   428f5:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   428f9:	4c 89 e7             	mov    %r12,%rdi
   428fc:	e8 ca fe ff ff       	callq  427cb <lookup_symbol(unsigned long, char const**, unsigned long*)>
   42901:	84 c0                	test   %al,%al
   42903:	74 35                	je     4293a <error_print_backtrace(unsigned long, unsigned long)+0x93>
            error_printf("  #%d  %p  <%s>\n", frame, ret_rip, name);
   42905:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   42909:	4c 89 e2             	mov    %r12,%rdx
   4290c:	89 de                	mov    %ebx,%esi
   4290e:	bf 3a 54 04 00       	mov    $0x4543a,%edi
   42913:	b0 00                	mov    $0x0,%al
   42915:	e8 47 27 00 00       	callq  45061 <error_printf(char const*, ...)>
        uintptr_t* rbpx = reinterpret_cast<uintptr_t*>(rbp_);
   4291a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
        rsp_ = rbp_ + 16;
   4291e:	48 8d 50 10          	lea    0x10(%rax),%rdx
   42922:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
        rbp_ = rbpx[0];
   42926:	48 8b 00             	mov    (%rax),%rax
   42929:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
        check();
   4292d:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42931:	e8 c8 fa ff ff       	callq  423fe <(anonymous namespace)::backtracer::check()>
    for (backtracer bt(rbp, rsp, round_up(rsp, PAGESIZE));
   42936:	ff c3                	inc    %ebx
   42938:	eb a7                	jmp    428e1 <error_print_backtrace(unsigned long, unsigned long)+0x3a>
            error_printf("  #%d  %p\n", frame, ret_rip);
   4293a:	4c 89 e2             	mov    %r12,%rdx
   4293d:	89 de                	mov    %ebx,%esi
   4293f:	bf 4d 54 04 00       	mov    $0x4544d,%edi
   42944:	b0 00                	mov    $0x0,%al
   42946:	e8 16 27 00 00       	callq  45061 <error_printf(char const*, ...)>
   4294b:	eb cd                	jmp    4291a <error_print_backtrace(unsigned long, unsigned long)+0x73>
}
   4294d:	48 83 c4 30          	add    $0x30,%rsp
   42951:	5b                   	pop    %rbx
   42952:	41 5c                	pop    %r12
   42954:	5d                   	pop    %rbp
   42955:	c3                   	retq   

0000000000042956 <error_vprintf(int, int, char const*, __va_list_tag*)>:
int error_vprintf(int cpos, int color, const char* format, va_list val) {
   42956:	f3 0f 1e fa          	endbr64 
   4295a:	55                   	push   %rbp
   4295b:	48 89 e5             	mov    %rsp,%rbp
   4295e:	41 56                	push   %r14
   42960:	41 55                	push   %r13
   42962:	41 54                	push   %r12
   42964:	53                   	push   %rbx
   42965:	48 83 ec 20          	sub    $0x20,%rsp
   42969:	41 89 fd             	mov    %edi,%r13d
   4296c:	41 89 f6             	mov    %esi,%r14d
   4296f:	49 89 d4             	mov    %rdx,%r12
   42972:	48 89 cb             	mov    %rcx,%rbx
    __builtin_va_copy(val2, val);
   42975:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
   42979:	b9 06 00 00 00       	mov    $0x6,%ecx
   4297e:	48 89 c7             	mov    %rax,%rdi
   42981:	48 89 de             	mov    %rbx,%rsi
   42984:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    log_vprintf(format, val2);
   42986:	48 89 c6             	mov    %rax,%rsi
   42989:	48 89 d7             	mov    %rdx,%rdi
   4298c:	e8 ce fd ff ff       	callq  4275f <log_vprintf(char const*, __va_list_tag*)>
    return console_vprintf(cpos, color, format, val);
   42991:	48 89 d9             	mov    %rbx,%rcx
   42994:	4c 89 e2             	mov    %r12,%rdx
   42997:	44 89 f6             	mov    %r14d,%esi
   4299a:	44 89 ef             	mov    %r13d,%edi
   4299d:	e8 e2 25 00 00       	callq  44f84 <console_vprintf(int, int, char const*, __va_list_tag*)>
}
   429a2:	48 83 c4 20          	add    $0x20,%rsp
   429a6:	5b                   	pop    %rbx
   429a7:	41 5c                	pop    %r12
   429a9:	41 5d                	pop    %r13
   429ab:	41 5e                	pop    %r14
   429ad:	5d                   	pop    %rbp
   429ae:	c3                   	retq   

00000000000429af <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)>:
                   const char* format, va_list val) {
   429af:	55                   	push   %rbp
   429b0:	48 89 e5             	mov    %rsp,%rbp
   429b3:	41 57                	push   %r15
   429b5:	41 56                	push   %r14
   429b7:	41 55                	push   %r13
   429b9:	41 54                	push   %r12
   429bb:	53                   	push   %rbx
   429bc:	48 83 ec 18          	sub    $0x18,%rsp
   429c0:	49 89 fd             	mov    %rdi,%r13
   429c3:	49 89 f6             	mov    %rsi,%r14
   429c6:	48 89 d3             	mov    %rdx,%rbx
	__atomic_store_n(&_M_i, __i, int(__m));
   429c9:	c6 05 39 26 01 00 01 	movb   $0x1,0x12639(%rip)        # 55009 <panicking>
   429d0:	0f ae f0             	mfence 
    cursorpos = CPOS(24, 80);
   429d3:	c7 05 1f 66 07 00 d0 	movl   $0x7d0,0x7661f(%rip)        # b8ffc <cursorpos>
   429da:	07 00 00 
    if (format) {
   429dd:	48 85 c9             	test   %rcx,%rcx
   429e0:	0f 84 a0 00 00 00    	je     42a86 <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)+0xd7>
   429e6:	49 89 cc             	mov    %rcx,%r12
   429e9:	4d 89 c7             	mov    %r8,%r15
        error_printf(-1, COLOR_ERROR, "PANIC: ");
   429ec:	ba 58 54 04 00       	mov    $0x45458,%edx
   429f1:	be 00 c0 00 00       	mov    $0xc000,%esi
   429f6:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   429fb:	b0 00                	mov    $0x0,%al
   429fd:	e8 25 26 00 00       	callq  45027 <error_printf(int, int, char const*, ...)>
        error_vprintf(-1, COLOR_ERROR, format, val);
   42a02:	4c 89 f9             	mov    %r15,%rcx
   42a05:	4c 89 e2             	mov    %r12,%rdx
   42a08:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a0d:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a12:	e8 3f ff ff ff       	callq  42956 <error_vprintf(int, int, char const*, __va_list_tag*)>
        if (CCOL(cursorpos)) {
   42a17:	8b 05 df 65 07 00    	mov    0x765df(%rip),%eax        # b8ffc <cursorpos>
   42a1d:	b9 50 00 00 00       	mov    $0x50,%ecx
   42a22:	99                   	cltd   
   42a23:	f7 f9                	idiv   %ecx
   42a25:	85 d2                	test   %edx,%edx
   42a27:	74 16                	je     42a3f <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)+0x90>
            error_printf(-1, COLOR_ERROR, "\n");
   42a29:	ba b7 51 04 00       	mov    $0x451b7,%edx
   42a2e:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a33:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a38:	b0 00                	mov    $0x0,%al
   42a3a:	e8 e8 25 00 00       	callq  45027 <error_printf(int, int, char const*, ...)>
    if (rip) {
   42a3f:	48 85 db             	test   %rbx,%rbx
   42a42:	74 28                	je     42a6c <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)+0xbd>
        if (lookup_symbol(rip, &name, nullptr)) {
   42a44:	ba 00 00 00 00       	mov    $0x0,%edx
   42a49:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   42a4d:	48 89 df             	mov    %rbx,%rdi
   42a50:	e8 76 fd ff ff       	callq  427cb <lookup_symbol(unsigned long, char const**, unsigned long*)>
   42a55:	84 c0                	test   %al,%al
   42a57:	74 51                	je     42aaa <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)+0xfb>
            error_printf("  #0  %p  <%s>\n", rip, name);
   42a59:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   42a5d:	48 89 de             	mov    %rbx,%rsi
   42a60:	bf 66 54 04 00       	mov    $0x45466,%edi
   42a65:	b0 00                	mov    $0x0,%al
   42a67:	e8 f5 25 00 00       	callq  45061 <error_printf(char const*, ...)>
    error_print_backtrace(rsp, rbp);
   42a6c:	4c 89 f6             	mov    %r14,%rsi
   42a6f:	4c 89 ef             	mov    %r13,%rdi
   42a72:	e8 30 fe ff ff       	callq  428a7 <error_print_backtrace(unsigned long, unsigned long)>
}
   42a77:	48 83 c4 18          	add    $0x18,%rsp
   42a7b:	5b                   	pop    %rbx
   42a7c:	41 5c                	pop    %r12
   42a7e:	41 5d                	pop    %r13
   42a80:	41 5e                	pop    %r14
   42a82:	41 5f                	pop    %r15
   42a84:	5d                   	pop    %rbp
   42a85:	c3                   	retq   
        error_printf(-1, COLOR_ERROR, "PANIC");
   42a86:	ba 60 54 04 00       	mov    $0x45460,%edx
   42a8b:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a90:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a95:	b0 00                	mov    $0x0,%al
   42a97:	e8 8b 25 00 00       	callq  45027 <error_printf(int, int, char const*, ...)>
        log_printf("\n");
   42a9c:	bf b7 51 04 00       	mov    $0x451b7,%edi
   42aa1:	b0 00                	mov    $0x0,%al
   42aa3:	e8 e1 fc ff ff       	callq  42789 <log_printf(char const*, ...)>
   42aa8:	eb 95                	jmp    42a3f <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)+0x90>
            error_printf("  #0  %p\n", rip);
   42aaa:	48 89 de             	mov    %rbx,%rsi
   42aad:	bf 76 54 04 00       	mov    $0x45476,%edi
   42ab2:	b0 00                	mov    $0x0,%al
   42ab4:	e8 a8 25 00 00       	callq  45061 <error_printf(char const*, ...)>
   42ab9:	eb b1                	jmp    42a6c <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)+0xbd>

0000000000042abb <assert_fail(char const*, int, char const*, char const*)>:
                 const char* description) {
   42abb:	f3 0f 1e fa          	endbr64 
   42abf:	55                   	push   %rbp
   42ac0:	48 89 e5             	mov    %rsp,%rbp
   42ac3:	41 55                	push   %r13
   42ac5:	41 54                	push   %r12
   42ac7:	53                   	push   %rbx
   42ac8:	48 83 ec 08          	sub    $0x8,%rsp
   42acc:	48 89 fb             	mov    %rdi,%rbx
   42acf:	41 89 f4             	mov    %esi,%r12d
   42ad2:	49 89 d5             	mov    %rdx,%r13
    cursorpos = CPOS(23, 0);
   42ad5:	c7 05 1d 65 07 00 30 	movl   $0x730,0x7651d(%rip)        # b8ffc <cursorpos>
   42adc:	07 00 00 
    if (description) {
   42adf:	48 85 c9             	test   %rcx,%rcx
   42ae2:	74 11                	je     42af5 <assert_fail(char const*, int, char const*, char const*)+0x3a>
        error_printf("%s:%d: %s\n", file, line, description);
   42ae4:	89 f2                	mov    %esi,%edx
   42ae6:	48 89 fe             	mov    %rdi,%rsi
   42ae9:	bf 80 54 04 00       	mov    $0x45480,%edi
   42aee:	b0 00                	mov    $0x0,%al
   42af0:	e8 6c 25 00 00       	callq  45061 <error_printf(char const*, ...)>
    error_printf("%s:%d: kernel assertion '%s' failed\n", file, line, msg);
   42af5:	4c 89 e9             	mov    %r13,%rcx
   42af8:	44 89 e2             	mov    %r12d,%edx
   42afb:	48 89 de             	mov    %rbx,%rsi
   42afe:	bf d0 55 04 00       	mov    $0x455d0,%edi
   42b03:	b0 00                	mov    $0x0,%al
   42b05:	e8 57 25 00 00       	callq  45061 <error_printf(char const*, ...)>
    return (rdeflags() & EFLAGS_IF) == 0;
}

__always_inline uintptr_t rdrbp() {
    uintptr_t x;
    asm volatile("movq %%rbp, %0" : "=r" (x));
   42b0a:	48 89 ee             	mov    %rbp,%rsi
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
   42b0d:	48 89 e7             	mov    %rsp,%rdi
    error_print_backtrace(rdrsp(), rdrbp());
   42b10:	e8 92 fd ff ff       	callq  428a7 <error_print_backtrace(unsigned long, unsigned long)>
        check_keyboard();
   42b15:	e8 d4 08 00 00       	callq  433ee <check_keyboard()>
    while (true) {
   42b1a:	eb f9                	jmp    42b15 <assert_fail(char const*, int, char const*, char const*)+0x5a>

0000000000042b1c <init_hardware()>:
void init_hardware() {
   42b1c:	f3 0f 1e fa          	endbr64 
   42b20:	55                   	push   %rbp
   42b21:	48 89 e5             	mov    %rsp,%rbp
   42b24:	53                   	push   %rbx
   42b25:	48 83 ec 38          	sub    $0x38,%rsp
    stash_kernel_data(false);
   42b29:	bf 00 00 00 00       	mov    $0x0,%edi
   42b2e:	e8 72 f8 ff ff       	callq  423a5 <stash_kernel_data(bool)>
    gdt_segments[0] = 0;
   42b33:	48 c7 05 62 85 01 00 	movq   $0x0,0x18562(%rip)        # 5b0a0 <gdt_segments>
   42b3a:	00 00 00 00 
    *segment = type
   42b3e:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   42b45:	98 20 00 
   42b48:	48 89 05 59 85 01 00 	mov    %rax,0x18559(%rip)        # 5b0a8 <gdt_segments+0x8>
   42b4f:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   42b56:	92 00 00 
   42b59:	48 89 05 50 85 01 00 	mov    %rax,0x18550(%rip)        # 5b0b0 <gdt_segments+0x10>
    gdt.limit = sizeof(gdt_segments[0]) * 3 - 1;
   42b60:	66 c7 45 c6 17 00    	movw   $0x17,-0x3a(%rbp)
    gdt.base = (uint64_t) gdt_segments;
   42b66:	48 c7 45 c8 a0 b0 05 	movq   $0x5b0a0,-0x38(%rbp)
   42b6d:	00 
    asm volatile("lgdt %0" : : "m" (gdt.limit));
   42b6e:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
    memset(kernel_pagetable, 0, sizeof(kernel_pagetable));
   42b72:	ba 00 50 00 00       	mov    $0x5000,%edx
   42b77:	be 00 00 00 00       	mov    $0x0,%esi
   42b7c:	bf 00 60 05 00       	mov    $0x56000,%edi
   42b81:	e8 42 19 00 00       	callq  444c8 <memset>
        kptr2pa(&kernel_pagetable[1]) | PTE_P | PTE_W | PTE_U;
   42b86:	b8 00 70 05 00       	mov    $0x57000,%eax
   42b8b:	48 83 c8 07          	or     $0x7,%rax
   42b8f:	48 89 05 6a 34 01 00 	mov    %rax,0x1346a(%rip)        # 56000 <kernel_pagetable>
        kptr2pa(&kernel_pagetable[2]) | PTE_P | PTE_W | PTE_U;
   42b96:	b8 00 80 05 00       	mov    $0x58000,%eax
   42b9b:	48 83 c8 07          	or     $0x7,%rax
   42b9f:	48 89 05 5a 44 01 00 	mov    %rax,0x1445a(%rip)        # 57000 <kernel_pagetable+0x1000>
        kptr2pa(&kernel_pagetable[3]) | PTE_P | PTE_W | PTE_U;
   42ba6:	b8 00 90 05 00       	mov    $0x59000,%eax
   42bab:	48 83 c8 07          	or     $0x7,%rax
   42baf:	48 89 05 4a 54 01 00 	mov    %rax,0x1544a(%rip)        # 58000 <kernel_pagetable+0x2000>
        kptr2pa(&kernel_pagetable[4]) | PTE_P | PTE_W | PTE_U;
   42bb6:	b8 00 a0 05 00       	mov    $0x5a000,%eax
   42bbb:	48 83 c8 07          	or     $0x7,%rax
   42bbf:	48 89 05 42 54 01 00 	mov    %rax,0x15442(%rip)        # 58008 <kernel_pagetable+0x2008>
    kernel_pagetable[1].entry[1] =
   42bc6:	48 c7 05 37 44 01 00 	movq   $0x40000083,0x14437(%rip)        # 57008 <kernel_pagetable+0x1008>
   42bcd:	83 00 00 40 
    kernel_pagetable[1].entry[2] =
   42bd1:	b8 83 00 00 80       	mov    $0x80000083,%eax
   42bd6:	48 89 05 33 44 01 00 	mov    %rax,0x14433(%rip)        # 57010 <kernel_pagetable+0x1010>
    kernel_pagetable[1].entry[3] =
   42bdd:	48 8d 80 00 00 00 40 	lea    0x40000000(%rax),%rax
   42be4:	48 89 05 2d 44 01 00 	mov    %rax,0x1442d(%rip)        # 57018 <kernel_pagetable+0x1018>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42beb:	48 c7 45 d0 00 60 05 	movq   $0x56000,-0x30(%rbp)
   42bf2:	00 
   42bf3:	48 c7 45 d8 00 60 05 	movq   $0x56000,-0x28(%rbp)
   42bfa:	00 
   42bfb:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42c02:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42c09:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42c10:	00 
    real_find(va);
   42c11:	be 00 00 00 00       	mov    $0x0,%esi
   42c16:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42c1a:	e8 23 f2 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   42c1f:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42c23:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   42c2a:	76 72                	jbe    42c9e <init_hardware()+0x182>
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42c2c:	b8 00 60 05 00       	mov    $0x56000,%eax
   42c31:	0f 22 d8             	mov    %rax,%cr3
    cursorpos = 3 * CONSOLE_COLUMNS;
   42c34:	c7 05 be 63 07 00 f0 	movl   $0xf0,0x763be(%rip)        # b8ffc <cursorpos>
   42c3b:	00 00 00 
   42c3e:	ba 40 25 05 00       	mov    $0x52540,%edx
    for (int i = 0; i < 256; ++i) {
   42c43:	be 00 00 00 00       	mov    $0x0,%esi
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42c48:	49 b9 00 00 00 00 00 	movabs $0x600000000000,%r9
   42c4f:	60 00 00 
   42c52:	49 b8 00 00 00 00 00 	movabs $0xffff000000000000,%r8
   42c59:	00 ff ff 
   42c5c:	48 bf 00 00 08 00 00 	movabs $0x8e0000080000,%rdi
   42c63:	8e 00 00 
   42c66:	e9 f8 00 00 00       	jmpq   42d63 <init_hardware()+0x247>
    int r = try_map(pa, perm);
   42c6b:	ba 07 00 00 00       	mov    $0x7,%edx
   42c70:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42c74:	e8 e1 f3 ff ff       	callq  4205a <vmiter::try_map(unsigned long, int)>
    assert(r == 0, "vmiter::map failed");
   42c79:	85 c0                	test   %eax,%eax
   42c7b:	75 28                	jne    42ca5 <init_hardware()+0x189>
    return find(va_ + delta);
   42c7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   42c81:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   42c88:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42c8c:	e8 b1 f1 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   42c91:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42c95:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   42c9c:	77 8e                	ja     42c2c <init_hardware()+0x110>
        if (it.va() != 0) {
   42c9e:	48 85 f6             	test   %rsi,%rsi
   42ca1:	74 da                	je     42c7d <init_hardware()+0x161>
   42ca3:	eb c6                	jmp    42c6b <init_hardware()+0x14f>
    assert(r == 0, "vmiter::map failed");
   42ca5:	b9 eb 50 04 00       	mov    $0x450eb,%ecx
   42caa:	ba fe 50 04 00       	mov    $0x450fe,%edx
   42caf:	be e4 00 00 00       	mov    $0xe4,%esi
   42cb4:	bf 05 51 04 00       	mov    $0x45105,%edi
   42cb9:	e8 fd fd ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert(cpuid(1).edx & (1 << 9));
   42cbe:	b9 00 00 00 00       	mov    $0x0,%ecx
   42cc3:	ba 8b 54 04 00       	mov    $0x4548b,%edx
   42cc8:	be a4 00 00 00       	mov    $0xa4,%esi
   42ccd:	bf a3 54 04 00       	mov    $0x454a3,%edi
   42cd2:	e8 e4 fd ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42cd7:	b9 00 00 00 00       	mov    $0x0,%ecx
   42cdc:	ba f8 55 04 00       	mov    $0x455f8,%edx
   42ce1:	be a6 00 00 00       	mov    $0xa6,%esi
   42ce6:	bf a3 54 04 00       	mov    $0x454a3,%edi
   42ceb:	e8 cb fd ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42cf0:	b9 00 00 00 00       	mov    $0x0,%ecx
   42cf5:	ba 20 56 04 00       	mov    $0x45620,%edx
   42cfa:	be a7 00 00 00       	mov    $0xa7,%esi
   42cff:	bf a3 54 04 00       	mov    $0x454a3,%edi
   42d04:	e8 b2 fd ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert((ioapic_ver & 0xFF) == 0x11 || (ioapic_ver & 0xFF) == 0x20);
   42d09:	b9 00 00 00 00       	mov    $0x0,%ecx
   42d0e:	ba 58 56 04 00       	mov    $0x45658,%edx
   42d13:	be ac 00 00 00       	mov    $0xac,%esi
   42d18:	bf a3 54 04 00       	mov    $0x454a3,%edi
   42d1d:	e8 99 fd ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert((ioapic_ver >> 16) >= 0x17);
   42d22:	b9 00 00 00 00       	mov    $0x0,%ecx
   42d27:	ba b1 54 04 00       	mov    $0x454b1,%edx
   42d2c:	be ad 00 00 00       	mov    $0xad,%esi
   42d31:	bf a3 54 04 00       	mov    $0x454a3,%edi
   42d36:	e8 80 fd ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42d3b:	0f b7 c8             	movzwl %ax,%ecx
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42d3e:	4c 09 c9             	or     %r9,%rcx
   42d41:	49 89 c2             	mov    %rax,%r10
   42d44:	49 c1 e2 20          	shl    $0x20,%r10
   42d48:	4d 21 c2             	and    %r8,%r10
   42d4b:	4c 09 d1             	or     %r10,%rcx
   42d4e:	48 09 f9             	or     %rdi,%rcx
   42d51:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   42d54:	48 c1 e8 20          	shr    $0x20,%rax
   42d58:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   42d5c:	83 c6 01             	add    $0x1,%esi
   42d5f:	48 83 c2 10          	add    $0x10,%rdx
        uintptr_t addr = interrupt_descriptors[i].gd_low;
   42d63:	48 8b 02             	mov    (%rdx),%rax
        set_gate(&interrupt_descriptors[i], addr,
   42d66:	83 fe 03             	cmp    $0x3,%esi
   42d69:	74 d0                	je     42d3b <init_hardware()+0x21f>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42d6b:	48 89 c1             	mov    %rax,%rcx
   42d6e:	48 c1 e1 20          	shl    $0x20,%rcx
   42d72:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42d75:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42d79:	4c 09 d1             	or     %r10,%rcx
   42d7c:	48 09 f9             	or     %rdi,%rcx
   42d7f:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   42d82:	48 c1 e8 20          	shr    $0x20,%rax
   42d86:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   42d8a:	83 c6 01             	add    $0x1,%esi
   42d8d:	48 83 c2 10          	add    $0x10,%rdx
   42d91:	81 fe 00 01 00 00    	cmp    $0x100,%esi
   42d97:	75 ca                	jne    42d63 <init_hardware()+0x247>
__always_inline x86_64_cpuid_t cpuid(uint32_t leaf) {
    x86_64_cpuid_t ret;
    asm volatile("cpuid"
                 : "=a" (ret.eax), "=b" (ret.ebx),
                   "=c" (ret.ecx), "=d" (ret.edx)
                 : "a" (leaf));
   42d99:	b8 01 00 00 00       	mov    $0x1,%eax
   42d9e:	0f a2                	cpuid  
    assert(cpuid(1).edx & (1 << 9));
   42da0:	f6 c6 02             	test   $0x2,%dh
   42da3:	0f 84 15 ff ff ff    	je     42cbe <init_hardware()+0x1a2>
    return ret;
}

__always_inline uint64_t rdmsr(uint32_t msr) {
    uint64_t low, high;
    asm volatile("rdmsr" : "=a" (low), "=d" (high) : "c" (msr));
   42da9:	b9 1b 00 00 00       	mov    $0x1b,%ecx
   42dae:	0f 32                	rdmsr  
    return low | (high << 32);
   42db0:	48 c1 e2 20          	shl    $0x20,%rdx
   42db4:	48 09 c2             	or     %rax,%rdx
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42db7:	f6 c4 08             	test   $0x8,%ah
   42dba:	0f 84 17 ff ff ff    	je     42cd7 <init_hardware()+0x1bb>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42dc0:	48 b9 00 f0 ff ff ff 	movabs $0xfffffffff000,%rcx
   42dc7:	ff 00 00 
   42dca:	48 21 ca             	and    %rcx,%rdx
   42dcd:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42dd2:	48 39 c2             	cmp    %rax,%rdx
   42dd5:	0f 85 15 ff ff ff    	jne    42cf0 <init_hardware()+0x1d4>
inline void ioapicstate::disable_irq(int entry) {
    write(reg_redtbl + 2 * entry, redtbl_masked);
    write(reg_redtbl + 2 * entry + 1, 0);
}
inline uint32_t ioapicstate::read(int reg) const {
    reg_[0].v = reg;
   42ddb:	b8 00 00 c0 fe       	mov    $0xfec00000,%eax
   42de0:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    return reg_[1].v;
   42de6:	8b 40 10             	mov    0x10(%rax),%eax
    assert((ioapic_ver & 0xFF) == 0x11 || (ioapic_ver & 0xFF) == 0x20);
   42de9:	0f b6 d0             	movzbl %al,%edx
   42dec:	3c 20                	cmp    $0x20,%al
   42dee:	74 09                	je     42df9 <init_hardware()+0x2dd>
   42df0:	83 fa 11             	cmp    $0x11,%edx
   42df3:	0f 85 10 ff ff ff    	jne    42d09 <init_hardware()+0x1ed>
    assert((ioapic_ver >> 16) >= 0x17);
   42df9:	3d ff ff 16 00       	cmp    $0x16ffff,%eax
   42dfe:	0f 86 1e ff ff ff    	jbe    42d22 <init_hardware()+0x206>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42e04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   42e09:	ba 21 00 00 00       	mov    $0x21,%edx
   42e0e:	ee                   	out    %al,(%dx)
   42e0f:	ba a1 00 00 00       	mov    $0xa1,%edx
   42e14:	ee                   	out    %al,(%dx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42e15:	b8 d0 62 04 00       	mov    $0x462d0,%eax
   42e1a:	48 3d d0 62 04 00    	cmp    $0x462d0,%rax
   42e20:	74 12                	je     42e34 <init_hardware()+0x318>
   42e22:	48 89 c3             	mov    %rax,%rbx
        (*fp)();
   42e25:	ff 13                	callq  *(%rbx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42e27:	48 83 c3 08          	add    $0x8,%rbx
   42e2b:	48 81 fb d0 62 04 00 	cmp    $0x462d0,%rbx
   42e32:	75 f1                	jne    42e25 <init_hardware()+0x309>
    gdt_segments[0] = 0;
   42e34:	48 c7 05 61 82 01 00 	movq   $0x0,0x18261(%rip)        # 5b0a0 <gdt_segments>
   42e3b:	00 00 00 00 
    *segment = type
   42e3f:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   42e46:	98 20 00 
   42e49:	48 89 05 58 82 01 00 	mov    %rax,0x18258(%rip)        # 5b0a8 <gdt_segments+0x8>
   42e50:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   42e57:	92 00 00 
   42e5a:	48 89 05 4f 82 01 00 	mov    %rax,0x1824f(%rip)        # 5b0b0 <gdt_segments+0x10>
   42e61:	48 b8 00 00 00 00 00 	movabs $0x20f80000000000,%rax
   42e68:	f8 20 00 
   42e6b:	48 89 05 46 82 01 00 	mov    %rax,0x18246(%rip)        # 5b0b8 <gdt_segments+0x18>
   42e72:	48 b8 00 00 00 00 00 	movabs $0xf20000000000,%rax
   42e79:	f2 00 00 
   42e7c:	48 89 05 3d 82 01 00 	mov    %rax,0x1823d(%rip)        # 5b0c0 <gdt_segments+0x20>
    set_sys_segment(&gdt_segments[SEGSEL_TASKSTATE >> 3],
   42e83:	ba 20 b0 05 00       	mov    $0x5b020,%edx
    segment[0] = ((addr & 0x0000000000FFFFFFUL) << 16)
   42e88:	48 89 d0             	mov    %rdx,%rax
   42e8b:	48 c1 e0 10          	shl    $0x10,%rax
   42e8f:	48 b9 00 00 ff ff ff 	movabs $0xffffff0000,%rcx
   42e96:	00 00 00 
   42e99:	48 21 c8             	and    %rcx,%rax
        | ((addr & 0x00000000FF000000UL) << 32)
   42e9c:	48 89 d1             	mov    %rdx,%rcx
   42e9f:	48 c1 e1 20          	shl    $0x20,%rcx
   42ea3:	48 be 00 00 00 00 00 	movabs $0xff00000000000000,%rsi
   42eaa:	00 00 ff 
   42ead:	48 21 f1             	and    %rsi,%rcx
   42eb0:	48 09 c8             	or     %rcx,%rax
        | X86SEG_P;                   // segment present
   42eb3:	48 b9 67 00 00 00 00 	movabs $0x890000000067,%rcx
   42eba:	89 00 00 
   42ebd:	48 09 c8             	or     %rcx,%rax
   42ec0:	48 89 05 01 82 01 00 	mov    %rax,0x18201(%rip)        # 5b0c8 <gdt_segments+0x28>
    segment[1] = addr >> 32;
   42ec7:	48 c1 ea 20          	shr    $0x20,%rdx
   42ecb:	48 89 15 fe 81 01 00 	mov    %rdx,0x181fe(%rip)        # 5b0d0 <gdt_segments+0x30>
    memset(&taskstate, 0, sizeof(taskstate));
   42ed2:	ba 68 00 00 00       	mov    $0x68,%edx
   42ed7:	be 00 00 00 00       	mov    $0x0,%esi
   42edc:	bf 20 b0 05 00       	mov    $0x5b020,%edi
   42ee1:	e8 e2 15 00 00       	callq  444c8 <memset>
    taskstate.ts_rsp[0] = KERNEL_STACK_TOP;
   42ee6:	48 c7 05 33 81 01 00 	movq   $0x80000,0x18133(%rip)        # 5b024 <taskstate+0x4>
   42eed:	00 00 08 00 
    gdt.limit = sizeof(gdt_segments) - 1;
   42ef1:	66 c7 45 c6 37 00    	movw   $0x37,-0x3a(%rbp)
    gdt.base = (uint64_t) gdt_segments;
   42ef7:	48 c7 45 c8 a0 b0 05 	movq   $0x5b0a0,-0x38(%rbp)
   42efe:	00 
    idt.limit = sizeof(interrupt_descriptors) - 1;
   42eff:	66 c7 45 d6 ff 0f    	movw   $0xfff,-0x2a(%rbp)
    idt.base = (uint64_t) interrupt_descriptors;
   42f05:	48 c7 45 d8 40 25 05 	movq   $0x52540,-0x28(%rbp)
   42f0c:	00 
                 : "memory", "cc");
   42f0d:	b8 28 00 00 00       	mov    $0x28,%eax
   42f12:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
   42f16:	0f 00 d8             	ltr    %ax
   42f19:	0f 01 5d d6          	lidt   -0x2a(%rbp)
                 : : "a" ((uint16_t) SEGSEL_KERN_DATA));
   42f1d:	b8 10 00 00 00       	mov    $0x10,%eax
   42f22:	8e e0                	mov    %eax,%fs
   42f24:	8e e8                	mov    %eax,%gs
    asm volatile("movq %%cr0, %0" : "=r" (x));
   42f26:	0f 20 c0             	mov    %cr0,%rax
    wrcr0(cr0);
   42f29:	0d 23 00 05 80       	or     $0x80050023,%eax
    asm volatile("movq %0, %%cr0" : : "r" (x));
   42f2e:	0f 22 c0             	mov    %rax,%cr0
}
__always_inline void wrmsr(uint32_t msr, uint64_t x) {
    asm volatile("wrmsr" : : "c" (msr), "a" ((uint32_t) x), "d" (x >> 32));
   42f31:	b9 81 00 00 c0       	mov    $0xc0000081,%ecx
   42f36:	b8 00 00 00 00       	mov    $0x0,%eax
   42f3b:	ba 08 00 18 00       	mov    $0x180008,%edx
   42f40:	0f 30                	wrmsr  
    wrmsr(MSR_IA32_LSTAR, reinterpret_cast<uint64_t>(syscall_entry));
   42f42:	b8 d6 0a 04 00       	mov    $0x40ad6,%eax
   42f47:	48 89 c2             	mov    %rax,%rdx
   42f4a:	48 c1 ea 20          	shr    $0x20,%rdx
   42f4e:	b9 82 00 00 c0       	mov    $0xc0000082,%ecx
   42f53:	0f 30                	wrmsr  
   42f55:	b9 84 00 00 c0       	mov    $0xc0000084,%ecx
   42f5a:	b8 00 77 04 00       	mov    $0x47700,%eax
   42f5f:	ba 00 00 00 00       	mov    $0x0,%edx
   42f64:	0f 30                	wrmsr  
    return reg_[reg].v;
   42f66:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42f6b:	8b 90 f0 00 00 00    	mov    0xf0(%rax),%edx
    write(reg_svr, (read(reg_svr) & ~0xFF) | 0x100 | vector);
   42f71:	81 e2 00 fe ff ff    	and    $0xfffffe00,%edx
   42f77:	81 ca 3f 01 00 00    	or     $0x13f,%edx
    reg_[reg].v = v;
   42f7d:	89 90 f0 00 00 00    	mov    %edx,0xf0(%rax)
   42f83:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
   42f8a:	00 00 00 
   42f8d:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
   42f94:	00 02 00 
   42f97:	c7 80 80 03 00 00 00 	movl   $0x0,0x380(%rax)
   42f9e:	00 00 00 
   42fa1:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
   42fa8:	00 01 00 
   42fab:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
   42fb2:	00 01 00 
   42fb5:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
   42fbc:	00 00 00 
   42fbf:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
   42fc6:	00 00 00 
    return reg_[reg].v;
   42fc9:	8b 90 80 02 00 00    	mov    0x280(%rax),%edx
    reg_[reg].v = v;
   42fcf:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
   42fd6:	00 00 00 
}
   42fd9:	48 83 c4 38          	add    $0x38,%rsp
   42fdd:	5b                   	pop    %rbx
   42fde:	5d                   	pop    %rbp
   42fdf:	c3                   	retq   

0000000000042fe0 <check_pagetable(x86_64_pagetable*)>:
void check_pagetable(x86_64_pagetable* pagetable) {
   42fe0:	f3 0f 1e fa          	endbr64 
   42fe4:	55                   	push   %rbp
   42fe5:	48 89 e5             	mov    %rsp,%rbp
   42fe8:	53                   	push   %rbx
   42fe9:	48 83 ec 28          	sub    $0x28,%rsp
    assert(((uintptr_t) pagetable % PAGESIZE) == 0); // must be page aligned
   42fed:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   42ff3:	0f 85 85 01 00 00    	jne    4317e <check_pagetable(x86_64_pagetable*)+0x19e>
   42ff9:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42ffc:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   43000:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   43004:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   4300b:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   43012:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   43019:	00 
    real_find(va);
   4301a:	be 72 0a 04 00       	mov    $0x40a72,%esi
   4301f:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   43023:	e8 1a ee ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   43028:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   4302c:	48 8b 30             	mov    (%rax),%rsi
   4302f:	40 f6 c6 01          	test   $0x1,%sil
   43033:	0f 84 73 01 00 00    	je     431ac <check_pagetable(x86_64_pagetable*)+0x1cc>
        if (level_ > 0) {
   43039:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   4303c:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   43043:	ff 0f 00 
   43046:	48 21 f0             	and    %rsi,%rax
   43049:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   4304c:	85 c9                	test   %ecx,%ecx
   4304e:	0f 8e 43 01 00 00    	jle    43197 <check_pagetable(x86_64_pagetable*)+0x1b7>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   43054:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43058:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4305f:	48 d3 e0             	shl    %cl,%rax
   43062:	48 f7 d0             	not    %rax
   43065:	48 23 45 e8          	and    -0x18(%rbp),%rax
   43069:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   4306c:	ba 72 0a 04 00       	mov    $0x40a72,%edx
   43071:	48 39 c2             	cmp    %rax,%rdx
   43074:	0f 85 32 01 00 00    	jne    431ac <check_pagetable(x86_64_pagetable*)+0x1cc>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4307a:	48 c7 45 d0 00 60 05 	movq   $0x56000,-0x30(%rbp)
   43081:	00 
   43082:	48 c7 45 d8 00 60 05 	movq   $0x56000,-0x28(%rbp)
   43089:	00 
   4308a:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   43091:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   43098:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   4309f:	00 
    real_find(va);
   430a0:	48 89 de             	mov    %rbx,%rsi
   430a3:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   430a7:	e8 96 ed ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   430ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   430b0:	48 8b 30             	mov    (%rax),%rsi
   430b3:	40 f6 c6 01          	test   $0x1,%sil
   430b7:	0f 84 1d 01 00 00    	je     431da <check_pagetable(x86_64_pagetable*)+0x1fa>
        if (level_ > 0) {
   430bd:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   430c0:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   430c7:	ff 0f 00 
   430ca:	48 21 f0             	and    %rsi,%rax
   430cd:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   430d0:	85 c9                	test   %ecx,%ecx
   430d2:	0f 8e ed 00 00 00    	jle    431c5 <check_pagetable(x86_64_pagetable*)+0x1e5>
   430d8:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   430dc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   430e3:	48 d3 e0             	shl    %cl,%rax
   430e6:	48 f7 d0             	not    %rax
   430e9:	48 23 45 e8          	and    -0x18(%rbp),%rax
   430ed:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   430f0:	48 39 c3             	cmp    %rax,%rbx
   430f3:	0f 85 e1 00 00 00    	jne    431da <check_pagetable(x86_64_pagetable*)+0x1fa>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   430f9:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
   430fd:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   43101:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   43108:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   4310f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   43116:	00 
    real_find(va);
   43117:	be 00 60 05 00       	mov    $0x56000,%esi
   4311c:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   43120:	e8 1d ed ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   43125:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   43129:	48 8b 30             	mov    (%rax),%rsi
   4312c:	40 f6 c6 01          	test   $0x1,%sil
   43130:	0f 84 d2 00 00 00    	je     43208 <check_pagetable(x86_64_pagetable*)+0x228>
        if (level_ > 0) {
   43136:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   43139:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   43140:	ff 0f 00 
   43143:	48 21 f0             	and    %rsi,%rax
   43146:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   43149:	85 c9                	test   %ecx,%ecx
   4314b:	0f 8e a2 00 00 00    	jle    431f3 <check_pagetable(x86_64_pagetable*)+0x213>
   43151:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43155:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4315c:	48 d3 e0             	shl    %cl,%rax
   4315f:	48 f7 d0             	not    %rax
   43162:	48 23 45 e8          	and    -0x18(%rbp),%rax
   43166:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   43169:	ba 00 60 05 00       	mov    $0x56000,%edx
   4316e:	48 39 c2             	cmp    %rax,%rdx
   43171:	0f 85 91 00 00 00    	jne    43208 <check_pagetable(x86_64_pagetable*)+0x228>
}
   43177:	48 83 c4 28          	add    $0x28,%rsp
   4317b:	5b                   	pop    %rbx
   4317c:	5d                   	pop    %rbp
   4317d:	c3                   	retq   
    assert(((uintptr_t) pagetable % PAGESIZE) == 0); // must be page aligned
   4317e:	b9 00 00 00 00       	mov    $0x0,%ecx
   43183:	ba 98 56 04 00       	mov    $0x45698,%edx
   43188:	be 2e 01 00 00       	mov    $0x12e,%esi
   4318d:	bf a3 54 04 00       	mov    $0x454a3,%edi
   43192:	e8 24 f9 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43197:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   4319e:	ff 0f 00 
   431a1:	48 89 f2             	mov    %rsi,%rdx
   431a4:	48 21 c2             	and    %rax,%rdx
   431a7:	e9 a8 fe ff ff       	jmpq   43054 <check_pagetable(x86_64_pagetable*)+0x74>
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   431ac:	b9 00 00 00 00       	mov    $0x0,%ecx
   431b1:	ba c0 56 04 00       	mov    $0x456c0,%edx
   431b6:	be 2f 01 00 00       	mov    $0x12f,%esi
   431bb:	bf a3 54 04 00       	mov    $0x454a3,%edi
   431c0:	e8 f6 f8 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   431c5:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   431cc:	ff 0f 00 
   431cf:	48 89 f2             	mov    %rsi,%rdx
   431d2:	48 21 c2             	and    %rax,%rdx
   431d5:	e9 fe fe ff ff       	jmpq   430d8 <check_pagetable(x86_64_pagetable*)+0xf8>
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   431da:	b9 00 00 00 00       	mov    $0x0,%ecx
   431df:	ba 10 57 04 00       	mov    $0x45710,%edx
   431e4:	be 31 01 00 00       	mov    $0x131,%esi
   431e9:	bf a3 54 04 00       	mov    $0x454a3,%edi
   431ee:	e8 c8 f8 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   431f3:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   431fa:	ff 0f 00 
   431fd:	48 89 f2             	mov    %rsi,%rdx
   43200:	48 21 c2             	and    %rax,%rdx
   43203:	e9 49 ff ff ff       	jmpq   43151 <check_pagetable(x86_64_pagetable*)+0x171>
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   43208:	b9 00 00 00 00       	mov    $0x0,%ecx
   4320d:	ba 60 57 04 00       	mov    $0x45760,%edx
   43212:	be 33 01 00 00       	mov    $0x133,%esi
   43217:	bf a3 54 04 00       	mov    $0x454a3,%edi
   4321c:	e8 9a f8 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   43221:	90                   	nop

0000000000043222 <pcistate::next(int) const>:
int pcistate::next(int addr) const {
   43222:	f3 0f 1e fa          	endbr64 
   43226:	55                   	push   %rbp
   43227:	48 89 e5             	mov    %rsp,%rbp
    }
    return addr;
}

inline uint32_t pcistate::readl(int addr) const {
    assert(addr >= 0 && !(addr & 3));
   4322a:	89 f0                	mov    %esi,%eax
   4322c:	83 c0 0c             	add    $0xc,%eax
   4322f:	78 23                	js     43254 <pcistate::next(int) const+0x32>
   43231:	a8 03                	test   $0x3,%al
   43233:	75 1f                	jne    43254 <pcistate::next(int) const+0x32>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   43235:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4323a:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   4323f:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   43240:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   43245:	ed                   	in     (%dx),%eax
   43246:	89 c2                	mov    %eax,%edx
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   43248:	bf f8 0c 00 00       	mov    $0xcf8,%edi
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   4324d:	b9 fc 0c 00 00       	mov    $0xcfc,%ecx
   43252:	eb 5b                	jmp    432af <pcistate::next(int) const+0x8d>
    assert(addr >= 0 && !(addr & 3));
   43254:	b9 00 00 00 00       	mov    $0x0,%ecx
   43259:	ba ee 54 04 00       	mov    $0x454ee,%edx
   4325e:	be 57 00 00 00       	mov    $0x57,%esi
   43263:	bf e5 54 04 00       	mov    $0x454e5,%edi
   43268:	e8 4e f8 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    assert(addr >= 0 && addr < 0x1000000);
   4326d:	b9 00 00 00 00       	mov    $0x0,%ecx
   43272:	ba 07 55 04 00       	mov    $0x45507,%edx
   43277:	be 4a 00 00 00       	mov    $0x4a,%esi
   4327c:	bf e5 54 04 00       	mov    $0x454e5,%edi
   43281:	e8 35 f8 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
            addr += make_addr(0, 0, 1);
   43286:	81 c6 00 01 00 00    	add    $0x100,%esi
        if (addr >= addr_end) {
   4328c:	81 fe ff ff 07 00    	cmp    $0x7ffff,%esi
   43292:	7f 5d                	jg     432f1 <pcistate::next(int) const+0xcf>
        x = readl(addr + config_lthb);
   43294:	8d 46 0c             	lea    0xc(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   43297:	40 f6 c6 03          	test   $0x3,%sil
   4329b:	75 37                	jne    432d4 <pcistate::next(int) const+0xb2>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   4329d:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   432a2:	89 fa                	mov    %edi,%edx
   432a4:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   432a5:	89 ca                	mov    %ecx,%edx
   432a7:	ed                   	in     (%dx),%eax
   432a8:	89 c2                	mov    %eax,%edx
        if (x != uint32_t(-1)) {
   432aa:	83 f8 ff             	cmp    $0xffffffff,%eax
   432ad:	75 3e                	jne    432ed <pcistate::next(int) const+0xcb>
    assert(addr >= 0 && addr < 0x1000000);
   432af:	81 fe ff ff ff 00    	cmp    $0xffffff,%esi
   432b5:	77 b6                	ja     4326d <pcistate::next(int) const+0x4b>
            && (x == uint32_t(-1) || !(x & 0x800000))) {
   432b7:	f7 c6 00 07 00 00    	test   $0x700,%esi
   432bd:	75 c7                	jne    43286 <pcistate::next(int) const+0x64>
   432bf:	83 fa ff             	cmp    $0xffffffff,%edx
   432c2:	74 08                	je     432cc <pcistate::next(int) const+0xaa>
   432c4:	f7 c2 00 00 80 00    	test   $0x800000,%edx
   432ca:	75 ba                	jne    43286 <pcistate::next(int) const+0x64>
            addr += make_addr(0, 1, 0);
   432cc:	81 c6 00 08 00 00    	add    $0x800,%esi
   432d2:	eb b8                	jmp    4328c <pcistate::next(int) const+0x6a>
    assert(addr >= 0 && !(addr & 3));
   432d4:	b9 00 00 00 00       	mov    $0x0,%ecx
   432d9:	ba ee 54 04 00       	mov    $0x454ee,%edx
   432de:	be 57 00 00 00       	mov    $0x57,%esi
   432e3:	bf e5 54 04 00       	mov    $0x454e5,%edi
   432e8:	e8 ce f7 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   432ed:	89 f0                	mov    %esi,%eax
   432ef:	eb 05                	jmp    432f6 <pcistate::next(int) const+0xd4>
            return -1;
   432f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   432f6:	5d                   	pop    %rbp
   432f7:	c3                   	retq   

00000000000432f8 <poweroff()>:
void poweroff() {
   432f8:	f3 0f 1e fa          	endbr64 
   432fc:	55                   	push   %rbp
   432fd:	48 89 e5             	mov    %rsp,%rbp
   43300:	53                   	push   %rbx
   43301:	48 83 ec 08          	sub    $0x8,%rsp
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   43305:	b8 00 00 00 80       	mov    $0x80000000,%eax
   4330a:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   4330f:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   43310:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   43315:	89 c2                	mov    %eax,%edx
   43317:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   43318:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   4331d:	0f 84 c4 00 00 00    	je     433e7 <poweroff()+0xef>
   43323:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   43328:	0f 84 b9 00 00 00    	je     433e7 <poweroff()+0xef>
   4332e:	be 00 00 00 00       	mov    $0x0,%esi
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   43333:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
        addr = next(addr);
   43338:	bf 00 b0 05 00       	mov    $0x5b000,%edi
   4333d:	e8 e0 fe ff ff       	callq  43222 <pcistate::next(int) const>
   43342:	89 c6                	mov    %eax,%esi
    while (addr >= 0 && !predicate(addr)) {
   43344:	85 c0                	test   %eax,%eax
   43346:	78 52                	js     4339a <poweroff()+0xa2>
    assert(addr >= 0 && !(addr & 3));
   43348:	40 f6 c6 03          	test   $0x3,%sil
   4334c:	75 67                	jne    433b5 <poweroff()+0xbd>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   4334e:	89 f0                	mov    %esi,%eax
   43350:	0d 00 00 00 80       	or     $0x80000000,%eax
   43355:	89 da                	mov    %ebx,%edx
   43357:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   43358:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   4335d:	89 c2                	mov    %eax,%edx
   4335f:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   43360:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   43365:	74 07                	je     4336e <poweroff()+0x76>
   43367:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   4336c:	75 ca                	jne    43338 <poweroff()+0x40>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   4336e:	8d 46 40             	lea    0x40(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   43371:	40 f6 c6 03          	test   $0x3,%sil
   43375:	75 57                	jne    433ce <poweroff()+0xd6>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   43377:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4337c:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   43381:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   43382:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   43387:	ed                   	in     (%dx),%eax
   43388:	89 c2                	mov    %eax,%edx
   4338a:	81 e2 c0 ff 00 00    	and    $0xffc0,%edx
        outw(pm_io_base + 4, 0x2000);
   43390:	83 c2 04             	add    $0x4,%edx
    asm volatile("outw %0, %w1" : : "a" (data), "d" (port));
   43393:	b8 00 20 00 00       	mov    $0x2000,%eax
   43398:	66 ef                	out    %ax,(%dx)
    console_printf(CPOS(24, 0), 0xC000, "Cannot power off!\n");
   4339a:	ba 25 55 04 00       	mov    $0x45525,%edx
   4339f:	be 00 c0 00 00       	mov    $0xc000,%esi
   433a4:	bf 80 07 00 00       	mov    $0x780,%edi
   433a9:	b8 00 00 00 00       	mov    $0x0,%eax
   433ae:	e8 3a 1c 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
    while (true) {
   433b3:	eb fe                	jmp    433b3 <poweroff()+0xbb>
    assert(addr >= 0 && !(addr & 3));
   433b5:	b9 00 00 00 00       	mov    $0x0,%ecx
   433ba:	ba ee 54 04 00       	mov    $0x454ee,%edx
   433bf:	be 57 00 00 00       	mov    $0x57,%esi
   433c4:	bf e5 54 04 00       	mov    $0x454e5,%edi
   433c9:	e8 ed f6 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   433ce:	b9 00 00 00 00       	mov    $0x0,%ecx
   433d3:	ba ee 54 04 00       	mov    $0x454ee,%edx
   433d8:	be 57 00 00 00       	mov    $0x57,%esi
   433dd:	bf e5 54 04 00       	mov    $0x454e5,%edi
   433e2:	e8 d4 f6 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   433e7:	b8 40 00 00 00       	mov    $0x40,%eax
   433ec:	eb 89                	jmp    43377 <poweroff()+0x7f>

00000000000433ee <check_keyboard()>:
int check_keyboard() {
   433ee:	f3 0f 1e fa          	endbr64 
   433f2:	55                   	push   %rbp
   433f3:	48 89 e5             	mov    %rsp,%rbp
   433f6:	41 54                	push   %r12
   433f8:	53                   	push   %rbx
   433f9:	48 83 ec 20          	sub    $0x20,%rsp
    int c = keyboard_readc();
   433fd:	e8 28 f2 ff ff       	callq  4262a <keyboard_readc()>
   43402:	41 89 c4             	mov    %eax,%r12d
    if (c == 'a' || c == 'f' || c == 'e') {
   43405:	8d 40 9b             	lea    -0x65(%rax),%eax
   43408:	83 f8 01             	cmp    $0x1,%eax
   4340b:	76 1b                	jbe    43428 <check_keyboard()+0x3a>
   4340d:	41 83 fc 61          	cmp    $0x61,%r12d
   43411:	74 15                	je     43428 <check_keyboard()+0x3a>
    } else if (c == 0x03 || c == 'q') {
   43413:	41 83 fc 03          	cmp    $0x3,%r12d
   43417:	74 0a                	je     43423 <check_keyboard()+0x35>
   43419:	41 83 fc 71          	cmp    $0x71,%r12d
   4341d:	0f 85 cd 00 00 00    	jne    434f0 <check_keyboard()+0x102>
        poweroff();
   43423:	e8 d0 fe ff ff       	callq  432f8 <poweroff()>
   43428:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   4342d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        memset(pt, 0, PAGESIZE * 2);
   43433:	ba 00 20 00 00       	mov    $0x2000,%edx
   43438:	be 00 00 00 00       	mov    $0x0,%esi
   4343d:	bf 00 10 00 00       	mov    $0x1000,%edi
   43442:	e8 81 10 00 00       	callq  444c8 <memset>
        pt[0].entry[0] = 0x2000 | PTE_P | PTE_W;
   43447:	48 c7 04 25 00 10 00 	movq   $0x2003,0x1000
   4344e:	00 03 20 00 00 
        pt[1].entry[0] = PTE_P | PTE_W | PTE_PS;
   43453:	48 c7 04 25 00 20 00 	movq   $0x83,0x2000
   4345a:	00 83 00 00 00 
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   4345f:	b8 00 10 00 00       	mov    $0x1000,%eax
   43464:	0f 22 d8             	mov    %rax,%cr3
        multiboot_info[0] = 4;
   43467:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%rbp)
            argument = "allocators";
   4346e:	b8 38 55 04 00       	mov    $0x45538,%eax
        if (c == 'a') {
   43473:	41 83 fc 61          	cmp    $0x61,%r12d
   43477:	74 12                	je     4348b <check_keyboard()+0x9d>
            argument = "forkexit";
   43479:	41 83 fc 65          	cmp    $0x65,%r12d
   4347d:	b8 43 55 04 00       	mov    $0x45543,%eax
   43482:	ba 48 55 04 00       	mov    $0x45548,%edx
   43487:	48 0f 44 c2          	cmove  %rdx,%rax
        assert(argument_ptr < 0x100000000L);
   4348b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   43490:	48 39 d0             	cmp    %rdx,%rax
   43493:	77 67                	ja     434fc <check_keyboard()+0x10e>
        multiboot_info[4] = (uint32_t) argument_ptr;
   43495:	89 45 ec             	mov    %eax,-0x14(%rbp)
        stash_kernel_data(true);
   43498:	bf 01 00 00 00       	mov    $0x1,%edi
   4349d:	e8 03 ef ff ff       	callq  423a5 <stash_kernel_data(bool)>
        uintptr_t zero_size = (uintptr_t) &_kernel_end - (uintptr_t) &_edata;
   434a2:	bb e8 b0 05 00       	mov    $0x5b0e8,%ebx
   434a7:	48 81 eb 40 35 05 00 	sub    $0x53540,%rbx
        uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   434ae:	ba 40 35 05 00       	mov    $0x53540,%edx
   434b3:	48 81 ea 00 70 04 00 	sub    $0x47000,%rdx
        uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   434ba:	be 00 70 04 01       	mov    $0x1047000,%esi
   434bf:	48 81 ee 40 35 05 00 	sub    $0x53540,%rsi
        memcpy(&_data_start, data_stash, data_size);
   434c6:	bf 00 70 04 00       	mov    $0x47000,%edi
   434cb:	e8 87 0f 00 00       	callq  44457 <memcpy>
        memset(&_edata, 0, zero_size);
   434d0:	48 89 da             	mov    %rbx,%rdx
   434d3:	be 00 00 00 00       	mov    $0x0,%esi
   434d8:	bf 40 35 05 00       	mov    $0x53540,%edi
   434dd:	e8 e6 0f 00 00       	callq  444c8 <memset>
                     : : "b" (multiboot_info) : "memory");
   434e2:	48 8d 5d dc          	lea    -0x24(%rbp),%rbx
   434e6:	b8 02 b0 ad 2b       	mov    $0x2badb002,%eax
   434eb:	e9 10 cb ff ff       	jmpq   40000 <_kernel_start>
}
   434f0:	44 89 e0             	mov    %r12d,%eax
   434f3:	48 83 c4 20          	add    $0x20,%rsp
   434f7:	5b                   	pop    %rbx
   434f8:	41 5c                	pop    %r12
   434fa:	5d                   	pop    %rbp
   434fb:	c3                   	retq   
        assert(argument_ptr < 0x100000000L);
   434fc:	b9 00 00 00 00       	mov    $0x0,%ecx
   43501:	ba 51 55 04 00       	mov    $0x45551,%edx
   43506:	be 07 03 00 00       	mov    $0x307,%esi
   4350b:	bf a3 54 04 00       	mov    $0x454a3,%edi
   43510:	e8 a6 f5 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>

0000000000043515 <panic(unsigned long, unsigned long, unsigned long, char const*, ...)>:
                  const char* format, ...) {
   43515:	55                   	push   %rbp
   43516:	48 89 e5             	mov    %rsp,%rbp
   43519:	48 83 ec 50          	sub    $0x50,%rsp
   4351d:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   43521:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   43525:	c7 45 b8 20 00 00 00 	movl   $0x20,-0x48(%rbp)
   4352c:	48 8d 45 10          	lea    0x10(%rbp),%rax
   43530:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   43534:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   43538:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    vpanic(rsp, rbp, rip, format, val);
   4353c:	4c 8d 45 b8          	lea    -0x48(%rbp),%r8
   43540:	e8 6a f4 ff ff       	callq  429af <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)>
        check_keyboard();
   43545:	e8 a4 fe ff ff       	callq  433ee <check_keyboard()>
    while (true) {
   4354a:	eb f9                	jmp    43545 <panic(unsigned long, unsigned long, unsigned long, char const*, ...)+0x30>

000000000004354c <user_panic(proc*)>:
void user_panic(proc* p) {
   4354c:	f3 0f 1e fa          	endbr64 
   43550:	55                   	push   %rbp
   43551:	48 89 e5             	mov    %rsp,%rbp
   43554:	41 57                	push   %r15
   43556:	41 56                	push   %r14
   43558:	41 55                	push   %r13
   4355a:	41 54                	push   %r12
   4355c:	53                   	push   %rbx
   4355d:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
   43564:	48 89 fb             	mov    %rdi,%rbx
   43567:	48 89 bd a8 fe ff ff 	mov    %rdi,-0x158(%rbp)
    memset(s, 0, sizeof(s));
   4356e:	ba 00 01 00 00       	mov    $0x100,%edx
   43573:	be 00 00 00 00       	mov    $0x0,%esi
   43578:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
   4357f:	e8 44 0f 00 00       	callq  444c8 <memset>
    if (p->regs.reg_rdi == 0) {
   43584:	48 8b 73 40          	mov    0x40(%rbx),%rsi
   43588:	48 85 f6             	test   %rsi,%rsi
   4358b:	75 40                	jne    435cd <user_panic(proc*)+0x81>
        strcpy(s, "(null)");
   4358d:	be 6d 55 04 00       	mov    $0x4556d,%esi
   43592:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
   43599:	e8 8b 0f 00 00       	callq  44529 <strcpy>
    panic(p->regs.reg_rsp, p->regs.reg_rbp, p->regs.reg_rip, "%s", s);
   4359e:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
   435a5:	48 8b 90 a8 00 00 00 	mov    0xa8(%rax),%rdx
   435ac:	48 8b 70 30          	mov    0x30(%rax),%rsi
   435b0:	48 8b b8 c0 00 00 00 	mov    0xc0(%rax),%rdi
   435b7:	4c 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%r8
   435be:	b9 74 55 04 00       	mov    $0x45574,%ecx
   435c3:	b8 00 00 00 00       	mov    $0x0,%eax
   435c8:	e8 48 ff ff ff       	callq  43515 <panic(unsigned long, unsigned long, unsigned long, char const*, ...)>
        vmiter it(p->pagetable, p->regs.reg_rdi);
   435cd:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
   435d4:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   435d7:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
   435de:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
   435e5:	c7 85 c0 fe ff ff 03 	movl   $0x3,-0x140(%rbp)
   435ec:	00 00 00 
   435ef:	c7 85 c4 fe ff ff ff 	movl   $0xfff,-0x13c(%rbp)
   435f6:	0f 00 00 
   435f9:	48 c7 85 c8 fe ff ff 	movq   $0x0,-0x138(%rbp)
   43600:	00 00 00 00 
    real_find(va);
   43604:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
   4360b:	e8 32 e8 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
             i < sizeof(s) - 1 && it.va() >= PROC_START_ADDR && it.user();
   43610:	48 8d 9d d0 fe ff ff 	lea    -0x130(%rbp),%rbx
   43617:	4c 8d 6d cf          	lea    -0x31(%rbp),%r13
            pa &= ~0x1000UL;
   4361b:	49 bc 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r12
   43622:	ff 0f 00 
        return pa + (va_ & pageoffmask(level_));
   43625:	49 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%r15
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4362c:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   43633:	ff 0f 00 
   43636:	eb 27                	jmp    4365f <user_panic(proc*)+0x113>
        return nullptr;
   43638:	ba 00 00 00 00       	mov    $0x0,%edx
            s[i] = *it.kptr<const char*>();
   4363d:	0f b6 02             	movzbl (%rdx),%eax
   43640:	88 03                	mov    %al,(%rbx)
    return find(va_ + 1);
   43642:	48 83 c6 01          	add    $0x1,%rsi
    real_find(va);
   43646:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
   4364d:	e8 f0 e7 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
             i < sizeof(s) - 1 && it.va() >= PROC_START_ADDR && it.user();
   43652:	48 83 c3 01          	add    $0x1,%rbx
   43656:	4c 39 eb             	cmp    %r13,%rbx
   43659:	0f 84 3f ff ff ff    	je     4359e <user_panic(proc*)+0x52>
    return va_;
   4365f:	48 8b b5 c8 fe ff ff 	mov    -0x138(%rbp),%rsi
   43666:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   4366d:	0f 86 2b ff ff ff    	jbe    4359e <user_panic(proc*)+0x52>
    uint64_t ph = *pep_ & perm_;
   43673:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
   4367a:	48 8b 10             	mov    (%rax),%rdx
   4367d:	48 63 85 c4 fe ff ff 	movslq -0x13c(%rbp),%rax
   43684:	48 21 d0             	and    %rdx,%rax
   43687:	48 89 c1             	mov    %rax,%rcx
    return ph & -(ph & PTE_P);
   4368a:	83 e0 01             	and    $0x1,%eax
   4368d:	48 f7 d8             	neg    %rax
   43690:	48 21 c8             	and    %rcx,%rax
    return (perm() & desired_perm) == desired_perm;
   43693:	83 e0 05             	and    $0x5,%eax
   43696:	48 83 f8 05          	cmp    $0x5,%rax
   4369a:	0f 85 fe fe ff ff    	jne    4359e <user_panic(proc*)+0x52>
    if (*pep_ & PTE_P) {
   436a0:	f6 c2 01             	test   $0x1,%dl
   436a3:	74 93                	je     43638 <user_panic(proc*)+0xec>
        if (level_ > 0) {
   436a5:	8b 8d c0 fe ff ff    	mov    -0x140(%rbp),%ecx
            pa &= ~0x1000UL;
   436ab:	48 89 d0             	mov    %rdx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   436ae:	4c 21 f0             	and    %r14,%rax
   436b1:	4c 21 e2             	and    %r12,%rdx
   436b4:	85 c9                	test   %ecx,%ecx
   436b6:	48 0f 4f c2          	cmovg  %rdx,%rax
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   436ba:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   436be:	4c 89 fa             	mov    %r15,%rdx
   436c1:	48 d3 e2             	shl    %cl,%rdx
   436c4:	48 f7 d2             	not    %rdx
   436c7:	48 21 f2             	and    %rsi,%rdx
   436ca:	48 01 c2             	add    %rax,%rdx
        return reinterpret_cast<T>(pa());
   436cd:	e9 6b ff ff ff       	jmpq   4363d <user_panic(proc*)+0xf1>

00000000000436d2 <panic(char const*, ...)>:
void panic(const char* format, ...) {
   436d2:	f3 0f 1e fa          	endbr64 
   436d6:	55                   	push   %rbp
   436d7:	48 89 e5             	mov    %rsp,%rbp
   436da:	48 83 ec 50          	sub    $0x50,%rsp
   436de:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   436e2:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   436e6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   436ea:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   436ee:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   436f2:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   436f9:	48 8d 45 10          	lea    0x10(%rbp),%rax
   436fd:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   43701:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   43705:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    asm volatile("movq %%rbp, %0" : "=r" (x));
   43709:	48 89 ee             	mov    %rbp,%rsi
    asm volatile("movq %%rsp, %0" : "=r" (x));
   4370c:	48 89 e0             	mov    %rsp,%rax
    vpanic(rdrsp(), rdrbp(), 0, format, val);
   4370f:	4c 8d 45 b8          	lea    -0x48(%rbp),%r8
   43713:	48 89 f9             	mov    %rdi,%rcx
   43716:	ba 00 00 00 00       	mov    $0x0,%edx
   4371b:	48 89 c7             	mov    %rax,%rdi
   4371e:	e8 8c f2 ff ff       	callq  429af <vpanic(unsigned long, unsigned long, unsigned long, char const*, __va_list_tag*)>
        check_keyboard();
   43723:	e8 c6 fc ff ff       	callq  433ee <check_keyboard()>
    while (true) {
   43728:	eb f9                	jmp    43723 <panic(char const*, ...)+0x51>

000000000004372a <program_image::program_image(int)>:
program_image::program_image(int program_number) {
   4372a:	f3 0f 1e fa          	endbr64 
    elf_ = nullptr;
   4372e:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    if (program_number >= 0
   43735:	83 fe 05             	cmp    $0x5,%esi
   43738:	77 1a                	ja     43754 <program_image::program_image(int)+0x2a>
        elf_ = (elf_header*) ramimages[program_number].begin;
   4373a:	48 63 f6             	movslq %esi,%rsi
   4373d:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   43741:	48 8b 04 c5 08 70 04 	mov    0x47008(,%rax,8),%rax
   43748:	00 
   43749:	48 89 07             	mov    %rax,(%rdi)
        assert(elf_->e_magic == ELF_MAGIC);
   4374c:	81 38 7f 45 4c 46    	cmpl   $0x464c457f,(%rax)
   43752:	75 01                	jne    43755 <program_image::program_image(int)+0x2b>
   43754:	c3                   	retq   
program_image::program_image(int program_number) {
   43755:	55                   	push   %rbp
   43756:	48 89 e5             	mov    %rsp,%rbp
        assert(elf_->e_magic == ELF_MAGIC);
   43759:	b9 00 00 00 00       	mov    $0x0,%ecx
   4375e:	ba 77 55 04 00       	mov    $0x45577,%edx
   43763:	be 9c 03 00 00       	mov    $0x39c,%esi
   43768:	bf a3 54 04 00       	mov    $0x454a3,%edi
   4376d:	e8 49 f3 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>

0000000000043772 <program_image::program_number(char const*)>:
int program_image::program_number(const char* program_name) {
   43772:	f3 0f 1e fa          	endbr64 
   43776:	55                   	push   %rbp
   43777:	48 89 e5             	mov    %rsp,%rbp
   4377a:	41 54                	push   %r12
   4377c:	53                   	push   %rbx
   4377d:	49 89 fc             	mov    %rdi,%r12
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   43780:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (strcmp(program_name, ramimages[i].name) == 0) {
   43785:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   43789:	48 8b 34 c5 00 70 04 	mov    0x47000(,%rax,8),%rsi
   43790:	00 
   43791:	4c 89 e7             	mov    %r12,%rdi
   43794:	e8 ac 0d 00 00       	callq  44545 <strcmp>
   43799:	85 c0                	test   %eax,%eax
   4379b:	74 14                	je     437b1 <program_image::program_number(char const*)+0x3f>
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   4379d:	48 83 c3 01          	add    $0x1,%rbx
   437a1:	48 83 fb 06          	cmp    $0x6,%rbx
   437a5:	75 de                	jne    43785 <program_image::program_number(char const*)+0x13>
    return -1;
   437a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   437ac:	5b                   	pop    %rbx
   437ad:	41 5c                	pop    %r12
   437af:	5d                   	pop    %rbp
   437b0:	c3                   	retq   
            return i;
   437b1:	89 d8                	mov    %ebx,%eax
   437b3:	eb f7                	jmp    437ac <program_image::program_number(char const*)+0x3a>
   437b5:	90                   	nop

00000000000437b6 <program_image::program_image(char const*)>:
program_image::program_image(const char* program_name)
   437b6:	f3 0f 1e fa          	endbr64 
   437ba:	55                   	push   %rbp
   437bb:	48 89 e5             	mov    %rsp,%rbp
   437be:	53                   	push   %rbx
   437bf:	48 83 ec 08          	sub    $0x8,%rsp
   437c3:	48 89 fb             	mov    %rdi,%rbx
   437c6:	48 89 f7             	mov    %rsi,%rdi
    : program_image(program_number(program_name)) {
   437c9:	e8 a4 ff ff ff       	callq  43772 <program_image::program_number(char const*)>
   437ce:	89 c6                	mov    %eax,%esi
   437d0:	48 89 df             	mov    %rbx,%rdi
   437d3:	e8 52 ff ff ff       	callq  4372a <program_image::program_image(int)>
}
   437d8:	48 83 c4 08          	add    $0x8,%rsp
   437dc:	5b                   	pop    %rbx
   437dd:	5d                   	pop    %rbp
   437de:	c3                   	retq   
   437df:	90                   	nop

00000000000437e0 <program_image::entry() const>:
uintptr_t program_image::entry() const {
   437e0:	f3 0f 1e fa          	endbr64 
    return elf_ ? elf_->e_entry : 0;
   437e4:	48 8b 17             	mov    (%rdi),%rdx
   437e7:	b8 00 00 00 00       	mov    $0x0,%eax
   437ec:	48 85 d2             	test   %rdx,%rdx
   437ef:	74 04                	je     437f5 <program_image::entry() const+0x15>
   437f1:	48 8b 42 18          	mov    0x18(%rdx),%rax
}
   437f5:	c3                   	retq   

00000000000437f6 <program_image::empty() const>:
bool program_image::empty() const {
   437f6:	f3 0f 1e fa          	endbr64 
    return !elf_ || elf_->e_phnum == 0;
   437fa:	48 8b 17             	mov    (%rdi),%rdx
   437fd:	b8 01 00 00 00       	mov    $0x1,%eax
   43802:	48 85 d2             	test   %rdx,%rdx
   43805:	74 08                	je     4380f <program_image::empty() const+0x19>
   43807:	66 83 7a 38 00       	cmpw   $0x0,0x38(%rdx)
   4380c:	0f 94 c0             	sete   %al
}
   4380f:	c3                   	retq   

0000000000043810 <program_image_segment::program_image_segment(elf_program*, elf_header*)>:
program_image_segment::program_image_segment(elf_program* ph, elf_header* elf)
   43810:	f3 0f 1e fa          	endbr64 
    : ph_(ph), elf_(elf) {
   43814:	48 89 37             	mov    %rsi,(%rdi)
   43817:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    if (elf) {
   4381b:	48 85 d2             	test   %rdx,%rdx
   4381e:	74 1a                	je     4383a <program_image_segment::program_image_segment(elf_program*, elf_header*)+0x2a>
        return ph + (end ? elf->e_phnum : 0);
   43820:	0f b7 4a 38          	movzwl 0x38(%rdx),%ecx
   43824:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   4382b:	00 
   4382c:	48 29 c8             	sub    %rcx,%rax
   4382f:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   43833:	48 03 42 20          	add    0x20(%rdx),%rax
   43837:	48 89 c2             	mov    %rax,%rdx
    while (ph_ != eph && ph_->p_type != ELF_PTYPE_LOAD) {
   4383a:	48 39 d6             	cmp    %rdx,%rsi
   4383d:	74 11                	je     43850 <program_image_segment::program_image_segment(elf_program*, elf_header*)+0x40>
   4383f:	83 3e 01             	cmpl   $0x1,(%rsi)
   43842:	74 0c                	je     43850 <program_image_segment::program_image_segment(elf_program*, elf_header*)+0x40>
        ++ph_;
   43844:	48 83 c6 38          	add    $0x38,%rsi
   43848:	48 89 37             	mov    %rsi,(%rdi)
    while (ph_ != eph && ph_->p_type != ELF_PTYPE_LOAD) {
   4384b:	48 39 d6             	cmp    %rdx,%rsi
   4384e:	75 ef                	jne    4383f <program_image_segment::program_image_segment(elf_program*, elf_header*)+0x2f>
}
   43850:	c3                   	retq   
   43851:	90                   	nop

0000000000043852 <program_image::begin() const>:
program_image_segment program_image::begin() const {
   43852:	f3 0f 1e fa          	endbr64 
   43856:	55                   	push   %rbp
   43857:	48 89 e5             	mov    %rsp,%rbp
   4385a:	48 83 ec 10          	sub    $0x10,%rsp
    return program_image_segment(elf_header_program(elf_, false), elf_);
   4385e:	48 8b 17             	mov    (%rdi),%rdx
    if (elf) {
   43861:	48 85 d2             	test   %rdx,%rdx
   43864:	74 1a                	je     43880 <program_image::begin() const+0x2e>
        return ph + (end ? elf->e_phnum : 0);
   43866:	48 89 d6             	mov    %rdx,%rsi
   43869:	48 03 72 20          	add    0x20(%rdx),%rsi
    return program_image_segment(elf_header_program(elf_, false), elf_);
   4386d:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
   43871:	e8 9a ff ff ff       	callq  43810 <program_image_segment::program_image_segment(elf_program*, elf_header*)>
}
   43876:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   4387a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   4387e:	c9                   	leaveq 
   4387f:	c3                   	retq   
        return nullptr;
   43880:	48 89 d6             	mov    %rdx,%rsi
   43883:	eb e8                	jmp    4386d <program_image::begin() const+0x1b>
   43885:	90                   	nop

0000000000043886 <program_image::end() const>:
program_image_segment program_image::end() const {
   43886:	f3 0f 1e fa          	endbr64 
   4388a:	55                   	push   %rbp
   4388b:	48 89 e5             	mov    %rsp,%rbp
   4388e:	48 83 ec 10          	sub    $0x10,%rsp
    return program_image_segment(elf_header_program(elf_, true), elf_);
   43892:	48 8b 17             	mov    (%rdi),%rdx
    if (elf) {
   43895:	48 85 d2             	test   %rdx,%rdx
   43898:	74 2a                	je     438c4 <program_image::end() const+0x3e>
        return ph + (end ? elf->e_phnum : 0);
   4389a:	0f b7 4a 38          	movzwl 0x38(%rdx),%ecx
   4389e:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   438a5:	00 
   438a6:	48 29 c8             	sub    %rcx,%rax
   438a9:	48 8d 34 c2          	lea    (%rdx,%rax,8),%rsi
   438ad:	48 03 72 20          	add    0x20(%rdx),%rsi
    return program_image_segment(elf_header_program(elf_, true), elf_);
   438b1:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
   438b5:	e8 56 ff ff ff       	callq  43810 <program_image_segment::program_image_segment(elf_program*, elf_header*)>
}
   438ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   438be:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   438c2:	c9                   	leaveq 
   438c3:	c3                   	retq   
        return nullptr;
   438c4:	48 89 d6             	mov    %rdx,%rsi
   438c7:	eb e8                	jmp    438b1 <program_image::end() const+0x2b>
   438c9:	90                   	nop

00000000000438ca <program_image_segment::va() const>:
uintptr_t program_image_segment::va() const {
   438ca:	f3 0f 1e fa          	endbr64 
    return ph_->p_va;
   438ce:	48 8b 07             	mov    (%rdi),%rax
   438d1:	48 8b 40 10          	mov    0x10(%rax),%rax
}
   438d5:	c3                   	retq   

00000000000438d6 <program_image_segment::size() const>:
size_t program_image_segment::size() const {
   438d6:	f3 0f 1e fa          	endbr64 
    return ph_->p_memsz;
   438da:	48 8b 07             	mov    (%rdi),%rax
   438dd:	48 8b 40 28          	mov    0x28(%rax),%rax
}
   438e1:	c3                   	retq   

00000000000438e2 <program_image_segment::data() const>:
const char* program_image_segment::data() const {
   438e2:	f3 0f 1e fa          	endbr64 
    return (const char*) elf_ + ph_->p_offset;
   438e6:	48 8b 07             	mov    (%rdi),%rax
   438e9:	48 8b 40 08          	mov    0x8(%rax),%rax
   438ed:	48 03 47 08          	add    0x8(%rdi),%rax
}
   438f1:	c3                   	retq   

00000000000438f2 <program_image_segment::data_size() const>:
size_t program_image_segment::data_size() const {
   438f2:	f3 0f 1e fa          	endbr64 
    return ph_->p_filesz;
   438f6:	48 8b 07             	mov    (%rdi),%rax
   438f9:	48 8b 40 20          	mov    0x20(%rax),%rax
}
   438fd:	c3                   	retq   

00000000000438fe <program_image_segment::writable() const>:
bool program_image_segment::writable() const {
   438fe:	f3 0f 1e fa          	endbr64 
    return ph_->p_flags & ELF_PFLAG_WRITE;
   43902:	48 8b 07             	mov    (%rdi),%rax
   43905:	8b 40 04             	mov    0x4(%rax),%eax
   43908:	d1 e8                	shr    %eax
   4390a:	83 e0 01             	and    $0x1,%eax
}
   4390d:	c3                   	retq   

000000000004390e <program_image_segment::operator!=(program_image_segment const&) const>:
bool program_image_segment::operator!=(const program_image_segment& x) const {
   4390e:	f3 0f 1e fa          	endbr64 
    return ph_ != x.ph_;
   43912:	48 8b 06             	mov    (%rsi),%rax
   43915:	48 39 07             	cmp    %rax,(%rdi)
   43918:	0f 95 c0             	setne  %al
}
   4391b:	c3                   	retq   

000000000004391c <program_image_segment::operator++()>:
void program_image_segment::operator++() {
   4391c:	f3 0f 1e fa          	endbr64 
    assert(ph_ != elf_header_program(elf_, true));
   43920:	48 8b 07             	mov    (%rdi),%rax
   43923:	48 8b 57 08          	mov    0x8(%rdi),%rdx
    if (elf) {
   43927:	48 85 d2             	test   %rdx,%rdx
   4392a:	74 54                	je     43980 <program_image_segment::operator++()+0x64>
        return ph + (end ? elf->e_phnum : 0);
   4392c:	0f b7 72 38          	movzwl 0x38(%rdx),%esi
   43930:	48 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%rcx
   43937:	00 
   43938:	48 29 f1             	sub    %rsi,%rcx
   4393b:	48 8d 0c ca          	lea    (%rdx,%rcx,8),%rcx
   4393f:	48 03 4a 20          	add    0x20(%rdx),%rcx
    assert(ph_ != elf_header_program(elf_, true));
   43943:	48 39 c8             	cmp    %rcx,%rax
   43946:	74 46                	je     4398e <program_image_segment::operator++()+0x72>
    ++ph_;
   43948:	48 83 c0 38          	add    $0x38,%rax
   4394c:	48 89 07             	mov    %rax,(%rdi)
        return ph + (end ? elf->e_phnum : 0);
   4394f:	0f b7 72 38          	movzwl 0x38(%rdx),%esi
   43953:	48 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%rcx
   4395a:	00 
   4395b:	48 29 f1             	sub    %rsi,%rcx
   4395e:	48 8d 0c ca          	lea    (%rdx,%rcx,8),%rcx
   43962:	48 03 4a 20          	add    0x20(%rdx),%rcx
   43966:	48 89 ca             	mov    %rcx,%rdx
    while (ph_ != eph && ph_->p_type != ELF_PTYPE_LOAD) {
   43969:	48 39 c8             	cmp    %rcx,%rax
   4396c:	74 3d                	je     439ab <program_image_segment::operator++()+0x8f>
   4396e:	83 38 01             	cmpl   $0x1,(%rax)
   43971:	74 38                	je     439ab <program_image_segment::operator++()+0x8f>
        ++ph_;
   43973:	48 83 c0 38          	add    $0x38,%rax
   43977:	48 89 07             	mov    %rax,(%rdi)
    while (ph_ != eph && ph_->p_type != ELF_PTYPE_LOAD) {
   4397a:	48 39 d0             	cmp    %rdx,%rax
   4397d:	75 ef                	jne    4396e <program_image_segment::operator++()+0x52>
   4397f:	c3                   	retq   
    assert(ph_ != elf_header_program(elf_, true));
   43980:	48 85 c0             	test   %rax,%rax
   43983:	74 09                	je     4398e <program_image_segment::operator++()+0x72>
    ++ph_;
   43985:	48 83 c0 38          	add    $0x38,%rax
   43989:	48 89 07             	mov    %rax,(%rdi)
    if (elf) {
   4398c:	eb e0                	jmp    4396e <program_image_segment::operator++()+0x52>
void program_image_segment::operator++() {
   4398e:	55                   	push   %rbp
   4398f:	48 89 e5             	mov    %rsp,%rbp
    assert(ph_ != elf_header_program(elf_, true));
   43992:	b9 00 00 00 00       	mov    $0x0,%ecx
   43997:	ba b8 57 04 00       	mov    $0x457b8,%edx
   4399c:	be e2 03 00 00       	mov    $0x3e2,%esi
   439a1:	bf a3 54 04 00       	mov    $0x454a3,%edi
   439a6:	e8 10 f1 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
   439ab:	c3                   	retq   

00000000000439ac <__cxa_guard_acquire>:
int __cxa_guard_acquire(long long* arg) {
   439ac:	f3 0f 1e fa          	endbr64 
	return __atomic_load_n(&_M_i, int(__m));
   439b0:	0f b6 17             	movzbl (%rdi),%edx
        return 0;
   439b3:	b8 00 00 00 00       	mov    $0x0,%eax
    if (guard->load(std::memory_order_relaxed) == 2) {
   439b8:	80 fa 02             	cmp    $0x2,%dl
   439bb:	74 22                	je     439df <__cxa_guard_acquire+0x33>

      _GLIBCXX_ALWAYS_INLINE __int_type
      exchange(__int_type __i,
	       memory_order __m = memory_order_seq_cst) noexcept
      {
	return __atomic_exchange_n(&_M_i, __i, int(__m));
   439bd:	ba 01 00 00 00       	mov    $0x1,%edx
   439c2:	89 d0                	mov    %edx,%eax
   439c4:	86 07                	xchg   %al,(%rdi)
        if (old_value == 2) {
   439c6:	3c 02                	cmp    $0x2,%al
   439c8:	74 08                	je     439d2 <__cxa_guard_acquire+0x26>
        } else if (old_value == 1) {
   439ca:	3c 01                	cmp    $0x1,%al
   439cc:	75 0c                	jne    439da <__cxa_guard_acquire+0x2e>
    asm volatile("rdtsc" : "=a" (low), "=d" (high));
    return low | (high << 32);
}

__always_inline void pause() {
    asm volatile("pause" : : : "memory");
   439ce:	f3 90                	pause  
}
   439d0:	eb f0                	jmp    439c2 <__cxa_guard_acquire+0x16>
   439d2:	86 07                	xchg   %al,(%rdi)
            return 0;
   439d4:	b8 00 00 00 00       	mov    $0x0,%eax
   439d9:	c3                   	retq   
            return 1;
   439da:	b8 01 00 00 00       	mov    $0x1,%eax
}
   439df:	c3                   	retq   

00000000000439e0 <__cxa_guard_release>:
void __cxa_guard_release(long long* arg) {
   439e0:	f3 0f 1e fa          	endbr64 
	__atomic_store_n(&_M_i, __i, int(__m));
   439e4:	c6 07 02             	movb   $0x2,(%rdi)
   439e7:	0f ae f0             	mfence 
}
   439ea:	c3                   	retq   
   439eb:	90                   	nop

00000000000439ec <memusage::refresh()>:

// memusage::refresh()
//    Calculate the current physical usage map, using the current process
//    table.

void memusage::refresh() {
   439ec:	f3 0f 1e fa          	endbr64 
   439f0:	55                   	push   %rbp
   439f1:	48 89 e5             	mov    %rsp,%rbp
   439f4:	41 57                	push   %r15
   439f6:	41 56                	push   %r14
   439f8:	41 55                	push   %r13
   439fa:	41 54                	push   %r12
   439fc:	53                   	push   %rbx
   439fd:	48 83 ec 38          	sub    $0x38,%rsp
   43a01:	49 89 fe             	mov    %rdi,%r14
    if (!v_) {
   43a04:	48 83 3f 00          	cmpq   $0x0,(%rdi)
   43a08:	74 3f                	je     43a49 <memusage::refresh()+0x5d>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
        assert(v_ != nullptr);
    }

    memset(v_, 0, (maxpa / PAGESIZE) * sizeof(*v_));
   43a0a:	ba 00 10 00 00       	mov    $0x1000,%edx
   43a0f:	be 00 00 00 00       	mov    $0x0,%esi
   43a14:	49 8b 3e             	mov    (%r14),%rdi
   43a17:	e8 ac 0a 00 00       	callq  444c8 <memset>

    // mark kernel page tables
    for (ptiter it(kernel_pagetable); !it.done(); it.next()) {
   43a1c:	be 00 60 05 00       	mov    $0x56000,%esi
   43a21:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43a25:	e8 e8 e8 ff ff       	callq  42312 <ptiter::ptiter(x86_64_pagetable*)>
   43a2a:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   43a31:	ff 00 00 
   43a34:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
   43a38:	77 70                	ja     43aaa <memusage::refresh()+0xbe>
    return *pep_ & PTE_PAMASK;
   43a3a:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   43a41:	ff 0f 00 
   43a44:	48 89 c3             	mov    %rax,%rbx
   43a47:	eb 3f                	jmp    43a88 <memusage::refresh()+0x9c>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
   43a49:	bf 00 10 00 00       	mov    $0x1000,%edi
   43a4e:	e8 13 d1 ff ff       	callq  40b66 <kalloc(unsigned long)>
   43a53:	49 89 06             	mov    %rax,(%r14)
        assert(v_ != nullptr);
   43a56:	48 85 c0             	test   %rax,%rax
   43a59:	75 af                	jne    43a0a <memusage::refresh()+0x1e>
   43a5b:	b9 00 00 00 00       	mov    $0x0,%ecx
   43a60:	ba a0 59 04 00       	mov    $0x459a0,%edx
   43a65:	be 48 00 00 00       	mov    $0x48,%esi
   43a6a:	bf ae 59 04 00       	mov    $0x459ae,%edi
   43a6f:	e8 47 f0 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    down(true);
   43a74:	be 01 00 00 00       	mov    $0x1,%esi
   43a79:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43a7d:	e8 8e e7 ff ff       	callq  42210 <ptiter::down(bool)>
    for (ptiter it(kernel_pagetable); !it.done(); it.next()) {
   43a82:	48 39 5d c8          	cmp    %rbx,-0x38(%rbp)
   43a86:	77 22                	ja     43aaa <memusage::refresh()+0xbe>
    return *pep_ & PTE_PAMASK;
   43a88:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43a8c:	4c 89 e7             	mov    %r12,%rdi
   43a8f:	48 23 38             	and    (%rax),%rdi
   43a92:	48 89 f8             	mov    %rdi,%rax
        if (pa < maxpa) {
   43a95:	48 81 ff ff ff 3f 00 	cmp    $0x3fffff,%rdi
   43a9c:	77 d6                	ja     43a74 <memusage::refresh()+0x88>
            v_[pa / PAGESIZE] |= flags;
   43a9e:	48 c1 e8 0a          	shr    $0xa,%rax
   43aa2:	49 03 06             	add    (%r14),%rax
   43aa5:	83 08 01             	orl    $0x1,(%rax)
   43aa8:	eb ca                	jmp    43a74 <memusage::refresh()+0x88>
// address translation functions for identity-mapped kernels
inline uint64_t kptr2pa(uint64_t kptr) {
    return kptr;
}
template <typename T> inline uint64_t kptr2pa(T* kptr) {
    return reinterpret_cast<uint64_t>(kptr);
   43aaa:	b8 00 60 05 00       	mov    $0x56000,%eax
        if (pa < maxpa) {
   43aaf:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43ab5:	77 0b                	ja     43ac2 <memusage::refresh()+0xd6>
            v_[pa / PAGESIZE] |= flags;
   43ab7:	48 c1 e8 0c          	shr    $0xc,%rax
   43abb:	49 8b 16             	mov    (%r14),%rdx
   43abe:	83 0c 82 01          	orl    $0x1,(%rdx,%rax,4)
    }
    mark(kptr2pa(kernel_pagetable), f_kernel);

    // mark pages accessible from each process's page table
    bool any = false;
    for (int pid = 1; pid < NPROC; ++pid) {
   43ac2:	bb f0 42 05 00       	mov    $0x542f0,%ebx
void memusage::refresh() {
   43ac7:	41 bc 01 00 00 00    	mov    $0x1,%r12d
   43acd:	b9 00 00 00 00       	mov    $0x0,%ecx
        if (p->state != P_FREE
            && p->pagetable
            && p->pagetable != kernel_pagetable) {
            any = true;

            for (ptiter it(p); it.va() < VA_LOWEND; it.next()) {
   43ad2:	49 bd ff ff ff ff ff 	movabs $0x7fffffffffff,%r13
   43ad9:	7f 00 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43adc:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   43ae3:	ff 0f 00 
   43ae6:	e9 c2 01 00 00       	jmpq   43cad <memusage::refresh()+0x2c1>
    down(true);
   43aeb:	be 01 00 00 00       	mov    $0x1,%esi
   43af0:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43af4:	e8 17 e7 ff ff       	callq  42210 <ptiter::down(bool)>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   43af9:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43afc:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43b00:	b8 01 00 00 00       	mov    $0x1,%eax
   43b05:	48 d3 e0             	shl    %cl,%rax
    return va_ & ~pageoffmask(level_);
   43b08:	48 f7 d8             	neg    %rax
   43b0b:	48 23 45 c8          	and    -0x38(%rbp),%rax
   43b0f:	4c 39 e8             	cmp    %r13,%rax
   43b12:	77 29                	ja     43b3d <memusage::refresh()+0x151>
    return *pep_ & PTE_PAMASK;
   43b14:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43b18:	4c 89 ff             	mov    %r15,%rdi
   43b1b:	48 23 38             	and    (%rax),%rdi
   43b1e:	48 89 f8             	mov    %rdi,%rax
        if (pa < maxpa) {
   43b21:	48 81 ff ff ff 3f 00 	cmp    $0x3fffff,%rdi
   43b28:	77 c1                	ja     43aeb <memusage::refresh()+0xff>
            v_[pa / PAGESIZE] |= flags;
   43b2a:	48 c1 e8 0a          	shr    $0xa,%rax
   43b2e:	49 03 06             	add    (%r14),%rax
   43b31:	8b 55 a0             	mov    -0x60(%rbp),%edx
   43b34:	0b 10                	or     (%rax),%edx
   43b36:	83 ca 01             	or     $0x1,%edx
   43b39:	89 10                	mov    %edx,(%rax)
   43b3b:	eb ae                	jmp    43aeb <memusage::refresh()+0xff>
        } else if (pid >= 1) {
   43b3d:	41 8d 74 24 ff       	lea    -0x1(%r12),%esi
   43b42:	89 75 a0             	mov    %esi,-0x60(%rbp)
            return 2U << pid;
   43b45:	b8 02 00 00 00       	mov    $0x2,%eax
   43b4a:	44 89 e1             	mov    %r12d,%ecx
   43b4d:	d3 e0                	shl    %cl,%eax
   43b4f:	83 fe 1d             	cmp    $0x1d,%esi
   43b52:	ba 00 00 00 00       	mov    $0x0,%edx
   43b57:	0f 43 c2             	cmovae %edx,%eax
   43b5a:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
   43b5e:	48 8b 11             	mov    (%rcx),%rdx
        if (pa < maxpa) {
   43b61:	48 81 fa ff ff 3f 00 	cmp    $0x3fffff,%rdx
   43b68:	77 12                	ja     43b7c <memusage::refresh()+0x190>
            v_[pa / PAGESIZE] |= flags;
   43b6a:	48 c1 ea 0c          	shr    $0xc,%rdx
   43b6e:	49 8b 0e             	mov    (%r14),%rcx
   43b71:	48 8d 14 91          	lea    (%rcx,%rdx,4),%rdx
   43b75:	0b 02                	or     (%rdx),%eax
   43b77:	83 c8 01             	or     $0x1,%eax
   43b7a:	89 02                	mov    %eax,(%rdx)
    : vmiter(p->pagetable, va) {
   43b7c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   43b80:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43b83:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   43b87:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   43b8b:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43b92:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   43b99:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43ba0:	00 
    real_find(va);
   43ba1:	be 00 00 00 00       	mov    $0x0,%esi
   43ba6:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43baa:	e8 93 e2 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   43baf:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
                mark(it.pa(), f_kernel | f_process(pid));
            }
            mark(kptr2pa(p->pagetable), f_kernel | f_process(pid));

            for (vmiter it(p); it.va() < VA_LOWEND; ) {
   43bb3:	4c 39 ee             	cmp    %r13,%rsi
   43bb6:	0f 87 dc 00 00 00    	ja     43c98 <memusage::refresh()+0x2ac>
            return 2U << pid;
   43bbc:	b8 02 00 00 00       	mov    $0x2,%eax
   43bc1:	44 89 e1             	mov    %r12d,%ecx
   43bc4:	d3 e0                	shl    %cl,%eax
   43bc6:	83 7d a0 1c          	cmpl   $0x1c,-0x60(%rbp)
   43bca:	ba 00 00 00 00       	mov    $0x0,%edx
   43bcf:	0f 46 d0             	cmovbe %eax,%edx
   43bd2:	89 55 a8             	mov    %edx,-0x58(%rbp)
   43bd5:	eb 16                	jmp    43bed <memusage::refresh()+0x201>
                if (it.user()) {
                    mark(it.pa(), f_user | f_process(pid));
                    it.next();
   43bd7:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43bdb:	e8 26 e4 ff ff       	callq  42006 <vmiter::next()>
   43be0:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
            for (vmiter it(p); it.va() < VA_LOWEND; ) {
   43be4:	4c 39 ee             	cmp    %r13,%rsi
   43be7:	0f 87 ab 00 00 00    	ja     43c98 <memusage::refresh()+0x2ac>
    uint64_t ph = *pep_ & perm_;
   43bed:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43bf1:	48 8b 08             	mov    (%rax),%rcx
   43bf4:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   43bf8:	48 21 c8             	and    %rcx,%rax
   43bfb:	48 89 c2             	mov    %rax,%rdx
    return ph & -(ph & PTE_P);
   43bfe:	83 e0 01             	and    $0x1,%eax
   43c01:	48 f7 d8             	neg    %rax
   43c04:	48 21 d0             	and    %rdx,%rax
    return (perm() & desired_perm) == desired_perm;
   43c07:	83 e0 05             	and    $0x5,%eax
                if (it.user()) {
   43c0a:	48 83 f8 05          	cmp    $0x5,%rax
   43c0e:	75 60                	jne    43c70 <memusage::refresh()+0x284>
    if (*pep_ & PTE_P) {
   43c10:	f6 c1 01             	test   $0x1,%cl
   43c13:	74 c2                	je     43bd7 <memusage::refresh()+0x1eb>
        if (level_ > 0) {
   43c15:	8b 55 c0             	mov    -0x40(%rbp),%edx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43c18:	48 89 c8             	mov    %rcx,%rax
   43c1b:	4c 21 f8             	and    %r15,%rax
   43c1e:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   43c25:	ff 0f 00 
   43c28:	48 21 f9             	and    %rdi,%rcx
   43c2b:	85 d2                	test   %edx,%edx
   43c2d:	48 0f 4f c1          	cmovg  %rcx,%rax
   43c31:	48 89 c7             	mov    %rax,%rdi
   43c34:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43c38:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   43c3f:	48 89 d0             	mov    %rdx,%rax
   43c42:	48 d3 e0             	shl    %cl,%rax
   43c45:	48 f7 d0             	not    %rax
   43c48:	48 21 f0             	and    %rsi,%rax
   43c4b:	48 01 f8             	add    %rdi,%rax
        if (pa < maxpa) {
   43c4e:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43c54:	77 81                	ja     43bd7 <memusage::refresh()+0x1eb>
            v_[pa / PAGESIZE] |= flags;
   43c56:	48 c1 e8 0c          	shr    $0xc,%rax
   43c5a:	49 8b 16             	mov    (%r14),%rdx
   43c5d:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
   43c61:	8b 45 a8             	mov    -0x58(%rbp),%eax
   43c64:	0b 02                	or     (%rdx),%eax
   43c66:	83 c8 02             	or     $0x2,%eax
   43c69:	89 02                	mov    %eax,(%rdx)
   43c6b:	e9 67 ff ff ff       	jmpq   43bd7 <memusage::refresh()+0x1eb>
   43c70:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43c73:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43c77:	b8 01 00 00 00       	mov    $0x1,%eax
   43c7c:	48 d3 e0             	shl    %cl,%rax
   43c7f:	48 83 e8 01          	sub    $0x1,%rax
    return (va_ | pageoffmask(level_)) + 1;
   43c83:	48 09 f0             	or     %rsi,%rax
   43c86:	48 8d 70 01          	lea    0x1(%rax),%rsi
    real_find(last_va());
   43c8a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43c8e:	e8 af e1 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
}
   43c93:	e9 48 ff ff ff       	jmpq   43be0 <memusage::refresh()+0x1f4>
            any = true;
   43c98:	0f b6 4d a7          	movzbl -0x59(%rbp),%ecx
    for (int pid = 1; pid < NPROC; ++pid) {
   43c9c:	41 83 c4 01          	add    $0x1,%r12d
   43ca0:	48 81 c3 d0 00 00 00 	add    $0xd0,%rbx
   43ca7:	41 83 fc 10          	cmp    $0x10,%r12d
   43cab:	74 6d                	je     43d1a <memusage::refresh()+0x32e>
        if (p->state != P_FREE
   43cad:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43cb1:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   43cb5:	74 e5                	je     43c9c <memusage::refresh()+0x2b0>
            && p->pagetable
   43cb7:	48 8b 33             	mov    (%rbx),%rsi
            && p->pagetable != kernel_pagetable) {
   43cba:	48 81 fe 00 60 05 00 	cmp    $0x56000,%rsi
   43cc1:	0f 95 c2             	setne  %dl
            && p->pagetable
   43cc4:	48 85 f6             	test   %rsi,%rsi
   43cc7:	0f 95 c0             	setne  %al
            && p->pagetable != kernel_pagetable) {
   43cca:	20 c2                	and    %al,%dl
   43ccc:	88 55 a7             	mov    %dl,-0x59(%rbp)
   43ccf:	74 cb                	je     43c9c <memusage::refresh()+0x2b0>
    : ptiter(p->pagetable) {
   43cd1:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43cd5:	e8 38 e6 ff ff       	callq  42312 <ptiter::ptiter(x86_64_pagetable*)>
   43cda:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43cdd:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43ce1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    return va_ & ~pageoffmask(level_);
   43ce8:	48 d3 e0             	shl    %cl,%rax
   43ceb:	48 23 45 c8          	and    -0x38(%rbp),%rax
            for (ptiter it(p); it.va() < VA_LOWEND; it.next()) {
   43cef:	4c 39 e8             	cmp    %r13,%rax
   43cf2:	0f 87 45 fe ff ff    	ja     43b3d <memusage::refresh()+0x151>
            return 2U << pid;
   43cf8:	b8 02 00 00 00       	mov    $0x2,%eax
   43cfd:	44 89 e1             	mov    %r12d,%ecx
   43d00:	d3 e0                	shl    %cl,%eax
        } else if (pid >= 1) {
   43d02:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
   43d07:	83 fa 1c             	cmp    $0x1c,%edx
   43d0a:	ba 00 00 00 00       	mov    $0x0,%edx
   43d0f:	0f 46 d0             	cmovbe %eax,%edx
   43d12:	89 55 a0             	mov    %edx,-0x60(%rbp)
   43d15:	e9 fa fd ff ff       	jmpq   43b14 <memusage::refresh()+0x128>
            }
        }
    }

    // if no different process page tables, use physical address instead
    if (!any) {
   43d1a:	84 c9                	test   %cl,%cl
   43d1c:	74 25                	je     43d43 <memusage::refresh()+0x357>
        }
    }

    // mark my own memory
    if (any) {
        mark(kptr2pa(v_), f_kernel);
   43d1e:	49 8b 06             	mov    (%r14),%rax
        if (pa < maxpa) {
   43d21:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43d27:	77 0b                	ja     43d34 <memusage::refresh()+0x348>
            v_[pa / PAGESIZE] |= flags;
   43d29:	48 89 c2             	mov    %rax,%rdx
   43d2c:	48 c1 ea 0c          	shr    $0xc,%rdx
   43d30:	83 0c 90 01          	orl    $0x1,(%rax,%rdx,4)
    }
}
   43d34:	48 83 c4 38          	add    $0x38,%rsp
   43d38:	5b                   	pop    %rbx
   43d39:	41 5c                	pop    %r12
   43d3b:	41 5d                	pop    %r13
   43d3d:	41 5e                	pop    %r14
   43d3f:	41 5f                	pop    %r15
   43d41:	5d                   	pop    %rbp
   43d42:	c3                   	retq   
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43d43:	48 c7 45 b0 00 60 05 	movq   $0x56000,-0x50(%rbp)
   43d4a:	00 
   43d4b:	48 c7 45 b8 00 60 05 	movq   $0x56000,-0x48(%rbp)
   43d52:	00 
   43d53:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43d5a:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   43d61:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43d68:	00 
    real_find(va);
   43d69:	be 00 00 00 00       	mov    $0x0,%esi
   43d6e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43d72:	e8 cb e0 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   43d77:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
   43d7b:	41 bc 01 00 00 00    	mov    $0x1,%r12d
            pa &= ~0x1000UL;
   43d81:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   43d88:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43d8b:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   43d92:	ff 0f 00 
        for (vmiter it(kernel_pagetable); it.va() < VA_LOWEND; ) {
   43d95:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffff,%rbx
   43d9c:	7f 00 00 
   43d9f:	48 39 df             	cmp    %rbx,%rdi
   43da2:	76 30                	jbe    43dd4 <memusage::refresh()+0x3e8>
   43da4:	eb 8e                	jmp    43d34 <memusage::refresh()+0x348>
   43da6:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43da9:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43dad:	4c 89 e0             	mov    %r12,%rax
   43db0:	48 d3 e0             	shl    %cl,%rax
   43db3:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
    return (va_ | pageoffmask(level_)) + 1;
   43db7:	48 09 fe             	or     %rdi,%rsi
   43dba:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   43dbe:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43dc2:	e8 7b e0 ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   43dc7:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
   43dcb:	48 39 df             	cmp    %rbx,%rdi
   43dce:	0f 87 60 ff ff ff    	ja     43d34 <memusage::refresh()+0x348>
    uint64_t ph = *pep_ & perm_;
   43dd4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43dd8:	48 8b 08             	mov    (%rax),%rcx
   43ddb:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   43ddf:	48 21 c8             	and    %rcx,%rax
   43de2:	48 89 c2             	mov    %rax,%rdx
    return ph & -(ph & PTE_P);
   43de5:	83 e0 01             	and    $0x1,%eax
   43de8:	48 f7 d8             	neg    %rax
   43deb:	48 21 d0             	and    %rdx,%rax
    return (perm() & desired_perm) == desired_perm;
   43dee:	83 e0 05             	and    $0x5,%eax
                && physpages[it.pa() / PAGESIZE].used()) {
   43df1:	48 83 f8 05          	cmp    $0x5,%rax
   43df5:	75 af                	jne    43da6 <memusage::refresh()+0x3ba>
    if (*pep_ & PTE_P) {
   43df7:	f6 c1 01             	test   $0x1,%cl
   43dfa:	74 aa                	je     43da6 <memusage::refresh()+0x3ba>
        if (level_ > 0) {
   43dfc:	8b 75 c0             	mov    -0x40(%rbp),%esi
            pa &= ~0x1000UL;
   43dff:	48 89 c8             	mov    %rcx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43e02:	4c 21 f8             	and    %r15,%rax
   43e05:	4c 21 e9             	and    %r13,%rcx
   43e08:	85 f6                	test   %esi,%esi
   43e0a:	48 0f 4f c1          	cmovg  %rcx,%rax
   43e0e:	48 89 c2             	mov    %rax,%rdx
   43e11:	8d 4c f6 0c          	lea    0xc(%rsi,%rsi,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43e15:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   43e1c:	48 d3 e0             	shl    %cl,%rax
   43e1f:	48 f7 d0             	not    %rax
   43e22:	48 21 f8             	and    %rdi,%rax
   43e25:	48 01 d0             	add    %rdx,%rax
                && it.pa() < MEMSIZE_PHYSICAL
   43e28:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   43e2e:	0f 87 72 ff ff ff    	ja     43da6 <memusage::refresh()+0x3ba>
                && physpages[it.pa() / PAGESIZE].used()) {
   43e34:	48 89 c6             	mov    %rax,%rsi
   43e37:	48 c1 ee 0c          	shr    $0xc,%rsi
   43e3b:	80 be 00 40 05 00 00 	cmpb   $0x0,0x54000(%rsi)
   43e42:	0f 84 5e ff ff ff    	je     43da6 <memusage::refresh()+0x3ba>
                unsigned owner = (it.pa() - PROC_START_ADDR) / 0x40000;
   43e48:	48 2d 00 00 10 00    	sub    $0x100000,%rax
   43e4e:	48 c1 e8 12          	shr    $0x12,%rax
            return 0;
   43e52:	ba 00 00 00 00       	mov    $0x0,%edx
        } else if (pid >= 1) {
   43e57:	83 f8 1c             	cmp    $0x1c,%eax
   43e5a:	76 1c                	jbe    43e78 <memusage::refresh()+0x48c>
            v_[pa / PAGESIZE] |= flags;
   43e5c:	49 8b 06             	mov    (%r14),%rax
   43e5f:	48 8d 04 b0          	lea    (%rax,%rsi,4),%rax
   43e63:	0b 10                	or     (%rax),%edx
   43e65:	83 ca 02             	or     $0x2,%edx
   43e68:	89 10                	mov    %edx,(%rax)
                it.next();
   43e6a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43e6e:	e8 93 e1 ff ff       	callq  42006 <vmiter::next()>
   43e73:	e9 4f ff ff ff       	jmpq   43dc7 <memusage::refresh()+0x3db>
                mark(it.pa(), f_user | f_process(owner + 1));
   43e78:	8d 48 01             	lea    0x1(%rax),%ecx
            return 2U << pid;
   43e7b:	ba 02 00 00 00       	mov    $0x2,%edx
   43e80:	d3 e2                	shl    %cl,%edx
   43e82:	eb d8                	jmp    43e5c <memusage::refresh()+0x470>

0000000000043e84 <memusage::page_error(unsigned long, char const*, int) const>:

void memusage::page_error(uintptr_t pa, const char* desc, int pid) const {
   43e84:	f3 0f 1e fa          	endbr64 
   43e88:	55                   	push   %rbp
   43e89:	48 89 e5             	mov    %rsp,%rbp
   43e8c:	41 56                	push   %r14
   43e8e:	41 55                	push   %r13
   43e90:	41 54                	push   %r12
   43e92:	53                   	push   %rbx
   43e93:	49 89 f5             	mov    %rsi,%r13
   43e96:	49 89 d6             	mov    %rdx,%r14
   43e99:	89 cb                	mov    %ecx,%ebx
    const char* fmt = pid >= 0
        ? "PAGE TABLE ERROR: %lx: %s (pid %d)\n"
   43e9b:	85 c9                	test   %ecx,%ecx
   43e9d:	41 bc 50 5a 04 00    	mov    $0x45a50,%r12d
   43ea3:	b8 bd 59 04 00       	mov    $0x459bd,%eax
   43ea8:	4c 0f 48 e0          	cmovs  %rax,%r12
        : "PAGE TABLE ERROR: %lx: %s\n";
    error_printf(CPOS(22, 0), COLOR_ERROR, fmt, pa, desc, pid);
   43eac:	41 89 c9             	mov    %ecx,%r9d
   43eaf:	49 89 d0             	mov    %rdx,%r8
   43eb2:	48 89 f1             	mov    %rsi,%rcx
   43eb5:	4c 89 e2             	mov    %r12,%rdx
   43eb8:	be 00 c0 00 00       	mov    $0xc000,%esi
   43ebd:	bf e0 06 00 00       	mov    $0x6e0,%edi
   43ec2:	b0 00                	mov    $0x0,%al
   43ec4:	e8 5e 11 00 00       	callq  45027 <error_printf(int, int, char const*, ...)>
    log_printf(fmt, pa, desc, pid);
   43ec9:	89 d9                	mov    %ebx,%ecx
   43ecb:	4c 89 f2             	mov    %r14,%rdx
   43ece:	4c 89 ee             	mov    %r13,%rsi
   43ed1:	4c 89 e7             	mov    %r12,%rdi
   43ed4:	b0 00                	mov    $0x0,%al
   43ed6:	e8 ae e8 ff ff       	callq  42789 <log_printf(char const*, ...)>
}
   43edb:	5b                   	pop    %rbx
   43edc:	41 5c                	pop    %r12
   43ede:	41 5d                	pop    %r13
   43ee0:	41 5e                	pop    %r14
   43ee2:	5d                   	pop    %rbp
   43ee3:	c3                   	retq   

0000000000043ee4 <memusage::symbol_at(unsigned long) const>:

uint16_t memusage::symbol_at(uintptr_t pa) const {
   43ee4:	f3 0f 1e fa          	endbr64 
   43ee8:	55                   	push   %rbp
   43ee9:	48 89 e5             	mov    %rsp,%rbp
   43eec:	41 55                	push   %r13
   43eee:	41 54                	push   %r12
   43ef0:	53                   	push   %rbx
   43ef1:	48 83 ec 08          	sub    $0x8,%rsp
   43ef5:	49 89 fd             	mov    %rdi,%r13
   43ef8:	48 89 f3             	mov    %rsi,%rbx
    bool is_reserved = reserved_physical_address(pa);
   43efb:	48 89 f7             	mov    %rsi,%rdi
   43efe:	e8 d3 e5 ff ff       	callq  424d6 <reserved_physical_address(unsigned long)>
   43f03:	41 89 c4             	mov    %eax,%r12d
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43f06:	84 c0                	test   %al,%al
   43f08:	74 3e                	je     43f48 <memusage::symbol_at(unsigned long) const+0x64>

    if (pa >= maxpa) {
        if (is_kernel) {
            return 'K' | 0x4000;
        } else if (is_reserved) {
            return '?' | 0x4000;
   43f0a:	b8 3f 40 00 00       	mov    $0x403f,%eax
    if (pa >= maxpa) {
   43f0f:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   43f16:	77 56                	ja     43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        } else {
            return '?' | 0xF000;
        }
    }

    auto v = v_[pa / PAGESIZE];
   43f18:	48 89 da             	mov    %rbx,%rdx
   43f1b:	48 c1 ea 0c          	shr    $0xc,%rdx
   43f1f:	49 8b 45 00          	mov    0x0(%r13),%rax
   43f23:	8b 34 90             	mov    (%rax,%rdx,4),%esi
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43f26:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43f2b:	48 39 d8             	cmp    %rbx,%rax
   43f2e:	77 49                	ja     43f79 <memusage::symbol_at(unsigned long) const+0x95>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43f30:	ba 00 00 00 00       	mov    $0x0,%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43f35:	48 8d 88 00 10 00 00 	lea    0x1000(%rax),%rcx
        return 'C' | 0x0700;
   43f3c:	b8 43 07 00 00       	mov    $0x743,%eax
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43f41:	48 39 d9             	cmp    %rbx,%rcx
   43f44:	76 38                	jbe    43f7e <memusage::symbol_at(unsigned long) const+0x9a>
   43f46:	eb 26                	jmp    43f6e <memusage::symbol_at(unsigned long) const+0x8a>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43f48:	48 89 df             	mov    %rbx,%rdi
   43f4b:	e8 a7 e5 ff ff       	callq  424f7 <allocatable_physical_address(unsigned long)>
   43f50:	83 f0 01             	xor    $0x1,%eax
   43f53:	89 c2                	mov    %eax,%edx
    if (pa >= maxpa) {
   43f55:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   43f5c:	0f 86 9c 01 00 00    	jbe    440fe <memusage::symbol_at(unsigned long) const+0x21a>
            return 'K' | 0x4000;
   43f62:	3c 01                	cmp    $0x1,%al
   43f64:	19 c0                	sbb    %eax,%eax
   43f66:	66 25 f4 af          	and    $0xaff4,%ax
   43f6a:	66 05 4b 40          	add    $0x404b,%ax
                ch |= names[pid];
            }
            return ch;
        }
    }
}
   43f6e:	48 83 c4 08          	add    $0x8,%rsp
   43f72:	5b                   	pop    %rbx
   43f73:	41 5c                	pop    %r12
   43f75:	41 5d                	pop    %r13
   43f77:	5d                   	pop    %rbp
   43f78:	c3                   	retq   
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43f79:	ba 00 00 00 00       	mov    $0x0,%edx
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43f7e:	83 fe 03             	cmp    $0x3,%esi
   43f81:	0f 97 c1             	seta   %cl
   43f84:	76 09                	jbe    43f8f <memusage::symbol_at(unsigned long) const+0xab>
   43f86:	45 84 e4             	test   %r12b,%r12b
   43f89:	0f 85 de 00 00 00    	jne    4406d <memusage::symbol_at(unsigned long) const+0x189>
        return 'R' | 0x0700;
   43f8f:	b8 52 07 00 00       	mov    $0x752,%eax
    } else if (is_reserved) {
   43f94:	45 84 e4             	test   %r12b,%r12b
   43f97:	75 d5                	jne    43f6e <memusage::symbol_at(unsigned long) const+0x8a>
    } else if (is_kernel && v > (f_kernel | f_user)) {
   43f99:	84 c9                	test   %cl,%cl
   43f9b:	74 08                	je     43fa5 <memusage::symbol_at(unsigned long) const+0xc1>
   43f9d:	84 d2                	test   %dl,%dl
   43f9f:	0f 85 f5 00 00 00    	jne    4409a <memusage::symbol_at(unsigned long) const+0x1b6>
        return 'K' | 0x0D00;
   43fa5:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
    } else if (is_kernel) {
   43faa:	84 d2                	test   %dl,%dl
   43fac:	75 c0                	jne    43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        return ' ' | 0x0700;
   43fae:	b8 20 07 00 00       	mov    $0x720,%eax
    } else if (pa >= MEMSIZE_PHYSICAL) {
   43fb3:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   43fba:	77 b2                	ja     43f6e <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   43fbc:	b8 2e 07 00 00       	mov    $0x72e,%eax
        if (v == 0) {
   43fc1:	85 f6                	test   %esi,%esi
   43fc3:	74 a9                	je     43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        } else if (v == f_kernel) {
   43fc5:	83 fe 01             	cmp    $0x1,%esi
   43fc8:	0f 84 26 01 00 00    	je     440f4 <memusage::symbol_at(unsigned long) const+0x210>
        } else if (v == f_user) {
   43fce:	83 fe 02             	cmp    $0x2,%esi
   43fd1:	74 9b                	je     43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        } else if ((v & f_kernel) && (v & f_user)) {
   43fd3:	89 f0                	mov    %esi,%eax
   43fd5:	83 e0 03             	and    $0x3,%eax
   43fd8:	83 f8 03             	cmp    $0x3,%eax
   43fdb:	0f 84 e6 00 00 00    	je     440c7 <memusage::symbol_at(unsigned long) const+0x1e3>
        return lsb(v >> 2);
   43fe1:	89 f1                	mov    %esi,%ecx
   43fe3:	c1 e9 02             	shr    $0x2,%ecx
    return __builtin_ffs(x);
   43fe6:	0f bc c9             	bsf    %ecx,%ecx
   43fe9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43fee:	0f 44 c8             	cmove  %eax,%ecx
   43ff1:	83 c1 01             	add    $0x1,%ecx
            uint16_t ch = colors[pid % 5] << 8;
   43ff4:	48 63 c1             	movslq %ecx,%rax
   43ff7:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   43ffe:	48 c1 f8 21          	sar    $0x21,%rax
   44002:	89 ca                	mov    %ecx,%edx
   44004:	c1 fa 1f             	sar    $0x1f,%edx
   44007:	29 d0                	sub    %edx,%eax
   44009:	8d 04 80             	lea    (%rax,%rax,4),%eax
   4400c:	89 cb                	mov    %ecx,%ebx
   4400e:	29 c3                	sub    %eax,%ebx
   44010:	89 d8                	mov    %ebx,%eax
   44012:	48 98                	cltq   
   44014:	0f b6 b8 21 5b 04 00 	movzbl 0x45b21(%rax),%edi
   4401b:	c1 e7 08             	shl    $0x8,%edi
            if (v & f_kernel) {
   4401e:	40 f6 c6 01          	test   $0x1,%sil
   44022:	74 12                	je     44036 <memusage::symbol_at(unsigned long) const+0x152>
                ch = 0x4000 | (ch == 0x0C00 ? 0x0F00 : ch);
   44024:	89 f8                	mov    %edi,%eax
   44026:	80 cc 40             	or     $0x40,%ah
   44029:	66 81 ff 00 0c       	cmp    $0xc00,%di
   4402e:	bf 00 4f 00 00       	mov    $0x4f00,%edi
   44033:	0f 45 f8             	cmovne %eax,%edi
        } else if (pid >= 1) {
   44036:	8d 51 ff             	lea    -0x1(%rcx),%edx
            return 2U << pid;
   44039:	b8 02 00 00 00       	mov    $0x2,%eax
   4403e:	d3 e0                	shl    %cl,%eax
   44040:	83 fa 1d             	cmp    $0x1d,%edx
   44043:	ba 00 00 00 00       	mov    $0x0,%edx
   44048:	0f 42 d0             	cmovb  %eax,%edx
            if (v > (f_process(pid) | f_kernel | f_user)) {
   4404b:	83 ca 03             	or     $0x3,%edx
                ch = 0x0F00 | 'S';
   4404e:	b8 53 0f 00 00       	mov    $0xf53,%eax
            if (v > (f_process(pid) | f_kernel | f_user)) {
   44053:	39 f2                	cmp    %esi,%edx
   44055:	0f 82 13 ff ff ff    	jb     43f6e <memusage::symbol_at(unsigned long) const+0x8a>
                ch |= names[pid];
   4405b:	48 63 c9             	movslq %ecx,%rcx
   4405e:	66 0f be 81 00 5b 04 	movsbw 0x45b00(%rcx),%ax
   44065:	00 
   44066:	09 f8                	or     %edi,%eax
   44068:	e9 01 ff ff ff       	jmpq   43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   4406d:	89 f1                	mov    %esi,%ecx
   4406f:	c1 e9 02             	shr    $0x2,%ecx
   44072:	0f bc c9             	bsf    %ecx,%ecx
   44075:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   4407a:	0f 44 c8             	cmove  %eax,%ecx
   4407d:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "reserved page mapped for user", marked_pid(v));
   44080:	ba d8 59 04 00       	mov    $0x459d8,%edx
   44085:	48 89 de             	mov    %rbx,%rsi
   44088:	4c 89 ef             	mov    %r13,%rdi
   4408b:	e8 f4 fd ff ff       	callq  43e84 <memusage::page_error(unsigned long, char const*, int) const>
        return 'R' | 0x0C00;
   44090:	b8 52 0c 00 00       	mov    $0xc52,%eax
   44095:	e9 d4 fe ff ff       	jmpq   43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   4409a:	89 f1                	mov    %esi,%ecx
   4409c:	c1 e9 02             	shr    $0x2,%ecx
   4409f:	0f bc c9             	bsf    %ecx,%ecx
   440a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   440a7:	0f 44 c8             	cmove  %eax,%ecx
   440aa:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "kernel data page mapped for user", marked_pid(v));
   440ad:	ba 78 5a 04 00       	mov    $0x45a78,%edx
   440b2:	48 89 de             	mov    %rbx,%rsi
   440b5:	4c 89 ef             	mov    %r13,%rdi
   440b8:	e8 c7 fd ff ff       	callq  43e84 <memusage::page_error(unsigned long, char const*, int) const>
        return 'K' | 0xCD00;
   440bd:	b8 4b cd ff ff       	mov    $0xffffcd4b,%eax
   440c2:	e9 a7 fe ff ff       	jmpq   43f6e <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   440c7:	89 f1                	mov    %esi,%ecx
   440c9:	c1 e9 02             	shr    $0x2,%ecx
   440cc:	0f bc c9             	bsf    %ecx,%ecx
   440cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   440d4:	0f 44 c8             	cmove  %eax,%ecx
   440d7:	83 c1 01             	add    $0x1,%ecx
            page_error(pa, "kernel allocated page mapped for user",
   440da:	ba a0 5a 04 00       	mov    $0x45aa0,%edx
   440df:	48 89 de             	mov    %rbx,%rsi
   440e2:	4c 89 ef             	mov    %r13,%rdi
   440e5:	e8 9a fd ff ff       	callq  43e84 <memusage::page_error(unsigned long, char const*, int) const>
            return '*' | 0xF400;
   440ea:	b8 2a f4 ff ff       	mov    $0xfffff42a,%eax
   440ef:	e9 7a fe ff ff       	jmpq   43f6e <memusage::symbol_at(unsigned long) const+0x8a>
            return 'K' | 0x0D00;
   440f4:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
   440f9:	e9 70 fe ff ff       	jmpq   43f6e <memusage::symbol_at(unsigned long) const+0x8a>
    auto v = v_[pa / PAGESIZE];
   440fe:	48 89 d9             	mov    %rbx,%rcx
   44101:	48 c1 e9 0c          	shr    $0xc,%rcx
   44105:	49 8b 45 00          	mov    0x0(%r13),%rax
   44109:	8b 34 88             	mov    (%rax,%rcx,4),%esi
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   4410c:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   44111:	48 39 c3             	cmp    %rax,%rbx
   44114:	0f 83 1b fe ff ff    	jae    43f35 <memusage::symbol_at(unsigned long) const+0x51>
    } else if (is_reserved && v > (f_kernel | f_user)) {
   4411a:	83 fe 03             	cmp    $0x3,%esi
   4411d:	0f 97 c1             	seta   %cl
   44120:	e9 74 fe ff ff       	jmpq   43f99 <memusage::symbol_at(unsigned long) const+0xb5>

0000000000044125 <console_memviewer(proc*)>:
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
    }
}


void console_memviewer(proc* vmp) {
   44125:	f3 0f 1e fa          	endbr64 
   44129:	55                   	push   %rbp
   4412a:	48 89 e5             	mov    %rsp,%rbp
   4412d:	41 57                	push   %r15
   4412f:	41 56                	push   %r14
   44131:	41 55                	push   %r13
   44133:	41 54                	push   %r12
   44135:	53                   	push   %rbx
   44136:	48 83 ec 28          	sub    $0x28,%rsp
    // Process 0 must never be used.
    assert(ptable[0].state == P_FREE);
   4413a:	83 3d eb 00 01 00 00 	cmpl   $0x0,0x100eb(%rip)        # 5422c <ptable+0xc>
   44141:	75 3c                	jne    4417f <console_memviewer(proc*)+0x5a>
   44143:	49 89 fe             	mov    %rdi,%r14

    // track physical memory
    static memusage mu;
   44146:	0f b6 05 8b 6f 01 00 	movzbl 0x16f8b(%rip),%eax        # 5b0d8 <guard variable for console_memviewer(proc*)::mu>
   4414d:	84 c0                	test   %al,%al
   4414f:	74 47                	je     44198 <console_memviewer(proc*)+0x73>
    mu.refresh();
   44151:	bf e0 b0 05 00       	mov    $0x5b0e0,%edi
   44156:	e8 91 f8 ff ff       	callq  439ec <memusage::refresh()>

    // print physical memory
    console_printf(CPOS(0, 32), 0x0F00, "PHYSICAL MEMORY\n");
   4415b:	ba 1b 5a 04 00       	mov    $0x45a1b,%edx
   44160:	be 00 0f 00 00       	mov    $0xf00,%esi
   44165:	bf 20 00 00 00       	mov    $0x20,%edi
   4416a:	b8 00 00 00 00       	mov    $0x0,%eax
   4416f:	e8 79 0e 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
   44174:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   4417a:	e9 bb 00 00 00       	jmpq   4423a <console_memviewer(proc*)+0x115>
    assert(ptable[0].state == P_FREE);
   4417f:	b9 00 00 00 00       	mov    $0x0,%ecx
   44184:	ba 01 5a 04 00       	mov    $0x45a01,%edx
   44189:	be ee 00 00 00       	mov    $0xee,%esi
   4418e:	bf ae 59 04 00       	mov    $0x459ae,%edi
   44193:	e8 23 e9 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
    static memusage mu;
   44198:	bf d8 b0 05 00       	mov    $0x5b0d8,%edi
   4419d:	e8 0a f8 ff ff       	callq  439ac <__cxa_guard_acquire>
   441a2:	85 c0                	test   %eax,%eax
   441a4:	74 ab                	je     44151 <console_memviewer(proc*)+0x2c>
        : v_(nullptr) {
   441a6:	48 c7 05 2f 6f 01 00 	movq   $0x0,0x16f2f(%rip)        # 5b0e0 <console_memviewer(proc*)::mu>
   441ad:	00 00 00 00 
    static memusage mu;
   441b1:	bf d8 b0 05 00       	mov    $0x5b0d8,%edi
   441b6:	e8 25 f8 ff ff       	callq  439e0 <__cxa_guard_release>
   441bb:	eb 94                	jmp    44151 <console_memviewer(proc*)+0x2c>

    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
        if (pn % 64 == 0) {
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
   441bd:	44 89 e1             	mov    %r12d,%ecx
   441c0:	c1 e1 0c             	shl    $0xc,%ecx
   441c3:	41 8d 44 24 3f       	lea    0x3f(%r12),%eax
   441c8:	45 85 e4             	test   %r12d,%r12d
   441cb:	41 0f 49 c4          	cmovns %r12d,%eax
   441cf:	c1 f8 06             	sar    $0x6,%eax
   441d2:	8d 7c 80 05          	lea    0x5(%rax,%rax,4),%edi
   441d6:	c1 e7 04             	shl    $0x4,%edi
   441d9:	83 c7 03             	add    $0x3,%edi
   441dc:	ba 2c 5a 04 00       	mov    $0x45a2c,%edx
   441e1:	be 00 0f 00 00       	mov    $0xf00,%esi
   441e6:	b8 00 00 00 00       	mov    $0x0,%eax
   441eb:	e8 fd 0d 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
        }
        console[CPOS(1 + pn/64, 12 + pn%64)] = mu.symbol_at(pn * PAGESIZE);
   441f0:	8d 43 3f             	lea    0x3f(%rbx),%eax
   441f3:	85 db                	test   %ebx,%ebx
   441f5:	0f 49 c3             	cmovns %ebx,%eax
   441f8:	c1 f8 06             	sar    $0x6,%eax
   441fb:	8d 54 80 05          	lea    0x5(%rax,%rax,4),%edx
   441ff:	c1 e2 04             	shl    $0x4,%edx
   44202:	89 d8                	mov    %ebx,%eax
   44204:	c1 f8 1f             	sar    $0x1f,%eax
   44207:	c1 e8 1a             	shr    $0x1a,%eax
   4420a:	01 c3                	add    %eax,%ebx
   4420c:	83 e3 3f             	and    $0x3f,%ebx
   4420f:	29 c3                	sub    %eax,%ebx
   44211:	8d 5c 1a 0c          	lea    0xc(%rdx,%rbx,1),%ebx
   44215:	4c 89 ee             	mov    %r13,%rsi
   44218:	bf e0 b0 05 00       	mov    $0x5b0e0,%edi
   4421d:	e8 c2 fc ff ff       	callq  43ee4 <memusage::symbol_at(unsigned long) const>
   44222:	48 63 db             	movslq %ebx,%rbx
   44225:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%rbx,%rbx,1)
   4422c:	00 
    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
   4422d:	49 83 c4 01          	add    $0x1,%r12
   44231:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
   44238:	74 15                	je     4424f <console_memviewer(proc*)+0x12a>
   4423a:	4d 89 e5             	mov    %r12,%r13
   4423d:	49 c1 e5 0c          	shl    $0xc,%r13
   44241:	44 89 e3             	mov    %r12d,%ebx
        if (pn % 64 == 0) {
   44244:	41 f6 c4 3f          	test   $0x3f,%r12b
   44248:	75 a6                	jne    441f0 <console_memviewer(proc*)+0xcb>
   4424a:	e9 6e ff ff ff       	jmpq   441bd <console_memviewer(proc*)+0x98>
    }

    // print virtual memory
    if (vmp) {
   4424f:	4d 85 f6             	test   %r14,%r14
   44252:	0f 84 f0 01 00 00    	je     44448 <console_memviewer(proc*)+0x323>
    assert(vmp->pagetable != nullptr);
   44258:	49 83 3e 00          	cmpq   $0x0,(%r14)
   4425c:	0f 84 97 00 00 00    	je     442f9 <console_memviewer(proc*)+0x1d4>
    const char* statemsg = vmp->state == P_FAULTED ? " (faulted)" : "";
   44262:	41 83 7e 0c 03       	cmpl   $0x3,0xc(%r14)
    console_printf(CPOS(10, 26), 0x0F00,
   44267:	41 8b 4e 08          	mov    0x8(%r14),%ecx
   4426b:	41 b9 f6 59 04 00    	mov    $0x459f6,%r9d
   44271:	b8 b8 51 04 00       	mov    $0x451b8,%eax
   44276:	4c 0f 45 c8          	cmovne %rax,%r9
   4427a:	41 b8 00 07 00 00    	mov    $0x700,%r8d
   44280:	ba c8 5a 04 00       	mov    $0x45ac8,%edx
   44285:	be 00 0f 00 00       	mov    $0xf00,%esi
   4428a:	bf 3a 03 00 00       	mov    $0x33a,%edi
   4428f:	b8 00 00 00 00       	mov    $0x0,%eax
   44294:	e8 54 0d 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
    : vmiter(p->pagetable, va) {
   44299:	49 8b 06             	mov    (%r14),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4429c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   442a0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   442a4:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   442ab:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   442b2:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   442b9:	00 
    real_find(va);
   442ba:	be 00 00 00 00       	mov    $0x0,%esi
   442bf:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   442c3:	e8 7a db ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   442c8:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   442cc:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   442d3:	0f 87 6f 01 00 00    	ja     44448 <console_memviewer(proc*)+0x323>
        return -1;
   442d9:	49 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%r13
            pa &= ~0x1000UL;
   442e0:	49 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r14
   442e7:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   442ea:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   442f1:	ff 0f 00 
   442f4:	e9 8b 00 00 00       	jmpq   44384 <console_memviewer(proc*)+0x25f>
    assert(vmp->pagetable != nullptr);
   442f9:	b9 00 00 00 00       	mov    $0x0,%ecx
   442fe:	ba 34 5a 04 00       	mov    $0x45a34,%edx
   44303:	be ca 00 00 00       	mov    $0xca,%esi
   44308:	bf ae 59 04 00       	mov    $0x459ae,%edi
   4430d:	e8 a9 e7 ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
            console_printf(CPOS(11 + pn / 64, 3), 0x0F00,
   44312:	48 89 d8             	mov    %rbx,%rax
   44315:	48 c1 e8 12          	shr    $0x12,%rax
   44319:	8d 3c 80             	lea    (%rax,%rax,4),%edi
   4431c:	c1 e7 04             	shl    $0x4,%edi
   4431f:	81 c7 73 03 00 00    	add    $0x373,%edi
   44325:	48 89 d9             	mov    %rbx,%rcx
   44328:	ba 2c 5a 04 00       	mov    $0x45a2c,%edx
   4432d:	be 00 0f 00 00       	mov    $0xf00,%esi
   44332:	b8 00 00 00 00       	mov    $0x0,%eax
   44337:	e8 b1 0c 00 00       	callq  44fed <console_printf(int, int, char const*, ...)>
   4433c:	eb 53                	jmp    44391 <console_memviewer(proc*)+0x26c>
                    ch ^= 0xFE00;
   4433e:	b8 53 f1 ff ff       	mov    $0xfffff153,%eax
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
   44343:	48 c1 eb 12          	shr    $0x12,%rbx
   44347:	48 8d 14 9b          	lea    (%rbx,%rbx,4),%rdx
   4434b:	48 c1 e2 04          	shl    $0x4,%rdx
   4434f:	49 8d 94 14 7c 03 00 	lea    0x37c(%r12,%rdx,1),%rdx
   44356:	00 
   44357:	66 89 84 12 00 80 0b 	mov    %ax,0xb8000(%rdx,%rdx,1)
   4435e:	00 
    return find(va_ + delta);
   4435f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   44363:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4436a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4436e:	e8 cf da ff ff       	callq  41e42 <vmiter::real_find(unsigned long)>
    return va_;
   44373:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   44377:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   4437e:	0f 87 c4 00 00 00    	ja     44448 <console_memviewer(proc*)+0x323>
        unsigned long pn = it.va() / PAGESIZE;
   44384:	49 89 dc             	mov    %rbx,%r12
   44387:	49 c1 ec 0c          	shr    $0xc,%r12
        if (pn % 64 == 0) {
   4438b:	41 83 e4 3f          	and    $0x3f,%r12d
   4438f:	74 81                	je     44312 <console_memviewer(proc*)+0x1ed>
    uint64_t ph = *pep_ & perm_;
   44391:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   44395:	48 8b 08             	mov    (%rax),%rcx
   44398:	48 63 55 c4          	movslq -0x3c(%rbp),%rdx
   4439c:	48 89 d0             	mov    %rdx,%rax
   4439f:	48 21 c8             	and    %rcx,%rax
    return ph & -(ph & PTE_P);
   443a2:	48 89 c2             	mov    %rax,%rdx
   443a5:	83 e2 01             	and    $0x1,%edx
   443a8:	48 f7 da             	neg    %rdx
   443ab:	48 21 c2             	and    %rax,%rdx
            ch = ' ';
   443ae:	b8 20 00 00 00       	mov    $0x20,%eax
        if (!it.present()) {
   443b3:	f6 c2 01             	test   $0x1,%dl
   443b6:	74 8b                	je     44343 <console_memviewer(proc*)+0x21e>
        return -1;
   443b8:	4c 89 ee             	mov    %r13,%rsi
    if (*pep_ & PTE_P) {
   443bb:	f6 c1 01             	test   $0x1,%cl
   443be:	74 2f                	je     443ef <console_memviewer(proc*)+0x2ca>
        if (level_ > 0) {
   443c0:	8b 55 c0             	mov    -0x40(%rbp),%edx
            pa &= ~0x1000UL;
   443c3:	48 89 c8             	mov    %rcx,%rax
   443c6:	4c 21 f0             	and    %r14,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   443c9:	48 89 ce             	mov    %rcx,%rsi
   443cc:	4c 21 fe             	and    %r15,%rsi
   443cf:	48 89 c1             	mov    %rax,%rcx
   443d2:	85 d2                	test   %edx,%edx
   443d4:	48 89 f0             	mov    %rsi,%rax
   443d7:	48 0f 4f c1          	cmovg  %rcx,%rax
   443db:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   443df:	4c 89 ee             	mov    %r13,%rsi
   443e2:	48 d3 e6             	shl    %cl,%rsi
   443e5:	48 f7 d6             	not    %rsi
   443e8:	48 23 75 c8          	and    -0x38(%rbp),%rsi
   443ec:	48 01 c6             	add    %rax,%rsi
            ch = mu.symbol_at(it.pa());
   443ef:	bf e0 b0 05 00       	mov    $0x5b0e0,%edi
   443f4:	e8 eb fa ff ff       	callq  43ee4 <memusage::symbol_at(unsigned long) const>
    uint64_t ph = *pep_ & perm_;
   443f9:	48 63 55 c4          	movslq -0x3c(%rbp),%rdx
   443fd:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   44401:	48 23 11             	and    (%rcx),%rdx
   44404:	48 89 d1             	mov    %rdx,%rcx
    return ph & -(ph & PTE_P);
   44407:	83 e2 01             	and    $0x1,%edx
   4440a:	48 f7 da             	neg    %rdx
   4440d:	48 21 ca             	and    %rcx,%rdx
    return (perm() & desired_perm) == desired_perm;
   44410:	83 e2 05             	and    $0x5,%edx
            if (it.user()) { // switch foreground & background colors
   44413:	48 83 fa 05          	cmp    $0x5,%rdx
   44417:	0f 85 26 ff ff ff    	jne    44343 <console_memviewer(proc*)+0x21e>
                if (ch == (0x0F00 | 'S')) {
   4441d:	66 3d 53 0f          	cmp    $0xf53,%ax
   44421:	0f 84 17 ff ff ff    	je     4433e <console_memviewer(proc*)+0x219>
                    uint16_t z = (ch & 0x0F00) ^ ((ch & 0xF000) >> 4);
   44427:	89 c2                	mov    %eax,%edx
   44429:	66 c1 ea 04          	shr    $0x4,%dx
   4442d:	31 c2                	xor    %eax,%edx
   4442f:	89 d1                	mov    %edx,%ecx
   44431:	66 81 e1 00 0f       	and    $0xf00,%cx
                    ch ^= z | (z << 4);
   44436:	81 e2 00 0f 00 00    	and    $0xf00,%edx
   4443c:	c1 e2 04             	shl    $0x4,%edx
   4443f:	09 ca                	or     %ecx,%edx
   44441:	31 d0                	xor    %edx,%eax
   44443:	e9 fb fe ff ff       	jmpq   44343 <console_memviewer(proc*)+0x21e>
        console_memviewer_virtual(mu, vmp);
    }
}
   44448:	48 83 c4 28          	add    $0x28,%rsp
   4444c:	5b                   	pop    %rbx
   4444d:	41 5c                	pop    %r12
   4444f:	41 5d                	pop    %r13
   44451:	41 5e                	pop    %r14
   44453:	41 5f                	pop    %r15
   44455:	5d                   	pop    %rbp
   44456:	c3                   	retq   

0000000000044457 <memcpy>:

// memcpy, memmove, memset, memcmp, memchr, strlen, strnlen, strcpy, strcmp,
// strncmp, strchr, strtoul, strtol
//    We must provide our own implementations.

void* memcpy(void* dst, const void* src, size_t n) {
   44457:	f3 0f 1e fa          	endbr64 
   4445b:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   4445e:	48 85 d2             	test   %rdx,%rdx
   44461:	74 17                	je     4447a <memcpy+0x23>
   44463:	b9 00 00 00 00       	mov    $0x0,%ecx
        *d = *s;
   44468:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
   4446d:	44 88 04 08          	mov    %r8b,(%rax,%rcx,1)
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   44471:	48 83 c1 01          	add    $0x1,%rcx
   44475:	48 39 d1             	cmp    %rdx,%rcx
   44478:	75 ee                	jne    44468 <memcpy+0x11>
    }
    return dst;
}
   4447a:	c3                   	retq   

000000000004447b <memmove>:

void* memmove(void* dst, const void* src, size_t n) {
   4447b:	f3 0f 1e fa          	endbr64 
   4447f:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
   44482:	48 39 fe             	cmp    %rdi,%rsi
   44485:	73 09                	jae    44490 <memmove+0x15>
   44487:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
   4448b:	48 39 cf             	cmp    %rcx,%rdi
   4448e:	72 1d                	jb     444ad <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
   44490:	b9 00 00 00 00       	mov    $0x0,%ecx
   44495:	48 85 d2             	test   %rdx,%rdx
   44498:	74 12                	je     444ac <memmove+0x31>
            *d++ = *s++;
   4449a:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
   4449e:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
   444a2:	48 83 c1 01          	add    $0x1,%rcx
   444a6:	48 39 d1             	cmp    %rdx,%rcx
   444a9:	75 ef                	jne    4449a <memmove+0x1f>
        }
    }
    return dst;
}
   444ab:	c3                   	retq   
   444ac:	c3                   	retq   
        while (n-- > 0) {
   444ad:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
   444b1:	48 85 d2             	test   %rdx,%rdx
   444b4:	74 f5                	je     444ab <memmove+0x30>
            *--d = *--s;
   444b6:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
   444ba:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
   444bd:	48 83 e9 01          	sub    $0x1,%rcx
   444c1:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
   444c5:	75 ef                	jne    444b6 <memmove+0x3b>
   444c7:	c3                   	retq   

00000000000444c8 <memset>:

void* memset(void* v, int c, size_t n) {
   444c8:	f3 0f 1e fa          	endbr64 
   444cc:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
   444cf:	48 85 d2             	test   %rdx,%rdx
   444d2:	74 13                	je     444e7 <memset+0x1f>
   444d4:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
   444d8:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
   444db:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
   444de:	48 83 c2 01          	add    $0x1,%rdx
   444e2:	48 39 d1             	cmp    %rdx,%rcx
   444e5:	75 f4                	jne    444db <memset+0x13>
    }
    return v;
}
   444e7:	c3                   	retq   

00000000000444e8 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
   444e8:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
   444ec:	80 3f 00             	cmpb   $0x0,(%rdi)
   444ef:	74 10                	je     44501 <strlen+0x19>
   444f1:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
   444f6:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
   444fa:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   444fe:	75 f6                	jne    444f6 <strlen+0xe>
   44500:	c3                   	retq   
   44501:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
   44506:	c3                   	retq   

0000000000044507 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
   44507:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   4450b:	48 85 f6             	test   %rsi,%rsi
   4450e:	74 15                	je     44525 <strnlen+0x1e>
   44510:	b8 00 00 00 00       	mov    $0x0,%eax
   44515:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   44519:	74 0d                	je     44528 <strnlen+0x21>
        ++n;
   4451b:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   4451f:	48 39 c6             	cmp    %rax,%rsi
   44522:	75 f1                	jne    44515 <strnlen+0xe>
   44524:	c3                   	retq   
   44525:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
   44528:	c3                   	retq   

0000000000044529 <strcpy>:

char* strcpy(char* dst, const char* src) {
   44529:	f3 0f 1e fa          	endbr64 
   4452d:	48 89 f8             	mov    %rdi,%rax
   44530:	ba 00 00 00 00       	mov    $0x0,%edx
    char* d = dst;
    do {
        *d++ = *src++;
   44535:	0f b6 0c 16          	movzbl (%rsi,%rdx,1),%ecx
   44539:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    } while (d[-1]);
   4453c:	48 83 c2 01          	add    $0x1,%rdx
   44540:	84 c9                	test   %cl,%cl
   44542:	75 f1                	jne    44535 <strcpy+0xc>
    return dst;
}
   44544:	c3                   	retq   

0000000000044545 <strcmp>:
        --maxlen;
    }
    return dst;
}

int strcmp(const char* a, const char* b) {
   44545:	f3 0f 1e fa          	endbr64 
    while (true) {
        unsigned char ac = *a, bc = *b;
   44549:	0f b6 17             	movzbl (%rdi),%edx
   4454c:	0f b6 0e             	movzbl (%rsi),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   4454f:	84 d2                	test   %dl,%dl
   44551:	41 0f 94 c0          	sete   %r8b
   44555:	38 ca                	cmp    %cl,%dl
   44557:	0f 95 c0             	setne  %al
   4455a:	41 08 c0             	or     %al,%r8b
   4455d:	75 2a                	jne    44589 <strcmp+0x44>
   4455f:	b8 01 00 00 00       	mov    $0x1,%eax
   44564:	84 c9                	test   %cl,%cl
   44566:	74 21                	je     44589 <strcmp+0x44>
        unsigned char ac = *a, bc = *b;
   44568:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
   4456c:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   44570:	48 83 c0 01          	add    $0x1,%rax
   44574:	84 d2                	test   %dl,%dl
   44576:	41 0f 94 c1          	sete   %r9b
   4457a:	84 c9                	test   %cl,%cl
   4457c:	41 0f 94 c0          	sete   %r8b
   44580:	45 08 c1             	or     %r8b,%r9b
   44583:	75 04                	jne    44589 <strcmp+0x44>
   44585:	38 ca                	cmp    %cl,%dl
   44587:	74 df                	je     44568 <strcmp+0x23>
            return (ac > bc) - (ac < bc);
   44589:	38 ca                	cmp    %cl,%dl
   4458b:	0f 97 c0             	seta   %al
   4458e:	0f b6 c0             	movzbl %al,%eax
   44591:	83 d8 00             	sbb    $0x0,%eax
        }
        ++a, ++b;
    }
}
   44594:	c3                   	retq   

0000000000044595 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
   44595:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
   44599:	0f b6 07             	movzbl (%rdi),%eax
   4459c:	84 c0                	test   %al,%al
   4459e:	74 10                	je     445b0 <strchr+0x1b>
   445a0:	40 38 f0             	cmp    %sil,%al
   445a3:	74 18                	je     445bd <strchr+0x28>
        ++s;
   445a5:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
   445a9:	0f b6 07             	movzbl (%rdi),%eax
   445ac:	84 c0                	test   %al,%al
   445ae:	75 f0                	jne    445a0 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
   445b0:	40 84 f6             	test   %sil,%sil
   445b3:	b8 00 00 00 00       	mov    $0x0,%eax
   445b8:	48 0f 44 c7          	cmove  %rdi,%rax
   445bc:	c3                   	retq   
   445bd:	48 89 f8             	mov    %rdi,%rax
    }
}
   445c0:	c3                   	retq   
   445c1:	90                   	nop

00000000000445c2 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
   445c2:	f3 0f 1e fa          	endbr64 
   445c6:	55                   	push   %rbp
   445c7:	48 89 e5             	mov    %rsp,%rbp
   445ca:	41 57                	push   %r15
   445cc:	41 56                	push   %r14
   445ce:	41 55                	push   %r13
   445d0:	41 54                	push   %r12
   445d2:	53                   	push   %rbx
   445d3:	48 83 ec 58          	sub    $0x58,%rsp
   445d7:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
   445db:	0f b6 02             	movzbl (%rdx),%eax
   445de:	84 c0                	test   %al,%al
   445e0:	0f 84 c6 07 00 00    	je     44dac <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
   445e6:	49 89 fe             	mov    %rdi,%r14
   445e9:	41 89 f7             	mov    %esi,%r15d
   445ec:	48 89 d3             	mov    %rdx,%rbx
   445ef:	e9 b9 03 00 00       	jmpq   449ad <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
   445f4:	4c 8d 63 01          	lea    0x1(%rbx),%r12
   445f8:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
   445fc:	84 db                	test   %bl,%bl
   445fe:	0f 84 8a 07 00 00    	je     44d8e <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
   44604:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
   4460a:	0f be f3             	movsbl %bl,%esi
   4460d:	bf 10 62 04 00       	mov    $0x46210,%edi
   44612:	e8 7e ff ff ff       	callq  44595 <strchr>
   44617:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
   4461a:	48 85 c0             	test   %rax,%rax
   4461d:	74 74                	je     44693 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
   4461f:	48 81 e9 10 62 04 00 	sub    $0x46210,%rcx
   44626:	b8 01 00 00 00       	mov    $0x1,%eax
   4462b:	d3 e0                	shl    %cl,%eax
   4462d:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
   44630:	49 83 c4 01          	add    $0x1,%r12
   44634:	41 0f b6 1c 24       	movzbl (%r12),%ebx
   44639:	84 db                	test   %bl,%bl
   4463b:	75 cd                	jne    4460a <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
   4463d:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
   44644:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
   4464b:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
   44650:	0f 84 cc 00 00 00    	je     44722 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
   44656:	41 0f b6 04 24       	movzbl (%r12),%eax
   4465b:	3c 6c                	cmp    $0x6c,%al
   4465d:	0f 84 54 01 00 00    	je     447b7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   44663:	0f 8f 42 01 00 00    	jg     447ab <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
   44669:	3c 68                	cmp    $0x68,%al
   4466b:	0f 85 68 01 00 00    	jne    447d9 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
   44671:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
   44676:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   4467c:	8d 50 bd             	lea    -0x43(%rax),%edx
   4467f:	80 fa 35             	cmp    $0x35,%dl
   44682:	0f 87 aa 05 00 00    	ja     44c32 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   44688:	0f b6 d2             	movzbl %dl,%edx
   4468b:	3e ff 24 d5 50 5b 04 	notrack jmpq *0x45b50(,%rdx,8)
   44692:	00 
        if (*format >= '1' && *format <= '9') {
   44693:	8d 43 cf             	lea    -0x31(%rbx),%eax
   44696:	3c 08                	cmp    $0x8,%al
   44698:	77 35                	ja     446cf <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   4469a:	41 0f b6 04 24       	movzbl (%r12),%eax
   4469f:	8d 50 d0             	lea    -0x30(%rax),%edx
   446a2:	80 fa 09             	cmp    $0x9,%dl
   446a5:	77 63                	ja     4470a <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
   446a7:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
   446ac:	49 83 c4 01          	add    $0x1,%r12
   446b0:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
   446b3:	0f be c0             	movsbl %al,%eax
   446b6:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   446ba:	41 0f b6 04 24       	movzbl (%r12),%eax
   446bf:	8d 48 d0             	lea    -0x30(%rax),%ecx
   446c2:	80 f9 09             	cmp    $0x9,%cl
   446c5:	76 e5                	jbe    446ac <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
   446c7:	89 55 98             	mov    %edx,-0x68(%rbp)
   446ca:	e9 75 ff ff ff       	jmpq   44644 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
   446cf:	80 fb 2a             	cmp    $0x2a,%bl
   446d2:	75 42                	jne    44716 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
   446d4:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   446d8:	8b 07                	mov    (%rdi),%eax
   446da:	83 f8 2f             	cmp    $0x2f,%eax
   446dd:	77 19                	ja     446f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
   446df:	89 c2                	mov    %eax,%edx
   446e1:	48 03 57 10          	add    0x10(%rdi),%rdx
   446e5:	83 c0 08             	add    $0x8,%eax
   446e8:	89 07                	mov    %eax,(%rdi)
   446ea:	8b 02                	mov    (%rdx),%eax
   446ec:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
   446ef:	49 83 c4 01          	add    $0x1,%r12
   446f3:	e9 4c ff ff ff       	jmpq   44644 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
   446f8:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   446fc:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44700:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44704:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44708:	eb e0                	jmp    446ea <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   4470a:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
   44711:	e9 2e ff ff ff       	jmpq   44644 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
   44716:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
   4471d:	e9 22 ff ff ff       	jmpq   44644 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
   44722:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
   44727:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   4472d:	8d 48 d0             	lea    -0x30(%rax),%ecx
   44730:	80 f9 09             	cmp    $0x9,%cl
   44733:	76 13                	jbe    44748 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
   44735:	3c 2a                	cmp    $0x2a,%al
   44737:	74 32                	je     4476b <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
   44739:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
   4473c:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
   44743:	e9 0e ff ff ff       	jmpq   44656 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   44748:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
   4474d:	48 83 c2 01          	add    $0x1,%rdx
   44751:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
   44754:	0f be c0             	movsbl %al,%eax
   44757:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   4475b:	0f b6 02             	movzbl (%rdx),%eax
   4475e:	8d 48 d0             	lea    -0x30(%rax),%ecx
   44761:	80 f9 09             	cmp    $0x9,%cl
   44764:	76 e7                	jbe    4474d <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
   44766:	49 89 d4             	mov    %rdx,%r12
   44769:	eb 1c                	jmp    44787 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
   4476b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4476f:	8b 01                	mov    (%rcx),%eax
   44771:	83 f8 2f             	cmp    $0x2f,%eax
   44774:	77 23                	ja     44799 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
   44776:	89 c2                	mov    %eax,%edx
   44778:	48 03 51 10          	add    0x10(%rcx),%rdx
   4477c:	83 c0 08             	add    $0x8,%eax
   4477f:	89 01                	mov    %eax,(%rcx)
   44781:	8b 32                	mov    (%rdx),%esi
                ++format;
   44783:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
   44787:	85 f6                	test   %esi,%esi
   44789:	b8 00 00 00 00       	mov    $0x0,%eax
   4478e:	0f 49 c6             	cmovns %esi,%eax
   44791:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   44794:	e9 bd fe ff ff       	jmpq   44656 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
   44799:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   4479d:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   447a1:	48 8d 42 08          	lea    0x8(%rdx),%rax
   447a5:	48 89 47 08          	mov    %rax,0x8(%rdi)
   447a9:	eb d6                	jmp    44781 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
   447ab:	3c 74                	cmp    $0x74,%al
   447ad:	74 08                	je     447b7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   447af:	3c 7a                	cmp    $0x7a,%al
   447b1:	0f 85 e2 05 00 00    	jne    44d99 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
   447b7:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
   447bc:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   447c2:	8d 50 bd             	lea    -0x43(%rax),%edx
   447c5:	80 fa 35             	cmp    $0x35,%dl
   447c8:	0f 87 64 04 00 00    	ja     44c32 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   447ce:	0f b6 d2             	movzbl %dl,%edx
   447d1:	3e ff 24 d5 00 5d 04 	notrack jmpq *0x45d00(,%rdx,8)
   447d8:	00 
   447d9:	8d 50 bd             	lea    -0x43(%rax),%edx
   447dc:	80 fa 35             	cmp    $0x35,%dl
   447df:	0f 87 4a 04 00 00    	ja     44c2f <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
   447e5:	0f b6 d2             	movzbl %dl,%edx
   447e8:	3e ff 24 d5 b0 5e 04 	notrack jmpq *0x45eb0(,%rdx,8)
   447ef:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
   447f0:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   447f4:	8b 07                	mov    (%rdi),%eax
   447f6:	83 f8 2f             	cmp    $0x2f,%eax
   447f9:	0f 87 c9 01 00 00    	ja     449c8 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
   447ff:	89 c2                	mov    %eax,%edx
   44801:	48 03 57 10          	add    0x10(%rdi),%rdx
   44805:	83 c0 08             	add    $0x8,%eax
   44808:	89 07                	mov    %eax,(%rdi)
   4480a:	48 8b 12             	mov    (%rdx),%rdx
   4480d:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
   44810:	48 89 d0             	mov    %rdx,%rax
   44813:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
   44817:	49 89 d0             	mov    %rdx,%r8
   4481a:	49 f7 d8             	neg    %r8
   4481d:	25 80 00 00 00       	and    $0x80,%eax
   44822:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
   44826:	41 09 c5             	or     %eax,%r13d
   44829:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
   4482d:	bb b8 51 04 00       	mov    $0x451b8,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
   44832:	44 89 e8             	mov    %r13d,%eax
   44835:	83 e0 20             	and    $0x20,%eax
   44838:	89 45 9c             	mov    %eax,-0x64(%rbp)
   4483b:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
   44841:	0f 85 0e 04 00 00    	jne    44c55 <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
   44847:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
   4484b:	44 89 e8             	mov    %r13d,%eax
   4484e:	83 e0 60             	and    $0x60,%eax
   44851:	83 f8 60             	cmp    $0x60,%eax
   44854:	0f 84 3e 04 00 00    	je     44c98 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   4485a:	44 89 e8             	mov    %r13d,%eax
   4485d:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
   44860:	48 c7 45 a8 b8 51 04 	movq   $0x451b8,-0x58(%rbp)
   44867:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   44868:	83 f8 21             	cmp    $0x21,%eax
   4486b:	0f 84 66 04 00 00    	je     44cd7 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   44871:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   44874:	89 c8                	mov    %ecx,%eax
   44876:	f7 d0                	not    %eax
   44878:	c1 e8 1f             	shr    $0x1f,%eax
   4487b:	89 45 88             	mov    %eax,-0x78(%rbp)
   4487e:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   44882:	0f 85 8b 04 00 00    	jne    44d13 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
   44888:	84 c0                	test   %al,%al
   4488a:	0f 84 83 04 00 00    	je     44d13 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
   44890:	48 63 f1             	movslq %ecx,%rsi
   44893:	48 89 df             	mov    %rbx,%rdi
   44896:	e8 6c fc ff ff       	callq  44507 <strnlen>
   4489b:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
   4489e:	8b 45 8c             	mov    -0x74(%rbp),%eax
   448a1:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
   448a4:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   448ab:	83 f8 22             	cmp    $0x22,%eax
   448ae:	0f 84 97 04 00 00    	je     44d4b <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
   448b4:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   448b8:	e8 2b fc ff ff       	callq  444e8 <strlen>
   448bd:	8b 55 a4             	mov    -0x5c(%rbp),%edx
   448c0:	03 55 a0             	add    -0x60(%rbp),%edx
   448c3:	8b 7d 98             	mov    -0x68(%rbp),%edi
   448c6:	29 d7                	sub    %edx,%edi
   448c8:	89 fa                	mov    %edi,%edx
   448ca:	29 c2                	sub    %eax,%edx
   448cc:	89 55 98             	mov    %edx,-0x68(%rbp)
   448cf:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   448d2:	41 f6 c5 04          	test   $0x4,%r13b
   448d6:	75 32                	jne    4490a <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
   448d8:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   448db:	85 d2                	test   %edx,%edx
   448dd:	7e 2b                	jle    4490a <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
   448df:	49 8b 06             	mov    (%r14),%rax
   448e2:	44 89 fa             	mov    %r15d,%edx
   448e5:	be 20 00 00 00       	mov    $0x20,%esi
   448ea:	4c 89 f7             	mov    %r14,%rdi
   448ed:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   448ef:	41 83 ed 01          	sub    $0x1,%r13d
   448f3:	45 85 ed             	test   %r13d,%r13d
   448f6:	7f e7                	jg     448df <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
   448f8:	8b 7d 98             	mov    -0x68(%rbp),%edi
   448fb:	85 ff                	test   %edi,%edi
   448fd:	b8 01 00 00 00       	mov    $0x1,%eax
   44902:	0f 4f c7             	cmovg  %edi,%eax
   44905:	29 c7                	sub    %eax,%edi
   44907:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
   4490a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   4490e:	0f b6 00             	movzbl (%rax),%eax
   44911:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
   44915:	84 c0                	test   %al,%al
   44917:	74 1b                	je     44934 <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
   44919:	0f b6 f0             	movzbl %al,%esi
   4491c:	49 8b 06             	mov    (%r14),%rax
   4491f:	44 89 fa             	mov    %r15d,%edx
   44922:	4c 89 f7             	mov    %r14,%rdi
   44925:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
   44927:	49 83 c5 01          	add    $0x1,%r13
   4492b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
   44930:	84 c0                	test   %al,%al
   44932:	75 e5                	jne    44919 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
   44934:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
   44938:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
   4493c:	7e 16                	jle    44954 <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
   4493e:	49 8b 06             	mov    (%r14),%rax
   44941:	44 89 fa             	mov    %r15d,%edx
   44944:	be 30 00 00 00       	mov    $0x30,%esi
   44949:	4c 89 f7             	mov    %r14,%rdi
   4494c:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
   4494e:	41 83 ed 01          	sub    $0x1,%r13d
   44952:	75 ea                	jne    4493e <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
   44954:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
   44958:	7e 22                	jle    4497c <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
   4495a:	8b 45 a0             	mov    -0x60(%rbp),%eax
   4495d:	8d 40 ff             	lea    -0x1(%rax),%eax
   44960:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
   44965:	0f b6 33             	movzbl (%rbx),%esi
   44968:	49 8b 06             	mov    (%r14),%rax
   4496b:	44 89 fa             	mov    %r15d,%edx
   4496e:	4c 89 f7             	mov    %r14,%rdi
   44971:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
   44973:	48 83 c3 01          	add    $0x1,%rbx
   44977:	4c 39 eb             	cmp    %r13,%rbx
   4497a:	75 e9                	jne    44965 <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
   4497c:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
   4497f:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   44983:	7e 15                	jle    4499a <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
   44985:	49 8b 06             	mov    (%r14),%rax
   44988:	44 89 fa             	mov    %r15d,%edx
   4498b:	be 20 00 00 00       	mov    $0x20,%esi
   44990:	4c 89 f7             	mov    %r14,%rdi
   44993:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
   44995:	83 eb 01             	sub    $0x1,%ebx
   44998:	75 eb                	jne    44985 <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
   4499a:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
   4499f:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   449a5:	84 c0                	test   %al,%al
   449a7:	0f 84 ff 03 00 00    	je     44dac <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
   449ad:	3c 25                	cmp    $0x25,%al
   449af:	0f 84 3f fc ff ff    	je     445f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
   449b5:	0f b6 f0             	movzbl %al,%esi
   449b8:	49 8b 06             	mov    (%r14),%rax
   449bb:	44 89 fa             	mov    %r15d,%edx
   449be:	4c 89 f7             	mov    %r14,%rdi
   449c1:	ff 10                	callq  *(%rax)
            continue;
   449c3:	49 89 dc             	mov    %rbx,%r12
   449c6:	eb d2                	jmp    4499a <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
   449c8:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   449cc:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   449d0:	48 8d 42 08          	lea    0x8(%rdx),%rax
   449d4:	48 89 47 08          	mov    %rax,0x8(%rdi)
   449d8:	e9 2d fe ff ff       	jmpq   4480a <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
   449dd:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
   449e0:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   449e4:	8b 01                	mov    (%rcx),%eax
   449e6:	83 f8 2f             	cmp    $0x2f,%eax
   449e9:	77 13                	ja     449fe <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
   449eb:	89 c2                	mov    %eax,%edx
   449ed:	48 03 51 10          	add    0x10(%rcx),%rdx
   449f1:	83 c0 08             	add    $0x8,%eax
   449f4:	89 01                	mov    %eax,(%rcx)
   449f6:	48 63 12             	movslq (%rdx),%rdx
   449f9:	e9 12 fe ff ff       	jmpq   44810 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
   449fe:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44a02:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   44a06:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44a0a:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44a0e:	eb e6                	jmp    449f6 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
   44a10:	49 89 cc             	mov    %rcx,%r12
   44a13:	b8 01 00 00 00       	mov    $0x1,%eax
   44a18:	be 0a 00 00 00       	mov    $0xa,%esi
   44a1d:	e9 a8 00 00 00       	jmpq   44aca <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   44a22:	49 89 cc             	mov    %rcx,%r12
   44a25:	b8 00 00 00 00       	mov    $0x0,%eax
   44a2a:	be 0a 00 00 00       	mov    $0xa,%esi
   44a2f:	e9 96 00 00 00       	jmpq   44aca <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   44a34:	b8 00 00 00 00       	mov    $0x0,%eax
   44a39:	be 0a 00 00 00       	mov    $0xa,%esi
   44a3e:	e9 87 00 00 00       	jmpq   44aca <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   44a43:	b8 00 00 00 00       	mov    $0x0,%eax
   44a48:	be 0a 00 00 00       	mov    $0xa,%esi
   44a4d:	eb 7b                	jmp    44aca <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   44a4f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44a53:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44a57:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44a5b:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44a5f:	e9 84 00 00 00       	jmpq   44ae8 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
   44a64:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44a68:	8b 01                	mov    (%rcx),%eax
   44a6a:	83 f8 2f             	cmp    $0x2f,%eax
   44a6d:	77 10                	ja     44a7f <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
   44a6f:	89 c2                	mov    %eax,%edx
   44a71:	48 03 51 10          	add    0x10(%rcx),%rdx
   44a75:	83 c0 08             	add    $0x8,%eax
   44a78:	89 01                	mov    %eax,(%rcx)
   44a7a:	44 8b 02             	mov    (%rdx),%r8d
   44a7d:	eb 6c                	jmp    44aeb <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
   44a7f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44a83:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   44a87:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44a8b:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44a8f:	eb e9                	jmp    44a7a <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
   44a91:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
   44a94:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
   44a9b:	bf 40 62 04 00       	mov    $0x46240,%edi
   44aa0:	e9 c0 01 00 00       	jmpq   44c65 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   44aa5:	49 89 cc             	mov    %rcx,%r12
   44aa8:	b8 01 00 00 00       	mov    $0x1,%eax
   44aad:	eb 16                	jmp    44ac5 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   44aaf:	49 89 cc             	mov    %rcx,%r12
   44ab2:	b8 00 00 00 00       	mov    $0x0,%eax
   44ab7:	eb 0c                	jmp    44ac5 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
   44ab9:	b8 00 00 00 00       	mov    $0x0,%eax
   44abe:	eb 05                	jmp    44ac5 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   44ac0:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
   44ac5:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   44aca:	85 c0                	test   %eax,%eax
   44acc:	74 96                	je     44a64 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
   44ace:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44ad2:	8b 01                	mov    (%rcx),%eax
   44ad4:	83 f8 2f             	cmp    $0x2f,%eax
   44ad7:	0f 87 72 ff ff ff    	ja     44a4f <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
   44add:	89 c2                	mov    %eax,%edx
   44adf:	48 03 51 10          	add    0x10(%rcx),%rdx
   44ae3:	83 c0 08             	add    $0x8,%eax
   44ae6:	89 01                	mov    %eax,(%rcx)
   44ae8:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
   44aeb:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
   44aef:	85 f6                	test   %esi,%esi
   44af1:	79 9e                	jns    44a91 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
   44af3:	41 89 f1             	mov    %esi,%r9d
   44af6:	f7 de                	neg    %esi
   44af8:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
   44aff:	bf 20 62 04 00       	mov    $0x46220,%edi
   44b04:	e9 5c 01 00 00       	jmpq   44c65 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   44b09:	49 89 cc             	mov    %rcx,%r12
   44b0c:	b8 01 00 00 00       	mov    $0x1,%eax
   44b11:	eb 16                	jmp    44b29 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   44b13:	49 89 cc             	mov    %rcx,%r12
   44b16:	b8 00 00 00 00       	mov    $0x0,%eax
   44b1b:	eb 0c                	jmp    44b29 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
   44b1d:	b8 00 00 00 00       	mov    $0x0,%eax
   44b22:	eb 05                	jmp    44b29 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   44b24:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
   44b29:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
   44b2e:	eb 9a                	jmp    44aca <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   44b30:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
   44b33:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44b37:	8b 01                	mov    (%rcx),%eax
   44b39:	83 f8 2f             	cmp    $0x2f,%eax
   44b3c:	77 21                	ja     44b5f <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
   44b3e:	89 c2                	mov    %eax,%edx
   44b40:	48 03 51 10          	add    0x10(%rcx),%rdx
   44b44:	83 c0 08             	add    $0x8,%eax
   44b47:	89 01                	mov    %eax,(%rcx)
   44b49:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
   44b4c:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
   44b53:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
   44b58:	eb 99                	jmp    44af3 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
   44b5a:	49 89 cc             	mov    %rcx,%r12
   44b5d:	eb d4                	jmp    44b33 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
   44b5f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44b63:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44b67:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44b6b:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44b6f:	eb d8                	jmp    44b49 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
   44b71:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
   44b74:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44b78:	8b 07                	mov    (%rdi),%eax
   44b7a:	83 f8 2f             	cmp    $0x2f,%eax
   44b7d:	77 1e                	ja     44b9d <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
   44b7f:	89 c2                	mov    %eax,%edx
   44b81:	48 03 57 10          	add    0x10(%rdi),%rdx
   44b85:	83 c0 08             	add    $0x8,%eax
   44b88:	89 07                	mov    %eax,(%rdi)
   44b8a:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
   44b8d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   44b93:	e9 9a fc ff ff       	jmpq   44832 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   44b98:	49 89 cc             	mov    %rcx,%r12
   44b9b:	eb d7                	jmp    44b74 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
   44b9d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44ba1:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   44ba5:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44ba9:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44bad:	eb db                	jmp    44b8a <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
   44baf:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
   44bb2:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44bb6:	8b 01                	mov    (%rcx),%eax
   44bb8:	83 f8 2f             	cmp    $0x2f,%eax
   44bbb:	77 18                	ja     44bd5 <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
   44bbd:	89 c2                	mov    %eax,%edx
   44bbf:	48 03 51 10          	add    0x10(%rcx),%rdx
   44bc3:	83 c0 08             	add    $0x8,%eax
   44bc6:	89 01                	mov    %eax,(%rcx)
   44bc8:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
   44bcb:	e9 ca fd ff ff       	jmpq   4499a <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
   44bd0:	49 89 cc             	mov    %rcx,%r12
   44bd3:	eb dd                	jmp    44bb2 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
   44bd5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44bd9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44bdd:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44be1:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44be5:	eb e1                	jmp    44bc8 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
   44be7:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
   44bea:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44bee:	8b 07                	mov    (%rdi),%eax
   44bf0:	83 f8 2f             	cmp    $0x2f,%eax
   44bf3:	77 28                	ja     44c1d <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
   44bf5:	89 c2                	mov    %eax,%edx
   44bf7:	48 03 57 10          	add    0x10(%rdi),%rdx
   44bfb:	83 c0 08             	add    $0x8,%eax
   44bfe:	89 07                	mov    %eax,(%rdi)
   44c00:	8b 02                	mov    (%rdx),%eax
   44c02:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   44c05:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44c09:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44c0d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   44c13:	e9 1a fc ff ff       	jmpq   44832 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   44c18:	49 89 cc             	mov    %rcx,%r12
   44c1b:	eb cd                	jmp    44bea <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
   44c1d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44c21:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   44c25:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44c29:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44c2d:	eb d1                	jmp    44c00 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
   44c2f:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
   44c32:	84 c0                	test   %al,%al
   44c34:	0f 85 3b 01 00 00    	jne    44d75 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
   44c3a:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
   44c3e:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
   44c42:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
   44c46:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44c4a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   44c50:	e9 dd fb ff ff       	jmpq   44832 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
   44c55:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
   44c5b:	bf 40 62 04 00       	mov    $0x46240,%edi
        if (flags & FLAG_NUMERIC) {
   44c60:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
   44c65:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
   44c69:	4c 89 c1             	mov    %r8,%rcx
   44c6c:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
   44c70:	48 63 f6             	movslq %esi,%rsi
   44c73:	48 83 eb 01          	sub    $0x1,%rbx
   44c77:	48 89 c8             	mov    %rcx,%rax
   44c7a:	ba 00 00 00 00       	mov    $0x0,%edx
   44c7f:	48 f7 f6             	div    %rsi
   44c82:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
   44c86:	88 13                	mov    %dl,(%rbx)
        val /= base;
   44c88:	48 89 ca             	mov    %rcx,%rdx
   44c8b:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
   44c8e:	48 39 d6             	cmp    %rdx,%rsi
   44c91:	76 e0                	jbe    44c73 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
   44c93:	e9 af fb ff ff       	jmpq   44847 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
   44c98:	48 c7 45 a8 3d 5b 04 	movq   $0x45b3d,-0x58(%rbp)
   44c9f:	00 
            if (flags & FLAG_NEGATIVE) {
   44ca0:	41 f6 c5 80          	test   $0x80,%r13b
   44ca4:	0f 85 c7 fb ff ff    	jne    44871 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
   44caa:	48 c7 45 a8 3b 5b 04 	movq   $0x45b3b,-0x58(%rbp)
   44cb1:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
   44cb2:	41 f6 c5 10          	test   $0x10,%r13b
   44cb6:	0f 85 b5 fb ff ff    	jne    44871 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
   44cbc:	41 f6 c5 08          	test   $0x8,%r13b
   44cc0:	ba b8 51 04 00       	mov    $0x451b8,%edx
   44cc5:	b8 5e 54 04 00       	mov    $0x4545e,%eax
   44cca:	48 0f 44 c2          	cmove  %rdx,%rax
   44cce:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   44cd2:	e9 9a fb ff ff       	jmpq   44871 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
   44cd7:	41 8d 41 10          	lea    0x10(%r9),%eax
   44cdb:	a9 df ff ff ff       	test   $0xffffffdf,%eax
   44ce0:	0f 85 8b fb ff ff    	jne    44871 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
   44ce6:	4d 85 c0             	test   %r8,%r8
   44ce9:	75 0d                	jne    44cf8 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
   44ceb:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
   44cf2:	0f 84 79 fb ff ff    	je     44871 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
   44cf8:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
   44cfc:	ba 38 5b 04 00       	mov    $0x45b38,%edx
   44d01:	b8 3f 5b 04 00       	mov    $0x45b3f,%eax
   44d06:	48 0f 44 c2          	cmove  %rdx,%rax
   44d0a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   44d0e:	e9 5e fb ff ff       	jmpq   44871 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
   44d13:	48 89 df             	mov    %rbx,%rdi
   44d16:	e8 cd f7 ff ff       	callq  444e8 <strlen>
   44d1b:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
   44d1e:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   44d22:	0f 84 76 fb ff ff    	je     4489e <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
   44d28:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
   44d2c:	0f 84 6c fb ff ff    	je     4489e <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
   44d32:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   44d35:	89 ca                	mov    %ecx,%edx
   44d37:	29 c2                	sub    %eax,%edx
   44d39:	39 c1                	cmp    %eax,%ecx
   44d3b:	b8 00 00 00 00       	mov    $0x0,%eax
   44d40:	0f 4f c2             	cmovg  %edx,%eax
   44d43:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   44d46:	e9 69 fb ff ff       	jmpq   448b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
   44d4b:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   44d4f:	e8 94 f7 ff ff       	callq  444e8 <strlen>
   44d54:	8b 75 a0             	mov    -0x60(%rbp),%esi
   44d57:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
   44d5a:	8b 7d 98             	mov    -0x68(%rbp),%edi
   44d5d:	89 f9                	mov    %edi,%ecx
   44d5f:	29 f1                	sub    %esi,%ecx
   44d61:	29 c1                	sub    %eax,%ecx
   44d63:	39 fa                	cmp    %edi,%edx
   44d65:	b8 00 00 00 00       	mov    $0x0,%eax
   44d6a:	0f 4c c1             	cmovl  %ecx,%eax
   44d6d:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   44d70:	e9 3f fb ff ff       	jmpq   448b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
   44d75:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
   44d78:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   44d7b:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44d7f:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44d83:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   44d89:	e9 a4 fa ff ff       	jmpq   44832 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
   44d8e:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   44d94:	e9 a4 f8 ff ff       	jmpq   4463d <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
   44d99:	8d 50 bd             	lea    -0x43(%rax),%edx
   44d9c:	80 fa 35             	cmp    $0x35,%dl
   44d9f:	77 d7                	ja     44d78 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
   44da1:	0f b6 d2             	movzbl %dl,%edx
   44da4:	3e ff 24 d5 60 60 04 	notrack jmpq *0x46060(,%rdx,8)
   44dab:	00 
        }
    }
}
   44dac:	48 83 c4 58          	add    $0x58,%rsp
   44db0:	5b                   	pop    %rbx
   44db1:	41 5c                	pop    %r12
   44db3:	41 5d                	pop    %r13
   44db5:	41 5e                	pop    %r14
   44db7:	41 5f                	pop    %r15
   44db9:	5d                   	pop    %rbp
   44dba:	c3                   	retq   

0000000000044dbb <console_clear()>:


// console_clear
//    Erases the console and moves the cursor to the upper left (CPOS(0, 0)).

void console_clear() {
   44dbb:	f3 0f 1e fa          	endbr64 
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   44dbf:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   44dc4:	ba a0 8f 0b 00       	mov    $0xb8fa0,%edx
        console[i] = ' ' | 0x0700;
   44dc9:	66 c7 00 20 07       	movw   $0x720,(%rax)
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   44dce:	48 83 c0 02          	add    $0x2,%rax
   44dd2:	48 39 d0             	cmp    %rdx,%rax
   44dd5:	75 f2                	jne    44dc9 <console_clear()+0xe>
    }
    cursorpos = 0;
   44dd7:	c7 05 1b 42 07 00 00 	movl   $0x0,0x7421b(%rip)        # b8ffc <cursorpos>
   44dde:	00 00 00 
}
   44de1:	c3                   	retq   

0000000000044de2 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
   44de2:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
   44de6:	48 c7 07 c8 62 04 00 	movq   $0x462c8,(%rdi)
   44ded:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   44df4:	00 
   44df5:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
   44df8:	85 f6                	test   %esi,%esi
   44dfa:	78 18                	js     44e14 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44dfc:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
   44e02:	7f 0f                	jg     44e13 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
   44e04:	48 63 f6             	movslq %esi,%rsi
   44e07:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
   44e0e:	00 
   44e0f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
   44e13:	c3                   	retq   
        cell_ += cursorpos;
   44e14:	8b 05 e2 41 07 00    	mov    0x741e2(%rip),%eax        # b8ffc <cursorpos>
   44e1a:	48 98                	cltq   
   44e1c:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
   44e23:	00 
   44e24:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44e28:	c3                   	retq   
   44e29:	90                   	nop

0000000000044e2a <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
   44e2a:	f3 0f 1e fa          	endbr64 
   44e2e:	55                   	push   %rbp
   44e2f:	48 89 e5             	mov    %rsp,%rbp
   44e32:	53                   	push   %rbx
   44e33:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   44e37:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
   44e3e:	00 
   44e3f:	72 18                	jb     44e59 <console_printer::scroll()+0x2f>
   44e41:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
   44e44:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   44e48:	75 28                	jne    44e72 <console_printer::scroll()+0x48>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
   44e4a:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   44e51:	00 
    }
}
   44e52:	48 83 c4 08          	add    $0x8,%rsp
   44e56:	5b                   	pop    %rbx
   44e57:	5d                   	pop    %rbp
   44e58:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   44e59:	b9 00 00 00 00       	mov    $0x0,%ecx
   44e5e:	ba 58 62 04 00       	mov    $0x46258,%edx
   44e63:	be 2c 02 00 00       	mov    $0x22c,%esi
   44e68:	bf 31 5b 04 00       	mov    $0x45b31,%edi
   44e6d:	e8 49 dc ff ff       	callq  42abb <assert_fail(char const*, int, char const*, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
   44e72:	ba 00 0f 00 00       	mov    $0xf00,%edx
   44e77:	be a0 80 0b 00       	mov    $0xb80a0,%esi
   44e7c:	bf 00 80 0b 00       	mov    $0xb8000,%edi
   44e81:	e8 f5 f5 ff ff       	callq  4447b <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
   44e86:	ba a0 00 00 00       	mov    $0xa0,%edx
   44e8b:	be 00 00 00 00       	mov    $0x0,%esi
   44e90:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
   44e95:	e8 2e f6 ff ff       	callq  444c8 <memset>
        cell_ -= CONSOLE_COLUMNS;
   44e9a:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
   44ea1:	00 
   44ea2:	eb ae                	jmp    44e52 <console_printer::scroll()+0x28>

0000000000044ea4 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
   44ea4:	f3 0f 1e fa          	endbr64 
   44ea8:	55                   	push   %rbp
   44ea9:	48 89 e5             	mov    %rsp,%rbp
   44eac:	41 55                	push   %r13
   44eae:	41 54                	push   %r12
   44eb0:	53                   	push   %rbx
   44eb1:	48 83 ec 08          	sub    $0x8,%rsp
   44eb5:	48 89 fb             	mov    %rdi,%rbx
   44eb8:	41 89 f5             	mov    %esi,%r13d
   44ebb:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44ebe:	48 8b 47 08          	mov    0x8(%rdi),%rax
   44ec2:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   44ec8:	72 14                	jb     44ede <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
   44eca:	48 89 df             	mov    %rbx,%rdi
   44ecd:	e8 58 ff ff ff       	callq  44e2a <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44ed2:	48 8b 43 08          	mov    0x8(%rbx),%rax
   44ed6:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   44edc:	73 ec                	jae    44eca <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
   44ede:	41 80 fd 0a          	cmp    $0xa,%r13b
   44ee2:	74 1e                	je     44f02 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
   44ee4:	48 8d 50 02          	lea    0x2(%rax),%rdx
   44ee8:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   44eec:	45 0f b6 ed          	movzbl %r13b,%r13d
   44ef0:	45 09 ec             	or     %r13d,%r12d
   44ef3:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
   44ef7:	48 83 c4 08          	add    $0x8,%rsp
   44efb:	5b                   	pop    %rbx
   44efc:	41 5c                	pop    %r12
   44efe:	41 5d                	pop    %r13
   44f00:	5d                   	pop    %rbp
   44f01:	c3                   	retq   
        int pos = (cell_ - console) % 80;
   44f02:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44f08:	48 89 c1             	mov    %rax,%rcx
   44f0b:	48 89 c6             	mov    %rax,%rsi
   44f0e:	48 d1 fe             	sar    %rsi
   44f11:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
   44f18:	66 66 66 
   44f1b:	48 89 f0             	mov    %rsi,%rax
   44f1e:	48 f7 ea             	imul   %rdx
   44f21:	48 c1 fa 05          	sar    $0x5,%rdx
   44f25:	48 89 c8             	mov    %rcx,%rax
   44f28:	48 c1 f8 3f          	sar    $0x3f,%rax
   44f2c:	48 29 c2             	sub    %rax,%rdx
   44f2f:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
   44f33:	48 c1 e0 04          	shl    $0x4,%rax
   44f37:	89 f2                	mov    %esi,%edx
   44f39:	29 c2                	sub    %eax,%edx
   44f3b:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
   44f3d:	41 83 cc 20          	or     $0x20,%r12d
   44f41:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
   44f45:	48 8d 71 02          	lea    0x2(%rcx),%rsi
   44f49:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   44f4d:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
   44f51:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
   44f54:	83 f8 50             	cmp    $0x50,%eax
   44f57:	75 e8                	jne    44f41 <console_printer::putc(unsigned char, int)+0x9d>
   44f59:	eb 9c                	jmp    44ef7 <console_printer::putc(unsigned char, int)+0x53>
   44f5b:	90                   	nop

0000000000044f5c <console_printer::move_cursor()>:
void console_printer::move_cursor() {
   44f5c:	f3 0f 1e fa          	endbr64 
   44f60:	55                   	push   %rbp
   44f61:	48 89 e5             	mov    %rsp,%rbp
    cursorpos = cell_ - console;
   44f64:	48 8b 47 08          	mov    0x8(%rdi),%rax
   44f68:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44f6e:	48 d1 f8             	sar    %rax
   44f71:	89 05 85 40 07 00    	mov    %eax,0x74085(%rip)        # b8ffc <cursorpos>
    console_show_cursor(cursorpos);
   44f77:	8b 3d 7f 40 07 00    	mov    0x7407f(%rip),%edi        # b8ffc <cursorpos>
   44f7d:	e8 57 d6 ff ff       	callq  425d9 <console_show_cursor(int)>
}
   44f82:	5d                   	pop    %rbp
   44f83:	c3                   	retq   

0000000000044f84 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
   44f84:	f3 0f 1e fa          	endbr64 
   44f88:	55                   	push   %rbp
   44f89:	48 89 e5             	mov    %rsp,%rbp
   44f8c:	41 56                	push   %r14
   44f8e:	41 55                	push   %r13
   44f90:	41 54                	push   %r12
   44f92:	53                   	push   %rbx
   44f93:	48 83 ec 20          	sub    $0x20,%rsp
   44f97:	89 fb                	mov    %edi,%ebx
   44f99:	41 89 f4             	mov    %esi,%r12d
   44f9c:	49 89 d5             	mov    %rdx,%r13
   44f9f:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
   44fa2:	89 fa                	mov    %edi,%edx
   44fa4:	c1 ea 1f             	shr    $0x1f,%edx
   44fa7:	89 fe                	mov    %edi,%esi
   44fa9:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44fad:	e8 30 fe ff ff       	callq  44de2 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
   44fb2:	4c 89 f1             	mov    %r14,%rcx
   44fb5:	4c 89 ea             	mov    %r13,%rdx
   44fb8:	44 89 e6             	mov    %r12d,%esi
   44fbb:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44fbf:	e8 fe f5 ff ff       	callq  445c2 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
   44fc4:	85 db                	test   %ebx,%ebx
   44fc6:	78 1a                	js     44fe2 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
   44fc8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   44fcc:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44fd2:	48 d1 f8             	sar    %rax
}
   44fd5:	48 83 c4 20          	add    $0x20,%rsp
   44fd9:	5b                   	pop    %rbx
   44fda:	41 5c                	pop    %r12
   44fdc:	41 5d                	pop    %r13
   44fde:	41 5e                	pop    %r14
   44fe0:	5d                   	pop    %rbp
   44fe1:	c3                   	retq   
        cp.move_cursor();
   44fe2:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44fe6:	e8 71 ff ff ff       	callq  44f5c <console_printer::move_cursor()>
   44feb:	eb db                	jmp    44fc8 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000044fed <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
   44fed:	f3 0f 1e fa          	endbr64 
   44ff1:	55                   	push   %rbp
   44ff2:	48 89 e5             	mov    %rsp,%rbp
   44ff5:	48 83 ec 50          	sub    $0x50,%rsp
   44ff9:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   44ffd:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   45001:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   45005:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   4500c:	48 8d 45 10          	lea    0x10(%rbp),%rax
   45010:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   45014:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   45018:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
   4501c:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   45020:	e8 5f ff ff ff       	callq  44f84 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   45025:	c9                   	leaveq 
   45026:	c3                   	retq   

0000000000045027 <error_printf(int, int, char const*, ...)>:


// k-hardware.cc/u-lib.cc supply error_vprintf

__noinline
int error_printf(int cpos, int color, const char* format, ...) {
   45027:	f3 0f 1e fa          	endbr64 
   4502b:	55                   	push   %rbp
   4502c:	48 89 e5             	mov    %rsp,%rbp
   4502f:	48 83 ec 50          	sub    $0x50,%rsp
   45033:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   45037:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   4503b:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   4503f:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   45046:	48 8d 45 10          	lea    0x10(%rbp),%rax
   4504a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4504e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   45052:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = error_vprintf(cpos, color, format, val);
   45056:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   4505a:	e8 f7 d8 ff ff       	callq  42956 <error_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   4505f:	c9                   	leaveq 
   45060:	c3                   	retq   

0000000000045061 <error_printf(char const*, ...)>:
    error_vprintf(-1, color, format, val);
    va_end(val);
}

__noinline
void error_printf(const char* format, ...) {
   45061:	f3 0f 1e fa          	endbr64 
   45065:	55                   	push   %rbp
   45066:	48 89 e5             	mov    %rsp,%rbp
   45069:	48 83 ec 50          	sub    $0x50,%rsp
   4506d:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   45071:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   45075:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   45079:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   4507d:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   45081:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   45088:	48 8d 45 10          	lea    0x10(%rbp),%rax
   4508c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   45090:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   45094:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
   45098:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   4509c:	48 89 fa             	mov    %rdi,%rdx
   4509f:	be 00 c0 00 00       	mov    $0xc000,%esi
   450a4:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   450a9:	e8 a8 d8 ff ff       	callq  42956 <error_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
}
   450ae:	c9                   	leaveq 
   450af:	c3                   	retq   
