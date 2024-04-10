
TrainDirInd.out:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	ffff0797          	auipc	a5,0xffff0
   10078:	f8c78793          	addi	a5,a5,-116 # 0 <register_fini-0x10074>
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00000517          	auipc	a0,0x0
   10084:	2f050513          	addi	a0,a0,752 # 10370 <__libc_fini_array>
   10088:	2a00006f          	j	10328 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00002197          	auipc	gp,0x2
   10094:	ec818193          	addi	gp,gp,-312 # 11f58 <__global_pointer$>
   10098:	c3818513          	addi	a0,gp,-968 # 11b90 <_edata>
   1009c:	c5818613          	addi	a2,gp,-936 # 11bb0 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	3bc000ef          	jal	ra,10464 <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	2c450513          	addi	a0,a0,708 # 10370 <__libc_fini_array>
   100b4:	274000ef          	jal	ra,10328 <atexit>
   100b8:	318000ef          	jal	ra,103d0 <__libc_init_array>
   100bc:	00012503          	lw	a0,0(sp)
   100c0:	00410593          	addi	a1,sp,4
   100c4:	00000613          	li	a2,0
   100c8:	07c000ef          	jal	ra,10144 <main>
   100cc:	2700006f          	j	1033c <exit>

000100d0 <__do_global_dtors_aux>:
   100d0:	c3c1c783          	lbu	a5,-964(gp) # 11b94 <completed.5434>
   100d4:	04079463          	bnez	a5,1011c <__do_global_dtors_aux+0x4c>
   100d8:	ffff0797          	auipc	a5,0xffff0
   100dc:	f2878793          	addi	a5,a5,-216 # 0 <register_fini-0x10074>
   100e0:	02078863          	beqz	a5,10110 <__do_global_dtors_aux+0x40>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00001517          	auipc	a0,0x1
   100ec:	66050513          	addi	a0,a0,1632 # 11748 <__FRAME_END__>
   100f0:	00112623          	sw	ra,12(sp)
   100f4:	00000097          	auipc	ra,0x0
   100f8:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00100793          	li	a5,1
   10104:	c2f18e23          	sb	a5,-964(gp) # 11b94 <completed.5434>
   10108:	01010113          	addi	sp,sp,16
   1010c:	00008067          	ret
   10110:	00100793          	li	a5,1
   10114:	c2f18e23          	sb	a5,-964(gp) # 11b94 <completed.5434>
   10118:	00008067          	ret
   1011c:	00008067          	ret

00010120 <frame_dummy>:
   10120:	ffff0797          	auipc	a5,0xffff0
   10124:	ee078793          	addi	a5,a5,-288 # 0 <register_fini-0x10074>
   10128:	00078c63          	beqz	a5,10140 <frame_dummy+0x20>
   1012c:	c4018593          	addi	a1,gp,-960 # 11b98 <object.5439>
   10130:	00001517          	auipc	a0,0x1
   10134:	61850513          	addi	a0,a0,1560 # 11748 <__FRAME_END__>
   10138:	00000317          	auipc	t1,0x0
   1013c:	00000067          	jr	zero # 0 <register_fini-0x10074>
   10140:	00008067          	ret

00010144 <main>:
   10144:	fe010113          	addi	sp,sp,-32
   10148:	00112e23          	sw	ra,28(sp)
   1014c:	00812c23          	sw	s0,24(sp)
   10150:	00912a23          	sw	s1,20(sp)
   10154:	01212823          	sw	s2,16(sp)
   10158:	01312623          	sw	s3,12(sp)
   1015c:	00000493          	li	s1,0
   10160:	00000413          	li	s0,0
   10164:	0000c937          	lui	s2,0xc
   10168:	35090913          	addi	s2,s2,848 # c350 <register_fini-0x3d24>
   1016c:	000029b7          	lui	s3,0x2
   10170:	71098993          	addi	s3,s3,1808 # 2710 <register_fini-0xd964>
   10174:	0140006f          	j	10188 <main+0x44>
   10178:	413407b3          	sub	a5,s0,s3
   1017c:	00f037b3          	snez	a5,a5
   10180:	40f007b3          	neg	a5,a5
   10184:	00f4f4b3          	and	s1,s1,a5
   10188:	00140413          	addi	s0,s0,1
   1018c:	00000593          	li	a1,0
   10190:	00000513          	li	a0,0
   10194:	01c000ef          	jal	ra,101b0 <scan_dkp>
   10198:	ff2410e3          	bne	s0,s2,10178 <main+0x34>
   1019c:	fe0496e3          	bnez	s1,10188 <main+0x44>
   101a0:	058000ef          	jal	ra,101f8 <train_flow>
   101a4:	00100493          	li	s1,1
   101a8:	00000413          	li	s0,0
   101ac:	fddff06f          	j	10188 <main+0x44>

