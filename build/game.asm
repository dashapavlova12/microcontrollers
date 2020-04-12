build/game.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00002410  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00002658  080024d0  080024d0  000124d0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08004b28  08004b28  00014b28  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08004b30  08004b30  00014b30  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             0000080c  20000000  08004b34  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000498  2000080c  08005340  0002080c  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000ca4  08005340  00020ca4  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  0002080c  2**0  CONTENTS, READONLY
  9 .debug_info       00009f0b  00000000  00000000  00020834  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     000012da  00000000  00000000  0002a73f  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00007f1e  00000000  00000000  0002ba19  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000260  00000000  00000000  00033937  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     000021f0  00000000  00000000  00033b97  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00006397  00000000  00000000  00035d87  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000013d1  00000000  00000000  0003c11e  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          00000075  00000000  00000000  0003d4ef  2**0  CONTENTS, READONLY
 17 .debug_frame      00000928  00000000  00000000  0003d564  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	2000080c 	.word	0x2000080c
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080024b8 	.word	0x080024b8

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000810 	.word	0x20000810
 8000104:	080024b8 	.word	0x080024b8

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 f827 	bl	800029c <SystemInit>
 800024e:	f002 f831 	bl	80022b4 <__libc_init_array>
 8000252:	f000 f80f 	bl	8000274 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	2000080c 	.word	0x2000080c
 8000264:	08004b34 	.word	0x08004b34
 8000268:	2000080c 	.word	0x2000080c
 800026c:	20000ca4 	.word	0x20000ca4

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <main>:
 8000274:	b510      	push	{r4, lr}
 8000276:	f000 fdf7 	bl	8000e68 <initializeAll>
 800027a:	2200      	movs	r2, #0
 800027c:	4b06      	ldr	r3, [pc, #24]	; (8000298 <main+0x24>)
 800027e:	701a      	strb	r2, [r3, #0]
 8000280:	f000 fa22 	bl	80006c8 <startScreen>
 8000284:	f000 f8b8 	bl	80003f8 <initModels>
 8000288:	f000 fa56 	bl	8000738 <countdown>
 800028c:	f000 f952 	bl	8000534 <game>
 8000290:	f000 faa0 	bl	80007d4 <endGame>
 8000294:	e7f6      	b.n	8000284 <main+0x10>
 8000296:	46c0      	nop			; (mov r8, r8)
 8000298:	20000c3c 	.word	0x20000c3c

0800029c <SystemInit>:
 800029c:	2101      	movs	r1, #1
 800029e:	4b11      	ldr	r3, [pc, #68]	; (80002e4 <SystemInit+0x48>)
 80002a0:	4811      	ldr	r0, [pc, #68]	; (80002e8 <SystemInit+0x4c>)
 80002a2:	681a      	ldr	r2, [r3, #0]
 80002a4:	430a      	orrs	r2, r1
 80002a6:	601a      	str	r2, [r3, #0]
 80002a8:	685a      	ldr	r2, [r3, #4]
 80002aa:	4002      	ands	r2, r0
 80002ac:	605a      	str	r2, [r3, #4]
 80002ae:	681a      	ldr	r2, [r3, #0]
 80002b0:	480e      	ldr	r0, [pc, #56]	; (80002ec <SystemInit+0x50>)
 80002b2:	4002      	ands	r2, r0
 80002b4:	601a      	str	r2, [r3, #0]
 80002b6:	681a      	ldr	r2, [r3, #0]
 80002b8:	480d      	ldr	r0, [pc, #52]	; (80002f0 <SystemInit+0x54>)
 80002ba:	4002      	ands	r2, r0
 80002bc:	601a      	str	r2, [r3, #0]
 80002be:	685a      	ldr	r2, [r3, #4]
 80002c0:	480c      	ldr	r0, [pc, #48]	; (80002f4 <SystemInit+0x58>)
 80002c2:	4002      	ands	r2, r0
 80002c4:	200f      	movs	r0, #15
 80002c6:	605a      	str	r2, [r3, #4]
 80002c8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80002ca:	4382      	bics	r2, r0
 80002cc:	62da      	str	r2, [r3, #44]	; 0x2c
 80002ce:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80002d0:	4809      	ldr	r0, [pc, #36]	; (80002f8 <SystemInit+0x5c>)
 80002d2:	4002      	ands	r2, r0
 80002d4:	631a      	str	r2, [r3, #48]	; 0x30
 80002d6:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80002d8:	438a      	bics	r2, r1
 80002da:	635a      	str	r2, [r3, #52]	; 0x34
 80002dc:	2200      	movs	r2, #0
 80002de:	609a      	str	r2, [r3, #8]
 80002e0:	4770      	bx	lr
 80002e2:	46c0      	nop			; (mov r8, r8)
 80002e4:	40021000 	.word	0x40021000
 80002e8:	f8ffb80c 	.word	0xf8ffb80c
 80002ec:	fef6ffff 	.word	0xfef6ffff
 80002f0:	fffbffff 	.word	0xfffbffff
 80002f4:	ffc0ffff 	.word	0xffc0ffff
 80002f8:	fffffeac 	.word	0xfffffeac

080002fc <get_pix>:
 80002fc:	0083      	lsls	r3, r0, #2
 80002fe:	181b      	adds	r3, r3, r0
 8000300:	4803      	ldr	r0, [pc, #12]	; (8000310 <get_pix+0x14>)
 8000302:	18c0      	adds	r0, r0, r3
 8000304:	5c43      	ldrb	r3, [r0, r1]
 8000306:	2001      	movs	r0, #1
 8000308:	4113      	asrs	r3, r2
 800030a:	4018      	ands	r0, r3
 800030c:	4770      	bx	lr
 800030e:	46c0      	nop			; (mov r8, r8)
 8000310:	080024d0 	.word	0x080024d0

08000314 <checkCrash>:
 8000314:	4b36      	ldr	r3, [pc, #216]	; (80003f0 <checkCrash+0xdc>)
 8000316:	8801      	ldrh	r1, [r0, #0]
 8000318:	881a      	ldrh	r2, [r3, #0]
 800031a:	b209      	sxth	r1, r1
 800031c:	b212      	sxth	r2, r2
 800031e:	4291      	cmp	r1, r2
 8000320:	db17      	blt.n	8000352 <checkCrash+0x3e>
 8000322:	8801      	ldrh	r1, [r0, #0]
 8000324:	881a      	ldrh	r2, [r3, #0]
 8000326:	b209      	sxth	r1, r1
 8000328:	b212      	sxth	r2, r2
 800032a:	321d      	adds	r2, #29
 800032c:	4291      	cmp	r1, r2
 800032e:	dc10      	bgt.n	8000352 <checkCrash+0x3e>
 8000330:	8841      	ldrh	r1, [r0, #2]
 8000332:	885a      	ldrh	r2, [r3, #2]
 8000334:	b209      	sxth	r1, r1
 8000336:	b212      	sxth	r2, r2
 8000338:	4291      	cmp	r1, r2
 800033a:	db0a      	blt.n	8000352 <checkCrash+0x3e>
 800033c:	8841      	ldrh	r1, [r0, #2]
 800033e:	885a      	ldrh	r2, [r3, #2]
 8000340:	b209      	sxth	r1, r1
 8000342:	b212      	sxth	r2, r2
 8000344:	320e      	adds	r2, #14
 8000346:	4291      	cmp	r1, r2
 8000348:	dc03      	bgt.n	8000352 <checkCrash+0x3e>
 800034a:	2204      	movs	r2, #4
 800034c:	4b29      	ldr	r3, [pc, #164]	; (80003f4 <checkCrash+0xe0>)
 800034e:	701a      	strb	r2, [r3, #0]
 8000350:	4770      	bx	lr
 8000352:	8802      	ldrh	r2, [r0, #0]
 8000354:	8819      	ldrh	r1, [r3, #0]
 8000356:	b212      	sxth	r2, r2
 8000358:	b209      	sxth	r1, r1
 800035a:	321d      	adds	r2, #29
 800035c:	428a      	cmp	r2, r1
 800035e:	db12      	blt.n	8000386 <checkCrash+0x72>
 8000360:	8801      	ldrh	r1, [r0, #0]
 8000362:	881a      	ldrh	r2, [r3, #0]
 8000364:	b209      	sxth	r1, r1
 8000366:	b212      	sxth	r2, r2
 8000368:	4291      	cmp	r1, r2
 800036a:	dc0c      	bgt.n	8000386 <checkCrash+0x72>
 800036c:	8841      	ldrh	r1, [r0, #2]
 800036e:	885a      	ldrh	r2, [r3, #2]
 8000370:	b209      	sxth	r1, r1
 8000372:	b212      	sxth	r2, r2
 8000374:	4291      	cmp	r1, r2
 8000376:	db06      	blt.n	8000386 <checkCrash+0x72>
 8000378:	8841      	ldrh	r1, [r0, #2]
 800037a:	885a      	ldrh	r2, [r3, #2]
 800037c:	b209      	sxth	r1, r1
 800037e:	b212      	sxth	r2, r2
 8000380:	320e      	adds	r2, #14
 8000382:	4291      	cmp	r1, r2
 8000384:	dde1      	ble.n	800034a <checkCrash+0x36>
 8000386:	8802      	ldrh	r2, [r0, #0]
 8000388:	8819      	ldrh	r1, [r3, #0]
 800038a:	b212      	sxth	r2, r2
 800038c:	b209      	sxth	r1, r1
 800038e:	321d      	adds	r2, #29
 8000390:	428a      	cmp	r2, r1
 8000392:	db12      	blt.n	80003ba <checkCrash+0xa6>
 8000394:	8801      	ldrh	r1, [r0, #0]
 8000396:	881a      	ldrh	r2, [r3, #0]
 8000398:	b209      	sxth	r1, r1
 800039a:	b212      	sxth	r2, r2
 800039c:	4291      	cmp	r1, r2
 800039e:	dc0c      	bgt.n	80003ba <checkCrash+0xa6>
 80003a0:	8842      	ldrh	r2, [r0, #2]
 80003a2:	8859      	ldrh	r1, [r3, #2]
 80003a4:	b212      	sxth	r2, r2
 80003a6:	b209      	sxth	r1, r1
 80003a8:	320e      	adds	r2, #14
 80003aa:	428a      	cmp	r2, r1
 80003ac:	db05      	blt.n	80003ba <checkCrash+0xa6>
 80003ae:	8841      	ldrh	r1, [r0, #2]
 80003b0:	885a      	ldrh	r2, [r3, #2]
 80003b2:	b209      	sxth	r1, r1
 80003b4:	b212      	sxth	r2, r2
 80003b6:	4291      	cmp	r1, r2
 80003b8:	ddc7      	ble.n	800034a <checkCrash+0x36>
 80003ba:	8801      	ldrh	r1, [r0, #0]
 80003bc:	881a      	ldrh	r2, [r3, #0]
 80003be:	b209      	sxth	r1, r1
 80003c0:	b212      	sxth	r2, r2
 80003c2:	4291      	cmp	r1, r2
 80003c4:	dbc4      	blt.n	8000350 <checkCrash+0x3c>
 80003c6:	8801      	ldrh	r1, [r0, #0]
 80003c8:	881a      	ldrh	r2, [r3, #0]
 80003ca:	b209      	sxth	r1, r1
 80003cc:	b212      	sxth	r2, r2
 80003ce:	321d      	adds	r2, #29
 80003d0:	4291      	cmp	r1, r2
 80003d2:	dcbd      	bgt.n	8000350 <checkCrash+0x3c>
 80003d4:	8842      	ldrh	r2, [r0, #2]
 80003d6:	8859      	ldrh	r1, [r3, #2]
 80003d8:	b212      	sxth	r2, r2
 80003da:	b209      	sxth	r1, r1
 80003dc:	320e      	adds	r2, #14
 80003de:	428a      	cmp	r2, r1
 80003e0:	dbb6      	blt.n	8000350 <checkCrash+0x3c>
 80003e2:	8842      	ldrh	r2, [r0, #2]
 80003e4:	885b      	ldrh	r3, [r3, #2]
 80003e6:	b212      	sxth	r2, r2
 80003e8:	b21b      	sxth	r3, r3
 80003ea:	429a      	cmp	r2, r3
 80003ec:	dcb0      	bgt.n	8000350 <checkCrash+0x3c>
 80003ee:	e7ac      	b.n	800034a <checkCrash+0x36>
 80003f0:	20000c70 	.word	0x20000c70
 80003f4:	20000c3c 	.word	0x20000c3c

080003f8 <initModels>:
 80003f8:	b570      	push	{r4, r5, r6, lr}
 80003fa:	2200      	movs	r2, #0
 80003fc:	2580      	movs	r5, #128	; 0x80
 80003fe:	2400      	movs	r4, #0
 8000400:	20e6      	movs	r0, #230	; 0xe6
 8000402:	490a      	ldr	r1, [pc, #40]	; (800042c <initModels+0x34>)
 8000404:	4e0a      	ldr	r6, [pc, #40]	; (8000430 <initModels+0x38>)
 8000406:	0053      	lsls	r3, r2, #1
 8000408:	189b      	adds	r3, r3, r2
 800040a:	009b      	lsls	r3, r3, #2
 800040c:	52cd      	strh	r5, [r1, r3]
 800040e:	3201      	adds	r2, #1
 8000410:	18cb      	adds	r3, r1, r3
 8000412:	805c      	strh	r4, [r3, #2]
 8000414:	8098      	strh	r0, [r3, #4]
 8000416:	609e      	str	r6, [r3, #8]
 8000418:	2a04      	cmp	r2, #4
 800041a:	d1f4      	bne.n	8000406 <initModels+0xe>
 800041c:	4b05      	ldr	r3, [pc, #20]	; (8000434 <initModels+0x3c>)
 800041e:	325b      	adds	r2, #91	; 0x5b
 8000420:	801a      	strh	r2, [r3, #0]
 8000422:	3a46      	subs	r2, #70	; 0x46
 8000424:	805a      	strh	r2, [r3, #2]
 8000426:	4a04      	ldr	r2, [pc, #16]	; (8000438 <initModels+0x40>)
 8000428:	605a      	str	r2, [r3, #4]
 800042a:	bd70      	pop	{r4, r5, r6, pc}
 800042c:	20000c40 	.word	0x20000c40
 8000430:	20000014 	.word	0x20000014
 8000434:	20000c70 	.word	0x20000c70
 8000438:	20000248 	.word	0x20000248

0800043c <pauseGame>:
 800043c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800043e:	46c6      	mov	lr, r8
 8000440:	b500      	push	{lr}
 8000442:	2103      	movs	r1, #3
 8000444:	b084      	sub	sp, #16
 8000446:	2004      	movs	r0, #4
 8000448:	f001 f91a 	bl	8001680 <oledSetCursor>
 800044c:	2303      	movs	r3, #3
 800044e:	2500      	movs	r5, #0
 8000450:	4c31      	ldr	r4, [pc, #196]	; (8000518 <pauseGame+0xdc>)
 8000452:	223c      	movs	r2, #60	; 0x3c
 8000454:	7023      	strb	r3, [r4, #0]
 8000456:	33fc      	adds	r3, #252	; 0xfc
 8000458:	2105      	movs	r1, #5
 800045a:	9501      	str	r5, [sp, #4]
 800045c:	9300      	str	r3, [sp, #0]
 800045e:	201c      	movs	r0, #28
 8000460:	3bc5      	subs	r3, #197	; 0xc5
 8000462:	f000 fd55 	bl	8000f10 <drawRec>
 8000466:	482d      	ldr	r0, [pc, #180]	; (800051c <pauseGame+0xe0>)
 8000468:	f001 ff18 	bl	800229c <xprintf>
 800046c:	2102      	movs	r1, #2
 800046e:	2005      	movs	r0, #5
 8000470:	f001 f906 	bl	8001680 <oledSetCursor>
 8000474:	482a      	ldr	r0, [pc, #168]	; (8000520 <pauseGame+0xe4>)
 8000476:	f001 ff11 	bl	800229c <xprintf>
 800047a:	f001 f871 	bl	8001560 <oledUpdate>
 800047e:	7025      	strb	r5, [r4, #0]
 8000480:	4d28      	ldr	r5, [pc, #160]	; (8000524 <pauseGame+0xe8>)
 8000482:	782b      	ldrb	r3, [r5, #0]
 8000484:	2b03      	cmp	r3, #3
 8000486:	d0fc      	beq.n	8000482 <pauseGame+0x46>
 8000488:	4b27      	ldr	r3, [pc, #156]	; (8000528 <pauseGame+0xec>)
 800048a:	2480      	movs	r4, #128	; 0x80
 800048c:	2603      	movs	r6, #3
 800048e:	4698      	mov	r8, r3
 8000490:	05e4      	lsls	r4, r4, #23
 8000492:	782b      	ldrb	r3, [r5, #0]
 8000494:	2b01      	cmp	r3, #1
 8000496:	d139      	bne.n	800050c <pauseGame+0xd0>
 8000498:	2300      	movs	r3, #0
 800049a:	9301      	str	r3, [sp, #4]
 800049c:	33ff      	adds	r3, #255	; 0xff
 800049e:	223c      	movs	r2, #60	; 0x3c
 80004a0:	9300      	str	r3, [sp, #0]
 80004a2:	2105      	movs	r1, #5
 80004a4:	3bc5      	subs	r3, #197	; 0xc5
 80004a6:	201c      	movs	r0, #28
 80004a8:	f000 fd32 	bl	8000f10 <drawRec>
 80004ac:	2105      	movs	r1, #5
 80004ae:	2004      	movs	r0, #4
 80004b0:	f001 f8e6 	bl	8001680 <oledSetCursor>
 80004b4:	4640      	mov	r0, r8
 80004b6:	0031      	movs	r1, r6
 80004b8:	f001 fef0 	bl	800229c <xprintf>
 80004bc:	27fa      	movs	r7, #250	; 0xfa
 80004be:	f001 f84f 	bl	8001560 <oledUpdate>
 80004c2:	2296      	movs	r2, #150	; 0x96
 80004c4:	4819      	ldr	r0, [pc, #100]	; (800052c <pauseGame+0xf0>)
 80004c6:	00d2      	lsls	r2, r2, #3
 80004c8:	00bf      	lsls	r7, r7, #2
 80004ca:	0013      	movs	r3, r2
 80004cc:	3364      	adds	r3, #100	; 0x64
 80004ce:	62a3      	str	r3, [r4, #40]	; 0x28
 80004d0:	9703      	str	r7, [sp, #12]
 80004d2:	9b03      	ldr	r3, [sp, #12]
 80004d4:	1e59      	subs	r1, r3, #1
 80004d6:	9103      	str	r1, [sp, #12]
 80004d8:	2b00      	cmp	r3, #0
 80004da:	d008      	beq.n	80004ee <pauseGame+0xb2>
 80004dc:	9b03      	ldr	r3, [sp, #12]
 80004de:	08db      	lsrs	r3, r3, #3
 80004e0:	1ad3      	subs	r3, r2, r3
 80004e2:	62a3      	str	r3, [r4, #40]	; 0x28
 80004e4:	9b03      	ldr	r3, [sp, #12]
 80004e6:	1e59      	subs	r1, r3, #1
 80004e8:	9103      	str	r1, [sp, #12]
 80004ea:	2b00      	cmp	r3, #0
 80004ec:	d1f6      	bne.n	80004dc <pauseGame+0xa0>
 80004ee:	3a02      	subs	r2, #2
 80004f0:	4282      	cmp	r2, r0
 80004f2:	d1ea      	bne.n	80004ca <pauseGame+0x8e>
 80004f4:	2300      	movs	r3, #0
 80004f6:	62a3      	str	r3, [r4, #40]	; 0x28
 80004f8:	4b0d      	ldr	r3, [pc, #52]	; (8000530 <pauseGame+0xf4>)
 80004fa:	9302      	str	r3, [sp, #8]
 80004fc:	9b02      	ldr	r3, [sp, #8]
 80004fe:	1e5a      	subs	r2, r3, #1
 8000500:	9202      	str	r2, [sp, #8]
 8000502:	2b00      	cmp	r3, #0
 8000504:	d1fa      	bne.n	80004fc <pauseGame+0xc0>
 8000506:	3e01      	subs	r6, #1
 8000508:	2e00      	cmp	r6, #0
 800050a:	d1c2      	bne.n	8000492 <pauseGame+0x56>
 800050c:	2302      	movs	r3, #2
 800050e:	702b      	strb	r3, [r5, #0]
 8000510:	b004      	add	sp, #16
 8000512:	bc04      	pop	{r2}
 8000514:	4690      	mov	r8, r2
 8000516:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000518:	20000831 	.word	0x20000831
 800051c:	08004a14 	.word	0x08004a14
 8000520:	08004a1c 	.word	0x08004a1c
 8000524:	20000c3c 	.word	0x20000c3c
 8000528:	08004a24 	.word	0x08004a24
 800052c:	000002ba 	.word	0x000002ba
 8000530:	001e8480 	.word	0x001e8480

08000534 <game>:
 8000534:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000536:	2303      	movs	r3, #3
 8000538:	46de      	mov	lr, fp
 800053a:	4657      	mov	r7, sl
 800053c:	464e      	mov	r6, r9
 800053e:	4645      	mov	r5, r8
 8000540:	4a5c      	ldr	r2, [pc, #368]	; (80006b4 <game+0x180>)
 8000542:	b5e0      	push	{r5, r6, r7, lr}
 8000544:	7013      	strb	r3, [r2, #0]
 8000546:	4b5c      	ldr	r3, [pc, #368]	; (80006b8 <game+0x184>)
 8000548:	b085      	sub	sp, #20
 800054a:	469b      	mov	fp, r3
 800054c:	2300      	movs	r3, #0
 800054e:	465a      	mov	r2, fp
 8000550:	6013      	str	r3, [r2, #0]
 8000552:	4b5a      	ldr	r3, [pc, #360]	; (80006bc <game+0x188>)
 8000554:	781b      	ldrb	r3, [r3, #0]
 8000556:	2b04      	cmp	r3, #4
 8000558:	d100      	bne.n	800055c <game+0x28>
 800055a:	e09d      	b.n	8000698 <game+0x164>
 800055c:	2301      	movs	r3, #1
 800055e:	9303      	str	r3, [sp, #12]
 8000560:	4b57      	ldr	r3, [pc, #348]	; (80006c0 <game+0x18c>)
 8000562:	4e58      	ldr	r6, [pc, #352]	; (80006c4 <game+0x190>)
 8000564:	469a      	mov	sl, r3
 8000566:	2300      	movs	r3, #0
 8000568:	4698      	mov	r8, r3
 800056a:	4b54      	ldr	r3, [pc, #336]	; (80006bc <game+0x188>)
 800056c:	781b      	ldrb	r3, [r3, #0]
 800056e:	2b03      	cmp	r3, #3
 8000570:	d100      	bne.n	8000574 <game+0x40>
 8000572:	e09c      	b.n	80006ae <game+0x17a>
 8000574:	21fa      	movs	r1, #250	; 0xfa
 8000576:	9b03      	ldr	r3, [sp, #12]
 8000578:	0049      	lsls	r1, r1, #1
 800057a:	3301      	adds	r3, #1
 800057c:	0018      	movs	r0, r3
 800057e:	9303      	str	r3, [sp, #12]
 8000580:	f7ff fe48 	bl	8000214 <__aeabi_uidivmod>
 8000584:	2900      	cmp	r1, #0
 8000586:	d108      	bne.n	800059a <game+0x66>
 8000588:	4b4a      	ldr	r3, [pc, #296]	; (80006b4 <game+0x180>)
 800058a:	781b      	ldrb	r3, [r3, #0]
 800058c:	2b09      	cmp	r3, #9
 800058e:	d804      	bhi.n	800059a <game+0x66>
 8000590:	4a48      	ldr	r2, [pc, #288]	; (80006b4 <game+0x180>)
 8000592:	3301      	adds	r3, #1
 8000594:	7013      	strb	r3, [r2, #0]
 8000596:	2301      	movs	r3, #1
 8000598:	9303      	str	r3, [sp, #12]
 800059a:	f000 ff31 	bl	8001400 <oledFrame2>
 800059e:	2300      	movs	r3, #0
 80005a0:	001f      	movs	r7, r3
 80005a2:	007c      	lsls	r4, r7, #1
 80005a4:	19e3      	adds	r3, r4, r7
 80005a6:	4943      	ldr	r1, [pc, #268]	; (80006b4 <game+0x180>)
 80005a8:	009b      	lsls	r3, r3, #2
 80005aa:	5af0      	ldrh	r0, [r6, r3]
 80005ac:	7809      	ldrb	r1, [r1, #0]
 80005ae:	5af2      	ldrh	r2, [r6, r3]
 80005b0:	1852      	adds	r2, r2, r1
 80005b2:	b212      	sxth	r2, r2
 80005b4:	52f2      	strh	r2, [r6, r3]
 80005b6:	287f      	cmp	r0, #127	; 0x7f
 80005b8:	d80c      	bhi.n	80005d4 <game+0xa0>
 80005ba:	5af3      	ldrh	r3, [r6, r3]
 80005bc:	b21b      	sxth	r3, r3
 80005be:	2b7f      	cmp	r3, #127	; 0x7f
 80005c0:	dd08      	ble.n	80005d4 <game+0xa0>
 80005c2:	008b      	lsls	r3, r1, #2
 80005c4:	1859      	adds	r1, r3, r1
 80005c6:	465b      	mov	r3, fp
 80005c8:	681b      	ldr	r3, [r3, #0]
 80005ca:	0049      	lsls	r1, r1, #1
 80005cc:	469c      	mov	ip, r3
 80005ce:	465b      	mov	r3, fp
 80005d0:	4461      	add	r1, ip
 80005d2:	6019      	str	r1, [r3, #0]
 80005d4:	19e3      	adds	r3, r4, r7
 80005d6:	009b      	lsls	r3, r3, #2
 80005d8:	5af2      	ldrh	r2, [r6, r3]
 80005da:	b212      	sxth	r2, r2
 80005dc:	2a80      	cmp	r2, #128	; 0x80
 80005de:	dc24      	bgt.n	800062a <game+0xf6>
 80005e0:	18f2      	adds	r2, r6, r3
 80005e2:	8891      	ldrh	r1, [r2, #4]
 80005e4:	2900      	cmp	r1, #0
 80005e6:	d020      	beq.n	800062a <game+0xf6>
 80005e8:	9301      	str	r3, [sp, #4]
 80005ea:	0013      	movs	r3, r2
 80005ec:	3302      	adds	r3, #2
 80005ee:	9302      	str	r3, [sp, #8]
 80005f0:	0023      	movs	r3, r4
 80005f2:	2500      	movs	r5, #0
 80005f4:	0014      	movs	r4, r2
 80005f6:	4699      	mov	r9, r3
 80005f8:	9b01      	ldr	r3, [sp, #4]
 80005fa:	006a      	lsls	r2, r5, #1
 80005fc:	5af0      	ldrh	r0, [r6, r3]
 80005fe:	68a3      	ldr	r3, [r4, #8]
 8000600:	5c9b      	ldrb	r3, [r3, r2]
 8000602:	18c0      	adds	r0, r0, r3
 8000604:	b200      	sxth	r0, r0
 8000606:	2800      	cmp	r0, #0
 8000608:	db09      	blt.n	800061e <game+0xea>
 800060a:	9b02      	ldr	r3, [sp, #8]
 800060c:	8819      	ldrh	r1, [r3, #0]
 800060e:	68a3      	ldr	r3, [r4, #8]
 8000610:	189b      	adds	r3, r3, r2
 8000612:	785b      	ldrb	r3, [r3, #1]
 8000614:	22ff      	movs	r2, #255	; 0xff
 8000616:	18c9      	adds	r1, r1, r3
 8000618:	b209      	sxth	r1, r1
 800061a:	f001 f815 	bl	8001648 <oledSetPix>
 800061e:	3501      	adds	r5, #1
 8000620:	88a3      	ldrh	r3, [r4, #4]
 8000622:	b2ad      	uxth	r5, r5
 8000624:	429d      	cmp	r5, r3
 8000626:	d3e7      	bcc.n	80005f8 <game+0xc4>
 8000628:	464c      	mov	r4, r9
 800062a:	19e4      	adds	r4, r4, r7
 800062c:	00a4      	lsls	r4, r4, #2
 800062e:	5b33      	ldrh	r3, [r6, r4]
 8000630:	b21b      	sxth	r3, r3
 8000632:	2b41      	cmp	r3, #65	; 0x41
 8000634:	dc37      	bgt.n	80006a6 <game+0x172>
 8000636:	3701      	adds	r7, #1
 8000638:	2f04      	cmp	r7, #4
 800063a:	d1b2      	bne.n	80005a2 <game+0x6e>
 800063c:	2400      	movs	r4, #0
 800063e:	2500      	movs	r5, #0
 8000640:	b2a0      	uxth	r0, r4
 8000642:	210e      	movs	r1, #14
 8000644:	f7ff fde6 	bl	8000214 <__aeabi_uidivmod>
 8000648:	b28b      	uxth	r3, r1
 800064a:	2b00      	cmp	r3, #0
 800064c:	d103      	bne.n	8000656 <game+0x122>
 800064e:	2c00      	cmp	r4, #0
 8000650:	d001      	beq.n	8000656 <game+0x122>
 8000652:	3501      	adds	r5, #1
 8000654:	b2ad      	uxth	r5, r5
 8000656:	4652      	mov	r2, sl
 8000658:	8812      	ldrh	r2, [r2, #0]
 800065a:	2077      	movs	r0, #119	; 0x77
 800065c:	4694      	mov	ip, r2
 800065e:	4652      	mov	r2, sl
 8000660:	8852      	ldrh	r2, [r2, #2]
 8000662:	4647      	mov	r7, r8
 8000664:	4691      	mov	r9, r2
 8000666:	4652      	mov	r2, sl
 8000668:	6852      	ldr	r2, [r2, #4]
 800066a:	444b      	add	r3, r9
 800066c:	5d12      	ldrb	r2, [r2, r4]
 800066e:	b219      	sxth	r1, r3
 8000670:	4663      	mov	r3, ip
 8000672:	4290      	cmp	r0, r2
 8000674:	417f      	adcs	r7, r7
 8000676:	1958      	adds	r0, r3, r5
 8000678:	b2fa      	uxtb	r2, r7
 800067a:	b200      	sxth	r0, r0
 800067c:	f000 ffe4 	bl	8001648 <oledSetPix>
 8000680:	23cb      	movs	r3, #203	; 0xcb
 8000682:	3401      	adds	r4, #1
 8000684:	005b      	lsls	r3, r3, #1
 8000686:	429c      	cmp	r4, r3
 8000688:	d1da      	bne.n	8000640 <game+0x10c>
 800068a:	f000 ff69 	bl	8001560 <oledUpdate>
 800068e:	4b0b      	ldr	r3, [pc, #44]	; (80006bc <game+0x188>)
 8000690:	781b      	ldrb	r3, [r3, #0]
 8000692:	2b04      	cmp	r3, #4
 8000694:	d000      	beq.n	8000698 <game+0x164>
 8000696:	e768      	b.n	800056a <game+0x36>
 8000698:	b005      	add	sp, #20
 800069a:	bc3c      	pop	{r2, r3, r4, r5}
 800069c:	4690      	mov	r8, r2
 800069e:	4699      	mov	r9, r3
 80006a0:	46a2      	mov	sl, r4
 80006a2:	46ab      	mov	fp, r5
 80006a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80006a6:	1930      	adds	r0, r6, r4
 80006a8:	f7ff fe34 	bl	8000314 <checkCrash>
 80006ac:	e7c3      	b.n	8000636 <game+0x102>
 80006ae:	f7ff fec5 	bl	800043c <pauseGame>
 80006b2:	e75f      	b.n	8000574 <game+0x40>
 80006b4:	20000010 	.word	0x20000010
 80006b8:	20000828 	.word	0x20000828
 80006bc:	20000c3c 	.word	0x20000c3c
 80006c0:	20000c70 	.word	0x20000c70
 80006c4:	20000c40 	.word	0x20000c40

080006c8 <startScreen>:
 80006c8:	b510      	push	{r4, lr}
 80006ca:	2164      	movs	r1, #100	; 0x64
 80006cc:	4813      	ldr	r0, [pc, #76]	; (800071c <startScreen+0x54>)
 80006ce:	f001 f86f 	bl	80017b0 <oledPic>
 80006d2:	2102      	movs	r1, #2
 80006d4:	2001      	movs	r0, #1
 80006d6:	f000 ffd3 	bl	8001680 <oledSetCursor>
 80006da:	4811      	ldr	r0, [pc, #68]	; (8000720 <startScreen+0x58>)
 80006dc:	f001 fdde 	bl	800229c <xprintf>
 80006e0:	2303      	movs	r3, #3
 80006e2:	4c10      	ldr	r4, [pc, #64]	; (8000724 <startScreen+0x5c>)
 80006e4:	4810      	ldr	r0, [pc, #64]	; (8000728 <startScreen+0x60>)
 80006e6:	7023      	strb	r3, [r4, #0]
 80006e8:	f001 fdd8 	bl	800229c <xprintf>
 80006ec:	2103      	movs	r1, #3
 80006ee:	200b      	movs	r0, #11
 80006f0:	f000 ffc6 	bl	8001680 <oledSetCursor>
 80006f4:	23ff      	movs	r3, #255	; 0xff
 80006f6:	480d      	ldr	r0, [pc, #52]	; (800072c <startScreen+0x64>)
 80006f8:	7023      	strb	r3, [r4, #0]
 80006fa:	f001 fdcf 	bl	800229c <xprintf>
 80006fe:	2302      	movs	r3, #2
 8000700:	480b      	ldr	r0, [pc, #44]	; (8000730 <startScreen+0x68>)
 8000702:	7023      	strb	r3, [r4, #0]
 8000704:	f001 fdca 	bl	800229c <xprintf>
 8000708:	2300      	movs	r3, #0
 800070a:	7023      	strb	r3, [r4, #0]
 800070c:	f000 ff28 	bl	8001560 <oledUpdate>
 8000710:	4a08      	ldr	r2, [pc, #32]	; (8000734 <startScreen+0x6c>)
 8000712:	7813      	ldrb	r3, [r2, #0]
 8000714:	2b00      	cmp	r3, #0
 8000716:	d0fc      	beq.n	8000712 <startScreen+0x4a>
 8000718:	bd10      	pop	{r4, pc}
 800071a:	46c0      	nop			; (mov r8, r8)
 800071c:	080029ec 	.word	0x080029ec
 8000720:	08004a28 	.word	0x08004a28
 8000724:	20000831 	.word	0x20000831
 8000728:	08004a34 	.word	0x08004a34
 800072c:	08004a3c 	.word	0x08004a3c
 8000730:	08004a44 	.word	0x08004a44
 8000734:	20000c3c 	.word	0x20000c3c

08000738 <countdown>:
 8000738:	b5f0      	push	{r4, r5, r6, r7, lr}
 800073a:	46c6      	mov	lr, r8
 800073c:	4b21      	ldr	r3, [pc, #132]	; (80007c4 <countdown+0x8c>)
 800073e:	2480      	movs	r4, #128	; 0x80
 8000740:	2503      	movs	r5, #3
 8000742:	4698      	mov	r8, r3
 8000744:	b500      	push	{lr}
 8000746:	4e20      	ldr	r6, [pc, #128]	; (80007c8 <countdown+0x90>)
 8000748:	b082      	sub	sp, #8
 800074a:	05e4      	lsls	r4, r4, #23
 800074c:	7833      	ldrb	r3, [r6, #0]
 800074e:	2b01      	cmp	r3, #1
 8000750:	d132      	bne.n	80007b8 <countdown+0x80>
 8000752:	2000      	movs	r0, #0
 8000754:	f000 fe4a 	bl	80013ec <oledColor>
 8000758:	2105      	movs	r1, #5
 800075a:	2004      	movs	r0, #4
 800075c:	f000 ff90 	bl	8001680 <oledSetCursor>
 8000760:	4640      	mov	r0, r8
 8000762:	0029      	movs	r1, r5
 8000764:	f001 fd9a 	bl	800229c <xprintf>
 8000768:	27fa      	movs	r7, #250	; 0xfa
 800076a:	f000 fef9 	bl	8001560 <oledUpdate>
 800076e:	2296      	movs	r2, #150	; 0x96
 8000770:	4816      	ldr	r0, [pc, #88]	; (80007cc <countdown+0x94>)
 8000772:	00d2      	lsls	r2, r2, #3
 8000774:	00bf      	lsls	r7, r7, #2
 8000776:	0013      	movs	r3, r2
 8000778:	3364      	adds	r3, #100	; 0x64
 800077a:	62a3      	str	r3, [r4, #40]	; 0x28
 800077c:	9701      	str	r7, [sp, #4]
 800077e:	9b01      	ldr	r3, [sp, #4]
 8000780:	1e59      	subs	r1, r3, #1
 8000782:	9101      	str	r1, [sp, #4]
 8000784:	2b00      	cmp	r3, #0
 8000786:	d008      	beq.n	800079a <countdown+0x62>
 8000788:	9b01      	ldr	r3, [sp, #4]
 800078a:	08db      	lsrs	r3, r3, #3
 800078c:	1ad3      	subs	r3, r2, r3
 800078e:	62a3      	str	r3, [r4, #40]	; 0x28
 8000790:	9b01      	ldr	r3, [sp, #4]
 8000792:	1e59      	subs	r1, r3, #1
 8000794:	9101      	str	r1, [sp, #4]
 8000796:	2b00      	cmp	r3, #0
 8000798:	d1f6      	bne.n	8000788 <countdown+0x50>
 800079a:	3a02      	subs	r2, #2
 800079c:	4282      	cmp	r2, r0
 800079e:	d1ea      	bne.n	8000776 <countdown+0x3e>
 80007a0:	2300      	movs	r3, #0
 80007a2:	62a3      	str	r3, [r4, #40]	; 0x28
 80007a4:	4b0a      	ldr	r3, [pc, #40]	; (80007d0 <countdown+0x98>)
 80007a6:	9300      	str	r3, [sp, #0]
 80007a8:	9b00      	ldr	r3, [sp, #0]
 80007aa:	1e5a      	subs	r2, r3, #1
 80007ac:	9200      	str	r2, [sp, #0]
 80007ae:	2b00      	cmp	r3, #0
 80007b0:	d1fa      	bne.n	80007a8 <countdown+0x70>
 80007b2:	3d01      	subs	r5, #1
 80007b4:	2d00      	cmp	r5, #0
 80007b6:	d1c9      	bne.n	800074c <countdown+0x14>
 80007b8:	2302      	movs	r3, #2
 80007ba:	7033      	strb	r3, [r6, #0]
 80007bc:	b002      	add	sp, #8
 80007be:	bc04      	pop	{r2}
 80007c0:	4690      	mov	r8, r2
 80007c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007c4:	08004a24 	.word	0x08004a24
 80007c8:	20000c3c 	.word	0x20000c3c
 80007cc:	000002ba 	.word	0x000002ba
 80007d0:	001e8480 	.word	0x001e8480

080007d4 <endGame>:
 80007d4:	22fa      	movs	r2, #250	; 0xfa
 80007d6:	b530      	push	{r4, r5, lr}
 80007d8:	00d2      	lsls	r2, r2, #3
 80007da:	2180      	movs	r1, #128	; 0x80
 80007dc:	24f9      	movs	r4, #249	; 0xf9
 80007de:	0015      	movs	r5, r2
 80007e0:	b083      	sub	sp, #12
 80007e2:	05c9      	lsls	r1, r1, #23
 80007e4:	00a4      	lsls	r4, r4, #2
 80007e6:	0013      	movs	r3, r2
 80007e8:	3364      	adds	r3, #100	; 0x64
 80007ea:	628b      	str	r3, [r1, #40]	; 0x28
 80007ec:	9501      	str	r5, [sp, #4]
 80007ee:	9b01      	ldr	r3, [sp, #4]
 80007f0:	1e58      	subs	r0, r3, #1
 80007f2:	9001      	str	r0, [sp, #4]
 80007f4:	2b00      	cmp	r3, #0
 80007f6:	d008      	beq.n	800080a <endGame+0x36>
 80007f8:	9b01      	ldr	r3, [sp, #4]
 80007fa:	08db      	lsrs	r3, r3, #3
 80007fc:	1ad3      	subs	r3, r2, r3
 80007fe:	628b      	str	r3, [r1, #40]	; 0x28
 8000800:	9b01      	ldr	r3, [sp, #4]
 8000802:	1e58      	subs	r0, r3, #1
 8000804:	9001      	str	r0, [sp, #4]
 8000806:	2b00      	cmp	r3, #0
 8000808:	d1f6      	bne.n	80007f8 <endGame+0x24>
 800080a:	3a04      	subs	r2, #4
 800080c:	42a2      	cmp	r2, r4
 800080e:	d1ea      	bne.n	80007e6 <endGame+0x12>
 8000810:	2380      	movs	r3, #128	; 0x80
 8000812:	2500      	movs	r5, #0
 8000814:	05db      	lsls	r3, r3, #23
 8000816:	629d      	str	r5, [r3, #40]	; 0x28
 8000818:	2000      	movs	r0, #0
 800081a:	f000 fde7 	bl	80013ec <oledColor>
 800081e:	2103      	movs	r1, #3
 8000820:	2003      	movs	r0, #3
 8000822:	f000 ff2d 	bl	8001680 <oledSetCursor>
 8000826:	2303      	movs	r3, #3
 8000828:	4c0a      	ldr	r4, [pc, #40]	; (8000854 <endGame+0x80>)
 800082a:	480b      	ldr	r0, [pc, #44]	; (8000858 <endGame+0x84>)
 800082c:	7023      	strb	r3, [r4, #0]
 800082e:	f001 fd35 	bl	800229c <xprintf>
 8000832:	480a      	ldr	r0, [pc, #40]	; (800085c <endGame+0x88>)
 8000834:	f001 fd32 	bl	800229c <xprintf>
 8000838:	4b09      	ldr	r3, [pc, #36]	; (8000860 <endGame+0x8c>)
 800083a:	480a      	ldr	r0, [pc, #40]	; (8000864 <endGame+0x90>)
 800083c:	6819      	ldr	r1, [r3, #0]
 800083e:	f001 fd2d 	bl	800229c <xprintf>
 8000842:	f000 fe8d 	bl	8001560 <oledUpdate>
 8000846:	4a08      	ldr	r2, [pc, #32]	; (8000868 <endGame+0x94>)
 8000848:	7025      	strb	r5, [r4, #0]
 800084a:	7813      	ldrb	r3, [r2, #0]
 800084c:	2b04      	cmp	r3, #4
 800084e:	d0fc      	beq.n	800084a <endGame+0x76>
 8000850:	b003      	add	sp, #12
 8000852:	bd30      	pop	{r4, r5, pc}
 8000854:	20000831 	.word	0x20000831
 8000858:	080049ec 	.word	0x080049ec
 800085c:	080049fc 	.word	0x080049fc
 8000860:	20000828 	.word	0x20000828
 8000864:	08004a0c 	.word	0x08004a0c
 8000868:	20000c3c 	.word	0x20000c3c

0800086c <exti_config>:
 800086c:	2201      	movs	r2, #1
 800086e:	4b23      	ldr	r3, [pc, #140]	; (80008fc <exti_config+0x90>)
 8000870:	b530      	push	{r4, r5, lr}
 8000872:	6999      	ldr	r1, [r3, #24]
 8000874:	b083      	sub	sp, #12
 8000876:	4311      	orrs	r1, r2
 8000878:	6199      	str	r1, [r3, #24]
 800087a:	699b      	ldr	r3, [r3, #24]
 800087c:	4820      	ldr	r0, [pc, #128]	; (8000900 <exti_config+0x94>)
 800087e:	4013      	ands	r3, r2
 8000880:	9301      	str	r3, [sp, #4]
 8000882:	9b01      	ldr	r3, [sp, #4]
 8000884:	4b1f      	ldr	r3, [pc, #124]	; (8000904 <exti_config+0x98>)
 8000886:	2504      	movs	r5, #4
 8000888:	6899      	ldr	r1, [r3, #8]
 800088a:	4008      	ands	r0, r1
 800088c:	2180      	movs	r1, #128	; 0x80
 800088e:	0049      	lsls	r1, r1, #1
 8000890:	4301      	orrs	r1, r0
 8000892:	20f0      	movs	r0, #240	; 0xf0
 8000894:	6099      	str	r1, [r3, #8]
 8000896:	6899      	ldr	r1, [r3, #8]
 8000898:	4381      	bics	r1, r0
 800089a:	6099      	str	r1, [r3, #8]
 800089c:	6899      	ldr	r1, [r3, #8]
 800089e:	38e1      	subs	r0, #225	; 0xe1
 80008a0:	4381      	bics	r1, r0
 80008a2:	6099      	str	r1, [r3, #8]
 80008a4:	4b18      	ldr	r3, [pc, #96]	; (8000908 <exti_config+0x9c>)
 80008a6:	6818      	ldr	r0, [r3, #0]
 80008a8:	4328      	orrs	r0, r5
 80008aa:	6018      	str	r0, [r3, #0]
 80008ac:	2002      	movs	r0, #2
 80008ae:	681c      	ldr	r4, [r3, #0]
 80008b0:	4304      	orrs	r4, r0
 80008b2:	601c      	str	r4, [r3, #0]
 80008b4:	681c      	ldr	r4, [r3, #0]
 80008b6:	4314      	orrs	r4, r2
 80008b8:	601c      	str	r4, [r3, #0]
 80008ba:	6899      	ldr	r1, [r3, #8]
 80008bc:	4329      	orrs	r1, r5
 80008be:	6099      	str	r1, [r3, #8]
 80008c0:	68d9      	ldr	r1, [r3, #12]
 80008c2:	4301      	orrs	r1, r0
 80008c4:	60d9      	str	r1, [r3, #12]
 80008c6:	6899      	ldr	r1, [r3, #8]
 80008c8:	4301      	orrs	r1, r0
 80008ca:	6099      	str	r1, [r3, #8]
 80008cc:	68d9      	ldr	r1, [r3, #12]
 80008ce:	480f      	ldr	r0, [pc, #60]	; (800090c <exti_config+0xa0>)
 80008d0:	4311      	orrs	r1, r2
 80008d2:	60d9      	str	r1, [r3, #12]
 80008d4:	6899      	ldr	r1, [r3, #8]
 80008d6:	430a      	orrs	r2, r1
 80008d8:	609a      	str	r2, [r3, #8]
 80008da:	2220      	movs	r2, #32
 80008dc:	4b0c      	ldr	r3, [pc, #48]	; (8000910 <exti_config+0xa4>)
 80008de:	601a      	str	r2, [r3, #0]
 80008e0:	22c1      	movs	r2, #193	; 0xc1
 80008e2:	0092      	lsls	r2, r2, #2
 80008e4:	5899      	ldr	r1, [r3, r2]
 80008e6:	4001      	ands	r1, r0
 80008e8:	5099      	str	r1, [r3, r2]
 80008ea:	2140      	movs	r1, #64	; 0x40
 80008ec:	6019      	str	r1, [r3, #0]
 80008ee:	5899      	ldr	r1, [r3, r2]
 80008f0:	4808      	ldr	r0, [pc, #32]	; (8000914 <exti_config+0xa8>)
 80008f2:	4001      	ands	r1, r0
 80008f4:	5099      	str	r1, [r3, r2]
 80008f6:	b003      	add	sp, #12
 80008f8:	bd30      	pop	{r4, r5, pc}
 80008fa:	46c0      	nop			; (mov r8, r8)
 80008fc:	40021000 	.word	0x40021000
 8000900:	fffff0ff 	.word	0xfffff0ff
 8000904:	40010000 	.word	0x40010000
 8000908:	40010400 	.word	0x40010400
 800090c:	ffff00ff 	.word	0xffff00ff
 8000910:	e000e100 	.word	0xe000e100
 8000914:	ff00ffff 	.word	0xff00ffff

08000918 <EXTI0_1_IRQHandler>:
 8000918:	4b23      	ldr	r3, [pc, #140]	; (80009a8 <EXTI0_1_IRQHandler+0x90>)
 800091a:	b570      	push	{r4, r5, r6, lr}
 800091c:	781b      	ldrb	r3, [r3, #0]
 800091e:	2b02      	cmp	r3, #2
 8000920:	d116      	bne.n	8000950 <EXTI0_1_IRQHandler+0x38>
 8000922:	2390      	movs	r3, #144	; 0x90
 8000924:	05db      	lsls	r3, r3, #23
 8000926:	691c      	ldr	r4, [r3, #16]
 8000928:	2203      	movs	r2, #3
 800092a:	230c      	movs	r3, #12
 800092c:	481f      	ldr	r0, [pc, #124]	; (80009ac <EXTI0_1_IRQHandler+0x94>)
 800092e:	4022      	ands	r2, r4
 8000930:	7801      	ldrb	r1, [r0, #0]
 8000932:	4c1f      	ldr	r4, [pc, #124]	; (80009b0 <EXTI0_1_IRQHandler+0x98>)
 8000934:	0089      	lsls	r1, r1, #2
 8000936:	400b      	ands	r3, r1
 8000938:	4313      	orrs	r3, r2
 800093a:	4a1e      	ldr	r2, [pc, #120]	; (80009b4 <EXTI0_1_IRQHandler+0x9c>)
 800093c:	7003      	strb	r3, [r0, #0]
 800093e:	5cd3      	ldrb	r3, [r2, r3]
 8000940:	7822      	ldrb	r2, [r4, #0]
 8000942:	189b      	adds	r3, r3, r2
 8000944:	b25b      	sxtb	r3, r3
 8000946:	7023      	strb	r3, [r4, #0]
 8000948:	2b03      	cmp	r3, #3
 800094a:	d007      	beq.n	800095c <EXTI0_1_IRQHandler+0x44>
 800094c:	3303      	adds	r3, #3
 800094e:	d019      	beq.n	8000984 <EXTI0_1_IRQHandler+0x6c>
 8000950:	2202      	movs	r2, #2
 8000952:	4b19      	ldr	r3, [pc, #100]	; (80009b8 <EXTI0_1_IRQHandler+0xa0>)
 8000954:	615a      	str	r2, [r3, #20]
 8000956:	3a01      	subs	r2, #1
 8000958:	615a      	str	r2, [r3, #20]
 800095a:	bd70      	pop	{r4, r5, r6, pc}
 800095c:	4d17      	ldr	r5, [pc, #92]	; (80009bc <EXTI0_1_IRQHandler+0xa4>)
 800095e:	886b      	ldrh	r3, [r5, #2]
 8000960:	b21b      	sxth	r3, r3
 8000962:	2b2f      	cmp	r3, #47	; 0x2f
 8000964:	dc0b      	bgt.n	800097e <EXTI0_1_IRQHandler+0x66>
 8000966:	4b16      	ldr	r3, [pc, #88]	; (80009c0 <EXTI0_1_IRQHandler+0xa8>)
 8000968:	2103      	movs	r1, #3
 800096a:	7818      	ldrb	r0, [r3, #0]
 800096c:	f7ff fbcc 	bl	8000108 <__udivsi3>
 8000970:	886e      	ldrh	r6, [r5, #2]
 8000972:	b2c3      	uxtb	r3, r0
 8000974:	b236      	sxth	r6, r6
 8000976:	3602      	adds	r6, #2
 8000978:	199b      	adds	r3, r3, r6
 800097a:	b21b      	sxth	r3, r3
 800097c:	806b      	strh	r3, [r5, #2]
 800097e:	2300      	movs	r3, #0
 8000980:	7023      	strb	r3, [r4, #0]
 8000982:	e7e5      	b.n	8000950 <EXTI0_1_IRQHandler+0x38>
 8000984:	4e0d      	ldr	r6, [pc, #52]	; (80009bc <EXTI0_1_IRQHandler+0xa4>)
 8000986:	8873      	ldrh	r3, [r6, #2]
 8000988:	b21b      	sxth	r3, r3
 800098a:	2b02      	cmp	r3, #2
 800098c:	ddf7      	ble.n	800097e <EXTI0_1_IRQHandler+0x66>
 800098e:	4b0c      	ldr	r3, [pc, #48]	; (80009c0 <EXTI0_1_IRQHandler+0xa8>)
 8000990:	2103      	movs	r1, #3
 8000992:	7818      	ldrb	r0, [r3, #0]
 8000994:	f7ff fbb8 	bl	8000108 <__udivsi3>
 8000998:	8875      	ldrh	r5, [r6, #2]
 800099a:	b2c0      	uxtb	r0, r0
 800099c:	b22d      	sxth	r5, r5
 800099e:	3d02      	subs	r5, #2
 80009a0:	1a2d      	subs	r5, r5, r0
 80009a2:	b22d      	sxth	r5, r5
 80009a4:	8075      	strh	r5, [r6, #2]
 80009a6:	e7ea      	b.n	800097e <EXTI0_1_IRQHandler+0x66>
 80009a8:	20000c3c 	.word	0x20000c3c
 80009ac:	2000082d 	.word	0x2000082d
 80009b0:	2000082c 	.word	0x2000082c
 80009b4:	08004a5c 	.word	0x08004a5c
 80009b8:	40010400 	.word	0x40010400
 80009bc:	20000c70 	.word	0x20000c70
 80009c0:	20000010 	.word	0x20000010

080009c4 <EXTI2_3_IRQHandler>:
 80009c4:	4b05      	ldr	r3, [pc, #20]	; (80009dc <EXTI2_3_IRQHandler+0x18>)
 80009c6:	695b      	ldr	r3, [r3, #20]
 80009c8:	075b      	lsls	r3, r3, #29
 80009ca:	d502      	bpl.n	80009d2 <EXTI2_3_IRQHandler+0xe>
 80009cc:	2200      	movs	r2, #0
 80009ce:	4b04      	ldr	r3, [pc, #16]	; (80009e0 <EXTI2_3_IRQHandler+0x1c>)
 80009d0:	601a      	str	r2, [r3, #0]
 80009d2:	2204      	movs	r2, #4
 80009d4:	4b01      	ldr	r3, [pc, #4]	; (80009dc <EXTI2_3_IRQHandler+0x18>)
 80009d6:	615a      	str	r2, [r3, #20]
 80009d8:	4770      	bx	lr
 80009da:	46c0      	nop			; (mov r8, r8)
 80009dc:	40010400 	.word	0x40010400
 80009e0:	20000244 	.word	0x20000244

080009e4 <SysTick_Handler>:
 80009e4:	b530      	push	{r4, r5, lr}
 80009e6:	4a2f      	ldr	r2, [pc, #188]	; (8000aa4 <SysTick_Handler+0xc0>)
 80009e8:	b083      	sub	sp, #12
 80009ea:	6813      	ldr	r3, [r2, #0]
 80009ec:	3301      	adds	r3, #1
 80009ee:	6013      	str	r3, [r2, #0]
 80009f0:	2bc8      	cmp	r3, #200	; 0xc8
 80009f2:	d001      	beq.n	80009f8 <SysTick_Handler+0x14>
 80009f4:	b003      	add	sp, #12
 80009f6:	bd30      	pop	{r4, r5, pc}
 80009f8:	4b2b      	ldr	r3, [pc, #172]	; (8000aa8 <SysTick_Handler+0xc4>)
 80009fa:	781a      	ldrb	r2, [r3, #0]
 80009fc:	b2d2      	uxtb	r2, r2
 80009fe:	2a04      	cmp	r2, #4
 8000a00:	d842      	bhi.n	8000a88 <SysTick_Handler+0xa4>
 8000a02:	492a      	ldr	r1, [pc, #168]	; (8000aac <SysTick_Handler+0xc8>)
 8000a04:	0092      	lsls	r2, r2, #2
 8000a06:	588a      	ldr	r2, [r1, r2]
 8000a08:	4697      	mov	pc, r2
 8000a0a:	2201      	movs	r2, #1
 8000a0c:	701a      	strb	r2, [r3, #0]
 8000a0e:	e7f1      	b.n	80009f4 <SysTick_Handler+0x10>
 8000a10:	2202      	movs	r2, #2
 8000a12:	2080      	movs	r0, #128	; 0x80
 8000a14:	24f5      	movs	r4, #245	; 0xf5
 8000a16:	4926      	ldr	r1, [pc, #152]	; (8000ab0 <SysTick_Handler+0xcc>)
 8000a18:	4d26      	ldr	r5, [pc, #152]	; (8000ab4 <SysTick_Handler+0xd0>)
 8000a1a:	701a      	strb	r2, [r3, #0]
 8000a1c:	05c0      	lsls	r0, r0, #23
 8000a1e:	0064      	lsls	r4, r4, #1
 8000a20:	6281      	str	r1, [r0, #40]	; 0x28
 8000a22:	9500      	str	r5, [sp, #0]
 8000a24:	9b00      	ldr	r3, [sp, #0]
 8000a26:	1e5a      	subs	r2, r3, #1
 8000a28:	9200      	str	r2, [sp, #0]
 8000a2a:	2b00      	cmp	r3, #0
 8000a2c:	d008      	beq.n	8000a40 <SysTick_Handler+0x5c>
 8000a2e:	9b00      	ldr	r3, [sp, #0]
 8000a30:	08db      	lsrs	r3, r3, #3
 8000a32:	185b      	adds	r3, r3, r1
 8000a34:	6283      	str	r3, [r0, #40]	; 0x28
 8000a36:	9b00      	ldr	r3, [sp, #0]
 8000a38:	1e5a      	subs	r2, r3, #1
 8000a3a:	9200      	str	r2, [sp, #0]
 8000a3c:	2b00      	cmp	r3, #0
 8000a3e:	d1f6      	bne.n	8000a2e <SysTick_Handler+0x4a>
 8000a40:	390a      	subs	r1, #10
 8000a42:	42a1      	cmp	r1, r4
 8000a44:	d1ec      	bne.n	8000a20 <SysTick_Handler+0x3c>
 8000a46:	2380      	movs	r3, #128	; 0x80
 8000a48:	2200      	movs	r2, #0
 8000a4a:	05db      	lsls	r3, r3, #23
 8000a4c:	629a      	str	r2, [r3, #40]	; 0x28
 8000a4e:	e7d1      	b.n	80009f4 <SysTick_Handler+0x10>
 8000a50:	2203      	movs	r2, #3
 8000a52:	2080      	movs	r0, #128	; 0x80
 8000a54:	24f5      	movs	r4, #245	; 0xf5
 8000a56:	4916      	ldr	r1, [pc, #88]	; (8000ab0 <SysTick_Handler+0xcc>)
 8000a58:	4d16      	ldr	r5, [pc, #88]	; (8000ab4 <SysTick_Handler+0xd0>)
 8000a5a:	701a      	strb	r2, [r3, #0]
 8000a5c:	05c0      	lsls	r0, r0, #23
 8000a5e:	0064      	lsls	r4, r4, #1
 8000a60:	6281      	str	r1, [r0, #40]	; 0x28
 8000a62:	9501      	str	r5, [sp, #4]
 8000a64:	9b01      	ldr	r3, [sp, #4]
 8000a66:	1e5a      	subs	r2, r3, #1
 8000a68:	9201      	str	r2, [sp, #4]
 8000a6a:	2b00      	cmp	r3, #0
 8000a6c:	d008      	beq.n	8000a80 <SysTick_Handler+0x9c>
 8000a6e:	9b01      	ldr	r3, [sp, #4]
 8000a70:	08db      	lsrs	r3, r3, #3
 8000a72:	185b      	adds	r3, r3, r1
 8000a74:	6283      	str	r3, [r0, #40]	; 0x28
 8000a76:	9b01      	ldr	r3, [sp, #4]
 8000a78:	1e5a      	subs	r2, r3, #1
 8000a7a:	9201      	str	r2, [sp, #4]
 8000a7c:	2b00      	cmp	r3, #0
 8000a7e:	d1f6      	bne.n	8000a6e <SysTick_Handler+0x8a>
 8000a80:	390a      	subs	r1, #10
 8000a82:	42a1      	cmp	r1, r4
 8000a84:	d1ec      	bne.n	8000a60 <SysTick_Handler+0x7c>
 8000a86:	e7de      	b.n	8000a46 <SysTick_Handler+0x62>
 8000a88:	2000      	movs	r0, #0
 8000a8a:	f000 fcaf 	bl	80013ec <oledColor>
 8000a8e:	2102      	movs	r1, #2
 8000a90:	2002      	movs	r0, #2
 8000a92:	f000 fdf5 	bl	8001680 <oledSetCursor>
 8000a96:	4808      	ldr	r0, [pc, #32]	; (8000ab8 <SysTick_Handler+0xd4>)
 8000a98:	f001 fc00 	bl	800229c <xprintf>
 8000a9c:	f000 fd60 	bl	8001560 <oledUpdate>
 8000aa0:	e7fe      	b.n	8000aa0 <SysTick_Handler+0xbc>
 8000aa2:	46c0      	nop			; (mov r8, r8)
 8000aa4:	20000244 	.word	0x20000244
 8000aa8:	20000c3c 	.word	0x20000c3c
 8000aac:	080029cc 	.word	0x080029cc
 8000ab0:	0000044c 	.word	0x0000044c
 8000ab4:	00000bb8 	.word	0x00000bb8
 8000ab8:	080029e0 	.word	0x080029e0

08000abc <timers_config>:
 8000abc:	2002      	movs	r0, #2
 8000abe:	492e      	ldr	r1, [pc, #184]	; (8000b78 <timers_config+0xbc>)
 8000ac0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ac2:	69cb      	ldr	r3, [r1, #28]
 8000ac4:	b083      	sub	sp, #12
 8000ac6:	4303      	orrs	r3, r0
 8000ac8:	61cb      	str	r3, [r1, #28]
 8000aca:	69cb      	ldr	r3, [r1, #28]
 8000acc:	4a2b      	ldr	r2, [pc, #172]	; (8000b7c <timers_config+0xc0>)
 8000ace:	4003      	ands	r3, r0
 8000ad0:	9301      	str	r3, [sp, #4]
 8000ad2:	9b01      	ldr	r3, [sp, #4]
 8000ad4:	4b2a      	ldr	r3, [pc, #168]	; (8000b80 <timers_config+0xc4>)
 8000ad6:	2470      	movs	r4, #112	; 0x70
 8000ad8:	629a      	str	r2, [r3, #40]	; 0x28
 8000ada:	22fa      	movs	r2, #250	; 0xfa
 8000adc:	0092      	lsls	r2, r2, #2
 8000ade:	62da      	str	r2, [r3, #44]	; 0x2c
 8000ae0:	681a      	ldr	r2, [r3, #0]
 8000ae2:	26c4      	movs	r6, #196	; 0xc4
 8000ae4:	43a2      	bics	r2, r4
 8000ae6:	601a      	str	r2, [r3, #0]
 8000ae8:	2201      	movs	r2, #1
 8000aea:	68dd      	ldr	r5, [r3, #12]
 8000aec:	27ff      	movs	r7, #255	; 0xff
 8000aee:	4315      	orrs	r5, r2
 8000af0:	60dd      	str	r5, [r3, #12]
 8000af2:	681d      	ldr	r5, [r3, #0]
 8000af4:	00b6      	lsls	r6, r6, #2
 8000af6:	4315      	orrs	r5, r2
 8000af8:	601d      	str	r5, [r3, #0]
 8000afa:	2580      	movs	r5, #128	; 0x80
 8000afc:	4b21      	ldr	r3, [pc, #132]	; (8000b84 <timers_config+0xc8>)
 8000afe:	026d      	lsls	r5, r5, #9
 8000b00:	601d      	str	r5, [r3, #0]
 8000b02:	599d      	ldr	r5, [r3, r6]
 8000b04:	43bd      	bics	r5, r7
 8000b06:	519d      	str	r5, [r3, r6]
 8000b08:	2390      	movs	r3, #144	; 0x90
 8000b0a:	05db      	lsls	r3, r3, #23
 8000b0c:	681d      	ldr	r5, [r3, #0]
 8000b0e:	4e1e      	ldr	r6, [pc, #120]	; (8000b88 <timers_config+0xcc>)
 8000b10:	402e      	ands	r6, r5
 8000b12:	2580      	movs	r5, #128	; 0x80
 8000b14:	012d      	lsls	r5, r5, #4
 8000b16:	4335      	orrs	r5, r6
 8000b18:	601d      	str	r5, [r3, #0]
 8000b1a:	6a1d      	ldr	r5, [r3, #32]
 8000b1c:	4e1b      	ldr	r6, [pc, #108]	; (8000b8c <timers_config+0xd0>)
 8000b1e:	402e      	ands	r6, r5
 8000b20:	2580      	movs	r5, #128	; 0x80
 8000b22:	03ad      	lsls	r5, r5, #14
 8000b24:	4335      	orrs	r5, r6
 8000b26:	621d      	str	r5, [r3, #32]
 8000b28:	69cb      	ldr	r3, [r1, #28]
 8000b2a:	4313      	orrs	r3, r2
 8000b2c:	61cb      	str	r3, [r1, #28]
 8000b2e:	69cb      	ldr	r3, [r1, #28]
 8000b30:	2100      	movs	r1, #0
 8000b32:	4013      	ands	r3, r2
 8000b34:	9300      	str	r3, [sp, #0]
 8000b36:	9b00      	ldr	r3, [sp, #0]
 8000b38:	2380      	movs	r3, #128	; 0x80
 8000b3a:	05db      	lsls	r3, r3, #23
 8000b3c:	6299      	str	r1, [r3, #40]	; 0x28
 8000b3e:	3164      	adds	r1, #100	; 0x64
 8000b40:	62d9      	str	r1, [r3, #44]	; 0x2c
 8000b42:	3932      	subs	r1, #50	; 0x32
 8000b44:	6359      	str	r1, [r3, #52]	; 0x34
 8000b46:	6a19      	ldr	r1, [r3, #32]
 8000b48:	4311      	orrs	r1, r2
 8000b4a:	6219      	str	r1, [r3, #32]
 8000b4c:	6a19      	ldr	r1, [r3, #32]
 8000b4e:	4381      	bics	r1, r0
 8000b50:	6219      	str	r1, [r3, #32]
 8000b52:	2173      	movs	r1, #115	; 0x73
 8000b54:	699d      	ldr	r5, [r3, #24]
 8000b56:	438d      	bics	r5, r1
 8000b58:	0029      	movs	r1, r5
 8000b5a:	2560      	movs	r5, #96	; 0x60
 8000b5c:	4329      	orrs	r1, r5
 8000b5e:	6199      	str	r1, [r3, #24]
 8000b60:	6819      	ldr	r1, [r3, #0]
 8000b62:	43a1      	bics	r1, r4
 8000b64:	6019      	str	r1, [r3, #0]
 8000b66:	68d9      	ldr	r1, [r3, #12]
 8000b68:	4308      	orrs	r0, r1
 8000b6a:	60d8      	str	r0, [r3, #12]
 8000b6c:	6819      	ldr	r1, [r3, #0]
 8000b6e:	430a      	orrs	r2, r1
 8000b70:	601a      	str	r2, [r3, #0]
 8000b72:	b003      	add	sp, #12
 8000b74:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b76:	46c0      	nop			; (mov r8, r8)
 8000b78:	40021000 	.word	0x40021000
 8000b7c:	0000bb7f 	.word	0x0000bb7f
 8000b80:	40000400 	.word	0x40000400
 8000b84:	e000e100 	.word	0xe000e100
 8000b88:	fffff3ff 	.word	0xfffff3ff
 8000b8c:	ff0fffff 	.word	0xff0fffff

08000b90 <TIM3_IRQHandler>:
 8000b90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000b92:	4657      	mov	r7, sl
 8000b94:	46de      	mov	lr, fp
 8000b96:	464e      	mov	r6, r9
 8000b98:	4645      	mov	r5, r8
 8000b9a:	b5e0      	push	{r5, r6, r7, lr}
 8000b9c:	4b87      	ldr	r3, [pc, #540]	; (8000dbc <TIM3_IRQHandler+0x22c>)
 8000b9e:	b083      	sub	sp, #12
 8000ba0:	469a      	mov	sl, r3
 8000ba2:	781b      	ldrb	r3, [r3, #0]
 8000ba4:	2b63      	cmp	r3, #99	; 0x63
 8000ba6:	d100      	bne.n	8000baa <TIM3_IRQHandler+0x1a>
 8000ba8:	e0ea      	b.n	8000d80 <TIM3_IRQHandler+0x1f0>
 8000baa:	0018      	movs	r0, r3
 8000bac:	4652      	mov	r2, sl
 8000bae:	1c59      	adds	r1, r3, #1
 8000bb0:	3817      	subs	r0, #23
 8000bb2:	3b36      	subs	r3, #54	; 0x36
 8000bb4:	b2c9      	uxtb	r1, r1
 8000bb6:	b25b      	sxtb	r3, r3
 8000bb8:	b240      	sxtb	r0, r0
 8000bba:	7011      	strb	r1, [r2, #0]
 8000bbc:	001c      	movs	r4, r3
 8000bbe:	000a      	movs	r2, r1
 8000bc0:	2800      	cmp	r0, #0
 8000bc2:	da00      	bge.n	8000bc6 <TIM3_IRQHandler+0x36>
 8000bc4:	e0f4      	b.n	8000db0 <TIM3_IRQHandler+0x220>
 8000bc6:	4d7e      	ldr	r5, [pc, #504]	; (8000dc0 <TIM3_IRQHandler+0x230>)
 8000bc8:	5c28      	ldrb	r0, [r5, r0]
 8000bca:	2b00      	cmp	r3, #0
 8000bcc:	da00      	bge.n	8000bd0 <TIM3_IRQHandler+0x40>
 8000bce:	e0e1      	b.n	8000d94 <TIM3_IRQHandler+0x204>
 8000bd0:	4b7c      	ldr	r3, [pc, #496]	; (8000dc4 <TIM3_IRQHandler+0x234>)
 8000bd2:	5d2f      	ldrb	r7, [r5, r4]
 8000bd4:	4698      	mov	r8, r3
 8000bd6:	885b      	ldrh	r3, [r3, #2]
 8000bd8:	183f      	adds	r7, r7, r0
 8000bda:	b21b      	sxth	r3, r3
 8000bdc:	18fb      	adds	r3, r7, r3
 8000bde:	273f      	movs	r7, #63	; 0x3f
 8000be0:	17d8      	asrs	r0, r3, #31
 8000be2:	0e80      	lsrs	r0, r0, #26
 8000be4:	181b      	adds	r3, r3, r0
 8000be6:	401f      	ands	r7, r3
 8000be8:	1a3f      	subs	r7, r7, r0
 8000bea:	3778      	adds	r7, #120	; 0x78
 8000bec:	b2fb      	uxtb	r3, r7
 8000bee:	2701      	movs	r7, #1
 8000bf0:	54ab      	strb	r3, [r5, r2]
 8000bf2:	401f      	ands	r7, r3
 8000bf4:	4b74      	ldr	r3, [pc, #464]	; (8000dc8 <TIM3_IRQHandler+0x238>)
 8000bf6:	781b      	ldrb	r3, [r3, #0]
 8000bf8:	9300      	str	r3, [sp, #0]
 8000bfa:	0018      	movs	r0, r3
 8000bfc:	2300      	movs	r3, #0
 8000bfe:	469c      	mov	ip, r3
 8000c00:	4b72      	ldr	r3, [pc, #456]	; (8000dcc <TIM3_IRQHandler+0x23c>)
 8000c02:	4699      	mov	r9, r3
 8000c04:	233f      	movs	r3, #63	; 0x3f
 8000c06:	469b      	mov	fp, r3
 8000c08:	2963      	cmp	r1, #99	; 0x63
 8000c0a:	d044      	beq.n	8000c96 <TIM3_IRQHandler+0x106>
 8000c0c:	000b      	movs	r3, r1
 8000c0e:	1c4a      	adds	r2, r1, #1
 8000c10:	3b17      	subs	r3, #23
 8000c12:	3936      	subs	r1, #54	; 0x36
 8000c14:	b24c      	sxtb	r4, r1
 8000c16:	b2d2      	uxtb	r2, r2
 8000c18:	b259      	sxtb	r1, r3
 8000c1a:	0016      	movs	r6, r2
 8000c1c:	0023      	movs	r3, r4
 8000c1e:	2900      	cmp	r1, #0
 8000c20:	da00      	bge.n	8000c24 <TIM3_IRQHandler+0x94>
 8000c22:	e0c3      	b.n	8000dac <TIM3_IRQHandler+0x21c>
 8000c24:	5c69      	ldrb	r1, [r5, r1]
 8000c26:	2c00      	cmp	r4, #0
 8000c28:	db3a      	blt.n	8000ca0 <TIM3_IRQHandler+0x110>
 8000c2a:	4644      	mov	r4, r8
 8000c2c:	5ceb      	ldrb	r3, [r5, r3]
 8000c2e:	8864      	ldrh	r4, [r4, #2]
 8000c30:	185b      	adds	r3, r3, r1
 8000c32:	4659      	mov	r1, fp
 8000c34:	b224      	sxth	r4, r4
 8000c36:	191b      	adds	r3, r3, r4
 8000c38:	17dc      	asrs	r4, r3, #31
 8000c3a:	0ea4      	lsrs	r4, r4, #26
 8000c3c:	191b      	adds	r3, r3, r4
 8000c3e:	400b      	ands	r3, r1
 8000c40:	1b1c      	subs	r4, r3, r4
 8000c42:	2303      	movs	r3, #3
 8000c44:	4649      	mov	r1, r9
 8000c46:	3478      	adds	r4, #120	; 0x78
 8000c48:	b2e4      	uxtb	r4, r4
 8000c4a:	55ac      	strb	r4, [r5, r6]
 8000c4c:	401c      	ands	r4, r3
 8000c4e:	0066      	lsls	r6, r4, #1
 8000c50:	1933      	adds	r3, r6, r4
 8000c52:	009b      	lsls	r3, r3, #2
 8000c54:	5ac9      	ldrh	r1, [r1, r3]
 8000c56:	b209      	sxth	r1, r1
 8000c58:	2980      	cmp	r1, #128	; 0x80
 8000c5a:	dc23      	bgt.n	8000ca4 <TIM3_IRQHandler+0x114>
 8000c5c:	2f00      	cmp	r7, #0
 8000c5e:	d116      	bne.n	8000c8e <TIM3_IRQHandler+0xfe>
 8000c60:	4653      	mov	r3, sl
 8000c62:	701a      	strb	r2, [r3, #0]
 8000c64:	4663      	mov	r3, ip
 8000c66:	2b00      	cmp	r3, #0
 8000c68:	d002      	beq.n	8000c70 <TIM3_IRQHandler+0xe0>
 8000c6a:	4b57      	ldr	r3, [pc, #348]	; (8000dc8 <TIM3_IRQHandler+0x238>)
 8000c6c:	9000      	str	r0, [sp, #0]
 8000c6e:	7018      	strb	r0, [r3, #0]
 8000c70:	9b00      	ldr	r3, [sp, #0]
 8000c72:	2b00      	cmp	r3, #0
 8000c74:	d155      	bne.n	8000d22 <TIM3_IRQHandler+0x192>
 8000c76:	2264      	movs	r2, #100	; 0x64
 8000c78:	4b55      	ldr	r3, [pc, #340]	; (8000dd0 <TIM3_IRQHandler+0x240>)
 8000c7a:	62da      	str	r2, [r3, #44]	; 0x2c
 8000c7c:	3a66      	subs	r2, #102	; 0x66
 8000c7e:	611a      	str	r2, [r3, #16]
 8000c80:	b003      	add	sp, #12
 8000c82:	bc3c      	pop	{r2, r3, r4, r5}
 8000c84:	4690      	mov	r8, r2
 8000c86:	4699      	mov	r9, r3
 8000c88:	46a2      	mov	sl, r4
 8000c8a:	46ab      	mov	fp, r5
 8000c8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c8e:	0011      	movs	r1, r2
 8000c90:	2700      	movs	r7, #0
 8000c92:	2963      	cmp	r1, #99	; 0x63
 8000c94:	d1ba      	bne.n	8000c0c <TIM3_IRQHandler+0x7c>
 8000c96:	234c      	movs	r3, #76	; 0x4c
 8000c98:	2600      	movs	r6, #0
 8000c9a:	2200      	movs	r2, #0
 8000c9c:	5ce9      	ldrb	r1, [r5, r3]
 8000c9e:	3b83      	subs	r3, #131	; 0x83
 8000ca0:	3364      	adds	r3, #100	; 0x64
 8000ca2:	e7c2      	b.n	8000c2a <TIM3_IRQHandler+0x9a>
 8000ca4:	201d      	movs	r0, #29
 8000ca6:	4649      	mov	r1, r9
 8000ca8:	4240      	negs	r0, r0
 8000caa:	52c8      	strh	r0, [r1, r3]
 8000cac:	2a63      	cmp	r2, #99	; 0x63
 8000cae:	d02f      	beq.n	8000d10 <TIM3_IRQHandler+0x180>
 8000cb0:	1c53      	adds	r3, r2, #1
 8000cb2:	b2d9      	uxtb	r1, r3
 8000cb4:	3a36      	subs	r2, #54	; 0x36
 8000cb6:	3b18      	subs	r3, #24
 8000cb8:	b250      	sxtb	r0, r2
 8000cba:	b25b      	sxtb	r3, r3
 8000cbc:	9101      	str	r1, [sp, #4]
 8000cbe:	0002      	movs	r2, r0
 8000cc0:	2b00      	cmp	r3, #0
 8000cc2:	db77      	blt.n	8000db4 <TIM3_IRQHandler+0x224>
 8000cc4:	5ceb      	ldrb	r3, [r5, r3]
 8000cc6:	469c      	mov	ip, r3
 8000cc8:	2800      	cmp	r0, #0
 8000cca:	db28      	blt.n	8000d1e <TIM3_IRQHandler+0x18e>
 8000ccc:	4643      	mov	r3, r8
 8000cce:	8858      	ldrh	r0, [r3, #2]
 8000cd0:	5cab      	ldrb	r3, [r5, r2]
 8000cd2:	465a      	mov	r2, fp
 8000cd4:	4463      	add	r3, ip
 8000cd6:	b200      	sxth	r0, r0
 8000cd8:	181b      	adds	r3, r3, r0
 8000cda:	17d8      	asrs	r0, r3, #31
 8000cdc:	0e80      	lsrs	r0, r0, #26
 8000cde:	181b      	adds	r3, r3, r0
 8000ce0:	4013      	ands	r3, r2
 8000ce2:	1a18      	subs	r0, r3, r0
 8000ce4:	3078      	adds	r0, #120	; 0x78
 8000ce6:	b2c0      	uxtb	r0, r0
 8000ce8:	5468      	strb	r0, [r5, r1]
 8000cea:	2103      	movs	r1, #3
 8000cec:	f7ff fa92 	bl	8000214 <__aeabi_uidivmod>
 8000cf0:	b2cb      	uxtb	r3, r1
 8000cf2:	0059      	lsls	r1, r3, #1
 8000cf4:	1859      	adds	r1, r3, r1
 8000cf6:	00cb      	lsls	r3, r1, #3
 8000cf8:	1a5b      	subs	r3, r3, r1
 8000cfa:	1934      	adds	r4, r6, r4
 8000cfc:	3304      	adds	r3, #4
 8000cfe:	00a4      	lsls	r4, r4, #2
 8000d00:	b21b      	sxth	r3, r3
 8000d02:	444c      	add	r4, r9
 8000d04:	8063      	strh	r3, [r4, #2]
 8000d06:	2301      	movs	r3, #1
 8000d08:	9a01      	ldr	r2, [sp, #4]
 8000d0a:	469c      	mov	ip, r3
 8000d0c:	2001      	movs	r0, #1
 8000d0e:	e7a5      	b.n	8000c5c <TIM3_IRQHandler+0xcc>
 8000d10:	234c      	movs	r3, #76	; 0x4c
 8000d12:	5ceb      	ldrb	r3, [r5, r3]
 8000d14:	2100      	movs	r1, #0
 8000d16:	469c      	mov	ip, r3
 8000d18:	2300      	movs	r3, #0
 8000d1a:	3a9a      	subs	r2, #154	; 0x9a
 8000d1c:	9301      	str	r3, [sp, #4]
 8000d1e:	3264      	adds	r2, #100	; 0x64
 8000d20:	e7d4      	b.n	8000ccc <TIM3_IRQHandler+0x13c>
 8000d22:	2a63      	cmp	r2, #99	; 0x63
 8000d24:	d038      	beq.n	8000d98 <TIM3_IRQHandler+0x208>
 8000d26:	4653      	mov	r3, sl
 8000d28:	1c51      	adds	r1, r2, #1
 8000d2a:	b2c9      	uxtb	r1, r1
 8000d2c:	7019      	strb	r1, [r3, #0]
 8000d2e:	0013      	movs	r3, r2
 8000d30:	3a36      	subs	r2, #54	; 0x36
 8000d32:	3b17      	subs	r3, #23
 8000d34:	b252      	sxtb	r2, r2
 8000d36:	b25b      	sxtb	r3, r3
 8000d38:	0010      	movs	r0, r2
 8000d3a:	2b00      	cmp	r3, #0
 8000d3c:	db3c      	blt.n	8000db8 <TIM3_IRQHandler+0x228>
 8000d3e:	5cec      	ldrb	r4, [r5, r3]
 8000d40:	2a00      	cmp	r2, #0
 8000d42:	db31      	blt.n	8000da8 <TIM3_IRQHandler+0x218>
 8000d44:	4643      	mov	r3, r8
 8000d46:	5c2a      	ldrb	r2, [r5, r0]
 8000d48:	885b      	ldrh	r3, [r3, #2]
 8000d4a:	1912      	adds	r2, r2, r4
 8000d4c:	b21b      	sxth	r3, r3
 8000d4e:	18d2      	adds	r2, r2, r3
 8000d50:	233f      	movs	r3, #63	; 0x3f
 8000d52:	17d0      	asrs	r0, r2, #31
 8000d54:	0e80      	lsrs	r0, r0, #26
 8000d56:	1812      	adds	r2, r2, r0
 8000d58:	4013      	ands	r3, r2
 8000d5a:	4a1e      	ldr	r2, [pc, #120]	; (8000dd4 <TIM3_IRQHandler+0x244>)
 8000d5c:	1a1b      	subs	r3, r3, r0
 8000d5e:	7812      	ldrb	r2, [r2, #0]
 8000d60:	3378      	adds	r3, #120	; 0x78
 8000d62:	b2db      	uxtb	r3, r3
 8000d64:	546b      	strb	r3, [r5, r1]
 8000d66:	0111      	lsls	r1, r2, #4
 8000d68:	1a52      	subs	r2, r2, r1
 8000d6a:	0099      	lsls	r1, r3, #2
 8000d6c:	18cb      	adds	r3, r1, r3
 8000d6e:	0092      	lsls	r2, r2, #2
 8000d70:	005b      	lsls	r3, r3, #1
 8000d72:	18d3      	adds	r3, r2, r3
 8000d74:	4a16      	ldr	r2, [pc, #88]	; (8000dd0 <TIM3_IRQHandler+0x240>)
 8000d76:	62d3      	str	r3, [r2, #44]	; 0x2c
 8000d78:	2302      	movs	r3, #2
 8000d7a:	425b      	negs	r3, r3
 8000d7c:	6113      	str	r3, [r2, #16]
 8000d7e:	e77f      	b.n	8000c80 <TIM3_IRQHandler+0xf0>
 8000d80:	2300      	movs	r3, #0
 8000d82:	4652      	mov	r2, sl
 8000d84:	2437      	movs	r4, #55	; 0x37
 8000d86:	7013      	strb	r3, [r2, #0]
 8000d88:	2100      	movs	r1, #0
 8000d8a:	2200      	movs	r2, #0
 8000d8c:	4d0c      	ldr	r5, [pc, #48]	; (8000dc0 <TIM3_IRQHandler+0x230>)
 8000d8e:	334c      	adds	r3, #76	; 0x4c
 8000d90:	5ce8      	ldrb	r0, [r5, r3]
 8000d92:	4264      	negs	r4, r4
 8000d94:	3464      	adds	r4, #100	; 0x64
 8000d96:	e71b      	b.n	8000bd0 <TIM3_IRQHandler+0x40>
 8000d98:	2300      	movs	r3, #0
 8000d9a:	4652      	mov	r2, sl
 8000d9c:	2037      	movs	r0, #55	; 0x37
 8000d9e:	2100      	movs	r1, #0
 8000da0:	7013      	strb	r3, [r2, #0]
 8000da2:	334c      	adds	r3, #76	; 0x4c
 8000da4:	5cec      	ldrb	r4, [r5, r3]
 8000da6:	4240      	negs	r0, r0
 8000da8:	3064      	adds	r0, #100	; 0x64
 8000daa:	e7cb      	b.n	8000d44 <TIM3_IRQHandler+0x1b4>
 8000dac:	3164      	adds	r1, #100	; 0x64
 8000dae:	e739      	b.n	8000c24 <TIM3_IRQHandler+0x94>
 8000db0:	3064      	adds	r0, #100	; 0x64
 8000db2:	e708      	b.n	8000bc6 <TIM3_IRQHandler+0x36>
 8000db4:	3364      	adds	r3, #100	; 0x64
 8000db6:	e785      	b.n	8000cc4 <TIM3_IRQHandler+0x134>
 8000db8:	3364      	adds	r3, #100	; 0x64
 8000dba:	e7c0      	b.n	8000d3e <TIM3_IRQHandler+0x1ae>
 8000dbc:	200003de 	.word	0x200003de
 8000dc0:	200001e0 	.word	0x200001e0
 8000dc4:	20000c70 	.word	0x20000c70
 8000dc8:	2000082e 	.word	0x2000082e
 8000dcc:	20000c40 	.word	0x20000c40
 8000dd0:	40000400 	.word	0x40000400
 8000dd4:	20000010 	.word	0x20000010

08000dd8 <rcc_config>:
 8000dd8:	2101      	movs	r1, #1
 8000dda:	4a1d      	ldr	r2, [pc, #116]	; (8000e50 <rcc_config+0x78>)
 8000ddc:	6813      	ldr	r3, [r2, #0]
 8000dde:	438b      	bics	r3, r1
 8000de0:	430b      	orrs	r3, r1
 8000de2:	6013      	str	r3, [r2, #0]
 8000de4:	4b1b      	ldr	r3, [pc, #108]	; (8000e54 <rcc_config+0x7c>)
 8000de6:	681a      	ldr	r2, [r3, #0]
 8000de8:	430a      	orrs	r2, r1
 8000dea:	601a      	str	r2, [r3, #0]
 8000dec:	3101      	adds	r1, #1
 8000dee:	681a      	ldr	r2, [r3, #0]
 8000df0:	4211      	tst	r1, r2
 8000df2:	d0fc      	beq.n	8000dee <rcc_config+0x16>
 8000df4:	685a      	ldr	r2, [r3, #4]
 8000df6:	4918      	ldr	r1, [pc, #96]	; (8000e58 <rcc_config+0x80>)
 8000df8:	4011      	ands	r1, r2
 8000dfa:	22a0      	movs	r2, #160	; 0xa0
 8000dfc:	0392      	lsls	r2, r2, #14
 8000dfe:	430a      	orrs	r2, r1
 8000e00:	210f      	movs	r1, #15
 8000e02:	605a      	str	r2, [r3, #4]
 8000e04:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000e06:	438a      	bics	r2, r1
 8000e08:	62da      	str	r2, [r3, #44]	; 0x2c
 8000e0a:	2280      	movs	r2, #128	; 0x80
 8000e0c:	6819      	ldr	r1, [r3, #0]
 8000e0e:	0452      	lsls	r2, r2, #17
 8000e10:	430a      	orrs	r2, r1
 8000e12:	2180      	movs	r1, #128	; 0x80
 8000e14:	601a      	str	r2, [r3, #0]
 8000e16:	4a0f      	ldr	r2, [pc, #60]	; (8000e54 <rcc_config+0x7c>)
 8000e18:	0489      	lsls	r1, r1, #18
 8000e1a:	6813      	ldr	r3, [r2, #0]
 8000e1c:	420b      	tst	r3, r1
 8000e1e:	d0fc      	beq.n	8000e1a <rcc_config+0x42>
 8000e20:	21f0      	movs	r1, #240	; 0xf0
 8000e22:	6853      	ldr	r3, [r2, #4]
 8000e24:	438b      	bics	r3, r1
 8000e26:	6053      	str	r3, [r2, #4]
 8000e28:	6853      	ldr	r3, [r2, #4]
 8000e2a:	39ed      	subs	r1, #237	; 0xed
 8000e2c:	438b      	bics	r3, r1
 8000e2e:	3901      	subs	r1, #1
 8000e30:	430b      	orrs	r3, r1
 8000e32:	6053      	str	r3, [r2, #4]
 8000e34:	4a07      	ldr	r2, [pc, #28]	; (8000e54 <rcc_config+0x7c>)
 8000e36:	310a      	adds	r1, #10
 8000e38:	6853      	ldr	r3, [r2, #4]
 8000e3a:	400b      	ands	r3, r1
 8000e3c:	2b08      	cmp	r3, #8
 8000e3e:	d1fb      	bne.n	8000e38 <rcc_config+0x60>
 8000e40:	6853      	ldr	r3, [r2, #4]
 8000e42:	4906      	ldr	r1, [pc, #24]	; (8000e5c <rcc_config+0x84>)
 8000e44:	400b      	ands	r3, r1
 8000e46:	6053      	str	r3, [r2, #4]
 8000e48:	4b05      	ldr	r3, [pc, #20]	; (8000e60 <rcc_config+0x88>)
 8000e4a:	4a06      	ldr	r2, [pc, #24]	; (8000e64 <rcc_config+0x8c>)
 8000e4c:	601a      	str	r2, [r3, #0]
 8000e4e:	4770      	bx	lr
 8000e50:	40022000 	.word	0x40022000
 8000e54:	40021000 	.word	0x40021000
 8000e58:	ffc2ffff 	.word	0xffc2ffff
 8000e5c:	fffff8ff 	.word	0xfffff8ff
 8000e60:	20000000 	.word	0x20000000
 8000e64:	02dc6c00 	.word	0x02dc6c00

08000e68 <initializeAll>:
 8000e68:	b510      	push	{r4, lr}
 8000e6a:	b082      	sub	sp, #8
 8000e6c:	f7ff ffb4 	bl	8000dd8 <rcc_config>
 8000e70:	2080      	movs	r0, #128	; 0x80
 8000e72:	4b20      	ldr	r3, [pc, #128]	; (8000ef4 <initializeAll+0x8c>)
 8000e74:	0280      	lsls	r0, r0, #10
 8000e76:	6959      	ldr	r1, [r3, #20]
 8000e78:	2402      	movs	r4, #2
 8000e7a:	4301      	orrs	r1, r0
 8000e7c:	6159      	str	r1, [r3, #20]
 8000e7e:	2180      	movs	r1, #128	; 0x80
 8000e80:	695a      	ldr	r2, [r3, #20]
 8000e82:	02c9      	lsls	r1, r1, #11
 8000e84:	4002      	ands	r2, r0
 8000e86:	9200      	str	r2, [sp, #0]
 8000e88:	9a00      	ldr	r2, [sp, #0]
 8000e8a:	695a      	ldr	r2, [r3, #20]
 8000e8c:	430a      	orrs	r2, r1
 8000e8e:	615a      	str	r2, [r3, #20]
 8000e90:	2290      	movs	r2, #144	; 0x90
 8000e92:	695b      	ldr	r3, [r3, #20]
 8000e94:	05d2      	lsls	r2, r2, #23
 8000e96:	400b      	ands	r3, r1
 8000e98:	210c      	movs	r1, #12
 8000e9a:	9301      	str	r3, [sp, #4]
 8000e9c:	9b01      	ldr	r3, [sp, #4]
 8000e9e:	68d3      	ldr	r3, [r2, #12]
 8000ea0:	438b      	bics	r3, r1
 8000ea2:	3904      	subs	r1, #4
 8000ea4:	430b      	orrs	r3, r1
 8000ea6:	60d3      	str	r3, [r2, #12]
 8000ea8:	68d3      	ldr	r3, [r2, #12]
 8000eaa:	3905      	subs	r1, #5
 8000eac:	438b      	bics	r3, r1
 8000eae:	4323      	orrs	r3, r4
 8000eb0:	60d3      	str	r3, [r2, #12]
 8000eb2:	4a11      	ldr	r2, [pc, #68]	; (8000ef8 <initializeAll+0x90>)
 8000eb4:	312d      	adds	r1, #45	; 0x2d
 8000eb6:	68d3      	ldr	r3, [r2, #12]
 8000eb8:	438b      	bics	r3, r1
 8000eba:	3910      	subs	r1, #16
 8000ebc:	430b      	orrs	r3, r1
 8000ebe:	60d3      	str	r3, [r2, #12]
 8000ec0:	f000 fd3e 	bl	8001940 <oled_config>
 8000ec4:	4b0d      	ldr	r3, [pc, #52]	; (8000efc <initializeAll+0x94>)
 8000ec6:	4a0e      	ldr	r2, [pc, #56]	; (8000f00 <initializeAll+0x98>)
 8000ec8:	601a      	str	r2, [r3, #0]
 8000eca:	f7ff fdf7 	bl	8000abc <timers_config>
 8000ece:	f7ff fccd 	bl	800086c <exti_config>
 8000ed2:	4b0c      	ldr	r3, [pc, #48]	; (8000f04 <initializeAll+0x9c>)
 8000ed4:	4a0c      	ldr	r2, [pc, #48]	; (8000f08 <initializeAll+0xa0>)
 8000ed6:	605a      	str	r2, [r3, #4]
 8000ed8:	2200      	movs	r2, #0
 8000eda:	609a      	str	r2, [r3, #8]
 8000edc:	3205      	adds	r2, #5
 8000ede:	601a      	str	r2, [r3, #0]
 8000ee0:	681a      	ldr	r2, [r3, #0]
 8000ee2:	4322      	orrs	r2, r4
 8000ee4:	601a      	str	r2, [r3, #0]
 8000ee6:	4a09      	ldr	r2, [pc, #36]	; (8000f0c <initializeAll+0xa4>)
 8000ee8:	6a13      	ldr	r3, [r2, #32]
 8000eea:	021b      	lsls	r3, r3, #8
 8000eec:	0a1b      	lsrs	r3, r3, #8
 8000eee:	6213      	str	r3, [r2, #32]
 8000ef0:	b002      	add	sp, #8
 8000ef2:	bd10      	pop	{r4, pc}
 8000ef4:	40021000 	.word	0x40021000
 8000ef8:	48000400 	.word	0x48000400
 8000efc:	20000c7c 	.word	0x20000c7c
 8000f00:	08001695 	.word	0x08001695
 8000f04:	e000e010 	.word	0xe000e010
 8000f08:	0000bb7f 	.word	0x0000bb7f
 8000f0c:	e000ed00 	.word	0xe000ed00

08000f10 <drawRec>:
 8000f10:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000f12:	4657      	mov	r7, sl
 8000f14:	46de      	mov	lr, fp
 8000f16:	464e      	mov	r6, r9
 8000f18:	4645      	mov	r5, r8
 8000f1a:	b5e0      	push	{r5, r6, r7, lr}
 8000f1c:	b091      	sub	sp, #68	; 0x44
 8000f1e:	469a      	mov	sl, r3
 8000f20:	ab1a      	add	r3, sp, #104	; 0x68
 8000f22:	910c      	str	r1, [sp, #48]	; 0x30
 8000f24:	7819      	ldrb	r1, [r3, #0]
 8000f26:	ab1b      	add	r3, sp, #108	; 0x6c
 8000f28:	9101      	str	r1, [sp, #4]
 8000f2a:	7819      	ldrb	r1, [r3, #0]
 8000f2c:	900b      	str	r0, [sp, #44]	; 0x2c
 8000f2e:	920a      	str	r2, [sp, #40]	; 0x28
 8000f30:	9102      	str	r1, [sp, #8]
 8000f32:	0003      	movs	r3, r0
 8000f34:	4293      	cmp	r3, r2
 8000f36:	d901      	bls.n	8000f3c <drawRec+0x2c>
 8000f38:	920b      	str	r2, [sp, #44]	; 0x2c
 8000f3a:	930a      	str	r3, [sp, #40]	; 0x28
 8000f3c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000f3e:	4553      	cmp	r3, sl
 8000f40:	d902      	bls.n	8000f48 <drawRec+0x38>
 8000f42:	4652      	mov	r2, sl
 8000f44:	469a      	mov	sl, r3
 8000f46:	920c      	str	r2, [sp, #48]	; 0x30
 8000f48:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8000f4a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8000f4c:	1a9a      	subs	r2, r3, r2
 8000f4e:	0fd3      	lsrs	r3, r2, #31
 8000f50:	189b      	adds	r3, r3, r2
 8000f52:	105b      	asrs	r3, r3, #1
 8000f54:	3301      	adds	r3, #1
 8000f56:	9309      	str	r3, [sp, #36]	; 0x24
 8000f58:	d500      	bpl.n	8000f5c <drawRec+0x4c>
 8000f5a:	e08e      	b.n	800107a <drawRec+0x16a>
 8000f5c:	990c      	ldr	r1, [sp, #48]	; 0x30
 8000f5e:	2207      	movs	r2, #7
 8000f60:	b20c      	sxth	r4, r1
 8000f62:	10e3      	asrs	r3, r4, #3
 8000f64:	01db      	lsls	r3, r3, #7
 8000f66:	9306      	str	r3, [sp, #24]
 8000f68:	2301      	movs	r3, #1
 8000f6a:	0018      	movs	r0, r3
 8000f6c:	4011      	ands	r1, r2
 8000f6e:	4088      	lsls	r0, r1
 8000f70:	b241      	sxtb	r1, r0
 8000f72:	9108      	str	r1, [sp, #32]
 8000f74:	43c9      	mvns	r1, r1
 8000f76:	910d      	str	r1, [sp, #52]	; 0x34
 8000f78:	4651      	mov	r1, sl
 8000f7a:	b20d      	sxth	r5, r1
 8000f7c:	10e9      	asrs	r1, r5, #3
 8000f7e:	01c9      	lsls	r1, r1, #7
 8000f80:	9107      	str	r1, [sp, #28]
 8000f82:	4651      	mov	r1, sl
 8000f84:	400a      	ands	r2, r1
 8000f86:	4093      	lsls	r3, r2
 8000f88:	b25b      	sxtb	r3, r3
 8000f8a:	930e      	str	r3, [sp, #56]	; 0x38
 8000f8c:	43db      	mvns	r3, r3
 8000f8e:	930f      	str	r3, [sp, #60]	; 0x3c
 8000f90:	466b      	mov	r3, sp
 8000f92:	8d9f      	ldrh	r7, [r3, #44]	; 0x2c
 8000f94:	8d1e      	ldrh	r6, [r3, #40]	; 0x28
 8000f96:	4b99      	ldr	r3, [pc, #612]	; (80011fc <drawRec+0x2ec>)
 8000f98:	2200      	movs	r2, #0
 8000f9a:	4698      	mov	r8, r3
 8000f9c:	469b      	mov	fp, r3
 8000f9e:	9704      	str	r7, [sp, #16]
 8000fa0:	9503      	str	r5, [sp, #12]
 8000fa2:	9605      	str	r6, [sp, #20]
 8000fa4:	e043      	b.n	800102e <drawRec+0x11e>
 8000fa6:	9806      	ldr	r0, [sp, #24]
 8000fa8:	4681      	mov	r9, r0
 8000faa:	4489      	add	r9, r1
 8000fac:	4640      	mov	r0, r8
 8000fae:	464f      	mov	r7, r9
 8000fb0:	57c6      	ldrsb	r6, [r0, r7]
 8000fb2:	46b4      	mov	ip, r6
 8000fb4:	9e01      	ldr	r6, [sp, #4]
 8000fb6:	2e00      	cmp	r6, #0
 8000fb8:	d100      	bne.n	8000fbc <drawRec+0xac>
 8000fba:	e1fc      	b.n	80013b6 <drawRec+0x4a6>
 8000fbc:	4666      	mov	r6, ip
 8000fbe:	9f08      	ldr	r7, [sp, #32]
 8000fc0:	433e      	orrs	r6, r7
 8000fc2:	46b4      	mov	ip, r6
 8000fc4:	464f      	mov	r7, r9
 8000fc6:	4665      	mov	r5, ip
 8000fc8:	55c5      	strb	r5, [r0, r7]
 8000fca:	9d03      	ldr	r5, [sp, #12]
 8000fcc:	2d3f      	cmp	r5, #63	; 0x3f
 8000fce:	dc08      	bgt.n	8000fe2 <drawRec+0xd2>
 8000fd0:	9d07      	ldr	r5, [sp, #28]
 8000fd2:	46ac      	mov	ip, r5
 8000fd4:	448c      	add	ip, r1
 8000fd6:	4661      	mov	r1, ip
 8000fd8:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8000fda:	5c41      	ldrb	r1, [r0, r1]
 8000fdc:	4329      	orrs	r1, r5
 8000fde:	4665      	mov	r5, ip
 8000fe0:	5541      	strb	r1, [r0, r5]
 8000fe2:	9905      	ldr	r1, [sp, #20]
 8000fe4:	1acb      	subs	r3, r1, r3
 8000fe6:	b21b      	sxth	r3, r3
 8000fe8:	2b7f      	cmp	r3, #127	; 0x7f
 8000fea:	dc1b      	bgt.n	8001024 <drawRec+0x114>
 8000fec:	2c3f      	cmp	r4, #63	; 0x3f
 8000fee:	dc2f      	bgt.n	8001050 <drawRec+0x140>
 8000ff0:	2b00      	cmp	r3, #0
 8000ff2:	db17      	blt.n	8001024 <drawRec+0x114>
 8000ff4:	9906      	ldr	r1, [sp, #24]
 8000ff6:	4658      	mov	r0, fp
 8000ff8:	468c      	mov	ip, r1
 8000ffa:	449c      	add	ip, r3
 8000ffc:	4666      	mov	r6, ip
 8000ffe:	5781      	ldrsb	r1, [r0, r6]
 8001000:	9e01      	ldr	r6, [sp, #4]
 8001002:	2e00      	cmp	r6, #0
 8001004:	d100      	bne.n	8001008 <drawRec+0xf8>
 8001006:	e1c6      	b.n	8001396 <drawRec+0x486>
 8001008:	4666      	mov	r6, ip
 800100a:	9d08      	ldr	r5, [sp, #32]
 800100c:	4329      	orrs	r1, r5
 800100e:	5581      	strb	r1, [r0, r6]
 8001010:	9903      	ldr	r1, [sp, #12]
 8001012:	293f      	cmp	r1, #63	; 0x3f
 8001014:	dc06      	bgt.n	8001024 <drawRec+0x114>
 8001016:	9907      	ldr	r1, [sp, #28]
 8001018:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800101a:	468c      	mov	ip, r1
 800101c:	4463      	add	r3, ip
 800101e:	5cc1      	ldrb	r1, [r0, r3]
 8001020:	4329      	orrs	r1, r5
 8001022:	54c1      	strb	r1, [r0, r3]
 8001024:	3201      	adds	r2, #1
 8001026:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001028:	b2d2      	uxtb	r2, r2
 800102a:	429a      	cmp	r2, r3
 800102c:	dc25      	bgt.n	800107a <drawRec+0x16a>
 800102e:	9904      	ldr	r1, [sp, #16]
 8001030:	b293      	uxth	r3, r2
 8001032:	1859      	adds	r1, r3, r1
 8001034:	b289      	uxth	r1, r1
 8001036:	297f      	cmp	r1, #127	; 0x7f
 8001038:	d8d3      	bhi.n	8000fe2 <drawRec+0xd2>
 800103a:	2c3f      	cmp	r4, #63	; 0x3f
 800103c:	ddb3      	ble.n	8000fa6 <drawRec+0x96>
 800103e:	9803      	ldr	r0, [sp, #12]
 8001040:	283f      	cmp	r0, #63	; 0x3f
 8001042:	dcce      	bgt.n	8000fe2 <drawRec+0xd2>
 8001044:	9801      	ldr	r0, [sp, #4]
 8001046:	2800      	cmp	r0, #0
 8001048:	d100      	bne.n	800104c <drawRec+0x13c>
 800104a:	e1cb      	b.n	80013e4 <drawRec+0x4d4>
 800104c:	486b      	ldr	r0, [pc, #428]	; (80011fc <drawRec+0x2ec>)
 800104e:	e7bf      	b.n	8000fd0 <drawRec+0xc0>
 8001050:	9903      	ldr	r1, [sp, #12]
 8001052:	293f      	cmp	r1, #63	; 0x3f
 8001054:	dce6      	bgt.n	8001024 <drawRec+0x114>
 8001056:	2b00      	cmp	r3, #0
 8001058:	dbe4      	blt.n	8001024 <drawRec+0x114>
 800105a:	9901      	ldr	r1, [sp, #4]
 800105c:	4867      	ldr	r0, [pc, #412]	; (80011fc <drawRec+0x2ec>)
 800105e:	2900      	cmp	r1, #0
 8001060:	d1d9      	bne.n	8001016 <drawRec+0x106>
 8001062:	9907      	ldr	r1, [sp, #28]
 8001064:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8001066:	468c      	mov	ip, r1
 8001068:	4463      	add	r3, ip
 800106a:	5cc1      	ldrb	r1, [r0, r3]
 800106c:	4029      	ands	r1, r5
 800106e:	54c1      	strb	r1, [r0, r3]
 8001070:	3201      	adds	r2, #1
 8001072:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001074:	b2d2      	uxtb	r2, r2
 8001076:	429a      	cmp	r2, r3
 8001078:	ddd9      	ble.n	800102e <drawRec+0x11e>
 800107a:	4653      	mov	r3, sl
 800107c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800107e:	1a9a      	subs	r2, r3, r2
 8001080:	0fd3      	lsrs	r3, r2, #31
 8001082:	189b      	adds	r3, r3, r2
 8001084:	105b      	asrs	r3, r3, #1
 8001086:	3301      	adds	r3, #1
 8001088:	469b      	mov	fp, r3
 800108a:	d500      	bpl.n	800108e <drawRec+0x17e>
 800108c:	e095      	b.n	80011ba <drawRec+0x2aa>
 800108e:	466b      	mov	r3, sp
 8001090:	252c      	movs	r5, #44	; 0x2c
 8001092:	5f5d      	ldrsh	r5, [r3, r5]
 8001094:	466b      	mov	r3, sp
 8001096:	2228      	movs	r2, #40	; 0x28
 8001098:	5e9b      	ldrsh	r3, [r3, r2]
 800109a:	4659      	mov	r1, fp
 800109c:	9304      	str	r3, [sp, #16]
 800109e:	466b      	mov	r3, sp
 80010a0:	8e1f      	ldrh	r7, [r3, #48]	; 0x30
 80010a2:	4b56      	ldr	r3, [pc, #344]	; (80011fc <drawRec+0x2ec>)
 80010a4:	2200      	movs	r2, #0
 80010a6:	9305      	str	r3, [sp, #20]
 80010a8:	4698      	mov	r8, r3
 80010aa:	9103      	str	r1, [sp, #12]
 80010ac:	46bb      	mov	fp, r7
 80010ae:	e04c      	b.n	800114a <drawRec+0x23a>
 80010b0:	4654      	mov	r4, sl
 80010b2:	1ae3      	subs	r3, r4, r3
 80010b4:	b21b      	sxth	r3, r3
 80010b6:	293f      	cmp	r1, #63	; 0x3f
 80010b8:	d824      	bhi.n	8001104 <drawRec+0x1f4>
 80010ba:	10c1      	asrs	r1, r0, #3
 80010bc:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 80010be:	01c9      	lsls	r1, r1, #7
 80010c0:	4689      	mov	r9, r1
 80010c2:	46a4      	mov	ip, r4
 80010c4:	44cc      	add	ip, r9
 80010c6:	4667      	mov	r7, ip
 80010c8:	4646      	mov	r6, r8
 80010ca:	57f4      	ldrsb	r4, [r6, r7]
 80010cc:	2707      	movs	r7, #7
 80010ce:	0021      	movs	r1, r4
 80010d0:	2401      	movs	r4, #1
 80010d2:	4038      	ands	r0, r7
 80010d4:	4084      	lsls	r4, r0
 80010d6:	9f01      	ldr	r7, [sp, #4]
 80010d8:	b264      	sxtb	r4, r4
 80010da:	2f00      	cmp	r7, #0
 80010dc:	d100      	bne.n	80010e0 <drawRec+0x1d0>
 80010de:	e14a      	b.n	8001376 <drawRec+0x466>
 80010e0:	0008      	movs	r0, r1
 80010e2:	4661      	mov	r1, ip
 80010e4:	4320      	orrs	r0, r4
 80010e6:	5470      	strb	r0, [r6, r1]
 80010e8:	9904      	ldr	r1, [sp, #16]
 80010ea:	297f      	cmp	r1, #127	; 0x7f
 80010ec:	dc0a      	bgt.n	8001104 <drawRec+0x1f4>
 80010ee:	990a      	ldr	r1, [sp, #40]	; 0x28
 80010f0:	468c      	mov	ip, r1
 80010f2:	4649      	mov	r1, r9
 80010f4:	4461      	add	r1, ip
 80010f6:	5670      	ldrsb	r0, [r6, r1]
 80010f8:	4684      	mov	ip, r0
 80010fa:	4660      	mov	r0, ip
 80010fc:	4304      	orrs	r4, r0
 80010fe:	5474      	strb	r4, [r6, r1]
 8001100:	2d7f      	cmp	r5, #127	; 0x7f
 8001102:	dc47      	bgt.n	8001194 <drawRec+0x284>
 8001104:	2b3f      	cmp	r3, #63	; 0x3f
 8001106:	dc1b      	bgt.n	8001140 <drawRec+0x230>
 8001108:	2b00      	cmp	r3, #0
 800110a:	db19      	blt.n	8001140 <drawRec+0x230>
 800110c:	2707      	movs	r7, #7
 800110e:	10d9      	asrs	r1, r3, #3
 8001110:	403b      	ands	r3, r7
 8001112:	3f06      	subs	r7, #6
 8001114:	409f      	lsls	r7, r3
 8001116:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001118:	01c9      	lsls	r1, r1, #7
 800111a:	4e38      	ldr	r6, [pc, #224]	; (80011fc <drawRec+0x2ec>)
 800111c:	b27b      	sxtb	r3, r7
 800111e:	9f01      	ldr	r7, [sp, #4]
 8001120:	1844      	adds	r4, r0, r1
 8001122:	5730      	ldrsb	r0, [r6, r4]
 8001124:	2f00      	cmp	r7, #0
 8001126:	d100      	bne.n	800112a <drawRec+0x21a>
 8001128:	e116      	b.n	8001358 <drawRec+0x448>
 800112a:	4318      	orrs	r0, r3
 800112c:	5530      	strb	r0, [r6, r4]
 800112e:	9804      	ldr	r0, [sp, #16]
 8001130:	287f      	cmp	r0, #127	; 0x7f
 8001132:	dc05      	bgt.n	8001140 <drawRec+0x230>
 8001134:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001136:	4684      	mov	ip, r0
 8001138:	4461      	add	r1, ip
 800113a:	5c70      	ldrb	r0, [r6, r1]
 800113c:	4303      	orrs	r3, r0
 800113e:	5473      	strb	r3, [r6, r1]
 8001140:	3201      	adds	r2, #1
 8001142:	9b03      	ldr	r3, [sp, #12]
 8001144:	b2d2      	uxtb	r2, r2
 8001146:	429a      	cmp	r2, r3
 8001148:	dc36      	bgt.n	80011b8 <drawRec+0x2a8>
 800114a:	4659      	mov	r1, fp
 800114c:	b293      	uxth	r3, r2
 800114e:	1859      	adds	r1, r3, r1
 8001150:	b289      	uxth	r1, r1
 8001152:	b208      	sxth	r0, r1
 8001154:	2d7f      	cmp	r5, #127	; 0x7f
 8001156:	ddab      	ble.n	80010b0 <drawRec+0x1a0>
 8001158:	9c04      	ldr	r4, [sp, #16]
 800115a:	2c7f      	cmp	r4, #127	; 0x7f
 800115c:	dcf0      	bgt.n	8001140 <drawRec+0x230>
 800115e:	4654      	mov	r4, sl
 8001160:	1ae3      	subs	r3, r4, r3
 8001162:	b21b      	sxth	r3, r3
 8001164:	293f      	cmp	r1, #63	; 0x3f
 8001166:	d815      	bhi.n	8001194 <drawRec+0x284>
 8001168:	2107      	movs	r1, #7
 800116a:	2401      	movs	r4, #1
 800116c:	4001      	ands	r1, r0
 800116e:	408c      	lsls	r4, r1
 8001170:	10c1      	asrs	r1, r0, #3
 8001172:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001174:	01c9      	lsls	r1, r1, #7
 8001176:	4684      	mov	ip, r0
 8001178:	9e05      	ldr	r6, [sp, #20]
 800117a:	4461      	add	r1, ip
 800117c:	5670      	ldrsb	r0, [r6, r1]
 800117e:	9f01      	ldr	r7, [sp, #4]
 8001180:	b264      	sxtb	r4, r4
 8001182:	4684      	mov	ip, r0
 8001184:	43e0      	mvns	r0, r4
 8001186:	2f00      	cmp	r7, #0
 8001188:	d1b7      	bne.n	80010fa <drawRec+0x1ea>
 800118a:	4664      	mov	r4, ip
 800118c:	4020      	ands	r0, r4
 800118e:	5470      	strb	r0, [r6, r1]
 8001190:	2d7f      	cmp	r5, #127	; 0x7f
 8001192:	ddb7      	ble.n	8001104 <drawRec+0x1f4>
 8001194:	2b3f      	cmp	r3, #63	; 0x3f
 8001196:	dcd3      	bgt.n	8001140 <drawRec+0x230>
 8001198:	2b00      	cmp	r3, #0
 800119a:	dbd1      	blt.n	8001140 <drawRec+0x230>
 800119c:	2007      	movs	r0, #7
 800119e:	10d9      	asrs	r1, r3, #3
 80011a0:	4003      	ands	r3, r0
 80011a2:	3806      	subs	r0, #6
 80011a4:	4098      	lsls	r0, r3
 80011a6:	b243      	sxtb	r3, r0
 80011a8:	9801      	ldr	r0, [sp, #4]
 80011aa:	01c9      	lsls	r1, r1, #7
 80011ac:	2800      	cmp	r0, #0
 80011ae:	d000      	beq.n	80011b2 <drawRec+0x2a2>
 80011b0:	e116      	b.n	80013e0 <drawRec+0x4d0>
 80011b2:	43db      	mvns	r3, r3
 80011b4:	4e11      	ldr	r6, [pc, #68]	; (80011fc <drawRec+0x2ec>)
 80011b6:	e0d7      	b.n	8001368 <drawRec+0x458>
 80011b8:	469b      	mov	fp, r3
 80011ba:	2301      	movs	r3, #1
 80011bc:	9306      	str	r3, [sp, #24]
 80011be:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80011c0:	2b00      	cmp	r3, #0
 80011c2:	dc00      	bgt.n	80011c6 <drawRec+0x2b6>
 80011c4:	e0aa      	b.n	800131c <drawRec+0x40c>
 80011c6:	4b0d      	ldr	r3, [pc, #52]	; (80011fc <drawRec+0x2ec>)
 80011c8:	465d      	mov	r5, fp
 80011ca:	4699      	mov	r9, r3
 80011cc:	46d3      	mov	fp, sl
 80011ce:	2d00      	cmp	r5, #0
 80011d0:	dc00      	bgt.n	80011d4 <drawRec+0x2c4>
 80011d2:	e09b      	b.n	800130c <drawRec+0x3fc>
 80011d4:	466b      	mov	r3, sp
 80011d6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80011d8:	8b1b      	ldrh	r3, [r3, #24]
 80011da:	46dc      	mov	ip, fp
 80011dc:	1898      	adds	r0, r3, r2
 80011de:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80011e0:	9501      	str	r5, [sp, #4]
 80011e2:	1ad3      	subs	r3, r2, r3
 80011e4:	b29b      	uxth	r3, r3
 80011e6:	9307      	str	r3, [sp, #28]
 80011e8:	b219      	sxth	r1, r3
 80011ea:	466b      	mov	r3, sp
 80011ec:	8e1f      	ldrh	r7, [r3, #48]	; 0x30
 80011ee:	2307      	movs	r3, #7
 80011f0:	469a      	mov	sl, r3
 80011f2:	3b06      	subs	r3, #6
 80011f4:	2201      	movs	r2, #1
 80011f6:	4698      	mov	r8, r3
 80011f8:	46bb      	mov	fp, r7
 80011fa:	e057      	b.n	80012ac <drawRec+0x39c>
 80011fc:	20000834 	.word	0x20000834
 8001200:	4665      	mov	r5, ip
 8001202:	1aeb      	subs	r3, r5, r3
 8001204:	b21b      	sxth	r3, r3
 8001206:	2c3f      	cmp	r4, #63	; 0x3f
 8001208:	d821      	bhi.n	800124e <drawRec+0x33e>
 800120a:	10f5      	asrs	r5, r6, #3
 800120c:	01ec      	lsls	r4, r5, #7
 800120e:	4657      	mov	r7, sl
 8001210:	9405      	str	r4, [sp, #20]
 8001212:	1904      	adds	r4, r0, r4
 8001214:	0025      	movs	r5, r4
 8001216:	4644      	mov	r4, r8
 8001218:	403e      	ands	r6, r7
 800121a:	464f      	mov	r7, r9
 800121c:	40b4      	lsls	r4, r6
 800121e:	9703      	str	r7, [sp, #12]
 8001220:	577e      	ldrsb	r6, [r7, r5]
 8001222:	9f02      	ldr	r7, [sp, #8]
 8001224:	b264      	sxtb	r4, r4
 8001226:	9504      	str	r5, [sp, #16]
 8001228:	2f00      	cmp	r7, #0
 800122a:	d100      	bne.n	800122e <drawRec+0x31e>
 800122c:	e07d      	b.n	800132a <drawRec+0x41a>
 800122e:	464d      	mov	r5, r9
 8001230:	9f04      	ldr	r7, [sp, #16]
 8001232:	4326      	orrs	r6, r4
 8001234:	55ee      	strb	r6, [r5, r7]
 8001236:	9d07      	ldr	r5, [sp, #28]
 8001238:	2d7f      	cmp	r5, #127	; 0x7f
 800123a:	d808      	bhi.n	800124e <drawRec+0x33e>
 800123c:	464e      	mov	r6, r9
 800123e:	9d05      	ldr	r5, [sp, #20]
 8001240:	194d      	adds	r5, r1, r5
 8001242:	5776      	ldrsb	r6, [r6, r5]
 8001244:	4334      	orrs	r4, r6
 8001246:	9e03      	ldr	r6, [sp, #12]
 8001248:	5574      	strb	r4, [r6, r5]
 800124a:	287f      	cmp	r0, #127	; 0x7f
 800124c:	d855      	bhi.n	80012fa <drawRec+0x3ea>
 800124e:	2b3f      	cmp	r3, #63	; 0x3f
 8001250:	dc27      	bgt.n	80012a2 <drawRec+0x392>
 8001252:	2b00      	cmp	r3, #0
 8001254:	db0f      	blt.n	8001276 <drawRec+0x366>
 8001256:	10dc      	asrs	r4, r3, #3
 8001258:	4d63      	ldr	r5, [pc, #396]	; (80013e8 <drawRec+0x4d8>)
 800125a:	01e4      	lsls	r4, r4, #7
 800125c:	1824      	adds	r4, r4, r0
 800125e:	572e      	ldrsb	r6, [r5, r4]
 8001260:	4655      	mov	r5, sl
 8001262:	4647      	mov	r7, r8
 8001264:	401d      	ands	r5, r3
 8001266:	40af      	lsls	r7, r5
 8001268:	b27d      	sxtb	r5, r7
 800126a:	9f02      	ldr	r7, [sp, #8]
 800126c:	2f00      	cmp	r7, #0
 800126e:	d06b      	beq.n	8001348 <drawRec+0x438>
 8001270:	4335      	orrs	r5, r6
 8001272:	4e5d      	ldr	r6, [pc, #372]	; (80013e8 <drawRec+0x4d8>)
 8001274:	5535      	strb	r5, [r6, r4]
 8001276:	297f      	cmp	r1, #127	; 0x7f
 8001278:	dc13      	bgt.n	80012a2 <drawRec+0x392>
 800127a:	2900      	cmp	r1, #0
 800127c:	db11      	blt.n	80012a2 <drawRec+0x392>
 800127e:	2b00      	cmp	r3, #0
 8001280:	db0f      	blt.n	80012a2 <drawRec+0x392>
 8001282:	4654      	mov	r4, sl
 8001284:	4645      	mov	r5, r8
 8001286:	401c      	ands	r4, r3
 8001288:	40a5      	lsls	r5, r4
 800128a:	10db      	asrs	r3, r3, #3
 800128c:	b26c      	sxtb	r4, r5
 800128e:	01db      	lsls	r3, r3, #7
 8001290:	4d55      	ldr	r5, [pc, #340]	; (80013e8 <drawRec+0x4d8>)
 8001292:	9e02      	ldr	r6, [sp, #8]
 8001294:	185b      	adds	r3, r3, r1
 8001296:	56ed      	ldrsb	r5, [r5, r3]
 8001298:	2e00      	cmp	r6, #0
 800129a:	d059      	beq.n	8001350 <drawRec+0x440>
 800129c:	432c      	orrs	r4, r5
 800129e:	4d52      	ldr	r5, [pc, #328]	; (80013e8 <drawRec+0x4d8>)
 80012a0:	54ec      	strb	r4, [r5, r3]
 80012a2:	3201      	adds	r2, #1
 80012a4:	9b01      	ldr	r3, [sp, #4]
 80012a6:	b2d2      	uxtb	r2, r2
 80012a8:	429a      	cmp	r2, r3
 80012aa:	dc2d      	bgt.n	8001308 <drawRec+0x3f8>
 80012ac:	465c      	mov	r4, fp
 80012ae:	b293      	uxth	r3, r2
 80012b0:	191c      	adds	r4, r3, r4
 80012b2:	b2a4      	uxth	r4, r4
 80012b4:	b226      	sxth	r6, r4
 80012b6:	287f      	cmp	r0, #127	; 0x7f
 80012b8:	d9a2      	bls.n	8001200 <drawRec+0x2f0>
 80012ba:	297f      	cmp	r1, #127	; 0x7f
 80012bc:	dcf1      	bgt.n	80012a2 <drawRec+0x392>
 80012be:	4665      	mov	r5, ip
 80012c0:	1aeb      	subs	r3, r5, r3
 80012c2:	b21b      	sxth	r3, r3
 80012c4:	2c3f      	cmp	r4, #63	; 0x3f
 80012c6:	d818      	bhi.n	80012fa <drawRec+0x3ea>
 80012c8:	2900      	cmp	r1, #0
 80012ca:	db16      	blt.n	80012fa <drawRec+0x3ea>
 80012cc:	4654      	mov	r4, sl
 80012ce:	4645      	mov	r5, r8
 80012d0:	4034      	ands	r4, r6
 80012d2:	40a5      	lsls	r5, r4
 80012d4:	b26c      	sxtb	r4, r5
 80012d6:	43e7      	mvns	r7, r4
 80012d8:	10f5      	asrs	r5, r6, #3
 80012da:	01ed      	lsls	r5, r5, #7
 80012dc:	4e42      	ldr	r6, [pc, #264]	; (80013e8 <drawRec+0x4d8>)
 80012de:	9708      	str	r7, [sp, #32]
 80012e0:	9f02      	ldr	r7, [sp, #8]
 80012e2:	186d      	adds	r5, r5, r1
 80012e4:	9603      	str	r6, [sp, #12]
 80012e6:	5776      	ldrsb	r6, [r6, r5]
 80012e8:	2f00      	cmp	r7, #0
 80012ea:	d1ab      	bne.n	8001244 <drawRec+0x334>
 80012ec:	9c08      	ldr	r4, [sp, #32]
 80012ee:	4034      	ands	r4, r6
 80012f0:	0026      	movs	r6, r4
 80012f2:	9c03      	ldr	r4, [sp, #12]
 80012f4:	5566      	strb	r6, [r4, r5]
 80012f6:	287f      	cmp	r0, #127	; 0x7f
 80012f8:	d9a9      	bls.n	800124e <drawRec+0x33e>
 80012fa:	2b3f      	cmp	r3, #63	; 0x3f
 80012fc:	ddbd      	ble.n	800127a <drawRec+0x36a>
 80012fe:	3201      	adds	r2, #1
 8001300:	9b01      	ldr	r3, [sp, #4]
 8001302:	b2d2      	uxtb	r2, r2
 8001304:	429a      	cmp	r2, r3
 8001306:	ddd1      	ble.n	80012ac <drawRec+0x39c>
 8001308:	001d      	movs	r5, r3
 800130a:	46e3      	mov	fp, ip
 800130c:	9b06      	ldr	r3, [sp, #24]
 800130e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8001310:	3301      	adds	r3, #1
 8001312:	b2db      	uxtb	r3, r3
 8001314:	9306      	str	r3, [sp, #24]
 8001316:	4293      	cmp	r3, r2
 8001318:	dc00      	bgt.n	800131c <drawRec+0x40c>
 800131a:	e758      	b.n	80011ce <drawRec+0x2be>
 800131c:	b011      	add	sp, #68	; 0x44
 800131e:	bc3c      	pop	{r2, r3, r4, r5}
 8001320:	4690      	mov	r8, r2
 8001322:	4699      	mov	r9, r3
 8001324:	46a2      	mov	sl, r4
 8001326:	46ab      	mov	fp, r5
 8001328:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800132a:	43e4      	mvns	r4, r4
 800132c:	4026      	ands	r6, r4
 800132e:	9408      	str	r4, [sp, #32]
 8001330:	464c      	mov	r4, r9
 8001332:	9d04      	ldr	r5, [sp, #16]
 8001334:	5566      	strb	r6, [r4, r5]
 8001336:	9c07      	ldr	r4, [sp, #28]
 8001338:	2c7f      	cmp	r4, #127	; 0x7f
 800133a:	d900      	bls.n	800133e <drawRec+0x42e>
 800133c:	e787      	b.n	800124e <drawRec+0x33e>
 800133e:	9c05      	ldr	r4, [sp, #20]
 8001340:	190d      	adds	r5, r1, r4
 8001342:	464c      	mov	r4, r9
 8001344:	5766      	ldrsb	r6, [r4, r5]
 8001346:	e7d1      	b.n	80012ec <drawRec+0x3dc>
 8001348:	43ae      	bics	r6, r5
 800134a:	4d27      	ldr	r5, [pc, #156]	; (80013e8 <drawRec+0x4d8>)
 800134c:	552e      	strb	r6, [r5, r4]
 800134e:	e792      	b.n	8001276 <drawRec+0x366>
 8001350:	43a5      	bics	r5, r4
 8001352:	4c25      	ldr	r4, [pc, #148]	; (80013e8 <drawRec+0x4d8>)
 8001354:	54e5      	strb	r5, [r4, r3]
 8001356:	e7a4      	b.n	80012a2 <drawRec+0x392>
 8001358:	43db      	mvns	r3, r3
 800135a:	4f23      	ldr	r7, [pc, #140]	; (80013e8 <drawRec+0x4d8>)
 800135c:	4018      	ands	r0, r3
 800135e:	5538      	strb	r0, [r7, r4]
 8001360:	9804      	ldr	r0, [sp, #16]
 8001362:	287f      	cmp	r0, #127	; 0x7f
 8001364:	dd00      	ble.n	8001368 <drawRec+0x458>
 8001366:	e6eb      	b.n	8001140 <drawRec+0x230>
 8001368:	980a      	ldr	r0, [sp, #40]	; 0x28
 800136a:	4684      	mov	ip, r0
 800136c:	4461      	add	r1, ip
 800136e:	5c70      	ldrb	r0, [r6, r1]
 8001370:	4003      	ands	r3, r0
 8001372:	5473      	strb	r3, [r6, r1]
 8001374:	e6e4      	b.n	8001140 <drawRec+0x230>
 8001376:	43e0      	mvns	r0, r4
 8001378:	000c      	movs	r4, r1
 800137a:	4667      	mov	r7, ip
 800137c:	9904      	ldr	r1, [sp, #16]
 800137e:	4004      	ands	r4, r0
 8001380:	55f4      	strb	r4, [r6, r7]
 8001382:	297f      	cmp	r1, #127	; 0x7f
 8001384:	dd00      	ble.n	8001388 <drawRec+0x478>
 8001386:	e6bd      	b.n	8001104 <drawRec+0x1f4>
 8001388:	990a      	ldr	r1, [sp, #40]	; 0x28
 800138a:	468c      	mov	ip, r1
 800138c:	4649      	mov	r1, r9
 800138e:	4461      	add	r1, ip
 8001390:	5674      	ldrsb	r4, [r6, r1]
 8001392:	46a4      	mov	ip, r4
 8001394:	e6f9      	b.n	800118a <drawRec+0x27a>
 8001396:	4666      	mov	r6, ip
 8001398:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 800139a:	4029      	ands	r1, r5
 800139c:	5581      	strb	r1, [r0, r6]
 800139e:	9903      	ldr	r1, [sp, #12]
 80013a0:	293f      	cmp	r1, #63	; 0x3f
 80013a2:	dd00      	ble.n	80013a6 <drawRec+0x496>
 80013a4:	e63e      	b.n	8001024 <drawRec+0x114>
 80013a6:	9907      	ldr	r1, [sp, #28]
 80013a8:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 80013aa:	468c      	mov	ip, r1
 80013ac:	4463      	add	r3, ip
 80013ae:	5cc1      	ldrb	r1, [r0, r3]
 80013b0:	4029      	ands	r1, r5
 80013b2:	54c1      	strb	r1, [r0, r3]
 80013b4:	e65c      	b.n	8001070 <drawRec+0x160>
 80013b6:	4666      	mov	r6, ip
 80013b8:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 80013ba:	402e      	ands	r6, r5
 80013bc:	46b4      	mov	ip, r6
 80013be:	464e      	mov	r6, r9
 80013c0:	4667      	mov	r7, ip
 80013c2:	9d03      	ldr	r5, [sp, #12]
 80013c4:	5587      	strb	r7, [r0, r6]
 80013c6:	2d3f      	cmp	r5, #63	; 0x3f
 80013c8:	dd00      	ble.n	80013cc <drawRec+0x4bc>
 80013ca:	e60a      	b.n	8000fe2 <drawRec+0xd2>
 80013cc:	9d07      	ldr	r5, [sp, #28]
 80013ce:	46ac      	mov	ip, r5
 80013d0:	448c      	add	ip, r1
 80013d2:	4661      	mov	r1, ip
 80013d4:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 80013d6:	5c41      	ldrb	r1, [r0, r1]
 80013d8:	4029      	ands	r1, r5
 80013da:	4665      	mov	r5, ip
 80013dc:	5541      	strb	r1, [r0, r5]
 80013de:	e600      	b.n	8000fe2 <drawRec+0xd2>
 80013e0:	4e01      	ldr	r6, [pc, #4]	; (80013e8 <drawRec+0x4d8>)
 80013e2:	e6a7      	b.n	8001134 <drawRec+0x224>
 80013e4:	4800      	ldr	r0, [pc, #0]	; (80013e8 <drawRec+0x4d8>)
 80013e6:	e7f1      	b.n	80013cc <drawRec+0x4bc>
 80013e8:	20000834 	.word	0x20000834

080013ec <oledColor>:
 80013ec:	2280      	movs	r2, #128	; 0x80
 80013ee:	b510      	push	{r4, lr}
 80013f0:	0001      	movs	r1, r0
 80013f2:	00d2      	lsls	r2, r2, #3
 80013f4:	4801      	ldr	r0, [pc, #4]	; (80013fc <oledColor+0x10>)
 80013f6:	f000 ff7f 	bl	80022f8 <memset>
 80013fa:	bd10      	pop	{r4, pc}
 80013fc:	20000834 	.word	0x20000834

08001400 <oledFrame2>:
 8001400:	b570      	push	{r4, r5, r6, lr}
 8001402:	4b52      	ldr	r3, [pc, #328]	; (800154c <oledFrame2+0x14c>)
 8001404:	4d52      	ldr	r5, [pc, #328]	; (8001550 <oledFrame2+0x150>)
 8001406:	781b      	ldrb	r3, [r3, #0]
 8001408:	7828      	ldrb	r0, [r5, #0]
 800140a:	2109      	movs	r1, #9
 800140c:	18c0      	adds	r0, r0, r3
 800140e:	b2c0      	uxtb	r0, r0
 8001410:	f7fe ff00 	bl	8000214 <__aeabi_uidivmod>
 8001414:	b2cc      	uxtb	r4, r1
 8001416:	702c      	strb	r4, [r5, #0]
 8001418:	4d4e      	ldr	r5, [pc, #312]	; (8001554 <oledFrame2+0x154>)
 800141a:	2280      	movs	r2, #128	; 0x80
 800141c:	2101      	movs	r1, #1
 800141e:	0028      	movs	r0, r5
 8001420:	f000 ff6a 	bl	80022f8 <memset>
 8001424:	0028      	movs	r0, r5
 8001426:	2280      	movs	r2, #128	; 0x80
 8001428:	2100      	movs	r1, #0
 800142a:	3080      	adds	r0, #128	; 0x80
 800142c:	f000 ff64 	bl	80022f8 <memset>
 8001430:	0028      	movs	r0, r5
 8001432:	2280      	movs	r2, #128	; 0x80
 8001434:	3081      	adds	r0, #129	; 0x81
 8001436:	0052      	lsls	r2, r2, #1
 8001438:	2100      	movs	r1, #0
 800143a:	30ff      	adds	r0, #255	; 0xff
 800143c:	f000 ff5c 	bl	80022f8 <memset>
 8001440:	23c0      	movs	r3, #192	; 0xc0
 8001442:	009b      	lsls	r3, r3, #2
 8001444:	18e8      	adds	r0, r5, r3
 8001446:	2280      	movs	r2, #128	; 0x80
 8001448:	2100      	movs	r1, #0
 800144a:	f000 ff55 	bl	80022f8 <memset>
 800144e:	23e0      	movs	r3, #224	; 0xe0
 8001450:	009b      	lsls	r3, r3, #2
 8001452:	18e8      	adds	r0, r5, r3
 8001454:	2280      	movs	r2, #128	; 0x80
 8001456:	2180      	movs	r1, #128	; 0x80
 8001458:	f000 ff4e 	bl	80022f8 <memset>
 800145c:	2c04      	cmp	r4, #4
 800145e:	d846      	bhi.n	80014ee <oledFrame2+0xee>
 8001460:	1c68      	adds	r0, r5, #1
 8001462:	0022      	movs	r2, r4
 8001464:	2100      	movs	r1, #0
 8001466:	30ff      	adds	r0, #255	; 0xff
 8001468:	f000 ff46 	bl	80022f8 <memset>
 800146c:	23a0      	movs	r3, #160	; 0xa0
 800146e:	009b      	lsls	r3, r3, #2
 8001470:	18e8      	adds	r0, r5, r3
 8001472:	0022      	movs	r2, r4
 8001474:	2100      	movs	r1, #0
 8001476:	f000 ff3f 	bl	80022f8 <memset>
 800147a:	4e37      	ldr	r6, [pc, #220]	; (8001558 <oledFrame2+0x158>)
 800147c:	b2a4      	uxth	r4, r4
 800147e:	1c60      	adds	r0, r4, #1
 8001480:	30ff      	adds	r0, #255	; 0xff
 8001482:	2205      	movs	r2, #5
 8001484:	2120      	movs	r1, #32
 8001486:	1828      	adds	r0, r5, r0
 8001488:	f000 ff36 	bl	80022f8 <memset>
 800148c:	1da0      	adds	r0, r4, #6
 800148e:	30ff      	adds	r0, #255	; 0xff
 8001490:	2204      	movs	r2, #4
 8001492:	2100      	movs	r1, #0
 8001494:	1828      	adds	r0, r5, r0
 8001496:	f000 ff2f 	bl	80022f8 <memset>
 800149a:	23a0      	movs	r3, #160	; 0xa0
 800149c:	009b      	lsls	r3, r3, #2
 800149e:	18e0      	adds	r0, r4, r3
 80014a0:	2205      	movs	r2, #5
 80014a2:	2104      	movs	r1, #4
 80014a4:	1828      	adds	r0, r5, r0
 80014a6:	f000 ff27 	bl	80022f8 <memset>
 80014aa:	4b2c      	ldr	r3, [pc, #176]	; (800155c <oledFrame2+0x15c>)
 80014ac:	2204      	movs	r2, #4
 80014ae:	18e0      	adds	r0, r4, r3
 80014b0:	3409      	adds	r4, #9
 80014b2:	1828      	adds	r0, r5, r0
 80014b4:	2100      	movs	r1, #0
 80014b6:	b2a4      	uxth	r4, r4
 80014b8:	f000 ff1e 	bl	80022f8 <memset>
 80014bc:	8034      	strh	r4, [r6, #0]
 80014be:	2c77      	cmp	r4, #119	; 0x77
 80014c0:	d9dd      	bls.n	800147e <oledFrame2+0x7e>
 80014c2:	2680      	movs	r6, #128	; 0x80
 80014c4:	1c60      	adds	r0, r4, #1
 80014c6:	1b36      	subs	r6, r6, r4
 80014c8:	30ff      	adds	r0, #255	; 0xff
 80014ca:	0032      	movs	r2, r6
 80014cc:	2120      	movs	r1, #32
 80014ce:	1828      	adds	r0, r5, r0
 80014d0:	f000 ff12 	bl	80022f8 <memset>
 80014d4:	23a0      	movs	r3, #160	; 0xa0
 80014d6:	0032      	movs	r2, r6
 80014d8:	267b      	movs	r6, #123	; 0x7b
 80014da:	009b      	lsls	r3, r3, #2
 80014dc:	18e0      	adds	r0, r4, r3
 80014de:	1828      	adds	r0, r5, r0
 80014e0:	2104      	movs	r1, #4
 80014e2:	f000 ff09 	bl	80022f8 <memset>
 80014e6:	1b36      	subs	r6, r6, r4
 80014e8:	2e00      	cmp	r6, #0
 80014ea:	dc1e      	bgt.n	800152a <oledFrame2+0x12a>
 80014ec:	bd70      	pop	{r4, r5, r6, pc}
 80014ee:	1f26      	subs	r6, r4, #4
 80014f0:	1c68      	adds	r0, r5, #1
 80014f2:	0032      	movs	r2, r6
 80014f4:	2120      	movs	r1, #32
 80014f6:	30ff      	adds	r0, #255	; 0xff
 80014f8:	f000 fefe 	bl	80022f8 <memset>
 80014fc:	0020      	movs	r0, r4
 80014fe:	30fc      	adds	r0, #252	; 0xfc
 8001500:	1828      	adds	r0, r5, r0
 8001502:	2204      	movs	r2, #4
 8001504:	2100      	movs	r1, #0
 8001506:	f000 fef7 	bl	80022f8 <memset>
 800150a:	23a0      	movs	r3, #160	; 0xa0
 800150c:	009b      	lsls	r3, r3, #2
 800150e:	18e8      	adds	r0, r5, r3
 8001510:	0032      	movs	r2, r6
 8001512:	2104      	movs	r1, #4
 8001514:	f000 fef0 	bl	80022f8 <memset>
 8001518:	239f      	movs	r3, #159	; 0x9f
 800151a:	009b      	lsls	r3, r3, #2
 800151c:	18e0      	adds	r0, r4, r3
 800151e:	1828      	adds	r0, r5, r0
 8001520:	2204      	movs	r2, #4
 8001522:	2100      	movs	r1, #0
 8001524:	f000 fee8 	bl	80022f8 <memset>
 8001528:	e7a7      	b.n	800147a <oledFrame2+0x7a>
 800152a:	1da0      	adds	r0, r4, #6
 800152c:	30ff      	adds	r0, #255	; 0xff
 800152e:	0032      	movs	r2, r6
 8001530:	1828      	adds	r0, r5, r0
 8001532:	2100      	movs	r1, #0
 8001534:	f000 fee0 	bl	80022f8 <memset>
 8001538:	4b08      	ldr	r3, [pc, #32]	; (800155c <oledFrame2+0x15c>)
 800153a:	0032      	movs	r2, r6
 800153c:	469c      	mov	ip, r3
 800153e:	4464      	add	r4, ip
 8001540:	1928      	adds	r0, r5, r4
 8001542:	2100      	movs	r1, #0
 8001544:	f000 fed8 	bl	80022f8 <memset>
 8001548:	e7d0      	b.n	80014ec <oledFrame2+0xec>
 800154a:	46c0      	nop			; (mov r8, r8)
 800154c:	20000010 	.word	0x20000010
 8001550:	20000c36 	.word	0x20000c36
 8001554:	20000834 	.word	0x20000834
 8001558:	20000c34 	.word	0x20000c34
 800155c:	00000285 	.word	0x00000285

08001560 <oledUpdate>:
 8001560:	2010      	movs	r0, #16
 8001562:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001564:	464e      	mov	r6, r9
 8001566:	4645      	mov	r5, r8
 8001568:	46de      	mov	lr, fp
 800156a:	4657      	mov	r7, sl
 800156c:	23b0      	movs	r3, #176	; 0xb0
 800156e:	4a31      	ldr	r2, [pc, #196]	; (8001634 <oledUpdate+0xd4>)
 8001570:	4681      	mov	r9, r0
 8001572:	4831      	ldr	r0, [pc, #196]	; (8001638 <oledUpdate+0xd8>)
 8001574:	b5e0      	push	{r5, r6, r7, lr}
 8001576:	4694      	mov	ip, r2
 8001578:	2500      	movs	r5, #0
 800157a:	2202      	movs	r2, #2
 800157c:	2440      	movs	r4, #64	; 0x40
 800157e:	4680      	mov	r8, r0
 8001580:	469b      	mov	fp, r3
 8001582:	492e      	ldr	r1, [pc, #184]	; (800163c <oledUpdate+0xdc>)
 8001584:	4b2e      	ldr	r3, [pc, #184]	; (8001640 <oledUpdate+0xe0>)
 8001586:	4e2f      	ldr	r6, [pc, #188]	; (8001644 <oledUpdate+0xe4>)
 8001588:	4667      	mov	r7, ip
 800158a:	6858      	ldr	r0, [r3, #4]
 800158c:	4030      	ands	r0, r6
 800158e:	4338      	orrs	r0, r7
 8001590:	6058      	str	r0, [r3, #4]
 8001592:	6998      	ldr	r0, [r3, #24]
 8001594:	4202      	tst	r2, r0
 8001596:	d0fc      	beq.n	8001592 <oledUpdate+0x32>
 8001598:	629d      	str	r5, [r3, #40]	; 0x28
 800159a:	6998      	ldr	r0, [r3, #24]
 800159c:	4202      	tst	r2, r0
 800159e:	d0fc      	beq.n	800159a <oledUpdate+0x3a>
 80015a0:	4658      	mov	r0, fp
 80015a2:	6298      	str	r0, [r3, #40]	; 0x28
 80015a4:	6998      	ldr	r0, [r3, #24]
 80015a6:	4204      	tst	r4, r0
 80015a8:	d1fc      	bne.n	80015a4 <oledUpdate+0x44>
 80015aa:	4667      	mov	r7, ip
 80015ac:	6858      	ldr	r0, [r3, #4]
 80015ae:	4030      	ands	r0, r6
 80015b0:	4338      	orrs	r0, r7
 80015b2:	6058      	str	r0, [r3, #4]
 80015b4:	6998      	ldr	r0, [r3, #24]
 80015b6:	4202      	tst	r2, r0
 80015b8:	d0fc      	beq.n	80015b4 <oledUpdate+0x54>
 80015ba:	629d      	str	r5, [r3, #40]	; 0x28
 80015bc:	6998      	ldr	r0, [r3, #24]
 80015be:	4202      	tst	r2, r0
 80015c0:	d0fc      	beq.n	80015bc <oledUpdate+0x5c>
 80015c2:	629d      	str	r5, [r3, #40]	; 0x28
 80015c4:	6998      	ldr	r0, [r3, #24]
 80015c6:	4204      	tst	r4, r0
 80015c8:	d1fc      	bne.n	80015c4 <oledUpdate+0x64>
 80015ca:	4667      	mov	r7, ip
 80015cc:	6858      	ldr	r0, [r3, #4]
 80015ce:	4030      	ands	r0, r6
 80015d0:	4338      	orrs	r0, r7
 80015d2:	6058      	str	r0, [r3, #4]
 80015d4:	6998      	ldr	r0, [r3, #24]
 80015d6:	4202      	tst	r2, r0
 80015d8:	d0fc      	beq.n	80015d4 <oledUpdate+0x74>
 80015da:	629d      	str	r5, [r3, #40]	; 0x28
 80015dc:	6998      	ldr	r0, [r3, #24]
 80015de:	4202      	tst	r2, r0
 80015e0:	d0fc      	beq.n	80015dc <oledUpdate+0x7c>
 80015e2:	4648      	mov	r0, r9
 80015e4:	6298      	str	r0, [r3, #40]	; 0x28
 80015e6:	6998      	ldr	r0, [r3, #24]
 80015e8:	4204      	tst	r4, r0
 80015ea:	d1fc      	bne.n	80015e6 <oledUpdate+0x86>
 80015ec:	4647      	mov	r7, r8
 80015ee:	6858      	ldr	r0, [r3, #4]
 80015f0:	4030      	ands	r0, r6
 80015f2:	4338      	orrs	r0, r7
 80015f4:	6058      	str	r0, [r3, #4]
 80015f6:	6998      	ldr	r0, [r3, #24]
 80015f8:	4202      	tst	r2, r0
 80015fa:	d0fc      	beq.n	80015f6 <oledUpdate+0x96>
 80015fc:	0008      	movs	r0, r1
 80015fe:	629c      	str	r4, [r3, #40]	; 0x28
 8001600:	3080      	adds	r0, #128	; 0x80
 8001602:	699f      	ldr	r7, [r3, #24]
 8001604:	423a      	tst	r2, r7
 8001606:	d0fc      	beq.n	8001602 <oledUpdate+0xa2>
 8001608:	780f      	ldrb	r7, [r1, #0]
 800160a:	3101      	adds	r1, #1
 800160c:	629f      	str	r7, [r3, #40]	; 0x28
 800160e:	4281      	cmp	r1, r0
 8001610:	d1f7      	bne.n	8001602 <oledUpdate+0xa2>
 8001612:	6999      	ldr	r1, [r3, #24]
 8001614:	420c      	tst	r4, r1
 8001616:	d1fc      	bne.n	8001612 <oledUpdate+0xb2>
 8001618:	2101      	movs	r1, #1
 800161a:	468a      	mov	sl, r1
 800161c:	44d3      	add	fp, sl
 800161e:	0001      	movs	r1, r0
 8001620:	4658      	mov	r0, fp
 8001622:	28b8      	cmp	r0, #184	; 0xb8
 8001624:	d1b0      	bne.n	8001588 <oledUpdate+0x28>
 8001626:	bc3c      	pop	{r2, r3, r4, r5}
 8001628:	4690      	mov	r8, r2
 800162a:	4699      	mov	r9, r3
 800162c:	46a2      	mov	sl, r4
 800162e:	46ab      	mov	fp, r5
 8001630:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001632:	46c0      	nop			; (mov r8, r8)
 8001634:	02022078 	.word	0x02022078
 8001638:	02812078 	.word	0x02812078
 800163c:	20000834 	.word	0x20000834
 8001640:	40005800 	.word	0x40005800
 8001644:	fc008000 	.word	0xfc008000

08001648 <oledSetPix>:
 8001648:	b283      	uxth	r3, r0
 800164a:	b530      	push	{r4, r5, lr}
 800164c:	2b7f      	cmp	r3, #127	; 0x7f
 800164e:	d810      	bhi.n	8001672 <oledSetPix+0x2a>
 8001650:	b28b      	uxth	r3, r1
 8001652:	2b3f      	cmp	r3, #63	; 0x3f
 8001654:	d80d      	bhi.n	8001672 <oledSetPix+0x2a>
 8001656:	10cb      	asrs	r3, r1, #3
 8001658:	01db      	lsls	r3, r3, #7
 800165a:	1818      	adds	r0, r3, r0
 800165c:	2307      	movs	r3, #7
 800165e:	4019      	ands	r1, r3
 8001660:	3b06      	subs	r3, #6
 8001662:	408b      	lsls	r3, r1
 8001664:	4d05      	ldr	r5, [pc, #20]	; (800167c <oledSetPix+0x34>)
 8001666:	b25b      	sxtb	r3, r3
 8001668:	562c      	ldrsb	r4, [r5, r0]
 800166a:	2a00      	cmp	r2, #0
 800166c:	d002      	beq.n	8001674 <oledSetPix+0x2c>
 800166e:	4323      	orrs	r3, r4
 8001670:	542b      	strb	r3, [r5, r0]
 8001672:	bd30      	pop	{r4, r5, pc}
 8001674:	439c      	bics	r4, r3
 8001676:	542c      	strb	r4, [r5, r0]
 8001678:	e7fb      	b.n	8001672 <oledSetPix+0x2a>
 800167a:	46c0      	nop			; (mov r8, r8)
 800167c:	20000834 	.word	0x20000834

08001680 <oledSetCursor>:
 8001680:	4b02      	ldr	r3, [pc, #8]	; (800168c <oledSetCursor+0xc>)
 8001682:	7018      	strb	r0, [r3, #0]
 8001684:	4b02      	ldr	r3, [pc, #8]	; (8001690 <oledSetCursor+0x10>)
 8001686:	7019      	strb	r1, [r3, #0]
 8001688:	4770      	bx	lr
 800168a:	46c0      	nop			; (mov r8, r8)
 800168c:	2000082f 	.word	0x2000082f
 8001690:	20000830 	.word	0x20000830

08001694 <oled_putc>:
 8001694:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001696:	46de      	mov	lr, fp
 8001698:	4657      	mov	r7, sl
 800169a:	464e      	mov	r6, r9
 800169c:	4645      	mov	r5, r8
 800169e:	b5e0      	push	{r5, r6, r7, lr}
 80016a0:	b085      	sub	sp, #20
 80016a2:	280a      	cmp	r0, #10
 80016a4:	d06e      	beq.n	8001784 <oled_putc+0xf0>
 80016a6:	280d      	cmp	r0, #13
 80016a8:	d100      	bne.n	80016ac <oled_putc+0x18>
 80016aa:	e070      	b.n	800178e <oled_putc+0xfa>
 80016ac:	4d3b      	ldr	r5, [pc, #236]	; (800179c <oled_putc+0x108>)
 80016ae:	796b      	ldrb	r3, [r5, #5]
 80016b0:	2b00      	cmp	r3, #0
 80016b2:	d100      	bne.n	80016b6 <oled_putc+0x22>
 80016b4:	e06f      	b.n	8001796 <oled_putc+0x102>
 80016b6:	4b3a      	ldr	r3, [pc, #232]	; (80017a0 <oled_putc+0x10c>)
 80016b8:	2600      	movs	r6, #0
 80016ba:	9303      	str	r3, [sp, #12]
 80016bc:	4b39      	ldr	r3, [pc, #228]	; (80017a4 <oled_putc+0x110>)
 80016be:	4682      	mov	sl, r0
 80016c0:	469b      	mov	fp, r3
 80016c2:	4b39      	ldr	r3, [pc, #228]	; (80017a8 <oled_putc+0x114>)
 80016c4:	4699      	mov	r9, r3
 80016c6:	792b      	ldrb	r3, [r5, #4]
 80016c8:	2b00      	cmp	r3, #0
 80016ca:	d059      	beq.n	8001780 <oled_putc+0xec>
 80016cc:	4652      	mov	r2, sl
 80016ce:	b2b3      	uxth	r3, r6
 80016d0:	2400      	movs	r4, #0
 80016d2:	9601      	str	r6, [sp, #4]
 80016d4:	9202      	str	r2, [sp, #8]
 80016d6:	469a      	mov	sl, r3
 80016d8:	e009      	b.n	80016ee <oled_putc+0x5a>
 80016da:	003e      	movs	r6, r7
 80016dc:	431e      	orrs	r6, r3
 80016de:	0033      	movs	r3, r6
 80016e0:	4648      	mov	r0, r9
 80016e2:	4666      	mov	r6, ip
 80016e4:	5583      	strb	r3, [r0, r6]
 80016e6:	3401      	adds	r4, #1
 80016e8:	b2e4      	uxtb	r4, r4
 80016ea:	42a2      	cmp	r2, r4
 80016ec:	d936      	bls.n	800175c <oled_putc+0xc8>
 80016ee:	9a01      	ldr	r2, [sp, #4]
 80016f0:	0021      	movs	r1, r4
 80016f2:	68ab      	ldr	r3, [r5, #8]
 80016f4:	9802      	ldr	r0, [sp, #8]
 80016f6:	4798      	blx	r3
 80016f8:	465b      	mov	r3, fp
 80016fa:	7969      	ldrb	r1, [r5, #5]
 80016fc:	781b      	ldrb	r3, [r3, #0]
 80016fe:	1c8a      	adds	r2, r1, #2
 8001700:	4353      	muls	r3, r2
 8001702:	4453      	add	r3, sl
 8001704:	b29b      	uxth	r3, r3
 8001706:	4698      	mov	r8, r3
 8001708:	792a      	ldrb	r2, [r5, #4]
 800170a:	2b7f      	cmp	r3, #127	; 0x7f
 800170c:	d8eb      	bhi.n	80016e6 <oled_putc+0x52>
 800170e:	9b03      	ldr	r3, [sp, #12]
 8001710:	1c56      	adds	r6, r2, #1
 8001712:	781b      	ldrb	r3, [r3, #0]
 8001714:	435e      	muls	r6, r3
 8001716:	46b4      	mov	ip, r6
 8001718:	4b24      	ldr	r3, [pc, #144]	; (80017ac <oled_putc+0x118>)
 800171a:	781b      	ldrb	r3, [r3, #0]
 800171c:	b25b      	sxtb	r3, r3
 800171e:	4463      	add	r3, ip
 8001720:	191b      	adds	r3, r3, r4
 8001722:	b29b      	uxth	r3, r3
 8001724:	2b3f      	cmp	r3, #63	; 0x3f
 8001726:	d8de      	bhi.n	80016e6 <oled_putc+0x52>
 8001728:	b21b      	sxth	r3, r3
 800172a:	10de      	asrs	r6, r3, #3
 800172c:	01f6      	lsls	r6, r6, #7
 800172e:	46b4      	mov	ip, r6
 8001730:	44c4      	add	ip, r8
 8001732:	4667      	mov	r7, ip
 8001734:	464e      	mov	r6, r9
 8001736:	57f6      	ldrsb	r6, [r6, r7]
 8001738:	0037      	movs	r7, r6
 800173a:	2607      	movs	r6, #7
 800173c:	4033      	ands	r3, r6
 800173e:	3e06      	subs	r6, #6
 8001740:	409e      	lsls	r6, r3
 8001742:	b273      	sxtb	r3, r6
 8001744:	2800      	cmp	r0, #0
 8001746:	d1c8      	bne.n	80016da <oled_putc+0x46>
 8001748:	0038      	movs	r0, r7
 800174a:	4398      	bics	r0, r3
 800174c:	0003      	movs	r3, r0
 800174e:	4666      	mov	r6, ip
 8001750:	4648      	mov	r0, r9
 8001752:	3401      	adds	r4, #1
 8001754:	b2e4      	uxtb	r4, r4
 8001756:	5583      	strb	r3, [r0, r6]
 8001758:	42a2      	cmp	r2, r4
 800175a:	d8c8      	bhi.n	80016ee <oled_putc+0x5a>
 800175c:	9b02      	ldr	r3, [sp, #8]
 800175e:	9e01      	ldr	r6, [sp, #4]
 8001760:	469a      	mov	sl, r3
 8001762:	3601      	adds	r6, #1
 8001764:	b2f6      	uxtb	r6, r6
 8001766:	428e      	cmp	r6, r1
 8001768:	d3ad      	bcc.n	80016c6 <oled_putc+0x32>
 800176a:	9a03      	ldr	r2, [sp, #12]
 800176c:	7813      	ldrb	r3, [r2, #0]
 800176e:	3301      	adds	r3, #1
 8001770:	7013      	strb	r3, [r2, #0]
 8001772:	b005      	add	sp, #20
 8001774:	bc3c      	pop	{r2, r3, r4, r5}
 8001776:	4690      	mov	r8, r2
 8001778:	4699      	mov	r9, r3
 800177a:	46a2      	mov	sl, r4
 800177c:	46ab      	mov	fp, r5
 800177e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001780:	7969      	ldrb	r1, [r5, #5]
 8001782:	e7ee      	b.n	8001762 <oled_putc+0xce>
 8001784:	4a07      	ldr	r2, [pc, #28]	; (80017a4 <oled_putc+0x110>)
 8001786:	7813      	ldrb	r3, [r2, #0]
 8001788:	3301      	adds	r3, #1
 800178a:	7013      	strb	r3, [r2, #0]
 800178c:	e7f1      	b.n	8001772 <oled_putc+0xde>
 800178e:	2200      	movs	r2, #0
 8001790:	4b03      	ldr	r3, [pc, #12]	; (80017a0 <oled_putc+0x10c>)
 8001792:	701a      	strb	r2, [r3, #0]
 8001794:	e7ed      	b.n	8001772 <oled_putc+0xde>
 8001796:	4b02      	ldr	r3, [pc, #8]	; (80017a0 <oled_putc+0x10c>)
 8001798:	9303      	str	r3, [sp, #12]
 800179a:	e7e6      	b.n	800176a <oled_putc+0xd6>
 800179c:	20000004 	.word	0x20000004
 80017a0:	20000830 	.word	0x20000830
 80017a4:	2000082f 	.word	0x2000082f
 80017a8:	20000834 	.word	0x20000834
 80017ac:	20000831 	.word	0x20000831

080017b0 <oledPic>:
 80017b0:	2300      	movs	r3, #0
 80017b2:	469c      	mov	ip, r3
 80017b4:	4b1c      	ldr	r3, [pc, #112]	; (8001828 <oledPic+0x78>)
 80017b6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80017b8:	4657      	mov	r7, sl
 80017ba:	469a      	mov	sl, r3
 80017bc:	2307      	movs	r3, #7
 80017be:	464e      	mov	r6, r9
 80017c0:	4645      	mov	r5, r8
 80017c2:	46de      	mov	lr, fp
 80017c4:	4699      	mov	r9, r3
 80017c6:	3b06      	subs	r3, #6
 80017c8:	4698      	mov	r8, r3
 80017ca:	b5e0      	push	{r5, r6, r7, lr}
 80017cc:	3080      	adds	r0, #128	; 0x80
 80017ce:	4662      	mov	r2, ip
 80017d0:	464b      	mov	r3, r9
 80017d2:	4646      	mov	r6, r8
 80017d4:	4013      	ands	r3, r2
 80017d6:	409e      	lsls	r6, r3
 80017d8:	0003      	movs	r3, r0
 80017da:	b212      	sxth	r2, r2
 80017dc:	10d2      	asrs	r2, r2, #3
 80017de:	b276      	sxtb	r6, r6
 80017e0:	01d2      	lsls	r2, r2, #7
 80017e2:	43f7      	mvns	r7, r6
 80017e4:	3b80      	subs	r3, #128	; 0x80
 80017e6:	4452      	add	r2, sl
 80017e8:	e005      	b.n	80017f6 <oledPic+0x46>
 80017ea:	4335      	orrs	r5, r6
 80017ec:	3301      	adds	r3, #1
 80017ee:	7015      	strb	r5, [r2, #0]
 80017f0:	3201      	adds	r2, #1
 80017f2:	4298      	cmp	r0, r3
 80017f4:	d00a      	beq.n	800180c <oledPic+0x5c>
 80017f6:	2500      	movs	r5, #0
 80017f8:	781c      	ldrb	r4, [r3, #0]
 80017fa:	5755      	ldrsb	r5, [r2, r5]
 80017fc:	428c      	cmp	r4, r1
 80017fe:	d3f4      	bcc.n	80017ea <oledPic+0x3a>
 8001800:	403d      	ands	r5, r7
 8001802:	3301      	adds	r3, #1
 8001804:	7015      	strb	r5, [r2, #0]
 8001806:	3201      	adds	r2, #1
 8001808:	4298      	cmp	r0, r3
 800180a:	d1f4      	bne.n	80017f6 <oledPic+0x46>
 800180c:	2301      	movs	r3, #1
 800180e:	469b      	mov	fp, r3
 8001810:	44dc      	add	ip, fp
 8001812:	4663      	mov	r3, ip
 8001814:	3080      	adds	r0, #128	; 0x80
 8001816:	2b40      	cmp	r3, #64	; 0x40
 8001818:	d1d9      	bne.n	80017ce <oledPic+0x1e>
 800181a:	bc3c      	pop	{r2, r3, r4, r5}
 800181c:	4690      	mov	r8, r2
 800181e:	4699      	mov	r9, r3
 8001820:	46a2      	mov	sl, r4
 8001822:	46ab      	mov	fp, r5
 8001824:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001826:	46c0      	nop			; (mov r8, r8)
 8001828:	20000834 	.word	0x20000834

0800182c <oled_hw_config>:
 800182c:	2080      	movs	r0, #128	; 0x80
 800182e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001830:	46ce      	mov	lr, r9
 8001832:	4647      	mov	r7, r8
 8001834:	4a39      	ldr	r2, [pc, #228]	; (800191c <oled_hw_config+0xf0>)
 8001836:	02c0      	lsls	r0, r0, #11
 8001838:	6951      	ldr	r1, [r2, #20]
 800183a:	b580      	push	{r7, lr}
 800183c:	4301      	orrs	r1, r0
 800183e:	6151      	str	r1, [r2, #20]
 8001840:	2180      	movs	r1, #128	; 0x80
 8001842:	6953      	ldr	r3, [r2, #20]
 8001844:	b083      	sub	sp, #12
 8001846:	4003      	ands	r3, r0
 8001848:	9301      	str	r3, [sp, #4]
 800184a:	9b01      	ldr	r3, [sp, #4]
 800184c:	4b34      	ldr	r3, [pc, #208]	; (8001920 <oled_hw_config+0xf4>)
 800184e:	4d35      	ldr	r5, [pc, #212]	; (8001924 <oled_hw_config+0xf8>)
 8001850:	6818      	ldr	r0, [r3, #0]
 8001852:	0389      	lsls	r1, r1, #14
 8001854:	4028      	ands	r0, r5
 8001856:	4301      	orrs	r1, r0
 8001858:	2080      	movs	r0, #128	; 0x80
 800185a:	6019      	str	r1, [r3, #0]
 800185c:	6859      	ldr	r1, [r3, #4]
 800185e:	00c0      	lsls	r0, r0, #3
 8001860:	4301      	orrs	r1, r0
 8001862:	2080      	movs	r0, #128	; 0x80
 8001864:	6059      	str	r1, [r3, #4]
 8001866:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8001868:	4e2f      	ldr	r6, [pc, #188]	; (8001928 <oled_hw_config+0xfc>)
 800186a:	0040      	lsls	r0, r0, #1
 800186c:	4031      	ands	r1, r6
 800186e:	4301      	orrs	r1, r0
 8001870:	6259      	str	r1, [r3, #36]	; 0x24
 8001872:	21c0      	movs	r1, #192	; 0xc0
 8001874:	689c      	ldr	r4, [r3, #8]
 8001876:	0389      	lsls	r1, r1, #14
 8001878:	402c      	ands	r4, r5
 800187a:	4321      	orrs	r1, r4
 800187c:	6099      	str	r1, [r3, #8]
 800187e:	681c      	ldr	r4, [r3, #0]
 8001880:	492a      	ldr	r1, [pc, #168]	; (800192c <oled_hw_config+0x100>)
 8001882:	4f2b      	ldr	r7, [pc, #172]	; (8001930 <oled_hw_config+0x104>)
 8001884:	468c      	mov	ip, r1
 8001886:	400c      	ands	r4, r1
 8001888:	2180      	movs	r1, #128	; 0x80
 800188a:	0409      	lsls	r1, r1, #16
 800188c:	4321      	orrs	r1, r4
 800188e:	2480      	movs	r4, #128	; 0x80
 8001890:	6019      	str	r1, [r3, #0]
 8001892:	6859      	ldr	r1, [r3, #4]
 8001894:	0124      	lsls	r4, r4, #4
 8001896:	4039      	ands	r1, r7
 8001898:	430c      	orrs	r4, r1
 800189a:	605c      	str	r4, [r3, #4]
 800189c:	6a59      	ldr	r1, [r3, #36]	; 0x24
 800189e:	4c25      	ldr	r4, [pc, #148]	; (8001934 <oled_hw_config+0x108>)
 80018a0:	4681      	mov	r9, r0
 80018a2:	4021      	ands	r1, r4
 80018a4:	2480      	movs	r4, #128	; 0x80
 80018a6:	4660      	mov	r0, ip
 80018a8:	0164      	lsls	r4, r4, #5
 80018aa:	4321      	orrs	r1, r4
 80018ac:	6259      	str	r1, [r3, #36]	; 0x24
 80018ae:	6899      	ldr	r1, [r3, #8]
 80018b0:	4008      	ands	r0, r1
 80018b2:	21c0      	movs	r1, #192	; 0xc0
 80018b4:	0409      	lsls	r1, r1, #16
 80018b6:	4301      	orrs	r1, r0
 80018b8:	6099      	str	r1, [r3, #8]
 80018ba:	2110      	movs	r1, #16
 80018bc:	2001      	movs	r0, #1
 80018be:	6b13      	ldr	r3, [r2, #48]	; 0x30
 80018c0:	4684      	mov	ip, r0
 80018c2:	430b      	orrs	r3, r1
 80018c4:	6313      	str	r3, [r2, #48]	; 0x30
 80018c6:	4b1c      	ldr	r3, [pc, #112]	; (8001938 <oled_hw_config+0x10c>)
 80018c8:	6819      	ldr	r1, [r3, #0]
 80018ca:	4381      	bics	r1, r0
 80018cc:	2080      	movs	r0, #128	; 0x80
 80018ce:	6019      	str	r1, [r3, #0]
 80018d0:	69d1      	ldr	r1, [r2, #28]
 80018d2:	03c0      	lsls	r0, r0, #15
 80018d4:	4301      	orrs	r1, r0
 80018d6:	61d1      	str	r1, [r2, #28]
 80018d8:	69d2      	ldr	r2, [r2, #28]
 80018da:	4002      	ands	r2, r0
 80018dc:	4648      	mov	r0, r9
 80018de:	9200      	str	r2, [sp, #0]
 80018e0:	9a00      	ldr	r2, [sp, #0]
 80018e2:	681a      	ldr	r2, [r3, #0]
 80018e4:	4314      	orrs	r4, r2
 80018e6:	601c      	str	r4, [r3, #0]
 80018e8:	681a      	ldr	r2, [r3, #0]
 80018ea:	4016      	ands	r6, r2
 80018ec:	4a13      	ldr	r2, [pc, #76]	; (800193c <oled_hw_config+0x110>)
 80018ee:	4330      	orrs	r0, r6
 80018f0:	6018      	str	r0, [r3, #0]
 80018f2:	611a      	str	r2, [r3, #16]
 80018f4:	2280      	movs	r2, #128	; 0x80
 80018f6:	6819      	ldr	r1, [r3, #0]
 80018f8:	0292      	lsls	r2, r2, #10
 80018fa:	430a      	orrs	r2, r1
 80018fc:	601a      	str	r2, [r3, #0]
 80018fe:	685a      	ldr	r2, [r3, #4]
 8001900:	4017      	ands	r7, r2
 8001902:	605f      	str	r7, [r3, #4]
 8001904:	6819      	ldr	r1, [r3, #0]
 8001906:	400d      	ands	r5, r1
 8001908:	4661      	mov	r1, ip
 800190a:	601d      	str	r5, [r3, #0]
 800190c:	681a      	ldr	r2, [r3, #0]
 800190e:	430a      	orrs	r2, r1
 8001910:	601a      	str	r2, [r3, #0]
 8001912:	b003      	add	sp, #12
 8001914:	bc0c      	pop	{r2, r3}
 8001916:	4690      	mov	r8, r2
 8001918:	4699      	mov	r9, r3
 800191a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800191c:	40021000 	.word	0x40021000
 8001920:	48000400 	.word	0x48000400
 8001924:	ffcfffff 	.word	0xffcfffff
 8001928:	fffff0ff 	.word	0xfffff0ff
 800192c:	ff3fffff 	.word	0xff3fffff
 8001930:	fffff7ff 	.word	0xfffff7ff
 8001934:	ffff0fff 	.word	0xffff0fff
 8001938:	40005800 	.word	0x40005800
 800193c:	50330309 	.word	0x50330309

08001940 <oled_config>:
 8001940:	b510      	push	{r4, lr}
 8001942:	f7ff ff73 	bl	800182c <oled_hw_config>
 8001946:	4bcc      	ldr	r3, [pc, #816]	; (8001c78 <oled_config+0x338>)
 8001948:	49cc      	ldr	r1, [pc, #816]	; (8001c7c <oled_config+0x33c>)
 800194a:	685a      	ldr	r2, [r3, #4]
 800194c:	4011      	ands	r1, r2
 800194e:	4acc      	ldr	r2, [pc, #816]	; (8001c80 <oled_config+0x340>)
 8001950:	430a      	orrs	r2, r1
 8001952:	605a      	str	r2, [r3, #4]
 8001954:	2202      	movs	r2, #2
 8001956:	6999      	ldr	r1, [r3, #24]
 8001958:	420a      	tst	r2, r1
 800195a:	d0fc      	beq.n	8001956 <oled_config+0x16>
 800195c:	2200      	movs	r2, #0
 800195e:	629a      	str	r2, [r3, #40]	; 0x28
 8001960:	4bc5      	ldr	r3, [pc, #788]	; (8001c78 <oled_config+0x338>)
 8001962:	3202      	adds	r2, #2
 8001964:	6999      	ldr	r1, [r3, #24]
 8001966:	420a      	tst	r2, r1
 8001968:	d0fc      	beq.n	8001964 <oled_config+0x24>
 800196a:	22ae      	movs	r2, #174	; 0xae
 800196c:	629a      	str	r2, [r3, #40]	; 0x28
 800196e:	4bc2      	ldr	r3, [pc, #776]	; (8001c78 <oled_config+0x338>)
 8001970:	3a6e      	subs	r2, #110	; 0x6e
 8001972:	6999      	ldr	r1, [r3, #24]
 8001974:	420a      	tst	r2, r1
 8001976:	d1fc      	bne.n	8001972 <oled_config+0x32>
 8001978:	685a      	ldr	r2, [r3, #4]
 800197a:	49c0      	ldr	r1, [pc, #768]	; (8001c7c <oled_config+0x33c>)
 800197c:	4011      	ands	r1, r2
 800197e:	4ac0      	ldr	r2, [pc, #768]	; (8001c80 <oled_config+0x340>)
 8001980:	430a      	orrs	r2, r1
 8001982:	605a      	str	r2, [r3, #4]
 8001984:	2202      	movs	r2, #2
 8001986:	4bbc      	ldr	r3, [pc, #752]	; (8001c78 <oled_config+0x338>)
 8001988:	6999      	ldr	r1, [r3, #24]
 800198a:	420a      	tst	r2, r1
 800198c:	d0fc      	beq.n	8001988 <oled_config+0x48>
 800198e:	2200      	movs	r2, #0
 8001990:	629a      	str	r2, [r3, #40]	; 0x28
 8001992:	4bb9      	ldr	r3, [pc, #740]	; (8001c78 <oled_config+0x338>)
 8001994:	3202      	adds	r2, #2
 8001996:	6999      	ldr	r1, [r3, #24]
 8001998:	420a      	tst	r2, r1
 800199a:	d0fc      	beq.n	8001996 <oled_config+0x56>
 800199c:	2220      	movs	r2, #32
 800199e:	629a      	str	r2, [r3, #40]	; 0x28
 80019a0:	4bb5      	ldr	r3, [pc, #724]	; (8001c78 <oled_config+0x338>)
 80019a2:	3220      	adds	r2, #32
 80019a4:	6999      	ldr	r1, [r3, #24]
 80019a6:	420a      	tst	r2, r1
 80019a8:	d1fc      	bne.n	80019a4 <oled_config+0x64>
 80019aa:	685a      	ldr	r2, [r3, #4]
 80019ac:	49b3      	ldr	r1, [pc, #716]	; (8001c7c <oled_config+0x33c>)
 80019ae:	4011      	ands	r1, r2
 80019b0:	4ab3      	ldr	r2, [pc, #716]	; (8001c80 <oled_config+0x340>)
 80019b2:	430a      	orrs	r2, r1
 80019b4:	605a      	str	r2, [r3, #4]
 80019b6:	2202      	movs	r2, #2
 80019b8:	4baf      	ldr	r3, [pc, #700]	; (8001c78 <oled_config+0x338>)
 80019ba:	6999      	ldr	r1, [r3, #24]
 80019bc:	420a      	tst	r2, r1
 80019be:	d0fc      	beq.n	80019ba <oled_config+0x7a>
 80019c0:	2200      	movs	r2, #0
 80019c2:	629a      	str	r2, [r3, #40]	; 0x28
 80019c4:	4bac      	ldr	r3, [pc, #688]	; (8001c78 <oled_config+0x338>)
 80019c6:	3202      	adds	r2, #2
 80019c8:	6999      	ldr	r1, [r3, #24]
 80019ca:	420a      	tst	r2, r1
 80019cc:	d0fc      	beq.n	80019c8 <oled_config+0x88>
 80019ce:	2210      	movs	r2, #16
 80019d0:	629a      	str	r2, [r3, #40]	; 0x28
 80019d2:	4ba9      	ldr	r3, [pc, #676]	; (8001c78 <oled_config+0x338>)
 80019d4:	3230      	adds	r2, #48	; 0x30
 80019d6:	6999      	ldr	r1, [r3, #24]
 80019d8:	420a      	tst	r2, r1
 80019da:	d1fc      	bne.n	80019d6 <oled_config+0x96>
 80019dc:	685a      	ldr	r2, [r3, #4]
 80019de:	49a7      	ldr	r1, [pc, #668]	; (8001c7c <oled_config+0x33c>)
 80019e0:	4011      	ands	r1, r2
 80019e2:	4aa7      	ldr	r2, [pc, #668]	; (8001c80 <oled_config+0x340>)
 80019e4:	430a      	orrs	r2, r1
 80019e6:	605a      	str	r2, [r3, #4]
 80019e8:	2202      	movs	r2, #2
 80019ea:	4ba3      	ldr	r3, [pc, #652]	; (8001c78 <oled_config+0x338>)
 80019ec:	6999      	ldr	r1, [r3, #24]
 80019ee:	420a      	tst	r2, r1
 80019f0:	d0fc      	beq.n	80019ec <oled_config+0xac>
 80019f2:	2200      	movs	r2, #0
 80019f4:	629a      	str	r2, [r3, #40]	; 0x28
 80019f6:	4ba0      	ldr	r3, [pc, #640]	; (8001c78 <oled_config+0x338>)
 80019f8:	3202      	adds	r2, #2
 80019fa:	6999      	ldr	r1, [r3, #24]
 80019fc:	420a      	tst	r2, r1
 80019fe:	d0fc      	beq.n	80019fa <oled_config+0xba>
 8001a00:	22c8      	movs	r2, #200	; 0xc8
 8001a02:	629a      	str	r2, [r3, #40]	; 0x28
 8001a04:	4b9c      	ldr	r3, [pc, #624]	; (8001c78 <oled_config+0x338>)
 8001a06:	3a88      	subs	r2, #136	; 0x88
 8001a08:	6999      	ldr	r1, [r3, #24]
 8001a0a:	420a      	tst	r2, r1
 8001a0c:	d1fc      	bne.n	8001a08 <oled_config+0xc8>
 8001a0e:	685a      	ldr	r2, [r3, #4]
 8001a10:	499a      	ldr	r1, [pc, #616]	; (8001c7c <oled_config+0x33c>)
 8001a12:	4011      	ands	r1, r2
 8001a14:	4a9a      	ldr	r2, [pc, #616]	; (8001c80 <oled_config+0x340>)
 8001a16:	430a      	orrs	r2, r1
 8001a18:	605a      	str	r2, [r3, #4]
 8001a1a:	2202      	movs	r2, #2
 8001a1c:	4b96      	ldr	r3, [pc, #600]	; (8001c78 <oled_config+0x338>)
 8001a1e:	6999      	ldr	r1, [r3, #24]
 8001a20:	420a      	tst	r2, r1
 8001a22:	d0fc      	beq.n	8001a1e <oled_config+0xde>
 8001a24:	2200      	movs	r2, #0
 8001a26:	629a      	str	r2, [r3, #40]	; 0x28
 8001a28:	4b93      	ldr	r3, [pc, #588]	; (8001c78 <oled_config+0x338>)
 8001a2a:	3202      	adds	r2, #2
 8001a2c:	6999      	ldr	r1, [r3, #24]
 8001a2e:	420a      	tst	r2, r1
 8001a30:	d0fc      	beq.n	8001a2c <oled_config+0xec>
 8001a32:	2240      	movs	r2, #64	; 0x40
 8001a34:	629a      	str	r2, [r3, #40]	; 0x28
 8001a36:	4b90      	ldr	r3, [pc, #576]	; (8001c78 <oled_config+0x338>)
 8001a38:	6999      	ldr	r1, [r3, #24]
 8001a3a:	420a      	tst	r2, r1
 8001a3c:	d1fc      	bne.n	8001a38 <oled_config+0xf8>
 8001a3e:	685a      	ldr	r2, [r3, #4]
 8001a40:	498e      	ldr	r1, [pc, #568]	; (8001c7c <oled_config+0x33c>)
 8001a42:	4011      	ands	r1, r2
 8001a44:	4a8e      	ldr	r2, [pc, #568]	; (8001c80 <oled_config+0x340>)
 8001a46:	430a      	orrs	r2, r1
 8001a48:	605a      	str	r2, [r3, #4]
 8001a4a:	2202      	movs	r2, #2
 8001a4c:	4b8a      	ldr	r3, [pc, #552]	; (8001c78 <oled_config+0x338>)
 8001a4e:	6999      	ldr	r1, [r3, #24]
 8001a50:	420a      	tst	r2, r1
 8001a52:	d0fc      	beq.n	8001a4e <oled_config+0x10e>
 8001a54:	2200      	movs	r2, #0
 8001a56:	629a      	str	r2, [r3, #40]	; 0x28
 8001a58:	4b87      	ldr	r3, [pc, #540]	; (8001c78 <oled_config+0x338>)
 8001a5a:	3202      	adds	r2, #2
 8001a5c:	6999      	ldr	r1, [r3, #24]
 8001a5e:	420a      	tst	r2, r1
 8001a60:	d0fc      	beq.n	8001a5c <oled_config+0x11c>
 8001a62:	2281      	movs	r2, #129	; 0x81
 8001a64:	629a      	str	r2, [r3, #40]	; 0x28
 8001a66:	4b84      	ldr	r3, [pc, #528]	; (8001c78 <oled_config+0x338>)
 8001a68:	3a41      	subs	r2, #65	; 0x41
 8001a6a:	6999      	ldr	r1, [r3, #24]
 8001a6c:	420a      	tst	r2, r1
 8001a6e:	d1fc      	bne.n	8001a6a <oled_config+0x12a>
 8001a70:	685a      	ldr	r2, [r3, #4]
 8001a72:	4982      	ldr	r1, [pc, #520]	; (8001c7c <oled_config+0x33c>)
 8001a74:	4011      	ands	r1, r2
 8001a76:	4a82      	ldr	r2, [pc, #520]	; (8001c80 <oled_config+0x340>)
 8001a78:	430a      	orrs	r2, r1
 8001a7a:	605a      	str	r2, [r3, #4]
 8001a7c:	2202      	movs	r2, #2
 8001a7e:	4b7e      	ldr	r3, [pc, #504]	; (8001c78 <oled_config+0x338>)
 8001a80:	6999      	ldr	r1, [r3, #24]
 8001a82:	420a      	tst	r2, r1
 8001a84:	d0fc      	beq.n	8001a80 <oled_config+0x140>
 8001a86:	2200      	movs	r2, #0
 8001a88:	629a      	str	r2, [r3, #40]	; 0x28
 8001a8a:	4b7b      	ldr	r3, [pc, #492]	; (8001c78 <oled_config+0x338>)
 8001a8c:	3202      	adds	r2, #2
 8001a8e:	6999      	ldr	r1, [r3, #24]
 8001a90:	420a      	tst	r2, r1
 8001a92:	d0fc      	beq.n	8001a8e <oled_config+0x14e>
 8001a94:	22ff      	movs	r2, #255	; 0xff
 8001a96:	629a      	str	r2, [r3, #40]	; 0x28
 8001a98:	4b77      	ldr	r3, [pc, #476]	; (8001c78 <oled_config+0x338>)
 8001a9a:	3abf      	subs	r2, #191	; 0xbf
 8001a9c:	6999      	ldr	r1, [r3, #24]
 8001a9e:	420a      	tst	r2, r1
 8001aa0:	d1fc      	bne.n	8001a9c <oled_config+0x15c>
 8001aa2:	685a      	ldr	r2, [r3, #4]
 8001aa4:	4975      	ldr	r1, [pc, #468]	; (8001c7c <oled_config+0x33c>)
 8001aa6:	4011      	ands	r1, r2
 8001aa8:	4a75      	ldr	r2, [pc, #468]	; (8001c80 <oled_config+0x340>)
 8001aaa:	430a      	orrs	r2, r1
 8001aac:	605a      	str	r2, [r3, #4]
 8001aae:	2202      	movs	r2, #2
 8001ab0:	4b71      	ldr	r3, [pc, #452]	; (8001c78 <oled_config+0x338>)
 8001ab2:	6999      	ldr	r1, [r3, #24]
 8001ab4:	420a      	tst	r2, r1
 8001ab6:	d0fc      	beq.n	8001ab2 <oled_config+0x172>
 8001ab8:	2200      	movs	r2, #0
 8001aba:	629a      	str	r2, [r3, #40]	; 0x28
 8001abc:	4b6e      	ldr	r3, [pc, #440]	; (8001c78 <oled_config+0x338>)
 8001abe:	3202      	adds	r2, #2
 8001ac0:	6999      	ldr	r1, [r3, #24]
 8001ac2:	420a      	tst	r2, r1
 8001ac4:	d0fc      	beq.n	8001ac0 <oled_config+0x180>
 8001ac6:	22a0      	movs	r2, #160	; 0xa0
 8001ac8:	629a      	str	r2, [r3, #40]	; 0x28
 8001aca:	4b6b      	ldr	r3, [pc, #428]	; (8001c78 <oled_config+0x338>)
 8001acc:	3a60      	subs	r2, #96	; 0x60
 8001ace:	6999      	ldr	r1, [r3, #24]
 8001ad0:	420a      	tst	r2, r1
 8001ad2:	d1fc      	bne.n	8001ace <oled_config+0x18e>
 8001ad4:	685a      	ldr	r2, [r3, #4]
 8001ad6:	4969      	ldr	r1, [pc, #420]	; (8001c7c <oled_config+0x33c>)
 8001ad8:	4011      	ands	r1, r2
 8001ada:	4a69      	ldr	r2, [pc, #420]	; (8001c80 <oled_config+0x340>)
 8001adc:	430a      	orrs	r2, r1
 8001ade:	605a      	str	r2, [r3, #4]
 8001ae0:	2202      	movs	r2, #2
 8001ae2:	4b65      	ldr	r3, [pc, #404]	; (8001c78 <oled_config+0x338>)
 8001ae4:	6999      	ldr	r1, [r3, #24]
 8001ae6:	420a      	tst	r2, r1
 8001ae8:	d0fc      	beq.n	8001ae4 <oled_config+0x1a4>
 8001aea:	2200      	movs	r2, #0
 8001aec:	629a      	str	r2, [r3, #40]	; 0x28
 8001aee:	4b62      	ldr	r3, [pc, #392]	; (8001c78 <oled_config+0x338>)
 8001af0:	3202      	adds	r2, #2
 8001af2:	6999      	ldr	r1, [r3, #24]
 8001af4:	420a      	tst	r2, r1
 8001af6:	d0fc      	beq.n	8001af2 <oled_config+0x1b2>
 8001af8:	22a6      	movs	r2, #166	; 0xa6
 8001afa:	629a      	str	r2, [r3, #40]	; 0x28
 8001afc:	4b5e      	ldr	r3, [pc, #376]	; (8001c78 <oled_config+0x338>)
 8001afe:	3a66      	subs	r2, #102	; 0x66
 8001b00:	6999      	ldr	r1, [r3, #24]
 8001b02:	420a      	tst	r2, r1
 8001b04:	d1fc      	bne.n	8001b00 <oled_config+0x1c0>
 8001b06:	685a      	ldr	r2, [r3, #4]
 8001b08:	495c      	ldr	r1, [pc, #368]	; (8001c7c <oled_config+0x33c>)
 8001b0a:	4011      	ands	r1, r2
 8001b0c:	4a5c      	ldr	r2, [pc, #368]	; (8001c80 <oled_config+0x340>)
 8001b0e:	430a      	orrs	r2, r1
 8001b10:	605a      	str	r2, [r3, #4]
 8001b12:	2202      	movs	r2, #2
 8001b14:	4b58      	ldr	r3, [pc, #352]	; (8001c78 <oled_config+0x338>)
 8001b16:	6999      	ldr	r1, [r3, #24]
 8001b18:	420a      	tst	r2, r1
 8001b1a:	d0fc      	beq.n	8001b16 <oled_config+0x1d6>
 8001b1c:	2200      	movs	r2, #0
 8001b1e:	629a      	str	r2, [r3, #40]	; 0x28
 8001b20:	4b55      	ldr	r3, [pc, #340]	; (8001c78 <oled_config+0x338>)
 8001b22:	3202      	adds	r2, #2
 8001b24:	6999      	ldr	r1, [r3, #24]
 8001b26:	420a      	tst	r2, r1
 8001b28:	d0fc      	beq.n	8001b24 <oled_config+0x1e4>
 8001b2a:	22a8      	movs	r2, #168	; 0xa8
 8001b2c:	629a      	str	r2, [r3, #40]	; 0x28
 8001b2e:	4b52      	ldr	r3, [pc, #328]	; (8001c78 <oled_config+0x338>)
 8001b30:	3a68      	subs	r2, #104	; 0x68
 8001b32:	6999      	ldr	r1, [r3, #24]
 8001b34:	420a      	tst	r2, r1
 8001b36:	d1fc      	bne.n	8001b32 <oled_config+0x1f2>
 8001b38:	685a      	ldr	r2, [r3, #4]
 8001b3a:	4950      	ldr	r1, [pc, #320]	; (8001c7c <oled_config+0x33c>)
 8001b3c:	4011      	ands	r1, r2
 8001b3e:	4a50      	ldr	r2, [pc, #320]	; (8001c80 <oled_config+0x340>)
 8001b40:	430a      	orrs	r2, r1
 8001b42:	605a      	str	r2, [r3, #4]
 8001b44:	2202      	movs	r2, #2
 8001b46:	4b4c      	ldr	r3, [pc, #304]	; (8001c78 <oled_config+0x338>)
 8001b48:	6999      	ldr	r1, [r3, #24]
 8001b4a:	420a      	tst	r2, r1
 8001b4c:	d0fc      	beq.n	8001b48 <oled_config+0x208>
 8001b4e:	2200      	movs	r2, #0
 8001b50:	629a      	str	r2, [r3, #40]	; 0x28
 8001b52:	4b49      	ldr	r3, [pc, #292]	; (8001c78 <oled_config+0x338>)
 8001b54:	3202      	adds	r2, #2
 8001b56:	6999      	ldr	r1, [r3, #24]
 8001b58:	420a      	tst	r2, r1
 8001b5a:	d0fc      	beq.n	8001b56 <oled_config+0x216>
 8001b5c:	223f      	movs	r2, #63	; 0x3f
 8001b5e:	629a      	str	r2, [r3, #40]	; 0x28
 8001b60:	4b45      	ldr	r3, [pc, #276]	; (8001c78 <oled_config+0x338>)
 8001b62:	3201      	adds	r2, #1
 8001b64:	6999      	ldr	r1, [r3, #24]
 8001b66:	420a      	tst	r2, r1
 8001b68:	d1fc      	bne.n	8001b64 <oled_config+0x224>
 8001b6a:	685a      	ldr	r2, [r3, #4]
 8001b6c:	4943      	ldr	r1, [pc, #268]	; (8001c7c <oled_config+0x33c>)
 8001b6e:	4011      	ands	r1, r2
 8001b70:	4a43      	ldr	r2, [pc, #268]	; (8001c80 <oled_config+0x340>)
 8001b72:	430a      	orrs	r2, r1
 8001b74:	605a      	str	r2, [r3, #4]
 8001b76:	2202      	movs	r2, #2
 8001b78:	4b3f      	ldr	r3, [pc, #252]	; (8001c78 <oled_config+0x338>)
 8001b7a:	6999      	ldr	r1, [r3, #24]
 8001b7c:	420a      	tst	r2, r1
 8001b7e:	d0fc      	beq.n	8001b7a <oled_config+0x23a>
 8001b80:	2200      	movs	r2, #0
 8001b82:	629a      	str	r2, [r3, #40]	; 0x28
 8001b84:	4b3c      	ldr	r3, [pc, #240]	; (8001c78 <oled_config+0x338>)
 8001b86:	3202      	adds	r2, #2
 8001b88:	6999      	ldr	r1, [r3, #24]
 8001b8a:	420a      	tst	r2, r1
 8001b8c:	d0fc      	beq.n	8001b88 <oled_config+0x248>
 8001b8e:	22a4      	movs	r2, #164	; 0xa4
 8001b90:	629a      	str	r2, [r3, #40]	; 0x28
 8001b92:	4b39      	ldr	r3, [pc, #228]	; (8001c78 <oled_config+0x338>)
 8001b94:	3a64      	subs	r2, #100	; 0x64
 8001b96:	6999      	ldr	r1, [r3, #24]
 8001b98:	420a      	tst	r2, r1
 8001b9a:	d1fc      	bne.n	8001b96 <oled_config+0x256>
 8001b9c:	685a      	ldr	r2, [r3, #4]
 8001b9e:	4937      	ldr	r1, [pc, #220]	; (8001c7c <oled_config+0x33c>)
 8001ba0:	4011      	ands	r1, r2
 8001ba2:	4a37      	ldr	r2, [pc, #220]	; (8001c80 <oled_config+0x340>)
 8001ba4:	430a      	orrs	r2, r1
 8001ba6:	605a      	str	r2, [r3, #4]
 8001ba8:	2202      	movs	r2, #2
 8001baa:	4b33      	ldr	r3, [pc, #204]	; (8001c78 <oled_config+0x338>)
 8001bac:	6999      	ldr	r1, [r3, #24]
 8001bae:	420a      	tst	r2, r1
 8001bb0:	d0fc      	beq.n	8001bac <oled_config+0x26c>
 8001bb2:	2200      	movs	r2, #0
 8001bb4:	629a      	str	r2, [r3, #40]	; 0x28
 8001bb6:	4b30      	ldr	r3, [pc, #192]	; (8001c78 <oled_config+0x338>)
 8001bb8:	3202      	adds	r2, #2
 8001bba:	6999      	ldr	r1, [r3, #24]
 8001bbc:	420a      	tst	r2, r1
 8001bbe:	d0fc      	beq.n	8001bba <oled_config+0x27a>
 8001bc0:	22d3      	movs	r2, #211	; 0xd3
 8001bc2:	629a      	str	r2, [r3, #40]	; 0x28
 8001bc4:	4b2c      	ldr	r3, [pc, #176]	; (8001c78 <oled_config+0x338>)
 8001bc6:	3a93      	subs	r2, #147	; 0x93
 8001bc8:	6999      	ldr	r1, [r3, #24]
 8001bca:	420a      	tst	r2, r1
 8001bcc:	d1fc      	bne.n	8001bc8 <oled_config+0x288>
 8001bce:	685a      	ldr	r2, [r3, #4]
 8001bd0:	492a      	ldr	r1, [pc, #168]	; (8001c7c <oled_config+0x33c>)
 8001bd2:	4011      	ands	r1, r2
 8001bd4:	4a2a      	ldr	r2, [pc, #168]	; (8001c80 <oled_config+0x340>)
 8001bd6:	430a      	orrs	r2, r1
 8001bd8:	605a      	str	r2, [r3, #4]
 8001bda:	2202      	movs	r2, #2
 8001bdc:	4b26      	ldr	r3, [pc, #152]	; (8001c78 <oled_config+0x338>)
 8001bde:	6999      	ldr	r1, [r3, #24]
 8001be0:	420a      	tst	r2, r1
 8001be2:	d0fc      	beq.n	8001bde <oled_config+0x29e>
 8001be4:	2200      	movs	r2, #0
 8001be6:	629a      	str	r2, [r3, #40]	; 0x28
 8001be8:	4b23      	ldr	r3, [pc, #140]	; (8001c78 <oled_config+0x338>)
 8001bea:	3202      	adds	r2, #2
 8001bec:	6999      	ldr	r1, [r3, #24]
 8001bee:	420a      	tst	r2, r1
 8001bf0:	d0fc      	beq.n	8001bec <oled_config+0x2ac>
 8001bf2:	2200      	movs	r2, #0
 8001bf4:	629a      	str	r2, [r3, #40]	; 0x28
 8001bf6:	4b20      	ldr	r3, [pc, #128]	; (8001c78 <oled_config+0x338>)
 8001bf8:	3240      	adds	r2, #64	; 0x40
 8001bfa:	6999      	ldr	r1, [r3, #24]
 8001bfc:	420a      	tst	r2, r1
 8001bfe:	d1fc      	bne.n	8001bfa <oled_config+0x2ba>
 8001c00:	685a      	ldr	r2, [r3, #4]
 8001c02:	491e      	ldr	r1, [pc, #120]	; (8001c7c <oled_config+0x33c>)
 8001c04:	4011      	ands	r1, r2
 8001c06:	4a1e      	ldr	r2, [pc, #120]	; (8001c80 <oled_config+0x340>)
 8001c08:	430a      	orrs	r2, r1
 8001c0a:	605a      	str	r2, [r3, #4]
 8001c0c:	2202      	movs	r2, #2
 8001c0e:	4b1a      	ldr	r3, [pc, #104]	; (8001c78 <oled_config+0x338>)
 8001c10:	6999      	ldr	r1, [r3, #24]
 8001c12:	420a      	tst	r2, r1
 8001c14:	d0fc      	beq.n	8001c10 <oled_config+0x2d0>
 8001c16:	2200      	movs	r2, #0
 8001c18:	629a      	str	r2, [r3, #40]	; 0x28
 8001c1a:	4b17      	ldr	r3, [pc, #92]	; (8001c78 <oled_config+0x338>)
 8001c1c:	3202      	adds	r2, #2
 8001c1e:	6999      	ldr	r1, [r3, #24]
 8001c20:	420a      	tst	r2, r1
 8001c22:	d0fc      	beq.n	8001c1e <oled_config+0x2de>
 8001c24:	22d5      	movs	r2, #213	; 0xd5
 8001c26:	629a      	str	r2, [r3, #40]	; 0x28
 8001c28:	4b13      	ldr	r3, [pc, #76]	; (8001c78 <oled_config+0x338>)
 8001c2a:	3a95      	subs	r2, #149	; 0x95
 8001c2c:	6999      	ldr	r1, [r3, #24]
 8001c2e:	420a      	tst	r2, r1
 8001c30:	d1fc      	bne.n	8001c2c <oled_config+0x2ec>
 8001c32:	685a      	ldr	r2, [r3, #4]
 8001c34:	4911      	ldr	r1, [pc, #68]	; (8001c7c <oled_config+0x33c>)
 8001c36:	4011      	ands	r1, r2
 8001c38:	4a11      	ldr	r2, [pc, #68]	; (8001c80 <oled_config+0x340>)
 8001c3a:	430a      	orrs	r2, r1
 8001c3c:	605a      	str	r2, [r3, #4]
 8001c3e:	2202      	movs	r2, #2
 8001c40:	4b0d      	ldr	r3, [pc, #52]	; (8001c78 <oled_config+0x338>)
 8001c42:	6999      	ldr	r1, [r3, #24]
 8001c44:	420a      	tst	r2, r1
 8001c46:	d0fc      	beq.n	8001c42 <oled_config+0x302>
 8001c48:	2200      	movs	r2, #0
 8001c4a:	629a      	str	r2, [r3, #40]	; 0x28
 8001c4c:	4b0a      	ldr	r3, [pc, #40]	; (8001c78 <oled_config+0x338>)
 8001c4e:	3202      	adds	r2, #2
 8001c50:	6999      	ldr	r1, [r3, #24]
 8001c52:	420a      	tst	r2, r1
 8001c54:	d0fc      	beq.n	8001c50 <oled_config+0x310>
 8001c56:	22f0      	movs	r2, #240	; 0xf0
 8001c58:	629a      	str	r2, [r3, #40]	; 0x28
 8001c5a:	4b07      	ldr	r3, [pc, #28]	; (8001c78 <oled_config+0x338>)
 8001c5c:	3ab0      	subs	r2, #176	; 0xb0
 8001c5e:	6999      	ldr	r1, [r3, #24]
 8001c60:	420a      	tst	r2, r1
 8001c62:	d1fc      	bne.n	8001c5e <oled_config+0x31e>
 8001c64:	685a      	ldr	r2, [r3, #4]
 8001c66:	4905      	ldr	r1, [pc, #20]	; (8001c7c <oled_config+0x33c>)
 8001c68:	4011      	ands	r1, r2
 8001c6a:	4a05      	ldr	r2, [pc, #20]	; (8001c80 <oled_config+0x340>)
 8001c6c:	430a      	orrs	r2, r1
 8001c6e:	605a      	str	r2, [r3, #4]
 8001c70:	2202      	movs	r2, #2
 8001c72:	4b01      	ldr	r3, [pc, #4]	; (8001c78 <oled_config+0x338>)
 8001c74:	e006      	b.n	8001c84 <oled_config+0x344>
 8001c76:	46c0      	nop			; (mov r8, r8)
 8001c78:	40005800 	.word	0x40005800
 8001c7c:	fc008000 	.word	0xfc008000
 8001c80:	02022078 	.word	0x02022078
 8001c84:	6999      	ldr	r1, [r3, #24]
 8001c86:	420a      	tst	r2, r1
 8001c88:	d0fc      	beq.n	8001c84 <oled_config+0x344>
 8001c8a:	2200      	movs	r2, #0
 8001c8c:	629a      	str	r2, [r3, #40]	; 0x28
 8001c8e:	4b3c      	ldr	r3, [pc, #240]	; (8001d80 <oled_config+0x440>)
 8001c90:	3202      	adds	r2, #2
 8001c92:	6999      	ldr	r1, [r3, #24]
 8001c94:	420a      	tst	r2, r1
 8001c96:	d0fc      	beq.n	8001c92 <oled_config+0x352>
 8001c98:	22da      	movs	r2, #218	; 0xda
 8001c9a:	629a      	str	r2, [r3, #40]	; 0x28
 8001c9c:	4b38      	ldr	r3, [pc, #224]	; (8001d80 <oled_config+0x440>)
 8001c9e:	3a9a      	subs	r2, #154	; 0x9a
 8001ca0:	6999      	ldr	r1, [r3, #24]
 8001ca2:	420a      	tst	r2, r1
 8001ca4:	d1fc      	bne.n	8001ca0 <oled_config+0x360>
 8001ca6:	685a      	ldr	r2, [r3, #4]
 8001ca8:	4936      	ldr	r1, [pc, #216]	; (8001d84 <oled_config+0x444>)
 8001caa:	4011      	ands	r1, r2
 8001cac:	4a36      	ldr	r2, [pc, #216]	; (8001d88 <oled_config+0x448>)
 8001cae:	430a      	orrs	r2, r1
 8001cb0:	605a      	str	r2, [r3, #4]
 8001cb2:	2202      	movs	r2, #2
 8001cb4:	4b32      	ldr	r3, [pc, #200]	; (8001d80 <oled_config+0x440>)
 8001cb6:	6999      	ldr	r1, [r3, #24]
 8001cb8:	420a      	tst	r2, r1
 8001cba:	d0fc      	beq.n	8001cb6 <oled_config+0x376>
 8001cbc:	2200      	movs	r2, #0
 8001cbe:	629a      	str	r2, [r3, #40]	; 0x28
 8001cc0:	4b2f      	ldr	r3, [pc, #188]	; (8001d80 <oled_config+0x440>)
 8001cc2:	3202      	adds	r2, #2
 8001cc4:	6999      	ldr	r1, [r3, #24]
 8001cc6:	420a      	tst	r2, r1
 8001cc8:	d0fc      	beq.n	8001cc4 <oled_config+0x384>
 8001cca:	2212      	movs	r2, #18
 8001ccc:	629a      	str	r2, [r3, #40]	; 0x28
 8001cce:	4b2c      	ldr	r3, [pc, #176]	; (8001d80 <oled_config+0x440>)
 8001cd0:	322e      	adds	r2, #46	; 0x2e
 8001cd2:	6999      	ldr	r1, [r3, #24]
 8001cd4:	420a      	tst	r2, r1
 8001cd6:	d1fc      	bne.n	8001cd2 <oled_config+0x392>
 8001cd8:	685a      	ldr	r2, [r3, #4]
 8001cda:	492a      	ldr	r1, [pc, #168]	; (8001d84 <oled_config+0x444>)
 8001cdc:	4011      	ands	r1, r2
 8001cde:	4a2a      	ldr	r2, [pc, #168]	; (8001d88 <oled_config+0x448>)
 8001ce0:	430a      	orrs	r2, r1
 8001ce2:	605a      	str	r2, [r3, #4]
 8001ce4:	2202      	movs	r2, #2
 8001ce6:	4b26      	ldr	r3, [pc, #152]	; (8001d80 <oled_config+0x440>)
 8001ce8:	6999      	ldr	r1, [r3, #24]
 8001cea:	420a      	tst	r2, r1
 8001cec:	d0fc      	beq.n	8001ce8 <oled_config+0x3a8>
 8001cee:	2200      	movs	r2, #0
 8001cf0:	629a      	str	r2, [r3, #40]	; 0x28
 8001cf2:	4b23      	ldr	r3, [pc, #140]	; (8001d80 <oled_config+0x440>)
 8001cf4:	3202      	adds	r2, #2
 8001cf6:	6999      	ldr	r1, [r3, #24]
 8001cf8:	420a      	tst	r2, r1
 8001cfa:	d0fc      	beq.n	8001cf6 <oled_config+0x3b6>
 8001cfc:	228d      	movs	r2, #141	; 0x8d
 8001cfe:	629a      	str	r2, [r3, #40]	; 0x28
 8001d00:	4b1f      	ldr	r3, [pc, #124]	; (8001d80 <oled_config+0x440>)
 8001d02:	3a4d      	subs	r2, #77	; 0x4d
 8001d04:	6999      	ldr	r1, [r3, #24]
 8001d06:	420a      	tst	r2, r1
 8001d08:	d1fc      	bne.n	8001d04 <oled_config+0x3c4>
 8001d0a:	685a      	ldr	r2, [r3, #4]
 8001d0c:	491d      	ldr	r1, [pc, #116]	; (8001d84 <oled_config+0x444>)
 8001d0e:	4011      	ands	r1, r2
 8001d10:	4a1d      	ldr	r2, [pc, #116]	; (8001d88 <oled_config+0x448>)
 8001d12:	430a      	orrs	r2, r1
 8001d14:	605a      	str	r2, [r3, #4]
 8001d16:	2202      	movs	r2, #2
 8001d18:	4b19      	ldr	r3, [pc, #100]	; (8001d80 <oled_config+0x440>)
 8001d1a:	6999      	ldr	r1, [r3, #24]
 8001d1c:	420a      	tst	r2, r1
 8001d1e:	d0fc      	beq.n	8001d1a <oled_config+0x3da>
 8001d20:	2200      	movs	r2, #0
 8001d22:	629a      	str	r2, [r3, #40]	; 0x28
 8001d24:	4b16      	ldr	r3, [pc, #88]	; (8001d80 <oled_config+0x440>)
 8001d26:	3202      	adds	r2, #2
 8001d28:	6999      	ldr	r1, [r3, #24]
 8001d2a:	420a      	tst	r2, r1
 8001d2c:	d0fc      	beq.n	8001d28 <oled_config+0x3e8>
 8001d2e:	2214      	movs	r2, #20
 8001d30:	629a      	str	r2, [r3, #40]	; 0x28
 8001d32:	4b13      	ldr	r3, [pc, #76]	; (8001d80 <oled_config+0x440>)
 8001d34:	322c      	adds	r2, #44	; 0x2c
 8001d36:	6999      	ldr	r1, [r3, #24]
 8001d38:	420a      	tst	r2, r1
 8001d3a:	d1fc      	bne.n	8001d36 <oled_config+0x3f6>
 8001d3c:	685a      	ldr	r2, [r3, #4]
 8001d3e:	4911      	ldr	r1, [pc, #68]	; (8001d84 <oled_config+0x444>)
 8001d40:	4011      	ands	r1, r2
 8001d42:	4a11      	ldr	r2, [pc, #68]	; (8001d88 <oled_config+0x448>)
 8001d44:	430a      	orrs	r2, r1
 8001d46:	605a      	str	r2, [r3, #4]
 8001d48:	2202      	movs	r2, #2
 8001d4a:	4b0d      	ldr	r3, [pc, #52]	; (8001d80 <oled_config+0x440>)
 8001d4c:	6999      	ldr	r1, [r3, #24]
 8001d4e:	420a      	tst	r2, r1
 8001d50:	d0fc      	beq.n	8001d4c <oled_config+0x40c>
 8001d52:	2200      	movs	r2, #0
 8001d54:	629a      	str	r2, [r3, #40]	; 0x28
 8001d56:	4b0a      	ldr	r3, [pc, #40]	; (8001d80 <oled_config+0x440>)
 8001d58:	3202      	adds	r2, #2
 8001d5a:	6999      	ldr	r1, [r3, #24]
 8001d5c:	420a      	tst	r2, r1
 8001d5e:	d0fc      	beq.n	8001d5a <oled_config+0x41a>
 8001d60:	22af      	movs	r2, #175	; 0xaf
 8001d62:	629a      	str	r2, [r3, #40]	; 0x28
 8001d64:	2340      	movs	r3, #64	; 0x40
 8001d66:	4a06      	ldr	r2, [pc, #24]	; (8001d80 <oled_config+0x440>)
 8001d68:	6991      	ldr	r1, [r2, #24]
 8001d6a:	420b      	tst	r3, r1
 8001d6c:	d1fc      	bne.n	8001d68 <oled_config+0x428>
 8001d6e:	2280      	movs	r2, #128	; 0x80
 8001d70:	2100      	movs	r1, #0
 8001d72:	00d2      	lsls	r2, r2, #3
 8001d74:	4805      	ldr	r0, [pc, #20]	; (8001d8c <oled_config+0x44c>)
 8001d76:	f000 fabf 	bl	80022f8 <memset>
 8001d7a:	f7ff fbf1 	bl	8001560 <oledUpdate>
 8001d7e:	bd10      	pop	{r4, pc}
 8001d80:	40005800 	.word	0x40005800
 8001d84:	fc008000 	.word	0xfc008000
 8001d88:	02022078 	.word	0x02022078
 8001d8c:	20000834 	.word	0x20000834

08001d90 <NMI_Handler>:
 8001d90:	4770      	bx	lr
 8001d92:	46c0      	nop			; (mov r8, r8)

08001d94 <HardFault_Handler>:
 8001d94:	e7fe      	b.n	8001d94 <HardFault_Handler>
 8001d96:	46c0      	nop			; (mov r8, r8)

08001d98 <SVC_Handler>:
 8001d98:	4770      	bx	lr
 8001d9a:	46c0      	nop			; (mov r8, r8)

08001d9c <PendSV_Handler>:
 8001d9c:	4770      	bx	lr
 8001d9e:	46c0      	nop			; (mov r8, r8)

08001da0 <xvprintf>:
 8001da0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001da2:	4657      	mov	r7, sl
 8001da4:	46de      	mov	lr, fp
 8001da6:	464e      	mov	r6, r9
 8001da8:	4645      	mov	r5, r8
 8001daa:	4bca      	ldr	r3, [pc, #808]	; (80020d4 <xvprintf+0x334>)
 8001dac:	b5e0      	push	{r5, r6, r7, lr}
 8001dae:	469a      	mov	sl, r3
 8001db0:	0007      	movs	r7, r0
 8001db2:	b08b      	sub	sp, #44	; 0x2c
 8001db4:	9102      	str	r1, [sp, #8]
 8001db6:	783c      	ldrb	r4, [r7, #0]
 8001db8:	1c7e      	adds	r6, r7, #1
 8001dba:	2c00      	cmp	r4, #0
 8001dbc:	d011      	beq.n	8001de2 <xvprintf+0x42>
 8001dbe:	2c25      	cmp	r4, #37	; 0x25
 8001dc0:	d016      	beq.n	8001df0 <xvprintf+0x50>
 8001dc2:	4dc4      	ldr	r5, [pc, #784]	; (80020d4 <xvprintf+0x334>)
 8001dc4:	682b      	ldr	r3, [r5, #0]
 8001dc6:	2c0a      	cmp	r4, #10
 8001dc8:	d100      	bne.n	8001dcc <xvprintf+0x2c>
 8001dca:	e1b6      	b.n	800213a <xvprintf+0x39a>
 8001dcc:	2b00      	cmp	r3, #0
 8001dce:	d100      	bne.n	8001dd2 <xvprintf+0x32>
 8001dd0:	e165      	b.n	800209e <xvprintf+0x2fe>
 8001dd2:	1c5a      	adds	r2, r3, #1
 8001dd4:	602a      	str	r2, [r5, #0]
 8001dd6:	701c      	strb	r4, [r3, #0]
 8001dd8:	0037      	movs	r7, r6
 8001dda:	783c      	ldrb	r4, [r7, #0]
 8001ddc:	1c7e      	adds	r6, r7, #1
 8001dde:	2c00      	cmp	r4, #0
 8001de0:	d1ed      	bne.n	8001dbe <xvprintf+0x1e>
 8001de2:	b00b      	add	sp, #44	; 0x2c
 8001de4:	bc3c      	pop	{r2, r3, r4, r5}
 8001de6:	4690      	mov	r8, r2
 8001de8:	4699      	mov	r9, r3
 8001dea:	46a2      	mov	sl, r4
 8001dec:	46ab      	mov	fp, r5
 8001dee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001df0:	787c      	ldrb	r4, [r7, #1]
 8001df2:	2c30      	cmp	r4, #48	; 0x30
 8001df4:	d100      	bne.n	8001df8 <xvprintf+0x58>
 8001df6:	e175      	b.n	80020e4 <xvprintf+0x344>
 8001df8:	2c2d      	cmp	r4, #45	; 0x2d
 8001dfa:	d100      	bne.n	8001dfe <xvprintf+0x5e>
 8001dfc:	e1ab      	b.n	8002156 <xvprintf+0x3b6>
 8001dfe:	2300      	movs	r3, #0
 8001e00:	1cba      	adds	r2, r7, #2
 8001e02:	9301      	str	r3, [sp, #4]
 8001e04:	0023      	movs	r3, r4
 8001e06:	3b30      	subs	r3, #48	; 0x30
 8001e08:	2b09      	cmp	r3, #9
 8001e0a:	d900      	bls.n	8001e0e <xvprintf+0x6e>
 8001e0c:	e173      	b.n	80020f6 <xvprintf+0x356>
 8001e0e:	2500      	movs	r5, #0
 8001e10:	0023      	movs	r3, r4
 8001e12:	00ac      	lsls	r4, r5, #2
 8001e14:	1964      	adds	r4, r4, r5
 8001e16:	0064      	lsls	r4, r4, #1
 8001e18:	18e4      	adds	r4, r4, r3
 8001e1a:	7813      	ldrb	r3, [r2, #0]
 8001e1c:	3c30      	subs	r4, #48	; 0x30
 8001e1e:	0019      	movs	r1, r3
 8001e20:	1c57      	adds	r7, r2, #1
 8001e22:	3930      	subs	r1, #48	; 0x30
 8001e24:	0025      	movs	r5, r4
 8001e26:	003a      	movs	r2, r7
 8001e28:	2909      	cmp	r1, #9
 8001e2a:	d9f2      	bls.n	8001e12 <xvprintf+0x72>
 8001e2c:	001c      	movs	r4, r3
 8001e2e:	2320      	movs	r3, #32
 8001e30:	0022      	movs	r2, r4
 8001e32:	439a      	bics	r2, r3
 8001e34:	0013      	movs	r3, r2
 8001e36:	2a4c      	cmp	r2, #76	; 0x4c
 8001e38:	d105      	bne.n	8001e46 <xvprintf+0xa6>
 8001e3a:	9a01      	ldr	r2, [sp, #4]
 8001e3c:	3b48      	subs	r3, #72	; 0x48
 8001e3e:	431a      	orrs	r2, r3
 8001e40:	783c      	ldrb	r4, [r7, #0]
 8001e42:	9201      	str	r2, [sp, #4]
 8001e44:	3701      	adds	r7, #1
 8001e46:	2c00      	cmp	r4, #0
 8001e48:	d0cb      	beq.n	8001de2 <xvprintf+0x42>
 8001e4a:	2c60      	cmp	r4, #96	; 0x60
 8001e4c:	d800      	bhi.n	8001e50 <xvprintf+0xb0>
 8001e4e:	e137      	b.n	80020c0 <xvprintf+0x320>
 8001e50:	0022      	movs	r2, r4
 8001e52:	3a20      	subs	r2, #32
 8001e54:	b2d2      	uxtb	r2, r2
 8001e56:	0013      	movs	r3, r2
 8001e58:	3b42      	subs	r3, #66	; 0x42
 8001e5a:	b2db      	uxtb	r3, r3
 8001e5c:	2b16      	cmp	r3, #22
 8001e5e:	d900      	bls.n	8001e62 <xvprintf+0xc2>
 8001e60:	e1b6      	b.n	80021d0 <xvprintf+0x430>
 8001e62:	499d      	ldr	r1, [pc, #628]	; (80020d8 <xvprintf+0x338>)
 8001e64:	009b      	lsls	r3, r3, #2
 8001e66:	58cb      	ldr	r3, [r1, r3]
 8001e68:	469f      	mov	pc, r3
 8001e6a:	9b02      	ldr	r3, [sp, #8]
 8001e6c:	1d19      	adds	r1, r3, #4
 8001e6e:	2310      	movs	r3, #16
 8001e70:	469b      	mov	fp, r3
 8001e72:	9b02      	ldr	r3, [sp, #8]
 8001e74:	681e      	ldr	r6, [r3, #0]
 8001e76:	2300      	movs	r3, #0
 8001e78:	9102      	str	r1, [sp, #8]
 8001e7a:	9303      	str	r3, [sp, #12]
 8001e7c:	2307      	movs	r3, #7
 8001e7e:	2c78      	cmp	r4, #120	; 0x78
 8001e80:	d100      	bne.n	8001e84 <xvprintf+0xe4>
 8001e82:	2327      	movs	r3, #39	; 0x27
 8001e84:	b2db      	uxtb	r3, r3
 8001e86:	4698      	mov	r8, r3
 8001e88:	2300      	movs	r3, #0
 8001e8a:	4699      	mov	r9, r3
 8001e8c:	003b      	movs	r3, r7
 8001e8e:	465c      	mov	r4, fp
 8001e90:	4647      	mov	r7, r8
 8001e92:	46a8      	mov	r8, r5
 8001e94:	464d      	mov	r5, r9
 8001e96:	4699      	mov	r9, r3
 8001e98:	e004      	b.n	8001ea4 <xvprintf+0x104>
 8001e9a:	0006      	movs	r6, r0
 8001e9c:	2a18      	cmp	r2, #24
 8001e9e:	d100      	bne.n	8001ea2 <xvprintf+0x102>
 8001ea0:	e153      	b.n	800214a <xvprintf+0x3aa>
 8001ea2:	0015      	movs	r5, r2
 8001ea4:	0021      	movs	r1, r4
 8001ea6:	0030      	movs	r0, r6
 8001ea8:	f7fe f9b4 	bl	8000214 <__aeabi_uidivmod>
 8001eac:	b2cb      	uxtb	r3, r1
 8001eae:	2909      	cmp	r1, #9
 8001eb0:	d901      	bls.n	8001eb6 <xvprintf+0x116>
 8001eb2:	18fb      	adds	r3, r7, r3
 8001eb4:	b2db      	uxtb	r3, r3
 8001eb6:	a904      	add	r1, sp, #16
 8001eb8:	1c6a      	adds	r2, r5, #1
 8001eba:	3330      	adds	r3, #48	; 0x30
 8001ebc:	3901      	subs	r1, #1
 8001ebe:	548b      	strb	r3, [r1, r2]
 8001ec0:	42a6      	cmp	r6, r4
 8001ec2:	d2ea      	bcs.n	8001e9a <xvprintf+0xfa>
 8001ec4:	464f      	mov	r7, r9
 8001ec6:	0014      	movs	r4, r2
 8001ec8:	46a9      	mov	r9, r5
 8001eca:	4645      	mov	r5, r8
 8001ecc:	ab04      	add	r3, sp, #16
 8001ece:	469b      	mov	fp, r3
 8001ed0:	9b03      	ldr	r3, [sp, #12]
 8001ed2:	2b00      	cmp	r3, #0
 8001ed4:	d004      	beq.n	8001ee0 <xvprintf+0x140>
 8001ed6:	232d      	movs	r3, #45	; 0x2d
 8001ed8:	465a      	mov	r2, fp
 8001eda:	5513      	strb	r3, [r2, r4]
 8001edc:	464c      	mov	r4, r9
 8001ede:	3402      	adds	r4, #2
 8001ee0:	2210      	movs	r2, #16
 8001ee2:	9901      	ldr	r1, [sp, #4]
 8001ee4:	0026      	movs	r6, r4
 8001ee6:	07cb      	lsls	r3, r1, #31
 8001ee8:	17db      	asrs	r3, r3, #31
 8001eea:	401a      	ands	r2, r3
 8001eec:	2302      	movs	r3, #2
 8001eee:	0010      	movs	r0, r2
 8001ef0:	4019      	ands	r1, r3
 8001ef2:	0032      	movs	r2, r6
 8001ef4:	4653      	mov	r3, sl
 8001ef6:	3020      	adds	r0, #32
 8001ef8:	46a0      	mov	r8, r4
 8001efa:	46b9      	mov	r9, r7
 8001efc:	681b      	ldr	r3, [r3, #0]
 8001efe:	000c      	movs	r4, r1
 8001f00:	0007      	movs	r7, r0
 8001f02:	1c56      	adds	r6, r2, #1
 8001f04:	2c00      	cmp	r4, #0
 8001f06:	d10e      	bne.n	8001f26 <xvprintf+0x186>
 8001f08:	42aa      	cmp	r2, r5
 8001f0a:	d300      	bcc.n	8001f0e <xvprintf+0x16e>
 8001f0c:	e112      	b.n	8002134 <xvprintf+0x394>
 8001f0e:	2b00      	cmp	r3, #0
 8001f10:	d100      	bne.n	8001f14 <xvprintf+0x174>
 8001f12:	e0b9      	b.n	8002088 <xvprintf+0x2e8>
 8001f14:	1c5a      	adds	r2, r3, #1
 8001f16:	4651      	mov	r1, sl
 8001f18:	701f      	strb	r7, [r3, #0]
 8001f1a:	0013      	movs	r3, r2
 8001f1c:	600a      	str	r2, [r1, #0]
 8001f1e:	0032      	movs	r2, r6
 8001f20:	1c56      	adds	r6, r2, #1
 8001f22:	2c00      	cmp	r4, #0
 8001f24:	d0f0      	beq.n	8001f08 <xvprintf+0x168>
 8001f26:	4644      	mov	r4, r8
 8001f28:	0016      	movs	r6, r2
 8001f2a:	464f      	mov	r7, r9
 8001f2c:	4a6b      	ldr	r2, [pc, #428]	; (80020dc <xvprintf+0x33c>)
 8001f2e:	3c01      	subs	r4, #1
 8001f30:	445c      	add	r4, fp
 8001f32:	4691      	mov	r9, r2
 8001f34:	46a8      	mov	r8, r5
 8001f36:	e009      	b.n	8001f4c <xvprintf+0x1ac>
 8001f38:	4651      	mov	r1, sl
 8001f3a:	1c5a      	adds	r2, r3, #1
 8001f3c:	600a      	str	r2, [r1, #0]
 8001f3e:	701d      	strb	r5, [r3, #0]
 8001f40:	1e62      	subs	r2, r4, #1
 8001f42:	45a3      	cmp	fp, r4
 8001f44:	d011      	beq.n	8001f6a <xvprintf+0x1ca>
 8001f46:	4653      	mov	r3, sl
 8001f48:	0014      	movs	r4, r2
 8001f4a:	681b      	ldr	r3, [r3, #0]
 8001f4c:	7825      	ldrb	r5, [r4, #0]
 8001f4e:	2d0a      	cmp	r5, #10
 8001f50:	d100      	bne.n	8001f54 <xvprintf+0x1b4>
 8001f52:	e0d3      	b.n	80020fc <xvprintf+0x35c>
 8001f54:	2b00      	cmp	r3, #0
 8001f56:	d1ef      	bne.n	8001f38 <xvprintf+0x198>
 8001f58:	4b60      	ldr	r3, [pc, #384]	; (80020dc <xvprintf+0x33c>)
 8001f5a:	681b      	ldr	r3, [r3, #0]
 8001f5c:	2b00      	cmp	r3, #0
 8001f5e:	d0ef      	beq.n	8001f40 <xvprintf+0x1a0>
 8001f60:	0028      	movs	r0, r5
 8001f62:	4798      	blx	r3
 8001f64:	1e62      	subs	r2, r4, #1
 8001f66:	45a3      	cmp	fp, r4
 8001f68:	d1ed      	bne.n	8001f46 <xvprintf+0x1a6>
 8001f6a:	4645      	mov	r5, r8
 8001f6c:	42b5      	cmp	r5, r6
 8001f6e:	d800      	bhi.n	8001f72 <xvprintf+0x1d2>
 8001f70:	e721      	b.n	8001db6 <xvprintf+0x16>
 8001f72:	4653      	mov	r3, sl
 8001f74:	681b      	ldr	r3, [r3, #0]
 8001f76:	2b00      	cmp	r3, #0
 8001f78:	d100      	bne.n	8001f7c <xvprintf+0x1dc>
 8001f7a:	e0c8      	b.n	800210e <xvprintf+0x36e>
 8001f7c:	4651      	mov	r1, sl
 8001f7e:	1c5a      	adds	r2, r3, #1
 8001f80:	600a      	str	r2, [r1, #0]
 8001f82:	2220      	movs	r2, #32
 8001f84:	701a      	strb	r2, [r3, #0]
 8001f86:	3601      	adds	r6, #1
 8001f88:	e7f0      	b.n	8001f6c <xvprintf+0x1cc>
 8001f8a:	0022      	movs	r2, r4
 8001f8c:	9b02      	ldr	r3, [sp, #8]
 8001f8e:	1d19      	adds	r1, r3, #4
 8001f90:	9b01      	ldr	r3, [sp, #4]
 8001f92:	075b      	lsls	r3, r3, #29
 8001f94:	d400      	bmi.n	8001f98 <xvprintf+0x1f8>
 8001f96:	e118      	b.n	80021ca <xvprintf+0x42a>
 8001f98:	9b02      	ldr	r3, [sp, #8]
 8001f9a:	9102      	str	r1, [sp, #8]
 8001f9c:	210a      	movs	r1, #10
 8001f9e:	681b      	ldr	r3, [r3, #0]
 8001fa0:	468b      	mov	fp, r1
 8001fa2:	2a44      	cmp	r2, #68	; 0x44
 8001fa4:	d102      	bne.n	8001fac <xvprintf+0x20c>
 8001fa6:	2b00      	cmp	r3, #0
 8001fa8:	da00      	bge.n	8001fac <xvprintf+0x20c>
 8001faa:	e0f4      	b.n	8002196 <xvprintf+0x3f6>
 8001fac:	001e      	movs	r6, r3
 8001fae:	2300      	movs	r3, #0
 8001fb0:	9303      	str	r3, [sp, #12]
 8001fb2:	e763      	b.n	8001e7c <xvprintf+0xdc>
 8001fb4:	9c02      	ldr	r4, [sp, #8]
 8001fb6:	4d47      	ldr	r5, [pc, #284]	; (80020d4 <xvprintf+0x334>)
 8001fb8:	cc40      	ldmia	r4!, {r6}
 8001fba:	682b      	ldr	r3, [r5, #0]
 8001fbc:	b2f6      	uxtb	r6, r6
 8001fbe:	2e0a      	cmp	r6, #10
 8001fc0:	d100      	bne.n	8001fc4 <xvprintf+0x224>
 8001fc2:	e14a      	b.n	800225a <xvprintf+0x4ba>
 8001fc4:	2b00      	cmp	r3, #0
 8001fc6:	d100      	bne.n	8001fca <xvprintf+0x22a>
 8001fc8:	e0f7      	b.n	80021ba <xvprintf+0x41a>
 8001fca:	1c5a      	adds	r2, r3, #1
 8001fcc:	602a      	str	r2, [r5, #0]
 8001fce:	701e      	strb	r6, [r3, #0]
 8001fd0:	9402      	str	r4, [sp, #8]
 8001fd2:	e6f0      	b.n	8001db6 <xvprintf+0x16>
 8001fd4:	9b02      	ldr	r3, [sp, #8]
 8001fd6:	2400      	movs	r4, #0
 8001fd8:	cb04      	ldmia	r3!, {r2}
 8001fda:	9302      	str	r3, [sp, #8]
 8001fdc:	7813      	ldrb	r3, [r2, #0]
 8001fde:	4693      	mov	fp, r2
 8001fe0:	2b00      	cmp	r3, #0
 8001fe2:	d004      	beq.n	8001fee <xvprintf+0x24e>
 8001fe4:	3401      	adds	r4, #1
 8001fe6:	5d13      	ldrb	r3, [r2, r4]
 8001fe8:	2b00      	cmp	r3, #0
 8001fea:	d1fb      	bne.n	8001fe4 <xvprintf+0x244>
 8001fec:	4693      	mov	fp, r2
 8001fee:	2302      	movs	r3, #2
 8001ff0:	9a01      	ldr	r2, [sp, #4]
 8001ff2:	401a      	ands	r2, r3
 8001ff4:	4b37      	ldr	r3, [pc, #220]	; (80020d4 <xvprintf+0x334>)
 8001ff6:	4698      	mov	r8, r3
 8001ff8:	4b38      	ldr	r3, [pc, #224]	; (80020dc <xvprintf+0x33c>)
 8001ffa:	4699      	mov	r9, r3
 8001ffc:	0023      	movs	r3, r4
 8001ffe:	0014      	movs	r4, r2
 8002000:	1c5e      	adds	r6, r3, #1
 8002002:	2c00      	cmp	r4, #0
 8002004:	d10f      	bne.n	8002026 <xvprintf+0x286>
 8002006:	42ab      	cmp	r3, r5
 8002008:	d300      	bcc.n	800200c <xvprintf+0x26c>
 800200a:	e119      	b.n	8002240 <xvprintf+0x4a0>
 800200c:	4643      	mov	r3, r8
 800200e:	681b      	ldr	r3, [r3, #0]
 8002010:	2b00      	cmp	r3, #0
 8002012:	d04d      	beq.n	80020b0 <xvprintf+0x310>
 8002014:	4641      	mov	r1, r8
 8002016:	1c5a      	adds	r2, r3, #1
 8002018:	600a      	str	r2, [r1, #0]
 800201a:	2220      	movs	r2, #32
 800201c:	701a      	strb	r2, [r3, #0]
 800201e:	0033      	movs	r3, r6
 8002020:	1c5e      	adds	r6, r3, #1
 8002022:	2c00      	cmp	r4, #0
 8002024:	d0ef      	beq.n	8002006 <xvprintf+0x266>
 8002026:	001c      	movs	r4, r3
 8002028:	4b2a      	ldr	r3, [pc, #168]	; (80020d4 <xvprintf+0x334>)
 800202a:	4698      	mov	r8, r3
 800202c:	4b2b      	ldr	r3, [pc, #172]	; (80020dc <xvprintf+0x33c>)
 800202e:	4699      	mov	r9, r3
 8002030:	0023      	movs	r3, r4
 8002032:	465c      	mov	r4, fp
 8002034:	469b      	mov	fp, r3
 8002036:	7826      	ldrb	r6, [r4, #0]
 8002038:	2e00      	cmp	r6, #0
 800203a:	d00f      	beq.n	800205c <xvprintf+0x2bc>
 800203c:	4643      	mov	r3, r8
 800203e:	3401      	adds	r4, #1
 8002040:	681b      	ldr	r3, [r3, #0]
 8002042:	2e0a      	cmp	r6, #10
 8002044:	d100      	bne.n	8002048 <xvprintf+0x2a8>
 8002046:	e0e8      	b.n	800221a <xvprintf+0x47a>
 8002048:	2b00      	cmp	r3, #0
 800204a:	d100      	bne.n	800204e <xvprintf+0x2ae>
 800204c:	e0dd      	b.n	800220a <xvprintf+0x46a>
 800204e:	4641      	mov	r1, r8
 8002050:	701e      	strb	r6, [r3, #0]
 8002052:	7826      	ldrb	r6, [r4, #0]
 8002054:	1c5a      	adds	r2, r3, #1
 8002056:	600a      	str	r2, [r1, #0]
 8002058:	2e00      	cmp	r6, #0
 800205a:	d1ef      	bne.n	800203c <xvprintf+0x29c>
 800205c:	4b1f      	ldr	r3, [pc, #124]	; (80020dc <xvprintf+0x33c>)
 800205e:	465c      	mov	r4, fp
 8002060:	4698      	mov	r8, r3
 8002062:	4e1c      	ldr	r6, [pc, #112]	; (80020d4 <xvprintf+0x334>)
 8002064:	42ac      	cmp	r4, r5
 8002066:	d300      	bcc.n	800206a <xvprintf+0x2ca>
 8002068:	e6a5      	b.n	8001db6 <xvprintf+0x16>
 800206a:	6833      	ldr	r3, [r6, #0]
 800206c:	2b00      	cmp	r3, #0
 800206e:	d100      	bne.n	8002072 <xvprintf+0x2d2>
 8002070:	e0c2      	b.n	80021f8 <xvprintf+0x458>
 8002072:	1c5a      	adds	r2, r3, #1
 8002074:	6032      	str	r2, [r6, #0]
 8002076:	2220      	movs	r2, #32
 8002078:	701a      	strb	r2, [r3, #0]
 800207a:	3401      	adds	r4, #1
 800207c:	e7f2      	b.n	8002064 <xvprintf+0x2c4>
 800207e:	9b02      	ldr	r3, [sp, #8]
 8002080:	1d19      	adds	r1, r3, #4
 8002082:	2302      	movs	r3, #2
 8002084:	469b      	mov	fp, r3
 8002086:	e6f4      	b.n	8001e72 <xvprintf+0xd2>
 8002088:	4a14      	ldr	r2, [pc, #80]	; (80020dc <xvprintf+0x33c>)
 800208a:	6812      	ldr	r2, [r2, #0]
 800208c:	2a00      	cmp	r2, #0
 800208e:	d100      	bne.n	8002092 <xvprintf+0x2f2>
 8002090:	e745      	b.n	8001f1e <xvprintf+0x17e>
 8002092:	0038      	movs	r0, r7
 8002094:	4790      	blx	r2
 8002096:	4653      	mov	r3, sl
 8002098:	0032      	movs	r2, r6
 800209a:	681b      	ldr	r3, [r3, #0]
 800209c:	e740      	b.n	8001f20 <xvprintf+0x180>
 800209e:	4b0f      	ldr	r3, [pc, #60]	; (80020dc <xvprintf+0x33c>)
 80020a0:	681b      	ldr	r3, [r3, #0]
 80020a2:	2b00      	cmp	r3, #0
 80020a4:	d100      	bne.n	80020a8 <xvprintf+0x308>
 80020a6:	e697      	b.n	8001dd8 <xvprintf+0x38>
 80020a8:	0020      	movs	r0, r4
 80020aa:	4798      	blx	r3
 80020ac:	0037      	movs	r7, r6
 80020ae:	e682      	b.n	8001db6 <xvprintf+0x16>
 80020b0:	464b      	mov	r3, r9
 80020b2:	681b      	ldr	r3, [r3, #0]
 80020b4:	2b00      	cmp	r3, #0
 80020b6:	d0b2      	beq.n	800201e <xvprintf+0x27e>
 80020b8:	2020      	movs	r0, #32
 80020ba:	4798      	blx	r3
 80020bc:	0033      	movs	r3, r6
 80020be:	e7af      	b.n	8002020 <xvprintf+0x280>
 80020c0:	0023      	movs	r3, r4
 80020c2:	3b42      	subs	r3, #66	; 0x42
 80020c4:	b2db      	uxtb	r3, r3
 80020c6:	2b16      	cmp	r3, #22
 80020c8:	d900      	bls.n	80020cc <xvprintf+0x32c>
 80020ca:	e089      	b.n	80021e0 <xvprintf+0x440>
 80020cc:	4a04      	ldr	r2, [pc, #16]	; (80020e0 <xvprintf+0x340>)
 80020ce:	009b      	lsls	r3, r3, #2
 80020d0:	58d3      	ldr	r3, [r2, r3]
 80020d2:	469f      	mov	pc, r3
 80020d4:	20000c38 	.word	0x20000c38
 80020d8:	08004a6c 	.word	0x08004a6c
 80020dc:	20000c7c 	.word	0x20000c7c
 80020e0:	08004ac8 	.word	0x08004ac8
 80020e4:	2301      	movs	r3, #1
 80020e6:	78bc      	ldrb	r4, [r7, #2]
 80020e8:	9301      	str	r3, [sp, #4]
 80020ea:	0023      	movs	r3, r4
 80020ec:	3b30      	subs	r3, #48	; 0x30
 80020ee:	1cfa      	adds	r2, r7, #3
 80020f0:	2b09      	cmp	r3, #9
 80020f2:	d800      	bhi.n	80020f6 <xvprintf+0x356>
 80020f4:	e68b      	b.n	8001e0e <xvprintf+0x6e>
 80020f6:	0017      	movs	r7, r2
 80020f8:	2500      	movs	r5, #0
 80020fa:	e698      	b.n	8001e2e <xvprintf+0x8e>
 80020fc:	2b00      	cmp	r3, #0
 80020fe:	d00f      	beq.n	8002120 <xvprintf+0x380>
 8002100:	4651      	mov	r1, sl
 8002102:	1c5a      	adds	r2, r3, #1
 8002104:	600a      	str	r2, [r1, #0]
 8002106:	210d      	movs	r1, #13
 8002108:	7019      	strb	r1, [r3, #0]
 800210a:	0013      	movs	r3, r2
 800210c:	e722      	b.n	8001f54 <xvprintf+0x1b4>
 800210e:	4b61      	ldr	r3, [pc, #388]	; (8002294 <xvprintf+0x4f4>)
 8002110:	681b      	ldr	r3, [r3, #0]
 8002112:	2b00      	cmp	r3, #0
 8002114:	d100      	bne.n	8002118 <xvprintf+0x378>
 8002116:	e736      	b.n	8001f86 <xvprintf+0x1e6>
 8002118:	2020      	movs	r0, #32
 800211a:	4798      	blx	r3
 800211c:	3601      	adds	r6, #1
 800211e:	e725      	b.n	8001f6c <xvprintf+0x1cc>
 8002120:	464b      	mov	r3, r9
 8002122:	681b      	ldr	r3, [r3, #0]
 8002124:	2b00      	cmp	r3, #0
 8002126:	d100      	bne.n	800212a <xvprintf+0x38a>
 8002128:	e70a      	b.n	8001f40 <xvprintf+0x1a0>
 800212a:	200d      	movs	r0, #13
 800212c:	4798      	blx	r3
 800212e:	4653      	mov	r3, sl
 8002130:	681b      	ldr	r3, [r3, #0]
 8002132:	e70f      	b.n	8001f54 <xvprintf+0x1b4>
 8002134:	4644      	mov	r4, r8
 8002136:	464f      	mov	r7, r9
 8002138:	e6f8      	b.n	8001f2c <xvprintf+0x18c>
 800213a:	2b00      	cmp	r3, #0
 800213c:	d010      	beq.n	8002160 <xvprintf+0x3c0>
 800213e:	210d      	movs	r1, #13
 8002140:	1c5a      	adds	r2, r3, #1
 8002142:	7019      	strb	r1, [r3, #0]
 8002144:	602a      	str	r2, [r5, #0]
 8002146:	0013      	movs	r3, r2
 8002148:	e640      	b.n	8001dcc <xvprintf+0x2c>
 800214a:	2317      	movs	r3, #23
 800214c:	464f      	mov	r7, r9
 800214e:	4645      	mov	r5, r8
 8002150:	0014      	movs	r4, r2
 8002152:	4699      	mov	r9, r3
 8002154:	e6ba      	b.n	8001ecc <xvprintf+0x12c>
 8002156:	2302      	movs	r3, #2
 8002158:	1cfa      	adds	r2, r7, #3
 800215a:	78bc      	ldrb	r4, [r7, #2]
 800215c:	9301      	str	r3, [sp, #4]
 800215e:	e651      	b.n	8001e04 <xvprintf+0x64>
 8002160:	4b4c      	ldr	r3, [pc, #304]	; (8002294 <xvprintf+0x4f4>)
 8002162:	681b      	ldr	r3, [r3, #0]
 8002164:	2b00      	cmp	r3, #0
 8002166:	d100      	bne.n	800216a <xvprintf+0x3ca>
 8002168:	e636      	b.n	8001dd8 <xvprintf+0x38>
 800216a:	200d      	movs	r0, #13
 800216c:	4798      	blx	r3
 800216e:	682b      	ldr	r3, [r5, #0]
 8002170:	e62c      	b.n	8001dcc <xvprintf+0x2c>
 8002172:	9b02      	ldr	r3, [sp, #8]
 8002174:	1d19      	adds	r1, r3, #4
 8002176:	9b01      	ldr	r3, [sp, #4]
 8002178:	075b      	lsls	r3, r3, #29
 800217a:	d500      	bpl.n	800217e <xvprintf+0x3de>
 800217c:	e084      	b.n	8002288 <xvprintf+0x4e8>
 800217e:	2308      	movs	r3, #8
 8002180:	0022      	movs	r2, r4
 8002182:	469b      	mov	fp, r3
 8002184:	2a44      	cmp	r2, #68	; 0x44
 8002186:	d000      	beq.n	800218a <xvprintf+0x3ea>
 8002188:	e673      	b.n	8001e72 <xvprintf+0xd2>
 800218a:	9b02      	ldr	r3, [sp, #8]
 800218c:	9102      	str	r1, [sp, #8]
 800218e:	681b      	ldr	r3, [r3, #0]
 8002190:	2b00      	cmp	r3, #0
 8002192:	db00      	blt.n	8002196 <xvprintf+0x3f6>
 8002194:	e70a      	b.n	8001fac <xvprintf+0x20c>
 8002196:	2210      	movs	r2, #16
 8002198:	425e      	negs	r6, r3
 800219a:	2310      	movs	r3, #16
 800219c:	9901      	ldr	r1, [sp, #4]
 800219e:	9303      	str	r3, [sp, #12]
 80021a0:	4311      	orrs	r1, r2
 80021a2:	9101      	str	r1, [sp, #4]
 80021a4:	e66a      	b.n	8001e7c <xvprintf+0xdc>
 80021a6:	9b02      	ldr	r3, [sp, #8]
 80021a8:	9a01      	ldr	r2, [sp, #4]
 80021aa:	1d19      	adds	r1, r3, #4
 80021ac:	0752      	lsls	r2, r2, #29
 80021ae:	d551      	bpl.n	8002254 <xvprintf+0x4b4>
 80021b0:	2208      	movs	r2, #8
 80021b2:	681b      	ldr	r3, [r3, #0]
 80021b4:	9102      	str	r1, [sp, #8]
 80021b6:	4693      	mov	fp, r2
 80021b8:	e6f8      	b.n	8001fac <xvprintf+0x20c>
 80021ba:	4b36      	ldr	r3, [pc, #216]	; (8002294 <xvprintf+0x4f4>)
 80021bc:	681b      	ldr	r3, [r3, #0]
 80021be:	2b00      	cmp	r3, #0
 80021c0:	d057      	beq.n	8002272 <xvprintf+0x4d2>
 80021c2:	0030      	movs	r0, r6
 80021c4:	4798      	blx	r3
 80021c6:	9402      	str	r4, [sp, #8]
 80021c8:	e5f5      	b.n	8001db6 <xvprintf+0x16>
 80021ca:	230a      	movs	r3, #10
 80021cc:	469b      	mov	fp, r3
 80021ce:	e7d9      	b.n	8002184 <xvprintf+0x3e4>
 80021d0:	4d31      	ldr	r5, [pc, #196]	; (8002298 <xvprintf+0x4f8>)
 80021d2:	682b      	ldr	r3, [r5, #0]
 80021d4:	2b00      	cmp	r3, #0
 80021d6:	d035      	beq.n	8002244 <xvprintf+0x4a4>
 80021d8:	1c5a      	adds	r2, r3, #1
 80021da:	602a      	str	r2, [r5, #0]
 80021dc:	701c      	strb	r4, [r3, #0]
 80021de:	e5ea      	b.n	8001db6 <xvprintf+0x16>
 80021e0:	4d2d      	ldr	r5, [pc, #180]	; (8002298 <xvprintf+0x4f8>)
 80021e2:	682b      	ldr	r3, [r5, #0]
 80021e4:	2c0a      	cmp	r4, #10
 80021e6:	d1f5      	bne.n	80021d4 <xvprintf+0x434>
 80021e8:	2b00      	cmp	r3, #0
 80021ea:	d044      	beq.n	8002276 <xvprintf+0x4d6>
 80021ec:	210d      	movs	r1, #13
 80021ee:	1c5a      	adds	r2, r3, #1
 80021f0:	7019      	strb	r1, [r3, #0]
 80021f2:	602a      	str	r2, [r5, #0]
 80021f4:	0013      	movs	r3, r2
 80021f6:	e7ed      	b.n	80021d4 <xvprintf+0x434>
 80021f8:	4643      	mov	r3, r8
 80021fa:	681b      	ldr	r3, [r3, #0]
 80021fc:	2b00      	cmp	r3, #0
 80021fe:	d100      	bne.n	8002202 <xvprintf+0x462>
 8002200:	e73b      	b.n	800207a <xvprintf+0x2da>
 8002202:	2020      	movs	r0, #32
 8002204:	4798      	blx	r3
 8002206:	3401      	adds	r4, #1
 8002208:	e72c      	b.n	8002064 <xvprintf+0x2c4>
 800220a:	464b      	mov	r3, r9
 800220c:	681b      	ldr	r3, [r3, #0]
 800220e:	2b00      	cmp	r3, #0
 8002210:	d100      	bne.n	8002214 <xvprintf+0x474>
 8002212:	e710      	b.n	8002036 <xvprintf+0x296>
 8002214:	0030      	movs	r0, r6
 8002216:	4798      	blx	r3
 8002218:	e70d      	b.n	8002036 <xvprintf+0x296>
 800221a:	2b00      	cmp	r3, #0
 800221c:	d006      	beq.n	800222c <xvprintf+0x48c>
 800221e:	4641      	mov	r1, r8
 8002220:	1c5a      	adds	r2, r3, #1
 8002222:	600a      	str	r2, [r1, #0]
 8002224:	210d      	movs	r1, #13
 8002226:	7019      	strb	r1, [r3, #0]
 8002228:	0013      	movs	r3, r2
 800222a:	e70d      	b.n	8002048 <xvprintf+0x2a8>
 800222c:	4b19      	ldr	r3, [pc, #100]	; (8002294 <xvprintf+0x4f4>)
 800222e:	681b      	ldr	r3, [r3, #0]
 8002230:	2b00      	cmp	r3, #0
 8002232:	d100      	bne.n	8002236 <xvprintf+0x496>
 8002234:	e6ff      	b.n	8002036 <xvprintf+0x296>
 8002236:	200d      	movs	r0, #13
 8002238:	4798      	blx	r3
 800223a:	4643      	mov	r3, r8
 800223c:	681b      	ldr	r3, [r3, #0]
 800223e:	e703      	b.n	8002048 <xvprintf+0x2a8>
 8002240:	0034      	movs	r4, r6
 8002242:	e6f1      	b.n	8002028 <xvprintf+0x288>
 8002244:	4b13      	ldr	r3, [pc, #76]	; (8002294 <xvprintf+0x4f4>)
 8002246:	681b      	ldr	r3, [r3, #0]
 8002248:	2b00      	cmp	r3, #0
 800224a:	d100      	bne.n	800224e <xvprintf+0x4ae>
 800224c:	e5b3      	b.n	8001db6 <xvprintf+0x16>
 800224e:	0020      	movs	r0, r4
 8002250:	4798      	blx	r3
 8002252:	e5b0      	b.n	8001db6 <xvprintf+0x16>
 8002254:	2308      	movs	r3, #8
 8002256:	469b      	mov	fp, r3
 8002258:	e60b      	b.n	8001e72 <xvprintf+0xd2>
 800225a:	2b00      	cmp	r3, #0
 800225c:	d005      	beq.n	800226a <xvprintf+0x4ca>
 800225e:	210d      	movs	r1, #13
 8002260:	1c5a      	adds	r2, r3, #1
 8002262:	7019      	strb	r1, [r3, #0]
 8002264:	602a      	str	r2, [r5, #0]
 8002266:	0013      	movs	r3, r2
 8002268:	e6ac      	b.n	8001fc4 <xvprintf+0x224>
 800226a:	4b0a      	ldr	r3, [pc, #40]	; (8002294 <xvprintf+0x4f4>)
 800226c:	681b      	ldr	r3, [r3, #0]
 800226e:	2b00      	cmp	r3, #0
 8002270:	d10c      	bne.n	800228c <xvprintf+0x4ec>
 8002272:	9402      	str	r4, [sp, #8]
 8002274:	e59f      	b.n	8001db6 <xvprintf+0x16>
 8002276:	4b07      	ldr	r3, [pc, #28]	; (8002294 <xvprintf+0x4f4>)
 8002278:	681b      	ldr	r3, [r3, #0]
 800227a:	2b00      	cmp	r3, #0
 800227c:	d100      	bne.n	8002280 <xvprintf+0x4e0>
 800227e:	e59a      	b.n	8001db6 <xvprintf+0x16>
 8002280:	200d      	movs	r0, #13
 8002282:	4798      	blx	r3
 8002284:	682b      	ldr	r3, [r5, #0]
 8002286:	e7a5      	b.n	80021d4 <xvprintf+0x434>
 8002288:	9b02      	ldr	r3, [sp, #8]
 800228a:	e791      	b.n	80021b0 <xvprintf+0x410>
 800228c:	200d      	movs	r0, #13
 800228e:	4798      	blx	r3
 8002290:	682b      	ldr	r3, [r5, #0]
 8002292:	e697      	b.n	8001fc4 <xvprintf+0x224>
 8002294:	20000c7c 	.word	0x20000c7c
 8002298:	20000c38 	.word	0x20000c38

0800229c <xprintf>:
 800229c:	b40f      	push	{r0, r1, r2, r3}
 800229e:	b500      	push	{lr}
 80022a0:	b083      	sub	sp, #12
 80022a2:	a904      	add	r1, sp, #16
 80022a4:	c901      	ldmia	r1!, {r0}
 80022a6:	9101      	str	r1, [sp, #4]
 80022a8:	f7ff fd7a 	bl	8001da0 <xvprintf>
 80022ac:	b003      	add	sp, #12
 80022ae:	bc08      	pop	{r3}
 80022b0:	b004      	add	sp, #16
 80022b2:	4718      	bx	r3

080022b4 <__libc_init_array>:
 80022b4:	b570      	push	{r4, r5, r6, lr}
 80022b6:	4d0c      	ldr	r5, [pc, #48]	; (80022e8 <__libc_init_array+0x34>)
 80022b8:	4e0c      	ldr	r6, [pc, #48]	; (80022ec <__libc_init_array+0x38>)
 80022ba:	1b76      	subs	r6, r6, r5
 80022bc:	10b6      	asrs	r6, r6, #2
 80022be:	d005      	beq.n	80022cc <__libc_init_array+0x18>
 80022c0:	2400      	movs	r4, #0
 80022c2:	cd08      	ldmia	r5!, {r3}
 80022c4:	3401      	adds	r4, #1
 80022c6:	4798      	blx	r3
 80022c8:	42a6      	cmp	r6, r4
 80022ca:	d1fa      	bne.n	80022c2 <__libc_init_array+0xe>
 80022cc:	f000 f8f4 	bl	80024b8 <_init>
 80022d0:	4d07      	ldr	r5, [pc, #28]	; (80022f0 <__libc_init_array+0x3c>)
 80022d2:	4e08      	ldr	r6, [pc, #32]	; (80022f4 <__libc_init_array+0x40>)
 80022d4:	1b76      	subs	r6, r6, r5
 80022d6:	10b6      	asrs	r6, r6, #2
 80022d8:	d005      	beq.n	80022e6 <__libc_init_array+0x32>
 80022da:	2400      	movs	r4, #0
 80022dc:	cd08      	ldmia	r5!, {r3}
 80022de:	3401      	adds	r4, #1
 80022e0:	4798      	blx	r3
 80022e2:	42a6      	cmp	r6, r4
 80022e4:	d1fa      	bne.n	80022dc <__libc_init_array+0x28>
 80022e6:	bd70      	pop	{r4, r5, r6, pc}
 80022e8:	08004b28 	.word	0x08004b28
 80022ec:	08004b28 	.word	0x08004b28
 80022f0:	08004b28 	.word	0x08004b28
 80022f4:	08004b30 	.word	0x08004b30

080022f8 <memset>:
 80022f8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022fa:	0005      	movs	r5, r0
 80022fc:	0783      	lsls	r3, r0, #30
 80022fe:	d04a      	beq.n	8002396 <memset+0x9e>
 8002300:	1e54      	subs	r4, r2, #1
 8002302:	2a00      	cmp	r2, #0
 8002304:	d044      	beq.n	8002390 <memset+0x98>
 8002306:	b2ce      	uxtb	r6, r1
 8002308:	0003      	movs	r3, r0
 800230a:	2203      	movs	r2, #3
 800230c:	e002      	b.n	8002314 <memset+0x1c>
 800230e:	3501      	adds	r5, #1
 8002310:	3c01      	subs	r4, #1
 8002312:	d33d      	bcc.n	8002390 <memset+0x98>
 8002314:	3301      	adds	r3, #1
 8002316:	702e      	strb	r6, [r5, #0]
 8002318:	4213      	tst	r3, r2
 800231a:	d1f8      	bne.n	800230e <memset+0x16>
 800231c:	2c03      	cmp	r4, #3
 800231e:	d92f      	bls.n	8002380 <memset+0x88>
 8002320:	22ff      	movs	r2, #255	; 0xff
 8002322:	400a      	ands	r2, r1
 8002324:	0215      	lsls	r5, r2, #8
 8002326:	4315      	orrs	r5, r2
 8002328:	042a      	lsls	r2, r5, #16
 800232a:	4315      	orrs	r5, r2
 800232c:	2c0f      	cmp	r4, #15
 800232e:	d935      	bls.n	800239c <memset+0xa4>
 8002330:	0027      	movs	r7, r4
 8002332:	3f10      	subs	r7, #16
 8002334:	093f      	lsrs	r7, r7, #4
 8002336:	013e      	lsls	r6, r7, #4
 8002338:	46b4      	mov	ip, r6
 800233a:	001e      	movs	r6, r3
 800233c:	001a      	movs	r2, r3
 800233e:	3610      	adds	r6, #16
 8002340:	4466      	add	r6, ip
 8002342:	6015      	str	r5, [r2, #0]
 8002344:	6055      	str	r5, [r2, #4]
 8002346:	6095      	str	r5, [r2, #8]
 8002348:	60d5      	str	r5, [r2, #12]
 800234a:	3210      	adds	r2, #16
 800234c:	42b2      	cmp	r2, r6
 800234e:	d1f8      	bne.n	8002342 <memset+0x4a>
 8002350:	260f      	movs	r6, #15
 8002352:	220c      	movs	r2, #12
 8002354:	3701      	adds	r7, #1
 8002356:	013f      	lsls	r7, r7, #4
 8002358:	4026      	ands	r6, r4
 800235a:	19db      	adds	r3, r3, r7
 800235c:	0037      	movs	r7, r6
 800235e:	4222      	tst	r2, r4
 8002360:	d017      	beq.n	8002392 <memset+0x9a>
 8002362:	1f3e      	subs	r6, r7, #4
 8002364:	08b6      	lsrs	r6, r6, #2
 8002366:	00b4      	lsls	r4, r6, #2
 8002368:	46a4      	mov	ip, r4
 800236a:	001a      	movs	r2, r3
 800236c:	1d1c      	adds	r4, r3, #4
 800236e:	4464      	add	r4, ip
 8002370:	c220      	stmia	r2!, {r5}
 8002372:	42a2      	cmp	r2, r4
 8002374:	d1fc      	bne.n	8002370 <memset+0x78>
 8002376:	2403      	movs	r4, #3
 8002378:	3601      	adds	r6, #1
 800237a:	00b6      	lsls	r6, r6, #2
 800237c:	199b      	adds	r3, r3, r6
 800237e:	403c      	ands	r4, r7
 8002380:	2c00      	cmp	r4, #0
 8002382:	d005      	beq.n	8002390 <memset+0x98>
 8002384:	b2c9      	uxtb	r1, r1
 8002386:	191c      	adds	r4, r3, r4
 8002388:	7019      	strb	r1, [r3, #0]
 800238a:	3301      	adds	r3, #1
 800238c:	429c      	cmp	r4, r3
 800238e:	d1fb      	bne.n	8002388 <memset+0x90>
 8002390:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002392:	0034      	movs	r4, r6
 8002394:	e7f4      	b.n	8002380 <memset+0x88>
 8002396:	0014      	movs	r4, r2
 8002398:	0003      	movs	r3, r0
 800239a:	e7bf      	b.n	800231c <memset+0x24>
 800239c:	0027      	movs	r7, r4
 800239e:	e7e0      	b.n	8002362 <memset+0x6a>

080023a0 <register_fini>:
 80023a0:	4b03      	ldr	r3, [pc, #12]	; (80023b0 <register_fini+0x10>)
 80023a2:	b510      	push	{r4, lr}
 80023a4:	2b00      	cmp	r3, #0
 80023a6:	d002      	beq.n	80023ae <register_fini+0xe>
 80023a8:	4802      	ldr	r0, [pc, #8]	; (80023b4 <register_fini+0x14>)
 80023aa:	f000 f805 	bl	80023b8 <atexit>
 80023ae:	bd10      	pop	{r4, pc}
 80023b0:	00000000 	.word	0x00000000
 80023b4:	080023c9 	.word	0x080023c9

080023b8 <atexit>:
 80023b8:	b510      	push	{r4, lr}
 80023ba:	0001      	movs	r1, r0
 80023bc:	2300      	movs	r3, #0
 80023be:	2200      	movs	r2, #0
 80023c0:	2000      	movs	r0, #0
 80023c2:	f000 f819 	bl	80023f8 <__register_exitproc>
 80023c6:	bd10      	pop	{r4, pc}

080023c8 <__libc_fini_array>:
 80023c8:	b570      	push	{r4, r5, r6, lr}
 80023ca:	4d07      	ldr	r5, [pc, #28]	; (80023e8 <__libc_fini_array+0x20>)
 80023cc:	4c07      	ldr	r4, [pc, #28]	; (80023ec <__libc_fini_array+0x24>)
 80023ce:	1b64      	subs	r4, r4, r5
 80023d0:	10a4      	asrs	r4, r4, #2
 80023d2:	d005      	beq.n	80023e0 <__libc_fini_array+0x18>
 80023d4:	3c01      	subs	r4, #1
 80023d6:	00a3      	lsls	r3, r4, #2
 80023d8:	58eb      	ldr	r3, [r5, r3]
 80023da:	4798      	blx	r3
 80023dc:	2c00      	cmp	r4, #0
 80023de:	d1f9      	bne.n	80023d4 <__libc_fini_array+0xc>
 80023e0:	f000 f870 	bl	80024c4 <_fini>
 80023e4:	bd70      	pop	{r4, r5, r6, pc}
 80023e6:	46c0      	nop			; (mov r8, r8)
 80023e8:	08004b30 	.word	0x08004b30
 80023ec:	08004b34 	.word	0x08004b34

080023f0 <__retarget_lock_acquire_recursive>:
 80023f0:	4770      	bx	lr
 80023f2:	46c0      	nop			; (mov r8, r8)

080023f4 <__retarget_lock_release_recursive>:
 80023f4:	4770      	bx	lr
 80023f6:	46c0      	nop			; (mov r8, r8)

080023f8 <__register_exitproc>:
 80023f8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023fa:	46de      	mov	lr, fp
 80023fc:	4645      	mov	r5, r8
 80023fe:	464e      	mov	r6, r9
 8002400:	4657      	mov	r7, sl
 8002402:	b5e0      	push	{r5, r6, r7, lr}
 8002404:	4c2a      	ldr	r4, [pc, #168]	; (80024b0 <__register_exitproc+0xb8>)
 8002406:	b083      	sub	sp, #12
 8002408:	0005      	movs	r5, r0
 800240a:	6820      	ldr	r0, [r4, #0]
 800240c:	4690      	mov	r8, r2
 800240e:	469b      	mov	fp, r3
 8002410:	000e      	movs	r6, r1
 8002412:	f7ff ffed 	bl	80023f0 <__retarget_lock_acquire_recursive>
 8002416:	4b27      	ldr	r3, [pc, #156]	; (80024b4 <__register_exitproc+0xbc>)
 8002418:	681b      	ldr	r3, [r3, #0]
 800241a:	9301      	str	r3, [sp, #4]
 800241c:	23a4      	movs	r3, #164	; 0xa4
 800241e:	9a01      	ldr	r2, [sp, #4]
 8002420:	005b      	lsls	r3, r3, #1
 8002422:	58d2      	ldr	r2, [r2, r3]
 8002424:	2a00      	cmp	r2, #0
 8002426:	d038      	beq.n	800249a <__register_exitproc+0xa2>
 8002428:	6853      	ldr	r3, [r2, #4]
 800242a:	6820      	ldr	r0, [r4, #0]
 800242c:	2b1f      	cmp	r3, #31
 800242e:	dc3a      	bgt.n	80024a6 <__register_exitproc+0xae>
 8002430:	2d00      	cmp	r5, #0
 8002432:	d10e      	bne.n	8002452 <__register_exitproc+0x5a>
 8002434:	1c59      	adds	r1, r3, #1
 8002436:	3302      	adds	r3, #2
 8002438:	009b      	lsls	r3, r3, #2
 800243a:	6051      	str	r1, [r2, #4]
 800243c:	509e      	str	r6, [r3, r2]
 800243e:	f7ff ffd9 	bl	80023f4 <__retarget_lock_release_recursive>
 8002442:	2000      	movs	r0, #0
 8002444:	b003      	add	sp, #12
 8002446:	bc3c      	pop	{r2, r3, r4, r5}
 8002448:	4690      	mov	r8, r2
 800244a:	4699      	mov	r9, r3
 800244c:	46a2      	mov	sl, r4
 800244e:	46ab      	mov	fp, r5
 8002450:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002452:	0099      	lsls	r1, r3, #2
 8002454:	4689      	mov	r9, r1
 8002456:	4491      	add	r9, r2
 8002458:	4641      	mov	r1, r8
 800245a:	2488      	movs	r4, #136	; 0x88
 800245c:	464f      	mov	r7, r9
 800245e:	5139      	str	r1, [r7, r4]
 8002460:	21c4      	movs	r1, #196	; 0xc4
 8002462:	0049      	lsls	r1, r1, #1
 8002464:	4688      	mov	r8, r1
 8002466:	4490      	add	r8, r2
 8002468:	4641      	mov	r1, r8
 800246a:	3c87      	subs	r4, #135	; 0x87
 800246c:	409c      	lsls	r4, r3
 800246e:	6809      	ldr	r1, [r1, #0]
 8002470:	46a2      	mov	sl, r4
 8002472:	4321      	orrs	r1, r4
 8002474:	468c      	mov	ip, r1
 8002476:	4641      	mov	r1, r8
 8002478:	4664      	mov	r4, ip
 800247a:	600c      	str	r4, [r1, #0]
 800247c:	2184      	movs	r1, #132	; 0x84
 800247e:	464c      	mov	r4, r9
 8002480:	465f      	mov	r7, fp
 8002482:	0049      	lsls	r1, r1, #1
 8002484:	5067      	str	r7, [r4, r1]
 8002486:	2d02      	cmp	r5, #2
 8002488:	d1d4      	bne.n	8002434 <__register_exitproc+0x3c>
 800248a:	0011      	movs	r1, r2
 800248c:	4655      	mov	r5, sl
 800248e:	318d      	adds	r1, #141	; 0x8d
 8002490:	31ff      	adds	r1, #255	; 0xff
 8002492:	680c      	ldr	r4, [r1, #0]
 8002494:	4325      	orrs	r5, r4
 8002496:	600d      	str	r5, [r1, #0]
 8002498:	e7cc      	b.n	8002434 <__register_exitproc+0x3c>
 800249a:	9a01      	ldr	r2, [sp, #4]
 800249c:	9901      	ldr	r1, [sp, #4]
 800249e:	324d      	adds	r2, #77	; 0x4d
 80024a0:	32ff      	adds	r2, #255	; 0xff
 80024a2:	50ca      	str	r2, [r1, r3]
 80024a4:	e7c0      	b.n	8002428 <__register_exitproc+0x30>
 80024a6:	f7ff ffa5 	bl	80023f4 <__retarget_lock_release_recursive>
 80024aa:	2001      	movs	r0, #1
 80024ac:	4240      	negs	r0, r0
 80024ae:	e7c9      	b.n	8002444 <__register_exitproc+0x4c>
 80024b0:	20000808 	.word	0x20000808
 80024b4:	08004b24 	.word	0x08004b24

080024b8 <_init>:
 80024b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80024ba:	46c0      	nop			; (mov r8, r8)
 80024bc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80024be:	bc08      	pop	{r3}
 80024c0:	469e      	mov	lr, r3
 80024c2:	4770      	bx	lr

080024c4 <_fini>:
 80024c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80024c6:	46c0      	nop			; (mov r8, r8)
 80024c8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80024ca:	bc08      	pop	{r3}
 80024cc:	469e      	mov	lr, r3
 80024ce:	4770      	bx	lr