000101b0 <scan_dkp>:
   101b0:	008f5513          	srli	a0,t5,0x8
   101b4:	00157713          	andi	a4,a0,1
   101b8:	01071713          	slli	a4,a4,0x10
   101bc:	41075713          	srai	a4,a4,0x10
   101c0:	008f5513          	srli	a0,t5,0x8
   101c4:	00357793          	andi	a5,a0,3
   101c8:	01079793          	slli	a5,a5,0x10
   101cc:	4107d793          	srai	a5,a5,0x10
   101d0:	00100693          	li	a3,1
   101d4:	00d70a63          	beq	a4,a3,101e8 <scan_dkp+0x38>
   101d8:	00200713          	li	a4,2
   101dc:	00e78a63          	beq	a5,a4,101f0 <scan_dkp+0x40>
   101e0:	c381c503          	lbu	a0,-968(gp) # 11b90 <_edata>
   101e4:	00008067          	ret
   101e8:	c2d18c23          	sb	a3,-968(gp) # 11b90 <_edata>
   101ec:	fedff06f          	j	101d8 <scan_dkp+0x28>
   101f0:	c2e18c23          	sb	a4,-968(gp) # 11b90 <_edata>
   101f4:	fedff06f          	j	101e0 <scan_dkp+0x30>

000101f8 <train_flow>:
   101f8:	c301d783          	lhu	a5,-976(gp) # 11b88 <flag.1521>
   101fc:	00100713          	li	a4,1
   10200:	04e78663          	beq	a5,a4,1024c <train_flow+0x54>
   10204:	00200713          	li	a4,2
   10208:	08e78863          	beq	a5,a4,10298 <train_flow+0xa0>
   1020c:	00300713          	li	a4,3
   10210:	0ce78463          	beq	a5,a4,102d8 <train_flow+0xe0>
   10214:	00400713          	li	a4,4
   10218:	06e79263          	bne	a5,a4,1027c <train_flow+0x84>
   1021c:	c391c783          	lbu	a5,-967(gp) # 11b91 <LedPattern.1520>
   10220:	0017d793          	srli	a5,a5,0x1
   10224:	c2f18ca3          	sb	a5,-967(gp) # 11b91 <LedPattern.1520>
   10228:	f0000713          	li	a4,-256
   1022c:	00ef7f33          	and	t5,t5,a4
   10230:	00ff6f33          	or	t5,t5,a5
   10234:	00100713          	li	a4,1
   10238:	0ee50263          	beq	a0,a4,1031c <train_flow+0x124>
   1023c:	04079063          	bnez	a5,1027c <train_flow+0x84>
   10240:	00300713          	li	a4,3
   10244:	c2e19823          	sh	a4,-976(gp) # 11b88 <flag.1521>
   10248:	0340006f          	j	1027c <train_flow+0x84>
   1024c:	c391c783          	lbu	a5,-967(gp) # 11b91 <LedPattern.1520>
   10250:	00179793          	slli	a5,a5,0x1
   10254:	0017e793          	ori	a5,a5,1
   10258:	0ff7f793          	andi	a5,a5,255
   1025c:	c2f18ca3          	sb	a5,-967(gp) # 11b91 <LedPattern.1520>
   10260:	f0000713          	li	a4,-256
   10264:	00ef7f33          	and	t5,t5,a4
   10268:	00ff6f33          	or	t5,t5,a5
   1026c:	00200713          	li	a4,2
   10270:	00e50863          	beq	a0,a4,10280 <train_flow+0x88>
   10274:	0ff00713          	li	a4,255
   10278:	00e78a63          	beq	a5,a4,1028c <train_flow+0x94>
   1027c:	00008067          	ret
   10280:	00400693          	li	a3,4
   10284:	c2d19823          	sh	a3,-976(gp) # 11b88 <flag.1521>
   10288:	fedff06f          	j	10274 <train_flow+0x7c>
   1028c:	00200713          	li	a4,2
   10290:	c2e19823          	sh	a4,-976(gp) # 11b88 <flag.1521>
   10294:	00008067          	ret
   10298:	c391c783          	lbu	a5,-967(gp) # 11b91 <LedPattern.1520>
   1029c:	00179793          	slli	a5,a5,0x1
   102a0:	0ff7f793          	andi	a5,a5,255
   102a4:	c2f18ca3          	sb	a5,-967(gp) # 11b91 <LedPattern.1520>
   102a8:	f0000713          	li	a4,-256
   102ac:	00ef7f33          	and	t5,t5,a4
   102b0:	00ff6f33          	or	t5,t5,a5
   102b4:	00200713          	li	a4,2
   102b8:	00e50a63          	beq	a0,a4,102cc <train_flow+0xd4>
   102bc:	fc0790e3          	bnez	a5,1027c <train_flow+0x84>
   102c0:	00100713          	li	a4,1
   102c4:	c2e19823          	sh	a4,-976(gp) # 11b88 <flag.1521>
   102c8:	00008067          	ret
   102cc:	00300693          	li	a3,3
   102d0:	c2d19823          	sh	a3,-976(gp) # 11b88 <flag.1521>
   102d4:	fe9ff06f          	j	102bc <train_flow+0xc4>
   102d8:	c391c783          	lbu	a5,-967(gp) # 11b91 <LedPattern.1520>
   102dc:	0017d793          	srli	a5,a5,0x1
   102e0:	0807e793          	ori	a5,a5,128
   102e4:	c2f18ca3          	sb	a5,-967(gp) # 11b91 <LedPattern.1520>
   102e8:	f0000713          	li	a4,-256
   102ec:	00ef7f33          	and	t5,t5,a4
   102f0:	00ff6f33          	or	t5,t5,a5
   102f4:	00100713          	li	a4,1
   102f8:	00e50c63          	beq	a0,a4,10310 <train_flow+0x118>
   102fc:	0ff00713          	li	a4,255
   10300:	f6e79ee3          	bne	a5,a4,1027c <train_flow+0x84>
   10304:	00400713          	li	a4,4
   10308:	c2e19823          	sh	a4,-976(gp) # 11b88 <flag.1521>
   1030c:	00008067          	ret
   10310:	00200693          	li	a3,2
   10314:	c2d19823          	sh	a3,-976(gp) # 11b88 <flag.1521>
   10318:	fe5ff06f          	j	102fc <train_flow+0x104>
   1031c:	00100693          	li	a3,1
   10320:	c2d19823          	sh	a3,-976(gp) # 11b88 <flag.1521>
   10324:	f19ff06f          	j	1023c <train_flow+0x44>

00010328 <atexit>:
   10328:	00050593          	mv	a1,a0
   1032c:	00000693          	li	a3,0
   10330:	00000613          	li	a2,0
   10334:	00000513          	li	a0,0
   10338:	2080006f          	j	10540 <__register_exitproc>

0001033c <exit>:
   1033c:	ff010113          	addi	sp,sp,-16
   10340:	00000593          	li	a1,0
   10344:	00812423          	sw	s0,8(sp)
   10348:	00112623          	sw	ra,12(sp)
   1034c:	00050413          	mv	s0,a0
   10350:	28c000ef          	jal	ra,105dc <__call_exitprocs>
   10354:	c2818793          	addi	a5,gp,-984 # 11b80 <_global_impure_ptr>
   10358:	0007a503          	lw	a0,0(a5)
   1035c:	03c52783          	lw	a5,60(a0)
   10360:	00078463          	beqz	a5,10368 <exit+0x2c>
   10364:	000780e7          	jalr	a5
   10368:	00040513          	mv	a0,s0
   1036c:	38c000ef          	jal	ra,106f8 <_exit>

00010370 <__libc_fini_array>:
   10370:	ff010113          	addi	sp,sp,-16
   10374:	00812423          	sw	s0,8(sp)
   10378:	00001797          	auipc	a5,0x1
   1037c:	3dc78793          	addi	a5,a5,988 # 11754 <__init_array_end>
   10380:	00001417          	auipc	s0,0x1
   10384:	3d840413          	addi	s0,s0,984 # 11758 <__fini_array_end>
   10388:	40f40433          	sub	s0,s0,a5
   1038c:	00112623          	sw	ra,12(sp)
   10390:	00912223          	sw	s1,4(sp)
   10394:	40245413          	srai	s0,s0,0x2
   10398:	02040263          	beqz	s0,103bc <__libc_fini_array+0x4c>
   1039c:	00241493          	slli	s1,s0,0x2
   103a0:	ffc48493          	addi	s1,s1,-4
   103a4:	00f484b3          	add	s1,s1,a5
   103a8:	0004a783          	lw	a5,0(s1)
   103ac:	fff40413          	addi	s0,s0,-1
   103b0:	ffc48493          	addi	s1,s1,-4
   103b4:	000780e7          	jalr	a5
   103b8:	fe0418e3          	bnez	s0,103a8 <__libc_fini_array+0x38>
   103bc:	00c12083          	lw	ra,12(sp)
   103c0:	00812403          	lw	s0,8(sp)
   103c4:	00412483          	lw	s1,4(sp)
   103c8:	01010113          	addi	sp,sp,16
   103cc:	00008067          	ret

000103d0 <__libc_init_array>:
   103d0:	ff010113          	addi	sp,sp,-16
   103d4:	00812423          	sw	s0,8(sp)
   103d8:	01212023          	sw	s2,0(sp)
   103dc:	00001417          	auipc	s0,0x1
   103e0:	37040413          	addi	s0,s0,880 # 1174c <__init_array_start>
   103e4:	00001917          	auipc	s2,0x1
   103e8:	36890913          	addi	s2,s2,872 # 1174c <__init_array_start>
   103ec:	40890933          	sub	s2,s2,s0
   103f0:	00112623          	sw	ra,12(sp)
   103f4:	00912223          	sw	s1,4(sp)
   103f8:	40295913          	srai	s2,s2,0x2
   103fc:	00090e63          	beqz	s2,10418 <__libc_init_array+0x48>
   10400:	00000493          	li	s1,0
   10404:	00042783          	lw	a5,0(s0)
   10408:	00148493          	addi	s1,s1,1
   1040c:	00440413          	addi	s0,s0,4
   10410:	000780e7          	jalr	a5
   10414:	fe9918e3          	bne	s2,s1,10404 <__libc_init_array+0x34>
   10418:	00001417          	auipc	s0,0x1
   1041c:	33440413          	addi	s0,s0,820 # 1174c <__init_array_start>
   10420:	00001917          	auipc	s2,0x1
   10424:	33490913          	addi	s2,s2,820 # 11754 <__init_array_end>
   10428:	40890933          	sub	s2,s2,s0
   1042c:	40295913          	srai	s2,s2,0x2
   10430:	00090e63          	beqz	s2,1044c <__libc_init_array+0x7c>
   10434:	00000493          	li	s1,0
   10438:	00042783          	lw	a5,0(s0)
   1043c:	00148493          	addi	s1,s1,1
   10440:	00440413          	addi	s0,s0,4
   10444:	000780e7          	jalr	a5
   10448:	fe9918e3          	bne	s2,s1,10438 <__libc_init_array+0x68>
   1044c:	00c12083          	lw	ra,12(sp)
   10450:	00812403          	lw	s0,8(sp)
   10454:	00412483          	lw	s1,4(sp)
   10458:	00012903          	lw	s2,0(sp)
   1045c:	01010113          	addi	sp,sp,16
   10460:	00008067          	ret

00010464 <memset>:
   10464:	00f00313          	li	t1,15
   10468:	00050713          	mv	a4,a0
   1046c:	02c37e63          	bgeu	t1,a2,104a8 <memset+0x44>
   10470:	00f77793          	andi	a5,a4,15
   10474:	0a079063          	bnez	a5,10514 <memset+0xb0>
   10478:	08059263          	bnez	a1,104fc <memset+0x98>
   1047c:	ff067693          	andi	a3,a2,-16
   10480:	00f67613          	andi	a2,a2,15
   10484:	00e686b3          	add	a3,a3,a4
   10488:	00b72023          	sw	a1,0(a4)
   1048c:	00b72223          	sw	a1,4(a4)
   10490:	00b72423          	sw	a1,8(a4)
   10494:	00b72623          	sw	a1,12(a4)
   10498:	01070713          	addi	a4,a4,16
   1049c:	fed766e3          	bltu	a4,a3,10488 <memset+0x24>
   104a0:	00061463          	bnez	a2,104a8 <memset+0x44>
   104a4:	00008067          	ret
   104a8:	40c306b3          	sub	a3,t1,a2
   104ac:	00269693          	slli	a3,a3,0x2
   104b0:	00000297          	auipc	t0,0x0
   104b4:	005686b3          	add	a3,a3,t0
   104b8:	00c68067          	jr	12(a3)
   104bc:	00b70723          	sb	a1,14(a4)
   104c0:	00b706a3          	sb	a1,13(a4)
   104c4:	00b70623          	sb	a1,12(a4)
   104c8:	00b705a3          	sb	a1,11(a4)
   104cc:	00b70523          	sb	a1,10(a4)
   104d0:	00b704a3          	sb	a1,9(a4)
   104d4:	00b70423          	sb	a1,8(a4)
   104d8:	00b703a3          	sb	a1,7(a4)
   104dc:	00b70323          	sb	a1,6(a4)
   104e0:	00b702a3          	sb	a1,5(a4)
   104e4:	00b70223          	sb	a1,4(a4)
   104e8:	00b701a3          	sb	a1,3(a4)
   104ec:	00b70123          	sb	a1,2(a4)
   104f0:	00b700a3          	sb	a1,1(a4)
   104f4:	00b70023          	sb	a1,0(a4)
   104f8:	00008067          	ret
   104fc:	0ff5f593          	andi	a1,a1,255
   10500:	00859693          	slli	a3,a1,0x8
   10504:	00d5e5b3          	or	a1,a1,a3
   10508:	01059693          	slli	a3,a1,0x10
   1050c:	00d5e5b3          	or	a1,a1,a3
   10510:	f6dff06f          	j	1047c <memset+0x18>
   10514:	00279693          	slli	a3,a5,0x2
   10518:	00000297          	auipc	t0,0x0
   1051c:	005686b3          	add	a3,a3,t0
   10520:	00008293          	mv	t0,ra
   10524:	fa0680e7          	jalr	-96(a3)
   10528:	00028093          	mv	ra,t0
   1052c:	ff078793          	addi	a5,a5,-16
   10530:	40f70733          	sub	a4,a4,a5
   10534:	00f60633          	add	a2,a2,a5
   10538:	f6c378e3          	bgeu	t1,a2,104a8 <memset+0x44>
   1053c:	f3dff06f          	j	10478 <memset+0x14>

00010540 <__register_exitproc>:
   10540:	c2818793          	addi	a5,gp,-984 # 11b80 <_global_impure_ptr>
   10544:	0007a703          	lw	a4,0(a5)
   10548:	14872783          	lw	a5,328(a4)
   1054c:	04078c63          	beqz	a5,105a4 <__register_exitproc+0x64>
   10550:	0047a703          	lw	a4,4(a5)
   10554:	01f00813          	li	a6,31
   10558:	06e84e63          	blt	a6,a4,105d4 <__register_exitproc+0x94>
   1055c:	00271813          	slli	a6,a4,0x2
   10560:	02050663          	beqz	a0,1058c <__register_exitproc+0x4c>
   10564:	01078333          	add	t1,a5,a6
   10568:	08c32423          	sw	a2,136(t1) # 101c0 <scan_dkp+0x10>
   1056c:	1887a883          	lw	a7,392(a5)
   10570:	00100613          	li	a2,1
   10574:	00e61633          	sll	a2,a2,a4
   10578:	00c8e8b3          	or	a7,a7,a2
   1057c:	1917a423          	sw	a7,392(a5)
   10580:	10d32423          	sw	a3,264(t1)
   10584:	00200693          	li	a3,2
   10588:	02d50463          	beq	a0,a3,105b0 <__register_exitproc+0x70>
   1058c:	00170713          	addi	a4,a4,1
   10590:	00e7a223          	sw	a4,4(a5)
   10594:	010787b3          	add	a5,a5,a6
   10598:	00b7a423          	sw	a1,8(a5)
   1059c:	00000513          	li	a0,0
   105a0:	00008067          	ret
   105a4:	14c70793          	addi	a5,a4,332
   105a8:	14f72423          	sw	a5,328(a4)
   105ac:	fa5ff06f          	j	10550 <__register_exitproc+0x10>
   105b0:	18c7a683          	lw	a3,396(a5)
   105b4:	00170713          	addi	a4,a4,1
   105b8:	00e7a223          	sw	a4,4(a5)
   105bc:	00c6e633          	or	a2,a3,a2
   105c0:	18c7a623          	sw	a2,396(a5)
   105c4:	010787b3          	add	a5,a5,a6
   105c8:	00b7a423          	sw	a1,8(a5)
   105cc:	00000513          	li	a0,0
   105d0:	00008067          	ret
   105d4:	fff00513          	li	a0,-1
   105d8:	00008067          	ret

000105dc <__call_exitprocs>:
   105dc:	fd010113          	addi	sp,sp,-48
   105e0:	c2818793          	addi	a5,gp,-984 # 11b80 <_global_impure_ptr>
   105e4:	01812423          	sw	s8,8(sp)
   105e8:	0007ac03          	lw	s8,0(a5)
   105ec:	01312e23          	sw	s3,28(sp)
   105f0:	01412c23          	sw	s4,24(sp)
   105f4:	01512a23          	sw	s5,20(sp)
   105f8:	01612823          	sw	s6,16(sp)
   105fc:	02112623          	sw	ra,44(sp)
   10600:	02812423          	sw	s0,40(sp)
   10604:	02912223          	sw	s1,36(sp)
   10608:	03212023          	sw	s2,32(sp)
   1060c:	01712623          	sw	s7,12(sp)
   10610:	00050a93          	mv	s5,a0
   10614:	00058b13          	mv	s6,a1
   10618:	00100a13          	li	s4,1
   1061c:	fff00993          	li	s3,-1
   10620:	148c2903          	lw	s2,328(s8)
   10624:	02090863          	beqz	s2,10654 <__call_exitprocs+0x78>
   10628:	00492483          	lw	s1,4(s2)
   1062c:	fff48413          	addi	s0,s1,-1
   10630:	02044263          	bltz	s0,10654 <__call_exitprocs+0x78>
   10634:	00249493          	slli	s1,s1,0x2
   10638:	009904b3          	add	s1,s2,s1
   1063c:	040b0463          	beqz	s6,10684 <__call_exitprocs+0xa8>
   10640:	1044a783          	lw	a5,260(s1)
   10644:	05678063          	beq	a5,s6,10684 <__call_exitprocs+0xa8>
   10648:	fff40413          	addi	s0,s0,-1
   1064c:	ffc48493          	addi	s1,s1,-4
   10650:	ff3416e3          	bne	s0,s3,1063c <__call_exitprocs+0x60>
   10654:	02c12083          	lw	ra,44(sp)
   10658:	02812403          	lw	s0,40(sp)
   1065c:	02412483          	lw	s1,36(sp)
   10660:	02012903          	lw	s2,32(sp)
   10664:	01c12983          	lw	s3,28(sp)
   10668:	01812a03          	lw	s4,24(sp)
   1066c:	01412a83          	lw	s5,20(sp)
   10670:	01012b03          	lw	s6,16(sp)
   10674:	00c12b83          	lw	s7,12(sp)
   10678:	00812c03          	lw	s8,8(sp)
   1067c:	03010113          	addi	sp,sp,48
   10680:	00008067          	ret
   10684:	00492783          	lw	a5,4(s2)
   10688:	0044a683          	lw	a3,4(s1)
   1068c:	fff78793          	addi	a5,a5,-1
   10690:	04878a63          	beq	a5,s0,106e4 <__call_exitprocs+0x108>
   10694:	0004a223          	sw	zero,4(s1)
   10698:	fa0688e3          	beqz	a3,10648 <__call_exitprocs+0x6c>
   1069c:	18892783          	lw	a5,392(s2)
   106a0:	008a1733          	sll	a4,s4,s0
   106a4:	00492b83          	lw	s7,4(s2)
   106a8:	00f777b3          	and	a5,a4,a5
   106ac:	00079e63          	bnez	a5,106c8 <__call_exitprocs+0xec>
   106b0:	000680e7          	jalr	a3
   106b4:	00492783          	lw	a5,4(s2)
   106b8:	f77794e3          	bne	a5,s7,10620 <__call_exitprocs+0x44>
   106bc:	148c2783          	lw	a5,328(s8)
   106c0:	f92784e3          	beq	a5,s2,10648 <__call_exitprocs+0x6c>
   106c4:	f5dff06f          	j	10620 <__call_exitprocs+0x44>
   106c8:	18c92783          	lw	a5,396(s2)
   106cc:	0844a583          	lw	a1,132(s1)
   106d0:	00f77733          	and	a4,a4,a5
   106d4:	00071c63          	bnez	a4,106ec <__call_exitprocs+0x110>
   106d8:	000a8513          	mv	a0,s5
   106dc:	000680e7          	jalr	a3
   106e0:	fd5ff06f          	j	106b4 <__call_exitprocs+0xd8>
   106e4:	00892223          	sw	s0,4(s2)
   106e8:	fb1ff06f          	j	10698 <__call_exitprocs+0xbc>
   106ec:	00058513          	mv	a0,a1
   106f0:	000680e7          	jalr	a3
   106f4:	fc1ff06f          	j	106b4 <__call_exitprocs+0xd8>

000106f8 <_exit>:
   106f8:	00000593          	li	a1,0
   106fc:	00000613          	li	a2,0
   10700:	00000693          	li	a3,0
   10704:	00000713          	li	a4,0
   10708:	00000793          	li	a5,0
   1070c:	05d00893          	li	a7,93
   10710:	00000073          	ecall
   10714:	00054463          	bltz	a0,1071c <_exit+0x24>
   10718:	0000006f          	j	10718 <_exit+0x20>
   1071c:	ff010113          	addi	sp,sp,-16
   10720:	00812423          	sw	s0,8(sp)
   10724:	00050413          	mv	s0,a0
   10728:	00112623          	sw	ra,12(sp)
   1072c:	40800433          	neg	s0,s0
   10730:	00c000ef          	jal	ra,1073c <__errno>
   10734:	00852023          	sw	s0,0(a0)
   10738:	0000006f          	j	10738 <_exit+0x40>

0001073c <__errno>:
   1073c:	c3418793          	addi	a5,gp,-972 # 11b8c <_impure_ptr>
   10740:	0007a503          	lw	a0,0(a5)
   10744:	00008067          	ret
