
5_sumOf1ToN_RvO1_gcc.o:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	ffff0797          	auipc	a5,0xffff0
   100b4:	f5078793          	addi	a5,a5,-176 # 0 <register_fini-0x100b0>
   100b8:	00078863          	beqz	a5,100c8 <register_fini+0x18>
   100bc:	00000517          	auipc	a0,0x0
   100c0:	2a850513          	addi	a0,a0,680 # 10364 <__libc_fini_array>
   100c4:	2580006f          	j	1031c <atexit>
   100c8:	00008067          	ret

00000000000100cc <_start>:
   100cc:	00013197          	auipc	gp,0x13
   100d0:	93c18193          	addi	gp,gp,-1732 # 22a08 <__global_pointer$>
   100d4:	77018513          	addi	a0,gp,1904 # 23178 <_edata>
   100d8:	00013617          	auipc	a2,0x13
   100dc:	13060613          	addi	a2,a2,304 # 23208 <__BSS_END__>
   100e0:	40a60633          	sub	a2,a2,a0
   100e4:	00000593          	li	a1,0
   100e8:	36c000ef          	jal	ra,10454 <memset>
   100ec:	00000517          	auipc	a0,0x0
   100f0:	27850513          	addi	a0,a0,632 # 10364 <__libc_fini_array>
   100f4:	228000ef          	jal	ra,1031c <atexit>
   100f8:	2c8000ef          	jal	ra,103c0 <__libc_init_array>
   100fc:	00012503          	lw	a0,0(sp)
   10100:	00810593          	addi	a1,sp,8
   10104:	00000613          	li	a2,0
   10108:	07c000ef          	jal	ra,10184 <main>
   1010c:	2240006f          	j	10330 <exit>

0000000000010110 <__do_global_dtors_aux>:
   10110:	7981c783          	lbu	a5,1944(gp) # 231a0 <completed.5468>
   10114:	04079463          	bnez	a5,1015c <__do_global_dtors_aux+0x4c>
   10118:	ffff0797          	auipc	a5,0xffff0
   1011c:	ee878793          	addi	a5,a5,-280 # 0 <register_fini-0x100b0>
   10120:	02078863          	beqz	a5,10150 <__do_global_dtors_aux+0x40>
   10124:	ff010113          	addi	sp,sp,-16
   10128:	00012517          	auipc	a0,0x12
   1012c:	ed850513          	addi	a0,a0,-296 # 22000 <__FRAME_END__>
   10130:	00113423          	sd	ra,8(sp)
   10134:	00000097          	auipc	ra,0x0
   10138:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   1013c:	00813083          	ld	ra,8(sp)
   10140:	00100793          	li	a5,1
   10144:	78f18c23          	sb	a5,1944(gp) # 231a0 <completed.5468>
   10148:	01010113          	addi	sp,sp,16
   1014c:	00008067          	ret
   10150:	00100793          	li	a5,1
   10154:	78f18c23          	sb	a5,1944(gp) # 231a0 <completed.5468>
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	ffff0797          	auipc	a5,0xffff0
   10164:	ea078793          	addi	a5,a5,-352 # 0 <register_fini-0x100b0>
   10168:	00078c63          	beqz	a5,10180 <frame_dummy+0x20>
   1016c:	7a018593          	addi	a1,gp,1952 # 231a8 <object.5473>
   10170:	00012517          	auipc	a0,0x12
   10174:	e9050513          	addi	a0,a0,-368 # 22000 <__FRAME_END__>
   10178:	00000317          	auipc	t1,0x0
   1017c:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   10180:	00008067          	ret

0000000000010184 <main>:
   10184:	fd010113          	addi	sp,sp,-48
   10188:	02113423          	sd	ra,40(sp)
   1018c:	02813023          	sd	s0,32(sp)
   10190:	00913c23          	sd	s1,24(sp)
   10194:	01213823          	sd	s2,16(sp)
   10198:	01313423          	sd	s3,8(sp)
   1019c:	00100413          	li	s0,1
   101a0:	00100493          	li	s1,1
   101a4:	06500913          	li	s2,101
   101a8:	000219b7          	lui	s3,0x21
   101ac:	0014079b          	addiw	a5,s0,1
   101b0:	0007841b          	sext.w	s0,a5
   101b4:	03240863          	beq	s0,s2,101e4 <main+0x60>
   101b8:	009784bb          	addw	s1,a5,s1
   101bc:	01400593          	li	a1,20
   101c0:	00040513          	mv	a0,s0
   101c4:	11c000ef          	jal	ra,102e0 <__moddi3>
   101c8:	0005051b          	sext.w	a0,a0
   101cc:	fe0510e3          	bnez	a0,101ac <main+0x28>
   101d0:	00048613          	mv	a2,s1
   101d4:	00040593          	mv	a1,s0
   101d8:	1e098513          	addi	a0,s3,480 # 211e0 <__clzdi2+0x3c>
   101dc:	398000ef          	jal	ra,10574 <printf>
   101e0:	fcdff06f          	j	101ac <main+0x28>
   101e4:	00001637          	lui	a2,0x1
   101e8:	3ba60613          	addi	a2,a2,954 # 13ba <register_fini-0xecf6>
   101ec:	06400593          	li	a1,100
   101f0:	00021537          	lui	a0,0x21
   101f4:	20850513          	addi	a0,a0,520 # 21208 <__clzdi2+0x64>
   101f8:	37c000ef          	jal	ra,10574 <printf>
   101fc:	00000513          	li	a0,0
   10200:	02813083          	ld	ra,40(sp)
   10204:	02013403          	ld	s0,32(sp)
   10208:	01813483          	ld	s1,24(sp)
   1020c:	01013903          	ld	s2,16(sp)
   10210:	00813983          	ld	s3,8(sp)
   10214:	03010113          	addi	sp,sp,48
   10218:	00008067          	ret

000000000001021c <__udivsi3>:
   1021c:	02051513          	slli	a0,a0,0x20
   10220:	02059593          	slli	a1,a1,0x20
   10224:	00008293          	mv	t0,ra
   10228:	03c000ef          	jal	ra,10264 <__udivdi3>
   1022c:	0005051b          	sext.w	a0,a0
   10230:	00028067          	jr	t0

0000000000010234 <__umodsi3>:
   10234:	02051513          	slli	a0,a0,0x20
   10238:	02059593          	slli	a1,a1,0x20
   1023c:	02055513          	srli	a0,a0,0x20
   10240:	0205d593          	srli	a1,a1,0x20
   10244:	00008293          	mv	t0,ra
   10248:	01c000ef          	jal	ra,10264 <__udivdi3>
   1024c:	0005851b          	sext.w	a0,a1
   10250:	00028067          	jr	t0

0000000000010254 <__divsi3>:
   10254:	fff00293          	li	t0,-1
   10258:	0a558c63          	beq	a1,t0,10310 <__moddi3+0x30>

000000000001025c <__divdi3>:
   1025c:	06054063          	bltz	a0,102bc <__umoddi3+0x10>
   10260:	0605c663          	bltz	a1,102cc <__umoddi3+0x20>

0000000000010264 <__udivdi3>:
   10264:	00058613          	mv	a2,a1
   10268:	00050593          	mv	a1,a0
   1026c:	fff00513          	li	a0,-1
   10270:	02060c63          	beqz	a2,102a8 <__udivdi3+0x44>
   10274:	00100693          	li	a3,1
   10278:	00b67a63          	bgeu	a2,a1,1028c <__udivdi3+0x28>
   1027c:	00c05863          	blez	a2,1028c <__udivdi3+0x28>
   10280:	00161613          	slli	a2,a2,0x1
   10284:	00169693          	slli	a3,a3,0x1
   10288:	feb66ae3          	bltu	a2,a1,1027c <__udivdi3+0x18>
   1028c:	00000513          	li	a0,0
   10290:	00c5e663          	bltu	a1,a2,1029c <__udivdi3+0x38>
   10294:	40c585b3          	sub	a1,a1,a2
   10298:	00d56533          	or	a0,a0,a3
   1029c:	0016d693          	srli	a3,a3,0x1
   102a0:	00165613          	srli	a2,a2,0x1
   102a4:	fe0696e3          	bnez	a3,10290 <__udivdi3+0x2c>
   102a8:	00008067          	ret

00000000000102ac <__umoddi3>:
   102ac:	00008293          	mv	t0,ra
   102b0:	fb5ff0ef          	jal	ra,10264 <__udivdi3>
   102b4:	00058513          	mv	a0,a1
   102b8:	00028067          	jr	t0
   102bc:	40a00533          	neg	a0,a0
   102c0:	0005d863          	bgez	a1,102d0 <__umoddi3+0x24>
   102c4:	40b005b3          	neg	a1,a1
   102c8:	f9dff06f          	j	10264 <__udivdi3>
   102cc:	40b005b3          	neg	a1,a1
   102d0:	00008293          	mv	t0,ra
   102d4:	f91ff0ef          	jal	ra,10264 <__udivdi3>
   102d8:	40a00533          	neg	a0,a0
   102dc:	00028067          	jr	t0

00000000000102e0 <__moddi3>:
   102e0:	00008293          	mv	t0,ra
   102e4:	0005ca63          	bltz	a1,102f8 <__moddi3+0x18>
   102e8:	00054c63          	bltz	a0,10300 <__moddi3+0x20>
   102ec:	f79ff0ef          	jal	ra,10264 <__udivdi3>
   102f0:	00058513          	mv	a0,a1
   102f4:	00028067          	jr	t0
   102f8:	40b005b3          	neg	a1,a1
   102fc:	fe0558e3          	bgez	a0,102ec <__moddi3+0xc>
   10300:	40a00533          	neg	a0,a0
   10304:	f61ff0ef          	jal	ra,10264 <__udivdi3>
   10308:	40b00533          	neg	a0,a1
   1030c:	00028067          	jr	t0
   10310:	01f29293          	slli	t0,t0,0x1f
   10314:	f45514e3          	bne	a0,t0,1025c <__divdi3>
   10318:	00008067          	ret

000000000001031c <atexit>:
   1031c:	00050593          	mv	a1,a0
   10320:	00000693          	li	a3,0
   10324:	00000613          	li	a2,0
   10328:	00000513          	li	a0,0
   1032c:	4390206f          	j	12f64 <__register_exitproc>

0000000000010330 <exit>:
   10330:	ff010113          	addi	sp,sp,-16
   10334:	00000593          	li	a1,0
   10338:	00813023          	sd	s0,0(sp)
   1033c:	00113423          	sd	ra,8(sp)
   10340:	00050413          	mv	s0,a0
   10344:	4cd020ef          	jal	ra,13010 <__call_exitprocs>
   10348:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   1034c:	0007b503          	ld	a0,0(a5)
   10350:	05853783          	ld	a5,88(a0)
   10354:	00078463          	beqz	a5,1035c <exit+0x2c>
   10358:	000780e7          	jalr	a5
   1035c:	00040513          	mv	a0,s0
   10360:	7410e0ef          	jal	ra,1f2a0 <_exit>

0000000000010364 <__libc_fini_array>:
   10364:	fe010113          	addi	sp,sp,-32
   10368:	00813823          	sd	s0,16(sp)
   1036c:	00012797          	auipc	a5,0x12
   10370:	cb478793          	addi	a5,a5,-844 # 22020 <__fini_array_end>
   10374:	00012417          	auipc	s0,0x12
   10378:	ca440413          	addi	s0,s0,-860 # 22018 <__init_array_end>
   1037c:	408787b3          	sub	a5,a5,s0
   10380:	00913423          	sd	s1,8(sp)
   10384:	00113c23          	sd	ra,24(sp)
   10388:	4037d493          	srai	s1,a5,0x3
   1038c:	02048063          	beqz	s1,103ac <__libc_fini_array+0x48>
   10390:	ff878793          	addi	a5,a5,-8
   10394:	00878433          	add	s0,a5,s0
   10398:	00043783          	ld	a5,0(s0)
   1039c:	fff48493          	addi	s1,s1,-1
   103a0:	ff840413          	addi	s0,s0,-8
   103a4:	000780e7          	jalr	a5
   103a8:	fe0498e3          	bnez	s1,10398 <__libc_fini_array+0x34>
   103ac:	01813083          	ld	ra,24(sp)
   103b0:	01013403          	ld	s0,16(sp)
   103b4:	00813483          	ld	s1,8(sp)
   103b8:	02010113          	addi	sp,sp,32
   103bc:	00008067          	ret

00000000000103c0 <__libc_init_array>:
   103c0:	fe010113          	addi	sp,sp,-32
   103c4:	00813823          	sd	s0,16(sp)
   103c8:	01213023          	sd	s2,0(sp)
   103cc:	00012417          	auipc	s0,0x12
   103d0:	c3840413          	addi	s0,s0,-968 # 22004 <__preinit_array_end>
   103d4:	00012917          	auipc	s2,0x12
   103d8:	c3090913          	addi	s2,s2,-976 # 22004 <__preinit_array_end>
   103dc:	40890933          	sub	s2,s2,s0
   103e0:	00113c23          	sd	ra,24(sp)
   103e4:	00913423          	sd	s1,8(sp)
   103e8:	40395913          	srai	s2,s2,0x3
   103ec:	00090e63          	beqz	s2,10408 <__libc_init_array+0x48>
   103f0:	00000493          	li	s1,0
   103f4:	00043783          	ld	a5,0(s0)
   103f8:	00148493          	addi	s1,s1,1
   103fc:	00840413          	addi	s0,s0,8
   10400:	000780e7          	jalr	a5
   10404:	fe9918e3          	bne	s2,s1,103f4 <__libc_init_array+0x34>
   10408:	00012417          	auipc	s0,0x12
   1040c:	c0040413          	addi	s0,s0,-1024 # 22008 <__init_array_start>
   10410:	00012917          	auipc	s2,0x12
   10414:	c0890913          	addi	s2,s2,-1016 # 22018 <__init_array_end>
   10418:	40890933          	sub	s2,s2,s0
   1041c:	40395913          	srai	s2,s2,0x3
   10420:	00090e63          	beqz	s2,1043c <__libc_init_array+0x7c>
   10424:	00000493          	li	s1,0
   10428:	00043783          	ld	a5,0(s0)
   1042c:	00148493          	addi	s1,s1,1
   10430:	00840413          	addi	s0,s0,8
   10434:	000780e7          	jalr	a5
   10438:	fe9918e3          	bne	s2,s1,10428 <__libc_init_array+0x68>
   1043c:	01813083          	ld	ra,24(sp)
   10440:	01013403          	ld	s0,16(sp)
   10444:	00813483          	ld	s1,8(sp)
   10448:	00013903          	ld	s2,0(sp)
   1044c:	02010113          	addi	sp,sp,32
   10450:	00008067          	ret

0000000000010454 <memset>:
   10454:	00f00313          	li	t1,15
   10458:	00050713          	mv	a4,a0
   1045c:	02c37a63          	bgeu	t1,a2,10490 <memset+0x3c>
   10460:	00f77793          	andi	a5,a4,15
   10464:	0a079063          	bnez	a5,10504 <memset+0xb0>
   10468:	06059e63          	bnez	a1,104e4 <memset+0x90>
   1046c:	ff067693          	andi	a3,a2,-16
   10470:	00f67613          	andi	a2,a2,15
   10474:	00e686b3          	add	a3,a3,a4
   10478:	00b73023          	sd	a1,0(a4)
   1047c:	00b73423          	sd	a1,8(a4)
   10480:	01070713          	addi	a4,a4,16
   10484:	fed76ae3          	bltu	a4,a3,10478 <memset+0x24>
   10488:	00061463          	bnez	a2,10490 <memset+0x3c>
   1048c:	00008067          	ret
   10490:	40c306b3          	sub	a3,t1,a2
   10494:	00269693          	slli	a3,a3,0x2
   10498:	00000297          	auipc	t0,0x0
   1049c:	005686b3          	add	a3,a3,t0
   104a0:	00c68067          	jr	12(a3)
   104a4:	00b70723          	sb	a1,14(a4)
   104a8:	00b706a3          	sb	a1,13(a4)
   104ac:	00b70623          	sb	a1,12(a4)
   104b0:	00b705a3          	sb	a1,11(a4)
   104b4:	00b70523          	sb	a1,10(a4)
   104b8:	00b704a3          	sb	a1,9(a4)
   104bc:	00b70423          	sb	a1,8(a4)
   104c0:	00b703a3          	sb	a1,7(a4)
   104c4:	00b70323          	sb	a1,6(a4)
   104c8:	00b702a3          	sb	a1,5(a4)
   104cc:	00b70223          	sb	a1,4(a4)
   104d0:	00b701a3          	sb	a1,3(a4)
   104d4:	00b70123          	sb	a1,2(a4)
   104d8:	00b700a3          	sb	a1,1(a4)
   104dc:	00b70023          	sb	a1,0(a4)
   104e0:	00008067          	ret
   104e4:	0ff5f593          	andi	a1,a1,255
   104e8:	00859693          	slli	a3,a1,0x8
   104ec:	00d5e5b3          	or	a1,a1,a3
   104f0:	01059693          	slli	a3,a1,0x10
   104f4:	00d5e5b3          	or	a1,a1,a3
   104f8:	02059693          	slli	a3,a1,0x20
   104fc:	00d5e5b3          	or	a1,a1,a3
   10500:	f6dff06f          	j	1046c <memset+0x18>
   10504:	00279693          	slli	a3,a5,0x2
   10508:	00000297          	auipc	t0,0x0
   1050c:	005686b3          	add	a3,a3,t0
   10510:	00008293          	mv	t0,ra
   10514:	f98680e7          	jalr	-104(a3)
   10518:	00028093          	mv	ra,t0
   1051c:	ff078793          	addi	a5,a5,-16
   10520:	40f70733          	sub	a4,a4,a5
   10524:	00f60633          	add	a2,a2,a5
   10528:	f6c374e3          	bgeu	t1,a2,10490 <memset+0x3c>
   1052c:	f3dff06f          	j	10468 <memset+0x14>

0000000000010530 <_printf_r>:
   10530:	fb010113          	addi	sp,sp,-80
   10534:	02c13023          	sd	a2,32(sp)
   10538:	02d13423          	sd	a3,40(sp)
   1053c:	02f13c23          	sd	a5,56(sp)
   10540:	02e13823          	sd	a4,48(sp)
   10544:	05013023          	sd	a6,64(sp)
   10548:	05113423          	sd	a7,72(sp)
   1054c:	00058613          	mv	a2,a1
   10550:	01053583          	ld	a1,16(a0)
   10554:	02010793          	addi	a5,sp,32
   10558:	00078693          	mv	a3,a5
   1055c:	00113c23          	sd	ra,24(sp)
   10560:	00f13423          	sd	a5,8(sp)
   10564:	064000ef          	jal	ra,105c8 <_vfprintf_r>
   10568:	01813083          	ld	ra,24(sp)
   1056c:	05010113          	addi	sp,sp,80
   10570:	00008067          	ret

0000000000010574 <printf>:
   10574:	75818313          	addi	t1,gp,1880 # 23160 <_impure_ptr>
   10578:	00033303          	ld	t1,0(t1) # 10178 <frame_dummy+0x18>
   1057c:	fa010113          	addi	sp,sp,-96
   10580:	02c13823          	sd	a2,48(sp)
   10584:	02d13c23          	sd	a3,56(sp)
   10588:	04f13423          	sd	a5,72(sp)
   1058c:	02b13423          	sd	a1,40(sp)
   10590:	04e13023          	sd	a4,64(sp)
   10594:	05013823          	sd	a6,80(sp)
   10598:	05113c23          	sd	a7,88(sp)
   1059c:	01033583          	ld	a1,16(t1)
   105a0:	02810793          	addi	a5,sp,40
   105a4:	00050613          	mv	a2,a0
   105a8:	00078693          	mv	a3,a5
   105ac:	00030513          	mv	a0,t1
   105b0:	00113c23          	sd	ra,24(sp)
   105b4:	00f13423          	sd	a5,8(sp)
   105b8:	010000ef          	jal	ra,105c8 <_vfprintf_r>
   105bc:	01813083          	ld	ra,24(sp)
   105c0:	06010113          	addi	sp,sp,96
   105c4:	00008067          	ret

00000000000105c8 <_vfprintf_r>:
   105c8:	d8010113          	addi	sp,sp,-640
   105cc:	26113c23          	sd	ra,632(sp)
   105d0:	26813823          	sd	s0,624(sp)
   105d4:	25613023          	sd	s6,576(sp)
   105d8:	00b13023          	sd	a1,0(sp)
   105dc:	00060b13          	mv	s6,a2
   105e0:	00d13823          	sd	a3,16(sp)
   105e4:	26913423          	sd	s1,616(sp)
   105e8:	27213023          	sd	s2,608(sp)
   105ec:	25313c23          	sd	s3,600(sp)
   105f0:	25413823          	sd	s4,592(sp)
   105f4:	25513423          	sd	s5,584(sp)
   105f8:	23713c23          	sd	s7,568(sp)
   105fc:	23813823          	sd	s8,560(sp)
   10600:	23913423          	sd	s9,552(sp)
   10604:	23a13023          	sd	s10,544(sp)
   10608:	21b13c23          	sd	s11,536(sp)
   1060c:	00050413          	mv	s0,a0
   10610:	02a13823          	sd	a0,48(sp)
   10614:	364060ef          	jal	ra,16978 <_localeconv_r>
   10618:	00053783          	ld	a5,0(a0)
   1061c:	00078513          	mv	a0,a5
   10620:	04f13c23          	sd	a5,88(sp)
   10624:	68c080ef          	jal	ra,18cb0 <strlen>
   10628:	04a13423          	sd	a0,72(sp)
   1062c:	10013023          	sd	zero,256(sp)
   10630:	10013423          	sd	zero,264(sp)
   10634:	00040663          	beqz	s0,10640 <_vfprintf_r+0x78>
   10638:	05042783          	lw	a5,80(s0)
   1063c:	54078ee3          	beqz	a5,11398 <_vfprintf_r+0xdd0>
   10640:	00013703          	ld	a4,0(sp)
   10644:	01071683          	lh	a3,16(a4)
   10648:	03069793          	slli	a5,a3,0x30
   1064c:	0307d793          	srli	a5,a5,0x30
   10650:	03279613          	slli	a2,a5,0x32
   10654:	02064663          	bltz	a2,10680 <_vfprintf_r+0xb8>
   10658:	0ac72603          	lw	a2,172(a4)
   1065c:	000027b7          	lui	a5,0x2
   10660:	00f6e7b3          	or	a5,a3,a5
   10664:	ffffe6b7          	lui	a3,0xffffe
   10668:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdadf7>
   1066c:	00d676b3          	and	a3,a2,a3
   10670:	00f71823          	sh	a5,16(a4)
   10674:	03079793          	slli	a5,a5,0x30
   10678:	0ad72623          	sw	a3,172(a4)
   1067c:	0307d793          	srli	a5,a5,0x30
   10680:	0087f693          	andi	a3,a5,8
   10684:	14068463          	beqz	a3,107cc <_vfprintf_r+0x204>
   10688:	00013703          	ld	a4,0(sp)
   1068c:	01873683          	ld	a3,24(a4)
   10690:	12068e63          	beqz	a3,107cc <_vfprintf_r+0x204>
   10694:	01a7f793          	andi	a5,a5,26
   10698:	00a00693          	li	a3,10
   1069c:	14d78c63          	beq	a5,a3,107f4 <_vfprintf_r+0x22c>
   106a0:	19010793          	addi	a5,sp,400
   106a4:	000b0d93          	mv	s11,s6
   106a8:	10f13823          	sd	a5,272(sp)
   106ac:	00078313          	mv	t1,a5
   106b0:	000dc783          	lbu	a5,0(s11)
   106b4:	12013023          	sd	zero,288(sp)
   106b8:	10012c23          	sw	zero,280(sp)
   106bc:	02013423          	sd	zero,40(sp)
   106c0:	04013823          	sd	zero,80(sp)
   106c4:	06013423          	sd	zero,104(sp)
   106c8:	06013c23          	sd	zero,120(sp)
   106cc:	08013423          	sd	zero,136(sp)
   106d0:	06013823          	sd	zero,112(sp)
   106d4:	00013423          	sd	zero,8(sp)
   106d8:	01000d13          	li	s10,16
   106dc:	00011c17          	auipc	s8,0x11
   106e0:	cc4c0c13          	addi	s8,s8,-828 # 213a0 <zeroes.4539>
   106e4:	03013a83          	ld	s5,48(sp)
   106e8:	1e078ce3          	beqz	a5,110e0 <_vfprintf_r+0xb18>
   106ec:	02500693          	li	a3,37
   106f0:	00d79463          	bne	a5,a3,106f8 <_vfprintf_r+0x130>
   106f4:	6e80106f          	j	11ddc <_vfprintf_r+0x1814>
   106f8:	000d8413          	mv	s0,s11
   106fc:	00c0006f          	j	10708 <_vfprintf_r+0x140>
   10700:	10d78e63          	beq	a5,a3,1081c <_vfprintf_r+0x254>
   10704:	00048413          	mv	s0,s1
   10708:	00144783          	lbu	a5,1(s0)
   1070c:	00140493          	addi	s1,s0,1
   10710:	fe0798e3          	bnez	a5,10700 <_vfprintf_r+0x138>
   10714:	41b4893b          	subw	s2,s1,s11
   10718:	1c0904e3          	beqz	s2,110e0 <_vfprintf_r+0xb18>
   1071c:	12013683          	ld	a3,288(sp)
   10720:	11812783          	lw	a5,280(sp)
   10724:	01b33023          	sd	s11,0(t1)
   10728:	012686b3          	add	a3,a3,s2
   1072c:	0017879b          	addiw	a5,a5,1
   10730:	01233423          	sd	s2,8(t1)
   10734:	12d13023          	sd	a3,288(sp)
   10738:	10f12c23          	sw	a5,280(sp)
   1073c:	0007869b          	sext.w	a3,a5
   10740:	00700793          	li	a5,7
   10744:	01030313          	addi	t1,t1,16
   10748:	0ed7c063          	blt	a5,a3,10828 <_vfprintf_r+0x260>
   1074c:	00813703          	ld	a4,8(sp)
   10750:	00144783          	lbu	a5,1(s0)
   10754:	00e9073b          	addw	a4,s2,a4
   10758:	00e13423          	sd	a4,8(sp)
   1075c:	180782e3          	beqz	a5,110e0 <_vfprintf_r+0xb18>
   10760:	00148913          	addi	s2,s1,1
   10764:	0014c403          	lbu	s0,1(s1)
   10768:	0c010fa3          	sb	zero,223(sp)
   1076c:	fff00b93          	li	s7,-1
   10770:	00000993          	li	s3,0
   10774:	00000493          	li	s1,0
   10778:	00900a13          	li	s4,9
   1077c:	02a00b13          	li	s6,42
   10780:	00030c93          	mv	s9,t1
   10784:	00190913          	addi	s2,s2,1
   10788:	0004041b          	sext.w	s0,s0
   1078c:	05a00693          	li	a3,90
   10790:	fe04079b          	addiw	a5,s0,-32
   10794:	0007871b          	sext.w	a4,a5
   10798:	20e6ea63          	bltu	a3,a4,109ac <_vfprintf_r+0x3e4>
   1079c:	02079793          	slli	a5,a5,0x20
   107a0:	00011717          	auipc	a4,0x11
   107a4:	a8070713          	addi	a4,a4,-1408 # 21220 <__clzdi2+0x7c>
   107a8:	01e7d793          	srli	a5,a5,0x1e
   107ac:	00e787b3          	add	a5,a5,a4
   107b0:	0007a783          	lw	a5,0(a5) # 2000 <register_fini-0xe0b0>
   107b4:	00e787b3          	add	a5,a5,a4
   107b8:	00078067          	jr	a5
   107bc:	0104e493          	ori	s1,s1,16
   107c0:	0004849b          	sext.w	s1,s1
   107c4:	00094403          	lbu	s0,0(s2)
   107c8:	fbdff06f          	j	10784 <_vfprintf_r+0x1bc>
   107cc:	00013583          	ld	a1,0(sp)
   107d0:	03013503          	ld	a0,48(sp)
   107d4:	628020ef          	jal	ra,12dfc <__swsetup_r>
   107d8:	00050463          	beqz	a0,107e0 <_vfprintf_r+0x218>
   107dc:	1b40206f          	j	12990 <_vfprintf_r+0x23c8>
   107e0:	00013783          	ld	a5,0(sp)
   107e4:	00a00693          	li	a3,10
   107e8:	0107d783          	lhu	a5,16(a5)
   107ec:	01a7f793          	andi	a5,a5,26
   107f0:	ead798e3          	bne	a5,a3,106a0 <_vfprintf_r+0xd8>
   107f4:	00013783          	ld	a5,0(sp)
   107f8:	01279783          	lh	a5,18(a5)
   107fc:	ea07c2e3          	bltz	a5,106a0 <_vfprintf_r+0xd8>
   10800:	01013683          	ld	a3,16(sp)
   10804:	00013583          	ld	a1,0(sp)
   10808:	03013503          	ld	a0,48(sp)
   1080c:	000b0613          	mv	a2,s6
   10810:	52c020ef          	jal	ra,12d3c <__sbprintf>
   10814:	00a13423          	sd	a0,8(sp)
   10818:	0680006f          	j	10880 <_vfprintf_r+0x2b8>
   1081c:	41b4893b          	subw	s2,s1,s11
   10820:	f40900e3          	beqz	s2,10760 <_vfprintf_r+0x198>
   10824:	ef9ff06f          	j	1071c <_vfprintf_r+0x154>
   10828:	00013583          	ld	a1,0(sp)
   1082c:	11010613          	addi	a2,sp,272
   10830:	000a8513          	mv	a0,s5
   10834:	62d0a0ef          	jal	ra,1b660 <__sprint_r>
   10838:	02051a63          	bnez	a0,1086c <_vfprintf_r+0x2a4>
   1083c:	19010313          	addi	t1,sp,400
   10840:	f0dff06f          	j	1074c <_vfprintf_r+0x184>
   10844:	00013583          	ld	a1,0(sp)
   10848:	11010613          	addi	a2,sp,272
   1084c:	000a8513          	mv	a0,s5
   10850:	6110a0ef          	jal	ra,1b660 <__sprint_r>
   10854:	060502e3          	beqz	a0,110b8 <_vfprintf_r+0xaf0>
   10858:	01813783          	ld	a5,24(sp)
   1085c:	00078863          	beqz	a5,1086c <_vfprintf_r+0x2a4>
   10860:	03013503          	ld	a0,48(sp)
   10864:	00078593          	mv	a1,a5
   10868:	050030ef          	jal	ra,138b8 <_free_r>
   1086c:	00013783          	ld	a5,0(sp)
   10870:	0107d783          	lhu	a5,16(a5)
   10874:	0407f793          	andi	a5,a5,64
   10878:	00078463          	beqz	a5,10880 <_vfprintf_r+0x2b8>
   1087c:	1140206f          	j	12990 <_vfprintf_r+0x23c8>
   10880:	27813083          	ld	ra,632(sp)
   10884:	27013403          	ld	s0,624(sp)
   10888:	00813503          	ld	a0,8(sp)
   1088c:	26813483          	ld	s1,616(sp)
   10890:	26013903          	ld	s2,608(sp)
   10894:	25813983          	ld	s3,600(sp)
   10898:	25013a03          	ld	s4,592(sp)
   1089c:	24813a83          	ld	s5,584(sp)
   108a0:	24013b03          	ld	s6,576(sp)
   108a4:	23813b83          	ld	s7,568(sp)
   108a8:	23013c03          	ld	s8,560(sp)
   108ac:	22813c83          	ld	s9,552(sp)
   108b0:	22013d03          	ld	s10,544(sp)
   108b4:	21813d83          	ld	s11,536(sp)
   108b8:	28010113          	addi	sp,sp,640
   108bc:	00008067          	ret
   108c0:	01013683          	ld	a3,16(sp)
   108c4:	00011797          	auipc	a5,0x11
   108c8:	b3c78793          	addi	a5,a5,-1220 # 21400 <zeroes.4539+0x60>
   108cc:	04f13823          	sd	a5,80(sp)
   108d0:	0204f793          	andi	a5,s1,32
   108d4:	000c8313          	mv	t1,s9
   108d8:	00868713          	addi	a4,a3,8
   108dc:	10078863          	beqz	a5,109ec <_vfprintf_r+0x424>
   108e0:	0006bb03          	ld	s6,0(a3)
   108e4:	0014f793          	andi	a5,s1,1
   108e8:	00078e63          	beqz	a5,10904 <_vfprintf_r+0x33c>
   108ec:	000b0c63          	beqz	s6,10904 <_vfprintf_r+0x33c>
   108f0:	0024e493          	ori	s1,s1,2
   108f4:	03000793          	li	a5,48
   108f8:	0ef10023          	sb	a5,224(sp)
   108fc:	0e8100a3          	sb	s0,225(sp)
   10900:	0004849b          	sext.w	s1,s1
   10904:	bff4f813          	andi	a6,s1,-1025
   10908:	00080a1b          	sext.w	s4,a6
   1090c:	00e13823          	sd	a4,16(sp)
   10910:	00200793          	li	a5,2
   10914:	0c010fa3          	sb	zero,223(sp)
   10918:	fff00713          	li	a4,-1
   1091c:	5eeb8e63          	beq	s7,a4,10f18 <_vfprintf_r+0x950>
   10920:	f7fa7493          	andi	s1,s4,-129
   10924:	0004849b          	sext.w	s1,s1
   10928:	6c0b16e3          	bnez	s6,117f4 <_vfprintf_r+0x122c>
   1092c:	000b8463          	beqz	s7,10934 <_vfprintf_r+0x36c>
   10930:	0bc0106f          	j	119ec <_vfprintf_r+0x1424>
   10934:	52079663          	bnez	a5,10e60 <_vfprintf_r+0x898>
   10938:	001a7c93          	andi	s9,s4,1
   1093c:	18c10d93          	addi	s11,sp,396
   10940:	000c8463          	beqz	s9,10948 <_vfprintf_r+0x380>
   10944:	2f40106f          	j	11c38 <_vfprintf_r+0x1670>
   10948:	000c8a1b          	sext.w	s4,s9
   1094c:	017cd463          	bge	s9,s7,10954 <_vfprintf_r+0x38c>
   10950:	000b8a1b          	sext.w	s4,s7
   10954:	0df14783          	lbu	a5,223(sp)
   10958:	00013c23          	sd	zero,24(sp)
   1095c:	04013023          	sd	zero,64(sp)
   10960:	02013c23          	sd	zero,56(sp)
   10964:	02013023          	sd	zero,32(sp)
   10968:	64078663          	beqz	a5,10fb4 <_vfprintf_r+0x9ec>
   1096c:	001a0a1b          	addiw	s4,s4,1
   10970:	6440006f          	j	10fb4 <_vfprintf_r+0x9ec>
   10974:	00000993          	li	s3,0
   10978:	00190913          	addi	s2,s2,1
   1097c:	fff94703          	lbu	a4,-1(s2)
   10980:	0029979b          	slliw	a5,s3,0x2
   10984:	013787bb          	addw	a5,a5,s3
   10988:	fd04041b          	addiw	s0,s0,-48
   1098c:	0017979b          	slliw	a5,a5,0x1
   10990:	fd07061b          	addiw	a2,a4,-48
   10994:	00f409bb          	addw	s3,s0,a5
   10998:	0007041b          	sext.w	s0,a4
   1099c:	fcca7ee3          	bgeu	s4,a2,10978 <_vfprintf_r+0x3b0>
   109a0:	fe04079b          	addiw	a5,s0,-32
   109a4:	0007871b          	sext.w	a4,a5
   109a8:	dee6fae3          	bgeu	a3,a4,1079c <_vfprintf_r+0x1d4>
   109ac:	000c8313          	mv	t1,s9
   109b0:	72040863          	beqz	s0,110e0 <_vfprintf_r+0xb18>
   109b4:	12810423          	sb	s0,296(sp)
   109b8:	0c010fa3          	sb	zero,223(sp)
   109bc:	00100a13          	li	s4,1
   109c0:	00100c93          	li	s9,1
   109c4:	12810d93          	addi	s11,sp,296
   109c8:	5d80006f          	j	10fa0 <_vfprintf_r+0x9d8>
   109cc:	01013683          	ld	a3,16(sp)
   109d0:	00011797          	auipc	a5,0x11
   109d4:	a4878793          	addi	a5,a5,-1464 # 21418 <zeroes.4539+0x78>
   109d8:	04f13823          	sd	a5,80(sp)
   109dc:	0204f793          	andi	a5,s1,32
   109e0:	000c8313          	mv	t1,s9
   109e4:	00868713          	addi	a4,a3,8
   109e8:	ee079ce3          	bnez	a5,108e0 <_vfprintf_r+0x318>
   109ec:	0104f793          	andi	a5,s1,16
   109f0:	00078463          	beqz	a5,109f8 <_vfprintf_r+0x430>
   109f4:	26c0106f          	j	11c60 <_vfprintf_r+0x1698>
   109f8:	01013683          	ld	a3,16(sp)
   109fc:	0404f793          	andi	a5,s1,64
   10a00:	0006ab03          	lw	s6,0(a3)
   10a04:	00079463          	bnez	a5,10a0c <_vfprintf_r+0x444>
   10a08:	66c0106f          	j	12074 <_vfprintf_r+0x1aac>
   10a0c:	030b1b13          	slli	s6,s6,0x30
   10a10:	030b5b13          	srli	s6,s6,0x30
   10a14:	ed1ff06f          	j	108e4 <_vfprintf_r+0x31c>
   10a18:	00094403          	lbu	s0,0(s2)
   10a1c:	0044e493          	ori	s1,s1,4
   10a20:	0004849b          	sext.w	s1,s1
   10a24:	d61ff06f          	j	10784 <_vfprintf_r+0x1bc>
   10a28:	00094403          	lbu	s0,0(s2)
   10a2c:	06800793          	li	a5,104
   10a30:	00f41463          	bne	s0,a5,10a38 <_vfprintf_r+0x470>
   10a34:	2e40106f          	j	11d18 <_vfprintf_r+0x1750>
   10a38:	0404e493          	ori	s1,s1,64
   10a3c:	0004849b          	sext.w	s1,s1
   10a40:	d45ff06f          	j	10784 <_vfprintf_r+0x1bc>
   10a44:	0084f793          	andi	a5,s1,8
   10a48:	000c8313          	mv	t1,s9
   10a4c:	00079463          	bnez	a5,10a54 <_vfprintf_r+0x48c>
   10a50:	22c0106f          	j	11c7c <_vfprintf_r+0x16b4>
   10a54:	01013783          	ld	a5,16(sp)
   10a58:	00f78793          	addi	a5,a5,15
   10a5c:	ff07f793          	andi	a5,a5,-16
   10a60:	0007b683          	ld	a3,0(a5)
   10a64:	0087b703          	ld	a4,8(a5)
   10a68:	01078793          	addi	a5,a5,16
   10a6c:	00f13823          	sd	a5,16(sp)
   10a70:	10d13023          	sd	a3,256(sp)
   10a74:	10e13423          	sd	a4,264(sp)
   10a78:	10010513          	addi	a0,sp,256
   10a7c:	00613c23          	sd	t1,24(sp)
   10a80:	69d050ef          	jal	ra,1691c <_ldcheck>
   10a84:	0ea12423          	sw	a0,232(sp)
   10a88:	00200793          	li	a5,2
   10a8c:	01813303          	ld	t1,24(sp)
   10a90:	00f51463          	bne	a0,a5,10a98 <_vfprintf_r+0x4d0>
   10a94:	4e40106f          	j	11f78 <_vfprintf_r+0x19b0>
   10a98:	00100793          	li	a5,1
   10a9c:	00f51463          	bne	a0,a5,10aa4 <_vfprintf_r+0x4dc>
   10aa0:	5e40106f          	j	12084 <_vfprintf_r+0x1abc>
   10aa4:	06100793          	li	a5,97
   10aa8:	00f41463          	bne	s0,a5,10ab0 <_vfprintf_r+0x4e8>
   10aac:	7fd0106f          	j	12aa8 <_vfprintf_r+0x24e0>
   10ab0:	04100793          	li	a5,65
   10ab4:	00f41463          	bne	s0,a5,10abc <_vfprintf_r+0x4f4>
   10ab8:	12d0106f          	j	123e4 <_vfprintf_r+0x1e1c>
   10abc:	fdf47713          	andi	a4,s0,-33
   10ac0:	fff00793          	li	a5,-1
   10ac4:	02e13c23          	sd	a4,56(sp)
   10ac8:	00fb9463          	bne	s7,a5,10ad0 <_vfprintf_r+0x508>
   10acc:	7fd0106f          	j	12ac8 <_vfprintf_r+0x2500>
   10ad0:	04700793          	li	a5,71
   10ad4:	00f71463          	bne	a4,a5,10adc <_vfprintf_r+0x514>
   10ad8:	7e10106f          	j	12ab8 <_vfprintf_r+0x24f0>
   10adc:	10813c83          	ld	s9,264(sp)
   10ae0:	1004e793          	ori	a5,s1,256
   10ae4:	04913023          	sd	s1,64(sp)
   10ae8:	0007879b          	sext.w	a5,a5
   10aec:	10013e83          	ld	t4,256(sp)
   10af0:	000cd463          	bgez	s9,10af8 <_vfprintf_r+0x530>
   10af4:	4c10106f          	j	127b4 <_vfprintf_r+0x21ec>
   10af8:	06013023          	sd	zero,96(sp)
   10afc:	00078493          	mv	s1,a5
   10b00:	00013c23          	sd	zero,24(sp)
   10b04:	03813703          	ld	a4,56(sp)
   10b08:	04600793          	li	a5,70
   10b0c:	00f71463          	bne	a4,a5,10b14 <_vfprintf_r+0x54c>
   10b10:	4050106f          	j	12714 <_vfprintf_r+0x214c>
   10b14:	04500793          	li	a5,69
   10b18:	02613423          	sd	t1,40(sp)
   10b1c:	00f71463          	bne	a4,a5,10b24 <_vfprintf_r+0x55c>
   10b20:	7250106f          	j	12a44 <_vfprintf_r+0x247c>
   10b24:	0e810793          	addi	a5,sp,232
   10b28:	000b8713          	mv	a4,s7
   10b2c:	000e8593          	mv	a1,t4
   10b30:	0f810893          	addi	a7,sp,248
   10b34:	0ec10813          	addi	a6,sp,236
   10b38:	00200693          	li	a3,2
   10b3c:	000c8613          	mv	a2,s9
   10b40:	000a8513          	mv	a0,s5
   10b44:	03d13023          	sd	t4,32(sp)
   10b48:	2b5040ef          	jal	ra,155fc <_ldtoa_r>
   10b4c:	03813703          	ld	a4,56(sp)
   10b50:	04700793          	li	a5,71
   10b54:	00050d93          	mv	s11,a0
   10b58:	02013e83          	ld	t4,32(sp)
   10b5c:	02813303          	ld	t1,40(sp)
   10b60:	00f70463          	beq	a4,a5,10b68 <_vfprintf_r+0x5a0>
   10b64:	1a80206f          	j	12d0c <_vfprintf_r+0x2744>
   10b68:	04013783          	ld	a5,64(sp)
   10b6c:	01750a33          	add	s4,a0,s7
   10b70:	0017f793          	andi	a5,a5,1
   10b74:	00078463          	beqz	a5,10b7c <_vfprintf_r+0x5b4>
   10b78:	3ed0106f          	j	12764 <_vfprintf_r+0x219c>
   10b7c:	0f813783          	ld	a5,248(sp)
   10b80:	41b787bb          	subw	a5,a5,s11
   10b84:	02f13423          	sd	a5,40(sp)
   10b88:	0e812703          	lw	a4,232(sp)
   10b8c:	04700793          	li	a5,71
   10b90:	02e13023          	sd	a4,32(sp)
   10b94:	03813703          	ld	a4,56(sp)
   10b98:	00f71463          	bne	a4,a5,10ba0 <_vfprintf_r+0x5d8>
   10b9c:	2ed0106f          	j	12688 <_vfprintf_r+0x20c0>
   10ba0:	03813703          	ld	a4,56(sp)
   10ba4:	04600793          	li	a5,70
   10ba8:	00f71463          	bne	a4,a5,10bb0 <_vfprintf_r+0x5e8>
   10bac:	5550106f          	j	12900 <_vfprintf_r+0x2338>
   10bb0:	02013783          	ld	a5,32(sp)
   10bb4:	03813703          	ld	a4,56(sp)
   10bb8:	04100613          	li	a2,65
   10bbc:	fff78a1b          	addiw	s4,a5,-1
   10bc0:	0f412423          	sw	s4,232(sp)
   10bc4:	0ff47793          	andi	a5,s0,255
   10bc8:	00000693          	li	a3,0
   10bcc:	00c71863          	bne	a4,a2,10bdc <_vfprintf_r+0x614>
   10bd0:	00f7879b          	addiw	a5,a5,15
   10bd4:	0ff7f793          	andi	a5,a5,255
   10bd8:	00100693          	li	a3,1
   10bdc:	0ef10823          	sb	a5,240(sp)
   10be0:	02b00793          	li	a5,43
   10be4:	000a5a63          	bgez	s4,10bf8 <_vfprintf_r+0x630>
   10be8:	02013783          	ld	a5,32(sp)
   10bec:	00100a13          	li	s4,1
   10bf0:	40fa0a3b          	subw	s4,s4,a5
   10bf4:	02d00793          	li	a5,45
   10bf8:	0ef108a3          	sb	a5,241(sp)
   10bfc:	00900793          	li	a5,9
   10c00:	0147c463          	blt	a5,s4,10c08 <_vfprintf_r+0x640>
   10c04:	0280206f          	j	12c2c <_vfprintf_r+0x2664>
   10c08:	0ff10b13          	addi	s6,sp,255
   10c0c:	000b0c93          	mv	s9,s6
   10c10:	06300493          	li	s1,99
   10c14:	00030b93          	mv	s7,t1
   10c18:	00c0006f          	j	10c24 <_vfprintf_r+0x65c>
   10c1c:	00060c93          	mv	s9,a2
   10c20:	00050a13          	mv	s4,a0
   10c24:	00a00593          	li	a1,10
   10c28:	000a0513          	mv	a0,s4
   10c2c:	eb4ff0ef          	jal	ra,102e0 <__moddi3>
   10c30:	0305051b          	addiw	a0,a0,48
   10c34:	feac8fa3          	sb	a0,-1(s9)
   10c38:	00a00593          	li	a1,10
   10c3c:	000a0513          	mv	a0,s4
   10c40:	e1cff0ef          	jal	ra,1025c <__divdi3>
   10c44:	fffc8613          	addi	a2,s9,-1
   10c48:	0005051b          	sext.w	a0,a0
   10c4c:	fd44c8e3          	blt	s1,s4,10c1c <_vfprintf_r+0x654>
   10c50:	0305079b          	addiw	a5,a0,48
   10c54:	0ff7f793          	andi	a5,a5,255
   10c58:	ffec8693          	addi	a3,s9,-2
   10c5c:	fef60fa3          	sb	a5,-1(a2)
   10c60:	000b8313          	mv	t1,s7
   10c64:	0166e463          	bltu	a3,s6,10c6c <_vfprintf_r+0x6a4>
   10c68:	0b00206f          	j	12d18 <_vfprintf_r+0x2750>
   10c6c:	0f210613          	addi	a2,sp,242
   10c70:	0080006f          	j	10c78 <_vfprintf_r+0x6b0>
   10c74:	0006c783          	lbu	a5,0(a3)
   10c78:	00160613          	addi	a2,a2,1
   10c7c:	00168693          	addi	a3,a3,1
   10c80:	fef60fa3          	sb	a5,-1(a2)
   10c84:	ff6698e3          	bne	a3,s6,10c74 <_vfprintf_r+0x6ac>
   10c88:	10110793          	addi	a5,sp,257
   10c8c:	419787b3          	sub	a5,a5,s9
   10c90:	0f210713          	addi	a4,sp,242
   10c94:	00f707b3          	add	a5,a4,a5
   10c98:	0f010693          	addi	a3,sp,240
   10c9c:	40d787bb          	subw	a5,a5,a3
   10ca0:	06f13423          	sd	a5,104(sp)
   10ca4:	06813783          	ld	a5,104(sp)
   10ca8:	02813703          	ld	a4,40(sp)
   10cac:	00100693          	li	a3,1
   10cb0:	00f70cbb          	addw	s9,a4,a5
   10cb4:	000c8793          	mv	a5,s9
   10cb8:	00e6c463          	blt	a3,a4,10cc0 <_vfprintf_r+0x6f8>
   10cbc:	7c10106f          	j	12c7c <_vfprintf_r+0x26b4>
   10cc0:	04813703          	ld	a4,72(sp)
   10cc4:	00e78cbb          	addw	s9,a5,a4
   10cc8:	04013783          	ld	a5,64(sp)
   10ccc:	fffcca13          	not	s4,s9
   10cd0:	43fa5a13          	srai	s4,s4,0x3f
   10cd4:	bff7f493          	andi	s1,a5,-1025
   10cd8:	0004849b          	sext.w	s1,s1
   10cdc:	014cfa33          	and	s4,s9,s4
   10ce0:	1004e493          	ori	s1,s1,256
   10ce4:	000a0a1b          	sext.w	s4,s4
   10ce8:	04013023          	sd	zero,64(sp)
   10cec:	02013c23          	sd	zero,56(sp)
   10cf0:	02013023          	sd	zero,32(sp)
   10cf4:	06013783          	ld	a5,96(sp)
   10cf8:	00079463          	bnez	a5,10d00 <_vfprintf_r+0x738>
   10cfc:	2050106f          	j	12700 <_vfprintf_r+0x2138>
   10d00:	02d00793          	li	a5,45
   10d04:	0cf10fa3          	sb	a5,223(sp)
   10d08:	00000b93          	li	s7,0
   10d0c:	001a0a1b          	addiw	s4,s4,1
   10d10:	2a40006f          	j	10fb4 <_vfprintf_r+0x9ec>
   10d14:	01013783          	ld	a5,16(sp)
   10d18:	0104e813          	ori	a6,s1,16
   10d1c:	000c8313          	mv	t1,s9
   10d20:	00080a1b          	sext.w	s4,a6
   10d24:	00878713          	addi	a4,a5,8
   10d28:	01013783          	ld	a5,16(sp)
   10d2c:	0007bb03          	ld	s6,0(a5)
   10d30:	00100793          	li	a5,1
   10d34:	00e13823          	sd	a4,16(sp)
   10d38:	bddff06f          	j	10914 <_vfprintf_r+0x34c>
   10d3c:	01013783          	ld	a5,16(sp)
   10d40:	0c010fa3          	sb	zero,223(sp)
   10d44:	000c8313          	mv	t1,s9
   10d48:	0007bd83          	ld	s11,0(a5)
   10d4c:	00878b13          	addi	s6,a5,8
   10d50:	000d9463          	bnez	s11,10d58 <_vfprintf_r+0x790>
   10d54:	7fd0006f          	j	11d50 <_vfprintf_r+0x1788>
   10d58:	fff00793          	li	a5,-1
   10d5c:	00fb9463          	bne	s7,a5,10d64 <_vfprintf_r+0x79c>
   10d60:	2780106f          	j	11fd8 <_vfprintf_r+0x1a10>
   10d64:	000b8613          	mv	a2,s7
   10d68:	00000593          	li	a1,0
   10d6c:	000d8513          	mv	a0,s11
   10d70:	01913823          	sd	s9,16(sp)
   10d74:	768060ef          	jal	ra,174dc <memchr>
   10d78:	00a13c23          	sd	a0,24(sp)
   10d7c:	01013303          	ld	t1,16(sp)
   10d80:	00051463          	bnez	a0,10d88 <_vfprintf_r+0x7c0>
   10d84:	2e90106f          	j	1286c <_vfprintf_r+0x22a4>
   10d88:	01813783          	ld	a5,24(sp)
   10d8c:	01613823          	sd	s6,16(sp)
   10d90:	00013c23          	sd	zero,24(sp)
   10d94:	41b78cbb          	subw	s9,a5,s11
   10d98:	fffcca13          	not	s4,s9
   10d9c:	0df14783          	lbu	a5,223(sp)
   10da0:	43fa5a13          	srai	s4,s4,0x3f
   10da4:	014cfa33          	and	s4,s9,s4
   10da8:	04013023          	sd	zero,64(sp)
   10dac:	02013c23          	sd	zero,56(sp)
   10db0:	02013023          	sd	zero,32(sp)
   10db4:	000a0a1b          	sext.w	s4,s4
   10db8:	00000b93          	li	s7,0
   10dbc:	ba0798e3          	bnez	a5,1096c <_vfprintf_r+0x3a4>
   10dc0:	1f40006f          	j	10fb4 <_vfprintf_r+0x9ec>
   10dc4:	01013703          	ld	a4,16(sp)
   10dc8:	0104e813          	ori	a6,s1,16
   10dcc:	000c8313          	mv	t1,s9
   10dd0:	0008049b          	sext.w	s1,a6
   10dd4:	00870713          	addi	a4,a4,8
   10dd8:	01013783          	ld	a5,16(sp)
   10ddc:	0007bb03          	ld	s6,0(a5)
   10de0:	00e13823          	sd	a4,16(sp)
   10de4:	bff4f813          	andi	a6,s1,-1025
   10de8:	00080a1b          	sext.w	s4,a6
   10dec:	00000793          	li	a5,0
   10df0:	b25ff06f          	j	10914 <_vfprintf_r+0x34c>
   10df4:	0084e493          	ori	s1,s1,8
   10df8:	0004849b          	sext.w	s1,s1
   10dfc:	00094403          	lbu	s0,0(s2)
   10e00:	985ff06f          	j	10784 <_vfprintf_r+0x1bc>
   10e04:	01013703          	ld	a4,16(sp)
   10e08:	0204f793          	andi	a5,s1,32
   10e0c:	000c8313          	mv	t1,s9
   10e10:	00870713          	addi	a4,a4,8
   10e14:	660790e3          	bnez	a5,11c74 <_vfprintf_r+0x16ac>
   10e18:	0104f793          	andi	a5,s1,16
   10e1c:	64079ce3          	bnez	a5,11c74 <_vfprintf_r+0x16ac>
   10e20:	0404f793          	andi	a5,s1,64
   10e24:	00079463          	bnez	a5,10e2c <_vfprintf_r+0x864>
   10e28:	22c0106f          	j	12054 <_vfprintf_r+0x1a8c>
   10e2c:	01013783          	ld	a5,16(sp)
   10e30:	00048a13          	mv	s4,s1
   10e34:	00e13823          	sd	a4,16(sp)
   10e38:	00079b03          	lh	s6,0(a5)
   10e3c:	000b0793          	mv	a5,s6
   10e40:	0c07c063          	bltz	a5,10f00 <_vfprintf_r+0x938>
   10e44:	fff00793          	li	a5,-1
   10e48:	56fb8063          	beq	s7,a5,113a8 <_vfprintf_r+0xde0>
   10e4c:	f7fa7813          	andi	a6,s4,-129
   10e50:	0008049b          	sext.w	s1,a6
   10e54:	540b1863          	bnez	s6,113a4 <_vfprintf_r+0xddc>
   10e58:	000b8463          	beqz	s7,10e60 <_vfprintf_r+0x898>
   10e5c:	7f80106f          	j	12654 <_vfprintf_r+0x208c>
   10e60:	00000b93          	li	s7,0
   10e64:	00000c93          	li	s9,0
   10e68:	18c10d93          	addi	s11,sp,396
   10e6c:	addff06f          	j	10948 <_vfprintf_r+0x380>
   10e70:	02b00793          	li	a5,43
   10e74:	0cf10fa3          	sb	a5,223(sp)
   10e78:	00094403          	lbu	s0,0(s2)
   10e7c:	909ff06f          	j	10784 <_vfprintf_r+0x1bc>
   10e80:	0804e493          	ori	s1,s1,128
   10e84:	0004849b          	sext.w	s1,s1
   10e88:	00094403          	lbu	s0,0(s2)
   10e8c:	8f9ff06f          	j	10784 <_vfprintf_r+0x1bc>
   10e90:	00094403          	lbu	s0,0(s2)
   10e94:	00190793          	addi	a5,s2,1
   10e98:	01641463          	bne	s0,s6,10ea0 <_vfprintf_r+0x8d8>
   10e9c:	6390106f          	j	12cd4 <_vfprintf_r+0x270c>
   10ea0:	fd04071b          	addiw	a4,s0,-48
   10ea4:	00078913          	mv	s2,a5
   10ea8:	00000b93          	li	s7,0
   10eac:	8eea62e3          	bltu	s4,a4,10790 <_vfprintf_r+0x1c8>
   10eb0:	00190913          	addi	s2,s2,1
   10eb4:	002b979b          	slliw	a5,s7,0x2
   10eb8:	fff94603          	lbu	a2,-1(s2)
   10ebc:	017787bb          	addw	a5,a5,s7
   10ec0:	0017979b          	slliw	a5,a5,0x1
   10ec4:	00e78bbb          	addw	s7,a5,a4
   10ec8:	fd06071b          	addiw	a4,a2,-48
   10ecc:	feea72e3          	bgeu	s4,a4,10eb0 <_vfprintf_r+0x8e8>
   10ed0:	00060413          	mv	s0,a2
   10ed4:	8bdff06f          	j	10790 <_vfprintf_r+0x1c8>
   10ed8:	01013783          	ld	a5,16(sp)
   10edc:	0104e813          	ori	a6,s1,16
   10ee0:	000c8313          	mv	t1,s9
   10ee4:	00080a1b          	sext.w	s4,a6
   10ee8:	00878713          	addi	a4,a5,8
   10eec:	01013783          	ld	a5,16(sp)
   10ef0:	0007b783          	ld	a5,0(a5)
   10ef4:	00e13823          	sd	a4,16(sp)
   10ef8:	00078b13          	mv	s6,a5
   10efc:	f407d4e3          	bgez	a5,10e44 <_vfprintf_r+0x87c>
   10f00:	02d00793          	li	a5,45
   10f04:	0cf10fa3          	sb	a5,223(sp)
   10f08:	fff00713          	li	a4,-1
   10f0c:	41600b33          	neg	s6,s6
   10f10:	00100793          	li	a5,1
   10f14:	a0eb96e3          	bne	s7,a4,10920 <_vfprintf_r+0x358>
   10f18:	00100713          	li	a4,1
   10f1c:	48e78663          	beq	a5,a4,113a8 <_vfprintf_r+0xde0>
   10f20:	00200713          	li	a4,2
   10f24:	2ce78ee3          	beq	a5,a4,11a00 <_vfprintf_r+0x1438>
   10f28:	18c10c93          	addi	s9,sp,396
   10f2c:	000c8693          	mv	a3,s9
   10f30:	0080006f          	j	10f38 <_vfprintf_r+0x970>
   10f34:	000d8693          	mv	a3,s11
   10f38:	007b7793          	andi	a5,s6,7
   10f3c:	03078793          	addi	a5,a5,48
   10f40:	fef68fa3          	sb	a5,-1(a3)
   10f44:	003b5b13          	srli	s6,s6,0x3
   10f48:	fff68d93          	addi	s11,a3,-1
   10f4c:	fe0b14e3          	bnez	s6,10f34 <_vfprintf_r+0x96c>
   10f50:	001a7613          	andi	a2,s4,1
   10f54:	4a060463          	beqz	a2,113fc <_vfprintf_r+0xe34>
   10f58:	03000613          	li	a2,48
   10f5c:	4ac78063          	beq	a5,a2,113fc <_vfprintf_r+0xe34>
   10f60:	ffe68693          	addi	a3,a3,-2
   10f64:	fecd8fa3          	sb	a2,-1(s11)
   10f68:	40dc8cbb          	subw	s9,s9,a3
   10f6c:	000a0493          	mv	s1,s4
   10f70:	00068d93          	mv	s11,a3
   10f74:	9d5ff06f          	j	10948 <_vfprintf_r+0x380>
   10f78:	01013703          	ld	a4,16(sp)
   10f7c:	000c8313          	mv	t1,s9
   10f80:	0c010fa3          	sb	zero,223(sp)
   10f84:	00072783          	lw	a5,0(a4)
   10f88:	00870713          	addi	a4,a4,8
   10f8c:	00e13823          	sd	a4,16(sp)
   10f90:	12f10423          	sb	a5,296(sp)
   10f94:	00100a13          	li	s4,1
   10f98:	00100c93          	li	s9,1
   10f9c:	12810d93          	addi	s11,sp,296
   10fa0:	00013c23          	sd	zero,24(sp)
   10fa4:	00000b93          	li	s7,0
   10fa8:	04013023          	sd	zero,64(sp)
   10fac:	02013c23          	sd	zero,56(sp)
   10fb0:	02013023          	sd	zero,32(sp)
   10fb4:	0024fe93          	andi	t4,s1,2
   10fb8:	000e8e9b          	sext.w	t4,t4
   10fbc:	000e8463          	beqz	t4,10fc4 <_vfprintf_r+0x9fc>
   10fc0:	002a0a1b          	addiw	s4,s4,2
   10fc4:	0844ff13          	andi	t5,s1,132
   10fc8:	12013783          	ld	a5,288(sp)
   10fcc:	000f1663          	bnez	t5,10fd8 <_vfprintf_r+0xa10>
   10fd0:	4149883b          	subw	a6,s3,s4
   10fd4:	030044e3          	bgtz	a6,117fc <_vfprintf_r+0x1234>
   10fd8:	0df14683          	lbu	a3,223(sp)
   10fdc:	02068c63          	beqz	a3,11014 <_vfprintf_r+0xa4c>
   10fe0:	11812683          	lw	a3,280(sp)
   10fe4:	0df10613          	addi	a2,sp,223
   10fe8:	00c33023          	sd	a2,0(t1)
   10fec:	0016869b          	addiw	a3,a3,1
   10ff0:	00100613          	li	a2,1
   10ff4:	00178793          	addi	a5,a5,1
   10ff8:	00c33423          	sd	a2,8(t1)
   10ffc:	10d12c23          	sw	a3,280(sp)
   11000:	0006861b          	sext.w	a2,a3
   11004:	12f13023          	sd	a5,288(sp)
   11008:	00700693          	li	a3,7
   1100c:	01030313          	addi	t1,t1,16
   11010:	0ec6c663          	blt	a3,a2,110fc <_vfprintf_r+0xb34>
   11014:	020e8c63          	beqz	t4,1104c <_vfprintf_r+0xa84>
   11018:	11812683          	lw	a3,280(sp)
   1101c:	0e010613          	addi	a2,sp,224
   11020:	00c33023          	sd	a2,0(t1)
   11024:	0016869b          	addiw	a3,a3,1
   11028:	00200613          	li	a2,2
   1102c:	00278793          	addi	a5,a5,2
   11030:	00c33423          	sd	a2,8(t1)
   11034:	10d12c23          	sw	a3,280(sp)
   11038:	0006861b          	sext.w	a2,a3
   1103c:	12f13023          	sd	a5,288(sp)
   11040:	00700693          	li	a3,7
   11044:	01030313          	addi	t1,t1,16
   11048:	0cc6c4e3          	blt	a3,a2,11910 <_vfprintf_r+0x1348>
   1104c:	08000693          	li	a3,128
   11050:	4edf0063          	beq	t5,a3,11530 <_vfprintf_r+0xf68>
   11054:	419b8bbb          	subw	s7,s7,s9
   11058:	5b704e63          	bgtz	s7,11614 <_vfprintf_r+0x104c>
   1105c:	1004f693          	andi	a3,s1,256
   11060:	3a069463          	bnez	a3,11408 <_vfprintf_r+0xe40>
   11064:	11812703          	lw	a4,280(sp)
   11068:	019787b3          	add	a5,a5,s9
   1106c:	01b33023          	sd	s11,0(t1)
   11070:	0017069b          	addiw	a3,a4,1
   11074:	01933423          	sd	s9,8(t1)
   11078:	12f13023          	sd	a5,288(sp)
   1107c:	10d12c23          	sw	a3,280(sp)
   11080:	00700713          	li	a4,7
   11084:	12d74463          	blt	a4,a3,111ac <_vfprintf_r+0xbe4>
   11088:	01030313          	addi	t1,t1,16
   1108c:	0044f493          	andi	s1,s1,4
   11090:	00048663          	beqz	s1,1109c <_vfprintf_r+0xad4>
   11094:	4149843b          	subw	s0,s3,s4
   11098:	0a8042e3          	bgtz	s0,1193c <_vfprintf_r+0x1374>
   1109c:	00098713          	mv	a4,s3
   110a0:	0149d463          	bge	s3,s4,110a8 <_vfprintf_r+0xae0>
   110a4:	000a0713          	mv	a4,s4
   110a8:	00813683          	ld	a3,8(sp)
   110ac:	00d7073b          	addw	a4,a4,a3
   110b0:	00e13423          	sd	a4,8(sp)
   110b4:	f8079863          	bnez	a5,10844 <_vfprintf_r+0x27c>
   110b8:	01813783          	ld	a5,24(sp)
   110bc:	10012c23          	sw	zero,280(sp)
   110c0:	00078863          	beqz	a5,110d0 <_vfprintf_r+0xb08>
   110c4:	01813583          	ld	a1,24(sp)
   110c8:	000a8513          	mv	a0,s5
   110cc:	7ec020ef          	jal	ra,138b8 <_free_r>
   110d0:	19010313          	addi	t1,sp,400
   110d4:	00090d93          	mv	s11,s2
   110d8:	000dc783          	lbu	a5,0(s11)
   110dc:	e0079863          	bnez	a5,106ec <_vfprintf_r+0x124>
   110e0:	12013783          	ld	a5,288(sp)
   110e4:	f8078463          	beqz	a5,1086c <_vfprintf_r+0x2a4>
   110e8:	00013583          	ld	a1,0(sp)
   110ec:	03013503          	ld	a0,48(sp)
   110f0:	11010613          	addi	a2,sp,272
   110f4:	56c0a0ef          	jal	ra,1b660 <__sprint_r>
   110f8:	f74ff06f          	j	1086c <_vfprintf_r+0x2a4>
   110fc:	00013583          	ld	a1,0(sp)
   11100:	11010613          	addi	a2,sp,272
   11104:	000a8513          	mv	a0,s5
   11108:	09e13023          	sd	t5,128(sp)
   1110c:	07d13023          	sd	t4,96(sp)
   11110:	5500a0ef          	jal	ra,1b660 <__sprint_r>
   11114:	f4051263          	bnez	a0,10858 <_vfprintf_r+0x290>
   11118:	12013783          	ld	a5,288(sp)
   1111c:	19010313          	addi	t1,sp,400
   11120:	08013f03          	ld	t5,128(sp)
   11124:	06013e83          	ld	t4,96(sp)
   11128:	eedff06f          	j	11014 <_vfprintf_r+0xa4c>
   1112c:	11812603          	lw	a2,280(sp)
   11130:	04813703          	ld	a4,72(sp)
   11134:	05813683          	ld	a3,88(sp)
   11138:	01030313          	addi	t1,t1,16
   1113c:	00f707b3          	add	a5,a4,a5
   11140:	fed33823          	sd	a3,-16(t1)
   11144:	0016069b          	addiw	a3,a2,1
   11148:	fee33c23          	sd	a4,-8(t1)
   1114c:	12f13023          	sd	a5,288(sp)
   11150:	10d12c23          	sw	a3,280(sp)
   11154:	00700613          	li	a2,7
   11158:	02d65463          	bge	a2,a3,11180 <_vfprintf_r+0xbb8>
   1115c:	00013583          	ld	a1,0(sp)
   11160:	11010613          	addi	a2,sp,272
   11164:	000a8513          	mv	a0,s5
   11168:	4f80a0ef          	jal	ra,1b660 <__sprint_r>
   1116c:	ee051663          	bnez	a0,10858 <_vfprintf_r+0x290>
   11170:	0e812583          	lw	a1,232(sp)
   11174:	12013783          	ld	a5,288(sp)
   11178:	11812683          	lw	a3,280(sp)
   1117c:	19010313          	addi	t1,sp,400
   11180:	0005d463          	bgez	a1,11188 <_vfprintf_r+0xbc0>
   11184:	7a40106f          	j	12928 <_vfprintf_r+0x2360>
   11188:	02813703          	ld	a4,40(sp)
   1118c:	0016861b          	addiw	a2,a3,1
   11190:	01b33023          	sd	s11,0(t1)
   11194:	00f707b3          	add	a5,a4,a5
   11198:	00e33423          	sd	a4,8(t1)
   1119c:	12f13023          	sd	a5,288(sp)
   111a0:	10c12c23          	sw	a2,280(sp)
   111a4:	00700713          	li	a4,7
   111a8:	eec750e3          	bge	a4,a2,11088 <_vfprintf_r+0xac0>
   111ac:	00013583          	ld	a1,0(sp)
   111b0:	11010613          	addi	a2,sp,272
   111b4:	000a8513          	mv	a0,s5
   111b8:	4a80a0ef          	jal	ra,1b660 <__sprint_r>
   111bc:	e8051e63          	bnez	a0,10858 <_vfprintf_r+0x290>
   111c0:	12013783          	ld	a5,288(sp)
   111c4:	19010313          	addi	t1,sp,400
   111c8:	ec5ff06f          	j	1108c <_vfprintf_r+0xac4>
   111cc:	01013783          	ld	a5,16(sp)
   111d0:	00094403          	lbu	s0,0(s2)
   111d4:	0007a983          	lw	s3,0(a5)
   111d8:	00878793          	addi	a5,a5,8
   111dc:	00f13823          	sd	a5,16(sp)
   111e0:	da09d263          	bgez	s3,10784 <_vfprintf_r+0x1bc>
   111e4:	413009bb          	negw	s3,s3
   111e8:	835ff06f          	j	10a1c <_vfprintf_r+0x454>
   111ec:	000a8513          	mv	a0,s5
   111f0:	788050ef          	jal	ra,16978 <_localeconv_r>
   111f4:	00853783          	ld	a5,8(a0)
   111f8:	00078513          	mv	a0,a5
   111fc:	06f13823          	sd	a5,112(sp)
   11200:	2b1070ef          	jal	ra,18cb0 <strlen>
   11204:	08a13423          	sd	a0,136(sp)
   11208:	00050413          	mv	s0,a0
   1120c:	000a8513          	mv	a0,s5
   11210:	768050ef          	jal	ra,16978 <_localeconv_r>
   11214:	01053783          	ld	a5,16(a0)
   11218:	06f13c23          	sd	a5,120(sp)
   1121c:	22040ee3          	beqz	s0,11c58 <_vfprintf_r+0x1690>
   11220:	00094403          	lbu	s0,0(s2)
   11224:	d6078063          	beqz	a5,10784 <_vfprintf_r+0x1bc>
   11228:	0007c783          	lbu	a5,0(a5)
   1122c:	d4078c63          	beqz	a5,10784 <_vfprintf_r+0x1bc>
   11230:	4004e493          	ori	s1,s1,1024
   11234:	0004849b          	sext.w	s1,s1
   11238:	d4cff06f          	j	10784 <_vfprintf_r+0x1bc>
   1123c:	0014e493          	ori	s1,s1,1
   11240:	0004849b          	sext.w	s1,s1
   11244:	00094403          	lbu	s0,0(s2)
   11248:	d3cff06f          	j	10784 <_vfprintf_r+0x1bc>
   1124c:	0df14783          	lbu	a5,223(sp)
   11250:	00094403          	lbu	s0,0(s2)
   11254:	d2079863          	bnez	a5,10784 <_vfprintf_r+0x1bc>
   11258:	02000793          	li	a5,32
   1125c:	0cf10fa3          	sb	a5,223(sp)
   11260:	d24ff06f          	j	10784 <_vfprintf_r+0x1bc>
   11264:	01013703          	ld	a4,16(sp)
   11268:	0204f793          	andi	a5,s1,32
   1126c:	000c8313          	mv	t1,s9
   11270:	00870713          	addi	a4,a4,8
   11274:	1e079ce3          	bnez	a5,11c6c <_vfprintf_r+0x16a4>
   11278:	0104f793          	andi	a5,s1,16
   1127c:	1e0798e3          	bnez	a5,11c6c <_vfprintf_r+0x16a4>
   11280:	01013683          	ld	a3,16(sp)
   11284:	0404f793          	andi	a5,s1,64
   11288:	0006ab03          	lw	s6,0(a3)
   1128c:	5a0786e3          	beqz	a5,12038 <_vfprintf_r+0x1a70>
   11290:	030b1b13          	slli	s6,s6,0x30
   11294:	030b5b13          	srli	s6,s6,0x30
   11298:	00e13823          	sd	a4,16(sp)
   1129c:	00048a13          	mv	s4,s1
   112a0:	00100793          	li	a5,1
   112a4:	e70ff06f          	j	10914 <_vfprintf_r+0x34c>
   112a8:	0204e493          	ori	s1,s1,32
   112ac:	0004849b          	sext.w	s1,s1
   112b0:	00094403          	lbu	s0,0(s2)
   112b4:	cd0ff06f          	j	10784 <_vfprintf_r+0x1bc>
   112b8:	01013703          	ld	a4,16(sp)
   112bc:	ffff87b7          	lui	a5,0xffff8
   112c0:	8307c793          	xori	a5,a5,-2000
   112c4:	0ef11023          	sh	a5,224(sp)
   112c8:	00870793          	addi	a5,a4,8
   112cc:	0024e813          	ori	a6,s1,2
   112d0:	00f13823          	sd	a5,16(sp)
   112d4:	00010797          	auipc	a5,0x10
   112d8:	12c78793          	addi	a5,a5,300 # 21400 <zeroes.4539+0x60>
   112dc:	04f13823          	sd	a5,80(sp)
   112e0:	000c8313          	mv	t1,s9
   112e4:	00073b03          	ld	s6,0(a4)
   112e8:	00080a1b          	sext.w	s4,a6
   112ec:	00200793          	li	a5,2
   112f0:	07800413          	li	s0,120
   112f4:	e20ff06f          	j	10914 <_vfprintf_r+0x34c>
   112f8:	01013703          	ld	a4,16(sp)
   112fc:	0204f793          	andi	a5,s1,32
   11300:	000c8313          	mv	t1,s9
   11304:	00870713          	addi	a4,a4,8
   11308:	ac0798e3          	bnez	a5,10dd8 <_vfprintf_r+0x810>
   1130c:	0104f793          	andi	a5,s1,16
   11310:	ac0794e3          	bnez	a5,10dd8 <_vfprintf_r+0x810>
   11314:	01013683          	ld	a3,16(sp)
   11318:	0404f793          	andi	a5,s1,64
   1131c:	0006ab03          	lw	s6,0(a3)
   11320:	500782e3          	beqz	a5,12024 <_vfprintf_r+0x1a5c>
   11324:	030b1b13          	slli	s6,s6,0x30
   11328:	030b5b13          	srli	s6,s6,0x30
   1132c:	00e13823          	sd	a4,16(sp)
   11330:	ab5ff06f          	j	10de4 <_vfprintf_r+0x81c>
   11334:	01013683          	ld	a3,16(sp)
   11338:	0204f793          	andi	a5,s1,32
   1133c:	000c8313          	mv	t1,s9
   11340:	0006b703          	ld	a4,0(a3)
   11344:	00868693          	addi	a3,a3,8
   11348:	00d13823          	sd	a3,16(sp)
   1134c:	0e079ee3          	bnez	a5,11c48 <_vfprintf_r+0x1680>
   11350:	0104f793          	andi	a5,s1,16
   11354:	0e079ae3          	bnez	a5,11c48 <_vfprintf_r+0x1680>
   11358:	0404f793          	andi	a5,s1,64
   1135c:	00078463          	beqz	a5,11364 <_vfprintf_r+0xd9c>
   11360:	01c0106f          	j	1237c <_vfprintf_r+0x1db4>
   11364:	2004f493          	andi	s1,s1,512
   11368:	00813783          	ld	a5,8(sp)
   1136c:	00049463          	bnez	s1,11374 <_vfprintf_r+0xdac>
   11370:	7980106f          	j	12b08 <_vfprintf_r+0x2540>
   11374:	00f70023          	sb	a5,0(a4)
   11378:	00090d93          	mv	s11,s2
   1137c:	d5dff06f          	j	110d8 <_vfprintf_r+0xb10>
   11380:	00094403          	lbu	s0,0(s2)
   11384:	06c00793          	li	a5,108
   11388:	16f40ee3          	beq	s0,a5,11d04 <_vfprintf_r+0x173c>
   1138c:	0104e493          	ori	s1,s1,16
   11390:	0004849b          	sext.w	s1,s1
   11394:	bf0ff06f          	j	10784 <_vfprintf_r+0x1bc>
   11398:	03013503          	ld	a0,48(sp)
   1139c:	39c020ef          	jal	ra,13738 <__sinit>
   113a0:	aa0ff06f          	j	10640 <_vfprintf_r+0x78>
   113a4:	00048a13          	mv	s4,s1
   113a8:	00900793          	li	a5,9
   113ac:	3167e4e3          	bltu	a5,s6,11eb4 <_vfprintf_r+0x18ec>
   113b0:	030b0b1b          	addiw	s6,s6,48
   113b4:	196105a3          	sb	s6,395(sp)
   113b8:	000a0493          	mv	s1,s4
   113bc:	00100c93          	li	s9,1
   113c0:	18b10d93          	addi	s11,sp,395
   113c4:	d84ff06f          	j	10948 <_vfprintf_r+0x380>
   113c8:	0ff00793          	li	a5,255
   113cc:	34f686e3          	beq	a3,a5,11f18 <_vfprintf_r+0x1950>
   113d0:	00900793          	li	a5,9
   113d4:	7537e6e3          	bltu	a5,s3,12320 <_vfprintf_r+0x1d58>
   113d8:	07213c23          	sd	s2,120(sp)
   113dc:	000a8313          	mv	t1,s5
   113e0:	03813983          	ld	s3,56(sp)
   113e4:	000c8a93          	mv	s5,s9
   113e8:	01813903          	ld	s2,24(sp)
   113ec:	000d8c93          	mv	s9,s11
   113f0:	00040d93          	mv	s11,s0
   113f4:	02013403          	ld	s0,32(sp)
   113f8:	02913423          	sd	s1,40(sp)
   113fc:	41bc8cbb          	subw	s9,s9,s11
   11400:	000a0493          	mv	s1,s4
   11404:	d44ff06f          	j	10948 <_vfprintf_r+0x380>
   11408:	06500693          	li	a3,101
   1140c:	2e86d063          	bge	a3,s0,116ec <_vfprintf_r+0x1124>
   11410:	10013503          	ld	a0,256(sp)
   11414:	10813583          	ld	a1,264(sp)
   11418:	00000613          	li	a2,0
   1141c:	00000693          	li	a3,0
   11420:	08613023          	sd	t1,128(sp)
   11424:	06f13023          	sd	a5,96(sp)
   11428:	0790e0ef          	jal	ra,1fca0 <__eqtf2>
   1142c:	06013783          	ld	a5,96(sp)
   11430:	08013303          	ld	t1,128(sp)
   11434:	60051063          	bnez	a0,11a34 <_vfprintf_r+0x146c>
   11438:	11812703          	lw	a4,280(sp)
   1143c:	00010697          	auipc	a3,0x10
   11440:	ffc68693          	addi	a3,a3,-4 # 21438 <zeroes.4539+0x98>
   11444:	00178793          	addi	a5,a5,1
   11448:	0017071b          	addiw	a4,a4,1
   1144c:	00d33023          	sd	a3,0(t1)
   11450:	00100693          	li	a3,1
   11454:	00d33423          	sd	a3,8(t1)
   11458:	12f13023          	sd	a5,288(sp)
   1145c:	0007069b          	sext.w	a3,a4
   11460:	10e12c23          	sw	a4,280(sp)
   11464:	00700793          	li	a5,7
   11468:	01030313          	addi	t1,t1,16
   1146c:	2cd7c4e3          	blt	a5,a3,11f34 <_vfprintf_r+0x196c>
   11470:	0e812783          	lw	a5,232(sp)
   11474:	02813703          	ld	a4,40(sp)
   11478:	00e7ca63          	blt	a5,a4,1148c <_vfprintf_r+0xec4>
   1147c:	0014f793          	andi	a5,s1,1
   11480:	00079663          	bnez	a5,1148c <_vfprintf_r+0xec4>
   11484:	12013783          	ld	a5,288(sp)
   11488:	c05ff06f          	j	1108c <_vfprintf_r+0xac4>
   1148c:	05813783          	ld	a5,88(sp)
   11490:	04813683          	ld	a3,72(sp)
   11494:	11812703          	lw	a4,280(sp)
   11498:	00f33023          	sd	a5,0(t1)
   1149c:	12013783          	ld	a5,288(sp)
   114a0:	0017071b          	addiw	a4,a4,1
   114a4:	00d33423          	sd	a3,8(t1)
   114a8:	00f687b3          	add	a5,a3,a5
   114ac:	10e12c23          	sw	a4,280(sp)
   114b0:	0007069b          	sext.w	a3,a4
   114b4:	12f13023          	sd	a5,288(sp)
   114b8:	00700713          	li	a4,7
   114bc:	01030313          	addi	t1,t1,16
   114c0:	06d746e3          	blt	a4,a3,11d2c <_vfprintf_r+0x1764>
   114c4:	02813703          	ld	a4,40(sp)
   114c8:	fff7041b          	addiw	s0,a4,-1
   114cc:	bc8050e3          	blez	s0,1108c <_vfprintf_r+0xac4>
   114d0:	11812703          	lw	a4,280(sp)
   114d4:	288d50e3          	bge	s10,s0,11f54 <_vfprintf_r+0x198c>
   114d8:	00700c93          	li	s9,7
   114dc:	00013b03          	ld	s6,0(sp)
   114e0:	00c0006f          	j	114ec <_vfprintf_r+0xf24>
   114e4:	ff04041b          	addiw	s0,s0,-16
   114e8:	268d56e3          	bge	s10,s0,11f54 <_vfprintf_r+0x198c>
   114ec:	0017071b          	addiw	a4,a4,1
   114f0:	01078793          	addi	a5,a5,16
   114f4:	01833023          	sd	s8,0(t1)
   114f8:	01a33423          	sd	s10,8(t1)
   114fc:	12f13023          	sd	a5,288(sp)
   11500:	10e12c23          	sw	a4,280(sp)
   11504:	01030313          	addi	t1,t1,16
   11508:	fcecdee3          	bge	s9,a4,114e4 <_vfprintf_r+0xf1c>
   1150c:	11010613          	addi	a2,sp,272
   11510:	000b0593          	mv	a1,s6
   11514:	000a8513          	mv	a0,s5
   11518:	1480a0ef          	jal	ra,1b660 <__sprint_r>
   1151c:	b2051e63          	bnez	a0,10858 <_vfprintf_r+0x290>
   11520:	12013783          	ld	a5,288(sp)
   11524:	11812703          	lw	a4,280(sp)
   11528:	19010313          	addi	t1,sp,400
   1152c:	fb9ff06f          	j	114e4 <_vfprintf_r+0xf1c>
   11530:	41498b3b          	subw	s6,s3,s4
   11534:	b36050e3          	blez	s6,11054 <_vfprintf_r+0xa8c>
   11538:	11812683          	lw	a3,280(sp)
   1153c:	096d5a63          	bge	s10,s6,115d0 <_vfprintf_r+0x1008>
   11540:	000b0713          	mv	a4,s6
   11544:	06813023          	sd	s0,96(sp)
   11548:	000a0b13          	mv	s6,s4
   1154c:	00700893          	li	a7,7
   11550:	00098a13          	mv	s4,s3
   11554:	00013403          	ld	s0,0(sp)
   11558:	00048993          	mv	s3,s1
   1155c:	00070493          	mv	s1,a4
   11560:	00c0006f          	j	1156c <_vfprintf_r+0xfa4>
   11564:	ff04849b          	addiw	s1,s1,-16
   11568:	049d5863          	bge	s10,s1,115b8 <_vfprintf_r+0xff0>
   1156c:	0016869b          	addiw	a3,a3,1
   11570:	01078793          	addi	a5,a5,16
   11574:	01833023          	sd	s8,0(t1)
   11578:	01a33423          	sd	s10,8(t1)
   1157c:	12f13023          	sd	a5,288(sp)
   11580:	10d12c23          	sw	a3,280(sp)
   11584:	01030313          	addi	t1,t1,16
   11588:	fcd8dee3          	bge	a7,a3,11564 <_vfprintf_r+0xf9c>
   1158c:	11010613          	addi	a2,sp,272
   11590:	00040593          	mv	a1,s0
   11594:	000a8513          	mv	a0,s5
   11598:	0c80a0ef          	jal	ra,1b660 <__sprint_r>
   1159c:	aa051e63          	bnez	a0,10858 <_vfprintf_r+0x290>
   115a0:	ff04849b          	addiw	s1,s1,-16
   115a4:	12013783          	ld	a5,288(sp)
   115a8:	11812683          	lw	a3,280(sp)
   115ac:	19010313          	addi	t1,sp,400
   115b0:	00700893          	li	a7,7
   115b4:	fa9d4ce3          	blt	s10,s1,1156c <_vfprintf_r+0xfa4>
   115b8:	06013403          	ld	s0,96(sp)
   115bc:	00048713          	mv	a4,s1
   115c0:	00098493          	mv	s1,s3
   115c4:	000a0993          	mv	s3,s4
   115c8:	000b0a13          	mv	s4,s6
   115cc:	00070b13          	mv	s6,a4
   115d0:	0016861b          	addiw	a2,a3,1
   115d4:	016787b3          	add	a5,a5,s6
   115d8:	01833023          	sd	s8,0(t1)
   115dc:	01633423          	sd	s6,8(t1)
   115e0:	12f13023          	sd	a5,288(sp)
   115e4:	10c12c23          	sw	a2,280(sp)
   115e8:	00700693          	li	a3,7
   115ec:	01030313          	addi	t1,t1,16
   115f0:	a6c6d2e3          	bge	a3,a2,11054 <_vfprintf_r+0xa8c>
   115f4:	00013583          	ld	a1,0(sp)
   115f8:	11010613          	addi	a2,sp,272
   115fc:	000a8513          	mv	a0,s5
   11600:	0600a0ef          	jal	ra,1b660 <__sprint_r>
   11604:	a4051a63          	bnez	a0,10858 <_vfprintf_r+0x290>
   11608:	12013783          	ld	a5,288(sp)
   1160c:	19010313          	addi	t1,sp,400
   11610:	a45ff06f          	j	11054 <_vfprintf_r+0xa8c>
   11614:	11812683          	lw	a3,280(sp)
   11618:	097d5863          	bge	s10,s7,116a8 <_vfprintf_r+0x10e0>
   1161c:	000a0713          	mv	a4,s4
   11620:	06813023          	sd	s0,96(sp)
   11624:	00098a13          	mv	s4,s3
   11628:	00700b13          	li	s6,7
   1162c:	00048993          	mv	s3,s1
   11630:	00013403          	ld	s0,0(sp)
   11634:	000b8493          	mv	s1,s7
   11638:	00070b93          	mv	s7,a4
   1163c:	00c0006f          	j	11648 <_vfprintf_r+0x1080>
   11640:	ff04849b          	addiw	s1,s1,-16
   11644:	049d5663          	bge	s10,s1,11690 <_vfprintf_r+0x10c8>
   11648:	0016869b          	addiw	a3,a3,1
   1164c:	01078793          	addi	a5,a5,16
   11650:	01833023          	sd	s8,0(t1)
   11654:	01a33423          	sd	s10,8(t1)
   11658:	12f13023          	sd	a5,288(sp)
   1165c:	10d12c23          	sw	a3,280(sp)
   11660:	01030313          	addi	t1,t1,16
   11664:	fcdb5ee3          	bge	s6,a3,11640 <_vfprintf_r+0x1078>
   11668:	11010613          	addi	a2,sp,272
   1166c:	00040593          	mv	a1,s0
   11670:	000a8513          	mv	a0,s5
   11674:	7ed090ef          	jal	ra,1b660 <__sprint_r>
   11678:	9e051063          	bnez	a0,10858 <_vfprintf_r+0x290>
   1167c:	ff04849b          	addiw	s1,s1,-16
   11680:	12013783          	ld	a5,288(sp)
   11684:	11812683          	lw	a3,280(sp)
   11688:	19010313          	addi	t1,sp,400
   1168c:	fa9d4ee3          	blt	s10,s1,11648 <_vfprintf_r+0x1080>
   11690:	06013403          	ld	s0,96(sp)
   11694:	000b8713          	mv	a4,s7
   11698:	00048b93          	mv	s7,s1
   1169c:	00098493          	mv	s1,s3
   116a0:	000a0993          	mv	s3,s4
   116a4:	00070a13          	mv	s4,a4
   116a8:	0016861b          	addiw	a2,a3,1
   116ac:	017787b3          	add	a5,a5,s7
   116b0:	01833023          	sd	s8,0(t1)
   116b4:	01733423          	sd	s7,8(t1)
   116b8:	12f13023          	sd	a5,288(sp)
   116bc:	10c12c23          	sw	a2,280(sp)
   116c0:	00700693          	li	a3,7
   116c4:	01030313          	addi	t1,t1,16
   116c8:	98c6dae3          	bge	a3,a2,1105c <_vfprintf_r+0xa94>
   116cc:	00013583          	ld	a1,0(sp)
   116d0:	11010613          	addi	a2,sp,272
   116d4:	000a8513          	mv	a0,s5
   116d8:	789090ef          	jal	ra,1b660 <__sprint_r>
   116dc:	96051e63          	bnez	a0,10858 <_vfprintf_r+0x290>
   116e0:	12013783          	ld	a5,288(sp)
   116e4:	19010313          	addi	t1,sp,400
   116e8:	975ff06f          	j	1105c <_vfprintf_r+0xa94>
   116ec:	11812583          	lw	a1,280(sp)
   116f0:	02813703          	ld	a4,40(sp)
   116f4:	00178c93          	addi	s9,a5,1
   116f8:	00100613          	li	a2,1
   116fc:	0015879b          	addiw	a5,a1,1
   11700:	01b33023          	sd	s11,0(t1)
   11704:	00078693          	mv	a3,a5
   11708:	01030413          	addi	s0,t1,16
   1170c:	48e65c63          	bge	a2,a4,11ba4 <_vfprintf_r+0x15dc>
   11710:	00100613          	li	a2,1
   11714:	10d12c23          	sw	a3,280(sp)
   11718:	00c33423          	sd	a2,8(t1)
   1171c:	13913023          	sd	s9,288(sp)
   11720:	00700693          	li	a3,7
   11724:	6cf6c063          	blt	a3,a5,11de4 <_vfprintf_r+0x181c>
   11728:	0017869b          	addiw	a3,a5,1
   1172c:	04813783          	ld	a5,72(sp)
   11730:	05813703          	ld	a4,88(sp)
   11734:	10d12c23          	sw	a3,280(sp)
   11738:	00fc8cb3          	add	s9,s9,a5
   1173c:	00f43423          	sd	a5,8(s0)
   11740:	00e43023          	sd	a4,0(s0)
   11744:	0006879b          	sext.w	a5,a3
   11748:	13913023          	sd	s9,288(sp)
   1174c:	00700693          	li	a3,7
   11750:	01040413          	addi	s0,s0,16
   11754:	6af6cc63          	blt	a3,a5,11e0c <_vfprintf_r+0x1844>
   11758:	0017889b          	addiw	a7,a5,1
   1175c:	04f13023          	sd	a5,64(sp)
   11760:	10013503          	ld	a0,256(sp)
   11764:	02813783          	ld	a5,40(sp)
   11768:	10813583          	ld	a1,264(sp)
   1176c:	01040313          	addi	t1,s0,16
   11770:	00000613          	li	a2,0
   11774:	00000693          	li	a3,0
   11778:	00088b1b          	sext.w	s6,a7
   1177c:	03113c23          	sd	a7,56(sp)
   11780:	02613023          	sd	t1,32(sp)
   11784:	fff78b9b          	addiw	s7,a5,-1
   11788:	5180e0ef          	jal	ra,1fca0 <__eqtf2>
   1178c:	02013303          	ld	t1,32(sp)
   11790:	03813883          	ld	a7,56(sp)
   11794:	42050c63          	beqz	a0,11bcc <_vfprintf_r+0x1604>
   11798:	001d8713          	addi	a4,s11,1
   1179c:	017c8cb3          	add	s9,s9,s7
   117a0:	00e43023          	sd	a4,0(s0)
   117a4:	01743423          	sd	s7,8(s0)
   117a8:	13913023          	sd	s9,288(sp)
   117ac:	11112c23          	sw	a7,280(sp)
   117b0:	00700713          	li	a4,7
   117b4:	53674063          	blt	a4,s6,11cd4 <_vfprintf_r+0x170c>
   117b8:	04013783          	ld	a5,64(sp)
   117bc:	02040713          	addi	a4,s0,32
   117c0:	00030413          	mv	s0,t1
   117c4:	00278b1b          	addiw	s6,a5,2
   117c8:	00070313          	mv	t1,a4
   117cc:	06813683          	ld	a3,104(sp)
   117d0:	0f010713          	addi	a4,sp,240
   117d4:	00e43023          	sd	a4,0(s0)
   117d8:	00dc87b3          	add	a5,s9,a3
   117dc:	00d43423          	sd	a3,8(s0)
   117e0:	12f13023          	sd	a5,288(sp)
   117e4:	11612c23          	sw	s6,280(sp)
   117e8:	00700713          	li	a4,7
   117ec:	8b6750e3          	bge	a4,s6,1108c <_vfprintf_r+0xac4>
   117f0:	9bdff06f          	j	111ac <_vfprintf_r+0xbe4>
   117f4:	00048a13          	mv	s4,s1
   117f8:	f20ff06f          	j	10f18 <_vfprintf_r+0x950>
   117fc:	11812683          	lw	a3,280(sp)
   11800:	00010b17          	auipc	s6,0x10
   11804:	b90b0b13          	addi	s6,s6,-1136 # 21390 <blanks.4538>
   11808:	0b0d5863          	bge	s10,a6,118b8 <_vfprintf_r+0x12f0>
   1180c:	09213823          	sd	s2,144(sp)
   11810:	08813c23          	sd	s0,152(sp)
   11814:	000b0913          	mv	s2,s6
   11818:	00700f93          	li	t6,7
   1181c:	000a0b13          	mv	s6,s4
   11820:	07d13023          	sd	t4,96(sp)
   11824:	00098a13          	mv	s4,s3
   11828:	09e13023          	sd	t5,128(sp)
   1182c:	00048993          	mv	s3,s1
   11830:	00080413          	mv	s0,a6
   11834:	00013483          	ld	s1,0(sp)
   11838:	00c0006f          	j	11844 <_vfprintf_r+0x127c>
   1183c:	ff04041b          	addiw	s0,s0,-16
   11840:	048d5a63          	bge	s10,s0,11894 <_vfprintf_r+0x12cc>
   11844:	0016869b          	addiw	a3,a3,1
   11848:	01078793          	addi	a5,a5,16
   1184c:	01233023          	sd	s2,0(t1)
   11850:	01a33423          	sd	s10,8(t1)
   11854:	12f13023          	sd	a5,288(sp)
   11858:	10d12c23          	sw	a3,280(sp)
   1185c:	01030313          	addi	t1,t1,16
   11860:	fcdfdee3          	bge	t6,a3,1183c <_vfprintf_r+0x1274>
   11864:	11010613          	addi	a2,sp,272
   11868:	00048593          	mv	a1,s1
   1186c:	000a8513          	mv	a0,s5
   11870:	5f1090ef          	jal	ra,1b660 <__sprint_r>
   11874:	00050463          	beqz	a0,1187c <_vfprintf_r+0x12b4>
   11878:	fe1fe06f          	j	10858 <_vfprintf_r+0x290>
   1187c:	ff04041b          	addiw	s0,s0,-16
   11880:	12013783          	ld	a5,288(sp)
   11884:	11812683          	lw	a3,280(sp)
   11888:	19010313          	addi	t1,sp,400
   1188c:	00700f93          	li	t6,7
   11890:	fa8d4ae3          	blt	s10,s0,11844 <_vfprintf_r+0x127c>
   11894:	00098493          	mv	s1,s3
   11898:	00040813          	mv	a6,s0
   1189c:	000a0993          	mv	s3,s4
   118a0:	06013e83          	ld	t4,96(sp)
   118a4:	000b0a13          	mv	s4,s6
   118a8:	08013f03          	ld	t5,128(sp)
   118ac:	00090b13          	mv	s6,s2
   118b0:	09813403          	ld	s0,152(sp)
   118b4:	09013903          	ld	s2,144(sp)
   118b8:	0016861b          	addiw	a2,a3,1
   118bc:	010787b3          	add	a5,a5,a6
   118c0:	01633023          	sd	s6,0(t1)
   118c4:	01033423          	sd	a6,8(t1)
   118c8:	12f13023          	sd	a5,288(sp)
   118cc:	10c12c23          	sw	a2,280(sp)
   118d0:	00700693          	li	a3,7
   118d4:	01030313          	addi	t1,t1,16
   118d8:	f0c6d063          	bge	a3,a2,10fd8 <_vfprintf_r+0xa10>
   118dc:	00013583          	ld	a1,0(sp)
   118e0:	11010613          	addi	a2,sp,272
   118e4:	000a8513          	mv	a0,s5
   118e8:	09e13023          	sd	t5,128(sp)
   118ec:	07d13023          	sd	t4,96(sp)
   118f0:	571090ef          	jal	ra,1b660 <__sprint_r>
   118f4:	00050463          	beqz	a0,118fc <_vfprintf_r+0x1334>
   118f8:	f61fe06f          	j	10858 <_vfprintf_r+0x290>
   118fc:	12013783          	ld	a5,288(sp)
   11900:	19010313          	addi	t1,sp,400
   11904:	08013f03          	ld	t5,128(sp)
   11908:	06013e83          	ld	t4,96(sp)
   1190c:	eccff06f          	j	10fd8 <_vfprintf_r+0xa10>
   11910:	00013583          	ld	a1,0(sp)
   11914:	11010613          	addi	a2,sp,272
   11918:	000a8513          	mv	a0,s5
   1191c:	07e13023          	sd	t5,96(sp)
   11920:	541090ef          	jal	ra,1b660 <__sprint_r>
   11924:	00050463          	beqz	a0,1192c <_vfprintf_r+0x1364>
   11928:	f31fe06f          	j	10858 <_vfprintf_r+0x290>
   1192c:	12013783          	ld	a5,288(sp)
   11930:	19010313          	addi	t1,sp,400
   11934:	06013f03          	ld	t5,96(sp)
   11938:	f14ff06f          	j	1104c <_vfprintf_r+0xa84>
   1193c:	11812703          	lw	a4,280(sp)
   11940:	00010b17          	auipc	s6,0x10
   11944:	a50b0b13          	addi	s6,s6,-1456 # 21390 <blanks.4538>
   11948:	068d5263          	bge	s10,s0,119ac <_vfprintf_r+0x13e4>
   1194c:	00700493          	li	s1,7
   11950:	00013b83          	ld	s7,0(sp)
   11954:	00c0006f          	j	11960 <_vfprintf_r+0x1398>
   11958:	ff04041b          	addiw	s0,s0,-16
   1195c:	048d5863          	bge	s10,s0,119ac <_vfprintf_r+0x13e4>
   11960:	0017071b          	addiw	a4,a4,1
   11964:	01078793          	addi	a5,a5,16
   11968:	01633023          	sd	s6,0(t1)
   1196c:	01a33423          	sd	s10,8(t1)
   11970:	12f13023          	sd	a5,288(sp)
   11974:	10e12c23          	sw	a4,280(sp)
   11978:	01030313          	addi	t1,t1,16
   1197c:	fce4dee3          	bge	s1,a4,11958 <_vfprintf_r+0x1390>
   11980:	11010613          	addi	a2,sp,272
   11984:	000b8593          	mv	a1,s7
   11988:	000a8513          	mv	a0,s5
   1198c:	4d5090ef          	jal	ra,1b660 <__sprint_r>
   11990:	00050463          	beqz	a0,11998 <_vfprintf_r+0x13d0>
   11994:	ec5fe06f          	j	10858 <_vfprintf_r+0x290>
   11998:	ff04041b          	addiw	s0,s0,-16
   1199c:	12013783          	ld	a5,288(sp)
   119a0:	11812703          	lw	a4,280(sp)
   119a4:	19010313          	addi	t1,sp,400
   119a8:	fa8d4ce3          	blt	s10,s0,11960 <_vfprintf_r+0x1398>
   119ac:	0017069b          	addiw	a3,a4,1
   119b0:	008787b3          	add	a5,a5,s0
   119b4:	01633023          	sd	s6,0(t1)
   119b8:	00833423          	sd	s0,8(t1)
   119bc:	12f13023          	sd	a5,288(sp)
   119c0:	10d12c23          	sw	a3,280(sp)
   119c4:	00700713          	li	a4,7
   119c8:	ecd75a63          	bge	a4,a3,1109c <_vfprintf_r+0xad4>
   119cc:	00013583          	ld	a1,0(sp)
   119d0:	11010613          	addi	a2,sp,272
   119d4:	000a8513          	mv	a0,s5
   119d8:	489090ef          	jal	ra,1b660 <__sprint_r>
   119dc:	00050463          	beqz	a0,119e4 <_vfprintf_r+0x141c>
   119e0:	e79fe06f          	j	10858 <_vfprintf_r+0x290>
   119e4:	12013783          	ld	a5,288(sp)
   119e8:	eb4ff06f          	j	1109c <_vfprintf_r+0xad4>
   119ec:	00100713          	li	a4,1
   119f0:	46e782e3          	beq	a5,a4,12654 <_vfprintf_r+0x208c>
   119f4:	00200713          	li	a4,2
   119f8:	00048a13          	mv	s4,s1
   119fc:	d2e79663          	bne	a5,a4,10f28 <_vfprintf_r+0x960>
   11a00:	05013703          	ld	a4,80(sp)
   11a04:	18c10c93          	addi	s9,sp,396
   11a08:	000c8d93          	mv	s11,s9
   11a0c:	00fb7793          	andi	a5,s6,15
   11a10:	00f707b3          	add	a5,a4,a5
   11a14:	0007c783          	lbu	a5,0(a5)
   11a18:	fffd8d93          	addi	s11,s11,-1
   11a1c:	004b5b13          	srli	s6,s6,0x4
   11a20:	00fd8023          	sb	a5,0(s11)
   11a24:	fe0b14e3          	bnez	s6,11a0c <_vfprintf_r+0x1444>
   11a28:	41bc8cbb          	subw	s9,s9,s11
   11a2c:	000a0493          	mv	s1,s4
   11a30:	f19fe06f          	j	10948 <_vfprintf_r+0x380>
   11a34:	0e812583          	lw	a1,232(sp)
   11a38:	3eb05e63          	blez	a1,11e34 <_vfprintf_r+0x186c>
   11a3c:	02813703          	ld	a4,40(sp)
   11a40:	02013683          	ld	a3,32(sp)
   11a44:	0007041b          	sext.w	s0,a4
   11a48:	24e6ce63          	blt	a3,a4,11ca4 <_vfprintf_r+0x16dc>
   11a4c:	02805663          	blez	s0,11a78 <_vfprintf_r+0x14b0>
   11a50:	11812683          	lw	a3,280(sp)
   11a54:	008787b3          	add	a5,a5,s0
   11a58:	01b33023          	sd	s11,0(t1)
   11a5c:	0016861b          	addiw	a2,a3,1
   11a60:	00833423          	sd	s0,8(t1)
   11a64:	12f13023          	sd	a5,288(sp)
   11a68:	10c12c23          	sw	a2,280(sp)
   11a6c:	00700693          	li	a3,7
   11a70:	01030313          	addi	t1,t1,16
   11a74:	08c6c0e3          	blt	a3,a2,122f4 <_vfprintf_r+0x1d2c>
   11a78:	fff44693          	not	a3,s0
   11a7c:	02013703          	ld	a4,32(sp)
   11a80:	43f6d693          	srai	a3,a3,0x3f
   11a84:	00d47433          	and	s0,s0,a3
   11a88:	4087043b          	subw	s0,a4,s0
   11a8c:	2e804663          	bgtz	s0,11d78 <_vfprintf_r+0x17b0>
   11a90:	02013703          	ld	a4,32(sp)
   11a94:	4004f693          	andi	a3,s1,1024
   11a98:	00ed8bb3          	add	s7,s11,a4
   11a9c:	64069c63          	bnez	a3,120f4 <_vfprintf_r+0x1b2c>
   11aa0:	0e812403          	lw	s0,232(sp)
   11aa4:	02813703          	ld	a4,40(sp)
   11aa8:	00e44663          	blt	s0,a4,11ab4 <_vfprintf_r+0x14ec>
   11aac:	0014f693          	andi	a3,s1,1
   11ab0:	0a0686e3          	beqz	a3,1235c <_vfprintf_r+0x1d94>
   11ab4:	05813683          	ld	a3,88(sp)
   11ab8:	04813703          	ld	a4,72(sp)
   11abc:	01030313          	addi	t1,t1,16
   11ac0:	fed33823          	sd	a3,-16(t1)
   11ac4:	11812683          	lw	a3,280(sp)
   11ac8:	00e787b3          	add	a5,a5,a4
   11acc:	fee33c23          	sd	a4,-8(t1)
   11ad0:	0016861b          	addiw	a2,a3,1
   11ad4:	12f13023          	sd	a5,288(sp)
   11ad8:	10c12c23          	sw	a2,280(sp)
   11adc:	00700693          	li	a3,7
   11ae0:	52c6c0e3          	blt	a3,a2,12800 <_vfprintf_r+0x2238>
   11ae4:	02813703          	ld	a4,40(sp)
   11ae8:	4087063b          	subw	a2,a4,s0
   11aec:	00ed8733          	add	a4,s11,a4
   11af0:	4177073b          	subw	a4,a4,s7
   11af4:	00060413          	mv	s0,a2
   11af8:	00c75463          	bge	a4,a2,11b00 <_vfprintf_r+0x1538>
   11afc:	0007041b          	sext.w	s0,a4
   11b00:	02805663          	blez	s0,11b2c <_vfprintf_r+0x1564>
   11b04:	11812703          	lw	a4,280(sp)
   11b08:	008787b3          	add	a5,a5,s0
   11b0c:	01733023          	sd	s7,0(t1)
   11b10:	0017069b          	addiw	a3,a4,1
   11b14:	00833423          	sd	s0,8(t1)
   11b18:	12f13023          	sd	a5,288(sp)
   11b1c:	10d12c23          	sw	a3,280(sp)
   11b20:	00700713          	li	a4,7
   11b24:	01030313          	addi	t1,t1,16
   11b28:	56d748e3          	blt	a4,a3,12898 <_vfprintf_r+0x22d0>
   11b2c:	fff44713          	not	a4,s0
   11b30:	43f75713          	srai	a4,a4,0x3f
   11b34:	00e47433          	and	s0,s0,a4
   11b38:	4086043b          	subw	s0,a2,s0
   11b3c:	d4805863          	blez	s0,1108c <_vfprintf_r+0xac4>
   11b40:	11812703          	lw	a4,280(sp)
   11b44:	408d5863          	bge	s10,s0,11f54 <_vfprintf_r+0x198c>
   11b48:	00700c93          	li	s9,7
   11b4c:	00013b03          	ld	s6,0(sp)
   11b50:	00c0006f          	j	11b5c <_vfprintf_r+0x1594>
   11b54:	ff04041b          	addiw	s0,s0,-16
   11b58:	3e8d5e63          	bge	s10,s0,11f54 <_vfprintf_r+0x198c>
   11b5c:	0017071b          	addiw	a4,a4,1
   11b60:	01078793          	addi	a5,a5,16
   11b64:	01833023          	sd	s8,0(t1)
   11b68:	01a33423          	sd	s10,8(t1)
   11b6c:	12f13023          	sd	a5,288(sp)
   11b70:	10e12c23          	sw	a4,280(sp)
   11b74:	01030313          	addi	t1,t1,16
   11b78:	fcecdee3          	bge	s9,a4,11b54 <_vfprintf_r+0x158c>
   11b7c:	11010613          	addi	a2,sp,272
   11b80:	000b0593          	mv	a1,s6
   11b84:	000a8513          	mv	a0,s5
   11b88:	2d9090ef          	jal	ra,1b660 <__sprint_r>
   11b8c:	00050463          	beqz	a0,11b94 <_vfprintf_r+0x15cc>
   11b90:	cc9fe06f          	j	10858 <_vfprintf_r+0x290>
   11b94:	12013783          	ld	a5,288(sp)
   11b98:	11812703          	lw	a4,280(sp)
   11b9c:	19010313          	addi	t1,sp,400
   11ba0:	fb5ff06f          	j	11b54 <_vfprintf_r+0x158c>
   11ba4:	0014f513          	andi	a0,s1,1
   11ba8:	b60514e3          	bnez	a0,11710 <_vfprintf_r+0x1148>
   11bac:	00c33423          	sd	a2,8(t1)
   11bb0:	13913023          	sd	s9,288(sp)
   11bb4:	10f12c23          	sw	a5,280(sp)
   11bb8:	00700713          	li	a4,7
   11bbc:	10f74c63          	blt	a4,a5,11cd4 <_vfprintf_r+0x170c>
   11bc0:	00258b1b          	addiw	s6,a1,2
   11bc4:	02030313          	addi	t1,t1,32
   11bc8:	c05ff06f          	j	117cc <_vfprintf_r+0x1204>
   11bcc:	c17050e3          	blez	s7,117cc <_vfprintf_r+0x1204>
   11bd0:	017d4463          	blt	s10,s7,11bd8 <_vfprintf_r+0x1610>
   11bd4:	0bc0106f          	j	12c90 <_vfprintf_r+0x26c8>
   11bd8:	00700b13          	li	s6,7
   11bdc:	00013d83          	ld	s11,0(sp)
   11be0:	0100006f          	j	11bf0 <_vfprintf_r+0x1628>
   11be4:	ff0b8b9b          	addiw	s7,s7,-16
   11be8:	0d7d5463          	bge	s10,s7,11cb0 <_vfprintf_r+0x16e8>
   11bec:	0017889b          	addiw	a7,a5,1
   11bf0:	010c8c93          	addi	s9,s9,16
   11bf4:	01843023          	sd	s8,0(s0)
   11bf8:	01a43423          	sd	s10,8(s0)
   11bfc:	13913023          	sd	s9,288(sp)
   11c00:	0008879b          	sext.w	a5,a7
   11c04:	11112c23          	sw	a7,280(sp)
   11c08:	01040413          	addi	s0,s0,16
   11c0c:	fcfb5ce3          	bge	s6,a5,11be4 <_vfprintf_r+0x161c>
   11c10:	11010613          	addi	a2,sp,272
   11c14:	000d8593          	mv	a1,s11
   11c18:	000a8513          	mv	a0,s5
   11c1c:	245090ef          	jal	ra,1b660 <__sprint_r>
   11c20:	00050463          	beqz	a0,11c28 <_vfprintf_r+0x1660>
   11c24:	c35fe06f          	j	10858 <_vfprintf_r+0x290>
   11c28:	12013c83          	ld	s9,288(sp)
   11c2c:	11812783          	lw	a5,280(sp)
   11c30:	19010413          	addi	s0,sp,400
   11c34:	fb1ff06f          	j	11be4 <_vfprintf_r+0x161c>
   11c38:	03000793          	li	a5,48
   11c3c:	18f105a3          	sb	a5,395(sp)
   11c40:	18b10d93          	addi	s11,sp,395
   11c44:	d05fe06f          	j	10948 <_vfprintf_r+0x380>
   11c48:	00813783          	ld	a5,8(sp)
   11c4c:	00090d93          	mv	s11,s2
   11c50:	00f73023          	sd	a5,0(a4)
   11c54:	c84ff06f          	j	110d8 <_vfprintf_r+0xb10>
   11c58:	00094403          	lbu	s0,0(s2)
   11c5c:	b29fe06f          	j	10784 <_vfprintf_r+0x1bc>
   11c60:	01013783          	ld	a5,16(sp)
   11c64:	0007bb03          	ld	s6,0(a5)
   11c68:	c7dfe06f          	j	108e4 <_vfprintf_r+0x31c>
   11c6c:	00048a13          	mv	s4,s1
   11c70:	8b8ff06f          	j	10d28 <_vfprintf_r+0x760>
   11c74:	00048a13          	mv	s4,s1
   11c78:	a74ff06f          	j	10eec <_vfprintf_r+0x924>
   11c7c:	01013783          	ld	a5,16(sp)
   11c80:	01913c23          	sd	s9,24(sp)
   11c84:	0007b503          	ld	a0,0(a5)
   11c88:	00878793          	addi	a5,a5,8
   11c8c:	00f13823          	sd	a5,16(sp)
   11c90:	2440f0ef          	jal	ra,20ed4 <__extenddftf2>
   11c94:	10a13023          	sd	a0,256(sp)
   11c98:	10b13423          	sd	a1,264(sp)
   11c9c:	01813303          	ld	t1,24(sp)
   11ca0:	dd9fe06f          	j	10a78 <_vfprintf_r+0x4b0>
   11ca4:	0006841b          	sext.w	s0,a3
   11ca8:	da8044e3          	bgtz	s0,11a50 <_vfprintf_r+0x1488>
   11cac:	dcdff06f          	j	11a78 <_vfprintf_r+0x14b0>
   11cb0:	00178b1b          	addiw	s6,a5,1
   11cb4:	01040793          	addi	a5,s0,16
   11cb8:	017c8cb3          	add	s9,s9,s7
   11cbc:	01843023          	sd	s8,0(s0)
   11cc0:	01743423          	sd	s7,8(s0)
   11cc4:	13913023          	sd	s9,288(sp)
   11cc8:	11612c23          	sw	s6,280(sp)
   11ccc:	00700713          	li	a4,7
   11cd0:	5f675063          	bge	a4,s6,122b0 <_vfprintf_r+0x1ce8>
   11cd4:	00013583          	ld	a1,0(sp)
   11cd8:	11010613          	addi	a2,sp,272
   11cdc:	000a8513          	mv	a0,s5
   11ce0:	181090ef          	jal	ra,1b660 <__sprint_r>
   11ce4:	00050463          	beqz	a0,11cec <_vfprintf_r+0x1724>
   11ce8:	b71fe06f          	j	10858 <_vfprintf_r+0x290>
   11cec:	11812583          	lw	a1,280(sp)
   11cf0:	12013c83          	ld	s9,288(sp)
   11cf4:	1a010313          	addi	t1,sp,416
   11cf8:	00158b1b          	addiw	s6,a1,1
   11cfc:	19010413          	addi	s0,sp,400
   11d00:	acdff06f          	j	117cc <_vfprintf_r+0x1204>
   11d04:	0204e493          	ori	s1,s1,32
   11d08:	00194403          	lbu	s0,1(s2)
   11d0c:	0004849b          	sext.w	s1,s1
   11d10:	00190913          	addi	s2,s2,1
   11d14:	a71fe06f          	j	10784 <_vfprintf_r+0x1bc>
   11d18:	2004e493          	ori	s1,s1,512
   11d1c:	00194403          	lbu	s0,1(s2)
   11d20:	0004849b          	sext.w	s1,s1
   11d24:	00190913          	addi	s2,s2,1
   11d28:	a5dfe06f          	j	10784 <_vfprintf_r+0x1bc>
   11d2c:	00013583          	ld	a1,0(sp)
   11d30:	11010613          	addi	a2,sp,272
   11d34:	000a8513          	mv	a0,s5
   11d38:	129090ef          	jal	ra,1b660 <__sprint_r>
   11d3c:	00050463          	beqz	a0,11d44 <_vfprintf_r+0x177c>
   11d40:	b19fe06f          	j	10858 <_vfprintf_r+0x290>
   11d44:	12013783          	ld	a5,288(sp)
   11d48:	19010313          	addi	t1,sp,400
   11d4c:	f78ff06f          	j	114c4 <_vfprintf_r+0xefc>
   11d50:	000b871b          	sext.w	a4,s7
   11d54:	00600793          	li	a5,6
   11d58:	000b8e13          	mv	t3,s7
   11d5c:	5ae7ee63          	bltu	a5,a4,12318 <_vfprintf_r+0x1d50>
   11d60:	000e0c9b          	sext.w	s9,t3
   11d64:	000c8a13          	mv	s4,s9
   11d68:	01613823          	sd	s6,16(sp)
   11d6c:	0000fd97          	auipc	s11,0xf
   11d70:	6c4d8d93          	addi	s11,s11,1732 # 21430 <zeroes.4539+0x90>
   11d74:	a2cff06f          	j	10fa0 <_vfprintf_r+0x9d8>
   11d78:	11812683          	lw	a3,280(sp)
   11d7c:	328d5863          	bge	s10,s0,120ac <_vfprintf_r+0x1ae4>
   11d80:	00700c93          	li	s9,7
   11d84:	00013b03          	ld	s6,0(sp)
   11d88:	00c0006f          	j	11d94 <_vfprintf_r+0x17cc>
   11d8c:	ff04041b          	addiw	s0,s0,-16
   11d90:	308d5e63          	bge	s10,s0,120ac <_vfprintf_r+0x1ae4>
   11d94:	0016869b          	addiw	a3,a3,1
   11d98:	01078793          	addi	a5,a5,16
   11d9c:	01833023          	sd	s8,0(t1)
   11da0:	01a33423          	sd	s10,8(t1)
   11da4:	12f13023          	sd	a5,288(sp)
   11da8:	10d12c23          	sw	a3,280(sp)
   11dac:	01030313          	addi	t1,t1,16
   11db0:	fcdcdee3          	bge	s9,a3,11d8c <_vfprintf_r+0x17c4>
   11db4:	11010613          	addi	a2,sp,272
   11db8:	000b0593          	mv	a1,s6
   11dbc:	000a8513          	mv	a0,s5
   11dc0:	0a1090ef          	jal	ra,1b660 <__sprint_r>
   11dc4:	00050463          	beqz	a0,11dcc <_vfprintf_r+0x1804>
   11dc8:	a91fe06f          	j	10858 <_vfprintf_r+0x290>
   11dcc:	12013783          	ld	a5,288(sp)
   11dd0:	11812683          	lw	a3,280(sp)
   11dd4:	19010313          	addi	t1,sp,400
   11dd8:	fb5ff06f          	j	11d8c <_vfprintf_r+0x17c4>
   11ddc:	000d8493          	mv	s1,s11
   11de0:	981fe06f          	j	10760 <_vfprintf_r+0x198>
   11de4:	00013583          	ld	a1,0(sp)
   11de8:	11010613          	addi	a2,sp,272
   11dec:	000a8513          	mv	a0,s5
   11df0:	071090ef          	jal	ra,1b660 <__sprint_r>
   11df4:	00050463          	beqz	a0,11dfc <_vfprintf_r+0x1834>
   11df8:	a61fe06f          	j	10858 <_vfprintf_r+0x290>
   11dfc:	12013c83          	ld	s9,288(sp)
   11e00:	11812783          	lw	a5,280(sp)
   11e04:	19010413          	addi	s0,sp,400
   11e08:	921ff06f          	j	11728 <_vfprintf_r+0x1160>
   11e0c:	00013583          	ld	a1,0(sp)
   11e10:	11010613          	addi	a2,sp,272
   11e14:	000a8513          	mv	a0,s5
   11e18:	049090ef          	jal	ra,1b660 <__sprint_r>
   11e1c:	00050463          	beqz	a0,11e24 <_vfprintf_r+0x185c>
   11e20:	a39fe06f          	j	10858 <_vfprintf_r+0x290>
   11e24:	12013c83          	ld	s9,288(sp)
   11e28:	11812783          	lw	a5,280(sp)
   11e2c:	19010413          	addi	s0,sp,400
   11e30:	929ff06f          	j	11758 <_vfprintf_r+0x1190>
   11e34:	11812683          	lw	a3,280(sp)
   11e38:	0000f617          	auipc	a2,0xf
   11e3c:	60060613          	addi	a2,a2,1536 # 21438 <zeroes.4539+0x98>
   11e40:	00c33023          	sd	a2,0(t1)
   11e44:	0016869b          	addiw	a3,a3,1
   11e48:	00100613          	li	a2,1
   11e4c:	00178793          	addi	a5,a5,1
   11e50:	00c33423          	sd	a2,8(t1)
   11e54:	10d12c23          	sw	a3,280(sp)
   11e58:	0006861b          	sext.w	a2,a3
   11e5c:	12f13023          	sd	a5,288(sp)
   11e60:	00700693          	li	a3,7
   11e64:	01030313          	addi	t1,t1,16
   11e68:	44c6cc63          	blt	a3,a2,122c0 <_vfprintf_r+0x1cf8>
   11e6c:	ac059063          	bnez	a1,1112c <_vfprintf_r+0xb64>
   11e70:	02813703          	ld	a4,40(sp)
   11e74:	0014f693          	andi	a3,s1,1
   11e78:	00d766b3          	or	a3,a4,a3
   11e7c:	a0068863          	beqz	a3,1108c <_vfprintf_r+0xac4>
   11e80:	11812603          	lw	a2,280(sp)
   11e84:	04813703          	ld	a4,72(sp)
   11e88:	05813683          	ld	a3,88(sp)
   11e8c:	00f707b3          	add	a5,a4,a5
   11e90:	00d33023          	sd	a3,0(t1)
   11e94:	0016069b          	addiw	a3,a2,1
   11e98:	00e33423          	sd	a4,8(t1)
   11e9c:	12f13023          	sd	a5,288(sp)
   11ea0:	10d12c23          	sw	a3,280(sp)
   11ea4:	00700613          	li	a2,7
   11ea8:	aad64a63          	blt	a2,a3,1115c <_vfprintf_r+0xb94>
   11eac:	01030313          	addi	t1,t1,16
   11eb0:	ad8ff06f          	j	11188 <_vfprintf_r+0xbc0>
   11eb4:	400a7493          	andi	s1,s4,1024
   11eb8:	01213c23          	sd	s2,24(sp)
   11ebc:	07813903          	ld	s2,120(sp)
   11ec0:	18c10c93          	addi	s9,sp,396
   11ec4:	0004849b          	sext.w	s1,s1
   11ec8:	00000793          	li	a5,0
   11ecc:	000c8d93          	mv	s11,s9
   11ed0:	02813023          	sd	s0,32(sp)
   11ed4:	03313c23          	sd	s3,56(sp)
   11ed8:	000c8413          	mv	s0,s9
   11edc:	000b0993          	mv	s3,s6
   11ee0:	000a8c93          	mv	s9,s5
   11ee4:	00048b13          	mv	s6,s1
   11ee8:	00030a93          	mv	s5,t1
   11eec:	00078493          	mv	s1,a5
   11ef0:	00a00593          	li	a1,10
   11ef4:	00098513          	mv	a0,s3
   11ef8:	bb4fe0ef          	jal	ra,102ac <__umoddi3>
   11efc:	0305051b          	addiw	a0,a0,48
   11f00:	fea40fa3          	sb	a0,-1(s0)
   11f04:	0014849b          	addiw	s1,s1,1
   11f08:	fff40413          	addi	s0,s0,-1
   11f0c:	000b0663          	beqz	s6,11f18 <_vfprintf_r+0x1950>
   11f10:	00094683          	lbu	a3,0(s2)
   11f14:	cad48a63          	beq	s1,a3,113c8 <_vfprintf_r+0xe00>
   11f18:	00a00593          	li	a1,10
   11f1c:	00098513          	mv	a0,s3
   11f20:	b44fe0ef          	jal	ra,10264 <__udivdi3>
   11f24:	00900793          	li	a5,9
   11f28:	cb37f863          	bgeu	a5,s3,113d8 <_vfprintf_r+0xe10>
   11f2c:	00050993          	mv	s3,a0
   11f30:	fc1ff06f          	j	11ef0 <_vfprintf_r+0x1928>
   11f34:	00013583          	ld	a1,0(sp)
   11f38:	11010613          	addi	a2,sp,272
   11f3c:	000a8513          	mv	a0,s5
   11f40:	720090ef          	jal	ra,1b660 <__sprint_r>
   11f44:	00050463          	beqz	a0,11f4c <_vfprintf_r+0x1984>
   11f48:	911fe06f          	j	10858 <_vfprintf_r+0x290>
   11f4c:	19010313          	addi	t1,sp,400
   11f50:	d20ff06f          	j	11470 <_vfprintf_r+0xea8>
   11f54:	0017069b          	addiw	a3,a4,1
   11f58:	01833023          	sd	s8,0(t1)
   11f5c:	00833423          	sd	s0,8(t1)
   11f60:	008787b3          	add	a5,a5,s0
   11f64:	12f13023          	sd	a5,288(sp)
   11f68:	10d12c23          	sw	a3,280(sp)
   11f6c:	00700713          	li	a4,7
   11f70:	90d75c63          	bge	a4,a3,11088 <_vfprintf_r+0xac0>
   11f74:	a38ff06f          	j	111ac <_vfprintf_r+0xbe4>
   11f78:	10013503          	ld	a0,256(sp)
   11f7c:	10813583          	ld	a1,264(sp)
   11f80:	00000613          	li	a2,0
   11f84:	00000693          	li	a3,0
   11f88:	6850d0ef          	jal	ra,1fe0c <__letf2>
   11f8c:	01813303          	ld	t1,24(sp)
   11f90:	08054ce3          	bltz	a0,12828 <_vfprintf_r+0x2260>
   11f94:	0df14783          	lbu	a5,223(sp)
   11f98:	04700693          	li	a3,71
   11f9c:	0000fd97          	auipc	s11,0xf
   11fa0:	444d8d93          	addi	s11,s11,1092 # 213e0 <zeroes.4539+0x40>
   11fa4:	3486c263          	blt	a3,s0,122e8 <_vfprintf_r+0x1d20>
   11fa8:	f7f4f493          	andi	s1,s1,-129
   11fac:	00013c23          	sd	zero,24(sp)
   11fb0:	04013023          	sd	zero,64(sp)
   11fb4:	02013c23          	sd	zero,56(sp)
   11fb8:	02013023          	sd	zero,32(sp)
   11fbc:	0004849b          	sext.w	s1,s1
   11fc0:	00300a13          	li	s4,3
   11fc4:	00300c93          	li	s9,3
   11fc8:	00000b93          	li	s7,0
   11fcc:	00078463          	beqz	a5,11fd4 <_vfprintf_r+0x1a0c>
   11fd0:	99dfe06f          	j	1096c <_vfprintf_r+0x3a4>
   11fd4:	fe1fe06f          	j	10fb4 <_vfprintf_r+0x9ec>
   11fd8:	000d8513          	mv	a0,s11
   11fdc:	07913023          	sd	s9,96(sp)
   11fe0:	4d1060ef          	jal	ra,18cb0 <strlen>
   11fe4:	00050c9b          	sext.w	s9,a0
   11fe8:	fffcca13          	not	s4,s9
   11fec:	0df14783          	lbu	a5,223(sp)
   11ff0:	43fa5a13          	srai	s4,s4,0x3f
   11ff4:	014cfa33          	and	s4,s9,s4
   11ff8:	01613823          	sd	s6,16(sp)
   11ffc:	00013c23          	sd	zero,24(sp)
   12000:	04013023          	sd	zero,64(sp)
   12004:	02013c23          	sd	zero,56(sp)
   12008:	02013023          	sd	zero,32(sp)
   1200c:	000a0a1b          	sext.w	s4,s4
   12010:	00000b93          	li	s7,0
   12014:	06013303          	ld	t1,96(sp)
   12018:	00078463          	beqz	a5,12020 <_vfprintf_r+0x1a58>
   1201c:	951fe06f          	j	1096c <_vfprintf_r+0x3a4>
   12020:	f95fe06f          	j	10fb4 <_vfprintf_r+0x9ec>
   12024:	2004f793          	andi	a5,s1,512
   12028:	3a078063          	beqz	a5,123c8 <_vfprintf_r+0x1e00>
   1202c:	0ffb7b13          	andi	s6,s6,255
   12030:	00e13823          	sd	a4,16(sp)
   12034:	db1fe06f          	j	10de4 <_vfprintf_r+0x81c>
   12038:	2004f793          	andi	a5,s1,512
   1203c:	36078a63          	beqz	a5,123b0 <_vfprintf_r+0x1de8>
   12040:	0ffb7b13          	andi	s6,s6,255
   12044:	00e13823          	sd	a4,16(sp)
   12048:	00048a13          	mv	s4,s1
   1204c:	00100793          	li	a5,1
   12050:	8c5fe06f          	j	10914 <_vfprintf_r+0x34c>
   12054:	2004f793          	andi	a5,s1,512
   12058:	34078063          	beqz	a5,12398 <_vfprintf_r+0x1dd0>
   1205c:	01013783          	ld	a5,16(sp)
   12060:	00048a13          	mv	s4,s1
   12064:	00e13823          	sd	a4,16(sp)
   12068:	00078b03          	lb	s6,0(a5)
   1206c:	000b0793          	mv	a5,s6
   12070:	dd1fe06f          	j	10e40 <_vfprintf_r+0x878>
   12074:	2004f793          	andi	a5,s1,512
   12078:	30078a63          	beqz	a5,1238c <_vfprintf_r+0x1dc4>
   1207c:	0ffb7b13          	andi	s6,s6,255
   12080:	865fe06f          	j	108e4 <_vfprintf_r+0x31c>
   12084:	10813783          	ld	a5,264(sp)
   12088:	3407c863          	bltz	a5,123d8 <_vfprintf_r+0x1e10>
   1208c:	0df14783          	lbu	a5,223(sp)
   12090:	04700693          	li	a3,71
   12094:	0000fd97          	auipc	s11,0xf
   12098:	35cd8d93          	addi	s11,s11,860 # 213f0 <zeroes.4539+0x50>
   1209c:	f086d6e3          	bge	a3,s0,11fa8 <_vfprintf_r+0x19e0>
   120a0:	0000fd97          	auipc	s11,0xf
   120a4:	358d8d93          	addi	s11,s11,856 # 213f8 <zeroes.4539+0x58>
   120a8:	f01ff06f          	j	11fa8 <_vfprintf_r+0x19e0>
   120ac:	0016861b          	addiw	a2,a3,1
   120b0:	008787b3          	add	a5,a5,s0
   120b4:	01833023          	sd	s8,0(t1)
   120b8:	00833423          	sd	s0,8(t1)
   120bc:	12f13023          	sd	a5,288(sp)
   120c0:	10c12c23          	sw	a2,280(sp)
   120c4:	00700693          	li	a3,7
   120c8:	01030313          	addi	t1,t1,16
   120cc:	9cc6d2e3          	bge	a3,a2,11a90 <_vfprintf_r+0x14c8>
   120d0:	00013583          	ld	a1,0(sp)
   120d4:	11010613          	addi	a2,sp,272
   120d8:	000a8513          	mv	a0,s5
   120dc:	584090ef          	jal	ra,1b660 <__sprint_r>
   120e0:	00050463          	beqz	a0,120e8 <_vfprintf_r+0x1b20>
   120e4:	f74fe06f          	j	10858 <_vfprintf_r+0x290>
   120e8:	12013783          	ld	a5,288(sp)
   120ec:	19010313          	addi	t1,sp,400
   120f0:	9a1ff06f          	j	11a90 <_vfprintf_r+0x14c8>
   120f4:	02813703          	ld	a4,40(sp)
   120f8:	03813c83          	ld	s9,56(sp)
   120fc:	03213023          	sd	s2,32(sp)
   12100:	06913023          	sd	s1,96(sp)
   12104:	09313023          	sd	s3,128(sp)
   12108:	04013903          	ld	s2,64(sp)
   1210c:	03413c23          	sd	s4,56(sp)
   12110:	05b13023          	sd	s11,64(sp)
   12114:	00700b13          	li	s6,7
   12118:	00ed8433          	add	s0,s11,a4
   1211c:	08813983          	ld	s3,136(sp)
   12120:	07813483          	ld	s1,120(sp)
   12124:	00013a03          	ld	s4,0(sp)
   12128:	0a0c8063          	beqz	s9,121c8 <_vfprintf_r+0x1c00>
   1212c:	0a091063          	bnez	s2,121cc <_vfprintf_r+0x1c04>
   12130:	fff48493          	addi	s1,s1,-1
   12134:	fffc8c9b          	addiw	s9,s9,-1
   12138:	07013703          	ld	a4,112(sp)
   1213c:	013787b3          	add	a5,a5,s3
   12140:	01333423          	sd	s3,8(t1)
   12144:	00e33023          	sd	a4,0(t1)
   12148:	11812703          	lw	a4,280(sp)
   1214c:	12f13023          	sd	a5,288(sp)
   12150:	01030313          	addi	t1,t1,16
   12154:	0017069b          	addiw	a3,a4,1
   12158:	10d12c23          	sw	a3,280(sp)
   1215c:	10db4263          	blt	s6,a3,12260 <_vfprintf_r+0x1c98>
   12160:	0004c603          	lbu	a2,0(s1)
   12164:	417405bb          	subw	a1,s0,s7
   12168:	0006071b          	sext.w	a4,a2
   1216c:	00070693          	mv	a3,a4
   12170:	00e5d463          	bge	a1,a4,12178 <_vfprintf_r+0x1bb0>
   12174:	00058693          	mv	a3,a1
   12178:	00068d9b          	sext.w	s11,a3
   1217c:	03b05863          	blez	s11,121ac <_vfprintf_r+0x1be4>
   12180:	11812703          	lw	a4,280(sp)
   12184:	01b787b3          	add	a5,a5,s11
   12188:	01733023          	sd	s7,0(t1)
   1218c:	0017061b          	addiw	a2,a4,1
   12190:	01b33423          	sd	s11,8(t1)
   12194:	12f13023          	sd	a5,288(sp)
   12198:	10c12c23          	sw	a2,280(sp)
   1219c:	0ecb4463          	blt	s6,a2,12284 <_vfprintf_r+0x1cbc>
   121a0:	0004c603          	lbu	a2,0(s1)
   121a4:	01030313          	addi	t1,t1,16
   121a8:	0006071b          	sext.w	a4,a2
   121ac:	fffdc593          	not	a1,s11
   121b0:	43f5d593          	srai	a1,a1,0x3f
   121b4:	00bdf6b3          	and	a3,s11,a1
   121b8:	40d70dbb          	subw	s11,a4,a3
   121bc:	01b04c63          	bgtz	s11,121d4 <_vfprintf_r+0x1c0c>
   121c0:	00cb8bb3          	add	s7,s7,a2
   121c4:	f60c94e3          	bnez	s9,1212c <_vfprintf_r+0x1b64>
   121c8:	48090a63          	beqz	s2,1265c <_vfprintf_r+0x2094>
   121cc:	fff9091b          	addiw	s2,s2,-1
   121d0:	f69ff06f          	j	12138 <_vfprintf_r+0x1b70>
   121d4:	11812683          	lw	a3,280(sp)
   121d8:	01bd4863          	blt	s10,s11,121e8 <_vfprintf_r+0x1c20>
   121dc:	0580006f          	j	12234 <_vfprintf_r+0x1c6c>
   121e0:	ff0d8d9b          	addiw	s11,s11,-16
   121e4:	05bd5863          	bge	s10,s11,12234 <_vfprintf_r+0x1c6c>
   121e8:	0016869b          	addiw	a3,a3,1
   121ec:	01078793          	addi	a5,a5,16
   121f0:	01833023          	sd	s8,0(t1)
   121f4:	01a33423          	sd	s10,8(t1)
   121f8:	12f13023          	sd	a5,288(sp)
   121fc:	10d12c23          	sw	a3,280(sp)
   12200:	01030313          	addi	t1,t1,16
   12204:	fcdb5ee3          	bge	s6,a3,121e0 <_vfprintf_r+0x1c18>
   12208:	11010613          	addi	a2,sp,272
   1220c:	000a0593          	mv	a1,s4
   12210:	000a8513          	mv	a0,s5
   12214:	44c090ef          	jal	ra,1b660 <__sprint_r>
   12218:	00050463          	beqz	a0,12220 <_vfprintf_r+0x1c58>
   1221c:	e3cfe06f          	j	10858 <_vfprintf_r+0x290>
   12220:	ff0d8d9b          	addiw	s11,s11,-16
   12224:	12013783          	ld	a5,288(sp)
   12228:	11812683          	lw	a3,280(sp)
   1222c:	19010313          	addi	t1,sp,400
   12230:	fbbd4ce3          	blt	s10,s11,121e8 <_vfprintf_r+0x1c20>
   12234:	0016871b          	addiw	a4,a3,1
   12238:	01b787b3          	add	a5,a5,s11
   1223c:	01833023          	sd	s8,0(t1)
   12240:	01b33423          	sd	s11,8(t1)
   12244:	12f13023          	sd	a5,288(sp)
   12248:	10e12c23          	sw	a4,280(sp)
   1224c:	58eb4463          	blt	s6,a4,127d4 <_vfprintf_r+0x220c>
   12250:	0004c603          	lbu	a2,0(s1)
   12254:	01030313          	addi	t1,t1,16
   12258:	00cb8bb3          	add	s7,s7,a2
   1225c:	f69ff06f          	j	121c4 <_vfprintf_r+0x1bfc>
   12260:	11010613          	addi	a2,sp,272
   12264:	000a0593          	mv	a1,s4
   12268:	000a8513          	mv	a0,s5
   1226c:	3f4090ef          	jal	ra,1b660 <__sprint_r>
   12270:	00050463          	beqz	a0,12278 <_vfprintf_r+0x1cb0>
   12274:	de4fe06f          	j	10858 <_vfprintf_r+0x290>
   12278:	12013783          	ld	a5,288(sp)
   1227c:	19010313          	addi	t1,sp,400
   12280:	ee1ff06f          	j	12160 <_vfprintf_r+0x1b98>
   12284:	11010613          	addi	a2,sp,272
   12288:	000a0593          	mv	a1,s4
   1228c:	000a8513          	mv	a0,s5
   12290:	3d0090ef          	jal	ra,1b660 <__sprint_r>
   12294:	00050463          	beqz	a0,1229c <_vfprintf_r+0x1cd4>
   12298:	dc0fe06f          	j	10858 <_vfprintf_r+0x290>
   1229c:	0004c603          	lbu	a2,0(s1)
   122a0:	12013783          	ld	a5,288(sp)
   122a4:	19010313          	addi	t1,sp,400
   122a8:	0006071b          	sext.w	a4,a2
   122ac:	f01ff06f          	j	121ac <_vfprintf_r+0x1be4>
   122b0:	001b0b1b          	addiw	s6,s6,1
   122b4:	01078313          	addi	t1,a5,16
   122b8:	00078413          	mv	s0,a5
   122bc:	d10ff06f          	j	117cc <_vfprintf_r+0x1204>
   122c0:	00013583          	ld	a1,0(sp)
   122c4:	11010613          	addi	a2,sp,272
   122c8:	000a8513          	mv	a0,s5
   122cc:	394090ef          	jal	ra,1b660 <__sprint_r>
   122d0:	00050463          	beqz	a0,122d8 <_vfprintf_r+0x1d10>
   122d4:	d84fe06f          	j	10858 <_vfprintf_r+0x290>
   122d8:	0e812583          	lw	a1,232(sp)
   122dc:	12013783          	ld	a5,288(sp)
   122e0:	19010313          	addi	t1,sp,400
   122e4:	b89ff06f          	j	11e6c <_vfprintf_r+0x18a4>
   122e8:	0000fd97          	auipc	s11,0xf
   122ec:	100d8d93          	addi	s11,s11,256 # 213e8 <zeroes.4539+0x48>
   122f0:	cb9ff06f          	j	11fa8 <_vfprintf_r+0x19e0>
   122f4:	00013583          	ld	a1,0(sp)
   122f8:	11010613          	addi	a2,sp,272
   122fc:	000a8513          	mv	a0,s5
   12300:	360090ef          	jal	ra,1b660 <__sprint_r>
   12304:	00050463          	beqz	a0,1230c <_vfprintf_r+0x1d44>
   12308:	d50fe06f          	j	10858 <_vfprintf_r+0x290>
   1230c:	12013783          	ld	a5,288(sp)
   12310:	19010313          	addi	t1,sp,400
   12314:	f64ff06f          	j	11a78 <_vfprintf_r+0x14b0>
   12318:	00600e13          	li	t3,6
   1231c:	a45ff06f          	j	11d60 <_vfprintf_r+0x1798>
   12320:	08813783          	ld	a5,136(sp)
   12324:	07013583          	ld	a1,112(sp)
   12328:	00000493          	li	s1,0
   1232c:	40f40433          	sub	s0,s0,a5
   12330:	00078613          	mv	a2,a5
   12334:	00040513          	mv	a0,s0
   12338:	249060ef          	jal	ra,18d80 <strncpy>
   1233c:	00194683          	lbu	a3,1(s2)
   12340:	00098513          	mv	a0,s3
   12344:	00a00593          	li	a1,10
   12348:	00d03733          	snez	a4,a3
   1234c:	00e90933          	add	s2,s2,a4
   12350:	f15fd0ef          	jal	ra,10264 <__udivdi3>
   12354:	00050993          	mv	s3,a0
   12358:	b99ff06f          	j	11ef0 <_vfprintf_r+0x1928>
   1235c:	02813683          	ld	a3,40(sp)
   12360:	00dd8733          	add	a4,s11,a3
   12364:	4086863b          	subw	a2,a3,s0
   12368:	4177083b          	subw	a6,a4,s7
   1236c:	0008041b          	sext.w	s0,a6
   12370:	fb065e63          	bge	a2,a6,11b2c <_vfprintf_r+0x1564>
   12374:	0006041b          	sext.w	s0,a2
   12378:	fb4ff06f          	j	11b2c <_vfprintf_r+0x1564>
   1237c:	00813783          	ld	a5,8(sp)
   12380:	00090d93          	mv	s11,s2
   12384:	00f71023          	sh	a5,0(a4)
   12388:	d51fe06f          	j	110d8 <_vfprintf_r+0xb10>
   1238c:	020b1b13          	slli	s6,s6,0x20
   12390:	020b5b13          	srli	s6,s6,0x20
   12394:	d50fe06f          	j	108e4 <_vfprintf_r+0x31c>
   12398:	01013783          	ld	a5,16(sp)
   1239c:	00048a13          	mv	s4,s1
   123a0:	00e13823          	sd	a4,16(sp)
   123a4:	0007ab03          	lw	s6,0(a5)
   123a8:	000b0793          	mv	a5,s6
   123ac:	a95fe06f          	j	10e40 <_vfprintf_r+0x878>
   123b0:	020b1b13          	slli	s6,s6,0x20
   123b4:	020b5b13          	srli	s6,s6,0x20
   123b8:	00e13823          	sd	a4,16(sp)
   123bc:	00048a13          	mv	s4,s1
   123c0:	00100793          	li	a5,1
   123c4:	d50fe06f          	j	10914 <_vfprintf_r+0x34c>
   123c8:	020b1b13          	slli	s6,s6,0x20
   123cc:	020b5b13          	srli	s6,s6,0x20
   123d0:	00e13823          	sd	a4,16(sp)
   123d4:	a11fe06f          	j	10de4 <_vfprintf_r+0x81c>
   123d8:	02d00793          	li	a5,45
   123dc:	0cf10fa3          	sb	a5,223(sp)
   123e0:	cb1ff06f          	j	12090 <_vfprintf_r+0x1ac8>
   123e4:	03000793          	li	a5,48
   123e8:	0ef10023          	sb	a5,224(sp)
   123ec:	05800713          	li	a4,88
   123f0:	0024e793          	ori	a5,s1,2
   123f4:	0007879b          	sext.w	a5,a5
   123f8:	0ee100a3          	sb	a4,225(sp)
   123fc:	06300693          	li	a3,99
   12400:	04f13023          	sd	a5,64(sp)
   12404:	00013c23          	sd	zero,24(sp)
   12408:	12810d93          	addi	s11,sp,296
   1240c:	6776cc63          	blt	a3,s7,12a84 <_vfprintf_r+0x24bc>
   12410:	10813c83          	ld	s9,264(sp)
   12414:	fdf47793          	andi	a5,s0,-33
   12418:	1024e493          	ori	s1,s1,258
   1241c:	02f13c23          	sd	a5,56(sp)
   12420:	06013023          	sd	zero,96(sp)
   12424:	0004849b          	sext.w	s1,s1
   12428:	10013e83          	ld	t4,256(sp)
   1242c:	380cc863          	bltz	s9,127bc <_vfprintf_r+0x21f4>
   12430:	06100793          	li	a5,97
   12434:	76f40e63          	beq	s0,a5,12bb0 <_vfprintf_r+0x25e8>
   12438:	04100793          	li	a5,65
   1243c:	00f40463          	beq	s0,a5,12444 <_vfprintf_r+0x1e7c>
   12440:	ec4fe06f          	j	10b04 <_vfprintf_r+0x53c>
   12444:	000e8513          	mv	a0,t4
   12448:	000c8593          	mv	a1,s9
   1244c:	02613423          	sd	t1,40(sp)
   12450:	3790e0ef          	jal	ra,20fc8 <__trunctfdf2>
   12454:	0e810593          	addi	a1,sp,232
   12458:	340060ef          	jal	ra,18798 <frexp>
   1245c:	2790e0ef          	jal	ra,20ed4 <__extenddftf2>
   12460:	0000f797          	auipc	a5,0xf
   12464:	f7078793          	addi	a5,a5,-144 # 213d0 <zeroes.4539+0x30>
   12468:	0087b683          	ld	a3,8(a5)
   1246c:	00000613          	li	a2,0
   12470:	27d0d0ef          	jal	ra,1feec <__multf3>
   12474:	00000613          	li	a2,0
   12478:	00000693          	li	a3,0
   1247c:	00050c93          	mv	s9,a0
   12480:	02b13023          	sd	a1,32(sp)
   12484:	01d0d0ef          	jal	ra,1fca0 <__eqtf2>
   12488:	02013f03          	ld	t5,32(sp)
   1248c:	02813303          	ld	t1,40(sp)
   12490:	00051663          	bnez	a0,1249c <_vfprintf_r+0x1ed4>
   12494:	00100793          	li	a5,1
   12498:	0ef12423          	sw	a5,232(sp)
   1249c:	0000f797          	auipc	a5,0xf
   124a0:	f7c78793          	addi	a5,a5,-132 # 21418 <zeroes.4539+0x78>
   124a4:	02f13023          	sd	a5,32(sp)
   124a8:	000b869b          	sext.w	a3,s7
   124ac:	02069793          	slli	a5,a3,0x20
   124b0:	0207d793          	srli	a5,a5,0x20
   124b4:	00178793          	addi	a5,a5,1
   124b8:	00fd8633          	add	a2,s11,a5
   124bc:	0000f797          	auipc	a5,0xf
   124c0:	ef478793          	addi	a5,a5,-268 # 213b0 <zeroes.4539+0x10>
   124c4:	0087b783          	ld	a5,8(a5)
   124c8:	00dd86bb          	addw	a3,s11,a3
   124cc:	09213023          	sd	s2,128(sp)
   124d0:	08813823          	sd	s0,144(sp)
   124d4:	0b313023          	sd	s3,160(sp)
   124d8:	0b713423          	sd	s7,168(sp)
   124dc:	0cc13423          	sd	a2,200(sp)
   124e0:	02f13423          	sd	a5,40(sp)
   124e4:	08913c23          	sd	s1,152(sp)
   124e8:	0a613823          	sd	t1,176(sp)
   124ec:	000d8413          	mv	s0,s11
   124f0:	00060913          	mv	s2,a2
   124f4:	0b513c23          	sd	s5,184(sp)
   124f8:	0db13023          	sd	s11,192(sp)
   124fc:	000c8b13          	mv	s6,s9
   12500:	000f0b93          	mv	s7,t5
   12504:	00068993          	mv	s3,a3
   12508:	0180006f          	j	12520 <_vfprintf_r+0x1f58>
   1250c:	00000613          	li	a2,0
   12510:	00000693          	li	a3,0
   12514:	78c0d0ef          	jal	ra,1fca0 <__eqtf2>
   12518:	5a050c63          	beqz	a0,12ad0 <_vfprintf_r+0x2508>
   1251c:	000c8413          	mv	s0,s9
   12520:	02813683          	ld	a3,40(sp)
   12524:	00000613          	li	a2,0
   12528:	000b0513          	mv	a0,s6
   1252c:	000b8593          	mv	a1,s7
   12530:	1bd0d0ef          	jal	ra,1feec <__multf3>
   12534:	00058a93          	mv	s5,a1
   12538:	00050493          	mv	s1,a0
   1253c:	0a10e0ef          	jal	ra,20ddc <__fixtfsi>
   12540:	00050a1b          	sext.w	s4,a0
   12544:	000a0513          	mv	a0,s4
   12548:	0fd0e0ef          	jal	ra,20e44 <__floatsitf>
   1254c:	00058693          	mv	a3,a1
   12550:	00050613          	mv	a2,a0
   12554:	000a8593          	mv	a1,s5
   12558:	00048513          	mv	a0,s1
   1255c:	0b00e0ef          	jal	ra,2060c <__subtf3>
   12560:	02013783          	ld	a5,32(sp)
   12564:	00140c93          	addi	s9,s0,1
   12568:	00050d93          	mv	s11,a0
   1256c:	014787b3          	add	a5,a5,s4
   12570:	0007c683          	lbu	a3,0(a5)
   12574:	00058493          	mv	s1,a1
   12578:	00050b13          	mv	s6,a0
   1257c:	fedc8fa3          	sb	a3,-1(s9)
   12580:	00058b93          	mv	s7,a1
   12584:	41998abb          	subw	s5,s3,s9
   12588:	f92c92e3          	bne	s9,s2,1250c <_vfprintf_r+0x1f44>
   1258c:	08013903          	ld	s2,128(sp)
   12590:	0a013983          	ld	s3,160(sp)
   12594:	08813023          	sd	s0,128(sp)
   12598:	0a813b83          	ld	s7,168(sp)
   1259c:	0b013303          	ld	t1,176(sp)
   125a0:	09013403          	ld	s0,144(sp)
   125a4:	0b813a83          	ld	s5,184(sp)
   125a8:	0c013d83          	ld	s11,192(sp)
   125ac:	09813483          	ld	s1,152(sp)
   125b0:	0c813b03          	ld	s6,200(sp)
   125b4:	fff00793          	li	a5,-1
   125b8:	00050893          	mv	a7,a0
   125bc:	00058813          	mv	a6,a1
   125c0:	02f13423          	sd	a5,40(sp)
   125c4:	0000f697          	auipc	a3,0xf
   125c8:	dfc68693          	addi	a3,a3,-516 # 213c0 <zeroes.4539+0x20>
   125cc:	0086b783          	ld	a5,8(a3)
   125d0:	00000613          	li	a2,0
   125d4:	00088513          	mv	a0,a7
   125d8:	00078693          	mv	a3,a5
   125dc:	00080593          	mv	a1,a6
   125e0:	08613c23          	sd	t1,152(sp)
   125e4:	08f13823          	sd	a5,144(sp)
   125e8:	0b113423          	sd	a7,168(sp)
   125ec:	0b013023          	sd	a6,160(sp)
   125f0:	73c0d0ef          	jal	ra,1fd2c <__getf2>
   125f4:	09813303          	ld	t1,152(sp)
   125f8:	3ea04663          	bgtz	a0,129e4 <_vfprintf_r+0x241c>
   125fc:	0a813883          	ld	a7,168(sp)
   12600:	0a013803          	ld	a6,160(sp)
   12604:	09013683          	ld	a3,144(sp)
   12608:	00000613          	li	a2,0
   1260c:	00088513          	mv	a0,a7
   12610:	00080593          	mv	a1,a6
   12614:	68c0d0ef          	jal	ra,1fca0 <__eqtf2>
   12618:	09813303          	ld	t1,152(sp)
   1261c:	00051663          	bnez	a0,12628 <_vfprintf_r+0x2060>
   12620:	001a7a13          	andi	s4,s4,1
   12624:	3c0a1063          	bnez	s4,129e4 <_vfprintf_r+0x241c>
   12628:	02813783          	ld	a5,40(sp)
   1262c:	03000613          	li	a2,48
   12630:	00178693          	addi	a3,a5,1
   12634:	00db06b3          	add	a3,s6,a3
   12638:	0007c863          	bltz	a5,12648 <_vfprintf_r+0x2080>
   1263c:	001b0b13          	addi	s6,s6,1
   12640:	fecb0fa3          	sb	a2,-1(s6)
   12644:	ff669ce3          	bne	a3,s6,1263c <_vfprintf_r+0x2074>
   12648:	41bb07bb          	subw	a5,s6,s11
   1264c:	02f13423          	sd	a5,40(sp)
   12650:	d38fe06f          	j	10b88 <_vfprintf_r+0x5c0>
   12654:	00048a13          	mv	s4,s1
   12658:	d59fe06f          	j	113b0 <_vfprintf_r+0xde8>
   1265c:	04013d83          	ld	s11,64(sp)
   12660:	02813703          	ld	a4,40(sp)
   12664:	06913c23          	sd	s1,120(sp)
   12668:	02013903          	ld	s2,32(sp)
   1266c:	00ed86b3          	add	a3,s11,a4
   12670:	08013983          	ld	s3,128(sp)
   12674:	06013483          	ld	s1,96(sp)
   12678:	03813a03          	ld	s4,56(sp)
   1267c:	c376f263          	bgeu	a3,s7,11aa0 <_vfprintf_r+0x14d8>
   12680:	00068b93          	mv	s7,a3
   12684:	c1cff06f          	j	11aa0 <_vfprintf_r+0x14d8>
   12688:	02013703          	ld	a4,32(sp)
   1268c:	ffd00793          	li	a5,-3
   12690:	00f74463          	blt	a4,a5,12698 <_vfprintf_r+0x20d0>
   12694:	00ebda63          	bge	s7,a4,126a8 <_vfprintf_r+0x20e0>
   12698:	ffe4041b          	addiw	s0,s0,-2
   1269c:	fdf47793          	andi	a5,s0,-33
   126a0:	02f13c23          	sd	a5,56(sp)
   126a4:	d0cfe06f          	j	10bb0 <_vfprintf_r+0x5e8>
   126a8:	02813783          	ld	a5,40(sp)
   126ac:	02013703          	ld	a4,32(sp)
   126b0:	20f74c63          	blt	a4,a5,128c8 <_vfprintf_r+0x2300>
   126b4:	04013783          	ld	a5,64(sp)
   126b8:	00070c93          	mv	s9,a4
   126bc:	0017f793          	andi	a5,a5,1
   126c0:	00078663          	beqz	a5,126cc <_vfprintf_r+0x2104>
   126c4:	04813783          	ld	a5,72(sp)
   126c8:	00e78cbb          	addw	s9,a5,a4
   126cc:	04013783          	ld	a5,64(sp)
   126d0:	4007f793          	andi	a5,a5,1024
   126d4:	00078663          	beqz	a5,126e0 <_vfprintf_r+0x2118>
   126d8:	02013783          	ld	a5,32(sp)
   126dc:	42f04c63          	bgtz	a5,12b14 <_vfprintf_r+0x254c>
   126e0:	fffcca13          	not	s4,s9
   126e4:	43fa5a13          	srai	s4,s4,0x3f
   126e8:	014cfa33          	and	s4,s9,s4
   126ec:	000a0a1b          	sext.w	s4,s4
   126f0:	06700413          	li	s0,103
   126f4:	04013023          	sd	zero,64(sp)
   126f8:	02013c23          	sd	zero,56(sp)
   126fc:	df8fe06f          	j	10cf4 <_vfprintf_r+0x72c>
   12700:	0df14783          	lbu	a5,223(sp)
   12704:	00000b93          	li	s7,0
   12708:	00078463          	beqz	a5,12710 <_vfprintf_r+0x2148>
   1270c:	a60fe06f          	j	1096c <_vfprintf_r+0x3a4>
   12710:	8a5fe06f          	j	10fb4 <_vfprintf_r+0x9ec>
   12714:	0e810793          	addi	a5,sp,232
   12718:	00300693          	li	a3,3
   1271c:	000e8593          	mv	a1,t4
   12720:	0f810893          	addi	a7,sp,248
   12724:	0ec10813          	addi	a6,sp,236
   12728:	000b8713          	mv	a4,s7
   1272c:	000c8613          	mv	a2,s9
   12730:	000a8513          	mv	a0,s5
   12734:	02613423          	sd	t1,40(sp)
   12738:	03d13023          	sd	t4,32(sp)
   1273c:	6c1020ef          	jal	ra,155fc <_ldtoa_r>
   12740:	00054683          	lbu	a3,0(a0)
   12744:	03000793          	li	a5,48
   12748:	00050d93          	mv	s11,a0
   1274c:	02013e83          	ld	t4,32(sp)
   12750:	02813303          	ld	t1,40(sp)
   12754:	0ef68063          	beq	a3,a5,12834 <_vfprintf_r+0x226c>
   12758:	0e812783          	lw	a5,232(sp)
   1275c:	017787b3          	add	a5,a5,s7
   12760:	00fd8a33          	add	s4,s11,a5
   12764:	00000613          	li	a2,0
   12768:	00000693          	li	a3,0
   1276c:	000e8513          	mv	a0,t4
   12770:	000c8593          	mv	a1,s9
   12774:	02613023          	sd	t1,32(sp)
   12778:	5280d0ef          	jal	ra,1fca0 <__eqtf2>
   1277c:	000a0793          	mv	a5,s4
   12780:	02013303          	ld	t1,32(sp)
   12784:	00051463          	bnez	a0,1278c <_vfprintf_r+0x21c4>
   12788:	bf8fe06f          	j	10b80 <_vfprintf_r+0x5b8>
   1278c:	0f813783          	ld	a5,248(sp)
   12790:	03000613          	li	a2,48
   12794:	0147e463          	bltu	a5,s4,1279c <_vfprintf_r+0x21d4>
   12798:	be8fe06f          	j	10b80 <_vfprintf_r+0x5b8>
   1279c:	00178713          	addi	a4,a5,1
   127a0:	0ee13c23          	sd	a4,248(sp)
   127a4:	00c78023          	sb	a2,0(a5)
   127a8:	0f813783          	ld	a5,248(sp)
   127ac:	ff47e8e3          	bltu	a5,s4,1279c <_vfprintf_r+0x21d4>
   127b0:	bd0fe06f          	j	10b80 <_vfprintf_r+0x5b8>
   127b4:	00013c23          	sd	zero,24(sp)
   127b8:	00078493          	mv	s1,a5
   127bc:	fff00793          	li	a5,-1
   127c0:	03f79793          	slli	a5,a5,0x3f
   127c4:	00fcccb3          	xor	s9,s9,a5
   127c8:	02d00793          	li	a5,45
   127cc:	06f13023          	sd	a5,96(sp)
   127d0:	c61ff06f          	j	12430 <_vfprintf_r+0x1e68>
   127d4:	11010613          	addi	a2,sp,272
   127d8:	000a0593          	mv	a1,s4
   127dc:	000a8513          	mv	a0,s5
   127e0:	681080ef          	jal	ra,1b660 <__sprint_r>
   127e4:	00050463          	beqz	a0,127ec <_vfprintf_r+0x2224>
   127e8:	870fe06f          	j	10858 <_vfprintf_r+0x290>
   127ec:	0004c603          	lbu	a2,0(s1)
   127f0:	12013783          	ld	a5,288(sp)
   127f4:	19010313          	addi	t1,sp,400
   127f8:	00cb8bb3          	add	s7,s7,a2
   127fc:	9c9ff06f          	j	121c4 <_vfprintf_r+0x1bfc>
   12800:	00013583          	ld	a1,0(sp)
   12804:	11010613          	addi	a2,sp,272
   12808:	000a8513          	mv	a0,s5
   1280c:	655080ef          	jal	ra,1b660 <__sprint_r>
   12810:	00050463          	beqz	a0,12818 <_vfprintf_r+0x2250>
   12814:	844fe06f          	j	10858 <_vfprintf_r+0x290>
   12818:	0e812403          	lw	s0,232(sp)
   1281c:	12013783          	ld	a5,288(sp)
   12820:	19010313          	addi	t1,sp,400
   12824:	ac0ff06f          	j	11ae4 <_vfprintf_r+0x151c>
   12828:	02d00793          	li	a5,45
   1282c:	0cf10fa3          	sb	a5,223(sp)
   12830:	f68ff06f          	j	11f98 <_vfprintf_r+0x19d0>
   12834:	000e8513          	mv	a0,t4
   12838:	00000613          	li	a2,0
   1283c:	00000693          	li	a3,0
   12840:	000c8593          	mv	a1,s9
   12844:	02613423          	sd	t1,40(sp)
   12848:	03d13023          	sd	t4,32(sp)
   1284c:	4540d0ef          	jal	ra,1fca0 <__eqtf2>
   12850:	02013e83          	ld	t4,32(sp)
   12854:	02813303          	ld	t1,40(sp)
   12858:	f00500e3          	beqz	a0,12758 <_vfprintf_r+0x2190>
   1285c:	00100693          	li	a3,1
   12860:	417687bb          	subw	a5,a3,s7
   12864:	0ef12423          	sw	a5,232(sp)
   12868:	ef5ff06f          	j	1275c <_vfprintf_r+0x2194>
   1286c:	0df14783          	lbu	a5,223(sp)
   12870:	01613823          	sd	s6,16(sp)
   12874:	04013023          	sd	zero,64(sp)
   12878:	02013c23          	sd	zero,56(sp)
   1287c:	02013023          	sd	zero,32(sp)
   12880:	000b8a13          	mv	s4,s7
   12884:	000b8c93          	mv	s9,s7
   12888:	00000b93          	li	s7,0
   1288c:	00078463          	beqz	a5,12894 <_vfprintf_r+0x22cc>
   12890:	8dcfe06f          	j	1096c <_vfprintf_r+0x3a4>
   12894:	f20fe06f          	j	10fb4 <_vfprintf_r+0x9ec>
   12898:	00013583          	ld	a1,0(sp)
   1289c:	11010613          	addi	a2,sp,272
   128a0:	000a8513          	mv	a0,s5
   128a4:	5bd080ef          	jal	ra,1b660 <__sprint_r>
   128a8:	00050463          	beqz	a0,128b0 <_vfprintf_r+0x22e8>
   128ac:	fadfd06f          	j	10858 <_vfprintf_r+0x290>
   128b0:	0e812603          	lw	a2,232(sp)
   128b4:	02813703          	ld	a4,40(sp)
   128b8:	12013783          	ld	a5,288(sp)
   128bc:	19010313          	addi	t1,sp,400
   128c0:	40c7063b          	subw	a2,a4,a2
   128c4:	a68ff06f          	j	11b2c <_vfprintf_r+0x1564>
   128c8:	02813703          	ld	a4,40(sp)
   128cc:	04813783          	ld	a5,72(sp)
   128d0:	06700413          	li	s0,103
   128d4:	00e78cbb          	addw	s9,a5,a4
   128d8:	02013703          	ld	a4,32(sp)
   128dc:	38e05063          	blez	a4,12c5c <_vfprintf_r+0x2694>
   128e0:	04013783          	ld	a5,64(sp)
   128e4:	4007f793          	andi	a5,a5,1024
   128e8:	22079863          	bnez	a5,12b18 <_vfprintf_r+0x2550>
   128ec:	fffcca13          	not	s4,s9
   128f0:	43fa5a13          	srai	s4,s4,0x3f
   128f4:	014cfa33          	and	s4,s9,s4
   128f8:	000a0a1b          	sext.w	s4,s4
   128fc:	df9ff06f          	j	126f4 <_vfprintf_r+0x212c>
   12900:	04013783          	ld	a5,64(sp)
   12904:	02013703          	ld	a4,32(sp)
   12908:	0017f793          	andi	a5,a5,1
   1290c:	00fbe7b3          	or	a5,s7,a5
   12910:	0007879b          	sext.w	a5,a5
   12914:	38e05263          	blez	a4,12c98 <_vfprintf_r+0x26d0>
   12918:	30079063          	bnez	a5,12c18 <_vfprintf_r+0x2650>
   1291c:	02013c83          	ld	s9,32(sp)
   12920:	06600413          	li	s0,102
   12924:	fbdff06f          	j	128e0 <_vfprintf_r+0x2318>
   12928:	ff000613          	li	a2,-16
   1292c:	40b0043b          	negw	s0,a1
   12930:	06c5d663          	bge	a1,a2,1299c <_vfprintf_r+0x23d4>
   12934:	00700c93          	li	s9,7
   12938:	00013b03          	ld	s6,0(sp)
   1293c:	00c0006f          	j	12948 <_vfprintf_r+0x2380>
   12940:	ff04041b          	addiw	s0,s0,-16
   12944:	048d5c63          	bge	s10,s0,1299c <_vfprintf_r+0x23d4>
   12948:	0016869b          	addiw	a3,a3,1
   1294c:	01078793          	addi	a5,a5,16
   12950:	01833023          	sd	s8,0(t1)
   12954:	01a33423          	sd	s10,8(t1)
   12958:	12f13023          	sd	a5,288(sp)
   1295c:	10d12c23          	sw	a3,280(sp)
   12960:	01030313          	addi	t1,t1,16
   12964:	fcdcdee3          	bge	s9,a3,12940 <_vfprintf_r+0x2378>
   12968:	11010613          	addi	a2,sp,272
   1296c:	000b0593          	mv	a1,s6
   12970:	000a8513          	mv	a0,s5
   12974:	4ed080ef          	jal	ra,1b660 <__sprint_r>
   12978:	00050463          	beqz	a0,12980 <_vfprintf_r+0x23b8>
   1297c:	eddfd06f          	j	10858 <_vfprintf_r+0x290>
   12980:	12013783          	ld	a5,288(sp)
   12984:	11812683          	lw	a3,280(sp)
   12988:	19010313          	addi	t1,sp,400
   1298c:	fb5ff06f          	j	12940 <_vfprintf_r+0x2378>
   12990:	fff00793          	li	a5,-1
   12994:	00f13423          	sd	a5,8(sp)
   12998:	ee9fd06f          	j	10880 <_vfprintf_r+0x2b8>
   1299c:	0016869b          	addiw	a3,a3,1
   129a0:	008787b3          	add	a5,a5,s0
   129a4:	01833023          	sd	s8,0(t1)
   129a8:	00833423          	sd	s0,8(t1)
   129ac:	12f13023          	sd	a5,288(sp)
   129b0:	10d12c23          	sw	a3,280(sp)
   129b4:	00700613          	li	a2,7
   129b8:	ced65a63          	bge	a2,a3,11eac <_vfprintf_r+0x18e4>
   129bc:	00013583          	ld	a1,0(sp)
   129c0:	11010613          	addi	a2,sp,272
   129c4:	000a8513          	mv	a0,s5
   129c8:	499080ef          	jal	ra,1b660 <__sprint_r>
   129cc:	00050463          	beqz	a0,129d4 <_vfprintf_r+0x240c>
   129d0:	e89fd06f          	j	10858 <_vfprintf_r+0x290>
   129d4:	12013783          	ld	a5,288(sp)
   129d8:	11812683          	lw	a3,280(sp)
   129dc:	19010313          	addi	t1,sp,400
   129e0:	fa8fe06f          	j	11188 <_vfprintf_r+0xbc0>
   129e4:	08013783          	ld	a5,128(sp)
   129e8:	000b0693          	mv	a3,s6
   129ec:	0ef13c23          	sd	a5,248(sp)
   129f0:	02013783          	ld	a5,32(sp)
   129f4:	fffb4603          	lbu	a2,-1(s6)
   129f8:	00f7c583          	lbu	a1,15(a5)
   129fc:	02c59063          	bne	a1,a2,12a1c <_vfprintf_r+0x2454>
   12a00:	03000513          	li	a0,48
   12a04:	fea68fa3          	sb	a0,-1(a3)
   12a08:	0f813683          	ld	a3,248(sp)
   12a0c:	fff68793          	addi	a5,a3,-1
   12a10:	0ef13c23          	sd	a5,248(sp)
   12a14:	fff6c603          	lbu	a2,-1(a3)
   12a18:	fec586e3          	beq	a1,a2,12a04 <_vfprintf_r+0x243c>
   12a1c:	0016059b          	addiw	a1,a2,1
   12a20:	03900513          	li	a0,57
   12a24:	0ff5f593          	andi	a1,a1,255
   12a28:	00a60663          	beq	a2,a0,12a34 <_vfprintf_r+0x246c>
   12a2c:	feb68fa3          	sb	a1,-1(a3)
   12a30:	c19ff06f          	j	12648 <_vfprintf_r+0x2080>
   12a34:	02013783          	ld	a5,32(sp)
   12a38:	00a7c583          	lbu	a1,10(a5)
   12a3c:	feb68fa3          	sb	a1,-1(a3)
   12a40:	c09ff06f          	j	12648 <_vfprintf_r+0x2080>
   12a44:	001b8a1b          	addiw	s4,s7,1
   12a48:	000a0713          	mv	a4,s4
   12a4c:	000e8593          	mv	a1,t4
   12a50:	0f810893          	addi	a7,sp,248
   12a54:	0ec10813          	addi	a6,sp,236
   12a58:	0e810793          	addi	a5,sp,232
   12a5c:	00200693          	li	a3,2
   12a60:	000c8613          	mv	a2,s9
   12a64:	000a8513          	mv	a0,s5
   12a68:	03d13023          	sd	t4,32(sp)
   12a6c:	391020ef          	jal	ra,155fc <_ldtoa_r>
   12a70:	00050d93          	mv	s11,a0
   12a74:	02013e83          	ld	t4,32(sp)
   12a78:	02813303          	ld	t1,40(sp)
   12a7c:	014d8a33          	add	s4,s11,s4
   12a80:	ce5ff06f          	j	12764 <_vfprintf_r+0x219c>
   12a84:	001b859b          	addiw	a1,s7,1
   12a88:	000a8513          	mv	a0,s5
   12a8c:	00613c23          	sd	t1,24(sp)
   12a90:	180040ef          	jal	ra,16c10 <_malloc_r>
   12a94:	00050d93          	mv	s11,a0
   12a98:	01813303          	ld	t1,24(sp)
   12a9c:	24050e63          	beqz	a0,12cf8 <_vfprintf_r+0x2730>
   12aa0:	00a13c23          	sd	a0,24(sp)
   12aa4:	96dff06f          	j	12410 <_vfprintf_r+0x1e48>
   12aa8:	03000793          	li	a5,48
   12aac:	0ef10023          	sb	a5,224(sp)
   12ab0:	07800713          	li	a4,120
   12ab4:	93dff06f          	j	123f0 <_vfprintf_r+0x1e28>
   12ab8:	000b8463          	beqz	s7,12ac0 <_vfprintf_r+0x24f8>
   12abc:	820fe06f          	j	10adc <_vfprintf_r+0x514>
   12ac0:	00100b93          	li	s7,1
   12ac4:	818fe06f          	j	10adc <_vfprintf_r+0x514>
   12ac8:	00600b93          	li	s7,6
   12acc:	810fe06f          	j	10adc <_vfprintf_r+0x514>
   12ad0:	03513423          	sd	s5,40(sp)
   12ad4:	08013903          	ld	s2,128(sp)
   12ad8:	000d8893          	mv	a7,s11
   12adc:	08813023          	sd	s0,128(sp)
   12ae0:	00048813          	mv	a6,s1
   12ae4:	0a013983          	ld	s3,160(sp)
   12ae8:	0a813b83          	ld	s7,168(sp)
   12aec:	0b013303          	ld	t1,176(sp)
   12af0:	09013403          	ld	s0,144(sp)
   12af4:	000c8b13          	mv	s6,s9
   12af8:	0b813a83          	ld	s5,184(sp)
   12afc:	0c013d83          	ld	s11,192(sp)
   12b00:	09813483          	ld	s1,152(sp)
   12b04:	ac1ff06f          	j	125c4 <_vfprintf_r+0x1ffc>
   12b08:	00f72023          	sw	a5,0(a4)
   12b0c:	00090d93          	mv	s11,s2
   12b10:	dc8fe06f          	j	110d8 <_vfprintf_r+0xb10>
   12b14:	06700413          	li	s0,103
   12b18:	07813503          	ld	a0,120(sp)
   12b1c:	02013703          	ld	a4,32(sp)
   12b20:	04013023          	sd	zero,64(sp)
   12b24:	00054783          	lbu	a5,0(a0)
   12b28:	02013c23          	sd	zero,56(sp)
   12b2c:	0ff00593          	li	a1,255
   12b30:	04b78063          	beq	a5,a1,12b70 <_vfprintf_r+0x25a8>
   12b34:	0007869b          	sext.w	a3,a5
   12b38:	02e6dc63          	bge	a3,a4,12b70 <_vfprintf_r+0x25a8>
   12b3c:	00154603          	lbu	a2,1(a0)
   12b40:	40d7073b          	subw	a4,a4,a3
   12b44:	00060e63          	beqz	a2,12b60 <_vfprintf_r+0x2598>
   12b48:	03813783          	ld	a5,56(sp)
   12b4c:	00150513          	addi	a0,a0,1
   12b50:	0017879b          	addiw	a5,a5,1
   12b54:	02f13c23          	sd	a5,56(sp)
   12b58:	00060793          	mv	a5,a2
   12b5c:	fd5ff06f          	j	12b30 <_vfprintf_r+0x2568>
   12b60:	04013683          	ld	a3,64(sp)
   12b64:	0016869b          	addiw	a3,a3,1
   12b68:	04d13023          	sd	a3,64(sp)
   12b6c:	fc5ff06f          	j	12b30 <_vfprintf_r+0x2568>
   12b70:	02e13023          	sd	a4,32(sp)
   12b74:	03813783          	ld	a5,56(sp)
   12b78:	04013703          	ld	a4,64(sp)
   12b7c:	08813583          	ld	a1,136(sp)
   12b80:	06a13c23          	sd	a0,120(sp)
   12b84:	00e7853b          	addw	a0,a5,a4
   12b88:	08613023          	sd	t1,128(sp)
   12b8c:	5f40e0ef          	jal	ra,21180 <__muldi3>
   12b90:	0195053b          	addw	a0,a0,s9
   12b94:	00050c9b          	sext.w	s9,a0
   12b98:	fffcca13          	not	s4,s9
   12b9c:	43fa5a13          	srai	s4,s4,0x3f
   12ba0:	01457533          	and	a0,a0,s4
   12ba4:	00050a1b          	sext.w	s4,a0
   12ba8:	08013303          	ld	t1,128(sp)
   12bac:	948fe06f          	j	10cf4 <_vfprintf_r+0x72c>
   12bb0:	000e8513          	mv	a0,t4
   12bb4:	000c8593          	mv	a1,s9
   12bb8:	02613423          	sd	t1,40(sp)
   12bbc:	40c0e0ef          	jal	ra,20fc8 <__trunctfdf2>
   12bc0:	0e810593          	addi	a1,sp,232
   12bc4:	3d5050ef          	jal	ra,18798 <frexp>
   12bc8:	30c0e0ef          	jal	ra,20ed4 <__extenddftf2>
   12bcc:	0000f797          	auipc	a5,0xf
   12bd0:	80478793          	addi	a5,a5,-2044 # 213d0 <zeroes.4539+0x30>
   12bd4:	0087b683          	ld	a3,8(a5)
   12bd8:	00000613          	li	a2,0
   12bdc:	3100d0ef          	jal	ra,1feec <__multf3>
   12be0:	00000613          	li	a2,0
   12be4:	00000693          	li	a3,0
   12be8:	00050c93          	mv	s9,a0
   12bec:	02b13023          	sd	a1,32(sp)
   12bf0:	0b00d0ef          	jal	ra,1fca0 <__eqtf2>
   12bf4:	02013f03          	ld	t5,32(sp)
   12bf8:	02813303          	ld	t1,40(sp)
   12bfc:	00051663          	bnez	a0,12c08 <_vfprintf_r+0x2640>
   12c00:	00100793          	li	a5,1
   12c04:	0ef12423          	sw	a5,232(sp)
   12c08:	0000e797          	auipc	a5,0xe
   12c0c:	7f878793          	addi	a5,a5,2040 # 21400 <zeroes.4539+0x60>
   12c10:	02f13023          	sd	a5,32(sp)
   12c14:	895ff06f          	j	124a8 <_vfprintf_r+0x1ee0>
   12c18:	04813783          	ld	a5,72(sp)
   12c1c:	06600413          	li	s0,102
   12c20:	00e78cbb          	addw	s9,a5,a4
   12c24:	017c8cbb          	addw	s9,s9,s7
   12c28:	cb9ff06f          	j	128e0 <_vfprintf_r+0x2318>
   12c2c:	0f210793          	addi	a5,sp,242
   12c30:	00069863          	bnez	a3,12c40 <_vfprintf_r+0x2678>
   12c34:	03000793          	li	a5,48
   12c38:	0ef10923          	sb	a5,242(sp)
   12c3c:	0f310793          	addi	a5,sp,243
   12c40:	21010713          	addi	a4,sp,528
   12c44:	030a0a1b          	addiw	s4,s4,48
   12c48:	40e786b3          	sub	a3,a5,a4
   12c4c:	01478023          	sb	s4,0(a5)
   12c50:	1216879b          	addiw	a5,a3,289
   12c54:	06f13423          	sd	a5,104(sp)
   12c58:	84cfe06f          	j	10ca4 <_vfprintf_r+0x6dc>
   12c5c:	40ec87bb          	subw	a5,s9,a4
   12c60:	0017879b          	addiw	a5,a5,1
   12c64:	00078c9b          	sext.w	s9,a5
   12c68:	fffcca13          	not	s4,s9
   12c6c:	43fa5a13          	srai	s4,s4,0x3f
   12c70:	0147f7b3          	and	a5,a5,s4
   12c74:	00078a1b          	sext.w	s4,a5
   12c78:	a7dff06f          	j	126f4 <_vfprintf_r+0x212c>
   12c7c:	04013703          	ld	a4,64(sp)
   12c80:	00177693          	andi	a3,a4,1
   12c84:	00069463          	bnez	a3,12c8c <_vfprintf_r+0x26c4>
   12c88:	840fe06f          	j	10cc8 <_vfprintf_r+0x700>
   12c8c:	834fe06f          	j	10cc0 <_vfprintf_r+0x6f8>
   12c90:	00030793          	mv	a5,t1
   12c94:	824ff06f          	j	11cb8 <_vfprintf_r+0x16f0>
   12c98:	00079a63          	bnez	a5,12cac <_vfprintf_r+0x26e4>
   12c9c:	00100a13          	li	s4,1
   12ca0:	06600413          	li	s0,102
   12ca4:	00100c93          	li	s9,1
   12ca8:	a4dff06f          	j	126f4 <_vfprintf_r+0x212c>
   12cac:	04813783          	ld	a5,72(sp)
   12cb0:	06600413          	li	s0,102
   12cb4:	0017879b          	addiw	a5,a5,1
   12cb8:	01778e3b          	addw	t3,a5,s7
   12cbc:	000e0c9b          	sext.w	s9,t3
   12cc0:	fffcca13          	not	s4,s9
   12cc4:	43fa5a13          	srai	s4,s4,0x3f
   12cc8:	014e7e33          	and	t3,t3,s4
   12ccc:	000e0a1b          	sext.w	s4,t3
   12cd0:	a25ff06f          	j	126f4 <_vfprintf_r+0x212c>
   12cd4:	01013703          	ld	a4,16(sp)
   12cd8:	00072b83          	lw	s7,0(a4)
   12cdc:	00870713          	addi	a4,a4,8
   12ce0:	000bd463          	bgez	s7,12ce8 <_vfprintf_r+0x2720>
   12ce4:	fff00b93          	li	s7,-1
   12ce8:	00194403          	lbu	s0,1(s2)
   12cec:	00e13823          	sd	a4,16(sp)
   12cf0:	00078913          	mv	s2,a5
   12cf4:	a91fd06f          	j	10784 <_vfprintf_r+0x1bc>
   12cf8:	00013703          	ld	a4,0(sp)
   12cfc:	01075783          	lhu	a5,16(a4)
   12d00:	0407e793          	ori	a5,a5,64
   12d04:	00f71823          	sh	a5,16(a4)
   12d08:	b65fd06f          	j	1086c <_vfprintf_r+0x2a4>
   12d0c:	000b8a13          	mv	s4,s7
   12d10:	014d8a33          	add	s4,s11,s4
   12d14:	a51ff06f          	j	12764 <_vfprintf_r+0x219c>
   12d18:	00200793          	li	a5,2
   12d1c:	06f13423          	sd	a5,104(sp)
   12d20:	f85fd06f          	j	10ca4 <_vfprintf_r+0x6dc>

0000000000012d24 <vfprintf>:
   12d24:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   12d28:	00060693          	mv	a3,a2
   12d2c:	00058613          	mv	a2,a1
   12d30:	00050593          	mv	a1,a0
   12d34:	0007b503          	ld	a0,0(a5)
   12d38:	891fd06f          	j	105c8 <_vfprintf_r>

0000000000012d3c <__sbprintf>:
   12d3c:	0105d783          	lhu	a5,16(a1)
   12d40:	0ac5ae03          	lw	t3,172(a1)
   12d44:	0125d303          	lhu	t1,18(a1)
   12d48:	0305b883          	ld	a7,48(a1)
   12d4c:	0405b803          	ld	a6,64(a1)
   12d50:	b3010113          	addi	sp,sp,-1232
   12d54:	ffd7f793          	andi	a5,a5,-3
   12d58:	40000713          	li	a4,1024
   12d5c:	4c813023          	sd	s0,1216(sp)
   12d60:	00f11823          	sh	a5,16(sp)
   12d64:	00058413          	mv	s0,a1
   12d68:	0b010793          	addi	a5,sp,176
   12d6c:	00010593          	mv	a1,sp
   12d70:	4a913c23          	sd	s1,1208(sp)
   12d74:	4b213823          	sd	s2,1200(sp)
   12d78:	4c113423          	sd	ra,1224(sp)
   12d7c:	00050913          	mv	s2,a0
   12d80:	0bc12623          	sw	t3,172(sp)
   12d84:	00611923          	sh	t1,18(sp)
   12d88:	03113823          	sd	a7,48(sp)
   12d8c:	05013023          	sd	a6,64(sp)
   12d90:	00f13023          	sd	a5,0(sp)
   12d94:	00f13c23          	sd	a5,24(sp)
   12d98:	00e12623          	sw	a4,12(sp)
   12d9c:	02e12023          	sw	a4,32(sp)
   12da0:	02012423          	sw	zero,40(sp)
   12da4:	825fd0ef          	jal	ra,105c8 <_vfprintf_r>
   12da8:	00050493          	mv	s1,a0
   12dac:	02055c63          	bgez	a0,12de4 <__sbprintf+0xa8>
   12db0:	01015783          	lhu	a5,16(sp)
   12db4:	0407f793          	andi	a5,a5,64
   12db8:	00078863          	beqz	a5,12dc8 <__sbprintf+0x8c>
   12dbc:	01045783          	lhu	a5,16(s0)
   12dc0:	0407e793          	ori	a5,a5,64
   12dc4:	00f41823          	sh	a5,16(s0)
   12dc8:	4c813083          	ld	ra,1224(sp)
   12dcc:	4c013403          	ld	s0,1216(sp)
   12dd0:	00048513          	mv	a0,s1
   12dd4:	4b013903          	ld	s2,1200(sp)
   12dd8:	4b813483          	ld	s1,1208(sp)
   12ddc:	4d010113          	addi	sp,sp,1232
   12de0:	00008067          	ret
   12de4:	00010593          	mv	a1,sp
   12de8:	00090513          	mv	a0,s2
   12dec:	5a4000ef          	jal	ra,13390 <_fflush_r>
   12df0:	fc0500e3          	beqz	a0,12db0 <__sbprintf+0x74>
   12df4:	fff00493          	li	s1,-1
   12df8:	fb9ff06f          	j	12db0 <__sbprintf+0x74>

0000000000012dfc <__swsetup_r>:
   12dfc:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   12e00:	0007b783          	ld	a5,0(a5)
   12e04:	fe010113          	addi	sp,sp,-32
   12e08:	00813823          	sd	s0,16(sp)
   12e0c:	00913423          	sd	s1,8(sp)
   12e10:	00113c23          	sd	ra,24(sp)
   12e14:	00050493          	mv	s1,a0
   12e18:	00058413          	mv	s0,a1
   12e1c:	00078663          	beqz	a5,12e28 <__swsetup_r+0x2c>
   12e20:	0507a703          	lw	a4,80(a5)
   12e24:	08070663          	beqz	a4,12eb0 <__swsetup_r+0xb4>
   12e28:	01041703          	lh	a4,16(s0)
   12e2c:	03071793          	slli	a5,a4,0x30
   12e30:	0307d793          	srli	a5,a5,0x30
   12e34:	0087f693          	andi	a3,a5,8
   12e38:	08068a63          	beqz	a3,12ecc <__swsetup_r+0xd0>
   12e3c:	01843683          	ld	a3,24(s0)
   12e40:	0a068a63          	beqz	a3,12ef4 <__swsetup_r+0xf8>
   12e44:	0017f713          	andi	a4,a5,1
   12e48:	02070863          	beqz	a4,12e78 <__swsetup_r+0x7c>
   12e4c:	02042783          	lw	a5,32(s0)
   12e50:	00042623          	sw	zero,12(s0)
   12e54:	00000513          	li	a0,0
   12e58:	40f007bb          	negw	a5,a5
   12e5c:	02f42423          	sw	a5,40(s0)
   12e60:	02068a63          	beqz	a3,12e94 <__swsetup_r+0x98>
   12e64:	01813083          	ld	ra,24(sp)
   12e68:	01013403          	ld	s0,16(sp)
   12e6c:	00813483          	ld	s1,8(sp)
   12e70:	02010113          	addi	sp,sp,32
   12e74:	00008067          	ret
   12e78:	0027f793          	andi	a5,a5,2
   12e7c:	00000713          	li	a4,0
   12e80:	00079463          	bnez	a5,12e88 <__swsetup_r+0x8c>
   12e84:	02042703          	lw	a4,32(s0)
   12e88:	00e42623          	sw	a4,12(s0)
   12e8c:	00000513          	li	a0,0
   12e90:	fc069ae3          	bnez	a3,12e64 <__swsetup_r+0x68>
   12e94:	01041783          	lh	a5,16(s0)
   12e98:	0807f713          	andi	a4,a5,128
   12e9c:	fc0704e3          	beqz	a4,12e64 <__swsetup_r+0x68>
   12ea0:	0407e793          	ori	a5,a5,64
   12ea4:	00f41823          	sh	a5,16(s0)
   12ea8:	fff00513          	li	a0,-1
   12eac:	fb9ff06f          	j	12e64 <__swsetup_r+0x68>
   12eb0:	00078513          	mv	a0,a5
   12eb4:	085000ef          	jal	ra,13738 <__sinit>
   12eb8:	01041703          	lh	a4,16(s0)
   12ebc:	03071793          	slli	a5,a4,0x30
   12ec0:	0307d793          	srli	a5,a5,0x30
   12ec4:	0087f693          	andi	a3,a5,8
   12ec8:	f6069ae3          	bnez	a3,12e3c <__swsetup_r+0x40>
   12ecc:	0107f693          	andi	a3,a5,16
   12ed0:	06068e63          	beqz	a3,12f4c <__swsetup_r+0x150>
   12ed4:	0047f793          	andi	a5,a5,4
   12ed8:	04079063          	bnez	a5,12f18 <__swsetup_r+0x11c>
   12edc:	01843683          	ld	a3,24(s0)
   12ee0:	00876793          	ori	a5,a4,8
   12ee4:	00f41823          	sh	a5,16(s0)
   12ee8:	03079793          	slli	a5,a5,0x30
   12eec:	0307d793          	srli	a5,a5,0x30
   12ef0:	f4069ae3          	bnez	a3,12e44 <__swsetup_r+0x48>
   12ef4:	2807f713          	andi	a4,a5,640
   12ef8:	20000613          	li	a2,512
   12efc:	f4c704e3          	beq	a4,a2,12e44 <__swsetup_r+0x48>
   12f00:	00040593          	mv	a1,s0
   12f04:	00048513          	mv	a0,s1
   12f08:	3e9030ef          	jal	ra,16af0 <__smakebuf_r>
   12f0c:	01045783          	lhu	a5,16(s0)
   12f10:	01843683          	ld	a3,24(s0)
   12f14:	f31ff06f          	j	12e44 <__swsetup_r+0x48>
   12f18:	05843583          	ld	a1,88(s0)
   12f1c:	00058e63          	beqz	a1,12f38 <__swsetup_r+0x13c>
   12f20:	07440793          	addi	a5,s0,116
   12f24:	00f58863          	beq	a1,a5,12f34 <__swsetup_r+0x138>
   12f28:	00048513          	mv	a0,s1
   12f2c:	18d000ef          	jal	ra,138b8 <_free_r>
   12f30:	01041703          	lh	a4,16(s0)
   12f34:	04043c23          	sd	zero,88(s0)
   12f38:	01843683          	ld	a3,24(s0)
   12f3c:	fdb77713          	andi	a4,a4,-37
   12f40:	00042423          	sw	zero,8(s0)
   12f44:	00d43023          	sd	a3,0(s0)
   12f48:	f99ff06f          	j	12ee0 <__swsetup_r+0xe4>
   12f4c:	00900793          	li	a5,9
   12f50:	00f4a023          	sw	a5,0(s1)
   12f54:	04076713          	ori	a4,a4,64
   12f58:	00e41823          	sh	a4,16(s0)
   12f5c:	fff00513          	li	a0,-1
   12f60:	f05ff06f          	j	12e64 <__swsetup_r+0x68>

0000000000012f64 <__register_exitproc>:
   12f64:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   12f68:	0007b703          	ld	a4,0(a5)
   12f6c:	1f873783          	ld	a5,504(a4)
   12f70:	06078063          	beqz	a5,12fd0 <__register_exitproc+0x6c>
   12f74:	0087a703          	lw	a4,8(a5)
   12f78:	01f00813          	li	a6,31
   12f7c:	08e84663          	blt	a6,a4,13008 <__register_exitproc+0xa4>
   12f80:	02050863          	beqz	a0,12fb0 <__register_exitproc+0x4c>
   12f84:	00371813          	slli	a6,a4,0x3
   12f88:	01078833          	add	a6,a5,a6
   12f8c:	10c83823          	sd	a2,272(a6)
   12f90:	3107a883          	lw	a7,784(a5)
   12f94:	00100613          	li	a2,1
   12f98:	00e6163b          	sllw	a2,a2,a4
   12f9c:	00c8e8b3          	or	a7,a7,a2
   12fa0:	3117a823          	sw	a7,784(a5)
   12fa4:	20d83823          	sd	a3,528(a6)
   12fa8:	00200693          	li	a3,2
   12fac:	02d50863          	beq	a0,a3,12fdc <__register_exitproc+0x78>
   12fb0:	00270693          	addi	a3,a4,2
   12fb4:	00369693          	slli	a3,a3,0x3
   12fb8:	0017071b          	addiw	a4,a4,1
   12fbc:	00e7a423          	sw	a4,8(a5)
   12fc0:	00d787b3          	add	a5,a5,a3
   12fc4:	00b7b023          	sd	a1,0(a5)
   12fc8:	00000513          	li	a0,0
   12fcc:	00008067          	ret
   12fd0:	20070793          	addi	a5,a4,512
   12fd4:	1ef73c23          	sd	a5,504(a4)
   12fd8:	f9dff06f          	j	12f74 <__register_exitproc+0x10>
   12fdc:	3147a683          	lw	a3,788(a5)
   12fe0:	00000513          	li	a0,0
   12fe4:	00c6e633          	or	a2,a3,a2
   12fe8:	00270693          	addi	a3,a4,2
   12fec:	00369693          	slli	a3,a3,0x3
   12ff0:	0017071b          	addiw	a4,a4,1
   12ff4:	30c7aa23          	sw	a2,788(a5)
   12ff8:	00e7a423          	sw	a4,8(a5)
   12ffc:	00d787b3          	add	a5,a5,a3
   13000:	00b7b023          	sd	a1,0(a5)
   13004:	00008067          	ret
   13008:	fff00513          	li	a0,-1
   1300c:	00008067          	ret

0000000000013010 <__call_exitprocs>:
   13010:	fb010113          	addi	sp,sp,-80
   13014:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13018:	01813023          	sd	s8,0(sp)
   1301c:	0007bc03          	ld	s8,0(a5)
   13020:	03313423          	sd	s3,40(sp)
   13024:	03413023          	sd	s4,32(sp)
   13028:	01513c23          	sd	s5,24(sp)
   1302c:	01613823          	sd	s6,16(sp)
   13030:	04113423          	sd	ra,72(sp)
   13034:	04813023          	sd	s0,64(sp)
   13038:	02913c23          	sd	s1,56(sp)
   1303c:	03213823          	sd	s2,48(sp)
   13040:	01713423          	sd	s7,8(sp)
   13044:	00050a93          	mv	s5,a0
   13048:	00058b13          	mv	s6,a1
   1304c:	00100a13          	li	s4,1
   13050:	fff00993          	li	s3,-1
   13054:	1f8c3903          	ld	s2,504(s8)
   13058:	02090863          	beqz	s2,13088 <__call_exitprocs+0x78>
   1305c:	00892483          	lw	s1,8(s2)
   13060:	fff4841b          	addiw	s0,s1,-1
   13064:	02044263          	bltz	s0,13088 <__call_exitprocs+0x78>
   13068:	00349493          	slli	s1,s1,0x3
   1306c:	009904b3          	add	s1,s2,s1
   13070:	040b0463          	beqz	s6,130b8 <__call_exitprocs+0xa8>
   13074:	2084b783          	ld	a5,520(s1)
   13078:	05678063          	beq	a5,s6,130b8 <__call_exitprocs+0xa8>
   1307c:	fff4041b          	addiw	s0,s0,-1
   13080:	ff848493          	addi	s1,s1,-8
   13084:	ff3416e3          	bne	s0,s3,13070 <__call_exitprocs+0x60>
   13088:	04813083          	ld	ra,72(sp)
   1308c:	04013403          	ld	s0,64(sp)
   13090:	03813483          	ld	s1,56(sp)
   13094:	03013903          	ld	s2,48(sp)
   13098:	02813983          	ld	s3,40(sp)
   1309c:	02013a03          	ld	s4,32(sp)
   130a0:	01813a83          	ld	s5,24(sp)
   130a4:	01013b03          	ld	s6,16(sp)
   130a8:	00813b83          	ld	s7,8(sp)
   130ac:	00013c03          	ld	s8,0(sp)
   130b0:	05010113          	addi	sp,sp,80
   130b4:	00008067          	ret
   130b8:	00892783          	lw	a5,8(s2)
   130bc:	0084b703          	ld	a4,8(s1)
   130c0:	fff7879b          	addiw	a5,a5,-1
   130c4:	04878e63          	beq	a5,s0,13120 <__call_exitprocs+0x110>
   130c8:	0004b423          	sd	zero,8(s1)
   130cc:	fa0708e3          	beqz	a4,1307c <__call_exitprocs+0x6c>
   130d0:	31092783          	lw	a5,784(s2)
   130d4:	008a16bb          	sllw	a3,s4,s0
   130d8:	00892b83          	lw	s7,8(s2)
   130dc:	00d7f7b3          	and	a5,a5,a3
   130e0:	0007879b          	sext.w	a5,a5
   130e4:	00079e63          	bnez	a5,13100 <__call_exitprocs+0xf0>
   130e8:	000700e7          	jalr	a4
   130ec:	00892783          	lw	a5,8(s2)
   130f0:	f77792e3          	bne	a5,s7,13054 <__call_exitprocs+0x44>
   130f4:	1f8c3783          	ld	a5,504(s8)
   130f8:	f92782e3          	beq	a5,s2,1307c <__call_exitprocs+0x6c>
   130fc:	f59ff06f          	j	13054 <__call_exitprocs+0x44>
   13100:	31492783          	lw	a5,788(s2)
   13104:	1084b583          	ld	a1,264(s1)
   13108:	00d7f7b3          	and	a5,a5,a3
   1310c:	0007879b          	sext.w	a5,a5
   13110:	00079c63          	bnez	a5,13128 <__call_exitprocs+0x118>
   13114:	000a8513          	mv	a0,s5
   13118:	000700e7          	jalr	a4
   1311c:	fd1ff06f          	j	130ec <__call_exitprocs+0xdc>
   13120:	00892423          	sw	s0,8(s2)
   13124:	fa9ff06f          	j	130cc <__call_exitprocs+0xbc>
   13128:	00058513          	mv	a0,a1
   1312c:	000700e7          	jalr	a4
   13130:	fbdff06f          	j	130ec <__call_exitprocs+0xdc>

0000000000013134 <__sflush_r>:
   13134:	01059783          	lh	a5,16(a1)
   13138:	fd010113          	addi	sp,sp,-48
   1313c:	02813023          	sd	s0,32(sp)
   13140:	03079713          	slli	a4,a5,0x30
   13144:	03075713          	srli	a4,a4,0x30
   13148:	01313423          	sd	s3,8(sp)
   1314c:	02113423          	sd	ra,40(sp)
   13150:	00913c23          	sd	s1,24(sp)
   13154:	01213823          	sd	s2,16(sp)
   13158:	00877693          	andi	a3,a4,8
   1315c:	00058413          	mv	s0,a1
   13160:	00050993          	mv	s3,a0
   13164:	10069a63          	bnez	a3,13278 <__sflush_r+0x144>
   13168:	00001737          	lui	a4,0x1
   1316c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   13170:	0085a683          	lw	a3,8(a1)
   13174:	00e7e7b3          	or	a5,a5,a4
   13178:	00f59823          	sh	a5,16(a1)
   1317c:	18d05063          	blez	a3,132fc <__sflush_r+0x1c8>
   13180:	04843703          	ld	a4,72(s0)
   13184:	0c070a63          	beqz	a4,13258 <__sflush_r+0x124>
   13188:	03079793          	slli	a5,a5,0x30
   1318c:	0307d793          	srli	a5,a5,0x30
   13190:	0009a483          	lw	s1,0(s3)
   13194:	03379693          	slli	a3,a5,0x33
   13198:	0009a023          	sw	zero,0(s3)
   1319c:	03043583          	ld	a1,48(s0)
   131a0:	1606c463          	bltz	a3,13308 <__sflush_r+0x1d4>
   131a4:	00000613          	li	a2,0
   131a8:	00100693          	li	a3,1
   131ac:	00098513          	mv	a0,s3
   131b0:	000700e7          	jalr	a4
   131b4:	fff00793          	li	a5,-1
   131b8:	00050613          	mv	a2,a0
   131bc:	18f50663          	beq	a0,a5,13348 <__sflush_r+0x214>
   131c0:	01045783          	lhu	a5,16(s0)
   131c4:	04843703          	ld	a4,72(s0)
   131c8:	03043583          	ld	a1,48(s0)
   131cc:	0047f793          	andi	a5,a5,4
   131d0:	00078e63          	beqz	a5,131ec <__sflush_r+0xb8>
   131d4:	00842683          	lw	a3,8(s0)
   131d8:	05843783          	ld	a5,88(s0)
   131dc:	40d60633          	sub	a2,a2,a3
   131e0:	00078663          	beqz	a5,131ec <__sflush_r+0xb8>
   131e4:	07042783          	lw	a5,112(s0)
   131e8:	40f60633          	sub	a2,a2,a5
   131ec:	00000693          	li	a3,0
   131f0:	00098513          	mv	a0,s3
   131f4:	000700e7          	jalr	a4
   131f8:	fff00793          	li	a5,-1
   131fc:	10f51a63          	bne	a0,a5,13310 <__sflush_r+0x1dc>
   13200:	0009a703          	lw	a4,0(s3)
   13204:	01041783          	lh	a5,16(s0)
   13208:	16070263          	beqz	a4,1336c <__sflush_r+0x238>
   1320c:	01d00693          	li	a3,29
   13210:	00d70663          	beq	a4,a3,1321c <__sflush_r+0xe8>
   13214:	01600693          	li	a3,22
   13218:	16d71463          	bne	a4,a3,13380 <__sflush_r+0x24c>
   1321c:	01843683          	ld	a3,24(s0)
   13220:	fffff737          	lui	a4,0xfffff
   13224:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdc5f7>
   13228:	00e7f7b3          	and	a5,a5,a4
   1322c:	00f41823          	sh	a5,16(s0)
   13230:	00042423          	sw	zero,8(s0)
   13234:	00d43023          	sd	a3,0(s0)
   13238:	05843583          	ld	a1,88(s0)
   1323c:	0099a023          	sw	s1,0(s3)
   13240:	00058c63          	beqz	a1,13258 <__sflush_r+0x124>
   13244:	07440793          	addi	a5,s0,116
   13248:	00f58663          	beq	a1,a5,13254 <__sflush_r+0x120>
   1324c:	00098513          	mv	a0,s3
   13250:	668000ef          	jal	ra,138b8 <_free_r>
   13254:	04043c23          	sd	zero,88(s0)
   13258:	00000513          	li	a0,0
   1325c:	02813083          	ld	ra,40(sp)
   13260:	02013403          	ld	s0,32(sp)
   13264:	01813483          	ld	s1,24(sp)
   13268:	01013903          	ld	s2,16(sp)
   1326c:	00813983          	ld	s3,8(sp)
   13270:	03010113          	addi	sp,sp,48
   13274:	00008067          	ret
   13278:	0185b903          	ld	s2,24(a1)
   1327c:	fc090ee3          	beqz	s2,13258 <__sflush_r+0x124>
   13280:	0005b483          	ld	s1,0(a1)
   13284:	00377713          	andi	a4,a4,3
   13288:	0125b023          	sd	s2,0(a1)
   1328c:	412484bb          	subw	s1,s1,s2
   13290:	00000793          	li	a5,0
   13294:	00071463          	bnez	a4,1329c <__sflush_r+0x168>
   13298:	0205a783          	lw	a5,32(a1)
   1329c:	00f42623          	sw	a5,12(s0)
   132a0:	00904863          	bgtz	s1,132b0 <__sflush_r+0x17c>
   132a4:	fb5ff06f          	j	13258 <__sflush_r+0x124>
   132a8:	00a90933          	add	s2,s2,a0
   132ac:	fa9056e3          	blez	s1,13258 <__sflush_r+0x124>
   132b0:	04043783          	ld	a5,64(s0)
   132b4:	03043583          	ld	a1,48(s0)
   132b8:	00048693          	mv	a3,s1
   132bc:	00090613          	mv	a2,s2
   132c0:	00098513          	mv	a0,s3
   132c4:	000780e7          	jalr	a5
   132c8:	40a484bb          	subw	s1,s1,a0
   132cc:	fca04ee3          	bgtz	a0,132a8 <__sflush_r+0x174>
   132d0:	01045783          	lhu	a5,16(s0)
   132d4:	02813083          	ld	ra,40(sp)
   132d8:	01813483          	ld	s1,24(sp)
   132dc:	0407e793          	ori	a5,a5,64
   132e0:	00f41823          	sh	a5,16(s0)
   132e4:	02013403          	ld	s0,32(sp)
   132e8:	01013903          	ld	s2,16(sp)
   132ec:	00813983          	ld	s3,8(sp)
   132f0:	fff00513          	li	a0,-1
   132f4:	03010113          	addi	sp,sp,48
   132f8:	00008067          	ret
   132fc:	0705a703          	lw	a4,112(a1)
   13300:	e8e040e3          	bgtz	a4,13180 <__sflush_r+0x4c>
   13304:	f55ff06f          	j	13258 <__sflush_r+0x124>
   13308:	09043603          	ld	a2,144(s0)
   1330c:	ec1ff06f          	j	131cc <__sflush_r+0x98>
   13310:	01045783          	lhu	a5,16(s0)
   13314:	fffff737          	lui	a4,0xfffff
   13318:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdc5f7>
   1331c:	00e7f7b3          	and	a5,a5,a4
   13320:	01843683          	ld	a3,24(s0)
   13324:	0107979b          	slliw	a5,a5,0x10
   13328:	4107d79b          	sraiw	a5,a5,0x10
   1332c:	00f41823          	sh	a5,16(s0)
   13330:	00042423          	sw	zero,8(s0)
   13334:	00d43023          	sd	a3,0(s0)
   13338:	03379713          	slli	a4,a5,0x33
   1333c:	ee075ee3          	bgez	a4,13238 <__sflush_r+0x104>
   13340:	08a43823          	sd	a0,144(s0)
   13344:	ef5ff06f          	j	13238 <__sflush_r+0x104>
   13348:	0009a783          	lw	a5,0(s3)
   1334c:	e6078ae3          	beqz	a5,131c0 <__sflush_r+0x8c>
   13350:	01d00713          	li	a4,29
   13354:	00e78663          	beq	a5,a4,13360 <__sflush_r+0x22c>
   13358:	01600713          	li	a4,22
   1335c:	f6e79ae3          	bne	a5,a4,132d0 <__sflush_r+0x19c>
   13360:	0099a023          	sw	s1,0(s3)
   13364:	00000513          	li	a0,0
   13368:	ef5ff06f          	j	1325c <__sflush_r+0x128>
   1336c:	fffff737          	lui	a4,0xfffff
   13370:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdc5f7>
   13374:	01843683          	ld	a3,24(s0)
   13378:	00e7f7b3          	and	a5,a5,a4
   1337c:	fb1ff06f          	j	1332c <__sflush_r+0x1f8>
   13380:	0407e793          	ori	a5,a5,64
   13384:	00f41823          	sh	a5,16(s0)
   13388:	fff00513          	li	a0,-1
   1338c:	ed1ff06f          	j	1325c <__sflush_r+0x128>

0000000000013390 <_fflush_r>:
   13390:	fe010113          	addi	sp,sp,-32
   13394:	00813823          	sd	s0,16(sp)
   13398:	00113c23          	sd	ra,24(sp)
   1339c:	00050413          	mv	s0,a0
   133a0:	00050663          	beqz	a0,133ac <_fflush_r+0x1c>
   133a4:	05052783          	lw	a5,80(a0)
   133a8:	02078063          	beqz	a5,133c8 <_fflush_r+0x38>
   133ac:	01059783          	lh	a5,16(a1)
   133b0:	02079663          	bnez	a5,133dc <_fflush_r+0x4c>
   133b4:	01813083          	ld	ra,24(sp)
   133b8:	01013403          	ld	s0,16(sp)
   133bc:	00000513          	li	a0,0
   133c0:	02010113          	addi	sp,sp,32
   133c4:	00008067          	ret
   133c8:	00b13423          	sd	a1,8(sp)
   133cc:	36c000ef          	jal	ra,13738 <__sinit>
   133d0:	00813583          	ld	a1,8(sp)
   133d4:	01059783          	lh	a5,16(a1)
   133d8:	fc078ee3          	beqz	a5,133b4 <_fflush_r+0x24>
   133dc:	00040513          	mv	a0,s0
   133e0:	01013403          	ld	s0,16(sp)
   133e4:	01813083          	ld	ra,24(sp)
   133e8:	02010113          	addi	sp,sp,32
   133ec:	d49ff06f          	j	13134 <__sflush_r>

00000000000133f0 <fflush>:
   133f0:	00050593          	mv	a1,a0
   133f4:	00050863          	beqz	a0,13404 <fflush+0x14>
   133f8:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   133fc:	0007b503          	ld	a0,0(a5)
   13400:	f91ff06f          	j	13390 <_fflush_r>
   13404:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13408:	0007b503          	ld	a0,0(a5)
   1340c:	00000597          	auipc	a1,0x0
   13410:	f8458593          	addi	a1,a1,-124 # 13390 <_fflush_r>
   13414:	0c10006f          	j	13cd4 <_fwalk_reent>

0000000000013418 <__fp_lock>:
   13418:	00000513          	li	a0,0
   1341c:	00008067          	ret

0000000000013420 <_cleanup_r>:
   13420:	00009597          	auipc	a1,0x9
   13424:	71058593          	addi	a1,a1,1808 # 1cb30 <_fclose_r>
   13428:	0ad0006f          	j	13cd4 <_fwalk_reent>

000000000001342c <__sinit.part.0>:
   1342c:	fc010113          	addi	sp,sp,-64
   13430:	02113c23          	sd	ra,56(sp)
   13434:	02813823          	sd	s0,48(sp)
   13438:	02913423          	sd	s1,40(sp)
   1343c:	03213023          	sd	s2,32(sp)
   13440:	01313c23          	sd	s3,24(sp)
   13444:	01413823          	sd	s4,16(sp)
   13448:	01513423          	sd	s5,8(sp)
   1344c:	01613023          	sd	s6,0(sp)
   13450:	00853403          	ld	s0,8(a0)
   13454:	00000717          	auipc	a4,0x0
   13458:	fcc70713          	addi	a4,a4,-52 # 13420 <_cleanup_r>
   1345c:	04e53c23          	sd	a4,88(a0)
   13460:	53850793          	addi	a5,a0,1336
   13464:	00300713          	li	a4,3
   13468:	52e52423          	sw	a4,1320(a0)
   1346c:	52f53823          	sd	a5,1328(a0)
   13470:	52053023          	sd	zero,1312(a0)
   13474:	00400793          	li	a5,4
   13478:	00050913          	mv	s2,a0
   1347c:	00f42823          	sw	a5,16(s0)
   13480:	00800613          	li	a2,8
   13484:	00000593          	li	a1,0
   13488:	0a042623          	sw	zero,172(s0)
   1348c:	00043023          	sd	zero,0(s0)
   13490:	00043423          	sd	zero,8(s0)
   13494:	00043c23          	sd	zero,24(s0)
   13498:	02042023          	sw	zero,32(s0)
   1349c:	02042423          	sw	zero,40(s0)
   134a0:	0a440513          	addi	a0,s0,164
   134a4:	fb1fc0ef          	jal	ra,10454 <memset>
   134a8:	01093483          	ld	s1,16(s2)
   134ac:	00005b17          	auipc	s6,0x5
   134b0:	498b0b13          	addi	s6,s6,1176 # 18944 <__sread>
   134b4:	00005a97          	auipc	s5,0x5
   134b8:	4f4a8a93          	addi	s5,s5,1268 # 189a8 <__swrite>
   134bc:	00005a17          	auipc	s4,0x5
   134c0:	574a0a13          	addi	s4,s4,1396 # 18a30 <__sseek>
   134c4:	00005997          	auipc	s3,0x5
   134c8:	5d498993          	addi	s3,s3,1492 # 18a98 <__sclose>
   134cc:	000107b7          	lui	a5,0x10
   134d0:	03643c23          	sd	s6,56(s0)
   134d4:	05543023          	sd	s5,64(s0)
   134d8:	05443423          	sd	s4,72(s0)
   134dc:	05343823          	sd	s3,80(s0)
   134e0:	02843823          	sd	s0,48(s0)
   134e4:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0xa7>
   134e8:	00f4a823          	sw	a5,16(s1)
   134ec:	00800613          	li	a2,8
   134f0:	00000593          	li	a1,0
   134f4:	0a04a623          	sw	zero,172(s1)
   134f8:	0004b023          	sd	zero,0(s1)
   134fc:	0004b423          	sd	zero,8(s1)
   13500:	0004bc23          	sd	zero,24(s1)
   13504:	0204a023          	sw	zero,32(s1)
   13508:	0204a423          	sw	zero,40(s1)
   1350c:	0a448513          	addi	a0,s1,164
   13510:	f45fc0ef          	jal	ra,10454 <memset>
   13514:	01893403          	ld	s0,24(s2)
   13518:	000207b7          	lui	a5,0x20
   1351c:	0364bc23          	sd	s6,56(s1)
   13520:	0554b023          	sd	s5,64(s1)
   13524:	0544b423          	sd	s4,72(s1)
   13528:	0534b823          	sd	s3,80(s1)
   1352c:	0294b823          	sd	s1,48(s1)
   13530:	01278793          	addi	a5,a5,18 # 20012 <__multf3+0x126>
   13534:	00f42823          	sw	a5,16(s0)
   13538:	0a042623          	sw	zero,172(s0)
   1353c:	00043023          	sd	zero,0(s0)
   13540:	00043423          	sd	zero,8(s0)
   13544:	00043c23          	sd	zero,24(s0)
   13548:	02042023          	sw	zero,32(s0)
   1354c:	02042423          	sw	zero,40(s0)
   13550:	0a440513          	addi	a0,s0,164
   13554:	00800613          	li	a2,8
   13558:	00000593          	li	a1,0
   1355c:	ef9fc0ef          	jal	ra,10454 <memset>
   13560:	03813083          	ld	ra,56(sp)
   13564:	03643c23          	sd	s6,56(s0)
   13568:	05543023          	sd	s5,64(s0)
   1356c:	05443423          	sd	s4,72(s0)
   13570:	05343823          	sd	s3,80(s0)
   13574:	02843823          	sd	s0,48(s0)
   13578:	03013403          	ld	s0,48(sp)
   1357c:	00100793          	li	a5,1
   13580:	04f92823          	sw	a5,80(s2)
   13584:	02813483          	ld	s1,40(sp)
   13588:	02013903          	ld	s2,32(sp)
   1358c:	01813983          	ld	s3,24(sp)
   13590:	01013a03          	ld	s4,16(sp)
   13594:	00813a83          	ld	s5,8(sp)
   13598:	00013b03          	ld	s6,0(sp)
   1359c:	04010113          	addi	sp,sp,64
   135a0:	00008067          	ret

00000000000135a4 <__fp_unlock>:
   135a4:	00000513          	li	a0,0
   135a8:	00008067          	ret

00000000000135ac <__sfmoreglue>:
   135ac:	fe010113          	addi	sp,sp,-32
   135b0:	fff5861b          	addiw	a2,a1,-1
   135b4:	00813823          	sd	s0,16(sp)
   135b8:	00161413          	slli	s0,a2,0x1
   135bc:	00c40433          	add	s0,s0,a2
   135c0:	00241413          	slli	s0,s0,0x2
   135c4:	40c40433          	sub	s0,s0,a2
   135c8:	00441413          	slli	s0,s0,0x4
   135cc:	01213023          	sd	s2,0(sp)
   135d0:	00058913          	mv	s2,a1
   135d4:	0c840593          	addi	a1,s0,200
   135d8:	00913423          	sd	s1,8(sp)
   135dc:	00113c23          	sd	ra,24(sp)
   135e0:	630030ef          	jal	ra,16c10 <_malloc_r>
   135e4:	00050493          	mv	s1,a0
   135e8:	02050063          	beqz	a0,13608 <__sfmoreglue+0x5c>
   135ec:	01850513          	addi	a0,a0,24
   135f0:	0004b023          	sd	zero,0(s1)
   135f4:	0124a423          	sw	s2,8(s1)
   135f8:	00a4b823          	sd	a0,16(s1)
   135fc:	0b040613          	addi	a2,s0,176
   13600:	00000593          	li	a1,0
   13604:	e51fc0ef          	jal	ra,10454 <memset>
   13608:	01813083          	ld	ra,24(sp)
   1360c:	01013403          	ld	s0,16(sp)
   13610:	00048513          	mv	a0,s1
   13614:	00013903          	ld	s2,0(sp)
   13618:	00813483          	ld	s1,8(sp)
   1361c:	02010113          	addi	sp,sp,32
   13620:	00008067          	ret

0000000000013624 <__sfp>:
   13624:	fd010113          	addi	sp,sp,-48
   13628:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   1362c:	01213823          	sd	s2,16(sp)
   13630:	0007b903          	ld	s2,0(a5)
   13634:	01313423          	sd	s3,8(sp)
   13638:	02113423          	sd	ra,40(sp)
   1363c:	05092783          	lw	a5,80(s2)
   13640:	02813023          	sd	s0,32(sp)
   13644:	00913c23          	sd	s1,24(sp)
   13648:	00050993          	mv	s3,a0
   1364c:	0a078463          	beqz	a5,136f4 <__sfp+0xd0>
   13650:	52090913          	addi	s2,s2,1312
   13654:	fff00493          	li	s1,-1
   13658:	00892783          	lw	a5,8(s2)
   1365c:	01093403          	ld	s0,16(s2)
   13660:	fff7879b          	addiw	a5,a5,-1
   13664:	0007da63          	bgez	a5,13678 <__sfp+0x54>
   13668:	07c0006f          	j	136e4 <__sfp+0xc0>
   1366c:	fff7879b          	addiw	a5,a5,-1
   13670:	0b040413          	addi	s0,s0,176
   13674:	06978863          	beq	a5,s1,136e4 <__sfp+0xc0>
   13678:	01041703          	lh	a4,16(s0)
   1367c:	fe0718e3          	bnez	a4,1366c <__sfp+0x48>
   13680:	ffff07b7          	lui	a5,0xffff0
   13684:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffccdf9>
   13688:	0a042623          	sw	zero,172(s0)
   1368c:	00043023          	sd	zero,0(s0)
   13690:	00043423          	sd	zero,8(s0)
   13694:	00f42823          	sw	a5,16(s0)
   13698:	00043c23          	sd	zero,24(s0)
   1369c:	02042023          	sw	zero,32(s0)
   136a0:	02042423          	sw	zero,40(s0)
   136a4:	00800613          	li	a2,8
   136a8:	00000593          	li	a1,0
   136ac:	0a440513          	addi	a0,s0,164
   136b0:	da5fc0ef          	jal	ra,10454 <memset>
   136b4:	04043c23          	sd	zero,88(s0)
   136b8:	06042023          	sw	zero,96(s0)
   136bc:	06043c23          	sd	zero,120(s0)
   136c0:	08042023          	sw	zero,128(s0)
   136c4:	00040513          	mv	a0,s0
   136c8:	02813083          	ld	ra,40(sp)
   136cc:	02013403          	ld	s0,32(sp)
   136d0:	01813483          	ld	s1,24(sp)
   136d4:	01013903          	ld	s2,16(sp)
   136d8:	00813983          	ld	s3,8(sp)
   136dc:	03010113          	addi	sp,sp,48
   136e0:	00008067          	ret
   136e4:	00093403          	ld	s0,0(s2)
   136e8:	00040c63          	beqz	s0,13700 <__sfp+0xdc>
   136ec:	00040913          	mv	s2,s0
   136f0:	f69ff06f          	j	13658 <__sfp+0x34>
   136f4:	00090513          	mv	a0,s2
   136f8:	d35ff0ef          	jal	ra,1342c <__sinit.part.0>
   136fc:	f55ff06f          	j	13650 <__sfp+0x2c>
   13700:	00400593          	li	a1,4
   13704:	00098513          	mv	a0,s3
   13708:	ea5ff0ef          	jal	ra,135ac <__sfmoreglue>
   1370c:	00a93023          	sd	a0,0(s2)
   13710:	00050413          	mv	s0,a0
   13714:	fc051ce3          	bnez	a0,136ec <__sfp+0xc8>
   13718:	00c00793          	li	a5,12
   1371c:	00f9a023          	sw	a5,0(s3)
   13720:	fa5ff06f          	j	136c4 <__sfp+0xa0>

0000000000013724 <_cleanup>:
   13724:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13728:	0007b503          	ld	a0,0(a5)
   1372c:	00009597          	auipc	a1,0x9
   13730:	40458593          	addi	a1,a1,1028 # 1cb30 <_fclose_r>
   13734:	5a00006f          	j	13cd4 <_fwalk_reent>

0000000000013738 <__sinit>:
   13738:	05052783          	lw	a5,80(a0)
   1373c:	00078463          	beqz	a5,13744 <__sinit+0xc>
   13740:	00008067          	ret
   13744:	ce9ff06f          	j	1342c <__sinit.part.0>

0000000000013748 <__sfp_lock_acquire>:
   13748:	00008067          	ret

000000000001374c <__sfp_lock_release>:
   1374c:	00008067          	ret

0000000000013750 <__sinit_lock_acquire>:
   13750:	00008067          	ret

0000000000013754 <__sinit_lock_release>:
   13754:	00008067          	ret

0000000000013758 <__fp_lock_all>:
   13758:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1375c:	0007b503          	ld	a0,0(a5)
   13760:	00000597          	auipc	a1,0x0
   13764:	cb858593          	addi	a1,a1,-840 # 13418 <__fp_lock>
   13768:	4980006f          	j	13c00 <_fwalk>

000000000001376c <__fp_unlock_all>:
   1376c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   13770:	0007b503          	ld	a0,0(a5)
   13774:	00000597          	auipc	a1,0x0
   13778:	e3058593          	addi	a1,a1,-464 # 135a4 <__fp_unlock>
   1377c:	4840006f          	j	13c00 <_fwalk>

0000000000013780 <_malloc_trim_r>:
   13780:	fd010113          	addi	sp,sp,-48
   13784:	02813023          	sd	s0,32(sp)
   13788:	00913c23          	sd	s1,24(sp)
   1378c:	01213823          	sd	s2,16(sp)
   13790:	01313423          	sd	s3,8(sp)
   13794:	00058413          	mv	s0,a1
   13798:	02113423          	sd	ra,40(sp)
   1379c:	0000f997          	auipc	s3,0xf
   137a0:	17498993          	addi	s3,s3,372 # 22910 <__malloc_av_>
   137a4:	00050913          	mv	s2,a0
   137a8:	625030ef          	jal	ra,175cc <__malloc_lock>
   137ac:	0109b683          	ld	a3,16(s3)
   137b0:	00001737          	lui	a4,0x1
   137b4:	fdf70793          	addi	a5,a4,-33 # fdf <register_fini-0xf0d1>
   137b8:	0086b483          	ld	s1,8(a3)
   137bc:	40878433          	sub	s0,a5,s0
   137c0:	ffc4f493          	andi	s1,s1,-4
   137c4:	00940433          	add	s0,s0,s1
   137c8:	00c45413          	srli	s0,s0,0xc
   137cc:	fff40413          	addi	s0,s0,-1
   137d0:	00c41413          	slli	s0,s0,0xc
   137d4:	00e44e63          	blt	s0,a4,137f0 <_malloc_trim_r+0x70>
   137d8:	00000593          	li	a1,0
   137dc:	00090513          	mv	a0,s2
   137e0:	75d040ef          	jal	ra,1873c <_sbrk_r>
   137e4:	0109b783          	ld	a5,16(s3)
   137e8:	009787b3          	add	a5,a5,s1
   137ec:	02f50663          	beq	a0,a5,13818 <_malloc_trim_r+0x98>
   137f0:	00090513          	mv	a0,s2
   137f4:	5dd030ef          	jal	ra,175d0 <__malloc_unlock>
   137f8:	02813083          	ld	ra,40(sp)
   137fc:	02013403          	ld	s0,32(sp)
   13800:	01813483          	ld	s1,24(sp)
   13804:	01013903          	ld	s2,16(sp)
   13808:	00813983          	ld	s3,8(sp)
   1380c:	00000513          	li	a0,0
   13810:	03010113          	addi	sp,sp,48
   13814:	00008067          	ret
   13818:	408005b3          	neg	a1,s0
   1381c:	00090513          	mv	a0,s2
   13820:	71d040ef          	jal	ra,1873c <_sbrk_r>
   13824:	fff00793          	li	a5,-1
   13828:	04f50a63          	beq	a0,a5,1387c <_malloc_trim_r+0xfc>
   1382c:	00010797          	auipc	a5,0x10
   13830:	9ac78793          	addi	a5,a5,-1620 # 231d8 <__malloc_current_mallinfo>
   13834:	0007a783          	lw	a5,0(a5)
   13838:	0109b703          	ld	a4,16(s3)
   1383c:	408484b3          	sub	s1,s1,s0
   13840:	0014e493          	ori	s1,s1,1
   13844:	4087843b          	subw	s0,a5,s0
   13848:	00090513          	mv	a0,s2
   1384c:	00973423          	sd	s1,8(a4)
   13850:	00010797          	auipc	a5,0x10
   13854:	9887a423          	sw	s0,-1656(a5) # 231d8 <__malloc_current_mallinfo>
   13858:	579030ef          	jal	ra,175d0 <__malloc_unlock>
   1385c:	02813083          	ld	ra,40(sp)
   13860:	02013403          	ld	s0,32(sp)
   13864:	01813483          	ld	s1,24(sp)
   13868:	01013903          	ld	s2,16(sp)
   1386c:	00813983          	ld	s3,8(sp)
   13870:	00100513          	li	a0,1
   13874:	03010113          	addi	sp,sp,48
   13878:	00008067          	ret
   1387c:	00000593          	li	a1,0
   13880:	00090513          	mv	a0,s2
   13884:	6b9040ef          	jal	ra,1873c <_sbrk_r>
   13888:	0109b703          	ld	a4,16(s3)
   1388c:	01f00693          	li	a3,31
   13890:	40e507b3          	sub	a5,a0,a4
   13894:	f4f6dee3          	bge	a3,a5,137f0 <_malloc_trim_r+0x70>
   13898:	76018693          	addi	a3,gp,1888 # 23168 <__malloc_sbrk_base>
   1389c:	0006b683          	ld	a3,0(a3)
   138a0:	0017e793          	ori	a5,a5,1
   138a4:	00f73423          	sd	a5,8(a4)
   138a8:	40d50533          	sub	a0,a0,a3
   138ac:	00010797          	auipc	a5,0x10
   138b0:	92a7a623          	sw	a0,-1748(a5) # 231d8 <__malloc_current_mallinfo>
   138b4:	f3dff06f          	j	137f0 <_malloc_trim_r+0x70>

00000000000138b8 <_free_r>:
   138b8:	14058263          	beqz	a1,139fc <_free_r+0x144>
   138bc:	fe010113          	addi	sp,sp,-32
   138c0:	00813823          	sd	s0,16(sp)
   138c4:	00913423          	sd	s1,8(sp)
   138c8:	00058413          	mv	s0,a1
   138cc:	00050493          	mv	s1,a0
   138d0:	00113c23          	sd	ra,24(sp)
   138d4:	4f9030ef          	jal	ra,175cc <__malloc_lock>
   138d8:	ff843583          	ld	a1,-8(s0)
   138dc:	ff040713          	addi	a4,s0,-16
   138e0:	0000f517          	auipc	a0,0xf
   138e4:	03050513          	addi	a0,a0,48 # 22910 <__malloc_av_>
   138e8:	ffe5f793          	andi	a5,a1,-2
   138ec:	00f70633          	add	a2,a4,a5
   138f0:	00863683          	ld	a3,8(a2)
   138f4:	01053803          	ld	a6,16(a0)
   138f8:	ffc6f693          	andi	a3,a3,-4
   138fc:	1ac80c63          	beq	a6,a2,13ab4 <_free_r+0x1fc>
   13900:	00d63423          	sd	a3,8(a2)
   13904:	0015f593          	andi	a1,a1,1
   13908:	00d60833          	add	a6,a2,a3
   1390c:	0a059863          	bnez	a1,139bc <_free_r+0x104>
   13910:	ff043303          	ld	t1,-16(s0)
   13914:	00883583          	ld	a1,8(a6)
   13918:	0000f897          	auipc	a7,0xf
   1391c:	00888893          	addi	a7,a7,8 # 22920 <__malloc_av_+0x10>
   13920:	40670733          	sub	a4,a4,t1
   13924:	01073803          	ld	a6,16(a4)
   13928:	006787b3          	add	a5,a5,t1
   1392c:	0015f593          	andi	a1,a1,1
   13930:	15180c63          	beq	a6,a7,13a88 <_free_r+0x1d0>
   13934:	01873303          	ld	t1,24(a4)
   13938:	00683c23          	sd	t1,24(a6)
   1393c:	01033823          	sd	a6,16(t1)
   13940:	1e058c63          	beqz	a1,13b38 <_free_r+0x280>
   13944:	0017e693          	ori	a3,a5,1
   13948:	00d73423          	sd	a3,8(a4)
   1394c:	00f63023          	sd	a5,0(a2)
   13950:	1ff00693          	li	a3,511
   13954:	0cf6e063          	bltu	a3,a5,13a14 <_free_r+0x15c>
   13958:	0037d793          	srli	a5,a5,0x3
   1395c:	0007879b          	sext.w	a5,a5
   13960:	0017869b          	addiw	a3,a5,1
   13964:	0016969b          	slliw	a3,a3,0x1
   13968:	00369693          	slli	a3,a3,0x3
   1396c:	00853583          	ld	a1,8(a0)
   13970:	00d50533          	add	a0,a0,a3
   13974:	00053603          	ld	a2,0(a0)
   13978:	00100693          	li	a3,1
   1397c:	4027d79b          	sraiw	a5,a5,0x2
   13980:	00f697b3          	sll	a5,a3,a5
   13984:	00b7e7b3          	or	a5,a5,a1
   13988:	ff050693          	addi	a3,a0,-16
   1398c:	00d73c23          	sd	a3,24(a4)
   13990:	00c73823          	sd	a2,16(a4)
   13994:	0000f697          	auipc	a3,0xf
   13998:	f8f6b223          	sd	a5,-124(a3) # 22918 <__malloc_av_+0x8>
   1399c:	00e53023          	sd	a4,0(a0)
   139a0:	00e63c23          	sd	a4,24(a2)
   139a4:	01013403          	ld	s0,16(sp)
   139a8:	01813083          	ld	ra,24(sp)
   139ac:	00048513          	mv	a0,s1
   139b0:	00813483          	ld	s1,8(sp)
   139b4:	02010113          	addi	sp,sp,32
   139b8:	4190306f          	j	175d0 <__malloc_unlock>
   139bc:	00883583          	ld	a1,8(a6)
   139c0:	0015f593          	andi	a1,a1,1
   139c4:	02059e63          	bnez	a1,13a00 <_free_r+0x148>
   139c8:	00d787b3          	add	a5,a5,a3
   139cc:	0000f897          	auipc	a7,0xf
   139d0:	f5488893          	addi	a7,a7,-172 # 22920 <__malloc_av_+0x10>
   139d4:	01063683          	ld	a3,16(a2)
   139d8:	0017e813          	ori	a6,a5,1
   139dc:	00f705b3          	add	a1,a4,a5
   139e0:	17168c63          	beq	a3,a7,13b58 <_free_r+0x2a0>
   139e4:	01863603          	ld	a2,24(a2)
   139e8:	00c6bc23          	sd	a2,24(a3)
   139ec:	00d63823          	sd	a3,16(a2)
   139f0:	01073423          	sd	a6,8(a4)
   139f4:	00f5b023          	sd	a5,0(a1)
   139f8:	f59ff06f          	j	13950 <_free_r+0x98>
   139fc:	00008067          	ret
   13a00:	0017e693          	ori	a3,a5,1
   13a04:	fed43c23          	sd	a3,-8(s0)
   13a08:	00f63023          	sd	a5,0(a2)
   13a0c:	1ff00693          	li	a3,511
   13a10:	f4f6f4e3          	bgeu	a3,a5,13958 <_free_r+0xa0>
   13a14:	0097d693          	srli	a3,a5,0x9
   13a18:	00400613          	li	a2,4
   13a1c:	0ed66863          	bltu	a2,a3,13b0c <_free_r+0x254>
   13a20:	0067d693          	srli	a3,a5,0x6
   13a24:	0006869b          	sext.w	a3,a3
   13a28:	0396859b          	addiw	a1,a3,57
   13a2c:	0015959b          	slliw	a1,a1,0x1
   13a30:	0386861b          	addiw	a2,a3,56
   13a34:	00359593          	slli	a1,a1,0x3
   13a38:	00b505b3          	add	a1,a0,a1
   13a3c:	0005b683          	ld	a3,0(a1)
   13a40:	ff058593          	addi	a1,a1,-16
   13a44:	12d58c63          	beq	a1,a3,13b7c <_free_r+0x2c4>
   13a48:	0086b603          	ld	a2,8(a3)
   13a4c:	ffc67613          	andi	a2,a2,-4
   13a50:	00c7f663          	bgeu	a5,a2,13a5c <_free_r+0x1a4>
   13a54:	0106b683          	ld	a3,16(a3)
   13a58:	fed598e3          	bne	a1,a3,13a48 <_free_r+0x190>
   13a5c:	0186b583          	ld	a1,24(a3)
   13a60:	00b73c23          	sd	a1,24(a4)
   13a64:	00d73823          	sd	a3,16(a4)
   13a68:	01013403          	ld	s0,16(sp)
   13a6c:	00e5b823          	sd	a4,16(a1)
   13a70:	01813083          	ld	ra,24(sp)
   13a74:	00048513          	mv	a0,s1
   13a78:	00813483          	ld	s1,8(sp)
   13a7c:	00e6bc23          	sd	a4,24(a3)
   13a80:	02010113          	addi	sp,sp,32
   13a84:	34d0306f          	j	175d0 <__malloc_unlock>
   13a88:	16059463          	bnez	a1,13bf0 <_free_r+0x338>
   13a8c:	01063583          	ld	a1,16(a2)
   13a90:	01863603          	ld	a2,24(a2)
   13a94:	00f687b3          	add	a5,a3,a5
   13a98:	0017e693          	ori	a3,a5,1
   13a9c:	00c5bc23          	sd	a2,24(a1)
   13aa0:	00b63823          	sd	a1,16(a2)
   13aa4:	00d73423          	sd	a3,8(a4)
   13aa8:	00f70733          	add	a4,a4,a5
   13aac:	00f73023          	sd	a5,0(a4)
   13ab0:	ef5ff06f          	j	139a4 <_free_r+0xec>
   13ab4:	0015f593          	andi	a1,a1,1
   13ab8:	00d787b3          	add	a5,a5,a3
   13abc:	02059063          	bnez	a1,13adc <_free_r+0x224>
   13ac0:	ff043583          	ld	a1,-16(s0)
   13ac4:	40b70733          	sub	a4,a4,a1
   13ac8:	01873683          	ld	a3,24(a4)
   13acc:	01073603          	ld	a2,16(a4)
   13ad0:	00b787b3          	add	a5,a5,a1
   13ad4:	00d63c23          	sd	a3,24(a2)
   13ad8:	00c6b823          	sd	a2,16(a3)
   13adc:	76818693          	addi	a3,gp,1896 # 23170 <__malloc_trim_threshold>
   13ae0:	0017e613          	ori	a2,a5,1
   13ae4:	0006b683          	ld	a3,0(a3)
   13ae8:	00c73423          	sd	a2,8(a4)
   13aec:	0000f617          	auipc	a2,0xf
   13af0:	e2e63a23          	sd	a4,-460(a2) # 22920 <__malloc_av_+0x10>
   13af4:	ead7e8e3          	bltu	a5,a3,139a4 <_free_r+0xec>
   13af8:	78818793          	addi	a5,gp,1928 # 23190 <__malloc_top_pad>
   13afc:	0007b583          	ld	a1,0(a5)
   13b00:	00048513          	mv	a0,s1
   13b04:	c7dff0ef          	jal	ra,13780 <_malloc_trim_r>
   13b08:	e9dff06f          	j	139a4 <_free_r+0xec>
   13b0c:	01400613          	li	a2,20
   13b10:	02d67863          	bgeu	a2,a3,13b40 <_free_r+0x288>
   13b14:	05400613          	li	a2,84
   13b18:	08d66263          	bltu	a2,a3,13b9c <_free_r+0x2e4>
   13b1c:	00c7d693          	srli	a3,a5,0xc
   13b20:	0006869b          	sext.w	a3,a3
   13b24:	06f6859b          	addiw	a1,a3,111
   13b28:	0015959b          	slliw	a1,a1,0x1
   13b2c:	06e6861b          	addiw	a2,a3,110
   13b30:	00359593          	slli	a1,a1,0x3
   13b34:	f05ff06f          	j	13a38 <_free_r+0x180>
   13b38:	00d787b3          	add	a5,a5,a3
   13b3c:	e99ff06f          	j	139d4 <_free_r+0x11c>
   13b40:	0006869b          	sext.w	a3,a3
   13b44:	05c6859b          	addiw	a1,a3,92
   13b48:	0015959b          	slliw	a1,a1,0x1
   13b4c:	05b6861b          	addiw	a2,a3,91
   13b50:	00359593          	slli	a1,a1,0x3
   13b54:	ee5ff06f          	j	13a38 <_free_r+0x180>
   13b58:	0000f697          	auipc	a3,0xf
   13b5c:	dee6b023          	sd	a4,-544(a3) # 22938 <__malloc_av_+0x28>
   13b60:	0000f697          	auipc	a3,0xf
   13b64:	dce6b823          	sd	a4,-560(a3) # 22930 <__malloc_av_+0x20>
   13b68:	01173c23          	sd	a7,24(a4)
   13b6c:	01173823          	sd	a7,16(a4)
   13b70:	01073423          	sd	a6,8(a4)
   13b74:	00f5b023          	sd	a5,0(a1)
   13b78:	e2dff06f          	j	139a4 <_free_r+0xec>
   13b7c:	00853503          	ld	a0,8(a0)
   13b80:	00100793          	li	a5,1
   13b84:	4026561b          	sraiw	a2,a2,0x2
   13b88:	00c79633          	sll	a2,a5,a2
   13b8c:	00a66633          	or	a2,a2,a0
   13b90:	0000f797          	auipc	a5,0xf
   13b94:	d8c7b423          	sd	a2,-632(a5) # 22918 <__malloc_av_+0x8>
   13b98:	ec9ff06f          	j	13a60 <_free_r+0x1a8>
   13b9c:	15400613          	li	a2,340
   13ba0:	02d66063          	bltu	a2,a3,13bc0 <_free_r+0x308>
   13ba4:	00f7d693          	srli	a3,a5,0xf
   13ba8:	0006869b          	sext.w	a3,a3
   13bac:	0786859b          	addiw	a1,a3,120
   13bb0:	0015959b          	slliw	a1,a1,0x1
   13bb4:	0776861b          	addiw	a2,a3,119
   13bb8:	00359593          	slli	a1,a1,0x3
   13bbc:	e7dff06f          	j	13a38 <_free_r+0x180>
   13bc0:	55400613          	li	a2,1364
   13bc4:	02d66063          	bltu	a2,a3,13be4 <_free_r+0x32c>
   13bc8:	0127d693          	srli	a3,a5,0x12
   13bcc:	0006869b          	sext.w	a3,a3
   13bd0:	07d6859b          	addiw	a1,a3,125
   13bd4:	0015959b          	slliw	a1,a1,0x1
   13bd8:	07c6861b          	addiw	a2,a3,124
   13bdc:	00359593          	slli	a1,a1,0x3
   13be0:	e59ff06f          	j	13a38 <_free_r+0x180>
   13be4:	7f000593          	li	a1,2032
   13be8:	07e00613          	li	a2,126
   13bec:	e4dff06f          	j	13a38 <_free_r+0x180>
   13bf0:	0017e693          	ori	a3,a5,1
   13bf4:	00d73423          	sd	a3,8(a4)
   13bf8:	00f63023          	sd	a5,0(a2)
   13bfc:	da9ff06f          	j	139a4 <_free_r+0xec>

0000000000013c00 <_fwalk>:
   13c00:	fc010113          	addi	sp,sp,-64
   13c04:	01313c23          	sd	s3,24(sp)
   13c08:	02113c23          	sd	ra,56(sp)
   13c0c:	02813823          	sd	s0,48(sp)
   13c10:	02913423          	sd	s1,40(sp)
   13c14:	03213023          	sd	s2,32(sp)
   13c18:	01413823          	sd	s4,16(sp)
   13c1c:	01513423          	sd	s5,8(sp)
   13c20:	01613023          	sd	s6,0(sp)
   13c24:	52050993          	addi	s3,a0,1312
   13c28:	0a098263          	beqz	s3,13ccc <_fwalk+0xcc>
   13c2c:	00058a93          	mv	s5,a1
   13c30:	00000913          	li	s2,0
   13c34:	00100b13          	li	s6,1
   13c38:	fff00a13          	li	s4,-1
   13c3c:	0089a783          	lw	a5,8(s3)
   13c40:	0109b403          	ld	s0,16(s3)
   13c44:	04f05a63          	blez	a5,13c98 <_fwalk+0x98>
   13c48:	fff7879b          	addiw	a5,a5,-1
   13c4c:	02079493          	slli	s1,a5,0x20
   13c50:	0204d493          	srli	s1,s1,0x20
   13c54:	00148793          	addi	a5,s1,1
   13c58:	00179493          	slli	s1,a5,0x1
   13c5c:	00f484b3          	add	s1,s1,a5
   13c60:	00249493          	slli	s1,s1,0x2
   13c64:	40f484b3          	sub	s1,s1,a5
   13c68:	00449493          	slli	s1,s1,0x4
   13c6c:	009404b3          	add	s1,s0,s1
   13c70:	01045783          	lhu	a5,16(s0)
   13c74:	00fb7e63          	bgeu	s6,a5,13c90 <_fwalk+0x90>
   13c78:	01241783          	lh	a5,18(s0)
   13c7c:	00040513          	mv	a0,s0
   13c80:	01478863          	beq	a5,s4,13c90 <_fwalk+0x90>
   13c84:	000a80e7          	jalr	s5
   13c88:	01256933          	or	s2,a0,s2
   13c8c:	0009091b          	sext.w	s2,s2
   13c90:	0b040413          	addi	s0,s0,176
   13c94:	fc941ee3          	bne	s0,s1,13c70 <_fwalk+0x70>
   13c98:	0009b983          	ld	s3,0(s3)
   13c9c:	fa0990e3          	bnez	s3,13c3c <_fwalk+0x3c>
   13ca0:	03813083          	ld	ra,56(sp)
   13ca4:	03013403          	ld	s0,48(sp)
   13ca8:	00090513          	mv	a0,s2
   13cac:	02813483          	ld	s1,40(sp)
   13cb0:	02013903          	ld	s2,32(sp)
   13cb4:	01813983          	ld	s3,24(sp)
   13cb8:	01013a03          	ld	s4,16(sp)
   13cbc:	00813a83          	ld	s5,8(sp)
   13cc0:	00013b03          	ld	s6,0(sp)
   13cc4:	04010113          	addi	sp,sp,64
   13cc8:	00008067          	ret
   13ccc:	00000913          	li	s2,0
   13cd0:	fd1ff06f          	j	13ca0 <_fwalk+0xa0>

0000000000013cd4 <_fwalk_reent>:
   13cd4:	fb010113          	addi	sp,sp,-80
   13cd8:	03213823          	sd	s2,48(sp)
   13cdc:	04113423          	sd	ra,72(sp)
   13ce0:	04813023          	sd	s0,64(sp)
   13ce4:	02913c23          	sd	s1,56(sp)
   13ce8:	03313423          	sd	s3,40(sp)
   13cec:	03413023          	sd	s4,32(sp)
   13cf0:	01513c23          	sd	s5,24(sp)
   13cf4:	01613823          	sd	s6,16(sp)
   13cf8:	01713423          	sd	s7,8(sp)
   13cfc:	52050913          	addi	s2,a0,1312
   13d00:	0a090863          	beqz	s2,13db0 <_fwalk_reent+0xdc>
   13d04:	00058a93          	mv	s5,a1
   13d08:	00050993          	mv	s3,a0
   13d0c:	00000b13          	li	s6,0
   13d10:	00100b93          	li	s7,1
   13d14:	fff00a13          	li	s4,-1
   13d18:	00892783          	lw	a5,8(s2)
   13d1c:	01093403          	ld	s0,16(s2)
   13d20:	04f05c63          	blez	a5,13d78 <_fwalk_reent+0xa4>
   13d24:	fff7879b          	addiw	a5,a5,-1
   13d28:	02079493          	slli	s1,a5,0x20
   13d2c:	0204d493          	srli	s1,s1,0x20
   13d30:	00148793          	addi	a5,s1,1
   13d34:	00179493          	slli	s1,a5,0x1
   13d38:	00f484b3          	add	s1,s1,a5
   13d3c:	00249493          	slli	s1,s1,0x2
   13d40:	40f484b3          	sub	s1,s1,a5
   13d44:	00449493          	slli	s1,s1,0x4
   13d48:	009404b3          	add	s1,s0,s1
   13d4c:	01045783          	lhu	a5,16(s0)
   13d50:	02fbf063          	bgeu	s7,a5,13d70 <_fwalk_reent+0x9c>
   13d54:	01241783          	lh	a5,18(s0)
   13d58:	00040593          	mv	a1,s0
   13d5c:	00098513          	mv	a0,s3
   13d60:	01478863          	beq	a5,s4,13d70 <_fwalk_reent+0x9c>
   13d64:	000a80e7          	jalr	s5
   13d68:	01656b33          	or	s6,a0,s6
   13d6c:	000b0b1b          	sext.w	s6,s6
   13d70:	0b040413          	addi	s0,s0,176
   13d74:	fc941ce3          	bne	s0,s1,13d4c <_fwalk_reent+0x78>
   13d78:	00093903          	ld	s2,0(s2)
   13d7c:	f8091ee3          	bnez	s2,13d18 <_fwalk_reent+0x44>
   13d80:	04813083          	ld	ra,72(sp)
   13d84:	04013403          	ld	s0,64(sp)
   13d88:	000b0513          	mv	a0,s6
   13d8c:	03813483          	ld	s1,56(sp)
   13d90:	03013903          	ld	s2,48(sp)
   13d94:	02813983          	ld	s3,40(sp)
   13d98:	02013a03          	ld	s4,32(sp)
   13d9c:	01813a83          	ld	s5,24(sp)
   13da0:	01013b03          	ld	s6,16(sp)
   13da4:	00813b83          	ld	s7,8(sp)
   13da8:	05010113          	addi	sp,sp,80
   13dac:	00008067          	ret
   13db0:	00000b13          	li	s6,0
   13db4:	fcdff06f          	j	13d80 <_fwalk_reent+0xac>

0000000000013db8 <eshdn1>:
   13db8:	00450693          	addi	a3,a0,4
   13dbc:	00000793          	li	a5,0
   13dc0:	01a50513          	addi	a0,a0,26
   13dc4:	ffff8837          	lui	a6,0xffff8
   13dc8:	01c0006f          	j	13de4 <eshdn1+0x2c>
   13dcc:	0017979b          	slliw	a5,a5,0x1
   13dd0:	00e69023          	sh	a4,0(a3)
   13dd4:	03079793          	slli	a5,a5,0x30
   13dd8:	00268693          	addi	a3,a3,2
   13ddc:	0307d793          	srli	a5,a5,0x30
   13de0:	02d50e63          	beq	a0,a3,13e1c <eshdn1+0x64>
   13de4:	0006d703          	lhu	a4,0(a3)
   13de8:	00177613          	andi	a2,a4,1
   13dec:	00060463          	beqz	a2,13df4 <eshdn1+0x3c>
   13df0:	0017e793          	ori	a5,a5,1
   13df4:	00175713          	srli	a4,a4,0x1
   13df8:	0027f613          	andi	a2,a5,2
   13dfc:	010765b3          	or	a1,a4,a6
   13e00:	fc0606e3          	beqz	a2,13dcc <eshdn1+0x14>
   13e04:	0017979b          	slliw	a5,a5,0x1
   13e08:	00b69023          	sh	a1,0(a3)
   13e0c:	03079793          	slli	a5,a5,0x30
   13e10:	00268693          	addi	a3,a3,2
   13e14:	0307d793          	srli	a5,a5,0x30
   13e18:	fcd516e3          	bne	a0,a3,13de4 <eshdn1+0x2c>
   13e1c:	00008067          	ret

0000000000013e20 <eshup1>:
   13e20:	01850693          	addi	a3,a0,24
   13e24:	00000713          	li	a4,0
   13e28:	00250513          	addi	a0,a0,2
   13e2c:	01c0006f          	j	13e48 <eshup1+0x28>
   13e30:	0017171b          	slliw	a4,a4,0x1
   13e34:	00f69023          	sh	a5,0(a3)
   13e38:	03071713          	slli	a4,a4,0x30
   13e3c:	ffe68693          	addi	a3,a3,-2
   13e40:	03075713          	srli	a4,a4,0x30
   13e44:	04d50663          	beq	a0,a3,13e90 <eshup1+0x70>
   13e48:	0006d783          	lhu	a5,0(a3)
   13e4c:	0107961b          	slliw	a2,a5,0x10
   13e50:	4106561b          	sraiw	a2,a2,0x10
   13e54:	02061593          	slli	a1,a2,0x20
   13e58:	0017979b          	slliw	a5,a5,0x1
   13e5c:	0005d463          	bgez	a1,13e64 <eshup1+0x44>
   13e60:	00176713          	ori	a4,a4,1
   13e64:	03079793          	slli	a5,a5,0x30
   13e68:	0307d793          	srli	a5,a5,0x30
   13e6c:	00277613          	andi	a2,a4,2
   13e70:	0017e593          	ori	a1,a5,1
   13e74:	fa060ee3          	beqz	a2,13e30 <eshup1+0x10>
   13e78:	0017171b          	slliw	a4,a4,0x1
   13e7c:	00b69023          	sh	a1,0(a3)
   13e80:	03071713          	slli	a4,a4,0x30
   13e84:	ffe68693          	addi	a3,a3,-2
   13e88:	03075713          	srli	a4,a4,0x30
   13e8c:	fad51ee3          	bne	a0,a3,13e48 <eshup1+0x28>
   13e90:	00008067          	ret

0000000000013e94 <m16m>:
   13e94:	fa010113          	addi	sp,sp,-96
   13e98:	03413823          	sd	s4,48(sp)
   13e9c:	00010a37          	lui	s4,0x10
   13ea0:	04813823          	sd	s0,80(sp)
   13ea4:	04913423          	sd	s1,72(sp)
   13ea8:	05213023          	sd	s2,64(sp)
   13eac:	03313c23          	sd	s3,56(sp)
   13eb0:	03513423          	sd	s5,40(sp)
   13eb4:	04113c23          	sd	ra,88(sp)
   13eb8:	00050a93          	mv	s5,a0
   13ebc:	00060493          	mv	s1,a2
   13ec0:	00011b23          	sh	zero,22(sp)
   13ec4:	00011c23          	sh	zero,24(sp)
   13ec8:	01858913          	addi	s2,a1,24
   13ecc:	01810413          	addi	s0,sp,24
   13ed0:	00410993          	addi	s3,sp,4
   13ed4:	fffa0a13          	addi	s4,s4,-1 # ffff <register_fini-0xb1>
   13ed8:	00095783          	lhu	a5,0(s2)
   13edc:	000a8593          	mv	a1,s5
   13ee0:	ffe40413          	addi	s0,s0,-2
   13ee4:	ffe90913          	addi	s2,s2,-2
   13ee8:	00078513          	mv	a0,a5
   13eec:	04079663          	bnez	a5,13f38 <m16m+0xa4>
   13ef0:	fe041f23          	sh	zero,-2(s0)
   13ef4:	ff3412e3          	bne	s0,s3,13ed8 <m16m+0x44>
   13ef8:	00448613          	addi	a2,s1,4
   13efc:	01a10713          	addi	a4,sp,26
   13f00:	00045783          	lhu	a5,0(s0)
   13f04:	00260613          	addi	a2,a2,2
   13f08:	00240413          	addi	s0,s0,2
   13f0c:	fef61f23          	sh	a5,-2(a2)
   13f10:	fee418e3          	bne	s0,a4,13f00 <m16m+0x6c>
   13f14:	05813083          	ld	ra,88(sp)
   13f18:	05013403          	ld	s0,80(sp)
   13f1c:	04813483          	ld	s1,72(sp)
   13f20:	04013903          	ld	s2,64(sp)
   13f24:	03813983          	ld	s3,56(sp)
   13f28:	03013a03          	ld	s4,48(sp)
   13f2c:	02813a83          	ld	s5,40(sp)
   13f30:	06010113          	addi	sp,sp,96
   13f34:	00008067          	ret
   13f38:	2480d0ef          	jal	ra,21180 <__muldi3>
   13f3c:	00245703          	lhu	a4,2(s0)
   13f40:	00045683          	lhu	a3,0(s0)
   13f44:	014577b3          	and	a5,a0,s4
   13f48:	00e787b3          	add	a5,a5,a4
   13f4c:	01055513          	srli	a0,a0,0x10
   13f50:	0107d713          	srli	a4,a5,0x10
   13f54:	00d50533          	add	a0,a0,a3
   13f58:	00e50533          	add	a0,a0,a4
   13f5c:	01055713          	srli	a4,a0,0x10
   13f60:	00f41123          	sh	a5,2(s0)
   13f64:	00a41023          	sh	a0,0(s0)
   13f68:	fee41f23          	sh	a4,-2(s0)
   13f6c:	f73416e3          	bne	s0,s3,13ed8 <m16m+0x44>
   13f70:	f89ff06f          	j	13ef8 <m16m+0x64>

0000000000013f74 <eisnan.part.0>:
   13f74:	01250713          	addi	a4,a0,18
   13f78:	00250513          	addi	a0,a0,2
   13f7c:	ffe55783          	lhu	a5,-2(a0)
   13f80:	00079863          	bnez	a5,13f90 <eisnan.part.0+0x1c>
   13f84:	fea71ae3          	bne	a4,a0,13f78 <eisnan.part.0+0x4>
   13f88:	00000513          	li	a0,0
   13f8c:	00008067          	ret
   13f90:	00100513          	li	a0,1
   13f94:	00008067          	ret

0000000000013f98 <eneg>:
   13f98:	fe010113          	addi	sp,sp,-32
   13f9c:	00813823          	sd	s0,16(sp)
   13fa0:	01255403          	lhu	s0,18(a0)
   13fa4:	00913423          	sd	s1,8(sp)
   13fa8:	00113c23          	sd	ra,24(sp)
   13fac:	fff44793          	not	a5,s0
   13fb0:	03179713          	slli	a4,a5,0x31
   13fb4:	00050493          	mv	s1,a0
   13fb8:	00071663          	bnez	a4,13fc4 <eneg+0x2c>
   13fbc:	fb9ff0ef          	jal	ra,13f74 <eisnan.part.0>
   13fc0:	00051863          	bnez	a0,13fd0 <eneg+0x38>
   13fc4:	ffff87b7          	lui	a5,0xffff8
   13fc8:	00f44433          	xor	s0,s0,a5
   13fcc:	00849923          	sh	s0,18(s1)
   13fd0:	01813083          	ld	ra,24(sp)
   13fd4:	01013403          	ld	s0,16(sp)
   13fd8:	00813483          	ld	s1,8(sp)
   13fdc:	02010113          	addi	sp,sp,32
   13fe0:	00008067          	ret

0000000000013fe4 <eisneg>:
   13fe4:	ff010113          	addi	sp,sp,-16
   13fe8:	00813023          	sd	s0,0(sp)
   13fec:	01255403          	lhu	s0,18(a0)
   13ff0:	00113423          	sd	ra,8(sp)
   13ff4:	fff44793          	not	a5,s0
   13ff8:	03179713          	slli	a4,a5,0x31
   13ffc:	00071863          	bnez	a4,1400c <eisneg+0x28>
   14000:	f75ff0ef          	jal	ra,13f74 <eisnan.part.0>
   14004:	00000793          	li	a5,0
   14008:	00051463          	bnez	a0,14010 <eisneg+0x2c>
   1400c:	00f45793          	srli	a5,s0,0xf
   14010:	00813083          	ld	ra,8(sp)
   14014:	00013403          	ld	s0,0(sp)
   14018:	00078513          	mv	a0,a5
   1401c:	01010113          	addi	sp,sp,16
   14020:	00008067          	ret

0000000000014024 <emovi>:
   14024:	01255783          	lhu	a5,18(a0)
   14028:	fe010113          	addi	sp,sp,-32
   1402c:	00813823          	sd	s0,16(sp)
   14030:	00f7d79b          	srliw	a5,a5,0xf
   14034:	00913423          	sd	s1,8(sp)
   14038:	00113c23          	sd	ra,24(sp)
   1403c:	01213023          	sd	s2,0(sp)
   14040:	40f007bb          	negw	a5,a5
   14044:	00f59023          	sh	a5,0(a1)
   14048:	01255783          	lhu	a5,18(a0)
   1404c:	000086b7          	lui	a3,0x8
   14050:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   14054:	00f6f7b3          	and	a5,a3,a5
   14058:	00f59123          	sh	a5,2(a1)
   1405c:	0007879b          	sext.w	a5,a5
   14060:	00050493          	mv	s1,a0
   14064:	01050413          	addi	s0,a0,16
   14068:	04d78063          	beq	a5,a3,140a8 <emovi+0x84>
   1406c:	00658793          	addi	a5,a1,6
   14070:	00059223          	sh	zero,4(a1)
   14074:	ffe50513          	addi	a0,a0,-2
   14078:	ffe40413          	addi	s0,s0,-2
   1407c:	00245703          	lhu	a4,2(s0)
   14080:	00278793          	addi	a5,a5,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd4dfa>
   14084:	fee79f23          	sh	a4,-2(a5)
   14088:	fea418e3          	bne	s0,a0,14078 <emovi+0x54>
   1408c:	00059c23          	sh	zero,24(a1)
   14090:	01813083          	ld	ra,24(sp)
   14094:	01013403          	ld	s0,16(sp)
   14098:	00813483          	ld	s1,8(sp)
   1409c:	00013903          	ld	s2,0(sp)
   140a0:	02010113          	addi	sp,sp,32
   140a4:	00008067          	ret
   140a8:	01255703          	lhu	a4,18(a0)
   140ac:	00058913          	mv	s2,a1
   140b0:	00e7f733          	and	a4,a5,a4
   140b4:	02f71863          	bne	a4,a5,140e4 <emovi+0xc0>
   140b8:	ebdff0ef          	jal	ra,13f74 <eisnan.part.0>
   140bc:	02050463          	beqz	a0,140e4 <emovi+0xc0>
   140c0:	00690713          	addi	a4,s2,6
   140c4:	00091223          	sh	zero,4(s2)
   140c8:	ffc48793          	addi	a5,s1,-4
   140cc:	ffe40413          	addi	s0,s0,-2
   140d0:	00245683          	lhu	a3,2(s0)
   140d4:	00270713          	addi	a4,a4,2
   140d8:	fed71f23          	sh	a3,-2(a4)
   140dc:	fe8798e3          	bne	a5,s0,140cc <emovi+0xa8>
   140e0:	fb1ff06f          	j	14090 <emovi+0x6c>
   140e4:	00490793          	addi	a5,s2,4
   140e8:	01a90593          	addi	a1,s2,26
   140ec:	00278793          	addi	a5,a5,2
   140f0:	fe079f23          	sh	zero,-2(a5)
   140f4:	fef59ce3          	bne	a1,a5,140ec <emovi+0xc8>
   140f8:	01813083          	ld	ra,24(sp)
   140fc:	01013403          	ld	s0,16(sp)
   14100:	00813483          	ld	s1,8(sp)
   14104:	00013903          	ld	s2,0(sp)
   14108:	02010113          	addi	sp,sp,32
   1410c:	00008067          	ret

0000000000014110 <ecmp>:
   14110:	01255783          	lhu	a5,18(a0)
   14114:	fa010113          	addi	sp,sp,-96
   14118:	04813823          	sd	s0,80(sp)
   1411c:	fff7c793          	not	a5,a5
   14120:	04913423          	sd	s1,72(sp)
   14124:	04113c23          	sd	ra,88(sp)
   14128:	03179713          	slli	a4,a5,0x31
   1412c:	00050493          	mv	s1,a0
   14130:	00058413          	mv	s0,a1
   14134:	00071663          	bnez	a4,14140 <ecmp+0x30>
   14138:	e3dff0ef          	jal	ra,13f74 <eisnan.part.0>
   1413c:	08051263          	bnez	a0,141c0 <ecmp+0xb0>
   14140:	01245783          	lhu	a5,18(s0)
   14144:	fff7c793          	not	a5,a5
   14148:	03179713          	slli	a4,a5,0x31
   1414c:	06070463          	beqz	a4,141b4 <ecmp+0xa4>
   14150:	00010593          	mv	a1,sp
   14154:	00048513          	mv	a0,s1
   14158:	ecdff0ef          	jal	ra,14024 <emovi>
   1415c:	02010593          	addi	a1,sp,32
   14160:	00040513          	mv	a0,s0
   14164:	ec1ff0ef          	jal	ra,14024 <emovi>
   14168:	00015583          	lhu	a1,0(sp)
   1416c:	02015783          	lhu	a5,32(sp)
   14170:	04b78c63          	beq	a5,a1,141c8 <ecmp+0xb8>
   14174:	00210793          	addi	a5,sp,2
   14178:	02210713          	addi	a4,sp,34
   1417c:	01810613          	addi	a2,sp,24
   14180:	0007d683          	lhu	a3,0(a5)
   14184:	00278793          	addi	a5,a5,2
   14188:	08069663          	bnez	a3,14214 <ecmp+0x104>
   1418c:	00075683          	lhu	a3,0(a4)
   14190:	00270713          	addi	a4,a4,2
   14194:	08069063          	bnez	a3,14214 <ecmp+0x104>
   14198:	fec794e3          	bne	a5,a2,14180 <ecmp+0x70>
   1419c:	00000513          	li	a0,0
   141a0:	05813083          	ld	ra,88(sp)
   141a4:	05013403          	ld	s0,80(sp)
   141a8:	04813483          	ld	s1,72(sp)
   141ac:	06010113          	addi	sp,sp,96
   141b0:	00008067          	ret
   141b4:	00040513          	mv	a0,s0
   141b8:	dbdff0ef          	jal	ra,13f74 <eisnan.part.0>
   141bc:	f8050ae3          	beqz	a0,14150 <ecmp+0x40>
   141c0:	ffe00513          	li	a0,-2
   141c4:	fddff06f          	j	141a0 <ecmp+0x90>
   141c8:	00100513          	li	a0,1
   141cc:	04059c63          	bnez	a1,14224 <ecmp+0x114>
   141d0:	00210713          	addi	a4,sp,2
   141d4:	02210793          	addi	a5,sp,34
   141d8:	00278793          	addi	a5,a5,2
   141dc:	00270713          	addi	a4,a4,2
   141e0:	ffe75603          	lhu	a2,-2(a4)
   141e4:	ffe7d683          	lhu	a3,-2(a5)
   141e8:	03810593          	addi	a1,sp,56
   141ec:	00d61e63          	bne	a2,a3,14208 <ecmp+0xf8>
   141f0:	fab786e3          	beq	a5,a1,1419c <ecmp+0x8c>
   141f4:	00278793          	addi	a5,a5,2
   141f8:	00270713          	addi	a4,a4,2
   141fc:	ffe75603          	lhu	a2,-2(a4)
   14200:	ffe7d683          	lhu	a3,-2(a5)
   14204:	fed606e3          	beq	a2,a3,141f0 <ecmp+0xe0>
   14208:	f8c6ece3          	bltu	a3,a2,141a0 <ecmp+0x90>
   1420c:	40a0053b          	negw	a0,a0
   14210:	f91ff06f          	j	141a0 <ecmp+0x90>
   14214:	00100513          	li	a0,1
   14218:	f80584e3          	beqz	a1,141a0 <ecmp+0x90>
   1421c:	fff00513          	li	a0,-1
   14220:	f81ff06f          	j	141a0 <ecmp+0x90>
   14224:	fff00513          	li	a0,-1
   14228:	fa9ff06f          	j	141d0 <ecmp+0xc0>

000000000001422c <eisinf.part.1>:
   1422c:	ff010113          	addi	sp,sp,-16
   14230:	00113423          	sd	ra,8(sp)
   14234:	d41ff0ef          	jal	ra,13f74 <eisnan.part.0>
   14238:	00813083          	ld	ra,8(sp)
   1423c:	00153513          	seqz	a0,a0
   14240:	01010113          	addi	sp,sp,16
   14244:	00008067          	ret

0000000000014248 <eshift.part.3>:
   14248:	fe010113          	addi	sp,sp,-32
   1424c:	00813823          	sd	s0,16(sp)
   14250:	01213023          	sd	s2,0(sp)
   14254:	00113c23          	sd	ra,24(sp)
   14258:	00913423          	sd	s1,8(sp)
   1425c:	00058913          	mv	s2,a1
   14260:	00050413          	mv	s0,a0
   14264:	0a05c263          	bltz	a1,14308 <eshift.part.3+0xc0>
   14268:	00f00793          	li	a5,15
   1426c:	00058613          	mv	a2,a1
   14270:	00450513          	addi	a0,a0,4
   14274:	01840693          	addi	a3,s0,24
   14278:	00f00593          	li	a1,15
   1427c:	0327d463          	bge	a5,s2,142a4 <eshift.part.3+0x5c>
   14280:	00050793          	mv	a5,a0
   14284:	00278793          	addi	a5,a5,2
   14288:	0007d703          	lhu	a4,0(a5)
   1428c:	fee79f23          	sh	a4,-2(a5)
   14290:	fed79ae3          	bne	a5,a3,14284 <eshift.part.3+0x3c>
   14294:	00041c23          	sh	zero,24(s0)
   14298:	ff06061b          	addiw	a2,a2,-16
   1429c:	fec5c2e3          	blt	a1,a2,14280 <eshift.part.3+0x38>
   142a0:	00f97913          	andi	s2,s2,15
   142a4:	00700793          	li	a5,7
   142a8:	0327d863          	bge	a5,s2,142d8 <eshift.part.3+0x90>
   142ac:	01840793          	addi	a5,s0,24
   142b0:	00240593          	addi	a1,s0,2
   142b4:	00000713          	li	a4,0
   142b8:	0007d683          	lhu	a3,0(a5)
   142bc:	ffe78793          	addi	a5,a5,-2
   142c0:	00869613          	slli	a2,a3,0x8
   142c4:	00c76733          	or	a4,a4,a2
   142c8:	00e79123          	sh	a4,2(a5)
   142cc:	0086d713          	srli	a4,a3,0x8
   142d0:	feb794e3          	bne	a5,a1,142b8 <eshift.part.3+0x70>
   142d4:	ff89091b          	addiw	s2,s2,-8
   142d8:	00090a63          	beqz	s2,142ec <eshift.part.3+0xa4>
   142dc:	fff9091b          	addiw	s2,s2,-1
   142e0:	00040513          	mv	a0,s0
   142e4:	b3dff0ef          	jal	ra,13e20 <eshup1>
   142e8:	fe091ae3          	bnez	s2,142dc <eshift.part.3+0x94>
   142ec:	01813083          	ld	ra,24(sp)
   142f0:	01013403          	ld	s0,16(sp)
   142f4:	00813483          	ld	s1,8(sp)
   142f8:	00013903          	ld	s2,0(sp)
   142fc:	00000513          	li	a0,0
   14300:	02010113          	addi	sp,sp,32
   14304:	00008067          	ret
   14308:	ff100793          	li	a5,-15
   1430c:	40b004bb          	negw	s1,a1
   14310:	0cf5d463          	bge	a1,a5,143d8 <eshift.part.3+0x190>
   14314:	01850593          	addi	a1,a0,24
   14318:	00000913          	li	s2,0
   1431c:	00450693          	addi	a3,a0,4
   14320:	00f00613          	li	a2,15
   14324:	01845703          	lhu	a4,24(s0)
   14328:	00058793          	mv	a5,a1
   1432c:	00e96933          	or	s2,s2,a4
   14330:	ffe78793          	addi	a5,a5,-2
   14334:	0007d703          	lhu	a4,0(a5)
   14338:	00e79123          	sh	a4,2(a5)
   1433c:	fed79ae3          	bne	a5,a3,14330 <eshift.part.3+0xe8>
   14340:	00041223          	sh	zero,4(s0)
   14344:	ff04849b          	addiw	s1,s1,-16
   14348:	fc964ee3          	blt	a2,s1,14324 <eshift.part.3+0xdc>
   1434c:	00700793          	li	a5,7
   14350:	0497d663          	bge	a5,s1,1439c <eshift.part.3+0x154>
   14354:	0109191b          	slliw	s2,s2,0x10
   14358:	4109591b          	sraiw	s2,s2,0x10
   1435c:	01844783          	lbu	a5,24(s0)
   14360:	01a40593          	addi	a1,s0,26
   14364:	00000713          	li	a4,0
   14368:	00f96933          	or	s2,s2,a5
   1436c:	03091913          	slli	s2,s2,0x30
   14370:	03095913          	srli	s2,s2,0x30
   14374:	0006d783          	lhu	a5,0(a3)
   14378:	00268693          	addi	a3,a3,2
   1437c:	0087d61b          	srliw	a2,a5,0x8
   14380:	00c76733          	or	a4,a4,a2
   14384:	0087979b          	slliw	a5,a5,0x8
   14388:	fee69f23          	sh	a4,-2(a3)
   1438c:	03079713          	slli	a4,a5,0x30
   14390:	03075713          	srli	a4,a4,0x30
   14394:	feb690e3          	bne	a3,a1,14374 <eshift.part.3+0x12c>
   14398:	ff84849b          	addiw	s1,s1,-8
   1439c:	02048063          	beqz	s1,143bc <eshift.part.3+0x174>
   143a0:	01845783          	lhu	a5,24(s0)
   143a4:	fff4849b          	addiw	s1,s1,-1
   143a8:	00040513          	mv	a0,s0
   143ac:	0017f793          	andi	a5,a5,1
   143b0:	0127e933          	or	s2,a5,s2
   143b4:	a05ff0ef          	jal	ra,13db8 <eshdn1>
   143b8:	fe0494e3          	bnez	s1,143a0 <eshift.part.3+0x158>
   143bc:	01813083          	ld	ra,24(sp)
   143c0:	01013403          	ld	s0,16(sp)
   143c4:	01203533          	snez	a0,s2
   143c8:	00813483          	ld	s1,8(sp)
   143cc:	00013903          	ld	s2,0(sp)
   143d0:	02010113          	addi	sp,sp,32
   143d4:	00008067          	ret
   143d8:	ff900793          	li	a5,-7
   143dc:	00f5c663          	blt	a1,a5,143e8 <eshift.part.3+0x1a0>
   143e0:	00000913          	li	s2,0
   143e4:	fbdff06f          	j	143a0 <eshift.part.3+0x158>
   143e8:	00000913          	li	s2,0
   143ec:	00440693          	addi	a3,s0,4
   143f0:	f6dff06f          	j	1435c <eshift.part.3+0x114>

00000000000143f4 <enormlz>:
   143f4:	00455783          	lhu	a5,4(a0)
   143f8:	fe010113          	addi	sp,sp,-32
   143fc:	00913423          	sd	s1,8(sp)
   14400:	00113c23          	sd	ra,24(sp)
   14404:	00813823          	sd	s0,16(sp)
   14408:	01213023          	sd	s2,0(sp)
   1440c:	00050493          	mv	s1,a0
   14410:	0e079063          	bnez	a5,144f0 <enormlz+0xfc>
   14414:	00655703          	lhu	a4,6(a0)
   14418:	00000413          	li	s0,0
   1441c:	0107179b          	slliw	a5,a4,0x10
   14420:	4107d79b          	sraiw	a5,a5,0x10
   14424:	02079693          	slli	a3,a5,0x20
   14428:	0a06c663          	bltz	a3,144d4 <enormlz+0xe0>
   1442c:	01a50693          	addi	a3,a0,26
   14430:	0a000613          	li	a2,160
   14434:	02071863          	bnez	a4,14464 <enormlz+0x70>
   14438:	00648793          	addi	a5,s1,6
   1443c:	0080006f          	j	14444 <enormlz+0x50>
   14440:	0007d703          	lhu	a4,0(a5)
   14444:	00278793          	addi	a5,a5,2
   14448:	fee79e23          	sh	a4,-4(a5)
   1444c:	fef69ae3          	bne	a3,a5,14440 <enormlz+0x4c>
   14450:	00049c23          	sh	zero,24(s1)
   14454:	0104041b          	addiw	s0,s0,16
   14458:	06c40e63          	beq	s0,a2,144d4 <enormlz+0xe0>
   1445c:	0064d703          	lhu	a4,6(s1)
   14460:	fc070ce3          	beqz	a4,14438 <enormlz+0x44>
   14464:	f0077793          	andi	a5,a4,-256
   14468:	04079063          	bnez	a5,144a8 <enormlz+0xb4>
   1446c:	01848513          	addi	a0,s1,24
   14470:	00248593          	addi	a1,s1,2
   14474:	00000713          	li	a4,0
   14478:	00050793          	mv	a5,a0
   1447c:	0007d683          	lhu	a3,0(a5)
   14480:	ffe78793          	addi	a5,a5,-2
   14484:	00869613          	slli	a2,a3,0x8
   14488:	00c76733          	or	a4,a4,a2
   1448c:	00e79123          	sh	a4,2(a5)
   14490:	0086d713          	srli	a4,a3,0x8
   14494:	fef594e3          	bne	a1,a5,1447c <enormlz+0x88>
   14498:	0064d703          	lhu	a4,6(s1)
   1449c:	0084041b          	addiw	s0,s0,8
   144a0:	f0077793          	andi	a5,a4,-256
   144a4:	fc0788e3          	beqz	a5,14474 <enormlz+0x80>
   144a8:	0a000913          	li	s2,160
   144ac:	0140006f          	j	144c0 <enormlz+0xcc>
   144b0:	0014041b          	addiw	s0,s0,1
   144b4:	96dff0ef          	jal	ra,13e20 <eshup1>
   144b8:	00894e63          	blt	s2,s0,144d4 <enormlz+0xe0>
   144bc:	0064d703          	lhu	a4,6(s1)
   144c0:	0107171b          	slliw	a4,a4,0x10
   144c4:	4107571b          	sraiw	a4,a4,0x10
   144c8:	02071793          	slli	a5,a4,0x20
   144cc:	00048513          	mv	a0,s1
   144d0:	fe07d0e3          	bgez	a5,144b0 <enormlz+0xbc>
   144d4:	00040513          	mv	a0,s0
   144d8:	01813083          	ld	ra,24(sp)
   144dc:	01013403          	ld	s0,16(sp)
   144e0:	00813483          	ld	s1,8(sp)
   144e4:	00013903          	ld	s2,0(sp)
   144e8:	02010113          	addi	sp,sp,32
   144ec:	00008067          	ret
   144f0:	f007f713          	andi	a4,a5,-256
   144f4:	00000413          	li	s0,0
   144f8:	04071063          	bnez	a4,14538 <enormlz+0x144>
   144fc:	f6f00913          	li	s2,-145
   14500:	0140006f          	j	14514 <enormlz+0x120>
   14504:	fff4041b          	addiw	s0,s0,-1
   14508:	8b1ff0ef          	jal	ra,13db8 <eshdn1>
   1450c:	fd2404e3          	beq	s0,s2,144d4 <enormlz+0xe0>
   14510:	0044d783          	lhu	a5,4(s1)
   14514:	00048513          	mv	a0,s1
   14518:	fe0796e3          	bnez	a5,14504 <enormlz+0x110>
   1451c:	00040513          	mv	a0,s0
   14520:	01813083          	ld	ra,24(sp)
   14524:	01013403          	ld	s0,16(sp)
   14528:	00813483          	ld	s1,8(sp)
   1452c:	00013903          	ld	s2,0(sp)
   14530:	02010113          	addi	sp,sp,32
   14534:	00008067          	ret
   14538:	00450693          	addi	a3,a0,4
   1453c:	01a50593          	addi	a1,a0,26
   14540:	00000713          	li	a4,0
   14544:	0080006f          	j	1454c <enormlz+0x158>
   14548:	0006d783          	lhu	a5,0(a3)
   1454c:	0087d61b          	srliw	a2,a5,0x8
   14550:	00c76733          	or	a4,a4,a2
   14554:	0087979b          	slliw	a5,a5,0x8
   14558:	00e69023          	sh	a4,0(a3)
   1455c:	03079713          	slli	a4,a5,0x30
   14560:	00268693          	addi	a3,a3,2
   14564:	03075713          	srli	a4,a4,0x30
   14568:	feb690e3          	bne	a3,a1,14548 <enormlz+0x154>
   1456c:	0044d783          	lhu	a5,4(s1)
   14570:	ff800413          	li	s0,-8
   14574:	f89ff06f          	j	144fc <enormlz+0x108>

0000000000014578 <emdnorm>:
   14578:	fc010113          	addi	sp,sp,-64
   1457c:	02813823          	sd	s0,48(sp)
   14580:	02913423          	sd	s1,40(sp)
   14584:	03213023          	sd	s2,32(sp)
   14588:	01313c23          	sd	s3,24(sp)
   1458c:	01413823          	sd	s4,16(sp)
   14590:	01513423          	sd	s5,8(sp)
   14594:	00068913          	mv	s2,a3
   14598:	00078493          	mv	s1,a5
   1459c:	02113c23          	sd	ra,56(sp)
   145a0:	00050413          	mv	s0,a0
   145a4:	00058993          	mv	s3,a1
   145a8:	00060a13          	mv	s4,a2
   145ac:	00070a93          	mv	s5,a4
   145b0:	e45ff0ef          	jal	ra,143f4 <enormlz>
   145b4:	09000793          	li	a5,144
   145b8:	40a90933          	sub	s2,s2,a0
   145bc:	08a7d063          	bge	a5,a0,1463c <emdnorm+0xc4>
   145c0:	000087b7          	lui	a5,0x8
   145c4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   145c8:	2327dc63          	bge	a5,s2,14800 <emdnorm+0x288>
   145cc:	200a8663          	beqz	s5,147d8 <emdnorm+0x260>
   145d0:	0044a503          	lw	a0,4(s1)
   145d4:	0004a783          	lw	a5,0(s1)
   145d8:	0ea78e63          	beq	a5,a0,146d4 <emdnorm+0x15c>
   145dc:	01a48713          	addi	a4,s1,26
   145e0:	03448793          	addi	a5,s1,52
   145e4:	00270713          	addi	a4,a4,2
   145e8:	fe071f23          	sh	zero,-2(a4)
   145ec:	fef71ce3          	bne	a4,a5,145e4 <emdnorm+0x6c>
   145f0:	03800793          	li	a5,56
   145f4:	38f50263          	beq	a0,a5,14978 <emdnorm+0x400>
   145f8:	06a7d463          	bge	a5,a0,14660 <emdnorm+0xe8>
   145fc:	04000793          	li	a5,64
   14600:	30f50c63          	beq	a0,a5,14918 <emdnorm+0x3a0>
   14604:	07100793          	li	a5,113
   14608:	32f51e63          	bne	a0,a5,14944 <emdnorm+0x3cc>
   1460c:	00a00793          	li	a5,10
   14610:	40008737          	lui	a4,0x40008
   14614:	fff70713          	addi	a4,a4,-1 # 40007fff <__BSS_END__+0x3ffe4df7>
   14618:	02079793          	slli	a5,a5,0x20
   1461c:	00a78793          	addi	a5,a5,10
   14620:	00e4aa23          	sw	a4,20(s1)
   14624:	ffff8737          	lui	a4,0xffff8
   14628:	00e49c23          	sh	a4,24(s1)
   1462c:	00f4b423          	sd	a5,8(s1)
   14630:	00008737          	lui	a4,0x8
   14634:	00a00793          	li	a5,10
   14638:	0640006f          	j	1469c <emdnorm+0x124>
   1463c:	20095263          	bgez	s2,14840 <emdnorm+0x2c8>
   14640:	f7000793          	li	a5,-144
   14644:	1cf95a63          	bge	s2,a5,14818 <emdnorm+0x2a0>
   14648:	00240793          	addi	a5,s0,2
   1464c:	01a40413          	addi	s0,s0,26
   14650:	00278793          	addi	a5,a5,2
   14654:	fe079f23          	sh	zero,-2(a5)
   14658:	fe879ce3          	bne	a5,s0,14650 <emdnorm+0xd8>
   1465c:	1580006f          	j	147b4 <emdnorm+0x23c>
   14660:	01800793          	li	a5,24
   14664:	28f50463          	beq	a0,a5,148ec <emdnorm+0x374>
   14668:	03500793          	li	a5,53
   1466c:	2cf51c63          	bne	a0,a5,14944 <emdnorm+0x3cc>
   14670:	040006b7          	lui	a3,0x4000
   14674:	00001737          	lui	a4,0x1
   14678:	7ff68693          	addi	a3,a3,2047 # 40007ff <__BSS_END__+0x3fdd5f7>
   1467c:	00600793          	li	a5,6
   14680:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14684:	00d4aa23          	sw	a3,20(s1)
   14688:	02079793          	slli	a5,a5,0x20
   1468c:	00678793          	addi	a5,a5,6
   14690:	00f4b423          	sd	a5,8(s1)
   14694:	00e49c23          	sh	a4,24(s1)
   14698:	00600793          	li	a5,6
   1469c:	00878793          	addi	a5,a5,8
   146a0:	00179793          	slli	a5,a5,0x1
   146a4:	00f487b3          	add	a5,s1,a5
   146a8:	00e79523          	sh	a4,10(a5)
   146ac:	00a4a023          	sw	a0,0(s1)
   146b0:	03204263          	bgtz	s2,146d4 <emdnorm+0x15c>
   146b4:	09000793          	li	a5,144
   146b8:	20f50663          	beq	a0,a5,148c4 <emdnorm+0x34c>
   146bc:	01845783          	lhu	a5,24(s0)
   146c0:	00040513          	mv	a0,s0
   146c4:	0017f793          	andi	a5,a5,1
   146c8:	00f9e9b3          	or	s3,s3,a5
   146cc:	eecff0ef          	jal	ra,13db8 <eshdn1>
   146d0:	0044a503          	lw	a0,4(s1)
   146d4:	0084a683          	lw	a3,8(s1)
   146d8:	0144d603          	lhu	a2,20(s1)
   146dc:	08f00793          	li	a5,143
   146e0:	00169713          	slli	a4,a3,0x1
   146e4:	00e40833          	add	a6,s0,a4
   146e8:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   146ec:	00c8f5b3          	and	a1,a7,a2
   146f0:	04a7c863          	blt	a5,a0,14740 <emdnorm+0x1c8>
   146f4:	00b00793          	li	a5,11
   146f8:	04d7c463          	blt	a5,a3,14740 <emdnorm+0x1c8>
   146fc:	40d787bb          	subw	a5,a5,a3
   14700:	02079793          	slli	a5,a5,0x20
   14704:	0207d793          	srli	a5,a5,0x20
   14708:	00d787b3          	add	a5,a5,a3
   1470c:	00179693          	slli	a3,a5,0x1
   14710:	00270713          	addi	a4,a4,2
   14714:	00440793          	addi	a5,s0,4
   14718:	00e40733          	add	a4,s0,a4
   1471c:	00f687b3          	add	a5,a3,a5
   14720:	00075683          	lhu	a3,0(a4)
   14724:	00068463          	beqz	a3,1472c <emdnorm+0x1b4>
   14728:	0015e593          	ori	a1,a1,1
   1472c:	00071023          	sh	zero,0(a4)
   14730:	00270713          	addi	a4,a4,2
   14734:	fee796e3          	bne	a5,a4,14720 <emdnorm+0x1a8>
   14738:	00085883          	lhu	a7,0(a6)
   1473c:	0144d603          	lhu	a2,20(s1)
   14740:	fff64613          	not	a2,a2
   14744:	01167633          	and	a2,a2,a7
   14748:	00c81023          	sh	a2,0(a6)
   1474c:	0164d783          	lhu	a5,22(s1)
   14750:	00b7f733          	and	a4,a5,a1
   14754:	04070063          	beqz	a4,14794 <emdnorm+0x21c>
   14758:	12b78263          	beq	a5,a1,1487c <emdnorm+0x304>
   1475c:	03248613          	addi	a2,s1,50
   14760:	01840713          	addi	a4,s0,24
   14764:	01c48493          	addi	s1,s1,28
   14768:	00000693          	li	a3,0
   1476c:	00065783          	lhu	a5,0(a2)
   14770:	00075583          	lhu	a1,0(a4)
   14774:	ffe70713          	addi	a4,a4,-2
   14778:	ffe60613          	addi	a2,a2,-2
   1477c:	00b787b3          	add	a5,a5,a1
   14780:	00d787b3          	add	a5,a5,a3
   14784:	00f71123          	sh	a5,2(a4)
   14788:	0107d793          	srli	a5,a5,0x10
   1478c:	0017f693          	andi	a3,a5,1
   14790:	fc961ee3          	bne	a2,s1,1476c <emdnorm+0x1f4>
   14794:	11205663          	blez	s2,148a0 <emdnorm+0x328>
   14798:	00445783          	lhu	a5,4(s0)
   1479c:	0a079c63          	bnez	a5,14854 <emdnorm+0x2dc>
   147a0:	000087b7          	lui	a5,0x8
   147a4:	00041c23          	sh	zero,24(s0)
   147a8:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   147ac:	0327c863          	blt	a5,s2,147dc <emdnorm+0x264>
   147b0:	01241123          	sh	s2,2(s0)
   147b4:	03813083          	ld	ra,56(sp)
   147b8:	03013403          	ld	s0,48(sp)
   147bc:	02813483          	ld	s1,40(sp)
   147c0:	02013903          	ld	s2,32(sp)
   147c4:	01813983          	ld	s3,24(sp)
   147c8:	01013a03          	ld	s4,16(sp)
   147cc:	00813a83          	ld	s5,8(sp)
   147d0:	04010113          	addi	sp,sp,64
   147d4:	00008067          	ret
   147d8:	00041c23          	sh	zero,24(s0)
   147dc:	ffff87b7          	lui	a5,0xffff8
   147e0:	fff7c793          	not	a5,a5
   147e4:	00f41123          	sh	a5,2(s0)
   147e8:	00440793          	addi	a5,s0,4
   147ec:	01840413          	addi	s0,s0,24
   147f0:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   147f4:	00278793          	addi	a5,a5,2
   147f8:	fef41ce3          	bne	s0,a5,147f0 <emdnorm+0x278>
   147fc:	fb9ff06f          	j	147b4 <emdnorm+0x23c>
   14800:	00240793          	addi	a5,s0,2
   14804:	01a40413          	addi	s0,s0,26
   14808:	00278793          	addi	a5,a5,2
   1480c:	fe079f23          	sh	zero,-2(a5)
   14810:	fe879ce3          	bne	a5,s0,14808 <emdnorm+0x290>
   14814:	fa1ff06f          	j	147b4 <emdnorm+0x23c>
   14818:	0009059b          	sext.w	a1,s2
   1481c:	00040513          	mv	a0,s0
   14820:	a29ff0ef          	jal	ra,14248 <eshift.part.3>
   14824:	00050463          	beqz	a0,1482c <emdnorm+0x2b4>
   14828:	00100993          	li	s3,1
   1482c:	0a0a8a63          	beqz	s5,148e0 <emdnorm+0x368>
   14830:	0044a503          	lw	a0,4(s1)
   14834:	0004a783          	lw	a5,0(s1)
   14838:	daa792e3          	bne	a5,a0,145dc <emdnorm+0x64>
   1483c:	e79ff06f          	j	146b4 <emdnorm+0x13c>
   14840:	f60a80e3          	beqz	s5,147a0 <emdnorm+0x228>
   14844:	0044a503          	lw	a0,4(s1)
   14848:	0004a783          	lw	a5,0(s1)
   1484c:	d8a798e3          	bne	a5,a0,145dc <emdnorm+0x64>
   14850:	e61ff06f          	j	146b0 <emdnorm+0x138>
   14854:	00040513          	mv	a0,s0
   14858:	d60ff0ef          	jal	ra,13db8 <eshdn1>
   1485c:	000087b7          	lui	a5,0x8
   14860:	00190913          	addi	s2,s2,1
   14864:	00041c23          	sh	zero,24(s0)
   14868:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   1486c:	f727c8e3          	blt	a5,s2,147dc <emdnorm+0x264>
   14870:	f40950e3          	bgez	s2,147b0 <emdnorm+0x238>
   14874:	00041123          	sh	zero,2(s0)
   14878:	f3dff06f          	j	147b4 <emdnorm+0x23c>
   1487c:	0e099a63          	bnez	s3,14970 <emdnorm+0x3f8>
   14880:	00c4a783          	lw	a5,12(s1)
   14884:	0184d703          	lhu	a4,24(s1)
   14888:	00179793          	slli	a5,a5,0x1
   1488c:	00f407b3          	add	a5,s0,a5
   14890:	0007d783          	lhu	a5,0(a5)
   14894:	00e7f7b3          	and	a5,a5,a4
   14898:	ec0792e3          	bnez	a5,1475c <emdnorm+0x1e4>
   1489c:	ef204ee3          	bgtz	s2,14798 <emdnorm+0x220>
   148a0:	09000793          	li	a5,144
   148a4:	00f50663          	beq	a0,a5,148b0 <emdnorm+0x338>
   148a8:	00040513          	mv	a0,s0
   148ac:	d74ff0ef          	jal	ra,13e20 <eshup1>
   148b0:	00445783          	lhu	a5,4(s0)
   148b4:	fa0790e3          	bnez	a5,14854 <emdnorm+0x2dc>
   148b8:	00041c23          	sh	zero,24(s0)
   148bc:	fa094ce3          	bltz	s2,14874 <emdnorm+0x2fc>
   148c0:	ef1ff06f          	j	147b0 <emdnorm+0x238>
   148c4:	0084a803          	lw	a6,8(s1)
   148c8:	0144d603          	lhu	a2,20(s1)
   148cc:	00181813          	slli	a6,a6,0x1
   148d0:	01040833          	add	a6,s0,a6
   148d4:	00085883          	lhu	a7,0(a6)
   148d8:	011675b3          	and	a1,a2,a7
   148dc:	e65ff06f          	j	14740 <emdnorm+0x1c8>
   148e0:	00041c23          	sh	zero,24(s0)
   148e4:	00041123          	sh	zero,2(s0)
   148e8:	ecdff06f          	j	147b4 <emdnorm+0x23c>
   148ec:	00400793          	li	a5,4
   148f0:	00800737          	lui	a4,0x800
   148f4:	0ff70713          	addi	a4,a4,255 # 8000ff <__BSS_END__+0x7dcef7>
   148f8:	02079793          	slli	a5,a5,0x20
   148fc:	00478793          	addi	a5,a5,4
   14900:	00e4aa23          	sw	a4,20(s1)
   14904:	10000713          	li	a4,256
   14908:	00f4b423          	sd	a5,8(s1)
   1490c:	00e49c23          	sh	a4,24(s1)
   14910:	00400793          	li	a5,4
   14914:	d89ff06f          	j	1469c <emdnorm+0x124>
   14918:	00300793          	li	a5,3
   1491c:	80010737          	lui	a4,0x80010
   14920:	fff70713          	addi	a4,a4,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffecdf7>
   14924:	02179793          	slli	a5,a5,0x21
   14928:	00778793          	addi	a5,a5,7
   1492c:	00e4aa23          	sw	a4,20(s1)
   14930:	00100713          	li	a4,1
   14934:	00f4b423          	sd	a5,8(s1)
   14938:	00e49c23          	sh	a4,24(s1)
   1493c:	00600793          	li	a5,6
   14940:	d5dff06f          	j	1469c <emdnorm+0x124>
   14944:	00b00793          	li	a5,11
   14948:	80010737          	lui	a4,0x80010
   1494c:	fff70713          	addi	a4,a4,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffecdf7>
   14950:	02079793          	slli	a5,a5,0x20
   14954:	00c78793          	addi	a5,a5,12
   14958:	00e4aa23          	sw	a4,20(s1)
   1495c:	00100713          	li	a4,1
   14960:	00f4b423          	sd	a5,8(s1)
   14964:	00e49c23          	sh	a4,24(s1)
   14968:	00b00793          	li	a5,11
   1496c:	d31ff06f          	j	1469c <emdnorm+0x124>
   14970:	de0a06e3          	beqz	s4,1475c <emdnorm+0x1e4>
   14974:	e21ff06f          	j	14794 <emdnorm+0x21c>
   14978:	00800737          	lui	a4,0x800
   1497c:	0ff70713          	addi	a4,a4,255 # 8000ff <__BSS_END__+0x7dcef7>
   14980:	00e4aa23          	sw	a4,20(s1)
   14984:	00600793          	li	a5,6
   14988:	10000713          	li	a4,256
   1498c:	cfdff06f          	j	14688 <emdnorm+0x110>

0000000000014990 <eiremain>:
   14990:	fa010113          	addi	sp,sp,-96
   14994:	03313c23          	sd	s3,56(sp)
   14998:	00255983          	lhu	s3,2(a0)
   1499c:	04913423          	sd	s1,72(sp)
   149a0:	00058493          	mv	s1,a1
   149a4:	04113c23          	sd	ra,88(sp)
   149a8:	04813823          	sd	s0,80(sp)
   149ac:	05213023          	sd	s2,64(sp)
   149b0:	03413823          	sd	s4,48(sp)
   149b4:	00060913          	mv	s2,a2
   149b8:	03513423          	sd	s5,40(sp)
   149bc:	03613023          	sd	s6,32(sp)
   149c0:	01713c23          	sd	s7,24(sp)
   149c4:	01813823          	sd	s8,16(sp)
   149c8:	01913423          	sd	s9,8(sp)
   149cc:	01a13023          	sd	s10,0(sp)
   149d0:	00050a13          	mv	s4,a0
   149d4:	a21ff0ef          	jal	ra,143f4 <enormlz>
   149d8:	0024d403          	lhu	s0,2(s1)
   149dc:	40a989b3          	sub	s3,s3,a0
   149e0:	00048513          	mv	a0,s1
   149e4:	a11ff0ef          	jal	ra,143f4 <enormlz>
   149e8:	03490a93          	addi	s5,s2,52
   149ec:	40a40433          	sub	s0,s0,a0
   149f0:	04e90713          	addi	a4,s2,78
   149f4:	000a8793          	mv	a5,s5
   149f8:	00278793          	addi	a5,a5,2
   149fc:	fe079f23          	sh	zero,-2(a5)
   14a00:	fee79ce3          	bne	a5,a4,149f8 <eiremain+0x68>
   14a04:	09344a63          	blt	s0,s3,14a98 <eiremain+0x108>
   14a08:	004a0b93          	addi	s7,s4,4
   14a0c:	00448b13          	addi	s6,s1,4
   14a10:	fff98993          	addi	s3,s3,-1
   14a14:	01aa0c93          	addi	s9,s4,26
   14a18:	00248c13          	addi	s8,s1,2
   14a1c:	000b0713          	mv	a4,s6
   14a20:	000b8793          	mv	a5,s7
   14a24:	00278793          	addi	a5,a5,2
   14a28:	00270713          	addi	a4,a4,2
   14a2c:	ffe7d603          	lhu	a2,-2(a5)
   14a30:	ffe75683          	lhu	a3,-2(a4)
   14a34:	0ad61a63          	bne	a2,a3,14ae8 <eiremain+0x158>
   14a38:	fefc96e3          	bne	s9,a5,14a24 <eiremain+0x94>
   14a3c:	018a0693          	addi	a3,s4,24
   14a40:	01848713          	addi	a4,s1,24
   14a44:	00000613          	li	a2,0
   14a48:	00075783          	lhu	a5,0(a4)
   14a4c:	0006d583          	lhu	a1,0(a3)
   14a50:	ffe70713          	addi	a4,a4,-2
   14a54:	40c787b3          	sub	a5,a5,a2
   14a58:	40b787b3          	sub	a5,a5,a1
   14a5c:	00f71123          	sh	a5,2(a4)
   14a60:	0107d793          	srli	a5,a5,0x10
   14a64:	ffe68693          	addi	a3,a3,-2
   14a68:	0017f613          	andi	a2,a5,1
   14a6c:	fcec1ee3          	bne	s8,a4,14a48 <eiremain+0xb8>
   14a70:	00100d13          	li	s10,1
   14a74:	000a8513          	mv	a0,s5
   14a78:	ba8ff0ef          	jal	ra,13e20 <eshup1>
   14a7c:	04c95783          	lhu	a5,76(s2)
   14a80:	fff40413          	addi	s0,s0,-1
   14a84:	00048513          	mv	a0,s1
   14a88:	00fd6d33          	or	s10,s10,a5
   14a8c:	05a91623          	sh	s10,76(s2)
   14a90:	b90ff0ef          	jal	ra,13e20 <eshup1>
   14a94:	f93414e3          	bne	s0,s3,14a1c <eiremain+0x8c>
   14a98:	00040693          	mv	a3,s0
   14a9c:	05013403          	ld	s0,80(sp)
   14aa0:	05813083          	ld	ra,88(sp)
   14aa4:	03813983          	ld	s3,56(sp)
   14aa8:	03013a03          	ld	s4,48(sp)
   14aac:	02813a83          	ld	s5,40(sp)
   14ab0:	02013b03          	ld	s6,32(sp)
   14ab4:	01813b83          	ld	s7,24(sp)
   14ab8:	01013c03          	ld	s8,16(sp)
   14abc:	00813c83          	ld	s9,8(sp)
   14ac0:	00013d03          	ld	s10,0(sp)
   14ac4:	00090793          	mv	a5,s2
   14ac8:	00048513          	mv	a0,s1
   14acc:	04013903          	ld	s2,64(sp)
   14ad0:	04813483          	ld	s1,72(sp)
   14ad4:	00000713          	li	a4,0
   14ad8:	00000613          	li	a2,0
   14adc:	00000593          	li	a1,0
   14ae0:	06010113          	addi	sp,sp,96
   14ae4:	a95ff06f          	j	14578 <emdnorm>
   14ae8:	00000d13          	li	s10,0
   14aec:	f8c6e4e3          	bltu	a3,a2,14a74 <eiremain+0xe4>
   14af0:	f4dff06f          	j	14a3c <eiremain+0xac>

0000000000014af4 <emovo.isra.6>:
   14af4:	00055703          	lhu	a4,0(a0)
   14af8:	00255783          	lhu	a5,2(a0)
   14afc:	00070663          	beqz	a4,14b08 <emovo.isra.6+0x14>
   14b00:	00008737          	lui	a4,0x8
   14b04:	00e7e7b3          	or	a5,a5,a4
   14b08:	00f59923          	sh	a5,18(a1)
   14b0c:	00255703          	lhu	a4,2(a0)
   14b10:	000087b7          	lui	a5,0x8
   14b14:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14b18:	02f70463          	beq	a4,a5,14b40 <emovo.isra.6+0x4c>
   14b1c:	00650793          	addi	a5,a0,6
   14b20:	01058593          	addi	a1,a1,16
   14b24:	01850513          	addi	a0,a0,24
   14b28:	00278793          	addi	a5,a5,2
   14b2c:	ffe7d703          	lhu	a4,-2(a5)
   14b30:	ffe58593          	addi	a1,a1,-2
   14b34:	00e59123          	sh	a4,2(a1)
   14b38:	fea798e3          	bne	a5,a0,14b28 <emovo.isra.6+0x34>
   14b3c:	00008067          	ret
   14b40:	00650793          	addi	a5,a0,6
   14b44:	01a50513          	addi	a0,a0,26
   14b48:	0007d703          	lhu	a4,0(a5)
   14b4c:	00278793          	addi	a5,a5,2
   14b50:	02071a63          	bnez	a4,14b84 <emovo.isra.6+0x90>
   14b54:	fea79ae3          	bne	a5,a0,14b48 <emovo.isra.6+0x54>
   14b58:	01258713          	addi	a4,a1,18
   14b5c:	00058793          	mv	a5,a1
   14b60:	00278793          	addi	a5,a5,2
   14b64:	fe079f23          	sh	zero,-2(a5)
   14b68:	fef71ce3          	bne	a4,a5,14b60 <emovo.isra.6+0x6c>
   14b6c:	0125d783          	lhu	a5,18(a1)
   14b70:	00008737          	lui	a4,0x8
   14b74:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14b78:	00e7e7b3          	or	a5,a5,a4
   14b7c:	00f59923          	sh	a5,18(a1)
   14b80:	00008067          	ret
   14b84:	01058713          	addi	a4,a1,16
   14b88:	00058793          	mv	a5,a1
   14b8c:	00278793          	addi	a5,a5,2
   14b90:	fe079f23          	sh	zero,-2(a5)
   14b94:	fef71ce3          	bne	a4,a5,14b8c <emovo.isra.6+0x98>
   14b98:	7fffc7b7          	lui	a5,0x7fffc
   14b9c:	00f5a823          	sw	a5,16(a1)
   14ba0:	00008067          	ret

0000000000014ba4 <emul>:
   14ba4:	f4010113          	addi	sp,sp,-192
   14ba8:	09513423          	sd	s5,136(sp)
   14bac:	01255a83          	lhu	s5,18(a0)
   14bb0:	000087b7          	lui	a5,0x8
   14bb4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14bb8:	0a813823          	sd	s0,176(sp)
   14bbc:	0a913423          	sd	s1,168(sp)
   14bc0:	0b213023          	sd	s2,160(sp)
   14bc4:	09313c23          	sd	s3,152(sp)
   14bc8:	09613023          	sd	s6,128(sp)
   14bcc:	0a113c23          	sd	ra,184(sp)
   14bd0:	09413823          	sd	s4,144(sp)
   14bd4:	07713c23          	sd	s7,120(sp)
   14bd8:	07813823          	sd	s8,112(sp)
   14bdc:	07913423          	sd	s9,104(sp)
   14be0:	0157fb33          	and	s6,a5,s5
   14be4:	00050493          	mv	s1,a0
   14be8:	00058913          	mv	s2,a1
   14bec:	00060413          	mv	s0,a2
   14bf0:	00068993          	mv	s3,a3
   14bf4:	0afb1863          	bne	s6,a5,14ca4 <emul+0x100>
   14bf8:	b7cff0ef          	jal	ra,13f74 <eisnan.part.0>
   14bfc:	20051c63          	bnez	a0,14e14 <emul+0x270>
   14c00:	01295a03          	lhu	s4,18(s2)
   14c04:	014b77b3          	and	a5,s6,s4
   14c08:	23679463          	bne	a5,s6,14e30 <emul+0x28c>
   14c0c:	00090513          	mv	a0,s2
   14c10:	b64ff0ef          	jal	ra,13f74 <eisnan.part.0>
   14c14:	0a051463          	bnez	a0,14cbc <emul+0x118>
   14c18:	00048513          	mv	a0,s1
   14c1c:	e10ff0ef          	jal	ra,1422c <eisinf.part.1>
   14c20:	20051e63          	bnez	a0,14e3c <emul+0x298>
   14c24:	000087b7          	lui	a5,0x8
   14c28:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14c2c:	0147fa33          	and	s4,a5,s4
   14c30:	030a1a13          	slli	s4,s4,0x30
   14c34:	030a5a13          	srli	s4,s4,0x30
   14c38:	2cfa1663          	bne	s4,a5,14f04 <emul+0x360>
   14c3c:	00090513          	mv	a0,s2
   14c40:	decff0ef          	jal	ra,1422c <eisinf.part.1>
   14c44:	32051263          	bnez	a0,14f68 <emul+0x3c4>
   14c48:	0124d783          	lhu	a5,18(s1)
   14c4c:	00fa77b3          	and	a5,s4,a5
   14c50:	21478463          	beq	a5,s4,14e58 <emul+0x2b4>
   14c54:	00048513          	mv	a0,s1
   14c58:	00010593          	mv	a1,sp
   14c5c:	bc8ff0ef          	jal	ra,14024 <emovi>
   14c60:	00090513          	mv	a0,s2
   14c64:	02010593          	addi	a1,sp,32
   14c68:	bbcff0ef          	jal	ra,14024 <emovi>
   14c6c:	00215483          	lhu	s1,2(sp)
   14c70:	02215903          	lhu	s2,34(sp)
   14c74:	08049a63          	bnez	s1,14d08 <emul+0x164>
   14c78:	00410793          	addi	a5,sp,4
   14c7c:	01810693          	addi	a3,sp,24
   14c80:	2cd78063          	beq	a5,a3,14f40 <emul+0x39c>
   14c84:	00278793          	addi	a5,a5,2
   14c88:	ffe7d703          	lhu	a4,-2(a5)
   14c8c:	fe070ae3          	beqz	a4,14c80 <emul+0xdc>
   14c90:	00010513          	mv	a0,sp
   14c94:	f60ff0ef          	jal	ra,143f4 <enormlz>
   14c98:	40a004b3          	neg	s1,a0
   14c9c:	02215703          	lhu	a4,34(sp)
   14ca0:	06c0006f          	j	14d0c <emul+0x168>
   14ca4:	0125da03          	lhu	s4,18(a1)
   14ca8:	0147f733          	and	a4,a5,s4
   14cac:	faf714e3          	bne	a4,a5,14c54 <emul+0xb0>
   14cb0:	00058513          	mv	a0,a1
   14cb4:	ac0ff0ef          	jal	ra,13f74 <eisnan.part.0>
   14cb8:	f60506e3          	beqz	a0,14c24 <emul+0x80>
   14cbc:	01490713          	addi	a4,s2,20
   14cc0:	00290913          	addi	s2,s2,2
   14cc4:	ffe95783          	lhu	a5,-2(s2)
   14cc8:	00240413          	addi	s0,s0,2
   14ccc:	fef41f23          	sh	a5,-2(s0)
   14cd0:	fee918e3          	bne	s2,a4,14cc0 <emul+0x11c>
   14cd4:	0b813083          	ld	ra,184(sp)
   14cd8:	0b013403          	ld	s0,176(sp)
   14cdc:	0a813483          	ld	s1,168(sp)
   14ce0:	0a013903          	ld	s2,160(sp)
   14ce4:	09813983          	ld	s3,152(sp)
   14ce8:	09013a03          	ld	s4,144(sp)
   14cec:	08813a83          	ld	s5,136(sp)
   14cf0:	08013b03          	ld	s6,128(sp)
   14cf4:	07813b83          	ld	s7,120(sp)
   14cf8:	07013c03          	ld	s8,112(sp)
   14cfc:	06813c83          	ld	s9,104(sp)
   14d00:	0c010113          	addi	sp,sp,192
   14d04:	00008067          	ret
   14d08:	00090713          	mv	a4,s2
   14d0c:	00090b13          	mv	s6,s2
   14d10:	02410793          	addi	a5,sp,36
   14d14:	03810693          	addi	a3,sp,56
   14d18:	02071263          	bnez	a4,14d3c <emul+0x198>
   14d1c:	22f68c63          	beq	a3,a5,14f54 <emul+0x3b0>
   14d20:	00278793          	addi	a5,a5,2
   14d24:	ffe7d703          	lhu	a4,-2(a5)
   14d28:	fe070ae3          	beqz	a4,14d1c <emul+0x178>
   14d2c:	02010513          	addi	a0,sp,32
   14d30:	ec4ff0ef          	jal	ra,143f4 <enormlz>
   14d34:	02215703          	lhu	a4,34(sp)
   14d38:	40a90b33          	sub	s6,s2,a0
   14d3c:	02015783          	lhu	a5,32(sp)
   14d40:	03898a93          	addi	s5,s3,56
   14d44:	02e99b23          	sh	a4,54(s3)
   14d48:	02f99a23          	sh	a5,52(s3)
   14d4c:	04e98713          	addi	a4,s3,78
   14d50:	000a8793          	mv	a5,s5
   14d54:	00079023          	sh	zero,0(a5)
   14d58:	00278793          	addi	a5,a5,2
   14d5c:	fef71ce3          	bne	a4,a5,14d54 <emul+0x1b0>
   14d60:	04c98b93          	addi	s7,s3,76
   14d64:	00000a13          	li	s4,0
   14d68:	01810913          	addi	s2,sp,24
   14d6c:	00410c93          	addi	s9,sp,4
   14d70:	04210c13          	addi	s8,sp,66
   14d74:	00095503          	lhu	a0,0(s2)
   14d78:	ffe90913          	addi	s2,s2,-2
   14d7c:	14051263          	bnez	a0,14ec0 <emul+0x31c>
   14d80:	04c9d703          	lhu	a4,76(s3)
   14d84:	000b8793          	mv	a5,s7
   14d88:	00ea6a33          	or	s4,s4,a4
   14d8c:	ffe78793          	addi	a5,a5,-2
   14d90:	0007d703          	lhu	a4,0(a5)
   14d94:	00e79123          	sh	a4,2(a5)
   14d98:	ff579ae3          	bne	a5,s5,14d8c <emul+0x1e8>
   14d9c:	02099c23          	sh	zero,56(s3)
   14da0:	fd991ae3          	bne	s2,s9,14d74 <emul+0x1d0>
   14da4:	03498713          	addi	a4,s3,52
   14da8:	02010793          	addi	a5,sp,32
   14dac:	03a10693          	addi	a3,sp,58
   14db0:	00075603          	lhu	a2,0(a4)
   14db4:	00278793          	addi	a5,a5,2
   14db8:	00270713          	addi	a4,a4,2
   14dbc:	fec79f23          	sh	a2,-2(a5)
   14dc0:	fef698e3          	bne	a3,a5,14db0 <emul+0x20c>
   14dc4:	ffffc6b7          	lui	a3,0xffffc
   14dc8:	016484b3          	add	s1,s1,s6
   14dcc:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd8dfa>
   14dd0:	000a0593          	mv	a1,s4
   14dd4:	02010513          	addi	a0,sp,32
   14dd8:	00098793          	mv	a5,s3
   14ddc:	04000713          	li	a4,64
   14de0:	00d486b3          	add	a3,s1,a3
   14de4:	00000613          	li	a2,0
   14de8:	f90ff0ef          	jal	ra,14578 <emdnorm>
   14dec:	02015703          	lhu	a4,32(sp)
   14df0:	00015783          	lhu	a5,0(sp)
   14df4:	00040593          	mv	a1,s0
   14df8:	02010513          	addi	a0,sp,32
   14dfc:	40e787b3          	sub	a5,a5,a4
   14e00:	00f037b3          	snez	a5,a5
   14e04:	40f007bb          	negw	a5,a5
   14e08:	02f11023          	sh	a5,32(sp)
   14e0c:	ce9ff0ef          	jal	ra,14af4 <emovo.isra.6>
   14e10:	ec5ff06f          	j	14cd4 <emul+0x130>
   14e14:	01448713          	addi	a4,s1,20
   14e18:	00248493          	addi	s1,s1,2
   14e1c:	ffe4d783          	lhu	a5,-2(s1)
   14e20:	00240413          	addi	s0,s0,2
   14e24:	fef41f23          	sh	a5,-2(s0)
   14e28:	fee498e3          	bne	s1,a4,14e18 <emul+0x274>
   14e2c:	ea9ff06f          	j	14cd4 <emul+0x130>
   14e30:	00048513          	mv	a0,s1
   14e34:	bf8ff0ef          	jal	ra,1422c <eisinf.part.1>
   14e38:	0c050863          	beqz	a0,14f08 <emul+0x364>
   14e3c:	0000c597          	auipc	a1,0xc
   14e40:	60458593          	addi	a1,a1,1540 # 21440 <ezero>
   14e44:	00090513          	mv	a0,s2
   14e48:	ac8ff0ef          	jal	ra,14110 <ecmp>
   14e4c:	14050063          	beqz	a0,14f8c <emul+0x3e8>
   14e50:	01295a03          	lhu	s4,18(s2)
   14e54:	dd1ff06f          	j	14c24 <emul+0x80>
   14e58:	00048513          	mv	a0,s1
   14e5c:	bd0ff0ef          	jal	ra,1422c <eisinf.part.1>
   14e60:	00051863          	bnez	a0,14e70 <emul+0x2cc>
   14e64:	00090513          	mv	a0,s2
   14e68:	bc4ff0ef          	jal	ra,1422c <eisinf.part.1>
   14e6c:	de0504e3          	beqz	a0,14c54 <emul+0xb0>
   14e70:	00048513          	mv	a0,s1
   14e74:	970ff0ef          	jal	ra,13fe4 <eisneg>
   14e78:	00050493          	mv	s1,a0
   14e7c:	00090513          	mv	a0,s2
   14e80:	964ff0ef          	jal	ra,13fe4 <eisneg>
   14e84:	40a48533          	sub	a0,s1,a0
   14e88:	00a03533          	snez	a0,a0
   14e8c:	00f51513          	slli	a0,a0,0xf
   14e90:	00a41923          	sh	a0,18(s0)
   14e94:	01240713          	addi	a4,s0,18
   14e98:	00040793          	mv	a5,s0
   14e9c:	00278793          	addi	a5,a5,2
   14ea0:	fe079f23          	sh	zero,-2(a5)
   14ea4:	fee79ce3          	bne	a5,a4,14e9c <emul+0x2f8>
   14ea8:	01245783          	lhu	a5,18(s0)
   14eac:	00008737          	lui	a4,0x8
   14eb0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14eb4:	00e7e7b3          	or	a5,a5,a4
   14eb8:	00f41923          	sh	a5,18(s0)
   14ebc:	e19ff06f          	j	14cd4 <emul+0x130>
   14ec0:	04010613          	addi	a2,sp,64
   14ec4:	02010593          	addi	a1,sp,32
   14ec8:	fcdfe0ef          	jal	ra,13e94 <m16m>
   14ecc:	000b8613          	mv	a2,s7
   14ed0:	00000593          	li	a1,0
   14ed4:	05810713          	addi	a4,sp,88
   14ed8:	00065503          	lhu	a0,0(a2)
   14edc:	00075783          	lhu	a5,0(a4)
   14ee0:	ffe60613          	addi	a2,a2,-2
   14ee4:	ffe70713          	addi	a4,a4,-2
   14ee8:	00a787b3          	add	a5,a5,a0
   14eec:	00b787b3          	add	a5,a5,a1
   14ef0:	00f61123          	sh	a5,2(a2)
   14ef4:	0107d793          	srli	a5,a5,0x10
   14ef8:	0017f593          	andi	a1,a5,1
   14efc:	fd871ee3          	bne	a4,s8,14ed8 <emul+0x334>
   14f00:	e81ff06f          	j	14d80 <emul+0x1dc>
   14f04:	0124da83          	lhu	s5,18(s1)
   14f08:	000087b7          	lui	a5,0x8
   14f0c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14f10:	0157fab3          	and	s5,a5,s5
   14f14:	030a9a93          	slli	s5,s5,0x30
   14f18:	030ada93          	srli	s5,s5,0x30
   14f1c:	d2fa9ce3          	bne	s5,a5,14c54 <emul+0xb0>
   14f20:	00048513          	mv	a0,s1
   14f24:	b08ff0ef          	jal	ra,1422c <eisinf.part.1>
   14f28:	f40514e3          	bnez	a0,14e70 <emul+0x2cc>
   14f2c:	01295783          	lhu	a5,18(s2)
   14f30:	fff7c793          	not	a5,a5
   14f34:	03179713          	slli	a4,a5,0x31
   14f38:	d0071ee3          	bnez	a4,14c54 <emul+0xb0>
   14f3c:	f29ff06f          	j	14e64 <emul+0x2c0>
   14f40:	01440793          	addi	a5,s0,20
   14f44:	00240413          	addi	s0,s0,2
   14f48:	fe041f23          	sh	zero,-2(s0)
   14f4c:	fe879ce3          	bne	a5,s0,14f44 <emul+0x3a0>
   14f50:	d85ff06f          	j	14cd4 <emul+0x130>
   14f54:	01440793          	addi	a5,s0,20
   14f58:	00240413          	addi	s0,s0,2
   14f5c:	fe041f23          	sh	zero,-2(s0)
   14f60:	fef41ce3          	bne	s0,a5,14f58 <emul+0x3b4>
   14f64:	d71ff06f          	j	14cd4 <emul+0x130>
   14f68:	0000c597          	auipc	a1,0xc
   14f6c:	4d858593          	addi	a1,a1,1240 # 21440 <ezero>
   14f70:	00048513          	mv	a0,s1
   14f74:	99cff0ef          	jal	ra,14110 <ecmp>
   14f78:	00050a63          	beqz	a0,14f8c <emul+0x3e8>
   14f7c:	0124d783          	lhu	a5,18(s1)
   14f80:	00fa77b3          	and	a5,s4,a5
   14f84:	f9478ee3          	beq	a5,s4,14f20 <emul+0x37c>
   14f88:	fa5ff06f          	j	14f2c <emul+0x388>
   14f8c:	01040713          	addi	a4,s0,16
   14f90:	00040793          	mv	a5,s0
   14f94:	00278793          	addi	a5,a5,2
   14f98:	fe079f23          	sh	zero,-2(a5)
   14f9c:	fee79ce3          	bne	a5,a4,14f94 <emul+0x3f0>
   14fa0:	7fffc7b7          	lui	a5,0x7fffc
   14fa4:	00f42823          	sw	a5,16(s0)
   14fa8:	d2dff06f          	j	14cd4 <emul+0x130>

0000000000014fac <ediv>:
   14fac:	01255783          	lhu	a5,18(a0)
   14fb0:	f2010113          	addi	sp,sp,-224
   14fb4:	0c813823          	sd	s0,208(sp)
   14fb8:	fff7c793          	not	a5,a5
   14fbc:	0c913423          	sd	s1,200(sp)
   14fc0:	0d213023          	sd	s2,192(sp)
   14fc4:	09813823          	sd	s8,144(sp)
   14fc8:	0c113c23          	sd	ra,216(sp)
   14fcc:	0b313c23          	sd	s3,184(sp)
   14fd0:	0b413823          	sd	s4,176(sp)
   14fd4:	0b513423          	sd	s5,168(sp)
   14fd8:	0b613023          	sd	s6,160(sp)
   14fdc:	09713c23          	sd	s7,152(sp)
   14fe0:	09913423          	sd	s9,136(sp)
   14fe4:	09a13023          	sd	s10,128(sp)
   14fe8:	07b13c23          	sd	s11,120(sp)
   14fec:	03179713          	slli	a4,a5,0x31
   14ff0:	00050493          	mv	s1,a0
   14ff4:	00058913          	mv	s2,a1
   14ff8:	00060413          	mv	s0,a2
   14ffc:	00068c13          	mv	s8,a3
   15000:	00071663          	bnez	a4,1500c <ediv+0x60>
   15004:	f71fe0ef          	jal	ra,13f74 <eisnan.part.0>
   15008:	38051463          	bnez	a0,15390 <ediv+0x3e4>
   1500c:	01295783          	lhu	a5,18(s2)
   15010:	fff7c793          	not	a5,a5
   15014:	03179713          	slli	a4,a5,0x31
   15018:	08070e63          	beqz	a4,150b4 <ediv+0x108>
   1501c:	0000c597          	auipc	a1,0xc
   15020:	42458593          	addi	a1,a1,1060 # 21440 <ezero>
   15024:	00048513          	mv	a0,s1
   15028:	8e8ff0ef          	jal	ra,14110 <ecmp>
   1502c:	10050463          	beqz	a0,15134 <ediv+0x188>
   15030:	0124d983          	lhu	s3,18(s1)
   15034:	01295703          	lhu	a4,18(s2)
   15038:	000087b7          	lui	a5,0x8
   1503c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15040:	0137f9b3          	and	s3,a5,s3
   15044:	00e7fa33          	and	s4,a5,a4
   15048:	08f99a63          	bne	s3,a5,150dc <ediv+0x130>
   1504c:	00048513          	mv	a0,s1
   15050:	9dcff0ef          	jal	ra,1422c <eisinf.part.1>
   15054:	10050a63          	beqz	a0,15168 <ediv+0x1bc>
   15058:	013a1863          	bne	s4,s3,15068 <ediv+0xbc>
   1505c:	00090513          	mv	a0,s2
   15060:	9ccff0ef          	jal	ra,1422c <eisinf.part.1>
   15064:	0e051263          	bnez	a0,15148 <ediv+0x19c>
   15068:	01440793          	addi	a5,s0,20
   1506c:	00240413          	addi	s0,s0,2
   15070:	fe041f23          	sh	zero,-2(s0)
   15074:	fef41ce3          	bne	s0,a5,1506c <ediv+0xc0>
   15078:	0d813083          	ld	ra,216(sp)
   1507c:	0d013403          	ld	s0,208(sp)
   15080:	0c813483          	ld	s1,200(sp)
   15084:	0c013903          	ld	s2,192(sp)
   15088:	0b813983          	ld	s3,184(sp)
   1508c:	0b013a03          	ld	s4,176(sp)
   15090:	0a813a83          	ld	s5,168(sp)
   15094:	0a013b03          	ld	s6,160(sp)
   15098:	09813b83          	ld	s7,152(sp)
   1509c:	09013c03          	ld	s8,144(sp)
   150a0:	08813c83          	ld	s9,136(sp)
   150a4:	08013d03          	ld	s10,128(sp)
   150a8:	07813d83          	ld	s11,120(sp)
   150ac:	0e010113          	addi	sp,sp,224
   150b0:	00008067          	ret
   150b4:	00090513          	mv	a0,s2
   150b8:	ebdfe0ef          	jal	ra,13f74 <eisnan.part.0>
   150bc:	f60500e3          	beqz	a0,1501c <ediv+0x70>
   150c0:	01490713          	addi	a4,s2,20
   150c4:	00290913          	addi	s2,s2,2
   150c8:	ffe95783          	lhu	a5,-2(s2)
   150cc:	00240413          	addi	s0,s0,2
   150d0:	fef41f23          	sh	a5,-2(s0)
   150d4:	fee918e3          	bne	s2,a4,150c4 <ediv+0x118>
   150d8:	fa1ff06f          	j	15078 <ediv+0xcc>
   150dc:	08fa0863          	beq	s4,a5,1516c <ediv+0x1c0>
   150e0:	01010593          	addi	a1,sp,16
   150e4:	00048513          	mv	a0,s1
   150e8:	f3dfe0ef          	jal	ra,14024 <emovi>
   150ec:	00090513          	mv	a0,s2
   150f0:	03010593          	addi	a1,sp,48
   150f4:	f31fe0ef          	jal	ra,14024 <emovi>
   150f8:	03215c83          	lhu	s9,50(sp)
   150fc:	01215903          	lhu	s2,18(sp)
   15100:	0c0c9463          	bnez	s9,151c8 <ediv+0x21c>
   15104:	03410793          	addi	a5,sp,52
   15108:	04810493          	addi	s1,sp,72
   1510c:	34f48a63          	beq	s1,a5,15460 <ediv+0x4b4>
   15110:	00278793          	addi	a5,a5,2
   15114:	ffe7d703          	lhu	a4,-2(a5)
   15118:	fe070ae3          	beqz	a4,1510c <ediv+0x160>
   1511c:	03010513          	addi	a0,sp,48
   15120:	ad4ff0ef          	jal	ra,143f4 <enormlz>
   15124:	40a007b3          	neg	a5,a0
   15128:	00f13423          	sd	a5,8(sp)
   1512c:	01215603          	lhu	a2,18(sp)
   15130:	0a00006f          	j	151d0 <ediv+0x224>
   15134:	0000c597          	auipc	a1,0xc
   15138:	30c58593          	addi	a1,a1,780 # 21440 <ezero>
   1513c:	00090513          	mv	a0,s2
   15140:	fd1fe0ef          	jal	ra,14110 <ecmp>
   15144:	ee0516e3          	bnez	a0,15030 <ediv+0x84>
   15148:	01040713          	addi	a4,s0,16
   1514c:	00040793          	mv	a5,s0
   15150:	00278793          	addi	a5,a5,2
   15154:	fe079f23          	sh	zero,-2(a5)
   15158:	fee79ce3          	bne	a5,a4,15150 <ediv+0x1a4>
   1515c:	7fffc7b7          	lui	a5,0x7fffc
   15160:	00f42823          	sw	a5,16(s0)
   15164:	f15ff06f          	j	15078 <ediv+0xcc>
   15168:	f73a1ce3          	bne	s4,s3,150e0 <ediv+0x134>
   1516c:	00090513          	mv	a0,s2
   15170:	8bcff0ef          	jal	ra,1422c <eisinf.part.1>
   15174:	f60506e3          	beqz	a0,150e0 <ediv+0x134>
   15178:	00048513          	mv	a0,s1
   1517c:	e69fe0ef          	jal	ra,13fe4 <eisneg>
   15180:	00050493          	mv	s1,a0
   15184:	00090513          	mv	a0,s2
   15188:	e5dfe0ef          	jal	ra,13fe4 <eisneg>
   1518c:	40a48533          	sub	a0,s1,a0
   15190:	00a03533          	snez	a0,a0
   15194:	00f51513          	slli	a0,a0,0xf
   15198:	00a41923          	sh	a0,18(s0)
   1519c:	01240713          	addi	a4,s0,18
   151a0:	00040793          	mv	a5,s0
   151a4:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd8dfa>
   151a8:	fe079f23          	sh	zero,-2(a5)
   151ac:	fee79ce3          	bne	a5,a4,151a4 <ediv+0x1f8>
   151b0:	01245783          	lhu	a5,18(s0)
   151b4:	00008737          	lui	a4,0x8
   151b8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   151bc:	00e7e7b3          	or	a5,a5,a4
   151c0:	00f41923          	sh	a5,18(s0)
   151c4:	eb5ff06f          	j	15078 <ediv+0xcc>
   151c8:	01913423          	sd	s9,8(sp)
   151cc:	00090613          	mv	a2,s2
   151d0:	01213023          	sd	s2,0(sp)
   151d4:	01410793          	addi	a5,sp,20
   151d8:	02810693          	addi	a3,sp,40
   151dc:	02061263          	bnez	a2,15200 <ediv+0x254>
   151e0:	28f68a63          	beq	a3,a5,15474 <ediv+0x4c8>
   151e4:	00278793          	addi	a5,a5,2
   151e8:	ffe7d703          	lhu	a4,-2(a5)
   151ec:	fe070ae3          	beqz	a4,151e0 <ediv+0x234>
   151f0:	01010513          	addi	a0,sp,16
   151f4:	a00ff0ef          	jal	ra,143f4 <enormlz>
   151f8:	40a907b3          	sub	a5,s2,a0
   151fc:	00f13023          	sd	a5,0(sp)
   15200:	03012703          	lw	a4,48(sp)
   15204:	038c0d93          	addi	s11,s8,56
   15208:	000d8793          	mv	a5,s11
   1520c:	02ec2a23          	sw	a4,52(s8)
   15210:	04ec0993          	addi	s3,s8,78
   15214:	00278793          	addi	a5,a5,2
   15218:	fe079f23          	sh	zero,-2(a5)
   1521c:	fef99ce3          	bne	s3,a5,15214 <ediv+0x268>
   15220:	03010513          	addi	a0,sp,48
   15224:	b95fe0ef          	jal	ra,13db8 <eshdn1>
   15228:	01615d03          	lhu	s10,22(sp)
   1522c:	00010ab7          	lui	s5,0x10
   15230:	04810493          	addi	s1,sp,72
   15234:	010d1b13          	slli	s6,s10,0x10
   15238:	41ab0b33          	sub	s6,s6,s10
   1523c:	03210b93          	addi	s7,sp,50
   15240:	fffa8a93          	addi	s5,s5,-1 # ffff <register_fini-0xb1>
   15244:	06a10913          	addi	s2,sp,106
   15248:	05210a13          	addi	s4,sp,82
   1524c:	03415503          	lhu	a0,52(sp)
   15250:	03615783          	lhu	a5,54(sp)
   15254:	000a8c93          	mv	s9,s5
   15258:	01051513          	slli	a0,a0,0x10
   1525c:	00f50533          	add	a0,a0,a5
   15260:	00ab6a63          	bltu	s6,a0,15274 <ediv+0x2c8>
   15264:	000d0593          	mv	a1,s10
   15268:	ffdfa0ef          	jal	ra,10264 <__udivdi3>
   1526c:	03051c93          	slli	s9,a0,0x30
   15270:	030cdc93          	srli	s9,s9,0x30
   15274:	05010613          	addi	a2,sp,80
   15278:	01010593          	addi	a1,sp,16
   1527c:	000c8513          	mv	a0,s9
   15280:	c15fe0ef          	jal	ra,13e94 <m16m>
   15284:	03410613          	addi	a2,sp,52
   15288:	05410793          	addi	a5,sp,84
   1528c:	00278793          	addi	a5,a5,2
   15290:	00260613          	addi	a2,a2,2
   15294:	ffe7d503          	lhu	a0,-2(a5)
   15298:	ffe65583          	lhu	a1,-2(a2)
   1529c:	10b51863          	bne	a0,a1,153ac <ediv+0x400>
   152a0:	ff2796e3          	bne	a5,s2,1528c <ediv+0x2e0>
   152a4:	00000513          	li	a0,0
   152a8:	06810593          	addi	a1,sp,104
   152ac:	00048613          	mv	a2,s1
   152b0:	00065783          	lhu	a5,0(a2)
   152b4:	0005d803          	lhu	a6,0(a1)
   152b8:	ffe60613          	addi	a2,a2,-2
   152bc:	40a787b3          	sub	a5,a5,a0
   152c0:	410787b3          	sub	a5,a5,a6
   152c4:	00f61123          	sh	a5,2(a2)
   152c8:	0107d793          	srli	a5,a5,0x10
   152cc:	ffe58593          	addi	a1,a1,-2
   152d0:	0017f513          	andi	a0,a5,1
   152d4:	fd761ee3          	bne	a2,s7,152b0 <ediv+0x304>
   152d8:	019d9023          	sh	s9,0(s11)
   152dc:	03410793          	addi	a5,sp,52
   152e0:	00278793          	addi	a5,a5,2
   152e4:	0007d683          	lhu	a3,0(a5)
   152e8:	fed79f23          	sh	a3,-2(a5)
   152ec:	fe979ae3          	bne	a5,s1,152e0 <ediv+0x334>
   152f0:	04011423          	sh	zero,72(sp)
   152f4:	002d8d93          	addi	s11,s11,2
   152f8:	f5b99ae3          	bne	s3,s11,1524c <ediv+0x2a0>
   152fc:	00000593          	li	a1,0
   15300:	03410793          	addi	a5,sp,52
   15304:	04a10693          	addi	a3,sp,74
   15308:	00278793          	addi	a5,a5,2
   1530c:	ffe7d703          	lhu	a4,-2(a5)
   15310:	00e5e5b3          	or	a1,a1,a4
   15314:	fed79ae3          	bne	a5,a3,15308 <ediv+0x35c>
   15318:	0005859b          	sext.w	a1,a1
   1531c:	00b035b3          	snez	a1,a1
   15320:	034c0713          	addi	a4,s8,52
   15324:	03010793          	addi	a5,sp,48
   15328:	00075603          	lhu	a2,0(a4)
   1532c:	00278793          	addi	a5,a5,2
   15330:	00270713          	addi	a4,a4,2
   15334:	fec79f23          	sh	a2,-2(a5)
   15338:	fef698e3          	bne	a3,a5,15328 <ediv+0x37c>
   1533c:	00813783          	ld	a5,8(sp)
   15340:	00013703          	ld	a4,0(sp)
   15344:	000046b7          	lui	a3,0x4
   15348:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc0b1>
   1534c:	40e78cb3          	sub	s9,a5,a4
   15350:	03010513          	addi	a0,sp,48
   15354:	000c0793          	mv	a5,s8
   15358:	04000713          	li	a4,64
   1535c:	00dc86b3          	add	a3,s9,a3
   15360:	00000613          	li	a2,0
   15364:	a14ff0ef          	jal	ra,14578 <emdnorm>
   15368:	03015703          	lhu	a4,48(sp)
   1536c:	01015783          	lhu	a5,16(sp)
   15370:	00040593          	mv	a1,s0
   15374:	03010513          	addi	a0,sp,48
   15378:	40e787b3          	sub	a5,a5,a4
   1537c:	00f037b3          	snez	a5,a5
   15380:	40f007bb          	negw	a5,a5
   15384:	02f11823          	sh	a5,48(sp)
   15388:	f6cff0ef          	jal	ra,14af4 <emovo.isra.6>
   1538c:	cedff06f          	j	15078 <ediv+0xcc>
   15390:	01448713          	addi	a4,s1,20
   15394:	00248493          	addi	s1,s1,2
   15398:	ffe4d783          	lhu	a5,-2(s1)
   1539c:	00240413          	addi	s0,s0,2
   153a0:	fef41f23          	sh	a5,-2(s0)
   153a4:	fee498e3          	bne	s1,a4,15394 <ediv+0x3e8>
   153a8:	cd1ff06f          	j	15078 <ediv+0xcc>
   153ac:	eea5fce3          	bgeu	a1,a0,152a4 <ediv+0x2f8>
   153b0:	fffc879b          	addiw	a5,s9,-1
   153b4:	03079893          	slli	a7,a5,0x30
   153b8:	0308d893          	srli	a7,a7,0x30
   153bc:	00000513          	li	a0,0
   153c0:	02810593          	addi	a1,sp,40
   153c4:	06810613          	addi	a2,sp,104
   153c8:	00065783          	lhu	a5,0(a2)
   153cc:	0005d803          	lhu	a6,0(a1)
   153d0:	ffe60613          	addi	a2,a2,-2
   153d4:	40a787b3          	sub	a5,a5,a0
   153d8:	410787b3          	sub	a5,a5,a6
   153dc:	00f61123          	sh	a5,2(a2)
   153e0:	0107d793          	srli	a5,a5,0x10
   153e4:	ffe58593          	addi	a1,a1,-2
   153e8:	0017f513          	andi	a0,a5,1
   153ec:	fd461ee3          	bne	a2,s4,153c8 <ediv+0x41c>
   153f0:	03410613          	addi	a2,sp,52
   153f4:	05410793          	addi	a5,sp,84
   153f8:	00278793          	addi	a5,a5,2
   153fc:	00260613          	addi	a2,a2,2
   15400:	ffe7d503          	lhu	a0,-2(a5)
   15404:	ffe65583          	lhu	a1,-2(a2)
   15408:	00b51863          	bne	a0,a1,15418 <ediv+0x46c>
   1540c:	ff2796e3          	bne	a5,s2,153f8 <ediv+0x44c>
   15410:	00088c93          	mv	s9,a7
   15414:	e91ff06f          	j	152a4 <ediv+0x2f8>
   15418:	fea5fce3          	bgeu	a1,a0,15410 <ediv+0x464>
   1541c:	ffec869b          	addiw	a3,s9,-2
   15420:	03069c93          	slli	s9,a3,0x30
   15424:	030cdc93          	srli	s9,s9,0x30
   15428:	00000513          	li	a0,0
   1542c:	02810593          	addi	a1,sp,40
   15430:	06810613          	addi	a2,sp,104
   15434:	00065783          	lhu	a5,0(a2)
   15438:	0005d803          	lhu	a6,0(a1)
   1543c:	ffe60613          	addi	a2,a2,-2
   15440:	40a787b3          	sub	a5,a5,a0
   15444:	410787b3          	sub	a5,a5,a6
   15448:	00f61123          	sh	a5,2(a2)
   1544c:	0107d793          	srli	a5,a5,0x10
   15450:	ffe58593          	addi	a1,a1,-2
   15454:	0017f513          	andi	a0,a5,1
   15458:	fd461ee3          	bne	a2,s4,15434 <ediv+0x488>
   1545c:	e49ff06f          	j	152a4 <ediv+0x2f8>
   15460:	01440793          	addi	a5,s0,20
   15464:	00240413          	addi	s0,s0,2
   15468:	fe041f23          	sh	zero,-2(s0)
   1546c:	fe879ce3          	bne	a5,s0,15464 <ediv+0x4b8>
   15470:	c09ff06f          	j	15078 <ediv+0xcc>
   15474:	01015703          	lhu	a4,16(sp)
   15478:	03015783          	lhu	a5,48(sp)
   1547c:	00f70463          	beq	a4,a5,15484 <ediv+0x4d8>
   15480:	00008637          	lui	a2,0x8
   15484:	00c41923          	sh	a2,18(s0)
   15488:	01240713          	addi	a4,s0,18
   1548c:	00040793          	mv	a5,s0
   15490:	00278793          	addi	a5,a5,2
   15494:	fe079f23          	sh	zero,-2(a5)
   15498:	fef71ce3          	bne	a4,a5,15490 <ediv+0x4e4>
   1549c:	01245783          	lhu	a5,18(s0)
   154a0:	00008737          	lui	a4,0x8
   154a4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   154a8:	00e7e7b3          	or	a5,a5,a4
   154ac:	00f41923          	sh	a5,18(s0)
   154b0:	bc9ff06f          	j	15078 <ediv+0xcc>

00000000000154b4 <e113toe.isra.8>:
   154b4:	fd010113          	addi	sp,sp,-48
   154b8:	02813023          	sd	s0,32(sp)
   154bc:	02113423          	sd	ra,40(sp)
   154c0:	00058413          	mv	s0,a1
   154c4:	00010793          	mv	a5,sp
   154c8:	01a10713          	addi	a4,sp,26
   154cc:	00278793          	addi	a5,a5,2
   154d0:	fe079f23          	sh	zero,-2(a5)
   154d4:	fee79ce3          	bne	a5,a4,154cc <e113toe.isra.8+0x18>
   154d8:	00e55603          	lhu	a2,14(a0)
   154dc:	0106179b          	slliw	a5,a2,0x10
   154e0:	4107d79b          	sraiw	a5,a5,0x10
   154e4:	02079713          	slli	a4,a5,0x20
   154e8:	06074a63          	bltz	a4,1555c <e113toe.isra.8+0xa8>
   154ec:	000087b7          	lui	a5,0x8
   154f0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   154f4:	00011023          	sh	zero,0(sp)
   154f8:	00f67633          	and	a2,a2,a5
   154fc:	06f60c63          	beq	a2,a5,15574 <e113toe.isra.8+0xc0>
   15500:	00e50793          	addi	a5,a0,14
   15504:	00c11123          	sh	a2,2(sp)
   15508:	00610713          	addi	a4,sp,6
   1550c:	ffe78793          	addi	a5,a5,-2
   15510:	0007d683          	lhu	a3,0(a5)
   15514:	00270713          	addi	a4,a4,2
   15518:	fed71f23          	sh	a3,-2(a4)
   1551c:	fef518e3          	bne	a0,a5,1550c <e113toe.isra.8+0x58>
   15520:	02061263          	bnez	a2,15544 <e113toe.isra.8+0x90>
   15524:	00011223          	sh	zero,4(sp)
   15528:	00040593          	mv	a1,s0
   1552c:	00010513          	mv	a0,sp
   15530:	dc4ff0ef          	jal	ra,14af4 <emovo.isra.6>
   15534:	02813083          	ld	ra,40(sp)
   15538:	02013403          	ld	s0,32(sp)
   1553c:	03010113          	addi	sp,sp,48
   15540:	00008067          	ret
   15544:	00100793          	li	a5,1
   15548:	fff00593          	li	a1,-1
   1554c:	00010513          	mv	a0,sp
   15550:	00f11223          	sh	a5,4(sp)
   15554:	cf5fe0ef          	jal	ra,14248 <eshift.part.3>
   15558:	fd1ff06f          	j	15528 <e113toe.isra.8+0x74>
   1555c:	fff00793          	li	a5,-1
   15560:	00f11023          	sh	a5,0(sp)
   15564:	000087b7          	lui	a5,0x8
   15568:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1556c:	00f67633          	and	a2,a2,a5
   15570:	f8f618e3          	bne	a2,a5,15500 <e113toe.isra.8+0x4c>
   15574:	00050793          	mv	a5,a0
   15578:	00e50693          	addi	a3,a0,14
   1557c:	0007d703          	lhu	a4,0(a5)
   15580:	00278793          	addi	a5,a5,2
   15584:	04071c63          	bnez	a4,155dc <e113toe.isra.8+0x128>
   15588:	fef69ae3          	bne	a3,a5,1557c <e113toe.isra.8+0xc8>
   1558c:	01440713          	addi	a4,s0,20
   15590:	00040793          	mv	a5,s0
   15594:	00278793          	addi	a5,a5,2
   15598:	fe079f23          	sh	zero,-2(a5)
   1559c:	fee79ce3          	bne	a5,a4,15594 <e113toe.isra.8+0xe0>
   155a0:	01240713          	addi	a4,s0,18
   155a4:	00040793          	mv	a5,s0
   155a8:	00278793          	addi	a5,a5,2
   155ac:	fe079f23          	sh	zero,-2(a5)
   155b0:	fee79ce3          	bne	a5,a4,155a8 <e113toe.isra.8+0xf4>
   155b4:	01245783          	lhu	a5,18(s0)
   155b8:	00008737          	lui	a4,0x8
   155bc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   155c0:	00e7e7b3          	or	a5,a5,a4
   155c4:	00f41923          	sh	a5,18(s0)
   155c8:	00e51783          	lh	a5,14(a0)
   155cc:	f607d4e3          	bgez	a5,15534 <e113toe.isra.8+0x80>
   155d0:	00040513          	mv	a0,s0
   155d4:	9c5fe0ef          	jal	ra,13f98 <eneg>
   155d8:	f5dff06f          	j	15534 <e113toe.isra.8+0x80>
   155dc:	01040713          	addi	a4,s0,16
   155e0:	00040793          	mv	a5,s0
   155e4:	00278793          	addi	a5,a5,2
   155e8:	fe079f23          	sh	zero,-2(a5)
   155ec:	fee79ce3          	bne	a5,a4,155e4 <e113toe.isra.8+0x130>
   155f0:	7fffc7b7          	lui	a5,0x7fffc
   155f4:	00f42823          	sw	a5,16(s0)
   155f8:	f3dff06f          	j	15534 <e113toe.isra.8+0x80>

00000000000155fc <_ldtoa_r>:
   155fc:	09100313          	li	t1,145
   15600:	02031313          	slli	t1,t1,0x20
   15604:	06053e03          	ld	t3,96(a0)
   15608:	da010113          	addi	sp,sp,-608
   1560c:	fff30313          	addi	t1,t1,-1
   15610:	24813823          	sd	s0,592(sp)
   15614:	23613023          	sd	s6,544(sp)
   15618:	21713c23          	sd	s7,536(sp)
   1561c:	24113c23          	sd	ra,600(sp)
   15620:	24913423          	sd	s1,584(sp)
   15624:	25213023          	sd	s2,576(sp)
   15628:	23313c23          	sd	s3,568(sp)
   1562c:	23413823          	sd	s4,560(sp)
   15630:	23513423          	sd	s5,552(sp)
   15634:	21813823          	sd	s8,528(sp)
   15638:	21913423          	sd	s9,520(sp)
   1563c:	21a13023          	sd	s10,512(sp)
   15640:	1fb13c23          	sd	s11,504(sp)
   15644:	04b13823          	sd	a1,80(sp)
   15648:	04c13c23          	sd	a2,88(sp)
   1564c:	1a613023          	sd	t1,416(sp)
   15650:	00e13823          	sd	a4,16(sp)
   15654:	00f13c23          	sd	a5,24(sp)
   15658:	03113823          	sd	a7,48(sp)
   1565c:	00050b13          	mv	s6,a0
   15660:	00068b93          	mv	s7,a3
   15664:	00080413          	mv	s0,a6
   15668:	020e0263          	beqz	t3,1568c <_ldtoa_r+0x90>
   1566c:	06852703          	lw	a4,104(a0)
   15670:	00100793          	li	a5,1
   15674:	000e0593          	mv	a1,t3
   15678:	00e797bb          	sllw	a5,a5,a4
   1567c:	00ee2423          	sw	a4,8(t3)
   15680:	00fe2623          	sw	a5,12(t3)
   15684:	7f9010ef          	jal	ra,1767c <_Bfree>
   15688:	060b3023          	sd	zero,96(s6)
   1568c:	08010593          	addi	a1,sp,128
   15690:	05010513          	addi	a0,sp,80
   15694:	e21ff0ef          	jal	ra,154b4 <e113toe.isra.8>
   15698:	08010513          	addi	a0,sp,128
   1569c:	949fe0ef          	jal	ra,13fe4 <eisneg>
   156a0:	00a03533          	snez	a0,a0
   156a4:	00a42023          	sw	a0,0(s0)
   156a8:	00300793          	li	a5,3
   156ac:	1cfb80e3          	beq	s7,a5,1606c <_ldtoa_r+0xa70>
   156b0:	01400793          	li	a5,20
   156b4:	00f13423          	sd	a5,8(sp)
   156b8:	620b9ee3          	bnez	s7,164f4 <_ldtoa_r+0xef8>
   156bc:	09215783          	lhu	a5,146(sp)
   156c0:	1a412703          	lw	a4,420(sp)
   156c4:	fff7c793          	not	a5,a5
   156c8:	02e13423          	sd	a4,40(sp)
   156cc:	03179713          	slli	a4,a5,0x31
   156d0:	00071863          	bnez	a4,156e0 <_ldtoa_r+0xe4>
   156d4:	08010513          	addi	a0,sp,128
   156d8:	89dfe0ef          	jal	ra,13f74 <eisnan.part.0>
   156dc:	460510e3          	bnez	a0,1633c <_ldtoa_r+0xd40>
   156e0:	09000793          	li	a5,144
   156e4:	1af12223          	sw	a5,420(sp)
   156e8:	0a010713          	addi	a4,sp,160
   156ec:	08010793          	addi	a5,sp,128
   156f0:	09410613          	addi	a2,sp,148
   156f4:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd8dfa>
   156f8:	ffe7d683          	lhu	a3,-2(a5)
   156fc:	00270713          	addi	a4,a4,2
   15700:	fed71f23          	sh	a3,-2(a4)
   15704:	fec798e3          	bne	a5,a2,156f4 <_ldtoa_r+0xf8>
   15708:	0b215603          	lhu	a2,178(sp)
   1570c:	02013023          	sd	zero,32(sp)
   15710:	0106179b          	slliw	a5,a2,0x10
   15714:	4107d79b          	sraiw	a5,a5,0x10
   15718:	02079713          	slli	a4,a5,0x20
   1571c:	00075e63          	bgez	a4,15738 <_ldtoa_r+0x13c>
   15720:	03161613          	slli	a2,a2,0x31
   15724:	000107b7          	lui	a5,0x10
   15728:	03165613          	srli	a2,a2,0x31
   1572c:	fff78793          	addi	a5,a5,-1 # ffff <register_fini-0xb1>
   15730:	0ac11923          	sh	a2,178(sp)
   15734:	02f13023          	sd	a5,32(sp)
   15738:	00000693          	li	a3,0
   1573c:	0c010793          	addi	a5,sp,192
   15740:	0000c717          	auipc	a4,0xc
   15744:	d1870713          	addi	a4,a4,-744 # 21458 <eone>
   15748:	0d410d93          	addi	s11,sp,212
   1574c:	0080006f          	j	15754 <_ldtoa_r+0x158>
   15750:	00075683          	lhu	a3,0(a4)
   15754:	00278793          	addi	a5,a5,2
   15758:	fed79f23          	sh	a3,-2(a5)
   1575c:	00270713          	addi	a4,a4,2
   15760:	ffb798e3          	bne	a5,s11,15750 <_ldtoa_r+0x154>
   15764:	16060663          	beqz	a2,158d0 <_ldtoa_r+0x2d4>
   15768:	000087b7          	lui	a5,0x8
   1576c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15770:	5af60ee3          	beq	a2,a5,1652c <_ldtoa_r+0xf30>
   15774:	0b011783          	lh	a5,176(sp)
   15778:	6407d0e3          	bgez	a5,165b8 <_ldtoa_r+0xfbc>
   1577c:	0a010593          	addi	a1,sp,160
   15780:	0000c517          	auipc	a0,0xc
   15784:	cd850513          	addi	a0,a0,-808 # 21458 <eone>
   15788:	989fe0ef          	jal	ra,14110 <ecmp>
   1578c:	14050e63          	beqz	a0,158e8 <_ldtoa_r+0x2ec>
   15790:	100548e3          	bltz	a0,160a0 <_ldtoa_r+0xaa4>
   15794:	0b215783          	lhu	a5,178(sp)
   15798:	6a079ee3          	bnez	a5,16654 <_ldtoa_r+0x1058>
   1579c:	0b011783          	lh	a5,176(sp)
   157a0:	00000493          	li	s1,0
   157a4:	1a010993          	addi	s3,sp,416
   157a8:	0207c663          	bltz	a5,157d4 <_ldtoa_r+0x1d8>
   157ac:	0000c417          	auipc	s0,0xc
   157b0:	db440413          	addi	s0,s0,-588 # 21560 <etens+0xf0>
   157b4:	0a010613          	addi	a2,sp,160
   157b8:	00098693          	mv	a3,s3
   157bc:	00060593          	mv	a1,a2
   157c0:	00040513          	mv	a0,s0
   157c4:	be0ff0ef          	jal	ra,14ba4 <emul>
   157c8:	0b011783          	lh	a5,176(sp)
   157cc:	fff4849b          	addiw	s1,s1,-1
   157d0:	fe07d2e3          	bgez	a5,157b4 <_ldtoa_r+0x1b8>
   157d4:	10010413          	addi	s0,sp,256
   157d8:	11810a13          	addi	s4,sp,280
   157dc:	00040713          	mv	a4,s0
   157e0:	0a010793          	addi	a5,sp,160
   157e4:	0b410613          	addi	a2,sp,180
   157e8:	00278793          	addi	a5,a5,2
   157ec:	ffe7d683          	lhu	a3,-2(a5)
   157f0:	00270713          	addi	a4,a4,2
   157f4:	fed71f23          	sh	a3,-2(a4)
   157f8:	fec798e3          	bne	a5,a2,157e8 <_ldtoa_r+0x1ec>
   157fc:	00000693          	li	a3,0
   15800:	0c010793          	addi	a5,sp,192
   15804:	0000c717          	auipc	a4,0xc
   15808:	c5470713          	addi	a4,a4,-940 # 21458 <eone>
   1580c:	0080006f          	j	15814 <_ldtoa_r+0x218>
   15810:	00075683          	lhu	a3,0(a4)
   15814:	00278793          	addi	a5,a5,2
   15818:	fed79f23          	sh	a3,-2(a5)
   1581c:	00270713          	addi	a4,a4,2
   15820:	ffb798e3          	bne	a5,s11,15810 <_ldtoa_r+0x214>
   15824:	fffff937          	lui	s2,0xfffff
   15828:	0000ca97          	auipc	s5,0xc
   1582c:	c48a8a93          	addi	s5,s5,-952 # 21470 <etens>
   15830:	0000cc97          	auipc	s9,0xc
   15834:	d48c8c93          	addi	s9,s9,-696 # 21578 <emtens>
   15838:	0000cd17          	auipc	s10,0xc
   1583c:	c20d0d13          	addi	s10,s10,-992 # 21458 <eone>
   15840:	0000cd97          	auipc	s11,0xc
   15844:	d20d8d93          	addi	s11,s11,-736 # 21560 <etens+0xf0>
   15848:	00c0006f          	j	15854 <_ldtoa_r+0x258>
   1584c:	014c8c93          	addi	s9,s9,20
   15850:	014a8a93          	addi	s5,s5,20
   15854:	00040593          	mv	a1,s0
   15858:	000d0513          	mv	a0,s10
   1585c:	8b5fe0ef          	jal	ra,14110 <ecmp>
   15860:	00040593          	mv	a1,s0
   15864:	04a05663          	blez	a0,158b0 <_ldtoa_r+0x2b4>
   15868:	000c8513          	mv	a0,s9
   1586c:	8a5fe0ef          	jal	ra,14110 <ecmp>
   15870:	00098693          	mv	a3,s3
   15874:	00040613          	mv	a2,s0
   15878:	00040593          	mv	a1,s0
   1587c:	02054263          	bltz	a0,158a0 <_ldtoa_r+0x2a4>
   15880:	000a8513          	mv	a0,s5
   15884:	b20ff0ef          	jal	ra,14ba4 <emul>
   15888:	0c010613          	addi	a2,sp,192
   1588c:	00098693          	mv	a3,s3
   15890:	00060593          	mv	a1,a2
   15894:	000a8513          	mv	a0,s5
   15898:	b0cff0ef          	jal	ra,14ba4 <emul>
   1589c:	009904bb          	addw	s1,s2,s1
   158a0:	01f9579b          	srliw	a5,s2,0x1f
   158a4:	0127893b          	addw	s2,a5,s2
   158a8:	4019591b          	sraiw	s2,s2,0x1
   158ac:	fbba90e3          	bne	s5,s11,1584c <_ldtoa_r+0x250>
   158b0:	0c010613          	addi	a2,sp,192
   158b4:	00098693          	mv	a3,s3
   158b8:	0000c597          	auipc	a1,0xc
   158bc:	ba058593          	addi	a1,a1,-1120 # 21458 <eone>
   158c0:	00060513          	mv	a0,a2
   158c4:	ee8ff0ef          	jal	ra,14fac <ediv>
   158c8:	16010913          	addi	s2,sp,352
   158cc:	0300006f          	j	158fc <_ldtoa_r+0x300>
   158d0:	0a010793          	addi	a5,sp,160
   158d4:	0b210693          	addi	a3,sp,178
   158d8:	0007d703          	lhu	a4,0(a5)
   158dc:	00278793          	addi	a5,a5,2
   158e0:	e8071ee3          	bnez	a4,1577c <_ldtoa_r+0x180>
   158e4:	fef69ae3          	bne	a3,a5,158d8 <_ldtoa_r+0x2dc>
   158e8:	00000493          	li	s1,0
   158ec:	16010913          	addi	s2,sp,352
   158f0:	1a010993          	addi	s3,sp,416
   158f4:	10010413          	addi	s0,sp,256
   158f8:	11810a13          	addi	s4,sp,280
   158fc:	00040593          	mv	a1,s0
   15900:	0c010513          	addi	a0,sp,192
   15904:	f20fe0ef          	jal	ra,14024 <emovi>
   15908:	0c010713          	addi	a4,sp,192
   1590c:	00040793          	mv	a5,s0
   15910:	00278793          	addi	a5,a5,2
   15914:	ffe7d683          	lhu	a3,-2(a5)
   15918:	00270713          	addi	a4,a4,2
   1591c:	fed71f23          	sh	a3,-2(a4)
   15920:	ff4798e3          	bne	a5,s4,15910 <_ldtoa_r+0x314>
   15924:	00040593          	mv	a1,s0
   15928:	0a010513          	addi	a0,sp,160
   1592c:	0c011c23          	sh	zero,216(sp)
   15930:	ef4fe0ef          	jal	ra,14024 <emovi>
   15934:	0a010793          	addi	a5,sp,160
   15938:	00240413          	addi	s0,s0,2
   1593c:	ffe45703          	lhu	a4,-2(s0)
   15940:	00278793          	addi	a5,a5,2
   15944:	fee79f23          	sh	a4,-2(a5)
   15948:	ff4418e3          	bne	s0,s4,15938 <_ldtoa_r+0x33c>
   1594c:	00098613          	mv	a2,s3
   15950:	0a010593          	addi	a1,sp,160
   15954:	0c010513          	addi	a0,sp,192
   15958:	0a011c23          	sh	zero,184(sp)
   1595c:	834ff0ef          	jal	ra,14990 <eiremain>
   15960:	1ec15c83          	lhu	s9,492(sp)
   15964:	1e0c9063          	bnez	s9,15b44 <_ldtoa_r+0x548>
   15968:	0000ca97          	auipc	s5,0xc
   1596c:	ad8a8a93          	addi	s5,s5,-1320 # 21440 <ezero>
   15970:	0b810d93          	addi	s11,sp,184
   15974:	0a210413          	addi	s0,sp,162
   15978:	0e210d13          	addi	s10,sp,226
   1597c:	000a8593          	mv	a1,s5
   15980:	0a010513          	addi	a0,sp,160
   15984:	f8cfe0ef          	jal	ra,14110 <ecmp>
   15988:	1a050e63          	beqz	a0,15b44 <_ldtoa_r+0x548>
   1598c:	00000713          	li	a4,0
   15990:	000d8693          	mv	a3,s11
   15994:	01c0006f          	j	159b0 <_ldtoa_r+0x3b4>
   15998:	0017171b          	slliw	a4,a4,0x1
   1599c:	00f69023          	sh	a5,0(a3)
   159a0:	03071713          	slli	a4,a4,0x30
   159a4:	ffe68693          	addi	a3,a3,-2
   159a8:	03075713          	srli	a4,a4,0x30
   159ac:	04868663          	beq	a3,s0,159f8 <_ldtoa_r+0x3fc>
   159b0:	0006d783          	lhu	a5,0(a3)
   159b4:	0107961b          	slliw	a2,a5,0x10
   159b8:	4106561b          	sraiw	a2,a2,0x10
   159bc:	02061593          	slli	a1,a2,0x20
   159c0:	0017979b          	slliw	a5,a5,0x1
   159c4:	0005d463          	bgez	a1,159cc <_ldtoa_r+0x3d0>
   159c8:	00176713          	ori	a4,a4,1
   159cc:	03079793          	slli	a5,a5,0x30
   159d0:	0307d793          	srli	a5,a5,0x30
   159d4:	00277613          	andi	a2,a4,2
   159d8:	0017e593          	ori	a1,a5,1
   159dc:	fa060ee3          	beqz	a2,15998 <_ldtoa_r+0x39c>
   159e0:	0017171b          	slliw	a4,a4,0x1
   159e4:	00b69023          	sh	a1,0(a3)
   159e8:	03071713          	slli	a4,a4,0x30
   159ec:	ffe68693          	addi	a3,a3,-2
   159f0:	03075713          	srli	a4,a4,0x30
   159f4:	fa869ee3          	bne	a3,s0,159b0 <_ldtoa_r+0x3b4>
   159f8:	0e010713          	addi	a4,sp,224
   159fc:	0a010793          	addi	a5,sp,160
   15a00:	00278793          	addi	a5,a5,2
   15a04:	ffe7d683          	lhu	a3,-2(a5)
   15a08:	00270713          	addi	a4,a4,2
   15a0c:	fed71f23          	sh	a3,-2(a4)
   15a10:	ffb798e3          	bne	a5,s11,15a00 <_ldtoa_r+0x404>
   15a14:	0e011c23          	sh	zero,248(sp)
   15a18:	00000713          	li	a4,0
   15a1c:	0f810693          	addi	a3,sp,248
   15a20:	01c0006f          	j	15a3c <_ldtoa_r+0x440>
   15a24:	0017171b          	slliw	a4,a4,0x1
   15a28:	00f69023          	sh	a5,0(a3)
   15a2c:	03071713          	slli	a4,a4,0x30
   15a30:	ffe68693          	addi	a3,a3,-2
   15a34:	03075713          	srli	a4,a4,0x30
   15a38:	05a68663          	beq	a3,s10,15a84 <_ldtoa_r+0x488>
   15a3c:	0006d783          	lhu	a5,0(a3)
   15a40:	0107961b          	slliw	a2,a5,0x10
   15a44:	4106561b          	sraiw	a2,a2,0x10
   15a48:	02061593          	slli	a1,a2,0x20
   15a4c:	0017979b          	slliw	a5,a5,0x1
   15a50:	0005d463          	bgez	a1,15a58 <_ldtoa_r+0x45c>
   15a54:	00176713          	ori	a4,a4,1
   15a58:	03079793          	slli	a5,a5,0x30
   15a5c:	0307d793          	srli	a5,a5,0x30
   15a60:	00277613          	andi	a2,a4,2
   15a64:	0017e593          	ori	a1,a5,1
   15a68:	fa060ee3          	beqz	a2,15a24 <_ldtoa_r+0x428>
   15a6c:	0017171b          	slliw	a4,a4,0x1
   15a70:	00b69023          	sh	a1,0(a3)
   15a74:	03071713          	slli	a4,a4,0x30
   15a78:	ffe68693          	addi	a3,a3,-2
   15a7c:	03075713          	srli	a4,a4,0x30
   15a80:	fba69ee3          	bne	a3,s10,15a3c <_ldtoa_r+0x440>
   15a84:	00000713          	li	a4,0
   15a88:	0f810693          	addi	a3,sp,248
   15a8c:	01c0006f          	j	15aa8 <_ldtoa_r+0x4ac>
   15a90:	0017171b          	slliw	a4,a4,0x1
   15a94:	00f69023          	sh	a5,0(a3)
   15a98:	03071713          	slli	a4,a4,0x30
   15a9c:	ffe68693          	addi	a3,a3,-2
   15aa0:	03075713          	srli	a4,a4,0x30
   15aa4:	05a68663          	beq	a3,s10,15af0 <_ldtoa_r+0x4f4>
   15aa8:	0006d783          	lhu	a5,0(a3)
   15aac:	0107961b          	slliw	a2,a5,0x10
   15ab0:	4106561b          	sraiw	a2,a2,0x10
   15ab4:	02061593          	slli	a1,a2,0x20
   15ab8:	0017979b          	slliw	a5,a5,0x1
   15abc:	0005d463          	bgez	a1,15ac4 <_ldtoa_r+0x4c8>
   15ac0:	00176713          	ori	a4,a4,1
   15ac4:	03079793          	slli	a5,a5,0x30
   15ac8:	0307d793          	srli	a5,a5,0x30
   15acc:	00277613          	andi	a2,a4,2
   15ad0:	0017e593          	ori	a1,a5,1
   15ad4:	fa060ee3          	beqz	a2,15a90 <_ldtoa_r+0x494>
   15ad8:	0017171b          	slliw	a4,a4,0x1
   15adc:	00b69023          	sh	a1,0(a3)
   15ae0:	03071713          	slli	a4,a4,0x30
   15ae4:	ffe68693          	addi	a3,a3,-2
   15ae8:	03075713          	srli	a4,a4,0x30
   15aec:	fba69ee3          	bne	a3,s10,15aa8 <_ldtoa_r+0x4ac>
   15af0:	00000613          	li	a2,0
   15af4:	000d8693          	mv	a3,s11
   15af8:	0f810713          	addi	a4,sp,248
   15afc:	0006d583          	lhu	a1,0(a3)
   15b00:	00075783          	lhu	a5,0(a4)
   15b04:	ffe68693          	addi	a3,a3,-2
   15b08:	ffe70713          	addi	a4,a4,-2
   15b0c:	00b787b3          	add	a5,a5,a1
   15b10:	00c787b3          	add	a5,a5,a2
   15b14:	00f69123          	sh	a5,2(a3)
   15b18:	0107d793          	srli	a5,a5,0x10
   15b1c:	0017f613          	andi	a2,a5,1
   15b20:	fda71ee3          	bne	a4,s10,15afc <_ldtoa_r+0x500>
   15b24:	00098613          	mv	a2,s3
   15b28:	0a010593          	addi	a1,sp,160
   15b2c:	0c010513          	addi	a0,sp,192
   15b30:	e61fe0ef          	jal	ra,14990 <eiremain>
   15b34:	1ec15783          	lhu	a5,492(sp)
   15b38:	fff4849b          	addiw	s1,s1,-1
   15b3c:	e40780e3          	beqz	a5,1597c <_ldtoa_r+0x380>
   15b40:	00078c93          	mv	s9,a5
   15b44:	02013703          	ld	a4,32(sp)
   15b48:	02d00793          	li	a5,45
   15b4c:	00071463          	bnez	a4,15b54 <_ldtoa_r+0x558>
   15b50:	02000793          	li	a5,32
   15b54:	16f10023          	sb	a5,352(sp)
   15b58:	00300793          	li	a5,3
   15b5c:	00813403          	ld	s0,8(sp)
   15b60:	02fb8463          	beq	s7,a5,15b88 <_ldtoa_r+0x58c>
   15b64:	00a00793          	li	a5,10
   15b68:	20fc8ae3          	beq	s9,a5,1657c <_ldtoa_r+0xf80>
   15b6c:	030c8c9b          	addiw	s9,s9,48
   15b70:	02e00793          	li	a5,46
   15b74:	179100a3          	sb	s9,353(sp)
   15b78:	16f10123          	sb	a5,354(sp)
   15b7c:	7a044863          	bltz	s0,1632c <_ldtoa_r+0xd30>
   15b80:	16310c93          	addi	s9,sp,355
   15b84:	0300006f          	j	15bb4 <_ldtoa_r+0x5b8>
   15b88:	0094043b          	addw	s0,s0,s1
   15b8c:	02a00793          	li	a5,42
   15b90:	fc87dae3          	bge	a5,s0,15b64 <_ldtoa_r+0x568>
   15b94:	00a00793          	li	a5,10
   15b98:	1afc8ee3          	beq	s9,a5,16554 <_ldtoa_r+0xf58>
   15b9c:	030c8c9b          	addiw	s9,s9,48
   15ba0:	02e00793          	li	a5,46
   15ba4:	179100a3          	sb	s9,353(sp)
   15ba8:	16f10123          	sb	a5,354(sp)
   15bac:	02a00413          	li	s0,42
   15bb0:	16310c93          	addi	s9,sp,355
   15bb4:	00000c13          	li	s8,0
   15bb8:	0e010a93          	addi	s5,sp,224
   15bbc:	0b810d93          	addi	s11,sp,184
   15bc0:	0a210a13          	addi	s4,sp,162
   15bc4:	0e210d13          	addi	s10,sp,226
   15bc8:	00000713          	li	a4,0
   15bcc:	000d8693          	mv	a3,s11
   15bd0:	01c0006f          	j	15bec <_ldtoa_r+0x5f0>
   15bd4:	0017171b          	slliw	a4,a4,0x1
   15bd8:	00f69023          	sh	a5,0(a3)
   15bdc:	03071713          	slli	a4,a4,0x30
   15be0:	ffe68693          	addi	a3,a3,-2
   15be4:	03075713          	srli	a4,a4,0x30
   15be8:	05468663          	beq	a3,s4,15c34 <_ldtoa_r+0x638>
   15bec:	0006d783          	lhu	a5,0(a3)
   15bf0:	0107961b          	slliw	a2,a5,0x10
   15bf4:	4106561b          	sraiw	a2,a2,0x10
   15bf8:	02061593          	slli	a1,a2,0x20
   15bfc:	0017979b          	slliw	a5,a5,0x1
   15c00:	0005d463          	bgez	a1,15c08 <_ldtoa_r+0x60c>
   15c04:	00176713          	ori	a4,a4,1
   15c08:	03079793          	slli	a5,a5,0x30
   15c0c:	0307d793          	srli	a5,a5,0x30
   15c10:	00277613          	andi	a2,a4,2
   15c14:	0017e593          	ori	a1,a5,1
   15c18:	fa060ee3          	beqz	a2,15bd4 <_ldtoa_r+0x5d8>
   15c1c:	0017171b          	slliw	a4,a4,0x1
   15c20:	00b69023          	sh	a1,0(a3)
   15c24:	03071713          	slli	a4,a4,0x30
   15c28:	ffe68693          	addi	a3,a3,-2
   15c2c:	03075713          	srli	a4,a4,0x30
   15c30:	fb469ee3          	bne	a3,s4,15bec <_ldtoa_r+0x5f0>
   15c34:	000a8713          	mv	a4,s5
   15c38:	0a010793          	addi	a5,sp,160
   15c3c:	00278793          	addi	a5,a5,2
   15c40:	ffe7d683          	lhu	a3,-2(a5)
   15c44:	00270713          	addi	a4,a4,2
   15c48:	fed71f23          	sh	a3,-2(a4)
   15c4c:	ffb798e3          	bne	a5,s11,15c3c <_ldtoa_r+0x640>
   15c50:	0e011c23          	sh	zero,248(sp)
   15c54:	00000713          	li	a4,0
   15c58:	0f810693          	addi	a3,sp,248
   15c5c:	01c0006f          	j	15c78 <_ldtoa_r+0x67c>
   15c60:	0017171b          	slliw	a4,a4,0x1
   15c64:	00f69023          	sh	a5,0(a3)
   15c68:	03071713          	slli	a4,a4,0x30
   15c6c:	ffe68693          	addi	a3,a3,-2
   15c70:	03075713          	srli	a4,a4,0x30
   15c74:	05a68663          	beq	a3,s10,15cc0 <_ldtoa_r+0x6c4>
   15c78:	0006d783          	lhu	a5,0(a3)
   15c7c:	0107961b          	slliw	a2,a5,0x10
   15c80:	4106561b          	sraiw	a2,a2,0x10
   15c84:	02061593          	slli	a1,a2,0x20
   15c88:	0017979b          	slliw	a5,a5,0x1
   15c8c:	0005d463          	bgez	a1,15c94 <_ldtoa_r+0x698>
   15c90:	00176713          	ori	a4,a4,1
   15c94:	03079793          	slli	a5,a5,0x30
   15c98:	0307d793          	srli	a5,a5,0x30
   15c9c:	00277613          	andi	a2,a4,2
   15ca0:	0017e593          	ori	a1,a5,1
   15ca4:	fa060ee3          	beqz	a2,15c60 <_ldtoa_r+0x664>
   15ca8:	0017171b          	slliw	a4,a4,0x1
   15cac:	00b69023          	sh	a1,0(a3)
   15cb0:	03071713          	slli	a4,a4,0x30
   15cb4:	ffe68693          	addi	a3,a3,-2
   15cb8:	03075713          	srli	a4,a4,0x30
   15cbc:	fba69ee3          	bne	a3,s10,15c78 <_ldtoa_r+0x67c>
   15cc0:	00000713          	li	a4,0
   15cc4:	0f810693          	addi	a3,sp,248
   15cc8:	01c0006f          	j	15ce4 <_ldtoa_r+0x6e8>
   15ccc:	0017171b          	slliw	a4,a4,0x1
   15cd0:	00f69023          	sh	a5,0(a3)
   15cd4:	03071713          	slli	a4,a4,0x30
   15cd8:	ffe68693          	addi	a3,a3,-2
   15cdc:	03075713          	srli	a4,a4,0x30
   15ce0:	05a68663          	beq	a3,s10,15d2c <_ldtoa_r+0x730>
   15ce4:	0006d783          	lhu	a5,0(a3)
   15ce8:	0107961b          	slliw	a2,a5,0x10
   15cec:	4106561b          	sraiw	a2,a2,0x10
   15cf0:	02061593          	slli	a1,a2,0x20
   15cf4:	0017979b          	slliw	a5,a5,0x1
   15cf8:	0005d463          	bgez	a1,15d00 <_ldtoa_r+0x704>
   15cfc:	00176713          	ori	a4,a4,1
   15d00:	03079793          	slli	a5,a5,0x30
   15d04:	0307d793          	srli	a5,a5,0x30
   15d08:	00277613          	andi	a2,a4,2
   15d0c:	0017e593          	ori	a1,a5,1
   15d10:	fa060ee3          	beqz	a2,15ccc <_ldtoa_r+0x6d0>
   15d14:	0017171b          	slliw	a4,a4,0x1
   15d18:	00b69023          	sh	a1,0(a3)
   15d1c:	03071713          	slli	a4,a4,0x30
   15d20:	ffe68693          	addi	a3,a3,-2
   15d24:	03075713          	srli	a4,a4,0x30
   15d28:	fba69ee3          	bne	a3,s10,15ce4 <_ldtoa_r+0x6e8>
   15d2c:	00000613          	li	a2,0
   15d30:	000d8693          	mv	a3,s11
   15d34:	0f810713          	addi	a4,sp,248
   15d38:	0006d583          	lhu	a1,0(a3)
   15d3c:	00075783          	lhu	a5,0(a4)
   15d40:	ffe68693          	addi	a3,a3,-2
   15d44:	ffe70713          	addi	a4,a4,-2
   15d48:	00b787b3          	add	a5,a5,a1
   15d4c:	00c787b3          	add	a5,a5,a2
   15d50:	00f69123          	sh	a5,2(a3)
   15d54:	0107d793          	srli	a5,a5,0x10
   15d58:	0017f613          	andi	a2,a5,1
   15d5c:	fda71ee3          	bne	a4,s10,15d38 <_ldtoa_r+0x73c>
   15d60:	00098613          	mv	a2,s3
   15d64:	0a010593          	addi	a1,sp,160
   15d68:	0c010513          	addi	a0,sp,192
   15d6c:	c25fe0ef          	jal	ra,14990 <eiremain>
   15d70:	1ec15783          	lhu	a5,492(sp)
   15d74:	018c8733          	add	a4,s9,s8
   15d78:	001c0c13          	addi	s8,s8,1
   15d7c:	0307869b          	addiw	a3,a5,48
   15d80:	00d70023          	sb	a3,0(a4)
   15d84:	000c071b          	sext.w	a4,s8
   15d88:	e4e450e3          	bge	s0,a4,15bc8 <_ldtoa_r+0x5cc>
   15d8c:	00140993          	addi	s3,s0,1
   15d90:	013c89b3          	add	s3,s9,s3
   15d94:	008c8cb3          	add	s9,s9,s0
   15d98:	00400713          	li	a4,4
   15d9c:	08f75063          	bge	a4,a5,15e1c <_ldtoa_r+0x820>
   15da0:	00500713          	li	a4,5
   15da4:	02e78ae3          	beq	a5,a4,165d8 <_ldtoa_r+0xfdc>
   15da8:	ffe9c783          	lbu	a5,-2(s3)
   15dac:	ffe98713          	addi	a4,s3,-2
   15db0:	07f7f793          	andi	a5,a5,127
   15db4:	0007881b          	sext.w	a6,a5
   15db8:	7e044863          	bltz	s0,165a8 <_ldtoa_r+0xfac>
   15dbc:	02e00693          	li	a3,46
   15dc0:	04d78263          	beq	a5,a3,15e04 <_ldtoa_r+0x808>
   15dc4:	0017879b          	addiw	a5,a5,1
   15dc8:	00f70023          	sb	a5,0(a4)
   15dcc:	03800793          	li	a5,56
   15dd0:	03000593          	li	a1,48
   15dd4:	02e00613          	li	a2,46
   15dd8:	03800513          	li	a0,56
   15ddc:	0107c863          	blt	a5,a6,15dec <_ldtoa_r+0x7f0>
   15de0:	03c0006f          	j	15e1c <_ldtoa_r+0x820>
   15de4:	00d70023          	sb	a3,0(a4)
   15de8:	02f57a63          	bgeu	a0,a5,15e1c <_ldtoa_r+0x820>
   15dec:	00b70023          	sb	a1,0(a4)
   15df0:	fff70713          	addi	a4,a4,-1
   15df4:	00074783          	lbu	a5,0(a4)
   15df8:	07f7f793          	andi	a5,a5,127
   15dfc:	0017869b          	addiw	a3,a5,1
   15e00:	fec792e3          	bne	a5,a2,15de4 <_ldtoa_r+0x7e8>
   15e04:	fff74783          	lbu	a5,-1(a4)
   15e08:	03800693          	li	a3,56
   15e0c:	02f6fee3          	bgeu	a3,a5,16648 <_ldtoa_r+0x104c>
   15e10:	03100793          	li	a5,49
   15e14:	0014849b          	addiw	s1,s1,1
   15e18:	fef70fa3          	sb	a5,-1(a4)
   15e1c:	00048613          	mv	a2,s1
   15e20:	0000c597          	auipc	a1,0xc
   15e24:	8b858593          	addi	a1,a1,-1864 # 216d8 <bmask+0x58>
   15e28:	000c8513          	mv	a0,s9
   15e2c:	29d020ef          	jal	ra,188c8 <sprintf>
   15e30:	09215783          	lhu	a5,146(sp)
   15e34:	02813703          	ld	a4,40(sp)
   15e38:	1a912823          	sw	s1,432(sp)
   15e3c:	fff7c793          	not	a5,a5
   15e40:	1ae12223          	sw	a4,420(sp)
   15e44:	03179713          	slli	a4,a5,0x31
   15e48:	00071e63          	bnez	a4,15e64 <_ldtoa_r+0x868>
   15e4c:	08010513          	addi	a0,sp,128
   15e50:	bdcfe0ef          	jal	ra,1422c <eisinf.part.1>
   15e54:	22051c63          	bnez	a0,1608c <_ldtoa_r+0xa90>
   15e58:	08010513          	addi	a0,sp,128
   15e5c:	918fe0ef          	jal	ra,13f74 <eisnan.part.0>
   15e60:	22051663          	bnez	a0,1608c <_ldtoa_r+0xa90>
   15e64:	01813683          	ld	a3,24(sp)
   15e68:	16014783          	lbu	a5,352(sp)
   15e6c:	0014871b          	addiw	a4,s1,1
   15e70:	00e6a023          	sw	a4,0(a3)
   15e74:	0e078ce3          	beqz	a5,1676c <_ldtoa_r+0x1170>
   15e78:	02e00713          	li	a4,46
   15e7c:	06e78063          	beq	a5,a4,15edc <_ldtoa_r+0x8e0>
   15e80:	00090793          	mv	a5,s2
   15e84:	02e00693          	li	a3,46
   15e88:	0080006f          	j	15e90 <_ldtoa_r+0x894>
   15e8c:	04d70a63          	beq	a4,a3,15ee0 <_ldtoa_r+0x8e4>
   15e90:	00178793          	addi	a5,a5,1
   15e94:	0007c703          	lbu	a4,0(a5)
   15e98:	fe071ae3          	bnez	a4,15e8c <_ldtoa_r+0x890>
   15e9c:	04500693          	li	a3,69
   15ea0:	00f96663          	bltu	s2,a5,15eac <_ldtoa_r+0x8b0>
   15ea4:	0140006f          	j	15eb8 <_ldtoa_r+0x8bc>
   15ea8:	01278863          	beq	a5,s2,15eb8 <_ldtoa_r+0x8bc>
   15eac:	fff78793          	addi	a5,a5,-1
   15eb0:	0007c703          	lbu	a4,0(a5)
   15eb4:	fed71ae3          	bne	a4,a3,15ea8 <_ldtoa_r+0x8ac>
   15eb8:	00078023          	sb	zero,0(a5)
   15ebc:	00090793          	mv	a5,s2
   15ec0:	02000693          	li	a3,32
   15ec4:	02d00613          	li	a2,45
   15ec8:	0007c703          	lbu	a4,0(a5)
   15ecc:	00d70463          	beq	a4,a3,15ed4 <_ldtoa_r+0x8d8>
   15ed0:	02c71a63          	bne	a4,a2,15f04 <_ldtoa_r+0x908>
   15ed4:	00178793          	addi	a5,a5,1
   15ed8:	ff1ff06f          	j	15ec8 <_ldtoa_r+0x8cc>
   15edc:	00090793          	mv	a5,s2
   15ee0:	0017c703          	lbu	a4,1(a5)
   15ee4:	00178793          	addi	a5,a5,1
   15ee8:	fee78fa3          	sb	a4,-1(a5)
   15eec:	fa0708e3          	beqz	a4,15e9c <_ldtoa_r+0x8a0>
   15ef0:	0017c703          	lbu	a4,1(a5)
   15ef4:	00178793          	addi	a5,a5,1
   15ef8:	fee78fa3          	sb	a4,-1(a5)
   15efc:	fe0712e3          	bnez	a4,15ee0 <_ldtoa_r+0x8e4>
   15f00:	f9dff06f          	j	15e9c <_ldtoa_r+0x8a0>
   15f04:	00090413          	mv	s0,s2
   15f08:	00c0006f          	j	15f14 <_ldtoa_r+0x918>
   15f0c:	0007c703          	lbu	a4,0(a5)
   15f10:	00068413          	mv	s0,a3
   15f14:	00e40023          	sb	a4,0(s0)
   15f18:	00140693          	addi	a3,s0,1
   15f1c:	00178793          	addi	a5,a5,1
   15f20:	fe0716e3          	bnez	a4,15f0c <_ldtoa_r+0x910>
   15f24:	00200793          	li	a5,2
   15f28:	fff44703          	lbu	a4,-1(s0)
   15f2c:	12fb8463          	beq	s7,a5,16054 <_ldtoa_r+0xa58>
   15f30:	00813783          	ld	a5,8(sp)
   15f34:	0007869b          	sext.w	a3,a5
   15f38:	0097d463          	bge	a5,s1,15f40 <_ldtoa_r+0x944>
   15f3c:	0004869b          	sext.w	a3,s1
   15f40:	03000793          	li	a5,48
   15f44:	02f71663          	bne	a4,a5,15f70 <_ldtoa_r+0x974>
   15f48:	412407b3          	sub	a5,s0,s2
   15f4c:	02f6d263          	bge	a3,a5,15f70 <_ldtoa_r+0x974>
   15f50:	03000613          	li	a2,48
   15f54:	0080006f          	j	15f5c <_ldtoa_r+0x960>
   15f58:	00e6dc63          	bge	a3,a4,15f70 <_ldtoa_r+0x974>
   15f5c:	fff40413          	addi	s0,s0,-1
   15f60:	fff44783          	lbu	a5,-1(s0)
   15f64:	00040023          	sb	zero,0(s0)
   15f68:	41240733          	sub	a4,s0,s2
   15f6c:	fec786e3          	beq	a5,a2,15f58 <_ldtoa_r+0x95c>
   15f70:	00300793          	li	a5,3
   15f74:	0afb8263          	beq	s7,a5,16018 <_ldtoa_r+0xa1c>
   15f78:	01013783          	ld	a5,16(sp)
   15f7c:	060b2423          	sw	zero,104(s6)
   15f80:	00978a1b          	addiw	s4,a5,9
   15f84:	01f00793          	li	a5,31
   15f88:	0d47f263          	bgeu	a5,s4,1604c <_ldtoa_r+0xa50>
   15f8c:	00100713          	li	a4,1
   15f90:	00400793          	li	a5,4
   15f94:	0017979b          	slliw	a5,a5,0x1
   15f98:	01c78693          	addi	a3,a5,28
   15f9c:	0007059b          	sext.w	a1,a4
   15fa0:	0017071b          	addiw	a4,a4,1
   15fa4:	feda78e3          	bgeu	s4,a3,15f94 <_ldtoa_r+0x998>
   15fa8:	06bb2423          	sw	a1,104(s6)
   15fac:	000b0513          	mv	a0,s6
   15fb0:	624010ef          	jal	ra,175d4 <_Balloc>
   15fb4:	06ab3023          	sd	a0,96(s6)
   15fb8:	00090593          	mv	a1,s2
   15fbc:	00050493          	mv	s1,a0
   15fc0:	40d020ef          	jal	ra,18bcc <strcpy>
   15fc4:	03013783          	ld	a5,48(sp)
   15fc8:	00078863          	beqz	a5,15fd8 <_ldtoa_r+0x9dc>
   15fcc:	41240433          	sub	s0,s0,s2
   15fd0:	00848433          	add	s0,s1,s0
   15fd4:	0087b023          	sd	s0,0(a5)
   15fd8:	25813083          	ld	ra,600(sp)
   15fdc:	25013403          	ld	s0,592(sp)
   15fe0:	00048513          	mv	a0,s1
   15fe4:	24013903          	ld	s2,576(sp)
   15fe8:	24813483          	ld	s1,584(sp)
   15fec:	23813983          	ld	s3,568(sp)
   15ff0:	23013a03          	ld	s4,560(sp)
   15ff4:	22813a83          	ld	s5,552(sp)
   15ff8:	22013b03          	ld	s6,544(sp)
   15ffc:	21813b83          	ld	s7,536(sp)
   16000:	21013c03          	ld	s8,528(sp)
   16004:	20813c83          	ld	s9,520(sp)
   16008:	20013d03          	ld	s10,512(sp)
   1600c:	1f813d83          	ld	s11,504(sp)
   16010:	26010113          	addi	sp,sp,608
   16014:	00008067          	ret
   16018:	00813783          	ld	a5,8(sp)
   1601c:	009784bb          	addw	s1,a5,s1
   16020:	4e04c063          	bltz	s1,16500 <_ldtoa_r+0xf04>
   16024:	01813783          	ld	a5,24(sp)
   16028:	01013703          	ld	a4,16(sp)
   1602c:	0007a783          	lw	a5,0(a5)
   16030:	00e787bb          	addw	a5,a5,a4
   16034:	00f13823          	sd	a5,16(sp)
   16038:	01013783          	ld	a5,16(sp)
   1603c:	060b2423          	sw	zero,104(s6)
   16040:	00378a1b          	addiw	s4,a5,3
   16044:	01f00793          	li	a5,31
   16048:	f547e2e3          	bltu	a5,s4,15f8c <_ldtoa_r+0x990>
   1604c:	00000593          	li	a1,0
   16050:	f5dff06f          	j	15fac <_ldtoa_r+0x9b0>
   16054:	03000793          	li	a5,48
   16058:	f2f710e3          	bne	a4,a5,15f78 <_ldtoa_r+0x97c>
   1605c:	412407b3          	sub	a5,s0,s2
   16060:	00100693          	li	a3,1
   16064:	eef6c6e3          	blt	a3,a5,15f50 <_ldtoa_r+0x954>
   16068:	f11ff06f          	j	15f78 <_ldtoa_r+0x97c>
   1606c:	01013783          	ld	a5,16(sp)
   16070:	02a00713          	li	a4,42
   16074:	00078c13          	mv	s8,a5
   16078:	00f75463          	bge	a4,a5,16080 <_ldtoa_r+0xa84>
   1607c:	02a00c13          	li	s8,42
   16080:	000c079b          	sext.w	a5,s8
   16084:	00f13423          	sd	a5,8(sp)
   16088:	e34ff06f          	j	156bc <_ldtoa_r+0xc0>
   1608c:	01813703          	ld	a4,24(sp)
   16090:	000027b7          	lui	a5,0x2
   16094:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   16098:	00f72023          	sw	a5,0(a4)
   1609c:	e21ff06f          	j	15ebc <_ldtoa_r+0x8c0>
   160a0:	0e010a93          	addi	s5,sp,224
   160a4:	000a8713          	mv	a4,s5
   160a8:	0a010793          	addi	a5,sp,160
   160ac:	0b410613          	addi	a2,sp,180
   160b0:	00278793          	addi	a5,a5,2
   160b4:	ffe7d683          	lhu	a3,-2(a5)
   160b8:	00270713          	addi	a4,a4,2
   160bc:	fed71f23          	sh	a3,-2(a4)
   160c0:	fec798e3          	bne	a5,a2,160b0 <_ldtoa_r+0xab4>
   160c4:	000047b7          	lui	a5,0x4
   160c8:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   160cc:	0ef11923          	sh	a5,242(sp)
   160d0:	000087b7          	lui	a5,0x8
   160d4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   160d8:	02f13c23          	sd	a5,56(sp)
   160dc:	ffffc7b7          	lui	a5,0xffffc
   160e0:	0027879b          	addiw	a5,a5,2
   160e4:	01000d13          	li	s10,16
   160e8:	00000493          	li	s1,0
   160ec:	0000bc17          	auipc	s8,0xb
   160f0:	424c0c13          	addi	s8,s8,1060 # 21510 <etens+0xa0>
   160f4:	16010913          	addi	s2,sp,352
   160f8:	1a010993          	addi	s3,sp,416
   160fc:	10010413          	addi	s0,sp,256
   16100:	0d210a13          	addi	s4,sp,210
   16104:	04f12223          	sw	a5,68(sp)
   16108:	07a10c93          	addi	s9,sp,122
   1610c:	00098693          	mv	a3,s3
   16110:	0c010613          	addi	a2,sp,192
   16114:	000a8593          	mv	a1,s5
   16118:	000c0513          	mv	a0,s8
   1611c:	e91fe0ef          	jal	ra,14fac <ediv>
   16120:	06810713          	addi	a4,sp,104
   16124:	0c010793          	addi	a5,sp,192
   16128:	00278793          	addi	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd8dfa>
   1612c:	ffe7d683          	lhu	a3,-2(a5)
   16130:	00270713          	addi	a4,a4,2
   16134:	fed71f23          	sh	a3,-2(a4)
   16138:	ffb798e3          	bne	a5,s11,16128 <_ldtoa_r+0xb2c>
   1613c:	03813783          	ld	a5,56(sp)
   16140:	07a15503          	lhu	a0,122(sp)
   16144:	00f57833          	and	a6,a0,a5
   16148:	04412783          	lw	a5,68(sp)
   1614c:	00f807bb          	addw	a5,a6,a5
   16150:	00078893          	mv	a7,a5
   16154:	3cf05063          	blez	a5,16514 <_ldtoa_r+0xf18>
   16158:	09000593          	li	a1,144
   1615c:	40f5883b          	subw	a6,a1,a5
   16160:	00080593          	mv	a1,a6
   16164:	00040713          	mv	a4,s0
   16168:	06810793          	addi	a5,sp,104
   1616c:	07c10613          	addi	a2,sp,124
   16170:	00278793          	addi	a5,a5,2
   16174:	ffe7d683          	lhu	a3,-2(a5)
   16178:	00270713          	addi	a4,a4,2
   1617c:	fed71f23          	sh	a3,-2(a4)
   16180:	fec798e3          	bne	a5,a2,16170 <_ldtoa_r+0xb74>
   16184:	07005e63          	blez	a6,16200 <_ldtoa_r+0xc04>
   16188:	00f00793          	li	a5,15
   1618c:	00040713          	mv	a4,s0
   16190:	0507d063          	bge	a5,a6,161d0 <_ldtoa_r+0xbd4>
   16194:	ff05859b          	addiw	a1,a1,-16
   16198:	0045d59b          	srliw	a1,a1,0x4
   1619c:	02059713          	slli	a4,a1,0x20
   161a0:	02075713          	srli	a4,a4,0x20
   161a4:	00170713          	addi	a4,a4,1
   161a8:	00171713          	slli	a4,a4,0x1
   161ac:	00e40733          	add	a4,s0,a4
   161b0:	00040793          	mv	a5,s0
   161b4:	00278793          	addi	a5,a5,2
   161b8:	fe079f23          	sh	zero,-2(a5)
   161bc:	fee79ce3          	bne	a5,a4,161b4 <_ldtoa_r+0xbb8>
   161c0:	08000813          	li	a6,128
   161c4:	4118083b          	subw	a6,a6,a7
   161c8:	0045959b          	slliw	a1,a1,0x4
   161cc:	40b8083b          	subw	a6,a6,a1
   161d0:	00181593          	slli	a1,a6,0x1
   161d4:	0000b817          	auipc	a6,0xb
   161d8:	26c80813          	addi	a6,a6,620 # 21440 <ezero>
   161dc:	00b805b3          	add	a1,a6,a1
   161e0:	00075783          	lhu	a5,0(a4)
   161e4:	2405d683          	lhu	a3,576(a1)
   161e8:	00d7f7b3          	and	a5,a5,a3
   161ec:	00f71023          	sh	a5,0(a4)
   161f0:	0105151b          	slliw	a0,a0,0x10
   161f4:	4105551b          	sraiw	a0,a0,0x10
   161f8:	02051793          	slli	a5,a0,0x20
   161fc:	1607c063          	bltz	a5,1635c <_ldtoa_r+0xd60>
   16200:	0c010793          	addi	a5,sp,192
   16204:	00040713          	mv	a4,s0
   16208:	0007d603          	lhu	a2,0(a5)
   1620c:	00075683          	lhu	a3,0(a4)
   16210:	00278793          	addi	a5,a5,2
   16214:	00270713          	addi	a4,a4,2
   16218:	02d61463          	bne	a2,a3,16240 <_ldtoa_r+0xc44>
   1621c:	fefa16e3          	bne	s4,a5,16208 <_ldtoa_r+0xc0c>
   16220:	000a8713          	mv	a4,s5
   16224:	0c010793          	addi	a5,sp,192
   16228:	00278793          	addi	a5,a5,2
   1622c:	ffe7d683          	lhu	a3,-2(a5)
   16230:	00270713          	addi	a4,a4,2
   16234:	fed71f23          	sh	a3,-2(a4)
   16238:	ffb798e3          	bne	a5,s11,16228 <_ldtoa_r+0xc2c>
   1623c:	009d04bb          	addw	s1,s10,s1
   16240:	014c0c13          	addi	s8,s8,20
   16244:	0000b797          	auipc	a5,0xb
   16248:	33078793          	addi	a5,a5,816 # 21574 <etens+0x104>
   1624c:	001d5d13          	srli	s10,s10,0x1
   16250:	eafc1ee3          	bne	s8,a5,1610c <_ldtoa_r+0xb10>
   16254:	0f215783          	lhu	a5,242(sp)
   16258:	0b215703          	lhu	a4,178(sp)
   1625c:	0f410613          	addi	a2,sp,244
   16260:	00e787bb          	addw	a5,a5,a4
   16264:	ffffc737          	lui	a4,0xffffc
   16268:	f727071b          	addiw	a4,a4,-142
   1626c:	00e787bb          	addw	a5,a5,a4
   16270:	0ef11923          	sh	a5,242(sp)
   16274:	0a010713          	addi	a4,sp,160
   16278:	000a8793          	mv	a5,s5
   1627c:	00278793          	addi	a5,a5,2
   16280:	ffe7d683          	lhu	a3,-2(a5)
   16284:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd8dfa>
   16288:	fed71f23          	sh	a3,-2(a4)
   1628c:	fec798e3          	bne	a5,a2,1627c <_ldtoa_r+0xc80>
   16290:	00000693          	li	a3,0
   16294:	0c010793          	addi	a5,sp,192
   16298:	0000b717          	auipc	a4,0xb
   1629c:	1c070713          	addi	a4,a4,448 # 21458 <eone>
   162a0:	0080006f          	j	162a8 <_ldtoa_r+0xcac>
   162a4:	00075683          	lhu	a3,0(a4)
   162a8:	00278793          	addi	a5,a5,2
   162ac:	fed79f23          	sh	a3,-2(a5)
   162b0:	00270713          	addi	a4,a4,2
   162b4:	ffb798e3          	bne	a5,s11,162a4 <_ldtoa_r+0xca8>
   162b8:	00001d37          	lui	s10,0x1
   162bc:	0000bc97          	auipc	s9,0xb
   162c0:	1b4c8c93          	addi	s9,s9,436 # 21470 <etens>
   162c4:	0000bd97          	auipc	s11,0xb
   162c8:	29cd8d93          	addi	s11,s11,668 # 21560 <etens+0xf0>
   162cc:	0100006f          	j	162dc <_ldtoa_r+0xce0>
   162d0:	001d5d13          	srli	s10,s10,0x1
   162d4:	2dbc8663          	beq	s9,s11,165a0 <_ldtoa_r+0xfa4>
   162d8:	014c8c93          	addi	s9,s9,20
   162dc:	000a8593          	mv	a1,s5
   162e0:	000d8513          	mv	a0,s11
   162e4:	e2dfd0ef          	jal	ra,14110 <ecmp>
   162e8:	000a8593          	mv	a1,s5
   162ec:	2aa04a63          	bgtz	a0,165a0 <_ldtoa_r+0xfa4>
   162f0:	000c8513          	mv	a0,s9
   162f4:	e1dfd0ef          	jal	ra,14110 <ecmp>
   162f8:	fca04ce3          	bgtz	a0,162d0 <_ldtoa_r+0xcd4>
   162fc:	00098693          	mv	a3,s3
   16300:	000a8613          	mv	a2,s5
   16304:	000a8593          	mv	a1,s5
   16308:	000c8513          	mv	a0,s9
   1630c:	ca1fe0ef          	jal	ra,14fac <ediv>
   16310:	0c010613          	addi	a2,sp,192
   16314:	00098693          	mv	a3,s3
   16318:	00060593          	mv	a1,a2
   1631c:	000c8513          	mv	a0,s9
   16320:	885fe0ef          	jal	ra,14ba4 <emul>
   16324:	009d04bb          	addw	s1,s10,s1
   16328:	fa9ff06f          	j	162d0 <_ldtoa_r+0xcd4>
   1632c:	1ec15783          	lhu	a5,492(sp)
   16330:	16210c93          	addi	s9,sp,354
   16334:	16310993          	addi	s3,sp,355
   16338:	a61ff06f          	j	15d98 <_ldtoa_r+0x79c>
   1633c:	16010913          	addi	s2,sp,352
   16340:	0000b597          	auipc	a1,0xb
   16344:	36858593          	addi	a1,a1,872 # 216a8 <bmask+0x28>
   16348:	00090513          	mv	a0,s2
   1634c:	000024b7          	lui	s1,0x2
   16350:	578020ef          	jal	ra,188c8 <sprintf>
   16354:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16358:	ad9ff06f          	j	15e30 <_ldtoa_r+0x834>
   1635c:	06810793          	addi	a5,sp,104
   16360:	00040713          	mv	a4,s0
   16364:	0080006f          	j	1636c <_ldtoa_r+0xd70>
   16368:	e8fc8ce3          	beq	s9,a5,16200 <_ldtoa_r+0xc04>
   1636c:	0007d603          	lhu	a2,0(a5)
   16370:	00075683          	lhu	a3,0(a4)
   16374:	00278793          	addi	a5,a5,2
   16378:	00270713          	addi	a4,a4,2
   1637c:	fed606e3          	beq	a2,a3,16368 <_ldtoa_r+0xd6c>
   16380:	11215783          	lhu	a5,274(sp)
   16384:	03813703          	ld	a4,56(sp)
   16388:	00f777b3          	and	a5,a4,a5
   1638c:	00e79e63          	bne	a5,a4,163a8 <_ldtoa_r+0xdac>
   16390:	00040513          	mv	a0,s0
   16394:	be1fd0ef          	jal	ra,13f74 <eisnan.part.0>
   16398:	e60514e3          	bnez	a0,16200 <_ldtoa_r+0xc04>
   1639c:	00040513          	mv	a0,s0
   163a0:	e8dfd0ef          	jal	ra,1422c <eisinf.part.1>
   163a4:	e4051ee3          	bnez	a0,16200 <_ldtoa_r+0xc04>
   163a8:	12010593          	addi	a1,sp,288
   163ac:	0000b517          	auipc	a0,0xb
   163b0:	0ac50513          	addi	a0,a0,172 # 21458 <eone>
   163b4:	c71fd0ef          	jal	ra,14024 <emovi>
   163b8:	14010593          	addi	a1,sp,320
   163bc:	00040513          	mv	a0,s0
   163c0:	c65fd0ef          	jal	ra,14024 <emovi>
   163c4:	12015503          	lhu	a0,288(sp)
   163c8:	14215803          	lhu	a6,322(sp)
   163cc:	12215883          	lhu	a7,290(sp)
   163d0:	fff54513          	not	a0,a0
   163d4:	03051513          	slli	a0,a0,0x30
   163d8:	03055513          	srli	a0,a0,0x30
   163dc:	12a11023          	sh	a0,288(sp)
   163e0:	410885b3          	sub	a1,a7,a6
   163e4:	00080693          	mv	a3,a6
   163e8:	06b05e63          	blez	a1,16464 <_ldtoa_r+0xe68>
   163ec:	00090713          	mv	a4,s2
   163f0:	14010793          	addi	a5,sp,320
   163f4:	15810613          	addi	a2,sp,344
   163f8:	00278793          	addi	a5,a5,2
   163fc:	ffe7d683          	lhu	a3,-2(a5)
   16400:	00270713          	addi	a4,a4,2
   16404:	fed71f23          	sh	a3,-2(a4)
   16408:	fec798e3          	bne	a5,a2,163f8 <_ldtoa_r+0xdfc>
   1640c:	16011c23          	sh	zero,376(sp)
   16410:	14010793          	addi	a5,sp,320
   16414:	12010713          	addi	a4,sp,288
   16418:	0080006f          	j	16420 <_ldtoa_r+0xe24>
   1641c:	00075503          	lhu	a0,0(a4)
   16420:	00278793          	addi	a5,a5,2
   16424:	fea79f23          	sh	a0,-2(a5)
   16428:	00270713          	addi	a4,a4,2
   1642c:	fec798e3          	bne	a5,a2,1641c <_ldtoa_r+0xe20>
   16430:	14011c23          	sh	zero,344(sp)
   16434:	12010713          	addi	a4,sp,288
   16438:	00090793          	mv	a5,s2
   1643c:	17810593          	addi	a1,sp,376
   16440:	00278793          	addi	a5,a5,2
   16444:	ffe7d683          	lhu	a3,-2(a5)
   16448:	00270713          	addi	a4,a4,2
   1644c:	fed71f23          	sh	a3,-2(a4)
   16450:	feb798e3          	bne	a5,a1,16440 <_ldtoa_r+0xe44>
   16454:	14215683          	lhu	a3,322(sp)
   16458:	411805b3          	sub	a1,a6,a7
   1645c:	12011c23          	sh	zero,312(sp)
   16460:	00068813          	mv	a6,a3
   16464:	30058c63          	beqz	a1,1677c <_ldtoa_r+0x1180>
   16468:	04d13423          	sd	a3,72(sp)
   1646c:	f6f00793          	li	a5,-145
   16470:	06f5ca63          	blt	a1,a5,164e4 <_ldtoa_r+0xee8>
   16474:	0005859b          	sext.w	a1,a1
   16478:	12010513          	addi	a0,sp,288
   1647c:	dcdfd0ef          	jal	ra,14248 <eshift.part.3>
   16480:	04813683          	ld	a3,72(sp)
   16484:	00050593          	mv	a1,a0
   16488:	15810613          	addi	a2,sp,344
   1648c:	13810813          	addi	a6,sp,312
   16490:	12015703          	lhu	a4,288(sp)
   16494:	14015783          	lhu	a5,320(sp)
   16498:	34f70063          	beq	a4,a5,167d8 <_ldtoa_r+0x11dc>
   1649c:	00000793          	li	a5,0
   164a0:	00078713          	mv	a4,a5
   164a4:	00065783          	lhu	a5,0(a2) # 8000 <register_fini-0x80b0>
   164a8:	00085503          	lhu	a0,0(a6)
   164ac:	ffe60613          	addi	a2,a2,-2
   164b0:	40e787b3          	sub	a5,a5,a4
   164b4:	40a787b3          	sub	a5,a5,a0
   164b8:	00f61123          	sh	a5,2(a2)
   164bc:	0107d793          	srli	a5,a5,0x10
   164c0:	0017f713          	andi	a4,a5,1
   164c4:	14210793          	addi	a5,sp,322
   164c8:	ffe80813          	addi	a6,a6,-2
   164cc:	fcf61ce3          	bne	a2,a5,164a4 <_ldtoa_r+0xea8>
   164d0:	00100613          	li	a2,1
   164d4:	00098793          	mv	a5,s3
   164d8:	04000713          	li	a4,64
   164dc:	14010513          	addi	a0,sp,320
   164e0:	898fe0ef          	jal	ra,14578 <emdnorm>
   164e4:	00040593          	mv	a1,s0
   164e8:	14010513          	addi	a0,sp,320
   164ec:	e08fe0ef          	jal	ra,14af4 <emovo.isra.6>
   164f0:	d11ff06f          	j	16200 <_ldtoa_r+0xc04>
   164f4:	01013783          	ld	a5,16(sp)
   164f8:	fff7879b          	addiw	a5,a5,-1
   164fc:	b75ff06f          	j	16070 <_ldtoa_r+0xa74>
   16500:	01813783          	ld	a5,24(sp)
   16504:	16010023          	sb	zero,352(sp)
   16508:	00090413          	mv	s0,s2
   1650c:	0007a023          	sw	zero,0(a5)
   16510:	b29ff06f          	j	16038 <_ldtoa_r+0xa3c>
   16514:	00040793          	mv	a5,s0
   16518:	11410713          	addi	a4,sp,276
   1651c:	00278793          	addi	a5,a5,2
   16520:	fe079f23          	sh	zero,-2(a5)
   16524:	fee79ce3          	bne	a5,a4,1651c <_ldtoa_r+0xf20>
   16528:	cc9ff06f          	j	161f0 <_ldtoa_r+0xbf4>
   1652c:	02013783          	ld	a5,32(sp)
   16530:	16010913          	addi	s2,sp,352
   16534:	0e078c63          	beqz	a5,1662c <_ldtoa_r+0x1030>
   16538:	0000b597          	auipc	a1,0xb
   1653c:	17858593          	addi	a1,a1,376 # 216b0 <bmask+0x30>
   16540:	00090513          	mv	a0,s2
   16544:	000024b7          	lui	s1,0x2
   16548:	380020ef          	jal	ra,188c8 <sprintf>
   1654c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16550:	8e1ff06f          	j	15e30 <_ldtoa_r+0x834>
   16554:	03100793          	li	a5,49
   16558:	16f100a3          	sb	a5,353(sp)
   1655c:	02e00793          	li	a5,46
   16560:	16f10123          	sb	a5,354(sp)
   16564:	0014849b          	addiw	s1,s1,1
   16568:	02900413          	li	s0,41
   1656c:	03000793          	li	a5,48
   16570:	16f101a3          	sb	a5,355(sp)
   16574:	16410c93          	addi	s9,sp,356
   16578:	e3cff06f          	j	15bb4 <_ldtoa_r+0x5b8>
   1657c:	03100793          	li	a5,49
   16580:	16f100a3          	sb	a5,353(sp)
   16584:	02e00793          	li	a5,46
   16588:	16f10123          	sb	a5,354(sp)
   1658c:	0014849b          	addiw	s1,s1,1
   16590:	1e804263          	bgtz	s0,16774 <_ldtoa_r+0x1178>
   16594:	16310c93          	addi	s9,sp,355
   16598:	880412e3          	bnez	s0,15e1c <_ldtoa_r+0x820>
   1659c:	e18ff06f          	j	15bb4 <_ldtoa_r+0x5b8>
   165a0:	11810a13          	addi	s4,sp,280
   165a4:	b58ff06f          	j	158fc <_ldtoa_r+0x300>
   165a8:	03100793          	li	a5,49
   165ac:	fef98f23          	sb	a5,-2(s3)
   165b0:	0014849b          	addiw	s1,s1,1
   165b4:	869ff06f          	j	15e1c <_ldtoa_r+0x820>
   165b8:	16010913          	addi	s2,sp,352
   165bc:	0000b597          	auipc	a1,0xb
   165c0:	11458593          	addi	a1,a1,276 # 216d0 <bmask+0x50>
   165c4:	00090513          	mv	a0,s2
   165c8:	000024b7          	lui	s1,0x2
   165cc:	2fc020ef          	jal	ra,188c8 <sprintf>
   165d0:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   165d4:	85dff06f          	j	15e30 <_ldtoa_r+0x834>
   165d8:	0c010593          	addi	a1,sp,192
   165dc:	0a010513          	addi	a0,sp,160
   165e0:	d14fe0ef          	jal	ra,14af4 <emovo.isra.6>
   165e4:	0000b597          	auipc	a1,0xb
   165e8:	e5c58593          	addi	a1,a1,-420 # 21440 <ezero>
   165ec:	0c010513          	addi	a0,sp,192
   165f0:	b21fd0ef          	jal	ra,14110 <ecmp>
   165f4:	fa051a63          	bnez	a0,15da8 <_ldtoa_r+0x7ac>
   165f8:	820442e3          	bltz	s0,15e1c <_ldtoa_r+0x820>
   165fc:	ffe9c783          	lbu	a5,-2(s3)
   16600:	fd278713          	addi	a4,a5,-46
   16604:	00173713          	seqz	a4,a4
   16608:	fff74713          	not	a4,a4
   1660c:	00ec8733          	add	a4,s9,a4
   16610:	00074703          	lbu	a4,0(a4)
   16614:	00177713          	andi	a4,a4,1
   16618:	800702e3          	beqz	a4,15e1c <_ldtoa_r+0x820>
   1661c:	07f7f793          	andi	a5,a5,127
   16620:	ffe98713          	addi	a4,s3,-2
   16624:	0007881b          	sext.w	a6,a5
   16628:	f94ff06f          	j	15dbc <_ldtoa_r+0x7c0>
   1662c:	0000b597          	auipc	a1,0xb
   16630:	09458593          	addi	a1,a1,148 # 216c0 <bmask+0x40>
   16634:	00090513          	mv	a0,s2
   16638:	000024b7          	lui	s1,0x2
   1663c:	28c020ef          	jal	ra,188c8 <sprintf>
   16640:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16644:	fecff06f          	j	15e30 <_ldtoa_r+0x834>
   16648:	0017879b          	addiw	a5,a5,1
   1664c:	fef70fa3          	sb	a5,-1(a4)
   16650:	fccff06f          	j	15e1c <_ldtoa_r+0x820>
   16654:	10010413          	addi	s0,sp,256
   16658:	00040593          	mv	a1,s0
   1665c:	0a010513          	addi	a0,sp,160
   16660:	00004ab7          	lui	s5,0x4
   16664:	9c1fd0ef          	jal	ra,14024 <emovi>
   16668:	00000493          	li	s1,0
   1666c:	11810a13          	addi	s4,sp,280
   16670:	0f810913          	addi	s2,sp,248
   16674:	10210993          	addi	s3,sp,258
   16678:	ffea8a93          	addi	s5,s5,-2 # 3ffe <register_fini-0xc0b2>
   1667c:	fd500c93          	li	s9,-43
   16680:	11815783          	lhu	a5,280(sp)
   16684:	0077f793          	andi	a5,a5,7
   16688:	0c079863          	bnez	a5,16758 <_ldtoa_r+0x115c>
   1668c:	0e010713          	addi	a4,sp,224
   16690:	00040793          	mv	a5,s0
   16694:	00278793          	addi	a5,a5,2
   16698:	ffe7d683          	lhu	a3,-2(a5)
   1669c:	00270713          	addi	a4,a4,2
   166a0:	fed71f23          	sh	a3,-2(a4)
   166a4:	ff4798e3          	bne	a5,s4,16694 <_ldtoa_r+0x1098>
   166a8:	0e010513          	addi	a0,sp,224
   166ac:	0e011c23          	sh	zero,248(sp)
   166b0:	f08fd0ef          	jal	ra,13db8 <eshdn1>
   166b4:	0e010513          	addi	a0,sp,224
   166b8:	f00fd0ef          	jal	ra,13db8 <eshdn1>
   166bc:	00000613          	li	a2,0
   166c0:	00090693          	mv	a3,s2
   166c4:	000a0713          	mv	a4,s4
   166c8:	0006d583          	lhu	a1,0(a3)
   166cc:	00075783          	lhu	a5,0(a4)
   166d0:	ffe68693          	addi	a3,a3,-2
   166d4:	ffe70713          	addi	a4,a4,-2
   166d8:	00b787b3          	add	a5,a5,a1
   166dc:	00c787b3          	add	a5,a5,a2
   166e0:	00f69123          	sh	a5,2(a3)
   166e4:	0107d793          	srli	a5,a5,0x10
   166e8:	0017f613          	andi	a2,a5,1
   166ec:	fd371ee3          	bne	a4,s3,166c8 <_ldtoa_r+0x10cc>
   166f0:	0e215783          	lhu	a5,226(sp)
   166f4:	0e415703          	lhu	a4,228(sp)
   166f8:	0037879b          	addiw	a5,a5,3
   166fc:	0ef11123          	sh	a5,226(sp)
   16700:	02070063          	beqz	a4,16720 <_ldtoa_r+0x1124>
   16704:	0e010513          	addi	a0,sp,224
   16708:	eb0fd0ef          	jal	ra,13db8 <eshdn1>
   1670c:	0e215783          	lhu	a5,226(sp)
   16710:	0e415703          	lhu	a4,228(sp)
   16714:	0017879b          	addiw	a5,a5,1
   16718:	0ef11123          	sh	a5,226(sp)
   1671c:	fe0714e3          	bnez	a4,16704 <_ldtoa_r+0x1108>
   16720:	0f815783          	lhu	a5,248(sp)
   16724:	02079a63          	bnez	a5,16758 <_ldtoa_r+0x115c>
   16728:	0e215783          	lhu	a5,226(sp)
   1672c:	02fae663          	bltu	s5,a5,16758 <_ldtoa_r+0x115c>
   16730:	00040713          	mv	a4,s0
   16734:	0e010793          	addi	a5,sp,224
   16738:	00278793          	addi	a5,a5,2
   1673c:	ffe7d683          	lhu	a3,-2(a5)
   16740:	00270713          	addi	a4,a4,2
   16744:	fed71f23          	sh	a3,-2(a4)
   16748:	ff2798e3          	bne	a5,s2,16738 <_ldtoa_r+0x113c>
   1674c:	10011c23          	sh	zero,280(sp)
   16750:	fff4849b          	addiw	s1,s1,-1
   16754:	f39496e3          	bne	s1,s9,16680 <_ldtoa_r+0x1084>
   16758:	0a010593          	addi	a1,sp,160
   1675c:	00040513          	mv	a0,s0
   16760:	b94fe0ef          	jal	ra,14af4 <emovo.isra.6>
   16764:	1a010993          	addi	s3,sp,416
   16768:	874ff06f          	j	157dc <_ldtoa_r+0x1e0>
   1676c:	00090793          	mv	a5,s2
   16770:	f48ff06f          	j	15eb8 <_ldtoa_r+0x8bc>
   16774:	fff4041b          	addiw	s0,s0,-1
   16778:	df5ff06f          	j	1656c <_ldtoa_r+0xf70>
   1677c:	14410713          	addi	a4,sp,324
   16780:	12410793          	addi	a5,sp,292
   16784:	00278793          	addi	a5,a5,2
   16788:	00270713          	addi	a4,a4,2
   1678c:	ffe7d583          	lhu	a1,-2(a5)
   16790:	ffe75603          	lhu	a2,-2(a4)
   16794:	02c59863          	bne	a1,a2,167c4 <_ldtoa_r+0x11c8>
   16798:	13a10613          	addi	a2,sp,314
   1679c:	fec794e3          	bne	a5,a2,16784 <_ldtoa_r+0x1188>
   167a0:	12015703          	lhu	a4,288(sp)
   167a4:	14015783          	lhu	a5,320(sp)
   167a8:	06f70663          	beq	a4,a5,16814 <_ldtoa_r+0x1218>
   167ac:	00040793          	mv	a5,s0
   167b0:	11410713          	addi	a4,sp,276
   167b4:	00278793          	addi	a5,a5,2
   167b8:	fe079f23          	sh	zero,-2(a5)
   167bc:	fee79ce3          	bne	a5,a4,167b4 <_ldtoa_r+0x11b8>
   167c0:	a41ff06f          	j	16200 <_ldtoa_r+0xc04>
   167c4:	0cb66c63          	bltu	a2,a1,1689c <_ldtoa_r+0x12a0>
   167c8:	00000593          	li	a1,0
   167cc:	15810613          	addi	a2,sp,344
   167d0:	13810813          	addi	a6,sp,312
   167d4:	cbdff06f          	j	16490 <_ldtoa_r+0xe94>
   167d8:	00000713          	li	a4,0
   167dc:	00080793          	mv	a5,a6
   167e0:	12210893          	addi	a7,sp,290
   167e4:	00065803          	lhu	a6,0(a2)
   167e8:	0007d503          	lhu	a0,0(a5)
   167ec:	ffe60613          	addi	a2,a2,-2
   167f0:	ffe78793          	addi	a5,a5,-2
   167f4:	01050533          	add	a0,a0,a6
   167f8:	00e50733          	add	a4,a0,a4
   167fc:	00e61123          	sh	a4,2(a2)
   16800:	01075713          	srli	a4,a4,0x10
   16804:	00177713          	andi	a4,a4,1
   16808:	fd179ee3          	bne	a5,a7,167e4 <_ldtoa_r+0x11e8>
   1680c:	00000613          	li	a2,0
   16810:	cc5ff06f          	j	164d4 <_ldtoa_r+0xed8>
   16814:	00068793          	mv	a5,a3
   16818:	06069463          	bnez	a3,16880 <_ldtoa_r+0x1284>
   1681c:	14611703          	lh	a4,326(sp)
   16820:	06074063          	bltz	a4,16880 <_ldtoa_r+0x1284>
   16824:	15810693          	addi	a3,sp,344
   16828:	0200006f          	j	16848 <_ldtoa_r+0x124c>
   1682c:	00e69023          	sh	a4,0(a3)
   16830:	0017979b          	slliw	a5,a5,0x1
   16834:	03079793          	slli	a5,a5,0x30
   16838:	ffe68693          	addi	a3,a3,-2
   1683c:	14210713          	addi	a4,sp,322
   16840:	0307d793          	srli	a5,a5,0x30
   16844:	cae680e3          	beq	a3,a4,164e4 <_ldtoa_r+0xee8>
   16848:	0006d703          	lhu	a4,0(a3)
   1684c:	0107161b          	slliw	a2,a4,0x10
   16850:	4106561b          	sraiw	a2,a2,0x10
   16854:	02061593          	slli	a1,a2,0x20
   16858:	0017171b          	slliw	a4,a4,0x1
   1685c:	0005d463          	bgez	a1,16864 <_ldtoa_r+0x1268>
   16860:	0017e793          	ori	a5,a5,1
   16864:	03071713          	slli	a4,a4,0x30
   16868:	03075713          	srli	a4,a4,0x30
   1686c:	0027f613          	andi	a2,a5,2
   16870:	00176593          	ori	a1,a4,1
   16874:	fa060ce3          	beqz	a2,1682c <_ldtoa_r+0x1230>
   16878:	00b69023          	sh	a1,0(a3)
   1687c:	fb5ff06f          	j	16830 <_ldtoa_r+0x1234>
   16880:	14410713          	addi	a4,sp,324
   16884:	15810613          	addi	a2,sp,344
   16888:	08079463          	bnez	a5,16910 <_ldtoa_r+0x1314>
   1688c:	08e60463          	beq	a2,a4,16914 <_ldtoa_r+0x1318>
   16890:	00075783          	lhu	a5,0(a4)
   16894:	00270713          	addi	a4,a4,2
   16898:	ff1ff06f          	j	16888 <_ldtoa_r+0x128c>
   1689c:	00090713          	mv	a4,s2
   168a0:	14010793          	addi	a5,sp,320
   168a4:	15810613          	addi	a2,sp,344
   168a8:	00278793          	addi	a5,a5,2
   168ac:	ffe7d583          	lhu	a1,-2(a5)
   168b0:	00270713          	addi	a4,a4,2
   168b4:	feb71f23          	sh	a1,-2(a4)
   168b8:	fec798e3          	bne	a5,a2,168a8 <_ldtoa_r+0x12ac>
   168bc:	16011c23          	sh	zero,376(sp)
   168c0:	14010713          	addi	a4,sp,320
   168c4:	12010793          	addi	a5,sp,288
   168c8:	13810813          	addi	a6,sp,312
   168cc:	00278793          	addi	a5,a5,2
   168d0:	ffe7d583          	lhu	a1,-2(a5)
   168d4:	00270713          	addi	a4,a4,2
   168d8:	feb71f23          	sh	a1,-2(a4)
   168dc:	ff0798e3          	bne	a5,a6,168cc <_ldtoa_r+0x12d0>
   168e0:	14011c23          	sh	zero,344(sp)
   168e4:	12010713          	addi	a4,sp,288
   168e8:	00090793          	mv	a5,s2
   168ec:	17810593          	addi	a1,sp,376
   168f0:	00278793          	addi	a5,a5,2
   168f4:	ffe7d503          	lhu	a0,-2(a5)
   168f8:	00270713          	addi	a4,a4,2
   168fc:	fea71f23          	sh	a0,-2(a4)
   16900:	feb798e3          	bne	a5,a1,168f0 <_ldtoa_r+0x12f4>
   16904:	12011c23          	sh	zero,312(sp)
   16908:	00000593          	li	a1,0
   1690c:	b85ff06f          	j	16490 <_ldtoa_r+0xe94>
   16910:	00168813          	addi	a6,a3,1
   16914:	15011123          	sh	a6,322(sp)
   16918:	bcdff06f          	j	164e4 <_ldtoa_r+0xee8>

000000000001691c <_ldcheck>:
   1691c:	00053703          	ld	a4,0(a0)
   16920:	00853783          	ld	a5,8(a0)
   16924:	fc010113          	addi	sp,sp,-64
   16928:	00010513          	mv	a0,sp
   1692c:	01010593          	addi	a1,sp,16
   16930:	00e13023          	sd	a4,0(sp)
   16934:	00f13423          	sd	a5,8(sp)
   16938:	02113c23          	sd	ra,56(sp)
   1693c:	b79fe0ef          	jal	ra,154b4 <e113toe.isra.8>
   16940:	02215783          	lhu	a5,34(sp)
   16944:	00000513          	li	a0,0
   16948:	fff7c793          	not	a5,a5
   1694c:	03179713          	slli	a4,a5,0x31
   16950:	00071a63          	bnez	a4,16964 <_ldcheck+0x48>
   16954:	01010513          	addi	a0,sp,16
   16958:	e1cfd0ef          	jal	ra,13f74 <eisnan.part.0>
   1695c:	00153513          	seqz	a0,a0
   16960:	00150513          	addi	a0,a0,1
   16964:	03813083          	ld	ra,56(sp)
   16968:	04010113          	addi	sp,sp,64
   1696c:	00008067          	ret

0000000000016970 <__localeconv_l>:
   16970:	10050513          	addi	a0,a0,256
   16974:	00008067          	ret

0000000000016978 <_localeconv_r>:
   16978:	e6018513          	addi	a0,gp,-416 # 22868 <__global_locale+0x100>
   1697c:	00008067          	ret

0000000000016980 <localeconv>:
   16980:	e6018513          	addi	a0,gp,-416 # 22868 <__global_locale+0x100>
   16984:	00008067          	ret

0000000000016988 <_setlocale_r>:
   16988:	04060063          	beqz	a2,169c8 <_setlocale_r+0x40>
   1698c:	ff010113          	addi	sp,sp,-16
   16990:	0000b597          	auipc	a1,0xb
   16994:	d5858593          	addi	a1,a1,-680 # 216e8 <bmask+0x68>
   16998:	00060513          	mv	a0,a2
   1699c:	00813023          	sd	s0,0(sp)
   169a0:	00113423          	sd	ra,8(sp)
   169a4:	00060413          	mv	s0,a2
   169a8:	0f8020ef          	jal	ra,18aa0 <strcmp>
   169ac:	02051463          	bnez	a0,169d4 <_setlocale_r+0x4c>
   169b0:	0000b517          	auipc	a0,0xb
   169b4:	d3050513          	addi	a0,a0,-720 # 216e0 <bmask+0x60>
   169b8:	00813083          	ld	ra,8(sp)
   169bc:	00013403          	ld	s0,0(sp)
   169c0:	01010113          	addi	sp,sp,16
   169c4:	00008067          	ret
   169c8:	0000b517          	auipc	a0,0xb
   169cc:	d1850513          	addi	a0,a0,-744 # 216e0 <bmask+0x60>
   169d0:	00008067          	ret
   169d4:	0000b597          	auipc	a1,0xb
   169d8:	d0c58593          	addi	a1,a1,-756 # 216e0 <bmask+0x60>
   169dc:	00040513          	mv	a0,s0
   169e0:	0c0020ef          	jal	ra,18aa0 <strcmp>
   169e4:	fc0506e3          	beqz	a0,169b0 <_setlocale_r+0x28>
   169e8:	0000b597          	auipc	a1,0xb
   169ec:	a4058593          	addi	a1,a1,-1472 # 21428 <zeroes.4539+0x88>
   169f0:	00040513          	mv	a0,s0
   169f4:	0ac020ef          	jal	ra,18aa0 <strcmp>
   169f8:	fa050ce3          	beqz	a0,169b0 <_setlocale_r+0x28>
   169fc:	00000513          	li	a0,0
   16a00:	fb9ff06f          	j	169b8 <_setlocale_r+0x30>

0000000000016a04 <__locale_mb_cur_max>:
   16a04:	ec01c503          	lbu	a0,-320(gp) # 228c8 <__global_locale+0x160>
   16a08:	00008067          	ret

0000000000016a0c <setlocale>:
   16a0c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   16a10:	00058613          	mv	a2,a1
   16a14:	00050593          	mv	a1,a0
   16a18:	0007b503          	ld	a0,0(a5)
   16a1c:	f6dff06f          	j	16988 <_setlocale_r>

0000000000016a20 <__swhatbuf_r>:
   16a20:	f7010113          	addi	sp,sp,-144
   16a24:	08813023          	sd	s0,128(sp)
   16a28:	00058413          	mv	s0,a1
   16a2c:	01259583          	lh	a1,18(a1)
   16a30:	06913c23          	sd	s1,120(sp)
   16a34:	07213823          	sd	s2,112(sp)
   16a38:	08113423          	sd	ra,136(sp)
   16a3c:	00060493          	mv	s1,a2
   16a40:	00068913          	mv	s2,a3
   16a44:	0405ca63          	bltz	a1,16a98 <__swhatbuf_r+0x78>
   16a48:	00810613          	addi	a2,sp,8
   16a4c:	3e0060ef          	jal	ra,1ce2c <_fstat_r>
   16a50:	04054463          	bltz	a0,16a98 <__swhatbuf_r+0x78>
   16a54:	00c12783          	lw	a5,12(sp)
   16a58:	0000f737          	lui	a4,0xf
   16a5c:	08813083          	ld	ra,136(sp)
   16a60:	00e7f7b3          	and	a5,a5,a4
   16a64:	00002737          	lui	a4,0x2
   16a68:	40e787b3          	sub	a5,a5,a4
   16a6c:	0017b793          	seqz	a5,a5
   16a70:	08013403          	ld	s0,128(sp)
   16a74:	00f92023          	sw	a5,0(s2) # fffffffffffff000 <__BSS_END__+0xfffffffffffdbdf8>
   16a78:	40000793          	li	a5,1024
   16a7c:	00f4b023          	sd	a5,0(s1)
   16a80:	00001537          	lui	a0,0x1
   16a84:	07813483          	ld	s1,120(sp)
   16a88:	07013903          	ld	s2,112(sp)
   16a8c:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   16a90:	09010113          	addi	sp,sp,144
   16a94:	00008067          	ret
   16a98:	01045783          	lhu	a5,16(s0)
   16a9c:	00092023          	sw	zero,0(s2)
   16aa0:	0807f793          	andi	a5,a5,128
   16aa4:	02078463          	beqz	a5,16acc <__swhatbuf_r+0xac>
   16aa8:	08813083          	ld	ra,136(sp)
   16aac:	08013403          	ld	s0,128(sp)
   16ab0:	04000793          	li	a5,64
   16ab4:	00f4b023          	sd	a5,0(s1)
   16ab8:	07013903          	ld	s2,112(sp)
   16abc:	07813483          	ld	s1,120(sp)
   16ac0:	00000513          	li	a0,0
   16ac4:	09010113          	addi	sp,sp,144
   16ac8:	00008067          	ret
   16acc:	08813083          	ld	ra,136(sp)
   16ad0:	08013403          	ld	s0,128(sp)
   16ad4:	40000793          	li	a5,1024
   16ad8:	00f4b023          	sd	a5,0(s1)
   16adc:	07013903          	ld	s2,112(sp)
   16ae0:	07813483          	ld	s1,120(sp)
   16ae4:	00000513          	li	a0,0
   16ae8:	09010113          	addi	sp,sp,144
   16aec:	00008067          	ret

0000000000016af0 <__smakebuf_r>:
   16af0:	0105d703          	lhu	a4,16(a1)
   16af4:	fd010113          	addi	sp,sp,-48
   16af8:	02813023          	sd	s0,32(sp)
   16afc:	02113423          	sd	ra,40(sp)
   16b00:	00913c23          	sd	s1,24(sp)
   16b04:	01213823          	sd	s2,16(sp)
   16b08:	00277713          	andi	a4,a4,2
   16b0c:	00058413          	mv	s0,a1
   16b10:	02070863          	beqz	a4,16b40 <__smakebuf_r+0x50>
   16b14:	07758713          	addi	a4,a1,119
   16b18:	00e5b023          	sd	a4,0(a1)
   16b1c:	00e5bc23          	sd	a4,24(a1)
   16b20:	00100713          	li	a4,1
   16b24:	02e5a023          	sw	a4,32(a1)
   16b28:	02813083          	ld	ra,40(sp)
   16b2c:	02013403          	ld	s0,32(sp)
   16b30:	01813483          	ld	s1,24(sp)
   16b34:	01013903          	ld	s2,16(sp)
   16b38:	03010113          	addi	sp,sp,48
   16b3c:	00008067          	ret
   16b40:	00410693          	addi	a3,sp,4
   16b44:	00810613          	addi	a2,sp,8
   16b48:	00050493          	mv	s1,a0
   16b4c:	ed5ff0ef          	jal	ra,16a20 <__swhatbuf_r>
   16b50:	00813583          	ld	a1,8(sp)
   16b54:	00050913          	mv	s2,a0
   16b58:	00048513          	mv	a0,s1
   16b5c:	0b4000ef          	jal	ra,16c10 <_malloc_r>
   16b60:	01041783          	lh	a5,16(s0)
   16b64:	04050863          	beqz	a0,16bb4 <__smakebuf_r+0xc4>
   16b68:	ffffd697          	auipc	a3,0xffffd
   16b6c:	8b868693          	addi	a3,a3,-1864 # 13420 <_cleanup_r>
   16b70:	04d4bc23          	sd	a3,88(s1)
   16b74:	00813683          	ld	a3,8(sp)
   16b78:	00412703          	lw	a4,4(sp)
   16b7c:	0807e793          	ori	a5,a5,128
   16b80:	00f41823          	sh	a5,16(s0)
   16b84:	00a43023          	sd	a0,0(s0)
   16b88:	00a43c23          	sd	a0,24(s0)
   16b8c:	02d42023          	sw	a3,32(s0)
   16b90:	04071863          	bnez	a4,16be0 <__smakebuf_r+0xf0>
   16b94:	0127e7b3          	or	a5,a5,s2
   16b98:	00f41823          	sh	a5,16(s0)
   16b9c:	02813083          	ld	ra,40(sp)
   16ba0:	02013403          	ld	s0,32(sp)
   16ba4:	01813483          	ld	s1,24(sp)
   16ba8:	01013903          	ld	s2,16(sp)
   16bac:	03010113          	addi	sp,sp,48
   16bb0:	00008067          	ret
   16bb4:	2007f713          	andi	a4,a5,512
   16bb8:	f60718e3          	bnez	a4,16b28 <__smakebuf_r+0x38>
   16bbc:	ffc7f793          	andi	a5,a5,-4
   16bc0:	0027e793          	ori	a5,a5,2
   16bc4:	07740713          	addi	a4,s0,119
   16bc8:	00f41823          	sh	a5,16(s0)
   16bcc:	00100793          	li	a5,1
   16bd0:	00e43023          	sd	a4,0(s0)
   16bd4:	00e43c23          	sd	a4,24(s0)
   16bd8:	02f42023          	sw	a5,32(s0)
   16bdc:	f4dff06f          	j	16b28 <__smakebuf_r+0x38>
   16be0:	01241583          	lh	a1,18(s0)
   16be4:	00048513          	mv	a0,s1
   16be8:	770060ef          	jal	ra,1d358 <_isatty_r>
   16bec:	00051663          	bnez	a0,16bf8 <__smakebuf_r+0x108>
   16bf0:	01041783          	lh	a5,16(s0)
   16bf4:	fa1ff06f          	j	16b94 <__smakebuf_r+0xa4>
   16bf8:	01045783          	lhu	a5,16(s0)
   16bfc:	ffc7f793          	andi	a5,a5,-4
   16c00:	0017e793          	ori	a5,a5,1
   16c04:	0107979b          	slliw	a5,a5,0x10
   16c08:	4107d79b          	sraiw	a5,a5,0x10
   16c0c:	f89ff06f          	j	16b94 <__smakebuf_r+0xa4>

0000000000016c10 <_malloc_r>:
   16c10:	fa010113          	addi	sp,sp,-96
   16c14:	04913423          	sd	s1,72(sp)
   16c18:	05213023          	sd	s2,64(sp)
   16c1c:	04113c23          	sd	ra,88(sp)
   16c20:	04813823          	sd	s0,80(sp)
   16c24:	03313c23          	sd	s3,56(sp)
   16c28:	03413823          	sd	s4,48(sp)
   16c2c:	03513423          	sd	s5,40(sp)
   16c30:	03613023          	sd	s6,32(sp)
   16c34:	01713c23          	sd	s7,24(sp)
   16c38:	01813823          	sd	s8,16(sp)
   16c3c:	01913423          	sd	s9,8(sp)
   16c40:	01758493          	addi	s1,a1,23
   16c44:	02e00793          	li	a5,46
   16c48:	00050913          	mv	s2,a0
   16c4c:	0a97e663          	bltu	a5,s1,16cf8 <_malloc_r+0xe8>
   16c50:	02000793          	li	a5,32
   16c54:	06b7e263          	bltu	a5,a1,16cb8 <_malloc_r+0xa8>
   16c58:	175000ef          	jal	ra,175cc <__malloc_lock>
   16c5c:	02000493          	li	s1,32
   16c60:	05000793          	li	a5,80
   16c64:	00400613          	li	a2,4
   16c68:	0000c997          	auipc	s3,0xc
   16c6c:	ca898993          	addi	s3,s3,-856 # 22910 <__malloc_av_>
   16c70:	00f987b3          	add	a5,s3,a5
   16c74:	0087b403          	ld	s0,8(a5)
   16c78:	ff078713          	addi	a4,a5,-16
   16c7c:	2ae40063          	beq	s0,a4,16f1c <_malloc_r+0x30c>
   16c80:	00843783          	ld	a5,8(s0)
   16c84:	01843683          	ld	a3,24(s0)
   16c88:	01043603          	ld	a2,16(s0)
   16c8c:	ffc7f793          	andi	a5,a5,-4
   16c90:	00f407b3          	add	a5,s0,a5
   16c94:	0087b703          	ld	a4,8(a5)
   16c98:	00d63c23          	sd	a3,24(a2)
   16c9c:	00c6b823          	sd	a2,16(a3)
   16ca0:	00176713          	ori	a4,a4,1
   16ca4:	00090513          	mv	a0,s2
   16ca8:	00e7b423          	sd	a4,8(a5)
   16cac:	125000ef          	jal	ra,175d0 <__malloc_unlock>
   16cb0:	01040513          	addi	a0,s0,16
   16cb4:	0100006f          	j	16cc4 <_malloc_r+0xb4>
   16cb8:	00c00793          	li	a5,12
   16cbc:	00f92023          	sw	a5,0(s2)
   16cc0:	00000513          	li	a0,0
   16cc4:	05813083          	ld	ra,88(sp)
   16cc8:	05013403          	ld	s0,80(sp)
   16ccc:	04813483          	ld	s1,72(sp)
   16cd0:	04013903          	ld	s2,64(sp)
   16cd4:	03813983          	ld	s3,56(sp)
   16cd8:	03013a03          	ld	s4,48(sp)
   16cdc:	02813a83          	ld	s5,40(sp)
   16ce0:	02013b03          	ld	s6,32(sp)
   16ce4:	01813b83          	ld	s7,24(sp)
   16ce8:	01013c03          	ld	s8,16(sp)
   16cec:	00813c83          	ld	s9,8(sp)
   16cf0:	06010113          	addi	sp,sp,96
   16cf4:	00008067          	ret
   16cf8:	800007b7          	lui	a5,0x80000
   16cfc:	ff04f493          	andi	s1,s1,-16
   16d00:	fff7c793          	not	a5,a5
   16d04:	fa97eae3          	bltu	a5,s1,16cb8 <_malloc_r+0xa8>
   16d08:	fab4e8e3          	bltu	s1,a1,16cb8 <_malloc_r+0xa8>
   16d0c:	0c1000ef          	jal	ra,175cc <__malloc_lock>
   16d10:	1f700793          	li	a5,503
   16d14:	4c97f263          	bgeu	a5,s1,171d8 <_malloc_r+0x5c8>
   16d18:	0094d793          	srli	a5,s1,0x9
   16d1c:	36078863          	beqz	a5,1708c <_malloc_r+0x47c>
   16d20:	00400713          	li	a4,4
   16d24:	42f76c63          	bltu	a4,a5,1715c <_malloc_r+0x54c>
   16d28:	0064d513          	srli	a0,s1,0x6
   16d2c:	0005051b          	sext.w	a0,a0
   16d30:	0395061b          	addiw	a2,a0,57
   16d34:	0016169b          	slliw	a3,a2,0x1
   16d38:	0385051b          	addiw	a0,a0,56
   16d3c:	00369693          	slli	a3,a3,0x3
   16d40:	0000c997          	auipc	s3,0xc
   16d44:	bd098993          	addi	s3,s3,-1072 # 22910 <__malloc_av_>
   16d48:	00d986b3          	add	a3,s3,a3
   16d4c:	0086b403          	ld	s0,8(a3)
   16d50:	ff068693          	addi	a3,a3,-16
   16d54:	1c868a63          	beq	a3,s0,16f28 <_malloc_r+0x318>
   16d58:	00843783          	ld	a5,8(s0)
   16d5c:	01f00593          	li	a1,31
   16d60:	ffc7f793          	andi	a5,a5,-4
   16d64:	40978733          	sub	a4,a5,s1
   16d68:	02e5c063          	blt	a1,a4,16d88 <_malloc_r+0x178>
   16d6c:	36075e63          	bgez	a4,170e8 <_malloc_r+0x4d8>
   16d70:	01843403          	ld	s0,24(s0)
   16d74:	1a868a63          	beq	a3,s0,16f28 <_malloc_r+0x318>
   16d78:	00843783          	ld	a5,8(s0)
   16d7c:	ffc7f793          	andi	a5,a5,-4
   16d80:	40978733          	sub	a4,a5,s1
   16d84:	fee5d4e3          	bge	a1,a4,16d6c <_malloc_r+0x15c>
   16d88:	0209b403          	ld	s0,32(s3)
   16d8c:	0000c817          	auipc	a6,0xc
   16d90:	b9480813          	addi	a6,a6,-1132 # 22920 <__malloc_av_+0x10>
   16d94:	00050613          	mv	a2,a0
   16d98:	1b041063          	bne	s0,a6,16f38 <_malloc_r+0x328>
   16d9c:	0089b783          	ld	a5,8(s3)
   16da0:	4026571b          	sraiw	a4,a2,0x2
   16da4:	00100693          	li	a3,1
   16da8:	00e696b3          	sll	a3,a3,a4
   16dac:	20d7fc63          	bgeu	a5,a3,16fc4 <_malloc_r+0x3b4>
   16db0:	0109b403          	ld	s0,16(s3)
   16db4:	00843a03          	ld	s4,8(s0)
   16db8:	ffca7a93          	andi	s5,s4,-4
   16dbc:	009ae863          	bltu	s5,s1,16dcc <_malloc_r+0x1bc>
   16dc0:	409a87b3          	sub	a5,s5,s1
   16dc4:	01f00713          	li	a4,31
   16dc8:	2ef74a63          	blt	a4,a5,170bc <_malloc_r+0x4ac>
   16dcc:	78818793          	addi	a5,gp,1928 # 23190 <__malloc_top_pad>
   16dd0:	76018c13          	addi	s8,gp,1888 # 23168 <__malloc_sbrk_base>
   16dd4:	0007ba03          	ld	s4,0(a5) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdcdf8>
   16dd8:	000c3703          	ld	a4,0(s8)
   16ddc:	fff00793          	li	a5,-1
   16de0:	01540bb3          	add	s7,s0,s5
   16de4:	01448a33          	add	s4,s1,s4
   16de8:	4cf70263          	beq	a4,a5,172ac <_malloc_r+0x69c>
   16dec:	000017b7          	lui	a5,0x1
   16df0:	01f78793          	addi	a5,a5,31 # 101f <register_fini-0xf091>
   16df4:	00fa0a33          	add	s4,s4,a5
   16df8:	fffff7b7          	lui	a5,0xfffff
   16dfc:	00fa7a33          	and	s4,s4,a5
   16e00:	000a0593          	mv	a1,s4
   16e04:	00090513          	mv	a0,s2
   16e08:	135010ef          	jal	ra,1873c <_sbrk_r>
   16e0c:	fff00793          	li	a5,-1
   16e10:	00050b13          	mv	s6,a0
   16e14:	3ef50e63          	beq	a0,a5,17210 <_malloc_r+0x600>
   16e18:	3f756a63          	bltu	a0,s7,1720c <_malloc_r+0x5fc>
   16e1c:	7d018c93          	addi	s9,gp,2000 # 231d8 <__malloc_current_mallinfo>
   16e20:	000ca703          	lw	a4,0(s9)
   16e24:	014707bb          	addw	a5,a4,s4
   16e28:	7cf1a823          	sw	a5,2000(gp) # 231d8 <__malloc_current_mallinfo>
   16e2c:	00078693          	mv	a3,a5
   16e30:	54ab8063          	beq	s7,a0,17370 <_malloc_r+0x760>
   16e34:	000c3703          	ld	a4,0(s8)
   16e38:	fff00793          	li	a5,-1
   16e3c:	54f70863          	beq	a4,a5,1738c <_malloc_r+0x77c>
   16e40:	417b07b3          	sub	a5,s6,s7
   16e44:	00d787bb          	addw	a5,a5,a3
   16e48:	7cf1a823          	sw	a5,2000(gp) # 231d8 <__malloc_current_mallinfo>
   16e4c:	00fb7b93          	andi	s7,s6,15
   16e50:	480b8263          	beqz	s7,172d4 <_malloc_r+0x6c4>
   16e54:	417b0b33          	sub	s6,s6,s7
   16e58:	000017b7          	lui	a5,0x1
   16e5c:	010b0b13          	addi	s6,s6,16
   16e60:	fff78713          	addi	a4,a5,-1 # fff <register_fini-0xf0b1>
   16e64:	014b0c33          	add	s8,s6,s4
   16e68:	01078793          	addi	a5,a5,16
   16e6c:	41778a33          	sub	s4,a5,s7
   16e70:	00ec77b3          	and	a5,s8,a4
   16e74:	40fa0a33          	sub	s4,s4,a5
   16e78:	00ea7a33          	and	s4,s4,a4
   16e7c:	000a0593          	mv	a1,s4
   16e80:	00090513          	mv	a0,s2
   16e84:	0b9010ef          	jal	ra,1873c <_sbrk_r>
   16e88:	fff00793          	li	a5,-1
   16e8c:	56f50263          	beq	a0,a5,173f0 <_malloc_r+0x7e0>
   16e90:	41650533          	sub	a0,a0,s6
   16e94:	000a071b          	sext.w	a4,s4
   16e98:	01450a33          	add	s4,a0,s4
   16e9c:	000ca783          	lw	a5,0(s9)
   16ea0:	0000c697          	auipc	a3,0xc
   16ea4:	a966b023          	sd	s6,-1408(a3) # 22920 <__malloc_av_+0x10>
   16ea8:	001a6a13          	ori	s4,s4,1
   16eac:	00e787bb          	addw	a5,a5,a4
   16eb0:	7cf1a823          	sw	a5,2000(gp) # 231d8 <__malloc_current_mallinfo>
   16eb4:	014b3423          	sd	s4,8(s6)
   16eb8:	4d340e63          	beq	s0,s3,17394 <_malloc_r+0x784>
   16ebc:	01f00613          	li	a2,31
   16ec0:	4d567e63          	bgeu	a2,s5,1739c <_malloc_r+0x78c>
   16ec4:	00843683          	ld	a3,8(s0)
   16ec8:	fe8a8713          	addi	a4,s5,-24
   16ecc:	ff077713          	andi	a4,a4,-16
   16ed0:	0016f693          	andi	a3,a3,1
   16ed4:	00e6e6b3          	or	a3,a3,a4
   16ed8:	00d43423          	sd	a3,8(s0)
   16edc:	00900593          	li	a1,9
   16ee0:	00e406b3          	add	a3,s0,a4
   16ee4:	00b6b423          	sd	a1,8(a3)
   16ee8:	00b6b823          	sd	a1,16(a3)
   16eec:	50e66c63          	bltu	a2,a4,17404 <_malloc_r+0x7f4>
   16ef0:	008b3a03          	ld	s4,8(s6)
   16ef4:	000b0413          	mv	s0,s6
   16ef8:	78018713          	addi	a4,gp,1920 # 23188 <__malloc_max_sbrked_mem>
   16efc:	00073703          	ld	a4,0(a4) # 2000 <register_fini-0xe0b0>
   16f00:	00f77463          	bgeu	a4,a5,16f08 <_malloc_r+0x2f8>
   16f04:	78f1b023          	sd	a5,1920(gp) # 23188 <__malloc_max_sbrked_mem>
   16f08:	77818713          	addi	a4,gp,1912 # 23180 <__malloc_max_total_mem>
   16f0c:	00073703          	ld	a4,0(a4)
   16f10:	30f77463          	bgeu	a4,a5,17218 <_malloc_r+0x608>
   16f14:	76f1bc23          	sd	a5,1912(gp) # 23180 <__malloc_max_total_mem>
   16f18:	3000006f          	j	17218 <_malloc_r+0x608>
   16f1c:	0187b403          	ld	s0,24(a5)
   16f20:	0026061b          	addiw	a2,a2,2
   16f24:	d4879ee3          	bne	a5,s0,16c80 <_malloc_r+0x70>
   16f28:	0209b403          	ld	s0,32(s3)
   16f2c:	0000c817          	auipc	a6,0xc
   16f30:	9f480813          	addi	a6,a6,-1548 # 22920 <__malloc_av_+0x10>
   16f34:	e70404e3          	beq	s0,a6,16d9c <_malloc_r+0x18c>
   16f38:	00843783          	ld	a5,8(s0)
   16f3c:	01f00693          	li	a3,31
   16f40:	ffc7f793          	andi	a5,a5,-4
   16f44:	40978733          	sub	a4,a5,s1
   16f48:	28e6c263          	blt	a3,a4,171cc <_malloc_r+0x5bc>
   16f4c:	0000c697          	auipc	a3,0xc
   16f50:	9f06b623          	sd	a6,-1556(a3) # 22938 <__malloc_av_+0x28>
   16f54:	0000c697          	auipc	a3,0xc
   16f58:	9d06be23          	sd	a6,-1572(a3) # 22930 <__malloc_av_+0x20>
   16f5c:	14075063          	bgez	a4,1709c <_malloc_r+0x48c>
   16f60:	1ff00713          	li	a4,511
   16f64:	18f76863          	bltu	a4,a5,170f4 <_malloc_r+0x4e4>
   16f68:	0037d793          	srli	a5,a5,0x3
   16f6c:	0007879b          	sext.w	a5,a5
   16f70:	0017871b          	addiw	a4,a5,1
   16f74:	0017171b          	slliw	a4,a4,0x1
   16f78:	00371713          	slli	a4,a4,0x3
   16f7c:	0089b503          	ld	a0,8(s3)
   16f80:	00e98733          	add	a4,s3,a4
   16f84:	00073583          	ld	a1,0(a4)
   16f88:	4027d69b          	sraiw	a3,a5,0x2
   16f8c:	00100793          	li	a5,1
   16f90:	00d797b3          	sll	a5,a5,a3
   16f94:	00a7e7b3          	or	a5,a5,a0
   16f98:	ff070693          	addi	a3,a4,-16
   16f9c:	00d43c23          	sd	a3,24(s0)
   16fa0:	00b43823          	sd	a1,16(s0)
   16fa4:	0000c697          	auipc	a3,0xc
   16fa8:	96f6ba23          	sd	a5,-1676(a3) # 22918 <__malloc_av_+0x8>
   16fac:	00873023          	sd	s0,0(a4)
   16fb0:	0085bc23          	sd	s0,24(a1)
   16fb4:	4026571b          	sraiw	a4,a2,0x2
   16fb8:	00100693          	li	a3,1
   16fbc:	00e696b3          	sll	a3,a3,a4
   16fc0:	ded7e8e3          	bltu	a5,a3,16db0 <_malloc_r+0x1a0>
   16fc4:	00f6f733          	and	a4,a3,a5
   16fc8:	02071463          	bnez	a4,16ff0 <_malloc_r+0x3e0>
   16fcc:	00169693          	slli	a3,a3,0x1
   16fd0:	ffc67613          	andi	a2,a2,-4
   16fd4:	00f6f733          	and	a4,a3,a5
   16fd8:	0046061b          	addiw	a2,a2,4
   16fdc:	00071a63          	bnez	a4,16ff0 <_malloc_r+0x3e0>
   16fe0:	00169693          	slli	a3,a3,0x1
   16fe4:	00f6f733          	and	a4,a3,a5
   16fe8:	0046061b          	addiw	a2,a2,4
   16fec:	fe070ae3          	beqz	a4,16fe0 <_malloc_r+0x3d0>
   16ff0:	01f00513          	li	a0,31
   16ff4:	0016089b          	addiw	a7,a2,1
   16ff8:	0018989b          	slliw	a7,a7,0x1
   16ffc:	00389893          	slli	a7,a7,0x3
   17000:	ff088893          	addi	a7,a7,-16
   17004:	011988b3          	add	a7,s3,a7
   17008:	00088593          	mv	a1,a7
   1700c:	00060313          	mv	t1,a2
   17010:	0185b403          	ld	s0,24(a1)
   17014:	00859a63          	bne	a1,s0,17028 <_malloc_r+0x418>
   17018:	1700006f          	j	17188 <_malloc_r+0x578>
   1701c:	18075063          	bgez	a4,1719c <_malloc_r+0x58c>
   17020:	01843403          	ld	s0,24(s0)
   17024:	16858263          	beq	a1,s0,17188 <_malloc_r+0x578>
   17028:	00843783          	ld	a5,8(s0)
   1702c:	ffc7f793          	andi	a5,a5,-4
   17030:	40978733          	sub	a4,a5,s1
   17034:	fee554e3          	bge	a0,a4,1701c <_malloc_r+0x40c>
   17038:	01843683          	ld	a3,24(s0)
   1703c:	01043603          	ld	a2,16(s0)
   17040:	0014e593          	ori	a1,s1,1
   17044:	00b43423          	sd	a1,8(s0)
   17048:	00d63c23          	sd	a3,24(a2)
   1704c:	00c6b823          	sd	a2,16(a3)
   17050:	009404b3          	add	s1,s0,s1
   17054:	0000c697          	auipc	a3,0xc
   17058:	8e96b223          	sd	s1,-1820(a3) # 22938 <__malloc_av_+0x28>
   1705c:	0000c697          	auipc	a3,0xc
   17060:	8c96ba23          	sd	s1,-1836(a3) # 22930 <__malloc_av_+0x20>
   17064:	00176693          	ori	a3,a4,1
   17068:	0104bc23          	sd	a6,24(s1)
   1706c:	0104b823          	sd	a6,16(s1)
   17070:	00d4b423          	sd	a3,8(s1)
   17074:	00f407b3          	add	a5,s0,a5
   17078:	00090513          	mv	a0,s2
   1707c:	00e7b023          	sd	a4,0(a5)
   17080:	550000ef          	jal	ra,175d0 <__malloc_unlock>
   17084:	01040513          	addi	a0,s0,16
   17088:	c3dff06f          	j	16cc4 <_malloc_r+0xb4>
   1708c:	40000693          	li	a3,1024
   17090:	04000613          	li	a2,64
   17094:	03f00513          	li	a0,63
   17098:	ca9ff06f          	j	16d40 <_malloc_r+0x130>
   1709c:	00f407b3          	add	a5,s0,a5
   170a0:	0087b703          	ld	a4,8(a5)
   170a4:	00090513          	mv	a0,s2
   170a8:	00176713          	ori	a4,a4,1
   170ac:	00e7b423          	sd	a4,8(a5)
   170b0:	520000ef          	jal	ra,175d0 <__malloc_unlock>
   170b4:	01040513          	addi	a0,s0,16
   170b8:	c0dff06f          	j	16cc4 <_malloc_r+0xb4>
   170bc:	0014e713          	ori	a4,s1,1
   170c0:	00e43423          	sd	a4,8(s0)
   170c4:	009404b3          	add	s1,s0,s1
   170c8:	0000c717          	auipc	a4,0xc
   170cc:	84973c23          	sd	s1,-1960(a4) # 22920 <__malloc_av_+0x10>
   170d0:	0017e793          	ori	a5,a5,1
   170d4:	00090513          	mv	a0,s2
   170d8:	00f4b423          	sd	a5,8(s1)
   170dc:	4f4000ef          	jal	ra,175d0 <__malloc_unlock>
   170e0:	01040513          	addi	a0,s0,16
   170e4:	be1ff06f          	j	16cc4 <_malloc_r+0xb4>
   170e8:	01843683          	ld	a3,24(s0)
   170ec:	01043603          	ld	a2,16(s0)
   170f0:	ba1ff06f          	j	16c90 <_malloc_r+0x80>
   170f4:	0097d713          	srli	a4,a5,0x9
   170f8:	00400693          	li	a3,4
   170fc:	0ee6fa63          	bgeu	a3,a4,171f0 <_malloc_r+0x5e0>
   17100:	01400693          	li	a3,20
   17104:	20e6e863          	bltu	a3,a4,17314 <_malloc_r+0x704>
   17108:	0007071b          	sext.w	a4,a4
   1710c:	05c7059b          	addiw	a1,a4,92
   17110:	0015959b          	slliw	a1,a1,0x1
   17114:	05b7069b          	addiw	a3,a4,91
   17118:	00359593          	slli	a1,a1,0x3
   1711c:	00b985b3          	add	a1,s3,a1
   17120:	0005b703          	ld	a4,0(a1)
   17124:	ff058593          	addi	a1,a1,-16
   17128:	18e58663          	beq	a1,a4,172b4 <_malloc_r+0x6a4>
   1712c:	00873683          	ld	a3,8(a4)
   17130:	ffc6f693          	andi	a3,a3,-4
   17134:	00d7f663          	bgeu	a5,a3,17140 <_malloc_r+0x530>
   17138:	01073703          	ld	a4,16(a4)
   1713c:	fee598e3          	bne	a1,a4,1712c <_malloc_r+0x51c>
   17140:	01873583          	ld	a1,24(a4)
   17144:	0089b783          	ld	a5,8(s3)
   17148:	00b43c23          	sd	a1,24(s0)
   1714c:	00e43823          	sd	a4,16(s0)
   17150:	0085b823          	sd	s0,16(a1)
   17154:	00873c23          	sd	s0,24(a4)
   17158:	e5dff06f          	j	16fb4 <_malloc_r+0x3a4>
   1715c:	01400713          	li	a4,20
   17160:	0cf77e63          	bgeu	a4,a5,1723c <_malloc_r+0x62c>
   17164:	05400713          	li	a4,84
   17168:	1cf76863          	bltu	a4,a5,17338 <_malloc_r+0x728>
   1716c:	00c4d513          	srli	a0,s1,0xc
   17170:	0005051b          	sext.w	a0,a0
   17174:	06f5061b          	addiw	a2,a0,111
   17178:	0016169b          	slliw	a3,a2,0x1
   1717c:	06e5051b          	addiw	a0,a0,110
   17180:	00369693          	slli	a3,a3,0x3
   17184:	bbdff06f          	j	16d40 <_malloc_r+0x130>
   17188:	0013031b          	addiw	t1,t1,1
   1718c:	00337793          	andi	a5,t1,3
   17190:	01058593          	addi	a1,a1,16
   17194:	e6079ee3          	bnez	a5,17010 <_malloc_r+0x400>
   17198:	0c80006f          	j	17260 <_malloc_r+0x650>
   1719c:	00f407b3          	add	a5,s0,a5
   171a0:	0087b703          	ld	a4,8(a5)
   171a4:	01843683          	ld	a3,24(s0)
   171a8:	01043603          	ld	a2,16(s0)
   171ac:	00176713          	ori	a4,a4,1
   171b0:	00e7b423          	sd	a4,8(a5)
   171b4:	00d63c23          	sd	a3,24(a2)
   171b8:	00090513          	mv	a0,s2
   171bc:	00c6b823          	sd	a2,16(a3)
   171c0:	410000ef          	jal	ra,175d0 <__malloc_unlock>
   171c4:	01040513          	addi	a0,s0,16
   171c8:	afdff06f          	j	16cc4 <_malloc_r+0xb4>
   171cc:	0014e693          	ori	a3,s1,1
   171d0:	00d43423          	sd	a3,8(s0)
   171d4:	e7dff06f          	j	17050 <_malloc_r+0x440>
   171d8:	0034d613          	srli	a2,s1,0x3
   171dc:	0006061b          	sext.w	a2,a2
   171e0:	0016079b          	addiw	a5,a2,1
   171e4:	0017979b          	slliw	a5,a5,0x1
   171e8:	00379793          	slli	a5,a5,0x3
   171ec:	a7dff06f          	j	16c68 <_malloc_r+0x58>
   171f0:	0067d713          	srli	a4,a5,0x6
   171f4:	0007071b          	sext.w	a4,a4
   171f8:	0397059b          	addiw	a1,a4,57
   171fc:	0015959b          	slliw	a1,a1,0x1
   17200:	0387069b          	addiw	a3,a4,56
   17204:	00359593          	slli	a1,a1,0x3
   17208:	f15ff06f          	j	1711c <_malloc_r+0x50c>
   1720c:	15340863          	beq	s0,s3,1735c <_malloc_r+0x74c>
   17210:	0109b403          	ld	s0,16(s3)
   17214:	00843a03          	ld	s4,8(s0)
   17218:	ffca7a13          	andi	s4,s4,-4
   1721c:	409a07b3          	sub	a5,s4,s1
   17220:	009a6663          	bltu	s4,s1,1722c <_malloc_r+0x61c>
   17224:	01f00713          	li	a4,31
   17228:	e8f74ae3          	blt	a4,a5,170bc <_malloc_r+0x4ac>
   1722c:	00090513          	mv	a0,s2
   17230:	3a0000ef          	jal	ra,175d0 <__malloc_unlock>
   17234:	00000513          	li	a0,0
   17238:	a8dff06f          	j	16cc4 <_malloc_r+0xb4>
   1723c:	0007879b          	sext.w	a5,a5
   17240:	05c7861b          	addiw	a2,a5,92
   17244:	0016169b          	slliw	a3,a2,0x1
   17248:	05b7851b          	addiw	a0,a5,91
   1724c:	00369693          	slli	a3,a3,0x3
   17250:	af1ff06f          	j	16d40 <_malloc_r+0x130>
   17254:	0108b783          	ld	a5,16(a7)
   17258:	fff6061b          	addiw	a2,a2,-1
   1725c:	21179263          	bne	a5,a7,17460 <_malloc_r+0x850>
   17260:	00367793          	andi	a5,a2,3
   17264:	ff088893          	addi	a7,a7,-16
   17268:	fe0796e3          	bnez	a5,17254 <_malloc_r+0x644>
   1726c:	0089b703          	ld	a4,8(s3)
   17270:	fff6c793          	not	a5,a3
   17274:	00e7f7b3          	and	a5,a5,a4
   17278:	0000b717          	auipc	a4,0xb
   1727c:	6af73023          	sd	a5,1696(a4) # 22918 <__malloc_av_+0x8>
   17280:	00169693          	slli	a3,a3,0x1
   17284:	b2d7e6e3          	bltu	a5,a3,16db0 <_malloc_r+0x1a0>
   17288:	b20684e3          	beqz	a3,16db0 <_malloc_r+0x1a0>
   1728c:	00f6f733          	and	a4,a3,a5
   17290:	00071a63          	bnez	a4,172a4 <_malloc_r+0x694>
   17294:	00169693          	slli	a3,a3,0x1
   17298:	00f6f733          	and	a4,a3,a5
   1729c:	0043031b          	addiw	t1,t1,4
   172a0:	fe070ae3          	beqz	a4,17294 <_malloc_r+0x684>
   172a4:	00030613          	mv	a2,t1
   172a8:	d4dff06f          	j	16ff4 <_malloc_r+0x3e4>
   172ac:	020a0a13          	addi	s4,s4,32
   172b0:	b51ff06f          	j	16e00 <_malloc_r+0x1f0>
   172b4:	0089b503          	ld	a0,8(s3)
   172b8:	4026d69b          	sraiw	a3,a3,0x2
   172bc:	00100793          	li	a5,1
   172c0:	00d797b3          	sll	a5,a5,a3
   172c4:	00a7e7b3          	or	a5,a5,a0
   172c8:	0000b697          	auipc	a3,0xb
   172cc:	64f6b823          	sd	a5,1616(a3) # 22918 <__malloc_av_+0x8>
   172d0:	e79ff06f          	j	17148 <_malloc_r+0x538>
   172d4:	000017b7          	lui	a5,0x1
   172d8:	fff78713          	addi	a4,a5,-1 # fff <register_fini-0xf0b1>
   172dc:	014b0bb3          	add	s7,s6,s4
   172e0:	00ebfbb3          	and	s7,s7,a4
   172e4:	417787b3          	sub	a5,a5,s7
   172e8:	00e7fbb3          	and	s7,a5,a4
   172ec:	000b8593          	mv	a1,s7
   172f0:	00090513          	mv	a0,s2
   172f4:	448010ef          	jal	ra,1873c <_sbrk_r>
   172f8:	fff00793          	li	a5,-1
   172fc:	00000713          	li	a4,0
   17300:	b8f50ee3          	beq	a0,a5,16e9c <_malloc_r+0x28c>
   17304:	41650533          	sub	a0,a0,s6
   17308:	000b871b          	sext.w	a4,s7
   1730c:	01750a33          	add	s4,a0,s7
   17310:	b8dff06f          	j	16e9c <_malloc_r+0x28c>
   17314:	05400693          	li	a3,84
   17318:	08e6e863          	bltu	a3,a4,173a8 <_malloc_r+0x798>
   1731c:	00c7d713          	srli	a4,a5,0xc
   17320:	0007071b          	sext.w	a4,a4
   17324:	06f7059b          	addiw	a1,a4,111
   17328:	0015959b          	slliw	a1,a1,0x1
   1732c:	06e7069b          	addiw	a3,a4,110
   17330:	00359593          	slli	a1,a1,0x3
   17334:	de9ff06f          	j	1711c <_malloc_r+0x50c>
   17338:	15400713          	li	a4,340
   1733c:	08f76863          	bltu	a4,a5,173cc <_malloc_r+0x7bc>
   17340:	00f4d513          	srli	a0,s1,0xf
   17344:	0005051b          	sext.w	a0,a0
   17348:	0785061b          	addiw	a2,a0,120
   1734c:	0016169b          	slliw	a3,a2,0x1
   17350:	0775051b          	addiw	a0,a0,119
   17354:	00369693          	slli	a3,a3,0x3
   17358:	9e9ff06f          	j	16d40 <_malloc_r+0x130>
   1735c:	7d018c93          	addi	s9,gp,2000 # 231d8 <__malloc_current_mallinfo>
   17360:	000ca783          	lw	a5,0(s9)
   17364:	014786bb          	addw	a3,a5,s4
   17368:	7cd1a823          	sw	a3,2000(gp) # 231d8 <__malloc_current_mallinfo>
   1736c:	ac9ff06f          	j	16e34 <_malloc_r+0x224>
   17370:	034b9713          	slli	a4,s7,0x34
   17374:	ac0710e3          	bnez	a4,16e34 <_malloc_r+0x224>
   17378:	0109b403          	ld	s0,16(s3)
   1737c:	014a8a33          	add	s4,s5,s4
   17380:	001a6a13          	ori	s4,s4,1
   17384:	01443423          	sd	s4,8(s0)
   17388:	b71ff06f          	j	16ef8 <_malloc_r+0x2e8>
   1738c:	7761b023          	sd	s6,1888(gp) # 23168 <__malloc_sbrk_base>
   17390:	abdff06f          	j	16e4c <_malloc_r+0x23c>
   17394:	000b0413          	mv	s0,s6
   17398:	b61ff06f          	j	16ef8 <_malloc_r+0x2e8>
   1739c:	00100793          	li	a5,1
   173a0:	00fb3423          	sd	a5,8(s6)
   173a4:	e89ff06f          	j	1722c <_malloc_r+0x61c>
   173a8:	15400693          	li	a3,340
   173ac:	06e6ea63          	bltu	a3,a4,17420 <_malloc_r+0x810>
   173b0:	00f7d713          	srli	a4,a5,0xf
   173b4:	0007071b          	sext.w	a4,a4
   173b8:	0787059b          	addiw	a1,a4,120
   173bc:	0015959b          	slliw	a1,a1,0x1
   173c0:	0777069b          	addiw	a3,a4,119
   173c4:	00359593          	slli	a1,a1,0x3
   173c8:	d55ff06f          	j	1711c <_malloc_r+0x50c>
   173cc:	55400713          	li	a4,1364
   173d0:	06f76a63          	bltu	a4,a5,17444 <_malloc_r+0x834>
   173d4:	0124d513          	srli	a0,s1,0x12
   173d8:	0005051b          	sext.w	a0,a0
   173dc:	07d5061b          	addiw	a2,a0,125
   173e0:	0016169b          	slliw	a3,a2,0x1
   173e4:	07c5051b          	addiw	a0,a0,124
   173e8:	00369693          	slli	a3,a3,0x3
   173ec:	955ff06f          	j	16d40 <_malloc_r+0x130>
   173f0:	ff0b8b93          	addi	s7,s7,-16
   173f4:	017c0a33          	add	s4,s8,s7
   173f8:	416a0a33          	sub	s4,s4,s6
   173fc:	00000713          	li	a4,0
   17400:	a9dff06f          	j	16e9c <_malloc_r+0x28c>
   17404:	01040593          	addi	a1,s0,16
   17408:	00090513          	mv	a0,s2
   1740c:	cacfc0ef          	jal	ra,138b8 <_free_r>
   17410:	0109b403          	ld	s0,16(s3)
   17414:	000ca783          	lw	a5,0(s9)
   17418:	00843a03          	ld	s4,8(s0)
   1741c:	addff06f          	j	16ef8 <_malloc_r+0x2e8>
   17420:	55400693          	li	a3,1364
   17424:	02e6e863          	bltu	a3,a4,17454 <_malloc_r+0x844>
   17428:	0127d713          	srli	a4,a5,0x12
   1742c:	0007071b          	sext.w	a4,a4
   17430:	07d7059b          	addiw	a1,a4,125
   17434:	0015959b          	slliw	a1,a1,0x1
   17438:	07c7069b          	addiw	a3,a4,124
   1743c:	00359593          	slli	a1,a1,0x3
   17440:	cddff06f          	j	1711c <_malloc_r+0x50c>
   17444:	7f000693          	li	a3,2032
   17448:	07f00613          	li	a2,127
   1744c:	07e00513          	li	a0,126
   17450:	8f1ff06f          	j	16d40 <_malloc_r+0x130>
   17454:	7f000593          	li	a1,2032
   17458:	07e00693          	li	a3,126
   1745c:	cc1ff06f          	j	1711c <_malloc_r+0x50c>
   17460:	0089b783          	ld	a5,8(s3)
   17464:	e1dff06f          	j	17280 <_malloc_r+0x670>

0000000000017468 <_mbtowc_r>:
   17468:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1746c:	0e87b303          	ld	t1,232(a5)
   17470:	00030067          	jr	t1

0000000000017474 <__ascii_mbtowc>:
   17474:	02058063          	beqz	a1,17494 <__ascii_mbtowc+0x20>
   17478:	04060263          	beqz	a2,174bc <__ascii_mbtowc+0x48>
   1747c:	04068863          	beqz	a3,174cc <__ascii_mbtowc+0x58>
   17480:	00064783          	lbu	a5,0(a2)
   17484:	00f5a023          	sw	a5,0(a1)
   17488:	00064503          	lbu	a0,0(a2)
   1748c:	00a03533          	snez	a0,a0
   17490:	00008067          	ret
   17494:	ff010113          	addi	sp,sp,-16
   17498:	00c10593          	addi	a1,sp,12
   1749c:	02060463          	beqz	a2,174c4 <__ascii_mbtowc+0x50>
   174a0:	02068a63          	beqz	a3,174d4 <__ascii_mbtowc+0x60>
   174a4:	00064783          	lbu	a5,0(a2)
   174a8:	00f5a023          	sw	a5,0(a1)
   174ac:	00064503          	lbu	a0,0(a2)
   174b0:	00a03533          	snez	a0,a0
   174b4:	01010113          	addi	sp,sp,16
   174b8:	00008067          	ret
   174bc:	00000513          	li	a0,0
   174c0:	00008067          	ret
   174c4:	00000513          	li	a0,0
   174c8:	fedff06f          	j	174b4 <__ascii_mbtowc+0x40>
   174cc:	ffe00513          	li	a0,-2
   174d0:	00008067          	ret
   174d4:	ffe00513          	li	a0,-2
   174d8:	fddff06f          	j	174b4 <__ascii_mbtowc+0x40>

00000000000174dc <memchr>:
   174dc:	00757793          	andi	a5,a0,7
   174e0:	0ff5f813          	andi	a6,a1,255
   174e4:	0e078063          	beqz	a5,175c4 <memchr+0xe8>
   174e8:	fff60793          	addi	a5,a2,-1
   174ec:	04060e63          	beqz	a2,17548 <memchr+0x6c>
   174f0:	00054703          	lbu	a4,0(a0)
   174f4:	05070c63          	beq	a4,a6,1754c <memchr+0x70>
   174f8:	fff00693          	li	a3,-1
   174fc:	0140006f          	j	17510 <memchr+0x34>
   17500:	fff78793          	addi	a5,a5,-1
   17504:	04d78263          	beq	a5,a3,17548 <memchr+0x6c>
   17508:	00054703          	lbu	a4,0(a0)
   1750c:	05070063          	beq	a4,a6,1754c <memchr+0x70>
   17510:	00150513          	addi	a0,a0,1
   17514:	00757713          	andi	a4,a0,7
   17518:	fe0714e3          	bnez	a4,17500 <memchr+0x24>
   1751c:	00700713          	li	a4,7
   17520:	02f76863          	bltu	a4,a5,17550 <memchr+0x74>
   17524:	02078263          	beqz	a5,17548 <memchr+0x6c>
   17528:	00054703          	lbu	a4,0(a0)
   1752c:	03070063          	beq	a4,a6,1754c <memchr+0x70>
   17530:	00f507b3          	add	a5,a0,a5
   17534:	00c0006f          	j	17540 <memchr+0x64>
   17538:	00054703          	lbu	a4,0(a0)
   1753c:	01070863          	beq	a4,a6,1754c <memchr+0x70>
   17540:	00150513          	addi	a0,a0,1
   17544:	fea79ae3          	bne	a5,a0,17538 <memchr+0x5c>
   17548:	00000513          	li	a0,0
   1754c:	00008067          	ret
   17550:	000106b7          	lui	a3,0x10
   17554:	0085971b          	slliw	a4,a1,0x8
   17558:	fff68693          	addi	a3,a3,-1 # ffff <register_fini-0xb1>
   1755c:	00d77733          	and	a4,a4,a3
   17560:	0ff5f593          	andi	a1,a1,255
   17564:	00b765b3          	or	a1,a4,a1
   17568:	0005859b          	sext.w	a1,a1
   1756c:	0000c697          	auipc	a3,0xc
   17570:	bb468693          	addi	a3,a3,-1100 # 23120 <__SDATA_BEGIN__>
   17574:	01059613          	slli	a2,a1,0x10
   17578:	0006b883          	ld	a7,0(a3)
   1757c:	0000c697          	auipc	a3,0xc
   17580:	bac68693          	addi	a3,a3,-1108 # 23128 <__SDATA_BEGIN__+0x8>
   17584:	00b66733          	or	a4,a2,a1
   17588:	0006b583          	ld	a1,0(a3)
   1758c:	02071613          	slli	a2,a4,0x20
   17590:	00e66633          	or	a2,a2,a4
   17594:	00700313          	li	t1,7
   17598:	00053703          	ld	a4,0(a0)
   1759c:	00e64733          	xor	a4,a2,a4
   175a0:	011706b3          	add	a3,a4,a7
   175a4:	fff74713          	not	a4,a4
   175a8:	00e6f733          	and	a4,a3,a4
   175ac:	00b77733          	and	a4,a4,a1
   175b0:	f6071ce3          	bnez	a4,17528 <memchr+0x4c>
   175b4:	ff878793          	addi	a5,a5,-8
   175b8:	00850513          	addi	a0,a0,8
   175bc:	fcf36ee3          	bltu	t1,a5,17598 <memchr+0xbc>
   175c0:	f65ff06f          	j	17524 <memchr+0x48>
   175c4:	00060793          	mv	a5,a2
   175c8:	f55ff06f          	j	1751c <memchr+0x40>

00000000000175cc <__malloc_lock>:
   175cc:	00008067          	ret

00000000000175d0 <__malloc_unlock>:
   175d0:	00008067          	ret

00000000000175d4 <_Balloc>:
   175d4:	07853783          	ld	a5,120(a0)
   175d8:	fe010113          	addi	sp,sp,-32
   175dc:	00813823          	sd	s0,16(sp)
   175e0:	00913423          	sd	s1,8(sp)
   175e4:	00113c23          	sd	ra,24(sp)
   175e8:	01213023          	sd	s2,0(sp)
   175ec:	00050413          	mv	s0,a0
   175f0:	00058493          	mv	s1,a1
   175f4:	02078c63          	beqz	a5,1762c <_Balloc+0x58>
   175f8:	00349713          	slli	a4,s1,0x3
   175fc:	00e787b3          	add	a5,a5,a4
   17600:	0007b503          	ld	a0,0(a5)
   17604:	04050463          	beqz	a0,1764c <_Balloc+0x78>
   17608:	00053703          	ld	a4,0(a0)
   1760c:	00e7b023          	sd	a4,0(a5)
   17610:	00053823          	sd	zero,16(a0)
   17614:	01813083          	ld	ra,24(sp)
   17618:	01013403          	ld	s0,16(sp)
   1761c:	00813483          	ld	s1,8(sp)
   17620:	00013903          	ld	s2,0(sp)
   17624:	02010113          	addi	sp,sp,32
   17628:	00008067          	ret
   1762c:	04100613          	li	a2,65
   17630:	00800593          	li	a1,8
   17634:	3d8050ef          	jal	ra,1ca0c <_calloc_r>
   17638:	06a43c23          	sd	a0,120(s0)
   1763c:	00050793          	mv	a5,a0
   17640:	fa051ce3          	bnez	a0,175f8 <_Balloc+0x24>
   17644:	00000513          	li	a0,0
   17648:	fcdff06f          	j	17614 <_Balloc+0x40>
   1764c:	00100913          	li	s2,1
   17650:	0099193b          	sllw	s2,s2,s1
   17654:	fff9061b          	addiw	a2,s2,-1
   17658:	00860613          	addi	a2,a2,8
   1765c:	00261613          	slli	a2,a2,0x2
   17660:	00100593          	li	a1,1
   17664:	00040513          	mv	a0,s0
   17668:	3a4050ef          	jal	ra,1ca0c <_calloc_r>
   1766c:	fc050ce3          	beqz	a0,17644 <_Balloc+0x70>
   17670:	00952423          	sw	s1,8(a0)
   17674:	01252623          	sw	s2,12(a0)
   17678:	f99ff06f          	j	17610 <_Balloc+0x3c>

000000000001767c <_Bfree>:
   1767c:	02058063          	beqz	a1,1769c <_Bfree+0x20>
   17680:	0085a703          	lw	a4,8(a1)
   17684:	07853783          	ld	a5,120(a0)
   17688:	00371713          	slli	a4,a4,0x3
   1768c:	00e787b3          	add	a5,a5,a4
   17690:	0007b703          	ld	a4,0(a5)
   17694:	00e5b023          	sd	a4,0(a1)
   17698:	00b7b023          	sd	a1,0(a5)
   1769c:	00008067          	ret

00000000000176a0 <__multadd>:
   176a0:	fb010113          	addi	sp,sp,-80
   176a4:	03313423          	sd	s3,40(sp)
   176a8:	0145a983          	lw	s3,20(a1)
   176ac:	01813023          	sd	s8,0(sp)
   176b0:	00010c37          	lui	s8,0x10
   176b4:	04813023          	sd	s0,64(sp)
   176b8:	02913c23          	sd	s1,56(sp)
   176bc:	03213823          	sd	s2,48(sp)
   176c0:	03413023          	sd	s4,32(sp)
   176c4:	01513c23          	sd	s5,24(sp)
   176c8:	01613823          	sd	s6,16(sp)
   176cc:	04113423          	sd	ra,72(sp)
   176d0:	01713423          	sd	s7,8(sp)
   176d4:	00058a13          	mv	s4,a1
   176d8:	00050a93          	mv	s5,a0
   176dc:	00068413          	mv	s0,a3
   176e0:	01858493          	addi	s1,a1,24
   176e4:	00060913          	mv	s2,a2
   176e8:	00000b13          	li	s6,0
   176ec:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0xb1>
   176f0:	0004ab83          	lw	s7,0(s1)
   176f4:	00090593          	mv	a1,s2
   176f8:	00448493          	addi	s1,s1,4
   176fc:	018bf533          	and	a0,s7,s8
   17700:	281090ef          	jal	ra,21180 <__muldi3>
   17704:	0085043b          	addw	s0,a0,s0
   17708:	00090593          	mv	a1,s2
   1770c:	010bd51b          	srliw	a0,s7,0x10
   17710:	271090ef          	jal	ra,21180 <__muldi3>
   17714:	0104569b          	srliw	a3,s0,0x10
   17718:	00a6853b          	addw	a0,a3,a0
   1771c:	0105169b          	slliw	a3,a0,0x10
   17720:	008c7433          	and	s0,s8,s0
   17724:	0086843b          	addw	s0,a3,s0
   17728:	fe84ae23          	sw	s0,-4(s1)
   1772c:	001b0b1b          	addiw	s6,s6,1
   17730:	0105541b          	srliw	s0,a0,0x10
   17734:	fb3b4ee3          	blt	s6,s3,176f0 <__multadd+0x50>
   17738:	02040263          	beqz	s0,1775c <__multadd+0xbc>
   1773c:	00ca2783          	lw	a5,12(s4)
   17740:	04f9d863          	bge	s3,a5,17790 <__multadd+0xf0>
   17744:	00498793          	addi	a5,s3,4
   17748:	00279793          	slli	a5,a5,0x2
   1774c:	00fa07b3          	add	a5,s4,a5
   17750:	0087a423          	sw	s0,8(a5)
   17754:	0019899b          	addiw	s3,s3,1
   17758:	013a2a23          	sw	s3,20(s4)
   1775c:	04813083          	ld	ra,72(sp)
   17760:	04013403          	ld	s0,64(sp)
   17764:	000a0513          	mv	a0,s4
   17768:	03813483          	ld	s1,56(sp)
   1776c:	03013903          	ld	s2,48(sp)
   17770:	02813983          	ld	s3,40(sp)
   17774:	02013a03          	ld	s4,32(sp)
   17778:	01813a83          	ld	s5,24(sp)
   1777c:	01013b03          	ld	s6,16(sp)
   17780:	00813b83          	ld	s7,8(sp)
   17784:	00013c03          	ld	s8,0(sp)
   17788:	05010113          	addi	sp,sp,80
   1778c:	00008067          	ret
   17790:	008a2583          	lw	a1,8(s4)
   17794:	000a8513          	mv	a0,s5
   17798:	0015859b          	addiw	a1,a1,1
   1779c:	e39ff0ef          	jal	ra,175d4 <_Balloc>
   177a0:	014a2603          	lw	a2,20(s4)
   177a4:	00050493          	mv	s1,a0
   177a8:	010a0593          	addi	a1,s4,16
   177ac:	00260613          	addi	a2,a2,2
   177b0:	01050513          	addi	a0,a0,16
   177b4:	00261613          	slli	a2,a2,0x2
   177b8:	465050ef          	jal	ra,1d41c <memcpy>
   177bc:	008a2703          	lw	a4,8(s4)
   177c0:	078ab783          	ld	a5,120(s5)
   177c4:	00371713          	slli	a4,a4,0x3
   177c8:	00e787b3          	add	a5,a5,a4
   177cc:	0007b703          	ld	a4,0(a5)
   177d0:	00ea3023          	sd	a4,0(s4)
   177d4:	0147b023          	sd	s4,0(a5)
   177d8:	00498793          	addi	a5,s3,4
   177dc:	00048a13          	mv	s4,s1
   177e0:	00279793          	slli	a5,a5,0x2
   177e4:	00fa07b3          	add	a5,s4,a5
   177e8:	0087a423          	sw	s0,8(a5)
   177ec:	0019899b          	addiw	s3,s3,1
   177f0:	013a2a23          	sw	s3,20(s4)
   177f4:	f69ff06f          	j	1775c <__multadd+0xbc>

00000000000177f8 <__s2b>:
   177f8:	fc010113          	addi	sp,sp,-64
   177fc:	02813823          	sd	s0,48(sp)
   17800:	03213023          	sd	s2,32(sp)
   17804:	00058413          	mv	s0,a1
   17808:	00050913          	mv	s2,a0
   1780c:	00900593          	li	a1,9
   17810:	0086851b          	addiw	a0,a3,8
   17814:	02913423          	sd	s1,40(sp)
   17818:	01313c23          	sd	s3,24(sp)
   1781c:	01413823          	sd	s4,16(sp)
   17820:	02113c23          	sd	ra,56(sp)
   17824:	01513423          	sd	s5,8(sp)
   17828:	01613023          	sd	s6,0(sp)
   1782c:	00068493          	mv	s1,a3
   17830:	00060a13          	mv	s4,a2
   17834:	00070993          	mv	s3,a4
   17838:	a25f80ef          	jal	ra,1025c <__divdi3>
   1783c:	00900793          	li	a5,9
   17840:	0e97d663          	bge	a5,s1,1792c <__s2b+0x134>
   17844:	0005051b          	sext.w	a0,a0
   17848:	00100793          	li	a5,1
   1784c:	00000593          	li	a1,0
   17850:	0017979b          	slliw	a5,a5,0x1
   17854:	0015859b          	addiw	a1,a1,1
   17858:	fea7cce3          	blt	a5,a0,17850 <__s2b+0x58>
   1785c:	00090513          	mv	a0,s2
   17860:	d75ff0ef          	jal	ra,175d4 <_Balloc>
   17864:	00100793          	li	a5,1
   17868:	00f52a23          	sw	a5,20(a0)
   1786c:	01352c23          	sw	s3,24(a0)
   17870:	00900793          	li	a5,9
   17874:	0b47d663          	bge	a5,s4,17920 <__s2b+0x128>
   17878:	ff6a0a9b          	addiw	s5,s4,-10
   1787c:	020a9a93          	slli	s5,s5,0x20
   17880:	020ada93          	srli	s5,s5,0x20
   17884:	00940b13          	addi	s6,s0,9
   17888:	00aa8793          	addi	a5,s5,10
   1788c:	00f40433          	add	s0,s0,a5
   17890:	000b0993          	mv	s3,s6
   17894:	00198993          	addi	s3,s3,1
   17898:	fff9c683          	lbu	a3,-1(s3)
   1789c:	00050593          	mv	a1,a0
   178a0:	00a00613          	li	a2,10
   178a4:	fd06869b          	addiw	a3,a3,-48
   178a8:	00090513          	mv	a0,s2
   178ac:	df5ff0ef          	jal	ra,176a0 <__multadd>
   178b0:	fe8992e3          	bne	s3,s0,17894 <__s2b+0x9c>
   178b4:	002a8413          	addi	s0,s5,2
   178b8:	008b0433          	add	s0,s6,s0
   178bc:	029a5e63          	bge	s4,s1,178f8 <__s2b+0x100>
   178c0:	fff4849b          	addiw	s1,s1,-1
   178c4:	414484bb          	subw	s1,s1,s4
   178c8:	02049493          	slli	s1,s1,0x20
   178cc:	0204d493          	srli	s1,s1,0x20
   178d0:	00148493          	addi	s1,s1,1
   178d4:	009404b3          	add	s1,s0,s1
   178d8:	00140413          	addi	s0,s0,1
   178dc:	fff44683          	lbu	a3,-1(s0)
   178e0:	00050593          	mv	a1,a0
   178e4:	00a00613          	li	a2,10
   178e8:	fd06869b          	addiw	a3,a3,-48
   178ec:	00090513          	mv	a0,s2
   178f0:	db1ff0ef          	jal	ra,176a0 <__multadd>
   178f4:	fe9412e3          	bne	s0,s1,178d8 <__s2b+0xe0>
   178f8:	03813083          	ld	ra,56(sp)
   178fc:	03013403          	ld	s0,48(sp)
   17900:	02813483          	ld	s1,40(sp)
   17904:	02013903          	ld	s2,32(sp)
   17908:	01813983          	ld	s3,24(sp)
   1790c:	01013a03          	ld	s4,16(sp)
   17910:	00813a83          	ld	s5,8(sp)
   17914:	00013b03          	ld	s6,0(sp)
   17918:	04010113          	addi	sp,sp,64
   1791c:	00008067          	ret
   17920:	00a40413          	addi	s0,s0,10
   17924:	00900a13          	li	s4,9
   17928:	f95ff06f          	j	178bc <__s2b+0xc4>
   1792c:	00000593          	li	a1,0
   17930:	f2dff06f          	j	1785c <__s2b+0x64>

0000000000017934 <__hi0bits>:
   17934:	ffff0737          	lui	a4,0xffff0
   17938:	00e57733          	and	a4,a0,a4
   1793c:	00050793          	mv	a5,a0
   17940:	00000513          	li	a0,0
   17944:	00071663          	bnez	a4,17950 <__hi0bits+0x1c>
   17948:	0107979b          	slliw	a5,a5,0x10
   1794c:	01000513          	li	a0,16
   17950:	ff000737          	lui	a4,0xff000
   17954:	00e7f733          	and	a4,a5,a4
   17958:	00071663          	bnez	a4,17964 <__hi0bits+0x30>
   1795c:	0087979b          	slliw	a5,a5,0x8
   17960:	0085051b          	addiw	a0,a0,8
   17964:	f0000737          	lui	a4,0xf0000
   17968:	00e7f733          	and	a4,a5,a4
   1796c:	00071663          	bnez	a4,17978 <__hi0bits+0x44>
   17970:	0047979b          	slliw	a5,a5,0x4
   17974:	0045051b          	addiw	a0,a0,4
   17978:	c0000737          	lui	a4,0xc0000
   1797c:	00e7f733          	and	a4,a5,a4
   17980:	00071663          	bnez	a4,1798c <__hi0bits+0x58>
   17984:	0027979b          	slliw	a5,a5,0x2
   17988:	0025051b          	addiw	a0,a0,2
   1798c:	0007c863          	bltz	a5,1799c <__hi0bits+0x68>
   17990:	02179713          	slli	a4,a5,0x21
   17994:	0015051b          	addiw	a0,a0,1
   17998:	00075463          	bgez	a4,179a0 <__hi0bits+0x6c>
   1799c:	00008067          	ret
   179a0:	02000513          	li	a0,32
   179a4:	00008067          	ret

00000000000179a8 <__lo0bits>:
   179a8:	00052783          	lw	a5,0(a0)
   179ac:	0077f713          	andi	a4,a5,7
   179b0:	00078613          	mv	a2,a5
   179b4:	02070663          	beqz	a4,179e0 <__lo0bits+0x38>
   179b8:	0017f693          	andi	a3,a5,1
   179bc:	00000713          	li	a4,0
   179c0:	00069c63          	bnez	a3,179d8 <__lo0bits+0x30>
   179c4:	00267613          	andi	a2,a2,2
   179c8:	08060463          	beqz	a2,17a50 <__lo0bits+0xa8>
   179cc:	0017d79b          	srliw	a5,a5,0x1
   179d0:	00f52023          	sw	a5,0(a0)
   179d4:	00100713          	li	a4,1
   179d8:	00070513          	mv	a0,a4
   179dc:	00008067          	ret
   179e0:	03079693          	slli	a3,a5,0x30
   179e4:	0306d693          	srli	a3,a3,0x30
   179e8:	00000713          	li	a4,0
   179ec:	00069663          	bnez	a3,179f8 <__lo0bits+0x50>
   179f0:	0107d79b          	srliw	a5,a5,0x10
   179f4:	01000713          	li	a4,16
   179f8:	0ff7f693          	andi	a3,a5,255
   179fc:	00069663          	bnez	a3,17a08 <__lo0bits+0x60>
   17a00:	0087071b          	addiw	a4,a4,8
   17a04:	0087d79b          	srliw	a5,a5,0x8
   17a08:	00f7f693          	andi	a3,a5,15
   17a0c:	00069663          	bnez	a3,17a18 <__lo0bits+0x70>
   17a10:	0047071b          	addiw	a4,a4,4
   17a14:	0047d79b          	srliw	a5,a5,0x4
   17a18:	0037f693          	andi	a3,a5,3
   17a1c:	00069663          	bnez	a3,17a28 <__lo0bits+0x80>
   17a20:	0027071b          	addiw	a4,a4,2
   17a24:	0027d79b          	srliw	a5,a5,0x2
   17a28:	0017f693          	andi	a3,a5,1
   17a2c:	00069863          	bnez	a3,17a3c <__lo0bits+0x94>
   17a30:	0017d79b          	srliw	a5,a5,0x1
   17a34:	0017071b          	addiw	a4,a4,1
   17a38:	00078863          	beqz	a5,17a48 <__lo0bits+0xa0>
   17a3c:	00f52023          	sw	a5,0(a0)
   17a40:	00070513          	mv	a0,a4
   17a44:	00008067          	ret
   17a48:	02000713          	li	a4,32
   17a4c:	f8dff06f          	j	179d8 <__lo0bits+0x30>
   17a50:	0027d79b          	srliw	a5,a5,0x2
   17a54:	00200713          	li	a4,2
   17a58:	00f52023          	sw	a5,0(a0)
   17a5c:	00070513          	mv	a0,a4
   17a60:	00008067          	ret

0000000000017a64 <__i2b>:
   17a64:	ff010113          	addi	sp,sp,-16
   17a68:	00813023          	sd	s0,0(sp)
   17a6c:	00058413          	mv	s0,a1
   17a70:	00100593          	li	a1,1
   17a74:	00113423          	sd	ra,8(sp)
   17a78:	b5dff0ef          	jal	ra,175d4 <_Balloc>
   17a7c:	00852c23          	sw	s0,24(a0)
   17a80:	00813083          	ld	ra,8(sp)
   17a84:	00013403          	ld	s0,0(sp)
   17a88:	00100713          	li	a4,1
   17a8c:	00e52a23          	sw	a4,20(a0)
   17a90:	01010113          	addi	sp,sp,16
   17a94:	00008067          	ret

0000000000017a98 <__multiply>:
   17a98:	f7010113          	addi	sp,sp,-144
   17a9c:	07413023          	sd	s4,96(sp)
   17aa0:	03913c23          	sd	s9,56(sp)
   17aa4:	01462a03          	lw	s4,20(a2)
   17aa8:	0145ac83          	lw	s9,20(a1)
   17aac:	05513c23          	sd	s5,88(sp)
   17ab0:	03a13823          	sd	s10,48(sp)
   17ab4:	08113423          	sd	ra,136(sp)
   17ab8:	08813023          	sd	s0,128(sp)
   17abc:	06913c23          	sd	s1,120(sp)
   17ac0:	07213823          	sd	s2,112(sp)
   17ac4:	07313423          	sd	s3,104(sp)
   17ac8:	05613823          	sd	s6,80(sp)
   17acc:	05713423          	sd	s7,72(sp)
   17ad0:	05813023          	sd	s8,64(sp)
   17ad4:	03b13423          	sd	s11,40(sp)
   17ad8:	00058a93          	mv	s5,a1
   17adc:	00060d13          	mv	s10,a2
   17ae0:	014ccc63          	blt	s9,s4,17af8 <__multiply+0x60>
   17ae4:	000a0793          	mv	a5,s4
   17ae8:	00058d13          	mv	s10,a1
   17aec:	000c8a13          	mv	s4,s9
   17af0:	00060a93          	mv	s5,a2
   17af4:	00078c93          	mv	s9,a5
   17af8:	00cd2783          	lw	a5,12(s10) # 100c <register_fini-0xf0a4>
   17afc:	019a0bbb          	addw	s7,s4,s9
   17b00:	008d2583          	lw	a1,8(s10)
   17b04:	0177d463          	bge	a5,s7,17b0c <__multiply+0x74>
   17b08:	0015859b          	addiw	a1,a1,1
   17b0c:	ac9ff0ef          	jal	ra,175d4 <_Balloc>
   17b10:	01850c13          	addi	s8,a0,24
   17b14:	002b9b13          	slli	s6,s7,0x2
   17b18:	016c07b3          	add	a5,s8,s6
   17b1c:	00078713          	mv	a4,a5
   17b20:	00f13023          	sd	a5,0(sp)
   17b24:	00a13c23          	sd	a0,24(sp)
   17b28:	000c0793          	mv	a5,s8
   17b2c:	00ec7a63          	bgeu	s8,a4,17b40 <__multiply+0xa8>
   17b30:	00013703          	ld	a4,0(sp)
   17b34:	0007a023          	sw	zero,0(a5)
   17b38:	00478793          	addi	a5,a5,4
   17b3c:	fee7eae3          	bltu	a5,a4,17b30 <__multiply+0x98>
   17b40:	018a8a93          	addi	s5,s5,24
   17b44:	002c9c93          	slli	s9,s9,0x2
   17b48:	018d0793          	addi	a5,s10,24
   17b4c:	019a8733          	add	a4,s5,s9
   17b50:	002a1a13          	slli	s4,s4,0x2
   17b54:	00010937          	lui	s2,0x10
   17b58:	00f13823          	sd	a5,16(sp)
   17b5c:	00e13423          	sd	a4,8(sp)
   17b60:	01478a33          	add	s4,a5,s4
   17b64:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   17b68:	02eae063          	bltu	s5,a4,17b88 <__multiply+0xf0>
   17b6c:	1280006f          	j	17c94 <__multiply+0x1fc>
   17b70:	0104541b          	srliw	s0,s0,0x10
   17b74:	08041c63          	bnez	s0,17c0c <__multiply+0x174>
   17b78:	00813783          	ld	a5,8(sp)
   17b7c:	004a8a93          	addi	s5,s5,4
   17b80:	004c0c13          	addi	s8,s8,4
   17b84:	10faf863          	bgeu	s5,a5,17c94 <__multiply+0x1fc>
   17b88:	000aa403          	lw	s0,0(s5)
   17b8c:	012479b3          	and	s3,s0,s2
   17b90:	fe0980e3          	beqz	s3,17b70 <__multiply+0xd8>
   17b94:	01013d83          	ld	s11,16(sp)
   17b98:	000c0c93          	mv	s9,s8
   17b9c:	00000d13          	li	s10,0
   17ba0:	000dab03          	lw	s6,0(s11)
   17ba4:	000ca483          	lw	s1,0(s9)
   17ba8:	00098593          	mv	a1,s3
   17bac:	012b7533          	and	a0,s6,s2
   17bb0:	5d0090ef          	jal	ra,21180 <__muldi3>
   17bb4:	0124f433          	and	s0,s1,s2
   17bb8:	0085043b          	addw	s0,a0,s0
   17bbc:	00098593          	mv	a1,s3
   17bc0:	010b551b          	srliw	a0,s6,0x10
   17bc4:	01a4043b          	addw	s0,s0,s10
   17bc8:	5b8090ef          	jal	ra,21180 <__muldi3>
   17bcc:	0104d49b          	srliw	s1,s1,0x10
   17bd0:	00a4853b          	addw	a0,s1,a0
   17bd4:	0104549b          	srliw	s1,s0,0x10
   17bd8:	0095053b          	addw	a0,a0,s1
   17bdc:	0105169b          	slliw	a3,a0,0x10
   17be0:	00897433          	and	s0,s2,s0
   17be4:	004c8c93          	addi	s9,s9,4
   17be8:	00d46433          	or	s0,s0,a3
   17bec:	004d8d93          	addi	s11,s11,4
   17bf0:	fe8cae23          	sw	s0,-4(s9)
   17bf4:	01055d1b          	srliw	s10,a0,0x10
   17bf8:	fb4de4e3          	bltu	s11,s4,17ba0 <__multiply+0x108>
   17bfc:	01aca023          	sw	s10,0(s9)
   17c00:	000aa403          	lw	s0,0(s5)
   17c04:	0104541b          	srliw	s0,s0,0x10
   17c08:	f60408e3          	beqz	s0,17b78 <__multiply+0xe0>
   17c0c:	000c2d03          	lw	s10,0(s8)
   17c10:	01013c83          	ld	s9,16(sp)
   17c14:	000c0d93          	mv	s11,s8
   17c18:	000d0493          	mv	s1,s10
   17c1c:	00000993          	li	s3,0
   17c20:	000ca503          	lw	a0,0(s9)
   17c24:	00040593          	mv	a1,s0
   17c28:	0104d49b          	srliw	s1,s1,0x10
   17c2c:	00a97533          	and	a0,s2,a0
   17c30:	550090ef          	jal	ra,21180 <__muldi3>
   17c34:	00a484bb          	addw	s1,s1,a0
   17c38:	013489bb          	addw	s3,s1,s3
   17c3c:	0109961b          	slliw	a2,s3,0x10
   17c40:	012d77b3          	and	a5,s10,s2
   17c44:	00c7e7b3          	or	a5,a5,a2
   17c48:	004d8d93          	addi	s11,s11,4
   17c4c:	fefdae23          	sw	a5,-4(s11)
   17c50:	004c8c93          	addi	s9,s9,4
   17c54:	ffecd503          	lhu	a0,-2(s9)
   17c58:	000da483          	lw	s1,0(s11)
   17c5c:	00040593          	mv	a1,s0
   17c60:	520090ef          	jal	ra,21180 <__muldi3>
   17c64:	0124f7b3          	and	a5,s1,s2
   17c68:	0109d99b          	srliw	s3,s3,0x10
   17c6c:	00f5053b          	addw	a0,a0,a5
   17c70:	0135053b          	addw	a0,a0,s3
   17c74:	00050d1b          	sext.w	s10,a0
   17c78:	0105599b          	srliw	s3,a0,0x10
   17c7c:	fb4ce2e3          	bltu	s9,s4,17c20 <__multiply+0x188>
   17c80:	00813783          	ld	a5,8(sp)
   17c84:	01ada023          	sw	s10,0(s11)
   17c88:	004a8a93          	addi	s5,s5,4
   17c8c:	004c0c13          	addi	s8,s8,4
   17c90:	eefaece3          	bltu	s5,a5,17b88 <__multiply+0xf0>
   17c94:	03705663          	blez	s7,17cc0 <__multiply+0x228>
   17c98:	00013703          	ld	a4,0(sp)
   17c9c:	ffc72783          	lw	a5,-4(a4) # ffffffffbffffffc <__BSS_END__+0xffffffffbffdcdf4>
   17ca0:	ffc70b13          	addi	s6,a4,-4
   17ca4:	00078863          	beqz	a5,17cb4 <__multiply+0x21c>
   17ca8:	0180006f          	j	17cc0 <__multiply+0x228>
   17cac:	000b2783          	lw	a5,0(s6)
   17cb0:	00079863          	bnez	a5,17cc0 <__multiply+0x228>
   17cb4:	fffb8b9b          	addiw	s7,s7,-1
   17cb8:	ffcb0b13          	addi	s6,s6,-4
   17cbc:	fe0b98e3          	bnez	s7,17cac <__multiply+0x214>
   17cc0:	01813783          	ld	a5,24(sp)
   17cc4:	08813083          	ld	ra,136(sp)
   17cc8:	08013403          	ld	s0,128(sp)
   17ccc:	0177aa23          	sw	s7,20(a5)
   17cd0:	07813483          	ld	s1,120(sp)
   17cd4:	07013903          	ld	s2,112(sp)
   17cd8:	06813983          	ld	s3,104(sp)
   17cdc:	06013a03          	ld	s4,96(sp)
   17ce0:	05813a83          	ld	s5,88(sp)
   17ce4:	05013b03          	ld	s6,80(sp)
   17ce8:	04813b83          	ld	s7,72(sp)
   17cec:	04013c03          	ld	s8,64(sp)
   17cf0:	03813c83          	ld	s9,56(sp)
   17cf4:	03013d03          	ld	s10,48(sp)
   17cf8:	02813d83          	ld	s11,40(sp)
   17cfc:	00078513          	mv	a0,a5
   17d00:	09010113          	addi	sp,sp,144
   17d04:	00008067          	ret

0000000000017d08 <__pow5mult>:
   17d08:	fd010113          	addi	sp,sp,-48
   17d0c:	02813023          	sd	s0,32(sp)
   17d10:	01313423          	sd	s3,8(sp)
   17d14:	01413023          	sd	s4,0(sp)
   17d18:	02113423          	sd	ra,40(sp)
   17d1c:	00913c23          	sd	s1,24(sp)
   17d20:	01213823          	sd	s2,16(sp)
   17d24:	00367793          	andi	a5,a2,3
   17d28:	00060413          	mv	s0,a2
   17d2c:	00050993          	mv	s3,a0
   17d30:	00058a13          	mv	s4,a1
   17d34:	0c079463          	bnez	a5,17dfc <__pow5mult+0xf4>
   17d38:	40245413          	srai	s0,s0,0x2
   17d3c:	000a0913          	mv	s2,s4
   17d40:	06040863          	beqz	s0,17db0 <__pow5mult+0xa8>
   17d44:	0709b483          	ld	s1,112(s3)
   17d48:	0c048e63          	beqz	s1,17e24 <__pow5mult+0x11c>
   17d4c:	00147793          	andi	a5,s0,1
   17d50:	000a0913          	mv	s2,s4
   17d54:	02079063          	bnez	a5,17d74 <__pow5mult+0x6c>
   17d58:	40145413          	srai	s0,s0,0x1
   17d5c:	04040a63          	beqz	s0,17db0 <__pow5mult+0xa8>
   17d60:	0004b503          	ld	a0,0(s1)
   17d64:	06050863          	beqz	a0,17dd4 <__pow5mult+0xcc>
   17d68:	00050493          	mv	s1,a0
   17d6c:	00147793          	andi	a5,s0,1
   17d70:	fe0784e3          	beqz	a5,17d58 <__pow5mult+0x50>
   17d74:	00048613          	mv	a2,s1
   17d78:	00090593          	mv	a1,s2
   17d7c:	00098513          	mv	a0,s3
   17d80:	d19ff0ef          	jal	ra,17a98 <__multiply>
   17d84:	06090863          	beqz	s2,17df4 <__pow5mult+0xec>
   17d88:	00892703          	lw	a4,8(s2)
   17d8c:	0789b783          	ld	a5,120(s3)
   17d90:	40145413          	srai	s0,s0,0x1
   17d94:	00371713          	slli	a4,a4,0x3
   17d98:	00e787b3          	add	a5,a5,a4
   17d9c:	0007b703          	ld	a4,0(a5)
   17da0:	00e93023          	sd	a4,0(s2)
   17da4:	0127b023          	sd	s2,0(a5)
   17da8:	00050913          	mv	s2,a0
   17dac:	fa041ae3          	bnez	s0,17d60 <__pow5mult+0x58>
   17db0:	02813083          	ld	ra,40(sp)
   17db4:	02013403          	ld	s0,32(sp)
   17db8:	00090513          	mv	a0,s2
   17dbc:	01813483          	ld	s1,24(sp)
   17dc0:	01013903          	ld	s2,16(sp)
   17dc4:	00813983          	ld	s3,8(sp)
   17dc8:	00013a03          	ld	s4,0(sp)
   17dcc:	03010113          	addi	sp,sp,48
   17dd0:	00008067          	ret
   17dd4:	00048613          	mv	a2,s1
   17dd8:	00048593          	mv	a1,s1
   17ddc:	00098513          	mv	a0,s3
   17de0:	cb9ff0ef          	jal	ra,17a98 <__multiply>
   17de4:	00a4b023          	sd	a0,0(s1)
   17de8:	00053023          	sd	zero,0(a0)
   17dec:	00050493          	mv	s1,a0
   17df0:	f7dff06f          	j	17d6c <__pow5mult+0x64>
   17df4:	00050913          	mv	s2,a0
   17df8:	f61ff06f          	j	17d58 <__pow5mult+0x50>
   17dfc:	fff7879b          	addiw	a5,a5,-1
   17e00:	0000a717          	auipc	a4,0xa
   17e04:	8f870713          	addi	a4,a4,-1800 # 216f8 <p05.3332>
   17e08:	00279793          	slli	a5,a5,0x2
   17e0c:	00f707b3          	add	a5,a4,a5
   17e10:	0007a603          	lw	a2,0(a5)
   17e14:	00000693          	li	a3,0
   17e18:	889ff0ef          	jal	ra,176a0 <__multadd>
   17e1c:	00050a13          	mv	s4,a0
   17e20:	f19ff06f          	j	17d38 <__pow5mult+0x30>
   17e24:	00100593          	li	a1,1
   17e28:	00098513          	mv	a0,s3
   17e2c:	fa8ff0ef          	jal	ra,175d4 <_Balloc>
   17e30:	27100793          	li	a5,625
   17e34:	00f52c23          	sw	a5,24(a0)
   17e38:	00100793          	li	a5,1
   17e3c:	00f52a23          	sw	a5,20(a0)
   17e40:	06a9b823          	sd	a0,112(s3)
   17e44:	00050493          	mv	s1,a0
   17e48:	00053023          	sd	zero,0(a0)
   17e4c:	f01ff06f          	j	17d4c <__pow5mult+0x44>

0000000000017e50 <__lshift>:
   17e50:	fc010113          	addi	sp,sp,-64
   17e54:	01313c23          	sd	s3,24(sp)
   17e58:	0145a983          	lw	s3,20(a1)
   17e5c:	01613023          	sd	s6,0(sp)
   17e60:	00c5a783          	lw	a5,12(a1)
   17e64:	40565b1b          	sraiw	s6,a2,0x5
   17e68:	016989bb          	addw	s3,s3,s6
   17e6c:	02813823          	sd	s0,48(sp)
   17e70:	02913423          	sd	s1,40(sp)
   17e74:	03213023          	sd	s2,32(sp)
   17e78:	01413823          	sd	s4,16(sp)
   17e7c:	01513423          	sd	s5,8(sp)
   17e80:	02113c23          	sd	ra,56(sp)
   17e84:	0019849b          	addiw	s1,s3,1
   17e88:	00058913          	mv	s2,a1
   17e8c:	00060a93          	mv	s5,a2
   17e90:	000b0413          	mv	s0,s6
   17e94:	00050a13          	mv	s4,a0
   17e98:	0085a583          	lw	a1,8(a1)
   17e9c:	0097d863          	bge	a5,s1,17eac <__lshift+0x5c>
   17ea0:	0017979b          	slliw	a5,a5,0x1
   17ea4:	0015859b          	addiw	a1,a1,1
   17ea8:	fe97cce3          	blt	a5,s1,17ea0 <__lshift+0x50>
   17eac:	000a0513          	mv	a0,s4
   17eb0:	f24ff0ef          	jal	ra,175d4 <_Balloc>
   17eb4:	01850713          	addi	a4,a0,24
   17eb8:	03605c63          	blez	s6,17ef0 <__lshift+0xa0>
   17ebc:	fff4041b          	addiw	s0,s0,-1
   17ec0:	02041413          	slli	s0,s0,0x20
   17ec4:	02045413          	srli	s0,s0,0x20
   17ec8:	00740693          	addi	a3,s0,7
   17ecc:	00269693          	slli	a3,a3,0x2
   17ed0:	00d506b3          	add	a3,a0,a3
   17ed4:	00070793          	mv	a5,a4
   17ed8:	00478793          	addi	a5,a5,4
   17edc:	fe07ae23          	sw	zero,-4(a5)
   17ee0:	fed79ce3          	bne	a5,a3,17ed8 <__lshift+0x88>
   17ee4:	00140413          	addi	s0,s0,1
   17ee8:	00241413          	slli	s0,s0,0x2
   17eec:	00870733          	add	a4,a4,s0
   17ef0:	01492803          	lw	a6,20(s2)
   17ef4:	01890793          	addi	a5,s2,24
   17ef8:	01faf613          	andi	a2,s5,31
   17efc:	00281813          	slli	a6,a6,0x2
   17f00:	01078833          	add	a6,a5,a6
   17f04:	08060463          	beqz	a2,17f8c <__lshift+0x13c>
   17f08:	02000893          	li	a7,32
   17f0c:	40c888bb          	subw	a7,a7,a2
   17f10:	00000693          	li	a3,0
   17f14:	0007a583          	lw	a1,0(a5)
   17f18:	00470713          	addi	a4,a4,4
   17f1c:	00478793          	addi	a5,a5,4
   17f20:	00c595bb          	sllw	a1,a1,a2
   17f24:	00b6e6b3          	or	a3,a3,a1
   17f28:	fed72e23          	sw	a3,-4(a4)
   17f2c:	ffc7a683          	lw	a3,-4(a5)
   17f30:	0116d6bb          	srlw	a3,a3,a7
   17f34:	ff07e0e3          	bltu	a5,a6,17f14 <__lshift+0xc4>
   17f38:	00d72023          	sw	a3,0(a4)
   17f3c:	00068463          	beqz	a3,17f44 <__lshift+0xf4>
   17f40:	00048993          	mv	s3,s1
   17f44:	00892703          	lw	a4,8(s2)
   17f48:	078a3783          	ld	a5,120(s4)
   17f4c:	03813083          	ld	ra,56(sp)
   17f50:	00371713          	slli	a4,a4,0x3
   17f54:	00e787b3          	add	a5,a5,a4
   17f58:	0007b703          	ld	a4,0(a5)
   17f5c:	01352a23          	sw	s3,20(a0)
   17f60:	03013403          	ld	s0,48(sp)
   17f64:	00e93023          	sd	a4,0(s2)
   17f68:	0127b023          	sd	s2,0(a5)
   17f6c:	02813483          	ld	s1,40(sp)
   17f70:	02013903          	ld	s2,32(sp)
   17f74:	01813983          	ld	s3,24(sp)
   17f78:	01013a03          	ld	s4,16(sp)
   17f7c:	00813a83          	ld	s5,8(sp)
   17f80:	00013b03          	ld	s6,0(sp)
   17f84:	04010113          	addi	sp,sp,64
   17f88:	00008067          	ret
   17f8c:	00478793          	addi	a5,a5,4
   17f90:	ffc7a683          	lw	a3,-4(a5)
   17f94:	00470713          	addi	a4,a4,4
   17f98:	fed72e23          	sw	a3,-4(a4)
   17f9c:	fb07f4e3          	bgeu	a5,a6,17f44 <__lshift+0xf4>
   17fa0:	00478793          	addi	a5,a5,4
   17fa4:	ffc7a683          	lw	a3,-4(a5)
   17fa8:	00470713          	addi	a4,a4,4
   17fac:	fed72e23          	sw	a3,-4(a4)
   17fb0:	fd07eee3          	bltu	a5,a6,17f8c <__lshift+0x13c>
   17fb4:	f91ff06f          	j	17f44 <__lshift+0xf4>

0000000000017fb8 <__mcmp>:
   17fb8:	00050613          	mv	a2,a0
   17fbc:	0145a783          	lw	a5,20(a1)
   17fc0:	01452503          	lw	a0,20(a0)
   17fc4:	40f5053b          	subw	a0,a0,a5
   17fc8:	02051e63          	bnez	a0,18004 <__mcmp+0x4c>
   17fcc:	00279713          	slli	a4,a5,0x2
   17fd0:	01860613          	addi	a2,a2,24
   17fd4:	01858593          	addi	a1,a1,24
   17fd8:	00e607b3          	add	a5,a2,a4
   17fdc:	00e585b3          	add	a1,a1,a4
   17fe0:	0080006f          	j	17fe8 <__mcmp+0x30>
   17fe4:	02f67063          	bgeu	a2,a5,18004 <__mcmp+0x4c>
   17fe8:	ffc78793          	addi	a5,a5,-4
   17fec:	ffc58593          	addi	a1,a1,-4
   17ff0:	0007a683          	lw	a3,0(a5)
   17ff4:	0005a703          	lw	a4,0(a1)
   17ff8:	fee686e3          	beq	a3,a4,17fe4 <__mcmp+0x2c>
   17ffc:	fff00513          	li	a0,-1
   18000:	00e6f463          	bgeu	a3,a4,18008 <__mcmp+0x50>
   18004:	00008067          	ret
   18008:	00100513          	li	a0,1
   1800c:	00008067          	ret

0000000000018010 <__mdiff>:
   18010:	fd010113          	addi	sp,sp,-48
   18014:	01213823          	sd	s2,16(sp)
   18018:	01462703          	lw	a4,20(a2)
   1801c:	0145a903          	lw	s2,20(a1)
   18020:	02813023          	sd	s0,32(sp)
   18024:	00913c23          	sd	s1,24(sp)
   18028:	01313423          	sd	s3,8(sp)
   1802c:	01413023          	sd	s4,0(sp)
   18030:	02113423          	sd	ra,40(sp)
   18034:	40e9093b          	subw	s2,s2,a4
   18038:	00058993          	mv	s3,a1
   1803c:	00060a13          	mv	s4,a2
   18040:	01858413          	addi	s0,a1,24
   18044:	01860493          	addi	s1,a2,24
   18048:	04091863          	bnez	s2,18098 <__mdiff+0x88>
   1804c:	00271713          	slli	a4,a4,0x2
   18050:	00e407b3          	add	a5,s0,a4
   18054:	00e48733          	add	a4,s1,a4
   18058:	0080006f          	j	18060 <__mdiff+0x50>
   1805c:	16f47663          	bgeu	s0,a5,181c8 <__mdiff+0x1b8>
   18060:	ffc78793          	addi	a5,a5,-4
   18064:	ffc70713          	addi	a4,a4,-4
   18068:	0007a583          	lw	a1,0(a5)
   1806c:	00072683          	lw	a3,0(a4)
   18070:	fed586e3          	beq	a1,a3,1805c <__mdiff+0x4c>
   18074:	02d5f663          	bgeu	a1,a3,180a0 <__mdiff+0x90>
   18078:	00040713          	mv	a4,s0
   1807c:	00098793          	mv	a5,s3
   18080:	00048413          	mv	s0,s1
   18084:	000a0993          	mv	s3,s4
   18088:	00070493          	mv	s1,a4
   1808c:	00078a13          	mv	s4,a5
   18090:	00100913          	li	s2,1
   18094:	00c0006f          	j	180a0 <__mdiff+0x90>
   18098:	fe0940e3          	bltz	s2,18078 <__mdiff+0x68>
   1809c:	00000913          	li	s2,0
   180a0:	0089a583          	lw	a1,8(s3)
   180a4:	d30ff0ef          	jal	ra,175d4 <_Balloc>
   180a8:	0149a883          	lw	a7,20(s3)
   180ac:	014a2e83          	lw	t4,20(s4)
   180b0:	00010e37          	lui	t3,0x10
   180b4:	00289313          	slli	t1,a7,0x2
   180b8:	002e9e93          	slli	t4,t4,0x2
   180bc:	01252823          	sw	s2,16(a0)
   180c0:	00640333          	add	t1,s0,t1
   180c4:	01d48eb3          	add	t4,s1,t4
   180c8:	01850593          	addi	a1,a0,24
   180cc:	00000713          	li	a4,0
   180d0:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   180d4:	0080006f          	j	180dc <__mdiff+0xcc>
   180d8:	00080593          	mv	a1,a6
   180dc:	00042683          	lw	a3,0(s0)
   180e0:	0004a603          	lw	a2,0(s1)
   180e4:	00458813          	addi	a6,a1,4
   180e8:	01c6f7b3          	and	a5,a3,t3
   180ec:	00e787bb          	addw	a5,a5,a4
   180f0:	01c67733          	and	a4,a2,t3
   180f4:	40e787bb          	subw	a5,a5,a4
   180f8:	0106561b          	srliw	a2,a2,0x10
   180fc:	0106d71b          	srliw	a4,a3,0x10
   18100:	40c7073b          	subw	a4,a4,a2
   18104:	4107d69b          	sraiw	a3,a5,0x10
   18108:	00d7073b          	addw	a4,a4,a3
   1810c:	0107169b          	slliw	a3,a4,0x10
   18110:	01c7f7b3          	and	a5,a5,t3
   18114:	00d7e7b3          	or	a5,a5,a3
   18118:	0007879b          	sext.w	a5,a5
   1811c:	00448493          	addi	s1,s1,4
   18120:	fef82e23          	sw	a5,-4(a6)
   18124:	00440413          	addi	s0,s0,4
   18128:	4107571b          	sraiw	a4,a4,0x10
   1812c:	fbd4e6e3          	bltu	s1,t4,180d8 <__mdiff+0xc8>
   18130:	06647063          	bgeu	s0,t1,18190 <__mdiff+0x180>
   18134:	00010e37          	lui	t3,0x10
   18138:	00080593          	mv	a1,a6
   1813c:	00040613          	mv	a2,s0
   18140:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   18144:	00062683          	lw	a3,0(a2)
   18148:	00458593          	addi	a1,a1,4
   1814c:	00460613          	addi	a2,a2,4
   18150:	01c6f7b3          	and	a5,a3,t3
   18154:	00e787bb          	addw	a5,a5,a4
   18158:	0106d71b          	srliw	a4,a3,0x10
   1815c:	4107d69b          	sraiw	a3,a5,0x10
   18160:	00d7073b          	addw	a4,a4,a3
   18164:	0107169b          	slliw	a3,a4,0x10
   18168:	01c7f7b3          	and	a5,a5,t3
   1816c:	00d7e7b3          	or	a5,a5,a3
   18170:	0007879b          	sext.w	a5,a5
   18174:	fef5ae23          	sw	a5,-4(a1)
   18178:	4107571b          	sraiw	a4,a4,0x10
   1817c:	fc6664e3          	bltu	a2,t1,18144 <__mdiff+0x134>
   18180:	fff30593          	addi	a1,t1,-1
   18184:	408585b3          	sub	a1,a1,s0
   18188:	ffc5f593          	andi	a1,a1,-4
   1818c:	00b805b3          	add	a1,a6,a1
   18190:	00079a63          	bnez	a5,181a4 <__mdiff+0x194>
   18194:	ffc58593          	addi	a1,a1,-4
   18198:	0005a783          	lw	a5,0(a1)
   1819c:	fff8889b          	addiw	a7,a7,-1
   181a0:	fe078ae3          	beqz	a5,18194 <__mdiff+0x184>
   181a4:	02813083          	ld	ra,40(sp)
   181a8:	02013403          	ld	s0,32(sp)
   181ac:	01152a23          	sw	a7,20(a0)
   181b0:	01813483          	ld	s1,24(sp)
   181b4:	01013903          	ld	s2,16(sp)
   181b8:	00813983          	ld	s3,8(sp)
   181bc:	00013a03          	ld	s4,0(sp)
   181c0:	03010113          	addi	sp,sp,48
   181c4:	00008067          	ret
   181c8:	00000593          	li	a1,0
   181cc:	c08ff0ef          	jal	ra,175d4 <_Balloc>
   181d0:	02813083          	ld	ra,40(sp)
   181d4:	02013403          	ld	s0,32(sp)
   181d8:	00100793          	li	a5,1
   181dc:	00f52a23          	sw	a5,20(a0)
   181e0:	00052c23          	sw	zero,24(a0)
   181e4:	01813483          	ld	s1,24(sp)
   181e8:	01013903          	ld	s2,16(sp)
   181ec:	00813983          	ld	s3,8(sp)
   181f0:	00013a03          	ld	s4,0(sp)
   181f4:	03010113          	addi	sp,sp,48
   181f8:	00008067          	ret

00000000000181fc <__ulp>:
   181fc:	02055513          	srli	a0,a0,0x20
   18200:	7ff007b7          	lui	a5,0x7ff00
   18204:	00f577b3          	and	a5,a0,a5
   18208:	fcc00537          	lui	a0,0xfcc00
   1820c:	00f5053b          	addw	a0,a0,a5
   18210:	0005079b          	sext.w	a5,a0
   18214:	00f05663          	blez	a5,18220 <__ulp+0x24>
   18218:	02051513          	slli	a0,a0,0x20
   1821c:	00008067          	ret
   18220:	40a0053b          	negw	a0,a0
   18224:	4145579b          	sraiw	a5,a0,0x14
   18228:	01300713          	li	a4,19
   1822c:	00f74a63          	blt	a4,a5,18240 <__ulp+0x44>
   18230:	00080537          	lui	a0,0x80
   18234:	40f5553b          	sraw	a0,a0,a5
   18238:	02051513          	slli	a0,a0,0x20
   1823c:	00008067          	ret
   18240:	fec7871b          	addiw	a4,a5,-20
   18244:	01e00693          	li	a3,30
   18248:	00000513          	li	a0,0
   1824c:	00100793          	li	a5,1
   18250:	00e6c663          	blt	a3,a4,1825c <__ulp+0x60>
   18254:	800007b7          	lui	a5,0x80000
   18258:	00e7d7bb          	srlw	a5,a5,a4
   1825c:	02055513          	srli	a0,a0,0x20
   18260:	02079793          	slli	a5,a5,0x20
   18264:	0207d793          	srli	a5,a5,0x20
   18268:	02051513          	slli	a0,a0,0x20
   1826c:	00f56533          	or	a0,a0,a5
   18270:	00008067          	ret

0000000000018274 <__b2d>:
   18274:	fd010113          	addi	sp,sp,-48
   18278:	02813023          	sd	s0,32(sp)
   1827c:	01452403          	lw	s0,20(a0) # 80014 <__BSS_END__+0x5ce0c>
   18280:	01213823          	sd	s2,16(sp)
   18284:	01850913          	addi	s2,a0,24
   18288:	00241413          	slli	s0,s0,0x2
   1828c:	00890433          	add	s0,s2,s0
   18290:	00913c23          	sd	s1,24(sp)
   18294:	ffc42483          	lw	s1,-4(s0)
   18298:	01313423          	sd	s3,8(sp)
   1829c:	01413023          	sd	s4,0(sp)
   182a0:	00048513          	mv	a0,s1
   182a4:	00058a13          	mv	s4,a1
   182a8:	02113423          	sd	ra,40(sp)
   182ac:	e88ff0ef          	jal	ra,17934 <__hi0bits>
   182b0:	02000693          	li	a3,32
   182b4:	40a687bb          	subw	a5,a3,a0
   182b8:	00fa2023          	sw	a5,0(s4)
   182bc:	00a00793          	li	a5,10
   182c0:	ffc40993          	addi	s3,s0,-4
   182c4:	0aa7d663          	bge	a5,a0,18370 <__b2d+0xfc>
   182c8:	ff55079b          	addiw	a5,a0,-11
   182cc:	07397063          	bgeu	s2,s3,1832c <__b2d+0xb8>
   182d0:	ff842703          	lw	a4,-8(s0)
   182d4:	06078063          	beqz	a5,18334 <__b2d+0xc0>
   182d8:	40f6853b          	subw	a0,a3,a5
   182dc:	00f496bb          	sllw	a3,s1,a5
   182e0:	00a754bb          	srlw	s1,a4,a0
   182e4:	0096e6b3          	or	a3,a3,s1
   182e8:	3ff004b7          	lui	s1,0x3ff00
   182ec:	0096e6b3          	or	a3,a3,s1
   182f0:	00f7173b          	sllw	a4,a4,a5
   182f4:	ff840613          	addi	a2,s0,-8
   182f8:	02069793          	slli	a5,a3,0x20
   182fc:	0007069b          	sext.w	a3,a4
   18300:	00c97a63          	bgeu	s2,a2,18314 <__b2d+0xa0>
   18304:	ff442683          	lw	a3,-12(s0)
   18308:	00a6d53b          	srlw	a0,a3,a0
   1830c:	00e566b3          	or	a3,a0,a4
   18310:	0006869b          	sext.w	a3,a3
   18314:	0207d793          	srli	a5,a5,0x20
   18318:	02069693          	slli	a3,a3,0x20
   1831c:	0206d693          	srli	a3,a3,0x20
   18320:	02079793          	slli	a5,a5,0x20
   18324:	00d7e7b3          	or	a5,a5,a3
   18328:	0240006f          	j	1834c <__b2d+0xd8>
   1832c:	00000713          	li	a4,0
   18330:	08079663          	bnez	a5,183bc <__b2d+0x148>
   18334:	3ff007b7          	lui	a5,0x3ff00
   18338:	00f4e7b3          	or	a5,s1,a5
   1833c:	02071713          	slli	a4,a4,0x20
   18340:	02075713          	srli	a4,a4,0x20
   18344:	02079793          	slli	a5,a5,0x20
   18348:	00e7e7b3          	or	a5,a5,a4
   1834c:	02813083          	ld	ra,40(sp)
   18350:	02013403          	ld	s0,32(sp)
   18354:	01813483          	ld	s1,24(sp)
   18358:	01013903          	ld	s2,16(sp)
   1835c:	00813983          	ld	s3,8(sp)
   18360:	00013a03          	ld	s4,0(sp)
   18364:	00078513          	mv	a0,a5
   18368:	03010113          	addi	sp,sp,48
   1836c:	00008067          	ret
   18370:	00b00693          	li	a3,11
   18374:	40a686bb          	subw	a3,a3,a0
   18378:	3ff00737          	lui	a4,0x3ff00
   1837c:	00d4d7bb          	srlw	a5,s1,a3
   18380:	00e7e7b3          	or	a5,a5,a4
   18384:	02079793          	slli	a5,a5,0x20
   18388:	00000713          	li	a4,0
   1838c:	01397663          	bgeu	s2,s3,18398 <__b2d+0x124>
   18390:	ff842703          	lw	a4,-8(s0)
   18394:	00d7573b          	srlw	a4,a4,a3
   18398:	0155051b          	addiw	a0,a0,21
   1839c:	00a494bb          	sllw	s1,s1,a0
   183a0:	009764b3          	or	s1,a4,s1
   183a4:	0207d793          	srli	a5,a5,0x20
   183a8:	02049493          	slli	s1,s1,0x20
   183ac:	0204d493          	srli	s1,s1,0x20
   183b0:	02079793          	slli	a5,a5,0x20
   183b4:	0097e7b3          	or	a5,a5,s1
   183b8:	f95ff06f          	j	1834c <__b2d+0xd8>
   183bc:	00f497bb          	sllw	a5,s1,a5
   183c0:	3ff00537          	lui	a0,0x3ff00
   183c4:	00a7e7b3          	or	a5,a5,a0
   183c8:	02079793          	slli	a5,a5,0x20
   183cc:	00000693          	li	a3,0
   183d0:	f45ff06f          	j	18314 <__b2d+0xa0>

00000000000183d4 <__d2b>:
   183d4:	fc010113          	addi	sp,sp,-64
   183d8:	02913423          	sd	s1,40(sp)
   183dc:	00058493          	mv	s1,a1
   183e0:	00100593          	li	a1,1
   183e4:	02813823          	sd	s0,48(sp)
   183e8:	03213023          	sd	s2,32(sp)
   183ec:	01313c23          	sd	s3,24(sp)
   183f0:	01413823          	sd	s4,16(sp)
   183f4:	02113c23          	sd	ra,56(sp)
   183f8:	00060993          	mv	s3,a2
   183fc:	00068913          	mv	s2,a3
   18400:	9d4ff0ef          	jal	ra,175d4 <_Balloc>
   18404:	4204d793          	srai	a5,s1,0x20
   18408:	0147d41b          	srliw	s0,a5,0x14
   1840c:	7ff47413          	andi	s0,s0,2047
   18410:	02c79793          	slli	a5,a5,0x2c
   18414:	00050a13          	mv	s4,a0
   18418:	02c7d793          	srli	a5,a5,0x2c
   1841c:	00040663          	beqz	s0,18428 <__d2b+0x54>
   18420:	00100737          	lui	a4,0x100
   18424:	00e7e7b3          	or	a5,a5,a4
   18428:	00f12623          	sw	a5,12(sp)
   1842c:	0004849b          	sext.w	s1,s1
   18430:	08048e63          	beqz	s1,184cc <__d2b+0xf8>
   18434:	00810513          	addi	a0,sp,8
   18438:	00912423          	sw	s1,8(sp)
   1843c:	d6cff0ef          	jal	ra,179a8 <__lo0bits>
   18440:	06051063          	bnez	a0,184a0 <__d2b+0xcc>
   18444:	00812703          	lw	a4,8(sp)
   18448:	00c12783          	lw	a5,12(sp)
   1844c:	00ea2c23          	sw	a4,24(s4)
   18450:	00f034b3          	snez	s1,a5
   18454:	00148493          	addi	s1,s1,1 # 3ff00001 <__BSS_END__+0x3fedcdf9>
   18458:	00fa2e23          	sw	a5,28(s4)
   1845c:	009a2a23          	sw	s1,20(s4)
   18460:	08040863          	beqz	s0,184f0 <__d2b+0x11c>
   18464:	bcd4041b          	addiw	s0,s0,-1075
   18468:	00a4043b          	addw	s0,s0,a0
   1846c:	03500793          	li	a5,53
   18470:	0089a023          	sw	s0,0(s3)
   18474:	40a7853b          	subw	a0,a5,a0
   18478:	00a92023          	sw	a0,0(s2)
   1847c:	03813083          	ld	ra,56(sp)
   18480:	03013403          	ld	s0,48(sp)
   18484:	000a0513          	mv	a0,s4
   18488:	02813483          	ld	s1,40(sp)
   1848c:	02013903          	ld	s2,32(sp)
   18490:	01813983          	ld	s3,24(sp)
   18494:	01013a03          	ld	s4,16(sp)
   18498:	04010113          	addi	sp,sp,64
   1849c:	00008067          	ret
   184a0:	00c12703          	lw	a4,12(sp)
   184a4:	00812683          	lw	a3,8(sp)
   184a8:	02000793          	li	a5,32
   184ac:	40a787bb          	subw	a5,a5,a0
   184b0:	00f717bb          	sllw	a5,a4,a5
   184b4:	00d7e7b3          	or	a5,a5,a3
   184b8:	00a7573b          	srlw	a4,a4,a0
   184bc:	00fa2c23          	sw	a5,24(s4)
   184c0:	00e12623          	sw	a4,12(sp)
   184c4:	0007079b          	sext.w	a5,a4
   184c8:	f89ff06f          	j	18450 <__d2b+0x7c>
   184cc:	00c10513          	addi	a0,sp,12
   184d0:	cd8ff0ef          	jal	ra,179a8 <__lo0bits>
   184d4:	00100793          	li	a5,1
   184d8:	00fa2a23          	sw	a5,20(s4)
   184dc:	00c12783          	lw	a5,12(sp)
   184e0:	0205051b          	addiw	a0,a0,32
   184e4:	00100493          	li	s1,1
   184e8:	00fa2c23          	sw	a5,24(s4)
   184ec:	f6041ce3          	bnez	s0,18464 <__d2b+0x90>
   184f0:	bce5051b          	addiw	a0,a0,-1074
   184f4:	00249793          	slli	a5,s1,0x2
   184f8:	00a9a023          	sw	a0,0(s3)
   184fc:	00fa07b3          	add	a5,s4,a5
   18500:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedce0c>
   18504:	0054949b          	slliw	s1,s1,0x5
   18508:	c2cff0ef          	jal	ra,17934 <__hi0bits>
   1850c:	40a484bb          	subw	s1,s1,a0
   18510:	00992023          	sw	s1,0(s2)
   18514:	f69ff06f          	j	1847c <__d2b+0xa8>

0000000000018518 <__ratio>:
   18518:	fd010113          	addi	sp,sp,-48
   1851c:	00913c23          	sd	s1,24(sp)
   18520:	00058493          	mv	s1,a1
   18524:	00810593          	addi	a1,sp,8
   18528:	02113423          	sd	ra,40(sp)
   1852c:	02813023          	sd	s0,32(sp)
   18530:	01213823          	sd	s2,16(sp)
   18534:	00050913          	mv	s2,a0
   18538:	d3dff0ef          	jal	ra,18274 <__b2d>
   1853c:	00c10593          	addi	a1,sp,12
   18540:	00050413          	mv	s0,a0
   18544:	00048513          	mv	a0,s1
   18548:	d2dff0ef          	jal	ra,18274 <__b2d>
   1854c:	0144a703          	lw	a4,20(s1)
   18550:	01492783          	lw	a5,20(s2)
   18554:	00c12683          	lw	a3,12(sp)
   18558:	00050593          	mv	a1,a0
   1855c:	40e787bb          	subw	a5,a5,a4
   18560:	00812703          	lw	a4,8(sp)
   18564:	0057979b          	slliw	a5,a5,0x5
   18568:	40d7073b          	subw	a4,a4,a3
   1856c:	00e7873b          	addw	a4,a5,a4
   18570:	00070793          	mv	a5,a4
   18574:	04e05263          	blez	a4,185b8 <__ratio+0xa0>
   18578:	02045713          	srli	a4,s0,0x20
   1857c:	0147979b          	slliw	a5,a5,0x14
   18580:	00e787bb          	addw	a5,a5,a4
   18584:	fff00713          	li	a4,-1
   18588:	02075713          	srli	a4,a4,0x20
   1858c:	02079793          	slli	a5,a5,0x20
   18590:	00877433          	and	s0,a4,s0
   18594:	00f46433          	or	s0,s0,a5
   18598:	00040513          	mv	a0,s0
   1859c:	004070ef          	jal	ra,1f5a0 <__divdf3>
   185a0:	02813083          	ld	ra,40(sp)
   185a4:	02013403          	ld	s0,32(sp)
   185a8:	01813483          	ld	s1,24(sp)
   185ac:	01013903          	ld	s2,16(sp)
   185b0:	03010113          	addi	sp,sp,48
   185b4:	00008067          	ret
   185b8:	02055713          	srli	a4,a0,0x20
   185bc:	0147979b          	slliw	a5,a5,0x14
   185c0:	fff00513          	li	a0,-1
   185c4:	40f707bb          	subw	a5,a4,a5
   185c8:	02055513          	srli	a0,a0,0x20
   185cc:	02079793          	slli	a5,a5,0x20
   185d0:	00b575b3          	and	a1,a0,a1
   185d4:	00f5e5b3          	or	a1,a1,a5
   185d8:	fc1ff06f          	j	18598 <__ratio+0x80>

00000000000185dc <_mprec_log10>:
   185dc:	fe010113          	addi	sp,sp,-32
   185e0:	00813823          	sd	s0,16(sp)
   185e4:	00113c23          	sd	ra,24(sp)
   185e8:	00913423          	sd	s1,8(sp)
   185ec:	01700793          	li	a5,23
   185f0:	00050413          	mv	s0,a0
   185f4:	04a7d063          	bge	a5,a0,18634 <_mprec_log10+0x58>
   185f8:	0000b797          	auipc	a5,0xb
   185fc:	b3878793          	addi	a5,a5,-1224 # 23130 <__SDATA_BEGIN__+0x10>
   18600:	0007b503          	ld	a0,0(a5)
   18604:	0000b797          	auipc	a5,0xb
   18608:	b3478793          	addi	a5,a5,-1228 # 23138 <__SDATA_BEGIN__+0x18>
   1860c:	0007b483          	ld	s1,0(a5)
   18610:	fff4041b          	addiw	s0,s0,-1
   18614:	00048593          	mv	a1,s1
   18618:	334070ef          	jal	ra,1f94c <__muldf3>
   1861c:	fe041ae3          	bnez	s0,18610 <_mprec_log10+0x34>
   18620:	01813083          	ld	ra,24(sp)
   18624:	01013403          	ld	s0,16(sp)
   18628:	00813483          	ld	s1,8(sp)
   1862c:	02010113          	addi	sp,sp,32
   18630:	00008067          	ret
   18634:	00351413          	slli	s0,a0,0x3
   18638:	00009797          	auipc	a5,0x9
   1863c:	0c078793          	addi	a5,a5,192 # 216f8 <p05.3332>
   18640:	00878433          	add	s0,a5,s0
   18644:	01043503          	ld	a0,16(s0)
   18648:	01813083          	ld	ra,24(sp)
   1864c:	01013403          	ld	s0,16(sp)
   18650:	00813483          	ld	s1,8(sp)
   18654:	02010113          	addi	sp,sp,32
   18658:	00008067          	ret

000000000001865c <__copybits>:
   1865c:	01462683          	lw	a3,20(a2)
   18660:	fff5859b          	addiw	a1,a1,-1
   18664:	4055d59b          	sraiw	a1,a1,0x5
   18668:	00158593          	addi	a1,a1,1
   1866c:	01860793          	addi	a5,a2,24
   18670:	00269693          	slli	a3,a3,0x2
   18674:	00259593          	slli	a1,a1,0x2
   18678:	00d786b3          	add	a3,a5,a3
   1867c:	00b505b3          	add	a1,a0,a1
   18680:	02d7f863          	bgeu	a5,a3,186b0 <__copybits+0x54>
   18684:	00050713          	mv	a4,a0
   18688:	00478793          	addi	a5,a5,4
   1868c:	ffc7a803          	lw	a6,-4(a5)
   18690:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdcdfc>
   18694:	ff072e23          	sw	a6,-4(a4)
   18698:	fed7e8e3          	bltu	a5,a3,18688 <__copybits+0x2c>
   1869c:	40c687b3          	sub	a5,a3,a2
   186a0:	fe778793          	addi	a5,a5,-25
   186a4:	ffc7f793          	andi	a5,a5,-4
   186a8:	00478793          	addi	a5,a5,4
   186ac:	00f50533          	add	a0,a0,a5
   186b0:	00b57863          	bgeu	a0,a1,186c0 <__copybits+0x64>
   186b4:	00450513          	addi	a0,a0,4 # 3ff00004 <__BSS_END__+0x3fedcdfc>
   186b8:	fe052e23          	sw	zero,-4(a0)
   186bc:	feb56ce3          	bltu	a0,a1,186b4 <__copybits+0x58>
   186c0:	00008067          	ret

00000000000186c4 <__any_on>:
   186c4:	01452703          	lw	a4,20(a0)
   186c8:	4055d613          	srai	a2,a1,0x5
   186cc:	01850693          	addi	a3,a0,24
   186d0:	02c75a63          	bge	a4,a2,18704 <__any_on+0x40>
   186d4:	00271793          	slli	a5,a4,0x2
   186d8:	00f687b3          	add	a5,a3,a5
   186dc:	04f6fc63          	bgeu	a3,a5,18734 <__any_on+0x70>
   186e0:	ffc7a503          	lw	a0,-4(a5)
   186e4:	ffc78793          	addi	a5,a5,-4
   186e8:	00051a63          	bnez	a0,186fc <__any_on+0x38>
   186ec:	04f6f263          	bgeu	a3,a5,18730 <__any_on+0x6c>
   186f0:	ffc78793          	addi	a5,a5,-4
   186f4:	0007a703          	lw	a4,0(a5)
   186f8:	fe070ae3          	beqz	a4,186ec <__any_on+0x28>
   186fc:	00100513          	li	a0,1
   18700:	00008067          	ret
   18704:	00261793          	slli	a5,a2,0x2
   18708:	00f687b3          	add	a5,a3,a5
   1870c:	fce658e3          	bge	a2,a4,186dc <__any_on+0x18>
   18710:	01f5f593          	andi	a1,a1,31
   18714:	fc0584e3          	beqz	a1,186dc <__any_on+0x18>
   18718:	0007a603          	lw	a2,0(a5)
   1871c:	00100513          	li	a0,1
   18720:	00b6573b          	srlw	a4,a2,a1
   18724:	00b715bb          	sllw	a1,a4,a1
   18728:	fac58ae3          	beq	a1,a2,186dc <__any_on+0x18>
   1872c:	00008067          	ret
   18730:	00008067          	ret
   18734:	00000513          	li	a0,0
   18738:	00008067          	ret

000000000001873c <_sbrk_r>:
   1873c:	ff010113          	addi	sp,sp,-16
   18740:	00813023          	sd	s0,0(sp)
   18744:	00050413          	mv	s0,a0
   18748:	00058513          	mv	a0,a1
   1874c:	0000b797          	auipc	a5,0xb
   18750:	aa07aa23          	sw	zero,-1356(a5) # 23200 <errno>
   18754:	00113423          	sd	ra,8(sp)
   18758:	4e1060ef          	jal	ra,1f438 <_sbrk>
   1875c:	fff00793          	li	a5,-1
   18760:	00f50a63          	beq	a0,a5,18774 <_sbrk_r+0x38>
   18764:	00813083          	ld	ra,8(sp)
   18768:	00013403          	ld	s0,0(sp)
   1876c:	01010113          	addi	sp,sp,16
   18770:	00008067          	ret
   18774:	0000b797          	auipc	a5,0xb
   18778:	a8c78793          	addi	a5,a5,-1396 # 23200 <errno>
   1877c:	0007a783          	lw	a5,0(a5)
   18780:	fe0782e3          	beqz	a5,18764 <_sbrk_r+0x28>
   18784:	00f42023          	sw	a5,0(s0)
   18788:	00813083          	ld	ra,8(sp)
   1878c:	00013403          	ld	s0,0(sp)
   18790:	01010113          	addi	sp,sp,16
   18794:	00008067          	ret

0000000000018798 <frexp>:
   18798:	fe010113          	addi	sp,sp,-32
   1879c:	00813823          	sd	s0,16(sp)
   187a0:	42055693          	srai	a3,a0,0x20
   187a4:	80000437          	lui	s0,0x80000
   187a8:	00913423          	sd	s1,8(sp)
   187ac:	00113c23          	sd	ra,24(sp)
   187b0:	0006861b          	sext.w	a2,a3
   187b4:	fff44413          	not	s0,s0
   187b8:	00058493          	mv	s1,a1
   187bc:	0005a023          	sw	zero,0(a1)
   187c0:	008677b3          	and	a5,a2,s0
   187c4:	7ff005b7          	lui	a1,0x7ff00
   187c8:	00050713          	mv	a4,a0
   187cc:	06b7dc63          	bge	a5,a1,18844 <frexp+0xac>
   187d0:	00a7e5b3          	or	a1,a5,a0
   187d4:	0005859b          	sext.w	a1,a1
   187d8:	06058663          	beqz	a1,18844 <frexp+0xac>
   187dc:	7ff005b7          	lui	a1,0x7ff00
   187e0:	00b67633          	and	a2,a2,a1
   187e4:	00000593          	li	a1,0
   187e8:	02061263          	bnez	a2,1880c <frexp+0x74>
   187ec:	0000b797          	auipc	a5,0xb
   187f0:	95478793          	addi	a5,a5,-1708 # 23140 <__SDATA_BEGIN__+0x20>
   187f4:	0007b583          	ld	a1,0(a5)
   187f8:	154070ef          	jal	ra,1f94c <__muldf3>
   187fc:	42055693          	srai	a3,a0,0x20
   18800:	00050713          	mv	a4,a0
   18804:	0086f7b3          	and	a5,a3,s0
   18808:	fca00593          	li	a1,-54
   1880c:	80100637          	lui	a2,0x80100
   18810:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800dcdf7>
   18814:	00c6f6b3          	and	a3,a3,a2
   18818:	3fe00637          	lui	a2,0x3fe00
   1881c:	00c6e6b3          	or	a3,a3,a2
   18820:	4147d79b          	sraiw	a5,a5,0x14
   18824:	fff00613          	li	a2,-1
   18828:	c027879b          	addiw	a5,a5,-1022
   1882c:	02065613          	srli	a2,a2,0x20
   18830:	00b787bb          	addw	a5,a5,a1
   18834:	02069693          	slli	a3,a3,0x20
   18838:	00e67733          	and	a4,a2,a4
   1883c:	00f4a023          	sw	a5,0(s1)
   18840:	00d76733          	or	a4,a4,a3
   18844:	01813083          	ld	ra,24(sp)
   18848:	01013403          	ld	s0,16(sp)
   1884c:	00813483          	ld	s1,8(sp)
   18850:	00070513          	mv	a0,a4
   18854:	02010113          	addi	sp,sp,32
   18858:	00008067          	ret

000000000001885c <_sprintf_r>:
   1885c:	f0010113          	addi	sp,sp,-256
   18860:	0d810e13          	addi	t3,sp,216
   18864:	0ef13423          	sd	a5,232(sp)
   18868:	80000337          	lui	t1,0x80000
   1886c:	ffff07b7          	lui	a5,0xffff0
   18870:	00058e93          	mv	t4,a1
   18874:	fff34313          	not	t1,t1
   18878:	0cd13c23          	sd	a3,216(sp)
   1887c:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcd000>
   18880:	01010593          	addi	a1,sp,16
   18884:	000e0693          	mv	a3,t3
   18888:	0c113423          	sd	ra,200(sp)
   1888c:	02f12023          	sw	a5,32(sp)
   18890:	0ee13023          	sd	a4,224(sp)
   18894:	0f013823          	sd	a6,240(sp)
   18898:	0f113c23          	sd	a7,248(sp)
   1889c:	01d13823          	sd	t4,16(sp)
   188a0:	03d13423          	sd	t4,40(sp)
   188a4:	02612823          	sw	t1,48(sp)
   188a8:	00612e23          	sw	t1,28(sp)
   188ac:	01c13423          	sd	t3,8(sp)
   188b0:	5a0000ef          	jal	ra,18e50 <_svfprintf_r>
   188b4:	01013783          	ld	a5,16(sp)
   188b8:	00078023          	sb	zero,0(a5)
   188bc:	0c813083          	ld	ra,200(sp)
   188c0:	10010113          	addi	sp,sp,256
   188c4:	00008067          	ret

00000000000188c8 <sprintf>:
   188c8:	00050e93          	mv	t4,a0
   188cc:	75818513          	addi	a0,gp,1880 # 23160 <_impure_ptr>
   188d0:	f0010113          	addi	sp,sp,-256
   188d4:	00053503          	ld	a0,0(a0)
   188d8:	0d010e13          	addi	t3,sp,208
   188dc:	0ef13423          	sd	a5,232(sp)
   188e0:	80000337          	lui	t1,0x80000
   188e4:	ffff07b7          	lui	a5,0xffff0
   188e8:	fff34313          	not	t1,t1
   188ec:	0cc13823          	sd	a2,208(sp)
   188f0:	0cd13c23          	sd	a3,216(sp)
   188f4:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcd000>
   188f8:	00058613          	mv	a2,a1
   188fc:	000e0693          	mv	a3,t3
   18900:	01010593          	addi	a1,sp,16
   18904:	0c113423          	sd	ra,200(sp)
   18908:	02f12023          	sw	a5,32(sp)
   1890c:	0ee13023          	sd	a4,224(sp)
   18910:	0f013823          	sd	a6,240(sp)
   18914:	0f113c23          	sd	a7,248(sp)
   18918:	01d13823          	sd	t4,16(sp)
   1891c:	03d13423          	sd	t4,40(sp)
   18920:	02612823          	sw	t1,48(sp)
   18924:	00612e23          	sw	t1,28(sp)
   18928:	01c13423          	sd	t3,8(sp)
   1892c:	524000ef          	jal	ra,18e50 <_svfprintf_r>
   18930:	01013783          	ld	a5,16(sp)
   18934:	00078023          	sb	zero,0(a5)
   18938:	0c813083          	ld	ra,200(sp)
   1893c:	10010113          	addi	sp,sp,256
   18940:	00008067          	ret

0000000000018944 <__sread>:
   18944:	ff010113          	addi	sp,sp,-16
   18948:	00813023          	sd	s0,0(sp)
   1894c:	00058413          	mv	s0,a1
   18950:	01259583          	lh	a1,18(a1) # 7ff00012 <__BSS_END__+0x7fedce0a>
   18954:	00113423          	sd	ra,8(sp)
   18958:	501040ef          	jal	ra,1d658 <_read_r>
   1895c:	02054063          	bltz	a0,1897c <__sread+0x38>
   18960:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdce88>
   18964:	00813083          	ld	ra,8(sp)
   18968:	00a787b3          	add	a5,a5,a0
   1896c:	08f43823          	sd	a5,144(s0)
   18970:	00013403          	ld	s0,0(sp)
   18974:	01010113          	addi	sp,sp,16
   18978:	00008067          	ret
   1897c:	01045783          	lhu	a5,16(s0)
   18980:	fffff737          	lui	a4,0xfffff
   18984:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdbdf7>
   18988:	00e7f7b3          	and	a5,a5,a4
   1898c:	00f41823          	sh	a5,16(s0)
   18990:	00813083          	ld	ra,8(sp)
   18994:	00013403          	ld	s0,0(sp)
   18998:	01010113          	addi	sp,sp,16
   1899c:	00008067          	ret

00000000000189a0 <__seofread>:
   189a0:	00000513          	li	a0,0
   189a4:	00008067          	ret

00000000000189a8 <__swrite>:
   189a8:	01059783          	lh	a5,16(a1)
   189ac:	fd010113          	addi	sp,sp,-48
   189b0:	02813023          	sd	s0,32(sp)
   189b4:	00913c23          	sd	s1,24(sp)
   189b8:	01213823          	sd	s2,16(sp)
   189bc:	01313423          	sd	s3,8(sp)
   189c0:	02113423          	sd	ra,40(sp)
   189c4:	1007f713          	andi	a4,a5,256
   189c8:	00058413          	mv	s0,a1
   189cc:	00050493          	mv	s1,a0
   189d0:	00060913          	mv	s2,a2
   189d4:	00068993          	mv	s3,a3
   189d8:	01259583          	lh	a1,18(a1)
   189dc:	02071e63          	bnez	a4,18a18 <__swrite+0x70>
   189e0:	fffff737          	lui	a4,0xfffff
   189e4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdbdf7>
   189e8:	00e7f7b3          	and	a5,a5,a4
   189ec:	00f41823          	sh	a5,16(s0)
   189f0:	02013403          	ld	s0,32(sp)
   189f4:	02813083          	ld	ra,40(sp)
   189f8:	00098693          	mv	a3,s3
   189fc:	00090613          	mv	a2,s2
   18a00:	00813983          	ld	s3,8(sp)
   18a04:	01013903          	ld	s2,16(sp)
   18a08:	00048513          	mv	a0,s1
   18a0c:	01813483          	ld	s1,24(sp)
   18a10:	03010113          	addi	sp,sp,48
   18a14:	7910306f          	j	1c9a4 <_write_r>
   18a18:	00200693          	li	a3,2
   18a1c:	00000613          	li	a2,0
   18a20:	195040ef          	jal	ra,1d3b4 <_lseek_r>
   18a24:	01041783          	lh	a5,16(s0)
   18a28:	01241583          	lh	a1,18(s0)
   18a2c:	fb5ff06f          	j	189e0 <__swrite+0x38>

0000000000018a30 <__sseek>:
   18a30:	ff010113          	addi	sp,sp,-16
   18a34:	00813023          	sd	s0,0(sp)
   18a38:	00058413          	mv	s0,a1
   18a3c:	01259583          	lh	a1,18(a1)
   18a40:	00113423          	sd	ra,8(sp)
   18a44:	171040ef          	jal	ra,1d3b4 <_lseek_r>
   18a48:	fff00793          	li	a5,-1
   18a4c:	02f50463          	beq	a0,a5,18a74 <__sseek+0x44>
   18a50:	01045783          	lhu	a5,16(s0)
   18a54:	00001737          	lui	a4,0x1
   18a58:	08a43823          	sd	a0,144(s0)
   18a5c:	00e7e7b3          	or	a5,a5,a4
   18a60:	00f41823          	sh	a5,16(s0)
   18a64:	00813083          	ld	ra,8(sp)
   18a68:	00013403          	ld	s0,0(sp)
   18a6c:	01010113          	addi	sp,sp,16
   18a70:	00008067          	ret
   18a74:	01045783          	lhu	a5,16(s0)
   18a78:	fffff737          	lui	a4,0xfffff
   18a7c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdbdf7>
   18a80:	00e7f7b3          	and	a5,a5,a4
   18a84:	00f41823          	sh	a5,16(s0)
   18a88:	00813083          	ld	ra,8(sp)
   18a8c:	00013403          	ld	s0,0(sp)
   18a90:	01010113          	addi	sp,sp,16
   18a94:	00008067          	ret

0000000000018a98 <__sclose>:
   18a98:	01259583          	lh	a1,18(a1)
   18a9c:	0380406f          	j	1cad4 <_close_r>

0000000000018aa0 <strcmp>:
   18aa0:	00b56733          	or	a4,a0,a1
   18aa4:	fff00393          	li	t2,-1
   18aa8:	00777713          	andi	a4,a4,7
   18aac:	0c071c63          	bnez	a4,18b84 <strcmp+0xe4>
   18ab0:	0000a797          	auipc	a5,0xa
   18ab4:	6987b783          	ld	a5,1688(a5) # 23148 <mask>
   18ab8:	00053603          	ld	a2,0(a0)
   18abc:	0005b683          	ld	a3,0(a1)
   18ac0:	00f672b3          	and	t0,a2,a5
   18ac4:	00f66333          	or	t1,a2,a5
   18ac8:	00f282b3          	add	t0,t0,a5
   18acc:	0062e2b3          	or	t0,t0,t1
   18ad0:	0c729e63          	bne	t0,t2,18bac <strcmp+0x10c>
   18ad4:	04d61663          	bne	a2,a3,18b20 <strcmp+0x80>
   18ad8:	00853603          	ld	a2,8(a0)
   18adc:	0085b683          	ld	a3,8(a1)
   18ae0:	00f672b3          	and	t0,a2,a5
   18ae4:	00f66333          	or	t1,a2,a5
   18ae8:	00f282b3          	add	t0,t0,a5
   18aec:	0062e2b3          	or	t0,t0,t1
   18af0:	0a729a63          	bne	t0,t2,18ba4 <strcmp+0x104>
   18af4:	02d61663          	bne	a2,a3,18b20 <strcmp+0x80>
   18af8:	01053603          	ld	a2,16(a0)
   18afc:	0105b683          	ld	a3,16(a1)
   18b00:	00f672b3          	and	t0,a2,a5
   18b04:	00f66333          	or	t1,a2,a5
   18b08:	00f282b3          	add	t0,t0,a5
   18b0c:	0062e2b3          	or	t0,t0,t1
   18b10:	0a729463          	bne	t0,t2,18bb8 <strcmp+0x118>
   18b14:	01850513          	addi	a0,a0,24
   18b18:	01858593          	addi	a1,a1,24
   18b1c:	f8d60ee3          	beq	a2,a3,18ab8 <strcmp+0x18>
   18b20:	03061713          	slli	a4,a2,0x30
   18b24:	03069793          	slli	a5,a3,0x30
   18b28:	02f71a63          	bne	a4,a5,18b5c <strcmp+0xbc>
   18b2c:	02061713          	slli	a4,a2,0x20
   18b30:	02069793          	slli	a5,a3,0x20
   18b34:	02f71463          	bne	a4,a5,18b5c <strcmp+0xbc>
   18b38:	01061713          	slli	a4,a2,0x10
   18b3c:	01069793          	slli	a5,a3,0x10
   18b40:	00f71e63          	bne	a4,a5,18b5c <strcmp+0xbc>
   18b44:	03065713          	srli	a4,a2,0x30
   18b48:	0306d793          	srli	a5,a3,0x30
   18b4c:	40f70533          	sub	a0,a4,a5
   18b50:	0ff57593          	andi	a1,a0,255
   18b54:	02059063          	bnez	a1,18b74 <strcmp+0xd4>
   18b58:	00008067          	ret
   18b5c:	03075713          	srli	a4,a4,0x30
   18b60:	0307d793          	srli	a5,a5,0x30
   18b64:	40f70533          	sub	a0,a4,a5
   18b68:	0ff57593          	andi	a1,a0,255
   18b6c:	00059463          	bnez	a1,18b74 <strcmp+0xd4>
   18b70:	00008067          	ret
   18b74:	0ff77713          	andi	a4,a4,255
   18b78:	0ff7f793          	andi	a5,a5,255
   18b7c:	40f70533          	sub	a0,a4,a5
   18b80:	00008067          	ret
   18b84:	00054603          	lbu	a2,0(a0)
   18b88:	0005c683          	lbu	a3,0(a1)
   18b8c:	00150513          	addi	a0,a0,1
   18b90:	00158593          	addi	a1,a1,1
   18b94:	00d61463          	bne	a2,a3,18b9c <strcmp+0xfc>
   18b98:	fe0616e3          	bnez	a2,18b84 <strcmp+0xe4>
   18b9c:	40d60533          	sub	a0,a2,a3
   18ba0:	00008067          	ret
   18ba4:	00850513          	addi	a0,a0,8
   18ba8:	00858593          	addi	a1,a1,8
   18bac:	fcd61ce3          	bne	a2,a3,18b84 <strcmp+0xe4>
   18bb0:	00000513          	li	a0,0
   18bb4:	00008067          	ret
   18bb8:	01050513          	addi	a0,a0,16
   18bbc:	01058593          	addi	a1,a1,16
   18bc0:	fcd612e3          	bne	a2,a3,18b84 <strcmp+0xe4>
   18bc4:	00000513          	li	a0,0
   18bc8:	00008067          	ret

0000000000018bcc <strcpy>:
   18bcc:	00b567b3          	or	a5,a0,a1
   18bd0:	0077f793          	andi	a5,a5,7
   18bd4:	0a079863          	bnez	a5,18c84 <strcpy+0xb8>
   18bd8:	0000a797          	auipc	a5,0xa
   18bdc:	57078793          	addi	a5,a5,1392 # 23148 <mask>
   18be0:	0007b683          	ld	a3,0(a5)
   18be4:	0005b703          	ld	a4,0(a1)
   18be8:	fff00613          	li	a2,-1
   18bec:	00d777b3          	and	a5,a4,a3
   18bf0:	00d787b3          	add	a5,a5,a3
   18bf4:	00e7e7b3          	or	a5,a5,a4
   18bf8:	00d7e7b3          	or	a5,a5,a3
   18bfc:	0ac79263          	bne	a5,a2,18ca0 <strcpy+0xd4>
   18c00:	00050613          	mv	a2,a0
   18c04:	fff00813          	li	a6,-1
   18c08:	00860613          	addi	a2,a2,8 # 3fe00008 <__BSS_END__+0x3fddce00>
   18c0c:	00858593          	addi	a1,a1,8
   18c10:	fee63c23          	sd	a4,-8(a2)
   18c14:	0005b703          	ld	a4,0(a1)
   18c18:	00d777b3          	and	a5,a4,a3
   18c1c:	00d787b3          	add	a5,a5,a3
   18c20:	00e7e7b3          	or	a5,a5,a4
   18c24:	00d7e7b3          	or	a5,a5,a3
   18c28:	ff0780e3          	beq	a5,a6,18c08 <strcpy+0x3c>
   18c2c:	0005c783          	lbu	a5,0(a1)
   18c30:	0015c703          	lbu	a4,1(a1)
   18c34:	0025c683          	lbu	a3,2(a1)
   18c38:	00f60023          	sb	a5,0(a2)
   18c3c:	04078263          	beqz	a5,18c80 <strcpy+0xb4>
   18c40:	00e600a3          	sb	a4,1(a2)
   18c44:	02070e63          	beqz	a4,18c80 <strcpy+0xb4>
   18c48:	0035c783          	lbu	a5,3(a1)
   18c4c:	00d60123          	sb	a3,2(a2)
   18c50:	02068863          	beqz	a3,18c80 <strcpy+0xb4>
   18c54:	0045c703          	lbu	a4,4(a1)
   18c58:	00f601a3          	sb	a5,3(a2)
   18c5c:	02078263          	beqz	a5,18c80 <strcpy+0xb4>
   18c60:	0055c783          	lbu	a5,5(a1)
   18c64:	00e60223          	sb	a4,4(a2)
   18c68:	00070c63          	beqz	a4,18c80 <strcpy+0xb4>
   18c6c:	0065c703          	lbu	a4,6(a1)
   18c70:	00f602a3          	sb	a5,5(a2)
   18c74:	00078663          	beqz	a5,18c80 <strcpy+0xb4>
   18c78:	00e60323          	sb	a4,6(a2)
   18c7c:	02071663          	bnez	a4,18ca8 <strcpy+0xdc>
   18c80:	00008067          	ret
   18c84:	00050793          	mv	a5,a0
   18c88:	0005c703          	lbu	a4,0(a1)
   18c8c:	00178793          	addi	a5,a5,1
   18c90:	00158593          	addi	a1,a1,1
   18c94:	fee78fa3          	sb	a4,-1(a5)
   18c98:	fe0718e3          	bnez	a4,18c88 <strcpy+0xbc>
   18c9c:	00008067          	ret
   18ca0:	00050613          	mv	a2,a0
   18ca4:	f89ff06f          	j	18c2c <strcpy+0x60>
   18ca8:	000603a3          	sb	zero,7(a2)
   18cac:	00008067          	ret

0000000000018cb0 <strlen>:
   18cb0:	00757793          	andi	a5,a0,7
   18cb4:	00050713          	mv	a4,a0
   18cb8:	06079e63          	bnez	a5,18d34 <strlen+0x84>
   18cbc:	0000a797          	auipc	a5,0xa
   18cc0:	48c78793          	addi	a5,a5,1164 # 23148 <mask>
   18cc4:	0007b683          	ld	a3,0(a5)
   18cc8:	fff00593          	li	a1,-1
   18ccc:	00870713          	addi	a4,a4,8
   18cd0:	ff873603          	ld	a2,-8(a4)
   18cd4:	00d677b3          	and	a5,a2,a3
   18cd8:	00d787b3          	add	a5,a5,a3
   18cdc:	00c7e7b3          	or	a5,a5,a2
   18ce0:	00d7e7b3          	or	a5,a5,a3
   18ce4:	feb784e3          	beq	a5,a1,18ccc <strlen+0x1c>
   18ce8:	ff874783          	lbu	a5,-8(a4)
   18cec:	40a706b3          	sub	a3,a4,a0
   18cf0:	06078463          	beqz	a5,18d58 <strlen+0xa8>
   18cf4:	ff974783          	lbu	a5,-7(a4)
   18cf8:	04078c63          	beqz	a5,18d50 <strlen+0xa0>
   18cfc:	ffa74783          	lbu	a5,-6(a4)
   18d00:	06078463          	beqz	a5,18d68 <strlen+0xb8>
   18d04:	ffb74783          	lbu	a5,-5(a4)
   18d08:	04078c63          	beqz	a5,18d60 <strlen+0xb0>
   18d0c:	ffc74603          	lbu	a2,-4(a4)
   18d10:	ffd74583          	lbu	a1,-3(a4)
   18d14:	ffe74783          	lbu	a5,-2(a4)
   18d18:	04060c63          	beqz	a2,18d70 <strlen+0xc0>
   18d1c:	04058e63          	beqz	a1,18d78 <strlen+0xc8>
   18d20:	00f03533          	snez	a0,a5
   18d24:	00d50533          	add	a0,a0,a3
   18d28:	ffe50513          	addi	a0,a0,-2
   18d2c:	00008067          	ret
   18d30:	f80686e3          	beqz	a3,18cbc <strlen+0xc>
   18d34:	00074783          	lbu	a5,0(a4)
   18d38:	00170713          	addi	a4,a4,1
   18d3c:	00777693          	andi	a3,a4,7
   18d40:	fe0798e3          	bnez	a5,18d30 <strlen+0x80>
   18d44:	40a70733          	sub	a4,a4,a0
   18d48:	fff70513          	addi	a0,a4,-1
   18d4c:	00008067          	ret
   18d50:	ff968513          	addi	a0,a3,-7
   18d54:	00008067          	ret
   18d58:	ff868513          	addi	a0,a3,-8
   18d5c:	00008067          	ret
   18d60:	ffb68513          	addi	a0,a3,-5
   18d64:	00008067          	ret
   18d68:	ffa68513          	addi	a0,a3,-6
   18d6c:	00008067          	ret
   18d70:	ffc68513          	addi	a0,a3,-4
   18d74:	00008067          	ret
   18d78:	ffd68513          	addi	a0,a3,-3
   18d7c:	00008067          	ret

0000000000018d80 <strncpy>:
   18d80:	00a5e7b3          	or	a5,a1,a0
   18d84:	0077f793          	andi	a5,a5,7
   18d88:	0a079063          	bnez	a5,18e28 <strncpy+0xa8>
   18d8c:	00700793          	li	a5,7
   18d90:	08c7fc63          	bgeu	a5,a2,18e28 <strncpy+0xa8>
   18d94:	0000a797          	auipc	a5,0xa
   18d98:	38c78793          	addi	a5,a5,908 # 23120 <__SDATA_BEGIN__>
   18d9c:	0007b303          	ld	t1,0(a5)
   18da0:	0000a797          	auipc	a5,0xa
   18da4:	38878793          	addi	a5,a5,904 # 23128 <__SDATA_BEGIN__+0x8>
   18da8:	0007b883          	ld	a7,0(a5)
   18dac:	00050713          	mv	a4,a0
   18db0:	00700e13          	li	t3,7
   18db4:	0005b683          	ld	a3,0(a1)
   18db8:	006687b3          	add	a5,a3,t1
   18dbc:	fff6c813          	not	a6,a3
   18dc0:	0107f7b3          	and	a5,a5,a6
   18dc4:	0117f7b3          	and	a5,a5,a7
   18dc8:	00079e63          	bnez	a5,18de4 <strncpy+0x64>
   18dcc:	00870713          	addi	a4,a4,8
   18dd0:	ff860613          	addi	a2,a2,-8
   18dd4:	fed73c23          	sd	a3,-8(a4)
   18dd8:	00858593          	addi	a1,a1,8
   18ddc:	fcce6ce3          	bltu	t3,a2,18db4 <strncpy+0x34>
   18de0:	06060463          	beqz	a2,18e48 <strncpy+0xc8>
   18de4:	0005c803          	lbu	a6,0(a1)
   18de8:	fff60693          	addi	a3,a2,-1
   18dec:	00158593          	addi	a1,a1,1
   18df0:	01070023          	sb	a6,0(a4)
   18df4:	00170793          	addi	a5,a4,1
   18df8:	02080c63          	beqz	a6,18e30 <strncpy+0xb0>
   18dfc:	00c70633          	add	a2,a4,a2
   18e00:	00d706b3          	add	a3,a4,a3
   18e04:	0140006f          	j	18e18 <strncpy+0x98>
   18e08:	fff5c703          	lbu	a4,-1(a1)
   18e0c:	00178793          	addi	a5,a5,1
   18e10:	fee78fa3          	sb	a4,-1(a5)
   18e14:	02070063          	beqz	a4,18e34 <strncpy+0xb4>
   18e18:	00158593          	addi	a1,a1,1
   18e1c:	40f68833          	sub	a6,a3,a5
   18e20:	fec794e3          	bne	a5,a2,18e08 <strncpy+0x88>
   18e24:	00008067          	ret
   18e28:	00050713          	mv	a4,a0
   18e2c:	fb5ff06f          	j	18de0 <strncpy+0x60>
   18e30:	00068813          	mv	a6,a3
   18e34:	01078733          	add	a4,a5,a6
   18e38:	00080a63          	beqz	a6,18e4c <strncpy+0xcc>
   18e3c:	00178793          	addi	a5,a5,1
   18e40:	fe078fa3          	sb	zero,-1(a5)
   18e44:	fee79ce3          	bne	a5,a4,18e3c <strncpy+0xbc>
   18e48:	00008067          	ret
   18e4c:	00008067          	ret

0000000000018e50 <_svfprintf_r>:
   18e50:	d8010113          	addi	sp,sp,-640
   18e54:	26113c23          	sd	ra,632(sp)
   18e58:	26813823          	sd	s0,624(sp)
   18e5c:	25613023          	sd	s6,576(sp)
   18e60:	00058413          	mv	s0,a1
   18e64:	00b13823          	sd	a1,16(sp)
   18e68:	00060b13          	mv	s6,a2
   18e6c:	00d13c23          	sd	a3,24(sp)
   18e70:	26913423          	sd	s1,616(sp)
   18e74:	27213023          	sd	s2,608(sp)
   18e78:	25313c23          	sd	s3,600(sp)
   18e7c:	25413823          	sd	s4,592(sp)
   18e80:	25513423          	sd	s5,584(sp)
   18e84:	23713c23          	sd	s7,568(sp)
   18e88:	23813823          	sd	s8,560(sp)
   18e8c:	23913423          	sd	s9,552(sp)
   18e90:	23a13023          	sd	s10,544(sp)
   18e94:	21b13c23          	sd	s11,536(sp)
   18e98:	04a13423          	sd	a0,72(sp)
   18e9c:	addfd0ef          	jal	ra,16978 <_localeconv_r>
   18ea0:	00053783          	ld	a5,0(a0)
   18ea4:	00078513          	mv	a0,a5
   18ea8:	06f13023          	sd	a5,96(sp)
   18eac:	e05ff0ef          	jal	ra,18cb0 <strlen>
   18eb0:	01045783          	lhu	a5,16(s0)
   18eb4:	04a13823          	sd	a0,80(sp)
   18eb8:	10013023          	sd	zero,256(sp)
   18ebc:	10013423          	sd	zero,264(sp)
   18ec0:	0807f793          	andi	a5,a5,128
   18ec4:	00078863          	beqz	a5,18ed4 <_svfprintf_r+0x84>
   18ec8:	01843783          	ld	a5,24(s0)
   18ecc:	00079463          	bnez	a5,18ed4 <_svfprintf_r+0x84>
   18ed0:	5f00106f          	j	1a4c0 <_svfprintf_r+0x1670>
   18ed4:	19010793          	addi	a5,sp,400
   18ed8:	000b0d93          	mv	s11,s6
   18edc:	10f13823          	sd	a5,272(sp)
   18ee0:	00078313          	mv	t1,a5
   18ee4:	000dc783          	lbu	a5,0(s11)
   18ee8:	12013023          	sd	zero,288(sp)
   18eec:	10012c23          	sw	zero,280(sp)
   18ef0:	02013823          	sd	zero,48(sp)
   18ef4:	04013c23          	sd	zero,88(sp)
   18ef8:	06013823          	sd	zero,112(sp)
   18efc:	08013023          	sd	zero,128(sp)
   18f00:	08013823          	sd	zero,144(sp)
   18f04:	06013c23          	sd	zero,120(sp)
   18f08:	00013423          	sd	zero,8(sp)
   18f0c:	01000d13          	li	s10,16
   18f10:	00009c17          	auipc	s8,0x9
   18f14:	a90c0c13          	addi	s8,s8,-1392 # 219a0 <zeroes.4524>
   18f18:	04813a83          	ld	s5,72(sp)
   18f1c:	6c078863          	beqz	a5,195ec <_svfprintf_r+0x79c>
   18f20:	02500693          	li	a3,37
   18f24:	00d79463          	bne	a5,a3,18f2c <_svfprintf_r+0xdc>
   18f28:	48c0106f          	j	1a3b4 <_svfprintf_r+0x1564>
   18f2c:	000d8413          	mv	s0,s11
   18f30:	00c0006f          	j	18f3c <_svfprintf_r+0xec>
   18f34:	0cd78663          	beq	a5,a3,19000 <_svfprintf_r+0x1b0>
   18f38:	00048413          	mv	s0,s1
   18f3c:	00144783          	lbu	a5,1(s0)
   18f40:	00140493          	addi	s1,s0,1
   18f44:	fe0798e3          	bnez	a5,18f34 <_svfprintf_r+0xe4>
   18f48:	41b4893b          	subw	s2,s1,s11
   18f4c:	6a090063          	beqz	s2,195ec <_svfprintf_r+0x79c>
   18f50:	12013683          	ld	a3,288(sp)
   18f54:	11812783          	lw	a5,280(sp)
   18f58:	01b33023          	sd	s11,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdcdf8>
   18f5c:	012686b3          	add	a3,a3,s2
   18f60:	0017879b          	addiw	a5,a5,1
   18f64:	01233423          	sd	s2,8(t1)
   18f68:	12d13023          	sd	a3,288(sp)
   18f6c:	10f12c23          	sw	a5,280(sp)
   18f70:	0007869b          	sext.w	a3,a5
   18f74:	00700793          	li	a5,7
   18f78:	01030313          	addi	t1,t1,16
   18f7c:	08d7c863          	blt	a5,a3,1900c <_svfprintf_r+0x1bc>
   18f80:	00813703          	ld	a4,8(sp)
   18f84:	00144783          	lbu	a5,1(s0)
   18f88:	00e9073b          	addw	a4,s2,a4
   18f8c:	00e13423          	sd	a4,8(sp)
   18f90:	64078e63          	beqz	a5,195ec <_svfprintf_r+0x79c>
   18f94:	00148913          	addi	s2,s1,1
   18f98:	0014c403          	lbu	s0,1(s1)
   18f9c:	0c010fa3          	sb	zero,223(sp)
   18fa0:	fff00b93          	li	s7,-1
   18fa4:	00000993          	li	s3,0
   18fa8:	00000493          	li	s1,0
   18fac:	00900a13          	li	s4,9
   18fb0:	02a00b13          	li	s6,42
   18fb4:	00030c93          	mv	s9,t1
   18fb8:	00190913          	addi	s2,s2,1
   18fbc:	0004041b          	sext.w	s0,s0
   18fc0:	05a00693          	li	a3,90
   18fc4:	fe04079b          	addiw	a5,s0,-32
   18fc8:	0007871b          	sext.w	a4,a5
   18fcc:	1ce6e263          	bltu	a3,a4,19190 <_svfprintf_r+0x340>
   18fd0:	02079793          	slli	a5,a5,0x20
   18fd4:	00009717          	auipc	a4,0x9
   18fd8:	84c70713          	addi	a4,a4,-1972 # 21820 <__mprec_bigtens+0x28>
   18fdc:	01e7d793          	srli	a5,a5,0x1e
   18fe0:	00e787b3          	add	a5,a5,a4
   18fe4:	0007a783          	lw	a5,0(a5)
   18fe8:	00e787b3          	add	a5,a5,a4
   18fec:	00078067          	jr	a5
   18ff0:	0104e493          	ori	s1,s1,16
   18ff4:	0004849b          	sext.w	s1,s1
   18ff8:	00094403          	lbu	s0,0(s2)
   18ffc:	fbdff06f          	j	18fb8 <_svfprintf_r+0x168>
   19000:	41b4893b          	subw	s2,s1,s11
   19004:	f80908e3          	beqz	s2,18f94 <_svfprintf_r+0x144>
   19008:	f49ff06f          	j	18f50 <_svfprintf_r+0x100>
   1900c:	01013583          	ld	a1,16(sp)
   19010:	11010613          	addi	a2,sp,272
   19014:	000a8513          	mv	a0,s5
   19018:	57d040ef          	jal	ra,1dd94 <__ssprint_r>
   1901c:	02051a63          	bnez	a0,19050 <_svfprintf_r+0x200>
   19020:	19010313          	addi	t1,sp,400
   19024:	f5dff06f          	j	18f80 <_svfprintf_r+0x130>
   19028:	01013583          	ld	a1,16(sp)
   1902c:	11010613          	addi	a2,sp,272
   19030:	000a8513          	mv	a0,s5
   19034:	561040ef          	jal	ra,1dd94 <__ssprint_r>
   19038:	58050663          	beqz	a0,195c4 <_svfprintf_r+0x774>
   1903c:	02013783          	ld	a5,32(sp)
   19040:	00078863          	beqz	a5,19050 <_svfprintf_r+0x200>
   19044:	02013583          	ld	a1,32(sp)
   19048:	04813503          	ld	a0,72(sp)
   1904c:	86dfa0ef          	jal	ra,138b8 <_free_r>
   19050:	01013783          	ld	a5,16(sp)
   19054:	0107d783          	lhu	a5,16(a5)
   19058:	0407f793          	andi	a5,a5,64
   1905c:	00078463          	beqz	a5,19064 <_svfprintf_r+0x214>
   19060:	2c80206f          	j	1b328 <_svfprintf_r+0x24d8>
   19064:	27813083          	ld	ra,632(sp)
   19068:	27013403          	ld	s0,624(sp)
   1906c:	00813503          	ld	a0,8(sp)
   19070:	26813483          	ld	s1,616(sp)
   19074:	26013903          	ld	s2,608(sp)
   19078:	25813983          	ld	s3,600(sp)
   1907c:	25013a03          	ld	s4,592(sp)
   19080:	24813a83          	ld	s5,584(sp)
   19084:	24013b03          	ld	s6,576(sp)
   19088:	23813b83          	ld	s7,568(sp)
   1908c:	23013c03          	ld	s8,560(sp)
   19090:	22813c83          	ld	s9,552(sp)
   19094:	22013d03          	ld	s10,544(sp)
   19098:	21813d83          	ld	s11,536(sp)
   1909c:	28010113          	addi	sp,sp,640
   190a0:	00008067          	ret
   190a4:	01813683          	ld	a3,24(sp)
   190a8:	00008797          	auipc	a5,0x8
   190ac:	35878793          	addi	a5,a5,856 # 21400 <zeroes.4539+0x60>
   190b0:	04f13c23          	sd	a5,88(sp)
   190b4:	0204f793          	andi	a5,s1,32
   190b8:	000c8313          	mv	t1,s9
   190bc:	00868713          	addi	a4,a3,8
   190c0:	10078863          	beqz	a5,191d0 <_svfprintf_r+0x380>
   190c4:	0006bb03          	ld	s6,0(a3)
   190c8:	0014f793          	andi	a5,s1,1
   190cc:	00078e63          	beqz	a5,190e8 <_svfprintf_r+0x298>
   190d0:	000b0c63          	beqz	s6,190e8 <_svfprintf_r+0x298>
   190d4:	0024e493          	ori	s1,s1,2
   190d8:	03000793          	li	a5,48
   190dc:	0ef10023          	sb	a5,224(sp)
   190e0:	0e8100a3          	sb	s0,225(sp)
   190e4:	0004849b          	sext.w	s1,s1
   190e8:	bff4f813          	andi	a6,s1,-1025
   190ec:	00080a1b          	sext.w	s4,a6
   190f0:	00e13c23          	sd	a4,24(sp)
   190f4:	00200793          	li	a5,2
   190f8:	0c010fa3          	sb	zero,223(sp)
   190fc:	fff00713          	li	a4,-1
   19100:	32eb8263          	beq	s7,a4,19424 <_svfprintf_r+0x5d4>
   19104:	f7fa7493          	andi	s1,s4,-129
   19108:	0004849b          	sext.w	s1,s1
   1910c:	660b10e3          	bnez	s6,19f6c <_svfprintf_r+0x111c>
   19110:	000b8463          	beqz	s7,19118 <_svfprintf_r+0x2c8>
   19114:	0500106f          	j	1a164 <_svfprintf_r+0x1314>
   19118:	2a079663          	bnez	a5,193c4 <_svfprintf_r+0x574>
   1911c:	001a7c93          	andi	s9,s4,1
   19120:	18c10d93          	addi	s11,sp,396
   19124:	000c8463          	beqz	s9,1912c <_svfprintf_r+0x2dc>
   19128:	2e40106f          	j	1a40c <_svfprintf_r+0x15bc>
   1912c:	000c8a1b          	sext.w	s4,s9
   19130:	017cd463          	bge	s9,s7,19138 <_svfprintf_r+0x2e8>
   19134:	000b8a1b          	sext.w	s4,s7
   19138:	0df14783          	lbu	a5,223(sp)
   1913c:	02013023          	sd	zero,32(sp)
   19140:	04013023          	sd	zero,64(sp)
   19144:	02013c23          	sd	zero,56(sp)
   19148:	02013423          	sd	zero,40(sp)
   1914c:	36078a63          	beqz	a5,194c0 <_svfprintf_r+0x670>
   19150:	001a0a1b          	addiw	s4,s4,1
   19154:	36c0006f          	j	194c0 <_svfprintf_r+0x670>
   19158:	00000993          	li	s3,0
   1915c:	00190913          	addi	s2,s2,1
   19160:	fff94703          	lbu	a4,-1(s2)
   19164:	0029979b          	slliw	a5,s3,0x2
   19168:	013787bb          	addw	a5,a5,s3
   1916c:	fd04041b          	addiw	s0,s0,-48
   19170:	0017979b          	slliw	a5,a5,0x1
   19174:	fd07061b          	addiw	a2,a4,-48
   19178:	00f409bb          	addw	s3,s0,a5
   1917c:	0007041b          	sext.w	s0,a4
   19180:	fcca7ee3          	bgeu	s4,a2,1915c <_svfprintf_r+0x30c>
   19184:	fe04079b          	addiw	a5,s0,-32
   19188:	0007871b          	sext.w	a4,a5
   1918c:	e4e6f2e3          	bgeu	a3,a4,18fd0 <_svfprintf_r+0x180>
   19190:	000c8313          	mv	t1,s9
   19194:	44040c63          	beqz	s0,195ec <_svfprintf_r+0x79c>
   19198:	12810423          	sb	s0,296(sp)
   1919c:	0c010fa3          	sb	zero,223(sp)
   191a0:	00100a13          	li	s4,1
   191a4:	00100c93          	li	s9,1
   191a8:	12810d93          	addi	s11,sp,296
   191ac:	3000006f          	j	194ac <_svfprintf_r+0x65c>
   191b0:	01813683          	ld	a3,24(sp)
   191b4:	00008797          	auipc	a5,0x8
   191b8:	26478793          	addi	a5,a5,612 # 21418 <zeroes.4539+0x78>
   191bc:	04f13c23          	sd	a5,88(sp)
   191c0:	0204f793          	andi	a5,s1,32
   191c4:	000c8313          	mv	t1,s9
   191c8:	00868713          	addi	a4,a3,8
   191cc:	ee079ce3          	bnez	a5,190c4 <_svfprintf_r+0x274>
   191d0:	0104f793          	andi	a5,s1,16
   191d4:	00078463          	beqz	a5,191dc <_svfprintf_r+0x38c>
   191d8:	2840106f          	j	1a45c <_svfprintf_r+0x160c>
   191dc:	01813683          	ld	a3,24(sp)
   191e0:	0404f793          	andi	a5,s1,64
   191e4:	0006ab03          	lw	s6,0(a3)
   191e8:	00079463          	bnez	a5,191f0 <_svfprintf_r+0x3a0>
   191ec:	0e50106f          	j	1aad0 <_svfprintf_r+0x1c80>
   191f0:	030b1b13          	slli	s6,s6,0x30
   191f4:	030b5b13          	srli	s6,s6,0x30
   191f8:	ed1ff06f          	j	190c8 <_svfprintf_r+0x278>
   191fc:	00094403          	lbu	s0,0(s2)
   19200:	0044e493          	ori	s1,s1,4
   19204:	0004849b          	sext.w	s1,s1
   19208:	db1ff06f          	j	18fb8 <_svfprintf_r+0x168>
   1920c:	00094403          	lbu	s0,0(s2)
   19210:	00190793          	addi	a5,s2,1
   19214:	01641463          	bne	s0,s6,1921c <_svfprintf_r+0x3cc>
   19218:	2e00206f          	j	1b4f8 <_svfprintf_r+0x26a8>
   1921c:	fd04071b          	addiw	a4,s0,-48
   19220:	00078913          	mv	s2,a5
   19224:	00000b93          	li	s7,0
   19228:	d8ea6ee3          	bltu	s4,a4,18fc4 <_svfprintf_r+0x174>
   1922c:	00190913          	addi	s2,s2,1
   19230:	002b979b          	slliw	a5,s7,0x2
   19234:	fff94603          	lbu	a2,-1(s2)
   19238:	017787bb          	addw	a5,a5,s7
   1923c:	0017979b          	slliw	a5,a5,0x1
   19240:	00e78bbb          	addw	s7,a5,a4
   19244:	fd06071b          	addiw	a4,a2,-48
   19248:	feea72e3          	bgeu	s4,a4,1922c <_svfprintf_r+0x3dc>
   1924c:	00060413          	mv	s0,a2
   19250:	d75ff06f          	j	18fc4 <_svfprintf_r+0x174>
   19254:	0804e493          	ori	s1,s1,128
   19258:	0004849b          	sext.w	s1,s1
   1925c:	00094403          	lbu	s0,0(s2)
   19260:	d59ff06f          	j	18fb8 <_svfprintf_r+0x168>
   19264:	01813783          	ld	a5,24(sp)
   19268:	0c010fa3          	sb	zero,223(sp)
   1926c:	000c8313          	mv	t1,s9
   19270:	0007bd83          	ld	s11,0(a5)
   19274:	00878b13          	addi	s6,a5,8
   19278:	000d9463          	bnez	s11,19280 <_svfprintf_r+0x430>
   1927c:	2740106f          	j	1a4f0 <_svfprintf_r+0x16a0>
   19280:	fff00793          	li	a5,-1
   19284:	00fb9463          	bne	s7,a5,1928c <_svfprintf_r+0x43c>
   19288:	7780106f          	j	1aa00 <_svfprintf_r+0x1bb0>
   1928c:	000b8613          	mv	a2,s7
   19290:	00000593          	li	a1,0
   19294:	000d8513          	mv	a0,s11
   19298:	01913c23          	sd	s9,24(sp)
   1929c:	a40fe0ef          	jal	ra,174dc <memchr>
   192a0:	02a13023          	sd	a0,32(sp)
   192a4:	01813303          	ld	t1,24(sp)
   192a8:	00051463          	bnez	a0,192b0 <_svfprintf_r+0x460>
   192ac:	3d10106f          	j	1ae7c <_svfprintf_r+0x202c>
   192b0:	02013783          	ld	a5,32(sp)
   192b4:	01613c23          	sd	s6,24(sp)
   192b8:	02013023          	sd	zero,32(sp)
   192bc:	41b78cbb          	subw	s9,a5,s11
   192c0:	fffcca13          	not	s4,s9
   192c4:	0df14783          	lbu	a5,223(sp)
   192c8:	43fa5a13          	srai	s4,s4,0x3f
   192cc:	014cfa33          	and	s4,s9,s4
   192d0:	04013023          	sd	zero,64(sp)
   192d4:	02013c23          	sd	zero,56(sp)
   192d8:	02013423          	sd	zero,40(sp)
   192dc:	000a0a1b          	sext.w	s4,s4
   192e0:	00000b93          	li	s7,0
   192e4:	e60796e3          	bnez	a5,19150 <_svfprintf_r+0x300>
   192e8:	1d80006f          	j	194c0 <_svfprintf_r+0x670>
   192ec:	01813703          	ld	a4,24(sp)
   192f0:	0104e813          	ori	a6,s1,16
   192f4:	000c8313          	mv	t1,s9
   192f8:	0008049b          	sext.w	s1,a6
   192fc:	00870713          	addi	a4,a4,8
   19300:	01813783          	ld	a5,24(sp)
   19304:	0007bb03          	ld	s6,0(a5)
   19308:	00e13c23          	sd	a4,24(sp)
   1930c:	bff4f813          	andi	a6,s1,-1025
   19310:	00080a1b          	sext.w	s4,a6
   19314:	00000793          	li	a5,0
   19318:	de1ff06f          	j	190f8 <_svfprintf_r+0x2a8>
   1931c:	01813783          	ld	a5,24(sp)
   19320:	0104e813          	ori	a6,s1,16
   19324:	000c8313          	mv	t1,s9
   19328:	00080a1b          	sext.w	s4,a6
   1932c:	00878713          	addi	a4,a5,8
   19330:	01813783          	ld	a5,24(sp)
   19334:	0007bb03          	ld	s6,0(a5)
   19338:	00100793          	li	a5,1
   1933c:	00e13c23          	sd	a4,24(sp)
   19340:	db9ff06f          	j	190f8 <_svfprintf_r+0x2a8>
   19344:	00094403          	lbu	s0,0(s2)
   19348:	06800793          	li	a5,104
   1934c:	00f41463          	bne	s0,a5,19354 <_svfprintf_r+0x504>
   19350:	15c0106f          	j	1a4ac <_svfprintf_r+0x165c>
   19354:	0404e493          	ori	s1,s1,64
   19358:	0004849b          	sext.w	s1,s1
   1935c:	c5dff06f          	j	18fb8 <_svfprintf_r+0x168>
   19360:	01813703          	ld	a4,24(sp)
   19364:	0204f793          	andi	a5,s1,32
   19368:	000c8313          	mv	t1,s9
   1936c:	00870713          	addi	a4,a4,8
   19370:	00078463          	beqz	a5,19378 <_svfprintf_r+0x528>
   19374:	0a80106f          	j	1a41c <_svfprintf_r+0x15cc>
   19378:	0104f793          	andi	a5,s1,16
   1937c:	00078463          	beqz	a5,19384 <_svfprintf_r+0x534>
   19380:	09c0106f          	j	1a41c <_svfprintf_r+0x15cc>
   19384:	0404f793          	andi	a5,s1,64
   19388:	00079463          	bnez	a5,19390 <_svfprintf_r+0x540>
   1938c:	7100106f          	j	1aa9c <_svfprintf_r+0x1c4c>
   19390:	01813783          	ld	a5,24(sp)
   19394:	00048a13          	mv	s4,s1
   19398:	00e13c23          	sd	a4,24(sp)
   1939c:	00079b03          	lh	s6,0(a5)
   193a0:	000b0793          	mv	a5,s6
   193a4:	0607c463          	bltz	a5,1940c <_svfprintf_r+0x5bc>
   193a8:	fff00793          	li	a5,-1
   193ac:	06fb8ce3          	beq	s7,a5,19c24 <_svfprintf_r+0xdd4>
   193b0:	f7fa7813          	andi	a6,s4,-129
   193b4:	0008049b          	sext.w	s1,a6
   193b8:	060b14e3          	bnez	s6,19c20 <_svfprintf_r+0xdd0>
   193bc:	000b8463          	beqz	s7,193c4 <_svfprintf_r+0x574>
   193c0:	0c50106f          	j	1ac84 <_svfprintf_r+0x1e34>
   193c4:	00000b93          	li	s7,0
   193c8:	00000c93          	li	s9,0
   193cc:	18c10d93          	addi	s11,sp,396
   193d0:	d5dff06f          	j	1912c <_svfprintf_r+0x2dc>
   193d4:	0084e493          	ori	s1,s1,8
   193d8:	0004849b          	sext.w	s1,s1
   193dc:	00094403          	lbu	s0,0(s2)
   193e0:	bd9ff06f          	j	18fb8 <_svfprintf_r+0x168>
   193e4:	01813783          	ld	a5,24(sp)
   193e8:	0104e813          	ori	a6,s1,16
   193ec:	000c8313          	mv	t1,s9
   193f0:	00080a1b          	sext.w	s4,a6
   193f4:	00878713          	addi	a4,a5,8
   193f8:	01813783          	ld	a5,24(sp)
   193fc:	0007b783          	ld	a5,0(a5)
   19400:	00e13c23          	sd	a4,24(sp)
   19404:	00078b13          	mv	s6,a5
   19408:	fa07d0e3          	bgez	a5,193a8 <_svfprintf_r+0x558>
   1940c:	02d00793          	li	a5,45
   19410:	0cf10fa3          	sb	a5,223(sp)
   19414:	fff00713          	li	a4,-1
   19418:	41600b33          	neg	s6,s6
   1941c:	00100793          	li	a5,1
   19420:	ceeb92e3          	bne	s7,a4,19104 <_svfprintf_r+0x2b4>
   19424:	00100713          	li	a4,1
   19428:	7ee78e63          	beq	a5,a4,19c24 <_svfprintf_r+0xdd4>
   1942c:	00200713          	li	a4,2
   19430:	54e784e3          	beq	a5,a4,1a178 <_svfprintf_r+0x1328>
   19434:	18c10c93          	addi	s9,sp,396
   19438:	000c8693          	mv	a3,s9
   1943c:	0080006f          	j	19444 <_svfprintf_r+0x5f4>
   19440:	000d8693          	mv	a3,s11
   19444:	007b7793          	andi	a5,s6,7
   19448:	03078793          	addi	a5,a5,48
   1944c:	fef68fa3          	sb	a5,-1(a3)
   19450:	003b5b13          	srli	s6,s6,0x3
   19454:	fff68d93          	addi	s11,a3,-1
   19458:	fe0b14e3          	bnez	s6,19440 <_svfprintf_r+0x5f0>
   1945c:	001a7613          	andi	a2,s4,1
   19460:	00060ce3          	beqz	a2,19c78 <_svfprintf_r+0xe28>
   19464:	03000613          	li	a2,48
   19468:	00c788e3          	beq	a5,a2,19c78 <_svfprintf_r+0xe28>
   1946c:	ffe68693          	addi	a3,a3,-2
   19470:	fecd8fa3          	sb	a2,-1(s11)
   19474:	40dc8cbb          	subw	s9,s9,a3
   19478:	000a0493          	mv	s1,s4
   1947c:	00068d93          	mv	s11,a3
   19480:	cadff06f          	j	1912c <_svfprintf_r+0x2dc>
   19484:	01813703          	ld	a4,24(sp)
   19488:	000c8313          	mv	t1,s9
   1948c:	0c010fa3          	sb	zero,223(sp)
   19490:	00072783          	lw	a5,0(a4)
   19494:	00870713          	addi	a4,a4,8
   19498:	00e13c23          	sd	a4,24(sp)
   1949c:	12f10423          	sb	a5,296(sp)
   194a0:	00100a13          	li	s4,1
   194a4:	00100c93          	li	s9,1
   194a8:	12810d93          	addi	s11,sp,296
   194ac:	02013023          	sd	zero,32(sp)
   194b0:	00000b93          	li	s7,0
   194b4:	04013023          	sd	zero,64(sp)
   194b8:	02013c23          	sd	zero,56(sp)
   194bc:	02013423          	sd	zero,40(sp)
   194c0:	0024fe93          	andi	t4,s1,2
   194c4:	000e8e9b          	sext.w	t4,t4
   194c8:	000e8463          	beqz	t4,194d0 <_svfprintf_r+0x680>
   194cc:	002a0a1b          	addiw	s4,s4,2
   194d0:	0844ff13          	andi	t5,s1,132
   194d4:	12013783          	ld	a5,288(sp)
   194d8:	000f1663          	bnez	t5,194e4 <_svfprintf_r+0x694>
   194dc:	4149883b          	subw	a6,s3,s4
   194e0:	29004ae3          	bgtz	a6,19f74 <_svfprintf_r+0x1124>
   194e4:	0df14683          	lbu	a3,223(sp)
   194e8:	02068c63          	beqz	a3,19520 <_svfprintf_r+0x6d0>
   194ec:	11812683          	lw	a3,280(sp)
   194f0:	0df10613          	addi	a2,sp,223
   194f4:	00c33023          	sd	a2,0(t1)
   194f8:	0016869b          	addiw	a3,a3,1
   194fc:	00100613          	li	a2,1
   19500:	00178793          	addi	a5,a5,1
   19504:	00c33423          	sd	a2,8(t1)
   19508:	10d12c23          	sw	a3,280(sp)
   1950c:	0006861b          	sext.w	a2,a3
   19510:	12f13023          	sd	a5,288(sp)
   19514:	00700693          	li	a3,7
   19518:	01030313          	addi	t1,t1,16
   1951c:	0ec6ca63          	blt	a3,a2,19610 <_svfprintf_r+0x7c0>
   19520:	020e8c63          	beqz	t4,19558 <_svfprintf_r+0x708>
   19524:	11812683          	lw	a3,280(sp)
   19528:	0e010613          	addi	a2,sp,224
   1952c:	00c33023          	sd	a2,0(t1)
   19530:	0016869b          	addiw	a3,a3,1
   19534:	00200613          	li	a2,2
   19538:	00278793          	addi	a5,a5,2
   1953c:	00c33423          	sd	a2,8(t1)
   19540:	10d12c23          	sw	a3,280(sp)
   19544:	0006861b          	sext.w	a2,a3
   19548:	12f13023          	sd	a5,288(sp)
   1954c:	00700693          	li	a3,7
   19550:	01030313          	addi	t1,t1,16
   19554:	32c6cae3          	blt	a3,a2,1a088 <_svfprintf_r+0x1238>
   19558:	08000693          	li	a3,128
   1955c:	04df08e3          	beq	t5,a3,19dac <_svfprintf_r+0xf5c>
   19560:	419b8bbb          	subw	s7,s7,s9
   19564:	137048e3          	bgtz	s7,19e94 <_svfprintf_r+0x1044>
   19568:	1004f693          	andi	a3,s1,256
   1956c:	70069c63          	bnez	a3,19c84 <_svfprintf_r+0xe34>
   19570:	11812703          	lw	a4,280(sp)
   19574:	019787b3          	add	a5,a5,s9
   19578:	01b33023          	sd	s11,0(t1)
   1957c:	0017069b          	addiw	a3,a4,1
   19580:	01933423          	sd	s9,8(t1)
   19584:	12f13023          	sd	a5,288(sp)
   19588:	10d12c23          	sw	a3,280(sp)
   1958c:	00700713          	li	a4,7
   19590:	1ad74c63          	blt	a4,a3,19748 <_svfprintf_r+0x8f8>
   19594:	01030313          	addi	t1,t1,16
   19598:	0044f493          	andi	s1,s1,4
   1959c:	00048663          	beqz	s1,195a8 <_svfprintf_r+0x758>
   195a0:	4149843b          	subw	s0,s3,s4
   195a4:	308048e3          	bgtz	s0,1a0b4 <_svfprintf_r+0x1264>
   195a8:	00098713          	mv	a4,s3
   195ac:	0149d463          	bge	s3,s4,195b4 <_svfprintf_r+0x764>
   195b0:	000a0713          	mv	a4,s4
   195b4:	00813683          	ld	a3,8(sp)
   195b8:	00d7073b          	addw	a4,a4,a3
   195bc:	00e13423          	sd	a4,8(sp)
   195c0:	a60794e3          	bnez	a5,19028 <_svfprintf_r+0x1d8>
   195c4:	02013783          	ld	a5,32(sp)
   195c8:	10012c23          	sw	zero,280(sp)
   195cc:	00078863          	beqz	a5,195dc <_svfprintf_r+0x78c>
   195d0:	02013583          	ld	a1,32(sp)
   195d4:	000a8513          	mv	a0,s5
   195d8:	ae0fa0ef          	jal	ra,138b8 <_free_r>
   195dc:	19010313          	addi	t1,sp,400
   195e0:	00090d93          	mv	s11,s2
   195e4:	000dc783          	lbu	a5,0(s11)
   195e8:	92079ce3          	bnez	a5,18f20 <_svfprintf_r+0xd0>
   195ec:	12013783          	ld	a5,288(sp)
   195f0:	a60780e3          	beqz	a5,19050 <_svfprintf_r+0x200>
   195f4:	01013403          	ld	s0,16(sp)
   195f8:	04813503          	ld	a0,72(sp)
   195fc:	11010613          	addi	a2,sp,272
   19600:	00040593          	mv	a1,s0
   19604:	790040ef          	jal	ra,1dd94 <__ssprint_r>
   19608:	01045783          	lhu	a5,16(s0)
   1960c:	a4dff06f          	j	19058 <_svfprintf_r+0x208>
   19610:	01013583          	ld	a1,16(sp)
   19614:	11010613          	addi	a2,sp,272
   19618:	000a8513          	mv	a0,s5
   1961c:	09e13423          	sd	t5,136(sp)
   19620:	07d13423          	sd	t4,104(sp)
   19624:	770040ef          	jal	ra,1dd94 <__ssprint_r>
   19628:	a0051ae3          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   1962c:	12013783          	ld	a5,288(sp)
   19630:	19010313          	addi	t1,sp,400
   19634:	08813f03          	ld	t5,136(sp)
   19638:	06813e83          	ld	t4,104(sp)
   1963c:	ee5ff06f          	j	19520 <_svfprintf_r+0x6d0>
   19640:	11812583          	lw	a1,280(sp)
   19644:	03013703          	ld	a4,48(sp)
   19648:	00178c93          	addi	s9,a5,1
   1964c:	00100613          	li	a2,1
   19650:	0015879b          	addiw	a5,a1,1
   19654:	01b33023          	sd	s11,0(t1)
   19658:	00078693          	mv	a3,a5
   1965c:	01030413          	addi	s0,t1,16
   19660:	4ce650e3          	bge	a2,a4,1a320 <_svfprintf_r+0x14d0>
   19664:	00100613          	li	a2,1
   19668:	10d12c23          	sw	a3,280(sp)
   1966c:	00c33423          	sd	a2,8(t1)
   19670:	13913023          	sd	s9,288(sp)
   19674:	00700693          	li	a3,7
   19678:	54f6c2e3          	blt	a3,a5,1a3bc <_svfprintf_r+0x156c>
   1967c:	0017869b          	addiw	a3,a5,1
   19680:	05013783          	ld	a5,80(sp)
   19684:	06013703          	ld	a4,96(sp)
   19688:	10d12c23          	sw	a3,280(sp)
   1968c:	00fc8cb3          	add	s9,s9,a5
   19690:	00f43423          	sd	a5,8(s0)
   19694:	00e43023          	sd	a4,0(s0)
   19698:	0006879b          	sext.w	a5,a3
   1969c:	13913023          	sd	s9,288(sp)
   196a0:	00700693          	li	a3,7
   196a4:	01040413          	addi	s0,s0,16
   196a8:	52f6cee3          	blt	a3,a5,1a3e4 <_svfprintf_r+0x1594>
   196ac:	0017889b          	addiw	a7,a5,1
   196b0:	04f13023          	sd	a5,64(sp)
   196b4:	10013503          	ld	a0,256(sp)
   196b8:	03013783          	ld	a5,48(sp)
   196bc:	10813583          	ld	a1,264(sp)
   196c0:	01040313          	addi	t1,s0,16
   196c4:	00000613          	li	a2,0
   196c8:	00000693          	li	a3,0
   196cc:	00088b1b          	sext.w	s6,a7
   196d0:	03113c23          	sd	a7,56(sp)
   196d4:	02613423          	sd	t1,40(sp)
   196d8:	fff78b9b          	addiw	s7,a5,-1
   196dc:	5c4060ef          	jal	ra,1fca0 <__eqtf2>
   196e0:	02813303          	ld	t1,40(sp)
   196e4:	03813883          	ld	a7,56(sp)
   196e8:	460500e3          	beqz	a0,1a348 <_svfprintf_r+0x14f8>
   196ec:	001d8713          	addi	a4,s11,1
   196f0:	017c8cb3          	add	s9,s9,s7
   196f4:	00e43023          	sd	a4,0(s0)
   196f8:	01743423          	sd	s7,8(s0)
   196fc:	13913023          	sd	s9,288(sp)
   19700:	11112c23          	sw	a7,280(sp)
   19704:	00700713          	li	a4,7
   19708:	01675463          	bge	a4,s6,19710 <_svfprintf_r+0x8c0>
   1970c:	0000106f          	j	1a70c <_svfprintf_r+0x18bc>
   19710:	04013783          	ld	a5,64(sp)
   19714:	02040713          	addi	a4,s0,32
   19718:	00030413          	mv	s0,t1
   1971c:	00278b1b          	addiw	s6,a5,2
   19720:	00070313          	mv	t1,a4
   19724:	07013683          	ld	a3,112(sp)
   19728:	0f010713          	addi	a4,sp,240
   1972c:	00e43023          	sd	a4,0(s0)
   19730:	019687b3          	add	a5,a3,s9
   19734:	00d43423          	sd	a3,8(s0)
   19738:	12f13023          	sd	a5,288(sp)
   1973c:	11612c23          	sw	s6,280(sp)
   19740:	00700713          	li	a4,7
   19744:	e5675ae3          	bge	a4,s6,19598 <_svfprintf_r+0x748>
   19748:	01013583          	ld	a1,16(sp)
   1974c:	11010613          	addi	a2,sp,272
   19750:	000a8513          	mv	a0,s5
   19754:	640040ef          	jal	ra,1dd94 <__ssprint_r>
   19758:	8e0512e3          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   1975c:	12013783          	ld	a5,288(sp)
   19760:	19010313          	addi	t1,sp,400
   19764:	e35ff06f          	j	19598 <_svfprintf_r+0x748>
   19768:	0084f793          	andi	a5,s1,8
   1976c:	000c8313          	mv	t1,s9
   19770:	4c0782e3          	beqz	a5,1a434 <_svfprintf_r+0x15e4>
   19774:	01813783          	ld	a5,24(sp)
   19778:	00f78793          	addi	a5,a5,15
   1977c:	ff07f793          	andi	a5,a5,-16
   19780:	0007b683          	ld	a3,0(a5)
   19784:	0087b703          	ld	a4,8(a5)
   19788:	01078793          	addi	a5,a5,16
   1978c:	00f13c23          	sd	a5,24(sp)
   19790:	10d13023          	sd	a3,256(sp)
   19794:	10e13423          	sd	a4,264(sp)
   19798:	10010513          	addi	a0,sp,256
   1979c:	02613023          	sd	t1,32(sp)
   197a0:	97cfd0ef          	jal	ra,1691c <_ldcheck>
   197a4:	0ea12423          	sw	a0,232(sp)
   197a8:	00200793          	li	a5,2
   197ac:	02013303          	ld	t1,32(sp)
   197b0:	00f51463          	bne	a0,a5,197b8 <_svfprintf_r+0x968>
   197b4:	1500106f          	j	1a904 <_svfprintf_r+0x1ab4>
   197b8:	00100793          	li	a5,1
   197bc:	00f51463          	bne	a0,a5,197c4 <_svfprintf_r+0x974>
   197c0:	3200106f          	j	1aae0 <_svfprintf_r+0x1c90>
   197c4:	06100793          	li	a5,97
   197c8:	00f41463          	bne	s0,a5,197d0 <_svfprintf_r+0x980>
   197cc:	2710106f          	j	1b23c <_svfprintf_r+0x23ec>
   197d0:	04100793          	li	a5,65
   197d4:	00f41463          	bne	s0,a5,197dc <_svfprintf_r+0x98c>
   197d8:	7600106f          	j	1af38 <_svfprintf_r+0x20e8>
   197dc:	fdf47713          	andi	a4,s0,-33
   197e0:	fff00793          	li	a5,-1
   197e4:	02e13c23          	sd	a4,56(sp)
   197e8:	00fb9463          	bne	s7,a5,197f0 <_svfprintf_r+0x9a0>
   197ec:	4900106f          	j	1ac7c <_svfprintf_r+0x1e2c>
   197f0:	04700793          	li	a5,71
   197f4:	00f71463          	bne	a4,a5,197fc <_svfprintf_r+0x9ac>
   197f8:	2e90106f          	j	1b2e0 <_svfprintf_r+0x2490>
   197fc:	10813c83          	ld	s9,264(sp)
   19800:	1004e793          	ori	a5,s1,256
   19804:	04913023          	sd	s1,64(sp)
   19808:	0007879b          	sext.w	a5,a5
   1980c:	10013e83          	ld	t4,256(sp)
   19810:	000cd463          	bgez	s9,19818 <_svfprintf_r+0x9c8>
   19814:	1890106f          	j	1b19c <_svfprintf_r+0x234c>
   19818:	06013423          	sd	zero,104(sp)
   1981c:	00078493          	mv	s1,a5
   19820:	02013023          	sd	zero,32(sp)
   19824:	03813703          	ld	a4,56(sp)
   19828:	04600793          	li	a5,70
   1982c:	00f71463          	bne	a4,a5,19834 <_svfprintf_r+0x9e4>
   19830:	5000106f          	j	1ad30 <_svfprintf_r+0x1ee0>
   19834:	04500793          	li	a5,69
   19838:	02613823          	sd	t1,48(sp)
   1983c:	00f71463          	bne	a4,a5,19844 <_svfprintf_r+0x9f4>
   19840:	20d0106f          	j	1b24c <_svfprintf_r+0x23fc>
   19844:	0e810793          	addi	a5,sp,232
   19848:	000b8713          	mv	a4,s7
   1984c:	000e8593          	mv	a1,t4
   19850:	0f810893          	addi	a7,sp,248
   19854:	0ec10813          	addi	a6,sp,236
   19858:	00200693          	li	a3,2
   1985c:	000c8613          	mv	a2,s9
   19860:	000a8513          	mv	a0,s5
   19864:	03d13423          	sd	t4,40(sp)
   19868:	d95fb0ef          	jal	ra,155fc <_ldtoa_r>
   1986c:	03813703          	ld	a4,56(sp)
   19870:	04700793          	li	a5,71
   19874:	00050d93          	mv	s11,a0
   19878:	02813e83          	ld	t4,40(sp)
   1987c:	03013303          	ld	t1,48(sp)
   19880:	00f70463          	beq	a4,a5,19888 <_svfprintf_r+0xa38>
   19884:	4990106f          	j	1b51c <_svfprintf_r+0x26cc>
   19888:	04013783          	ld	a5,64(sp)
   1988c:	01750a33          	add	s4,a0,s7
   19890:	0017f793          	andi	a5,a5,1
   19894:	00078463          	beqz	a5,1989c <_svfprintf_r+0xa4c>
   19898:	4e80106f          	j	1ad80 <_svfprintf_r+0x1f30>
   1989c:	0f813783          	ld	a5,248(sp)
   198a0:	41b787bb          	subw	a5,a5,s11
   198a4:	02f13823          	sd	a5,48(sp)
   198a8:	0e812703          	lw	a4,232(sp)
   198ac:	04700793          	li	a5,71
   198b0:	02e13423          	sd	a4,40(sp)
   198b4:	03813703          	ld	a4,56(sp)
   198b8:	00f71463          	bne	a4,a5,198c0 <_svfprintf_r+0xa70>
   198bc:	3fc0106f          	j	1acb8 <_svfprintf_r+0x1e68>
   198c0:	03813703          	ld	a4,56(sp)
   198c4:	04600793          	li	a5,70
   198c8:	00f71463          	bne	a4,a5,198d0 <_svfprintf_r+0xa80>
   198cc:	6440106f          	j	1af10 <_svfprintf_r+0x20c0>
   198d0:	02813783          	ld	a5,40(sp)
   198d4:	03813703          	ld	a4,56(sp)
   198d8:	04100613          	li	a2,65
   198dc:	fff78a1b          	addiw	s4,a5,-1
   198e0:	0f412423          	sw	s4,232(sp)
   198e4:	0ff47793          	andi	a5,s0,255
   198e8:	00000693          	li	a3,0
   198ec:	00c71863          	bne	a4,a2,198fc <_svfprintf_r+0xaac>
   198f0:	00f7879b          	addiw	a5,a5,15
   198f4:	0ff7f793          	andi	a5,a5,255
   198f8:	00100693          	li	a3,1
   198fc:	0ef10823          	sb	a5,240(sp)
   19900:	02b00793          	li	a5,43
   19904:	000a5a63          	bgez	s4,19918 <_svfprintf_r+0xac8>
   19908:	02813783          	ld	a5,40(sp)
   1990c:	00100a13          	li	s4,1
   19910:	40fa0a3b          	subw	s4,s4,a5
   19914:	02d00793          	li	a5,45
   19918:	0ef108a3          	sb	a5,241(sp)
   1991c:	00900793          	li	a5,9
   19920:	0147c463          	blt	a5,s4,19928 <_svfprintf_r+0xad8>
   19924:	3190106f          	j	1b43c <_svfprintf_r+0x25ec>
   19928:	0ff10b13          	addi	s6,sp,255
   1992c:	000b0c93          	mv	s9,s6
   19930:	06300493          	li	s1,99
   19934:	00030b93          	mv	s7,t1
   19938:	00c0006f          	j	19944 <_svfprintf_r+0xaf4>
   1993c:	00060c93          	mv	s9,a2
   19940:	00050a13          	mv	s4,a0
   19944:	00a00593          	li	a1,10
   19948:	000a0513          	mv	a0,s4
   1994c:	995f60ef          	jal	ra,102e0 <__moddi3>
   19950:	0305051b          	addiw	a0,a0,48
   19954:	feac8fa3          	sb	a0,-1(s9)
   19958:	00a00593          	li	a1,10
   1995c:	000a0513          	mv	a0,s4
   19960:	8fdf60ef          	jal	ra,1025c <__divdi3>
   19964:	fffc8613          	addi	a2,s9,-1
   19968:	0005051b          	sext.w	a0,a0
   1996c:	fd44c8e3          	blt	s1,s4,1993c <_svfprintf_r+0xaec>
   19970:	0305079b          	addiw	a5,a0,48
   19974:	0ff7f793          	andi	a5,a5,255
   19978:	ffec8693          	addi	a3,s9,-2
   1997c:	fef60fa3          	sb	a5,-1(a2)
   19980:	000b8313          	mv	t1,s7
   19984:	0166e463          	bltu	a3,s6,1998c <_svfprintf_r+0xb3c>
   19988:	3a10106f          	j	1b528 <_svfprintf_r+0x26d8>
   1998c:	0f210613          	addi	a2,sp,242
   19990:	0080006f          	j	19998 <_svfprintf_r+0xb48>
   19994:	0006c783          	lbu	a5,0(a3)
   19998:	00160613          	addi	a2,a2,1
   1999c:	00168693          	addi	a3,a3,1
   199a0:	fef60fa3          	sb	a5,-1(a2)
   199a4:	ff6698e3          	bne	a3,s6,19994 <_svfprintf_r+0xb44>
   199a8:	10110793          	addi	a5,sp,257
   199ac:	419787b3          	sub	a5,a5,s9
   199b0:	0f210713          	addi	a4,sp,242
   199b4:	00f707b3          	add	a5,a4,a5
   199b8:	0f010693          	addi	a3,sp,240
   199bc:	40d787bb          	subw	a5,a5,a3
   199c0:	06f13823          	sd	a5,112(sp)
   199c4:	07013783          	ld	a5,112(sp)
   199c8:	03013703          	ld	a4,48(sp)
   199cc:	00100693          	li	a3,1
   199d0:	00f70cbb          	addw	s9,a4,a5
   199d4:	000c8793          	mv	a5,s9
   199d8:	00e6c463          	blt	a3,a4,199e0 <_svfprintf_r+0xb90>
   199dc:	2c50106f          	j	1b4a0 <_svfprintf_r+0x2650>
   199e0:	05013703          	ld	a4,80(sp)
   199e4:	00e78cbb          	addw	s9,a5,a4
   199e8:	04013783          	ld	a5,64(sp)
   199ec:	fffcca13          	not	s4,s9
   199f0:	43fa5a13          	srai	s4,s4,0x3f
   199f4:	bff7f493          	andi	s1,a5,-1025
   199f8:	0004849b          	sext.w	s1,s1
   199fc:	014cfa33          	and	s4,s9,s4
   19a00:	1004e493          	ori	s1,s1,256
   19a04:	000a0a1b          	sext.w	s4,s4
   19a08:	04013023          	sd	zero,64(sp)
   19a0c:	02013c23          	sd	zero,56(sp)
   19a10:	02013423          	sd	zero,40(sp)
   19a14:	06813783          	ld	a5,104(sp)
   19a18:	00079463          	bnez	a5,19a20 <_svfprintf_r+0xbd0>
   19a1c:	3b40106f          	j	1add0 <_svfprintf_r+0x1f80>
   19a20:	02d00793          	li	a5,45
   19a24:	0cf10fa3          	sb	a5,223(sp)
   19a28:	00000b93          	li	s7,0
   19a2c:	001a0a1b          	addiw	s4,s4,1
   19a30:	a91ff06f          	j	194c0 <_svfprintf_r+0x670>
   19a34:	02b00793          	li	a5,43
   19a38:	0cf10fa3          	sb	a5,223(sp)
   19a3c:	00094403          	lbu	s0,0(s2)
   19a40:	d78ff06f          	j	18fb8 <_svfprintf_r+0x168>
   19a44:	01813783          	ld	a5,24(sp)
   19a48:	00094403          	lbu	s0,0(s2)
   19a4c:	0007a983          	lw	s3,0(a5)
   19a50:	00878793          	addi	a5,a5,8
   19a54:	00f13c23          	sd	a5,24(sp)
   19a58:	d609d063          	bgez	s3,18fb8 <_svfprintf_r+0x168>
   19a5c:	413009bb          	negw	s3,s3
   19a60:	fa0ff06f          	j	19200 <_svfprintf_r+0x3b0>
   19a64:	000a8513          	mv	a0,s5
   19a68:	f11fc0ef          	jal	ra,16978 <_localeconv_r>
   19a6c:	00853783          	ld	a5,8(a0)
   19a70:	00078513          	mv	a0,a5
   19a74:	06f13c23          	sd	a5,120(sp)
   19a78:	a38ff0ef          	jal	ra,18cb0 <strlen>
   19a7c:	08a13823          	sd	a0,144(sp)
   19a80:	00050413          	mv	s0,a0
   19a84:	000a8513          	mv	a0,s5
   19a88:	ef1fc0ef          	jal	ra,16978 <_localeconv_r>
   19a8c:	01053783          	ld	a5,16(a0)
   19a90:	08f13023          	sd	a5,128(sp)
   19a94:	18040ce3          	beqz	s0,1a42c <_svfprintf_r+0x15dc>
   19a98:	00094403          	lbu	s0,0(s2)
   19a9c:	d0078e63          	beqz	a5,18fb8 <_svfprintf_r+0x168>
   19aa0:	0007c783          	lbu	a5,0(a5)
   19aa4:	d0078a63          	beqz	a5,18fb8 <_svfprintf_r+0x168>
   19aa8:	4004e493          	ori	s1,s1,1024
   19aac:	0004849b          	sext.w	s1,s1
   19ab0:	d08ff06f          	j	18fb8 <_svfprintf_r+0x168>
   19ab4:	0014e493          	ori	s1,s1,1
   19ab8:	0004849b          	sext.w	s1,s1
   19abc:	00094403          	lbu	s0,0(s2)
   19ac0:	cf8ff06f          	j	18fb8 <_svfprintf_r+0x168>
   19ac4:	0df14783          	lbu	a5,223(sp)
   19ac8:	00094403          	lbu	s0,0(s2)
   19acc:	ce079663          	bnez	a5,18fb8 <_svfprintf_r+0x168>
   19ad0:	02000793          	li	a5,32
   19ad4:	0cf10fa3          	sb	a5,223(sp)
   19ad8:	ce0ff06f          	j	18fb8 <_svfprintf_r+0x168>
   19adc:	01813703          	ld	a4,24(sp)
   19ae0:	0204f793          	andi	a5,s1,32
   19ae4:	000c8313          	mv	t1,s9
   19ae8:	00870713          	addi	a4,a4,8
   19aec:	12079ce3          	bnez	a5,1a424 <_svfprintf_r+0x15d4>
   19af0:	0104f793          	andi	a5,s1,16
   19af4:	120798e3          	bnez	a5,1a424 <_svfprintf_r+0x15d4>
   19af8:	01813683          	ld	a3,24(sp)
   19afc:	0404f793          	andi	a5,s1,64
   19b00:	0006ab03          	lw	s6,0(a3)
   19b04:	76078ee3          	beqz	a5,1aa80 <_svfprintf_r+0x1c30>
   19b08:	030b1b13          	slli	s6,s6,0x30
   19b0c:	030b5b13          	srli	s6,s6,0x30
   19b10:	00e13c23          	sd	a4,24(sp)
   19b14:	00048a13          	mv	s4,s1
   19b18:	00100793          	li	a5,1
   19b1c:	ddcff06f          	j	190f8 <_svfprintf_r+0x2a8>
   19b20:	0204e493          	ori	s1,s1,32
   19b24:	0004849b          	sext.w	s1,s1
   19b28:	00094403          	lbu	s0,0(s2)
   19b2c:	c8cff06f          	j	18fb8 <_svfprintf_r+0x168>
   19b30:	01813703          	ld	a4,24(sp)
   19b34:	ffff87b7          	lui	a5,0xffff8
   19b38:	8307c793          	xori	a5,a5,-2000
   19b3c:	0ef11023          	sh	a5,224(sp)
   19b40:	00870793          	addi	a5,a4,8
   19b44:	0024e813          	ori	a6,s1,2
   19b48:	00f13c23          	sd	a5,24(sp)
   19b4c:	00008797          	auipc	a5,0x8
   19b50:	8b478793          	addi	a5,a5,-1868 # 21400 <zeroes.4539+0x60>
   19b54:	04f13c23          	sd	a5,88(sp)
   19b58:	000c8313          	mv	t1,s9
   19b5c:	00073b03          	ld	s6,0(a4)
   19b60:	00080a1b          	sext.w	s4,a6
   19b64:	00200793          	li	a5,2
   19b68:	07800413          	li	s0,120
   19b6c:	d8cff06f          	j	190f8 <_svfprintf_r+0x2a8>
   19b70:	01813703          	ld	a4,24(sp)
   19b74:	0204f793          	andi	a5,s1,32
   19b78:	000c8313          	mv	t1,s9
   19b7c:	00870713          	addi	a4,a4,8
   19b80:	f8079063          	bnez	a5,19300 <_svfprintf_r+0x4b0>
   19b84:	0104f793          	andi	a5,s1,16
   19b88:	f6079c63          	bnez	a5,19300 <_svfprintf_r+0x4b0>
   19b8c:	01813683          	ld	a3,24(sp)
   19b90:	0404f793          	andi	a5,s1,64
   19b94:	0006ab03          	lw	s6,0(a3)
   19b98:	720782e3          	beqz	a5,1aabc <_svfprintf_r+0x1c6c>
   19b9c:	030b1b13          	slli	s6,s6,0x30
   19ba0:	030b5b13          	srli	s6,s6,0x30
   19ba4:	00e13c23          	sd	a4,24(sp)
   19ba8:	f64ff06f          	j	1930c <_svfprintf_r+0x4bc>
   19bac:	01813683          	ld	a3,24(sp)
   19bb0:	0204f793          	andi	a5,s1,32
   19bb4:	000c8313          	mv	t1,s9
   19bb8:	0006b703          	ld	a4,0(a3)
   19bbc:	00868693          	addi	a3,a3,8
   19bc0:	00d13c23          	sd	a3,24(sp)
   19bc4:	04079663          	bnez	a5,19c10 <_svfprintf_r+0xdc0>
   19bc8:	0104f793          	andi	a5,s1,16
   19bcc:	04079263          	bnez	a5,19c10 <_svfprintf_r+0xdc0>
   19bd0:	0404f793          	andi	a5,s1,64
   19bd4:	00078463          	beqz	a5,19bdc <_svfprintf_r+0xd8c>
   19bd8:	00c0106f          	j	1abe4 <_svfprintf_r+0x1d94>
   19bdc:	2004f493          	andi	s1,s1,512
   19be0:	00813783          	ld	a5,8(sp)
   19be4:	00049463          	bnez	s1,19bec <_svfprintf_r+0xd9c>
   19be8:	6ec0106f          	j	1b2d4 <_svfprintf_r+0x2484>
   19bec:	00f70023          	sb	a5,0(a4)
   19bf0:	00090d93          	mv	s11,s2
   19bf4:	9f1ff06f          	j	195e4 <_svfprintf_r+0x794>
   19bf8:	00094403          	lbu	s0,0(s2)
   19bfc:	06c00793          	li	a5,108
   19c00:	08f40ce3          	beq	s0,a5,1a498 <_svfprintf_r+0x1648>
   19c04:	0104e493          	ori	s1,s1,16
   19c08:	0004849b          	sext.w	s1,s1
   19c0c:	bacff06f          	j	18fb8 <_svfprintf_r+0x168>
   19c10:	00813783          	ld	a5,8(sp)
   19c14:	00090d93          	mv	s11,s2
   19c18:	00f73023          	sd	a5,0(a4)
   19c1c:	9c9ff06f          	j	195e4 <_svfprintf_r+0x794>
   19c20:	00048a13          	mv	s4,s1
   19c24:	00900793          	li	a5,9
   19c28:	3f67e4e3          	bltu	a5,s6,1a810 <_svfprintf_r+0x19c0>
   19c2c:	030b0b1b          	addiw	s6,s6,48
   19c30:	196105a3          	sb	s6,395(sp)
   19c34:	000a0493          	mv	s1,s4
   19c38:	00100c93          	li	s9,1
   19c3c:	18b10d93          	addi	s11,sp,395
   19c40:	cecff06f          	j	1912c <_svfprintf_r+0x2dc>
   19c44:	0ff00793          	li	a5,255
   19c48:	42f686e3          	beq	a3,a5,1a874 <_svfprintf_r+0x1a24>
   19c4c:	00900793          	li	a5,9
   19c50:	7337e8e3          	bltu	a5,s3,1ab80 <_svfprintf_r+0x1d30>
   19c54:	09213023          	sd	s2,128(sp)
   19c58:	000a8313          	mv	t1,s5
   19c5c:	03813983          	ld	s3,56(sp)
   19c60:	000c8a93          	mv	s5,s9
   19c64:	02013903          	ld	s2,32(sp)
   19c68:	000d8c93          	mv	s9,s11
   19c6c:	00040d93          	mv	s11,s0
   19c70:	02813403          	ld	s0,40(sp)
   19c74:	02913823          	sd	s1,48(sp)
   19c78:	41bc8cbb          	subw	s9,s9,s11
   19c7c:	000a0493          	mv	s1,s4
   19c80:	cacff06f          	j	1912c <_svfprintf_r+0x2dc>
   19c84:	06500693          	li	a3,101
   19c88:	9a86dce3          	bge	a3,s0,19640 <_svfprintf_r+0x7f0>
   19c8c:	10013503          	ld	a0,256(sp)
   19c90:	10813583          	ld	a1,264(sp)
   19c94:	00000613          	li	a2,0
   19c98:	00000693          	li	a3,0
   19c9c:	08613423          	sd	t1,136(sp)
   19ca0:	06f13423          	sd	a5,104(sp)
   19ca4:	7fd050ef          	jal	ra,1fca0 <__eqtf2>
   19ca8:	06813783          	ld	a5,104(sp)
   19cac:	08813303          	ld	t1,136(sp)
   19cb0:	4e051e63          	bnez	a0,1a1ac <_svfprintf_r+0x135c>
   19cb4:	11812703          	lw	a4,280(sp)
   19cb8:	00007697          	auipc	a3,0x7
   19cbc:	78068693          	addi	a3,a3,1920 # 21438 <zeroes.4539+0x98>
   19cc0:	00178793          	addi	a5,a5,1
   19cc4:	0017071b          	addiw	a4,a4,1
   19cc8:	00d33023          	sd	a3,0(t1)
   19ccc:	00100693          	li	a3,1
   19cd0:	00d33423          	sd	a3,8(t1)
   19cd4:	12f13023          	sd	a5,288(sp)
   19cd8:	0007069b          	sext.w	a3,a4
   19cdc:	10e12c23          	sw	a4,280(sp)
   19ce0:	00700793          	li	a5,7
   19ce4:	01030313          	addi	t1,t1,16
   19ce8:	3ad7c4e3          	blt	a5,a3,1a890 <_svfprintf_r+0x1a40>
   19cec:	0e812783          	lw	a5,232(sp)
   19cf0:	03013703          	ld	a4,48(sp)
   19cf4:	00e7ca63          	blt	a5,a4,19d08 <_svfprintf_r+0xeb8>
   19cf8:	0014f793          	andi	a5,s1,1
   19cfc:	00079663          	bnez	a5,19d08 <_svfprintf_r+0xeb8>
   19d00:	12013783          	ld	a5,288(sp)
   19d04:	895ff06f          	j	19598 <_svfprintf_r+0x748>
   19d08:	06013783          	ld	a5,96(sp)
   19d0c:	05013683          	ld	a3,80(sp)
   19d10:	11812703          	lw	a4,280(sp)
   19d14:	00f33023          	sd	a5,0(t1)
   19d18:	12013783          	ld	a5,288(sp)
   19d1c:	0017071b          	addiw	a4,a4,1
   19d20:	00d33423          	sd	a3,8(t1)
   19d24:	00f687b3          	add	a5,a3,a5
   19d28:	10e12c23          	sw	a4,280(sp)
   19d2c:	0007069b          	sext.w	a3,a4
   19d30:	12f13023          	sd	a5,288(sp)
   19d34:	00700713          	li	a4,7
   19d38:	01030313          	addi	t1,t1,16
   19d3c:	72d74c63          	blt	a4,a3,1a474 <_svfprintf_r+0x1624>
   19d40:	03013703          	ld	a4,48(sp)
   19d44:	fff7041b          	addiw	s0,a4,-1
   19d48:	848058e3          	blez	s0,19598 <_svfprintf_r+0x748>
   19d4c:	11812703          	lw	a4,280(sp)
   19d50:	368d50e3          	bge	s10,s0,1a8b0 <_svfprintf_r+0x1a60>
   19d54:	00700c93          	li	s9,7
   19d58:	01013b03          	ld	s6,16(sp)
   19d5c:	00c0006f          	j	19d68 <_svfprintf_r+0xf18>
   19d60:	ff04041b          	addiw	s0,s0,-16
   19d64:	348d56e3          	bge	s10,s0,1a8b0 <_svfprintf_r+0x1a60>
   19d68:	0017071b          	addiw	a4,a4,1
   19d6c:	01078793          	addi	a5,a5,16
   19d70:	01833023          	sd	s8,0(t1)
   19d74:	01a33423          	sd	s10,8(t1)
   19d78:	12f13023          	sd	a5,288(sp)
   19d7c:	10e12c23          	sw	a4,280(sp)
   19d80:	01030313          	addi	t1,t1,16
   19d84:	fcecdee3          	bge	s9,a4,19d60 <_svfprintf_r+0xf10>
   19d88:	11010613          	addi	a2,sp,272
   19d8c:	000b0593          	mv	a1,s6
   19d90:	000a8513          	mv	a0,s5
   19d94:	000040ef          	jal	ra,1dd94 <__ssprint_r>
   19d98:	aa051263          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   19d9c:	12013783          	ld	a5,288(sp)
   19da0:	11812703          	lw	a4,280(sp)
   19da4:	19010313          	addi	t1,sp,400
   19da8:	fb9ff06f          	j	19d60 <_svfprintf_r+0xf10>
   19dac:	41498b3b          	subw	s6,s3,s4
   19db0:	fb605863          	blez	s6,19560 <_svfprintf_r+0x710>
   19db4:	11812683          	lw	a3,280(sp)
   19db8:	096d5a63          	bge	s10,s6,19e4c <_svfprintf_r+0xffc>
   19dbc:	000b0713          	mv	a4,s6
   19dc0:	06813423          	sd	s0,104(sp)
   19dc4:	000a0b13          	mv	s6,s4
   19dc8:	00700893          	li	a7,7
   19dcc:	00098a13          	mv	s4,s3
   19dd0:	01013403          	ld	s0,16(sp)
   19dd4:	00048993          	mv	s3,s1
   19dd8:	00070493          	mv	s1,a4
   19ddc:	00c0006f          	j	19de8 <_svfprintf_r+0xf98>
   19de0:	ff04849b          	addiw	s1,s1,-16
   19de4:	049d5863          	bge	s10,s1,19e34 <_svfprintf_r+0xfe4>
   19de8:	0016869b          	addiw	a3,a3,1
   19dec:	01078793          	addi	a5,a5,16
   19df0:	01833023          	sd	s8,0(t1)
   19df4:	01a33423          	sd	s10,8(t1)
   19df8:	12f13023          	sd	a5,288(sp)
   19dfc:	10d12c23          	sw	a3,280(sp)
   19e00:	01030313          	addi	t1,t1,16
   19e04:	fcd8dee3          	bge	a7,a3,19de0 <_svfprintf_r+0xf90>
   19e08:	11010613          	addi	a2,sp,272
   19e0c:	00040593          	mv	a1,s0
   19e10:	000a8513          	mv	a0,s5
   19e14:	781030ef          	jal	ra,1dd94 <__ssprint_r>
   19e18:	a2051263          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   19e1c:	ff04849b          	addiw	s1,s1,-16
   19e20:	12013783          	ld	a5,288(sp)
   19e24:	11812683          	lw	a3,280(sp)
   19e28:	19010313          	addi	t1,sp,400
   19e2c:	00700893          	li	a7,7
   19e30:	fa9d4ce3          	blt	s10,s1,19de8 <_svfprintf_r+0xf98>
   19e34:	06813403          	ld	s0,104(sp)
   19e38:	00048713          	mv	a4,s1
   19e3c:	00098493          	mv	s1,s3
   19e40:	000a0993          	mv	s3,s4
   19e44:	000b0a13          	mv	s4,s6
   19e48:	00070b13          	mv	s6,a4
   19e4c:	0016861b          	addiw	a2,a3,1
   19e50:	016787b3          	add	a5,a5,s6
   19e54:	01833023          	sd	s8,0(t1)
   19e58:	01633423          	sd	s6,8(t1)
   19e5c:	12f13023          	sd	a5,288(sp)
   19e60:	10c12c23          	sw	a2,280(sp)
   19e64:	00700693          	li	a3,7
   19e68:	01030313          	addi	t1,t1,16
   19e6c:	eec6da63          	bge	a3,a2,19560 <_svfprintf_r+0x710>
   19e70:	01013583          	ld	a1,16(sp)
   19e74:	11010613          	addi	a2,sp,272
   19e78:	000a8513          	mv	a0,s5
   19e7c:	719030ef          	jal	ra,1dd94 <__ssprint_r>
   19e80:	9a051e63          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   19e84:	419b8bbb          	subw	s7,s7,s9
   19e88:	12013783          	ld	a5,288(sp)
   19e8c:	19010313          	addi	t1,sp,400
   19e90:	ed705c63          	blez	s7,19568 <_svfprintf_r+0x718>
   19e94:	11812683          	lw	a3,280(sp)
   19e98:	097d5863          	bge	s10,s7,19f28 <_svfprintf_r+0x10d8>
   19e9c:	000a0713          	mv	a4,s4
   19ea0:	06813423          	sd	s0,104(sp)
   19ea4:	00098a13          	mv	s4,s3
   19ea8:	00700b13          	li	s6,7
   19eac:	00048993          	mv	s3,s1
   19eb0:	01013403          	ld	s0,16(sp)
   19eb4:	000b8493          	mv	s1,s7
   19eb8:	00070b93          	mv	s7,a4
   19ebc:	00c0006f          	j	19ec8 <_svfprintf_r+0x1078>
   19ec0:	ff04849b          	addiw	s1,s1,-16
   19ec4:	049d5663          	bge	s10,s1,19f10 <_svfprintf_r+0x10c0>
   19ec8:	0016869b          	addiw	a3,a3,1
   19ecc:	01078793          	addi	a5,a5,16
   19ed0:	01833023          	sd	s8,0(t1)
   19ed4:	01a33423          	sd	s10,8(t1)
   19ed8:	12f13023          	sd	a5,288(sp)
   19edc:	10d12c23          	sw	a3,280(sp)
   19ee0:	01030313          	addi	t1,t1,16
   19ee4:	fcdb5ee3          	bge	s6,a3,19ec0 <_svfprintf_r+0x1070>
   19ee8:	11010613          	addi	a2,sp,272
   19eec:	00040593          	mv	a1,s0
   19ef0:	000a8513          	mv	a0,s5
   19ef4:	6a1030ef          	jal	ra,1dd94 <__ssprint_r>
   19ef8:	94051263          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   19efc:	ff04849b          	addiw	s1,s1,-16
   19f00:	12013783          	ld	a5,288(sp)
   19f04:	11812683          	lw	a3,280(sp)
   19f08:	19010313          	addi	t1,sp,400
   19f0c:	fa9d4ee3          	blt	s10,s1,19ec8 <_svfprintf_r+0x1078>
   19f10:	06813403          	ld	s0,104(sp)
   19f14:	000b8713          	mv	a4,s7
   19f18:	00048b93          	mv	s7,s1
   19f1c:	00098493          	mv	s1,s3
   19f20:	000a0993          	mv	s3,s4
   19f24:	00070a13          	mv	s4,a4
   19f28:	0016861b          	addiw	a2,a3,1
   19f2c:	017787b3          	add	a5,a5,s7
   19f30:	01833023          	sd	s8,0(t1)
   19f34:	01733423          	sd	s7,8(t1)
   19f38:	12f13023          	sd	a5,288(sp)
   19f3c:	10c12c23          	sw	a2,280(sp)
   19f40:	00700693          	li	a3,7
   19f44:	01030313          	addi	t1,t1,16
   19f48:	e2c6d063          	bge	a3,a2,19568 <_svfprintf_r+0x718>
   19f4c:	01013583          	ld	a1,16(sp)
   19f50:	11010613          	addi	a2,sp,272
   19f54:	000a8513          	mv	a0,s5
   19f58:	63d030ef          	jal	ra,1dd94 <__ssprint_r>
   19f5c:	8e051063          	bnez	a0,1903c <_svfprintf_r+0x1ec>
   19f60:	12013783          	ld	a5,288(sp)
   19f64:	19010313          	addi	t1,sp,400
   19f68:	e00ff06f          	j	19568 <_svfprintf_r+0x718>
   19f6c:	00048a13          	mv	s4,s1
   19f70:	cb4ff06f          	j	19424 <_svfprintf_r+0x5d4>
   19f74:	11812683          	lw	a3,280(sp)
   19f78:	00008b17          	auipc	s6,0x8
   19f7c:	a18b0b13          	addi	s6,s6,-1512 # 21990 <blanks.4523>
   19f80:	0b0d5863          	bge	s10,a6,1a030 <_svfprintf_r+0x11e0>
   19f84:	09213c23          	sd	s2,152(sp)
   19f88:	0a813023          	sd	s0,160(sp)
   19f8c:	000b0913          	mv	s2,s6
   19f90:	00700f93          	li	t6,7
   19f94:	000a0b13          	mv	s6,s4
   19f98:	07d13423          	sd	t4,104(sp)
   19f9c:	00098a13          	mv	s4,s3
   19fa0:	09e13423          	sd	t5,136(sp)
   19fa4:	00048993          	mv	s3,s1
   19fa8:	00080413          	mv	s0,a6
   19fac:	01013483          	ld	s1,16(sp)
   19fb0:	00c0006f          	j	19fbc <_svfprintf_r+0x116c>
   19fb4:	ff04041b          	addiw	s0,s0,-16
   19fb8:	048d5a63          	bge	s10,s0,1a00c <_svfprintf_r+0x11bc>
   19fbc:	0016869b          	addiw	a3,a3,1
   19fc0:	01078793          	addi	a5,a5,16
   19fc4:	01233023          	sd	s2,0(t1)
   19fc8:	01a33423          	sd	s10,8(t1)
   19fcc:	12f13023          	sd	a5,288(sp)
   19fd0:	10d12c23          	sw	a3,280(sp)
   19fd4:	01030313          	addi	t1,t1,16
   19fd8:	fcdfdee3          	bge	t6,a3,19fb4 <_svfprintf_r+0x1164>
   19fdc:	11010613          	addi	a2,sp,272
   19fe0:	00048593          	mv	a1,s1
   19fe4:	000a8513          	mv	a0,s5
   19fe8:	5ad030ef          	jal	ra,1dd94 <__ssprint_r>
   19fec:	00050463          	beqz	a0,19ff4 <_svfprintf_r+0x11a4>
   19ff0:	84cff06f          	j	1903c <_svfprintf_r+0x1ec>
   19ff4:	ff04041b          	addiw	s0,s0,-16
   19ff8:	12013783          	ld	a5,288(sp)
   19ffc:	11812683          	lw	a3,280(sp)
   1a000:	19010313          	addi	t1,sp,400
   1a004:	00700f93          	li	t6,7
   1a008:	fa8d4ae3          	blt	s10,s0,19fbc <_svfprintf_r+0x116c>
   1a00c:	00098493          	mv	s1,s3
   1a010:	00040813          	mv	a6,s0
   1a014:	000a0993          	mv	s3,s4
   1a018:	06813e83          	ld	t4,104(sp)
   1a01c:	000b0a13          	mv	s4,s6
   1a020:	08813f03          	ld	t5,136(sp)
   1a024:	00090b13          	mv	s6,s2
   1a028:	0a013403          	ld	s0,160(sp)
   1a02c:	09813903          	ld	s2,152(sp)
   1a030:	0016861b          	addiw	a2,a3,1
   1a034:	010787b3          	add	a5,a5,a6
   1a038:	01633023          	sd	s6,0(t1)
   1a03c:	01033423          	sd	a6,8(t1)
   1a040:	12f13023          	sd	a5,288(sp)
   1a044:	10c12c23          	sw	a2,280(sp)
   1a048:	00700693          	li	a3,7
   1a04c:	01030313          	addi	t1,t1,16
   1a050:	c8c6da63          	bge	a3,a2,194e4 <_svfprintf_r+0x694>
   1a054:	01013583          	ld	a1,16(sp)
   1a058:	11010613          	addi	a2,sp,272
   1a05c:	000a8513          	mv	a0,s5
   1a060:	09e13423          	sd	t5,136(sp)
   1a064:	07d13423          	sd	t4,104(sp)
   1a068:	52d030ef          	jal	ra,1dd94 <__ssprint_r>
   1a06c:	00050463          	beqz	a0,1a074 <_svfprintf_r+0x1224>
   1a070:	fcdfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a074:	12013783          	ld	a5,288(sp)
   1a078:	19010313          	addi	t1,sp,400
   1a07c:	08813f03          	ld	t5,136(sp)
   1a080:	06813e83          	ld	t4,104(sp)
   1a084:	c60ff06f          	j	194e4 <_svfprintf_r+0x694>
   1a088:	01013583          	ld	a1,16(sp)
   1a08c:	11010613          	addi	a2,sp,272
   1a090:	000a8513          	mv	a0,s5
   1a094:	07e13423          	sd	t5,104(sp)
   1a098:	4fd030ef          	jal	ra,1dd94 <__ssprint_r>
   1a09c:	00050463          	beqz	a0,1a0a4 <_svfprintf_r+0x1254>
   1a0a0:	f9dfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a0a4:	12013783          	ld	a5,288(sp)
   1a0a8:	19010313          	addi	t1,sp,400
   1a0ac:	06813f03          	ld	t5,104(sp)
   1a0b0:	ca8ff06f          	j	19558 <_svfprintf_r+0x708>
   1a0b4:	11812703          	lw	a4,280(sp)
   1a0b8:	00008b17          	auipc	s6,0x8
   1a0bc:	8d8b0b13          	addi	s6,s6,-1832 # 21990 <blanks.4523>
   1a0c0:	068d5263          	bge	s10,s0,1a124 <_svfprintf_r+0x12d4>
   1a0c4:	00700493          	li	s1,7
   1a0c8:	01013b83          	ld	s7,16(sp)
   1a0cc:	00c0006f          	j	1a0d8 <_svfprintf_r+0x1288>
   1a0d0:	ff04041b          	addiw	s0,s0,-16
   1a0d4:	048d5863          	bge	s10,s0,1a124 <_svfprintf_r+0x12d4>
   1a0d8:	0017071b          	addiw	a4,a4,1
   1a0dc:	01078793          	addi	a5,a5,16
   1a0e0:	01633023          	sd	s6,0(t1)
   1a0e4:	01a33423          	sd	s10,8(t1)
   1a0e8:	12f13023          	sd	a5,288(sp)
   1a0ec:	10e12c23          	sw	a4,280(sp)
   1a0f0:	01030313          	addi	t1,t1,16
   1a0f4:	fce4dee3          	bge	s1,a4,1a0d0 <_svfprintf_r+0x1280>
   1a0f8:	11010613          	addi	a2,sp,272
   1a0fc:	000b8593          	mv	a1,s7
   1a100:	000a8513          	mv	a0,s5
   1a104:	491030ef          	jal	ra,1dd94 <__ssprint_r>
   1a108:	00050463          	beqz	a0,1a110 <_svfprintf_r+0x12c0>
   1a10c:	f31fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a110:	ff04041b          	addiw	s0,s0,-16
   1a114:	12013783          	ld	a5,288(sp)
   1a118:	11812703          	lw	a4,280(sp)
   1a11c:	19010313          	addi	t1,sp,400
   1a120:	fa8d4ce3          	blt	s10,s0,1a0d8 <_svfprintf_r+0x1288>
   1a124:	0017069b          	addiw	a3,a4,1
   1a128:	008787b3          	add	a5,a5,s0
   1a12c:	01633023          	sd	s6,0(t1)
   1a130:	00833423          	sd	s0,8(t1)
   1a134:	12f13023          	sd	a5,288(sp)
   1a138:	10d12c23          	sw	a3,280(sp)
   1a13c:	00700713          	li	a4,7
   1a140:	c6d75463          	bge	a4,a3,195a8 <_svfprintf_r+0x758>
   1a144:	01013583          	ld	a1,16(sp)
   1a148:	11010613          	addi	a2,sp,272
   1a14c:	000a8513          	mv	a0,s5
   1a150:	445030ef          	jal	ra,1dd94 <__ssprint_r>
   1a154:	00050463          	beqz	a0,1a15c <_svfprintf_r+0x130c>
   1a158:	ee5fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a15c:	12013783          	ld	a5,288(sp)
   1a160:	c48ff06f          	j	195a8 <_svfprintf_r+0x758>
   1a164:	00100713          	li	a4,1
   1a168:	30e78ee3          	beq	a5,a4,1ac84 <_svfprintf_r+0x1e34>
   1a16c:	00200713          	li	a4,2
   1a170:	00048a13          	mv	s4,s1
   1a174:	ace79063          	bne	a5,a4,19434 <_svfprintf_r+0x5e4>
   1a178:	05813703          	ld	a4,88(sp)
   1a17c:	18c10c93          	addi	s9,sp,396
   1a180:	000c8d93          	mv	s11,s9
   1a184:	00fb7793          	andi	a5,s6,15
   1a188:	00f707b3          	add	a5,a4,a5
   1a18c:	0007c783          	lbu	a5,0(a5)
   1a190:	fffd8d93          	addi	s11,s11,-1
   1a194:	004b5b13          	srli	s6,s6,0x4
   1a198:	00fd8023          	sb	a5,0(s11)
   1a19c:	fe0b14e3          	bnez	s6,1a184 <_svfprintf_r+0x1334>
   1a1a0:	41bc8cbb          	subw	s9,s9,s11
   1a1a4:	000a0493          	mv	s1,s4
   1a1a8:	f85fe06f          	j	1912c <_svfprintf_r+0x2dc>
   1a1ac:	0e812583          	lw	a1,232(sp)
   1a1b0:	58b05663          	blez	a1,1a73c <_svfprintf_r+0x18ec>
   1a1b4:	03013703          	ld	a4,48(sp)
   1a1b8:	02813683          	ld	a3,40(sp)
   1a1bc:	0007041b          	sext.w	s0,a4
   1a1c0:	2ae6c463          	blt	a3,a4,1a468 <_svfprintf_r+0x1618>
   1a1c4:	02805663          	blez	s0,1a1f0 <_svfprintf_r+0x13a0>
   1a1c8:	11812683          	lw	a3,280(sp)
   1a1cc:	008787b3          	add	a5,a5,s0
   1a1d0:	01b33023          	sd	s11,0(t1)
   1a1d4:	0016861b          	addiw	a2,a3,1
   1a1d8:	00833423          	sd	s0,8(t1)
   1a1dc:	12f13023          	sd	a5,288(sp)
   1a1e0:	10c12c23          	sw	a2,280(sp)
   1a1e4:	00700693          	li	a3,7
   1a1e8:	01030313          	addi	t1,t1,16
   1a1ec:	16c6c8e3          	blt	a3,a2,1ab5c <_svfprintf_r+0x1d0c>
   1a1f0:	fff44693          	not	a3,s0
   1a1f4:	02813703          	ld	a4,40(sp)
   1a1f8:	43f6d693          	srai	a3,a3,0x3f
   1a1fc:	00d47433          	and	s0,s0,a3
   1a200:	4087043b          	subw	s0,a4,s0
   1a204:	30804a63          	bgtz	s0,1a518 <_svfprintf_r+0x16c8>
   1a208:	02813703          	ld	a4,40(sp)
   1a20c:	4004f693          	andi	a3,s1,1024
   1a210:	00ed8bb3          	add	s7,s11,a4
   1a214:	36069463          	bnez	a3,1a57c <_svfprintf_r+0x172c>
   1a218:	0e812683          	lw	a3,232(sp)
   1a21c:	03013703          	ld	a4,48(sp)
   1a220:	00e6c663          	blt	a3,a4,1a22c <_svfprintf_r+0x13dc>
   1a224:	0014f613          	andi	a2,s1,1
   1a228:	18060ee3          	beqz	a2,1abc4 <_svfprintf_r+0x1d74>
   1a22c:	06013603          	ld	a2,96(sp)
   1a230:	05013703          	ld	a4,80(sp)
   1a234:	01030313          	addi	t1,t1,16
   1a238:	fec33823          	sd	a2,-16(t1)
   1a23c:	11812603          	lw	a2,280(sp)
   1a240:	00e787b3          	add	a5,a5,a4
   1a244:	fee33c23          	sd	a4,-8(t1)
   1a248:	0016059b          	addiw	a1,a2,1
   1a24c:	12f13023          	sd	a5,288(sp)
   1a250:	10b12c23          	sw	a1,280(sp)
   1a254:	00700613          	li	a2,7
   1a258:	3eb64ee3          	blt	a2,a1,1ae54 <_svfprintf_r+0x2004>
   1a25c:	03013703          	ld	a4,48(sp)
   1a260:	40d7063b          	subw	a2,a4,a3
   1a264:	00ed8733          	add	a4,s11,a4
   1a268:	4177073b          	subw	a4,a4,s7
   1a26c:	00060693          	mv	a3,a2
   1a270:	00c75463          	bge	a4,a2,1a278 <_svfprintf_r+0x1428>
   1a274:	00070693          	mv	a3,a4
   1a278:	0006841b          	sext.w	s0,a3
   1a27c:	02805663          	blez	s0,1a2a8 <_svfprintf_r+0x1458>
   1a280:	11812703          	lw	a4,280(sp)
   1a284:	008787b3          	add	a5,a5,s0
   1a288:	01733023          	sd	s7,0(t1)
   1a28c:	0017069b          	addiw	a3,a4,1
   1a290:	00833423          	sd	s0,8(t1)
   1a294:	12f13023          	sd	a5,288(sp)
   1a298:	10d12c23          	sw	a3,280(sp)
   1a29c:	00700713          	li	a4,7
   1a2a0:	01030313          	addi	t1,t1,16
   1a2a4:	40d742e3          	blt	a4,a3,1aea8 <_svfprintf_r+0x2058>
   1a2a8:	fff44713          	not	a4,s0
   1a2ac:	43f75713          	srai	a4,a4,0x3f
   1a2b0:	00e47433          	and	s0,s0,a4
   1a2b4:	4086043b          	subw	s0,a2,s0
   1a2b8:	ae805063          	blez	s0,19598 <_svfprintf_r+0x748>
   1a2bc:	11812703          	lw	a4,280(sp)
   1a2c0:	5e8d5863          	bge	s10,s0,1a8b0 <_svfprintf_r+0x1a60>
   1a2c4:	00700c93          	li	s9,7
   1a2c8:	01013b03          	ld	s6,16(sp)
   1a2cc:	00c0006f          	j	1a2d8 <_svfprintf_r+0x1488>
   1a2d0:	ff04041b          	addiw	s0,s0,-16
   1a2d4:	5c8d5e63          	bge	s10,s0,1a8b0 <_svfprintf_r+0x1a60>
   1a2d8:	0017071b          	addiw	a4,a4,1
   1a2dc:	01078793          	addi	a5,a5,16
   1a2e0:	01833023          	sd	s8,0(t1)
   1a2e4:	01a33423          	sd	s10,8(t1)
   1a2e8:	12f13023          	sd	a5,288(sp)
   1a2ec:	10e12c23          	sw	a4,280(sp)
   1a2f0:	01030313          	addi	t1,t1,16
   1a2f4:	fcecdee3          	bge	s9,a4,1a2d0 <_svfprintf_r+0x1480>
   1a2f8:	11010613          	addi	a2,sp,272
   1a2fc:	000b0593          	mv	a1,s6
   1a300:	000a8513          	mv	a0,s5
   1a304:	291030ef          	jal	ra,1dd94 <__ssprint_r>
   1a308:	00050463          	beqz	a0,1a310 <_svfprintf_r+0x14c0>
   1a30c:	d31fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a310:	12013783          	ld	a5,288(sp)
   1a314:	11812703          	lw	a4,280(sp)
   1a318:	19010313          	addi	t1,sp,400
   1a31c:	fb5ff06f          	j	1a2d0 <_svfprintf_r+0x1480>
   1a320:	0014f513          	andi	a0,s1,1
   1a324:	b4051063          	bnez	a0,19664 <_svfprintf_r+0x814>
   1a328:	00c33423          	sd	a2,8(t1)
   1a32c:	13913023          	sd	s9,288(sp)
   1a330:	10f12c23          	sw	a5,280(sp)
   1a334:	00700713          	li	a4,7
   1a338:	3cf74a63          	blt	a4,a5,1a70c <_svfprintf_r+0x18bc>
   1a33c:	00258b1b          	addiw	s6,a1,2
   1a340:	02030313          	addi	t1,t1,32
   1a344:	be0ff06f          	j	19724 <_svfprintf_r+0x8d4>
   1a348:	bd705e63          	blez	s7,19724 <_svfprintf_r+0x8d4>
   1a34c:	017d4463          	blt	s10,s7,1a354 <_svfprintf_r+0x1504>
   1a350:	1a00106f          	j	1b4f0 <_svfprintf_r+0x26a0>
   1a354:	00700b13          	li	s6,7
   1a358:	01013d83          	ld	s11,16(sp)
   1a35c:	0100006f          	j	1a36c <_svfprintf_r+0x151c>
   1a360:	ff0b8b9b          	addiw	s7,s7,-16
   1a364:	6f7d5463          	bge	s10,s7,1aa4c <_svfprintf_r+0x1bfc>
   1a368:	0017889b          	addiw	a7,a5,1
   1a36c:	010c8c93          	addi	s9,s9,16
   1a370:	01843023          	sd	s8,0(s0)
   1a374:	01a43423          	sd	s10,8(s0)
   1a378:	13913023          	sd	s9,288(sp)
   1a37c:	0008879b          	sext.w	a5,a7
   1a380:	11112c23          	sw	a7,280(sp)
   1a384:	01040413          	addi	s0,s0,16
   1a388:	fcfb5ce3          	bge	s6,a5,1a360 <_svfprintf_r+0x1510>
   1a38c:	11010613          	addi	a2,sp,272
   1a390:	000d8593          	mv	a1,s11
   1a394:	000a8513          	mv	a0,s5
   1a398:	1fd030ef          	jal	ra,1dd94 <__ssprint_r>
   1a39c:	00050463          	beqz	a0,1a3a4 <_svfprintf_r+0x1554>
   1a3a0:	c9dfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a3a4:	12013c83          	ld	s9,288(sp)
   1a3a8:	11812783          	lw	a5,280(sp)
   1a3ac:	19010413          	addi	s0,sp,400
   1a3b0:	fb1ff06f          	j	1a360 <_svfprintf_r+0x1510>
   1a3b4:	000d8493          	mv	s1,s11
   1a3b8:	bddfe06f          	j	18f94 <_svfprintf_r+0x144>
   1a3bc:	01013583          	ld	a1,16(sp)
   1a3c0:	11010613          	addi	a2,sp,272
   1a3c4:	000a8513          	mv	a0,s5
   1a3c8:	1cd030ef          	jal	ra,1dd94 <__ssprint_r>
   1a3cc:	00050463          	beqz	a0,1a3d4 <_svfprintf_r+0x1584>
   1a3d0:	c6dfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a3d4:	12013c83          	ld	s9,288(sp)
   1a3d8:	11812783          	lw	a5,280(sp)
   1a3dc:	19010413          	addi	s0,sp,400
   1a3e0:	a9cff06f          	j	1967c <_svfprintf_r+0x82c>
   1a3e4:	01013583          	ld	a1,16(sp)
   1a3e8:	11010613          	addi	a2,sp,272
   1a3ec:	000a8513          	mv	a0,s5
   1a3f0:	1a5030ef          	jal	ra,1dd94 <__ssprint_r>
   1a3f4:	00050463          	beqz	a0,1a3fc <_svfprintf_r+0x15ac>
   1a3f8:	c45fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a3fc:	12013c83          	ld	s9,288(sp)
   1a400:	11812783          	lw	a5,280(sp)
   1a404:	19010413          	addi	s0,sp,400
   1a408:	aa4ff06f          	j	196ac <_svfprintf_r+0x85c>
   1a40c:	03000793          	li	a5,48
   1a410:	18f105a3          	sb	a5,395(sp)
   1a414:	18b10d93          	addi	s11,sp,395
   1a418:	d15fe06f          	j	1912c <_svfprintf_r+0x2dc>
   1a41c:	00048a13          	mv	s4,s1
   1a420:	fd9fe06f          	j	193f8 <_svfprintf_r+0x5a8>
   1a424:	00048a13          	mv	s4,s1
   1a428:	f09fe06f          	j	19330 <_svfprintf_r+0x4e0>
   1a42c:	00094403          	lbu	s0,0(s2)
   1a430:	b89fe06f          	j	18fb8 <_svfprintf_r+0x168>
   1a434:	01813783          	ld	a5,24(sp)
   1a438:	03913023          	sd	s9,32(sp)
   1a43c:	0007b503          	ld	a0,0(a5)
   1a440:	00878793          	addi	a5,a5,8
   1a444:	00f13c23          	sd	a5,24(sp)
   1a448:	28d060ef          	jal	ra,20ed4 <__extenddftf2>
   1a44c:	10a13023          	sd	a0,256(sp)
   1a450:	10b13423          	sd	a1,264(sp)
   1a454:	02013303          	ld	t1,32(sp)
   1a458:	b40ff06f          	j	19798 <_svfprintf_r+0x948>
   1a45c:	01813783          	ld	a5,24(sp)
   1a460:	0007bb03          	ld	s6,0(a5)
   1a464:	c65fe06f          	j	190c8 <_svfprintf_r+0x278>
   1a468:	0006841b          	sext.w	s0,a3
   1a46c:	d4804ee3          	bgtz	s0,1a1c8 <_svfprintf_r+0x1378>
   1a470:	d81ff06f          	j	1a1f0 <_svfprintf_r+0x13a0>
   1a474:	01013583          	ld	a1,16(sp)
   1a478:	11010613          	addi	a2,sp,272
   1a47c:	000a8513          	mv	a0,s5
   1a480:	115030ef          	jal	ra,1dd94 <__ssprint_r>
   1a484:	00050463          	beqz	a0,1a48c <_svfprintf_r+0x163c>
   1a488:	bb5fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a48c:	12013783          	ld	a5,288(sp)
   1a490:	19010313          	addi	t1,sp,400
   1a494:	8adff06f          	j	19d40 <_svfprintf_r+0xef0>
   1a498:	0204e493          	ori	s1,s1,32
   1a49c:	00194403          	lbu	s0,1(s2)
   1a4a0:	0004849b          	sext.w	s1,s1
   1a4a4:	00190913          	addi	s2,s2,1
   1a4a8:	b11fe06f          	j	18fb8 <_svfprintf_r+0x168>
   1a4ac:	2004e493          	ori	s1,s1,512
   1a4b0:	00194403          	lbu	s0,1(s2)
   1a4b4:	0004849b          	sext.w	s1,s1
   1a4b8:	00190913          	addi	s2,s2,1
   1a4bc:	afdfe06f          	j	18fb8 <_svfprintf_r+0x168>
   1a4c0:	04813503          	ld	a0,72(sp)
   1a4c4:	04000593          	li	a1,64
   1a4c8:	f48fc0ef          	jal	ra,16c10 <_malloc_r>
   1a4cc:	01013783          	ld	a5,16(sp)
   1a4d0:	00a7b023          	sd	a0,0(a5)
   1a4d4:	00a7bc23          	sd	a0,24(a5)
   1a4d8:	00051463          	bnez	a0,1a4e0 <_svfprintf_r+0x1690>
   1a4dc:	0580106f          	j	1b534 <_svfprintf_r+0x26e4>
   1a4e0:	01013703          	ld	a4,16(sp)
   1a4e4:	04000793          	li	a5,64
   1a4e8:	02f72023          	sw	a5,32(a4)
   1a4ec:	9e9fe06f          	j	18ed4 <_svfprintf_r+0x84>
   1a4f0:	000b871b          	sext.w	a4,s7
   1a4f4:	00600793          	li	a5,6
   1a4f8:	000b8e13          	mv	t3,s7
   1a4fc:	6ce7e063          	bltu	a5,a4,1abbc <_svfprintf_r+0x1d6c>
   1a500:	000e0c9b          	sext.w	s9,t3
   1a504:	000c8a13          	mv	s4,s9
   1a508:	01613c23          	sd	s6,24(sp)
   1a50c:	00007d97          	auipc	s11,0x7
   1a510:	f24d8d93          	addi	s11,s11,-220 # 21430 <zeroes.4539+0x90>
   1a514:	f99fe06f          	j	194ac <_svfprintf_r+0x65c>
   1a518:	11812683          	lw	a3,280(sp)
   1a51c:	5e8d5663          	bge	s10,s0,1ab08 <_svfprintf_r+0x1cb8>
   1a520:	00700c93          	li	s9,7
   1a524:	01013b03          	ld	s6,16(sp)
   1a528:	00c0006f          	j	1a534 <_svfprintf_r+0x16e4>
   1a52c:	ff04041b          	addiw	s0,s0,-16
   1a530:	5c8d5c63          	bge	s10,s0,1ab08 <_svfprintf_r+0x1cb8>
   1a534:	0016869b          	addiw	a3,a3,1
   1a538:	01078793          	addi	a5,a5,16
   1a53c:	01833023          	sd	s8,0(t1)
   1a540:	01a33423          	sd	s10,8(t1)
   1a544:	12f13023          	sd	a5,288(sp)
   1a548:	10d12c23          	sw	a3,280(sp)
   1a54c:	01030313          	addi	t1,t1,16
   1a550:	fcdcdee3          	bge	s9,a3,1a52c <_svfprintf_r+0x16dc>
   1a554:	11010613          	addi	a2,sp,272
   1a558:	000b0593          	mv	a1,s6
   1a55c:	000a8513          	mv	a0,s5
   1a560:	035030ef          	jal	ra,1dd94 <__ssprint_r>
   1a564:	00050463          	beqz	a0,1a56c <_svfprintf_r+0x171c>
   1a568:	ad5fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a56c:	12013783          	ld	a5,288(sp)
   1a570:	11812683          	lw	a3,280(sp)
   1a574:	19010313          	addi	t1,sp,400
   1a578:	fb5ff06f          	j	1a52c <_svfprintf_r+0x16dc>
   1a57c:	03013703          	ld	a4,48(sp)
   1a580:	03813c83          	ld	s9,56(sp)
   1a584:	03213423          	sd	s2,40(sp)
   1a588:	06913423          	sd	s1,104(sp)
   1a58c:	09313423          	sd	s3,136(sp)
   1a590:	04013903          	ld	s2,64(sp)
   1a594:	03413c23          	sd	s4,56(sp)
   1a598:	05b13023          	sd	s11,64(sp)
   1a59c:	00700b13          	li	s6,7
   1a5a0:	00ed8433          	add	s0,s11,a4
   1a5a4:	09013983          	ld	s3,144(sp)
   1a5a8:	08013483          	ld	s1,128(sp)
   1a5ac:	01013a03          	ld	s4,16(sp)
   1a5b0:	0a0c8063          	beqz	s9,1a650 <_svfprintf_r+0x1800>
   1a5b4:	0a091063          	bnez	s2,1a654 <_svfprintf_r+0x1804>
   1a5b8:	fff48493          	addi	s1,s1,-1
   1a5bc:	fffc8c9b          	addiw	s9,s9,-1
   1a5c0:	07813703          	ld	a4,120(sp)
   1a5c4:	013787b3          	add	a5,a5,s3
   1a5c8:	01333423          	sd	s3,8(t1)
   1a5cc:	00e33023          	sd	a4,0(t1)
   1a5d0:	11812703          	lw	a4,280(sp)
   1a5d4:	12f13023          	sd	a5,288(sp)
   1a5d8:	01030313          	addi	t1,t1,16
   1a5dc:	0017069b          	addiw	a3,a4,1
   1a5e0:	10d12c23          	sw	a3,280(sp)
   1a5e4:	10db4263          	blt	s6,a3,1a6e8 <_svfprintf_r+0x1898>
   1a5e8:	0004c603          	lbu	a2,0(s1)
   1a5ec:	417405bb          	subw	a1,s0,s7
   1a5f0:	0006071b          	sext.w	a4,a2
   1a5f4:	00070693          	mv	a3,a4
   1a5f8:	00e5d463          	bge	a1,a4,1a600 <_svfprintf_r+0x17b0>
   1a5fc:	00058693          	mv	a3,a1
   1a600:	00068d9b          	sext.w	s11,a3
   1a604:	03b05863          	blez	s11,1a634 <_svfprintf_r+0x17e4>
   1a608:	11812703          	lw	a4,280(sp)
   1a60c:	01b787b3          	add	a5,a5,s11
   1a610:	01733023          	sd	s7,0(t1)
   1a614:	0017061b          	addiw	a2,a4,1
   1a618:	01b33423          	sd	s11,8(t1)
   1a61c:	12f13023          	sd	a5,288(sp)
   1a620:	10c12c23          	sw	a2,280(sp)
   1a624:	2acb4a63          	blt	s6,a2,1a8d8 <_svfprintf_r+0x1a88>
   1a628:	0004c603          	lbu	a2,0(s1)
   1a62c:	01030313          	addi	t1,t1,16
   1a630:	0006071b          	sext.w	a4,a2
   1a634:	fffdc593          	not	a1,s11
   1a638:	43f5d593          	srai	a1,a1,0x3f
   1a63c:	00bdf6b3          	and	a3,s11,a1
   1a640:	40d70dbb          	subw	s11,a4,a3
   1a644:	01b04c63          	bgtz	s11,1a65c <_svfprintf_r+0x180c>
   1a648:	00cb8bb3          	add	s7,s7,a2
   1a64c:	f60c94e3          	bnez	s9,1a5b4 <_svfprintf_r+0x1764>
   1a650:	62090e63          	beqz	s2,1ac8c <_svfprintf_r+0x1e3c>
   1a654:	fff9091b          	addiw	s2,s2,-1
   1a658:	f69ff06f          	j	1a5c0 <_svfprintf_r+0x1770>
   1a65c:	11812683          	lw	a3,280(sp)
   1a660:	01bd4863          	blt	s10,s11,1a670 <_svfprintf_r+0x1820>
   1a664:	0580006f          	j	1a6bc <_svfprintf_r+0x186c>
   1a668:	ff0d8d9b          	addiw	s11,s11,-16
   1a66c:	05bd5863          	bge	s10,s11,1a6bc <_svfprintf_r+0x186c>
   1a670:	0016869b          	addiw	a3,a3,1
   1a674:	01078793          	addi	a5,a5,16
   1a678:	01833023          	sd	s8,0(t1)
   1a67c:	01a33423          	sd	s10,8(t1)
   1a680:	12f13023          	sd	a5,288(sp)
   1a684:	10d12c23          	sw	a3,280(sp)
   1a688:	01030313          	addi	t1,t1,16
   1a68c:	fcdb5ee3          	bge	s6,a3,1a668 <_svfprintf_r+0x1818>
   1a690:	11010613          	addi	a2,sp,272
   1a694:	000a0593          	mv	a1,s4
   1a698:	000a8513          	mv	a0,s5
   1a69c:	6f8030ef          	jal	ra,1dd94 <__ssprint_r>
   1a6a0:	00050463          	beqz	a0,1a6a8 <_svfprintf_r+0x1858>
   1a6a4:	999fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a6a8:	ff0d8d9b          	addiw	s11,s11,-16
   1a6ac:	12013783          	ld	a5,288(sp)
   1a6b0:	11812683          	lw	a3,280(sp)
   1a6b4:	19010313          	addi	t1,sp,400
   1a6b8:	fbbd4ce3          	blt	s10,s11,1a670 <_svfprintf_r+0x1820>
   1a6bc:	0016871b          	addiw	a4,a3,1
   1a6c0:	01b787b3          	add	a5,a5,s11
   1a6c4:	01833023          	sd	s8,0(t1)
   1a6c8:	01b33423          	sd	s11,8(t1)
   1a6cc:	12f13023          	sd	a5,288(sp)
   1a6d0:	10e12c23          	sw	a4,280(sp)
   1a6d4:	70eb4863          	blt	s6,a4,1ade4 <_svfprintf_r+0x1f94>
   1a6d8:	0004c603          	lbu	a2,0(s1)
   1a6dc:	01030313          	addi	t1,t1,16
   1a6e0:	00cb8bb3          	add	s7,s7,a2
   1a6e4:	f69ff06f          	j	1a64c <_svfprintf_r+0x17fc>
   1a6e8:	11010613          	addi	a2,sp,272
   1a6ec:	000a0593          	mv	a1,s4
   1a6f0:	000a8513          	mv	a0,s5
   1a6f4:	6a0030ef          	jal	ra,1dd94 <__ssprint_r>
   1a6f8:	00050463          	beqz	a0,1a700 <_svfprintf_r+0x18b0>
   1a6fc:	941fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a700:	12013783          	ld	a5,288(sp)
   1a704:	19010313          	addi	t1,sp,400
   1a708:	ee1ff06f          	j	1a5e8 <_svfprintf_r+0x1798>
   1a70c:	01013583          	ld	a1,16(sp)
   1a710:	11010613          	addi	a2,sp,272
   1a714:	000a8513          	mv	a0,s5
   1a718:	67c030ef          	jal	ra,1dd94 <__ssprint_r>
   1a71c:	00050463          	beqz	a0,1a724 <_svfprintf_r+0x18d4>
   1a720:	91dfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a724:	11812583          	lw	a1,280(sp)
   1a728:	12013c83          	ld	s9,288(sp)
   1a72c:	1a010313          	addi	t1,sp,416
   1a730:	00158b1b          	addiw	s6,a1,1
   1a734:	19010413          	addi	s0,sp,400
   1a738:	fedfe06f          	j	19724 <_svfprintf_r+0x8d4>
   1a73c:	11812683          	lw	a3,280(sp)
   1a740:	00007617          	auipc	a2,0x7
   1a744:	cf860613          	addi	a2,a2,-776 # 21438 <zeroes.4539+0x98>
   1a748:	00c33023          	sd	a2,0(t1)
   1a74c:	0016869b          	addiw	a3,a3,1
   1a750:	00100613          	li	a2,1
   1a754:	00178793          	addi	a5,a5,1
   1a758:	00c33423          	sd	a2,8(t1)
   1a75c:	10d12c23          	sw	a3,280(sp)
   1a760:	0006861b          	sext.w	a2,a3
   1a764:	12f13023          	sd	a5,288(sp)
   1a768:	00700693          	li	a3,7
   1a76c:	01030313          	addi	t1,t1,16
   1a770:	06c6cc63          	blt	a3,a2,1a7e8 <_svfprintf_r+0x1998>
   1a774:	1e059863          	bnez	a1,1a964 <_svfprintf_r+0x1b14>
   1a778:	03013703          	ld	a4,48(sp)
   1a77c:	0014f693          	andi	a3,s1,1
   1a780:	00d766b3          	or	a3,a4,a3
   1a784:	00069463          	bnez	a3,1a78c <_svfprintf_r+0x193c>
   1a788:	e11fe06f          	j	19598 <_svfprintf_r+0x748>
   1a78c:	11812603          	lw	a2,280(sp)
   1a790:	05013703          	ld	a4,80(sp)
   1a794:	06013683          	ld	a3,96(sp)
   1a798:	00e787b3          	add	a5,a5,a4
   1a79c:	00d33023          	sd	a3,0(t1)
   1a7a0:	0016069b          	addiw	a3,a2,1
   1a7a4:	00e33423          	sd	a4,8(t1)
   1a7a8:	12f13023          	sd	a5,288(sp)
   1a7ac:	10d12c23          	sw	a3,280(sp)
   1a7b0:	00700613          	li	a2,7
   1a7b4:	48d64c63          	blt	a2,a3,1ac4c <_svfprintf_r+0x1dfc>
   1a7b8:	01030313          	addi	t1,t1,16
   1a7bc:	03013703          	ld	a4,48(sp)
   1a7c0:	0016861b          	addiw	a2,a3,1
   1a7c4:	01b33023          	sd	s11,0(t1)
   1a7c8:	00f707b3          	add	a5,a4,a5
   1a7cc:	00e33423          	sd	a4,8(t1)
   1a7d0:	12f13023          	sd	a5,288(sp)
   1a7d4:	10c12c23          	sw	a2,280(sp)
   1a7d8:	00700713          	li	a4,7
   1a7dc:	00c74463          	blt	a4,a2,1a7e4 <_svfprintf_r+0x1994>
   1a7e0:	db5fe06f          	j	19594 <_svfprintf_r+0x744>
   1a7e4:	f65fe06f          	j	19748 <_svfprintf_r+0x8f8>
   1a7e8:	01013583          	ld	a1,16(sp)
   1a7ec:	11010613          	addi	a2,sp,272
   1a7f0:	000a8513          	mv	a0,s5
   1a7f4:	5a0030ef          	jal	ra,1dd94 <__ssprint_r>
   1a7f8:	00050463          	beqz	a0,1a800 <_svfprintf_r+0x19b0>
   1a7fc:	841fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a800:	0e812583          	lw	a1,232(sp)
   1a804:	12013783          	ld	a5,288(sp)
   1a808:	19010313          	addi	t1,sp,400
   1a80c:	f69ff06f          	j	1a774 <_svfprintf_r+0x1924>
   1a810:	400a7493          	andi	s1,s4,1024
   1a814:	03213023          	sd	s2,32(sp)
   1a818:	08013903          	ld	s2,128(sp)
   1a81c:	18c10c93          	addi	s9,sp,396
   1a820:	0004849b          	sext.w	s1,s1
   1a824:	00000793          	li	a5,0
   1a828:	000c8d93          	mv	s11,s9
   1a82c:	02813423          	sd	s0,40(sp)
   1a830:	03313c23          	sd	s3,56(sp)
   1a834:	000c8413          	mv	s0,s9
   1a838:	000b0993          	mv	s3,s6
   1a83c:	000a8c93          	mv	s9,s5
   1a840:	00048b13          	mv	s6,s1
   1a844:	00030a93          	mv	s5,t1
   1a848:	00078493          	mv	s1,a5
   1a84c:	00a00593          	li	a1,10
   1a850:	00098513          	mv	a0,s3
   1a854:	a59f50ef          	jal	ra,102ac <__umoddi3>
   1a858:	0305051b          	addiw	a0,a0,48
   1a85c:	fea40fa3          	sb	a0,-1(s0)
   1a860:	0014849b          	addiw	s1,s1,1
   1a864:	fff40413          	addi	s0,s0,-1
   1a868:	000b0663          	beqz	s6,1a874 <_svfprintf_r+0x1a24>
   1a86c:	00094683          	lbu	a3,0(s2)
   1a870:	bcd48a63          	beq	s1,a3,19c44 <_svfprintf_r+0xdf4>
   1a874:	00a00593          	li	a1,10
   1a878:	00098513          	mv	a0,s3
   1a87c:	9e9f50ef          	jal	ra,10264 <__udivdi3>
   1a880:	00900793          	li	a5,9
   1a884:	bd37f863          	bgeu	a5,s3,19c54 <_svfprintf_r+0xe04>
   1a888:	00050993          	mv	s3,a0
   1a88c:	fc1ff06f          	j	1a84c <_svfprintf_r+0x19fc>
   1a890:	01013583          	ld	a1,16(sp)
   1a894:	11010613          	addi	a2,sp,272
   1a898:	000a8513          	mv	a0,s5
   1a89c:	4f8030ef          	jal	ra,1dd94 <__ssprint_r>
   1a8a0:	00050463          	beqz	a0,1a8a8 <_svfprintf_r+0x1a58>
   1a8a4:	f98fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a8a8:	19010313          	addi	t1,sp,400
   1a8ac:	c40ff06f          	j	19cec <_svfprintf_r+0xe9c>
   1a8b0:	0017069b          	addiw	a3,a4,1
   1a8b4:	01833023          	sd	s8,0(t1)
   1a8b8:	00833423          	sd	s0,8(t1)
   1a8bc:	008787b3          	add	a5,a5,s0
   1a8c0:	12f13023          	sd	a5,288(sp)
   1a8c4:	10d12c23          	sw	a3,280(sp)
   1a8c8:	00700713          	li	a4,7
   1a8cc:	00d74463          	blt	a4,a3,1a8d4 <_svfprintf_r+0x1a84>
   1a8d0:	cc5fe06f          	j	19594 <_svfprintf_r+0x744>
   1a8d4:	e75fe06f          	j	19748 <_svfprintf_r+0x8f8>
   1a8d8:	11010613          	addi	a2,sp,272
   1a8dc:	000a0593          	mv	a1,s4
   1a8e0:	000a8513          	mv	a0,s5
   1a8e4:	4b0030ef          	jal	ra,1dd94 <__ssprint_r>
   1a8e8:	00050463          	beqz	a0,1a8f0 <_svfprintf_r+0x1aa0>
   1a8ec:	f50fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a8f0:	0004c603          	lbu	a2,0(s1)
   1a8f4:	12013783          	ld	a5,288(sp)
   1a8f8:	19010313          	addi	t1,sp,400
   1a8fc:	0006071b          	sext.w	a4,a2
   1a900:	d35ff06f          	j	1a634 <_svfprintf_r+0x17e4>
   1a904:	10013503          	ld	a0,256(sp)
   1a908:	10813583          	ld	a1,264(sp)
   1a90c:	00000613          	li	a2,0
   1a910:	00000693          	li	a3,0
   1a914:	4f8050ef          	jal	ra,1fe0c <__letf2>
   1a918:	02013303          	ld	t1,32(sp)
   1a91c:	52054663          	bltz	a0,1ae48 <_svfprintf_r+0x1ff8>
   1a920:	0df14783          	lbu	a5,223(sp)
   1a924:	04700693          	li	a3,71
   1a928:	00007d97          	auipc	s11,0x7
   1a92c:	ab8d8d93          	addi	s11,s11,-1352 # 213e0 <zeroes.4539+0x40>
   1a930:	2286c063          	blt	a3,s0,1ab50 <_svfprintf_r+0x1d00>
   1a934:	f7f4f493          	andi	s1,s1,-129
   1a938:	02013023          	sd	zero,32(sp)
   1a93c:	04013023          	sd	zero,64(sp)
   1a940:	02013c23          	sd	zero,56(sp)
   1a944:	02013423          	sd	zero,40(sp)
   1a948:	0004849b          	sext.w	s1,s1
   1a94c:	00300a13          	li	s4,3
   1a950:	00300c93          	li	s9,3
   1a954:	00000b93          	li	s7,0
   1a958:	00078463          	beqz	a5,1a960 <_svfprintf_r+0x1b10>
   1a95c:	ff4fe06f          	j	19150 <_svfprintf_r+0x300>
   1a960:	b61fe06f          	j	194c0 <_svfprintf_r+0x670>
   1a964:	11812603          	lw	a2,280(sp)
   1a968:	05013703          	ld	a4,80(sp)
   1a96c:	06013683          	ld	a3,96(sp)
   1a970:	01030313          	addi	t1,t1,16
   1a974:	00e787b3          	add	a5,a5,a4
   1a978:	fed33823          	sd	a3,-16(t1)
   1a97c:	0016069b          	addiw	a3,a2,1
   1a980:	fee33c23          	sd	a4,-8(t1)
   1a984:	12f13023          	sd	a5,288(sp)
   1a988:	10d12c23          	sw	a3,280(sp)
   1a98c:	00700613          	li	a2,7
   1a990:	2ad64e63          	blt	a2,a3,1ac4c <_svfprintf_r+0x1dfc>
   1a994:	e205d4e3          	bgez	a1,1a7bc <_svfprintf_r+0x196c>
   1a998:	ff000613          	li	a2,-16
   1a99c:	40b0043b          	negw	s0,a1
   1a9a0:	0ec5d6e3          	bge	a1,a2,1b28c <_svfprintf_r+0x243c>
   1a9a4:	00700c93          	li	s9,7
   1a9a8:	01013b03          	ld	s6,16(sp)
   1a9ac:	00c0006f          	j	1a9b8 <_svfprintf_r+0x1b68>
   1a9b0:	ff04041b          	addiw	s0,s0,-16
   1a9b4:	0c8d5ce3          	bge	s10,s0,1b28c <_svfprintf_r+0x243c>
   1a9b8:	0016869b          	addiw	a3,a3,1
   1a9bc:	01078793          	addi	a5,a5,16
   1a9c0:	01833023          	sd	s8,0(t1)
   1a9c4:	01a33423          	sd	s10,8(t1)
   1a9c8:	12f13023          	sd	a5,288(sp)
   1a9cc:	10d12c23          	sw	a3,280(sp)
   1a9d0:	01030313          	addi	t1,t1,16
   1a9d4:	fcdcdee3          	bge	s9,a3,1a9b0 <_svfprintf_r+0x1b60>
   1a9d8:	11010613          	addi	a2,sp,272
   1a9dc:	000b0593          	mv	a1,s6
   1a9e0:	000a8513          	mv	a0,s5
   1a9e4:	3b0030ef          	jal	ra,1dd94 <__ssprint_r>
   1a9e8:	00050463          	beqz	a0,1a9f0 <_svfprintf_r+0x1ba0>
   1a9ec:	e50fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1a9f0:	12013783          	ld	a5,288(sp)
   1a9f4:	11812683          	lw	a3,280(sp)
   1a9f8:	19010313          	addi	t1,sp,400
   1a9fc:	fb5ff06f          	j	1a9b0 <_svfprintf_r+0x1b60>
   1aa00:	000d8513          	mv	a0,s11
   1aa04:	07913423          	sd	s9,104(sp)
   1aa08:	aa8fe0ef          	jal	ra,18cb0 <strlen>
   1aa0c:	00050c9b          	sext.w	s9,a0
   1aa10:	fffcca13          	not	s4,s9
   1aa14:	0df14783          	lbu	a5,223(sp)
   1aa18:	43fa5a13          	srai	s4,s4,0x3f
   1aa1c:	014cfa33          	and	s4,s9,s4
   1aa20:	01613c23          	sd	s6,24(sp)
   1aa24:	02013023          	sd	zero,32(sp)
   1aa28:	04013023          	sd	zero,64(sp)
   1aa2c:	02013c23          	sd	zero,56(sp)
   1aa30:	02013423          	sd	zero,40(sp)
   1aa34:	000a0a1b          	sext.w	s4,s4
   1aa38:	00000b93          	li	s7,0
   1aa3c:	06813303          	ld	t1,104(sp)
   1aa40:	00078463          	beqz	a5,1aa48 <_svfprintf_r+0x1bf8>
   1aa44:	f0cfe06f          	j	19150 <_svfprintf_r+0x300>
   1aa48:	a79fe06f          	j	194c0 <_svfprintf_r+0x670>
   1aa4c:	00178b1b          	addiw	s6,a5,1
   1aa50:	01040793          	addi	a5,s0,16
   1aa54:	017c8cb3          	add	s9,s9,s7
   1aa58:	01843023          	sd	s8,0(s0)
   1aa5c:	01743423          	sd	s7,8(s0)
   1aa60:	13913023          	sd	s9,288(sp)
   1aa64:	11612c23          	sw	s6,280(sp)
   1aa68:	00700713          	li	a4,7
   1aa6c:	cb6740e3          	blt	a4,s6,1a70c <_svfprintf_r+0x18bc>
   1aa70:	001b0b1b          	addiw	s6,s6,1
   1aa74:	01078313          	addi	t1,a5,16
   1aa78:	00078413          	mv	s0,a5
   1aa7c:	ca9fe06f          	j	19724 <_svfprintf_r+0x8d4>
   1aa80:	2004f793          	andi	a5,s1,512
   1aa84:	1a078263          	beqz	a5,1ac28 <_svfprintf_r+0x1dd8>
   1aa88:	0ffb7b13          	andi	s6,s6,255
   1aa8c:	00e13c23          	sd	a4,24(sp)
   1aa90:	00048a13          	mv	s4,s1
   1aa94:	00100793          	li	a5,1
   1aa98:	e60fe06f          	j	190f8 <_svfprintf_r+0x2a8>
   1aa9c:	2004f793          	andi	a5,s1,512
   1aaa0:	16078863          	beqz	a5,1ac10 <_svfprintf_r+0x1dc0>
   1aaa4:	01813783          	ld	a5,24(sp)
   1aaa8:	00048a13          	mv	s4,s1
   1aaac:	00e13c23          	sd	a4,24(sp)
   1aab0:	00078b03          	lb	s6,0(a5)
   1aab4:	000b0793          	mv	a5,s6
   1aab8:	8edfe06f          	j	193a4 <_svfprintf_r+0x554>
   1aabc:	2004f793          	andi	a5,s1,512
   1aac0:	14078063          	beqz	a5,1ac00 <_svfprintf_r+0x1db0>
   1aac4:	0ffb7b13          	andi	s6,s6,255
   1aac8:	00e13c23          	sd	a4,24(sp)
   1aacc:	841fe06f          	j	1930c <_svfprintf_r+0x4bc>
   1aad0:	2004f793          	andi	a5,s1,512
   1aad4:	12078063          	beqz	a5,1abf4 <_svfprintf_r+0x1da4>
   1aad8:	0ffb7b13          	andi	s6,s6,255
   1aadc:	decfe06f          	j	190c8 <_svfprintf_r+0x278>
   1aae0:	10813783          	ld	a5,264(sp)
   1aae4:	1407ce63          	bltz	a5,1ac40 <_svfprintf_r+0x1df0>
   1aae8:	0df14783          	lbu	a5,223(sp)
   1aaec:	04700693          	li	a3,71
   1aaf0:	00007d97          	auipc	s11,0x7
   1aaf4:	900d8d93          	addi	s11,s11,-1792 # 213f0 <zeroes.4539+0x50>
   1aaf8:	e286dee3          	bge	a3,s0,1a934 <_svfprintf_r+0x1ae4>
   1aafc:	00007d97          	auipc	s11,0x7
   1ab00:	8fcd8d93          	addi	s11,s11,-1796 # 213f8 <zeroes.4539+0x58>
   1ab04:	e31ff06f          	j	1a934 <_svfprintf_r+0x1ae4>
   1ab08:	0016861b          	addiw	a2,a3,1
   1ab0c:	008787b3          	add	a5,a5,s0
   1ab10:	01833023          	sd	s8,0(t1)
   1ab14:	00833423          	sd	s0,8(t1)
   1ab18:	12f13023          	sd	a5,288(sp)
   1ab1c:	10c12c23          	sw	a2,280(sp)
   1ab20:	00700693          	li	a3,7
   1ab24:	01030313          	addi	t1,t1,16
   1ab28:	eec6d063          	bge	a3,a2,1a208 <_svfprintf_r+0x13b8>
   1ab2c:	01013583          	ld	a1,16(sp)
   1ab30:	11010613          	addi	a2,sp,272
   1ab34:	000a8513          	mv	a0,s5
   1ab38:	25c030ef          	jal	ra,1dd94 <__ssprint_r>
   1ab3c:	00050463          	beqz	a0,1ab44 <_svfprintf_r+0x1cf4>
   1ab40:	cfcfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1ab44:	12013783          	ld	a5,288(sp)
   1ab48:	19010313          	addi	t1,sp,400
   1ab4c:	ebcff06f          	j	1a208 <_svfprintf_r+0x13b8>
   1ab50:	00007d97          	auipc	s11,0x7
   1ab54:	898d8d93          	addi	s11,s11,-1896 # 213e8 <zeroes.4539+0x48>
   1ab58:	dddff06f          	j	1a934 <_svfprintf_r+0x1ae4>
   1ab5c:	01013583          	ld	a1,16(sp)
   1ab60:	11010613          	addi	a2,sp,272
   1ab64:	000a8513          	mv	a0,s5
   1ab68:	22c030ef          	jal	ra,1dd94 <__ssprint_r>
   1ab6c:	00050463          	beqz	a0,1ab74 <_svfprintf_r+0x1d24>
   1ab70:	cccfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1ab74:	12013783          	ld	a5,288(sp)
   1ab78:	19010313          	addi	t1,sp,400
   1ab7c:	e74ff06f          	j	1a1f0 <_svfprintf_r+0x13a0>
   1ab80:	09013783          	ld	a5,144(sp)
   1ab84:	07813583          	ld	a1,120(sp)
   1ab88:	00000493          	li	s1,0
   1ab8c:	40f40433          	sub	s0,s0,a5
   1ab90:	00078613          	mv	a2,a5
   1ab94:	00040513          	mv	a0,s0
   1ab98:	9e8fe0ef          	jal	ra,18d80 <strncpy>
   1ab9c:	00194683          	lbu	a3,1(s2)
   1aba0:	00098513          	mv	a0,s3
   1aba4:	00a00593          	li	a1,10
   1aba8:	00d03733          	snez	a4,a3
   1abac:	00e90933          	add	s2,s2,a4
   1abb0:	eb4f50ef          	jal	ra,10264 <__udivdi3>
   1abb4:	00050993          	mv	s3,a0
   1abb8:	c95ff06f          	j	1a84c <_svfprintf_r+0x19fc>
   1abbc:	00600e13          	li	t3,6
   1abc0:	941ff06f          	j	1a500 <_svfprintf_r+0x16b0>
   1abc4:	03013703          	ld	a4,48(sp)
   1abc8:	40d7063b          	subw	a2,a4,a3
   1abcc:	00ed8733          	add	a4,s11,a4
   1abd0:	4177083b          	subw	a6,a4,s7
   1abd4:	00060413          	mv	s0,a2
   1abd8:	ecc85863          	bge	a6,a2,1a2a8 <_svfprintf_r+0x1458>
   1abdc:	0008041b          	sext.w	s0,a6
   1abe0:	ec8ff06f          	j	1a2a8 <_svfprintf_r+0x1458>
   1abe4:	00813783          	ld	a5,8(sp)
   1abe8:	00090d93          	mv	s11,s2
   1abec:	00f71023          	sh	a5,0(a4)
   1abf0:	9f5fe06f          	j	195e4 <_svfprintf_r+0x794>
   1abf4:	020b1b13          	slli	s6,s6,0x20
   1abf8:	020b5b13          	srli	s6,s6,0x20
   1abfc:	cccfe06f          	j	190c8 <_svfprintf_r+0x278>
   1ac00:	020b1b13          	slli	s6,s6,0x20
   1ac04:	020b5b13          	srli	s6,s6,0x20
   1ac08:	00e13c23          	sd	a4,24(sp)
   1ac0c:	f00fe06f          	j	1930c <_svfprintf_r+0x4bc>
   1ac10:	01813783          	ld	a5,24(sp)
   1ac14:	00048a13          	mv	s4,s1
   1ac18:	00e13c23          	sd	a4,24(sp)
   1ac1c:	0007ab03          	lw	s6,0(a5)
   1ac20:	000b0793          	mv	a5,s6
   1ac24:	f80fe06f          	j	193a4 <_svfprintf_r+0x554>
   1ac28:	020b1b13          	slli	s6,s6,0x20
   1ac2c:	020b5b13          	srli	s6,s6,0x20
   1ac30:	00e13c23          	sd	a4,24(sp)
   1ac34:	00048a13          	mv	s4,s1
   1ac38:	00100793          	li	a5,1
   1ac3c:	cbcfe06f          	j	190f8 <_svfprintf_r+0x2a8>
   1ac40:	02d00793          	li	a5,45
   1ac44:	0cf10fa3          	sb	a5,223(sp)
   1ac48:	ea5ff06f          	j	1aaec <_svfprintf_r+0x1c9c>
   1ac4c:	01013583          	ld	a1,16(sp)
   1ac50:	11010613          	addi	a2,sp,272
   1ac54:	000a8513          	mv	a0,s5
   1ac58:	13c030ef          	jal	ra,1dd94 <__ssprint_r>
   1ac5c:	00050463          	beqz	a0,1ac64 <_svfprintf_r+0x1e14>
   1ac60:	bdcfe06f          	j	1903c <_svfprintf_r+0x1ec>
   1ac64:	0e812583          	lw	a1,232(sp)
   1ac68:	12013783          	ld	a5,288(sp)
   1ac6c:	11812683          	lw	a3,280(sp)
   1ac70:	19010313          	addi	t1,sp,400
   1ac74:	b405d4e3          	bgez	a1,1a7bc <_svfprintf_r+0x196c>
   1ac78:	d21ff06f          	j	1a998 <_svfprintf_r+0x1b48>
   1ac7c:	00600b93          	li	s7,6
   1ac80:	b7dfe06f          	j	197fc <_svfprintf_r+0x9ac>
   1ac84:	00048a13          	mv	s4,s1
   1ac88:	fa5fe06f          	j	19c2c <_svfprintf_r+0xddc>
   1ac8c:	04013d83          	ld	s11,64(sp)
   1ac90:	03013703          	ld	a4,48(sp)
   1ac94:	08913023          	sd	s1,128(sp)
   1ac98:	02813903          	ld	s2,40(sp)
   1ac9c:	00ed86b3          	add	a3,s11,a4
   1aca0:	08813983          	ld	s3,136(sp)
   1aca4:	06813483          	ld	s1,104(sp)
   1aca8:	03813a03          	ld	s4,56(sp)
   1acac:	d776f663          	bgeu	a3,s7,1a218 <_svfprintf_r+0x13c8>
   1acb0:	00068b93          	mv	s7,a3
   1acb4:	d64ff06f          	j	1a218 <_svfprintf_r+0x13c8>
   1acb8:	02813703          	ld	a4,40(sp)
   1acbc:	ffd00793          	li	a5,-3
   1acc0:	00f74463          	blt	a4,a5,1acc8 <_svfprintf_r+0x1e78>
   1acc4:	00ebda63          	bge	s7,a4,1acd8 <_svfprintf_r+0x1e88>
   1acc8:	ffe4041b          	addiw	s0,s0,-2
   1accc:	fdf47793          	andi	a5,s0,-33
   1acd0:	02f13c23          	sd	a5,56(sp)
   1acd4:	bfdfe06f          	j	198d0 <_svfprintf_r+0xa80>
   1acd8:	03013783          	ld	a5,48(sp)
   1acdc:	02813703          	ld	a4,40(sp)
   1ace0:	1ef74c63          	blt	a4,a5,1aed8 <_svfprintf_r+0x2088>
   1ace4:	04013783          	ld	a5,64(sp)
   1ace8:	00070c93          	mv	s9,a4
   1acec:	0017f793          	andi	a5,a5,1
   1acf0:	00078663          	beqz	a5,1acfc <_svfprintf_r+0x1eac>
   1acf4:	05013783          	ld	a5,80(sp)
   1acf8:	00e78cbb          	addw	s9,a5,a4
   1acfc:	04013783          	ld	a5,64(sp)
   1ad00:	4007f793          	andi	a5,a5,1024
   1ad04:	00078663          	beqz	a5,1ad10 <_svfprintf_r+0x1ec0>
   1ad08:	02813783          	ld	a5,40(sp)
   1ad0c:	68f04a63          	bgtz	a5,1b3a0 <_svfprintf_r+0x2550>
   1ad10:	fffcca13          	not	s4,s9
   1ad14:	43fa5a13          	srai	s4,s4,0x3f
   1ad18:	014cfa33          	and	s4,s9,s4
   1ad1c:	000a0a1b          	sext.w	s4,s4
   1ad20:	06700413          	li	s0,103
   1ad24:	04013023          	sd	zero,64(sp)
   1ad28:	02013c23          	sd	zero,56(sp)
   1ad2c:	ce9fe06f          	j	19a14 <_svfprintf_r+0xbc4>
   1ad30:	0e810793          	addi	a5,sp,232
   1ad34:	00300693          	li	a3,3
   1ad38:	000e8593          	mv	a1,t4
   1ad3c:	0f810893          	addi	a7,sp,248
   1ad40:	0ec10813          	addi	a6,sp,236
   1ad44:	000b8713          	mv	a4,s7
   1ad48:	000c8613          	mv	a2,s9
   1ad4c:	000a8513          	mv	a0,s5
   1ad50:	02613823          	sd	t1,48(sp)
   1ad54:	03d13423          	sd	t4,40(sp)
   1ad58:	8a5fa0ef          	jal	ra,155fc <_ldtoa_r>
   1ad5c:	00054683          	lbu	a3,0(a0)
   1ad60:	03000793          	li	a5,48
   1ad64:	00050d93          	mv	s11,a0
   1ad68:	02813e83          	ld	t4,40(sp)
   1ad6c:	03013303          	ld	t1,48(sp)
   1ad70:	0af68063          	beq	a3,a5,1ae10 <_svfprintf_r+0x1fc0>
   1ad74:	0e812783          	lw	a5,232(sp)
   1ad78:	017787b3          	add	a5,a5,s7
   1ad7c:	00fd8a33          	add	s4,s11,a5
   1ad80:	00000613          	li	a2,0
   1ad84:	00000693          	li	a3,0
   1ad88:	000e8513          	mv	a0,t4
   1ad8c:	000c8593          	mv	a1,s9
   1ad90:	02613423          	sd	t1,40(sp)
   1ad94:	70d040ef          	jal	ra,1fca0 <__eqtf2>
   1ad98:	000a0793          	mv	a5,s4
   1ad9c:	02813303          	ld	t1,40(sp)
   1ada0:	00051463          	bnez	a0,1ada8 <_svfprintf_r+0x1f58>
   1ada4:	afdfe06f          	j	198a0 <_svfprintf_r+0xa50>
   1ada8:	0f813783          	ld	a5,248(sp)
   1adac:	03000613          	li	a2,48
   1adb0:	0147e463          	bltu	a5,s4,1adb8 <_svfprintf_r+0x1f68>
   1adb4:	aedfe06f          	j	198a0 <_svfprintf_r+0xa50>
   1adb8:	00178713          	addi	a4,a5,1
   1adbc:	0ee13c23          	sd	a4,248(sp)
   1adc0:	00c78023          	sb	a2,0(a5)
   1adc4:	0f813783          	ld	a5,248(sp)
   1adc8:	ff47e8e3          	bltu	a5,s4,1adb8 <_svfprintf_r+0x1f68>
   1adcc:	ad5fe06f          	j	198a0 <_svfprintf_r+0xa50>
   1add0:	0df14783          	lbu	a5,223(sp)
   1add4:	00000b93          	li	s7,0
   1add8:	00078463          	beqz	a5,1ade0 <_svfprintf_r+0x1f90>
   1addc:	b74fe06f          	j	19150 <_svfprintf_r+0x300>
   1ade0:	ee0fe06f          	j	194c0 <_svfprintf_r+0x670>
   1ade4:	11010613          	addi	a2,sp,272
   1ade8:	000a0593          	mv	a1,s4
   1adec:	000a8513          	mv	a0,s5
   1adf0:	7a5020ef          	jal	ra,1dd94 <__ssprint_r>
   1adf4:	00050463          	beqz	a0,1adfc <_svfprintf_r+0x1fac>
   1adf8:	a44fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1adfc:	0004c603          	lbu	a2,0(s1)
   1ae00:	12013783          	ld	a5,288(sp)
   1ae04:	19010313          	addi	t1,sp,400
   1ae08:	00cb8bb3          	add	s7,s7,a2
   1ae0c:	841ff06f          	j	1a64c <_svfprintf_r+0x17fc>
   1ae10:	000e8513          	mv	a0,t4
   1ae14:	00000613          	li	a2,0
   1ae18:	00000693          	li	a3,0
   1ae1c:	000c8593          	mv	a1,s9
   1ae20:	02613823          	sd	t1,48(sp)
   1ae24:	03d13423          	sd	t4,40(sp)
   1ae28:	679040ef          	jal	ra,1fca0 <__eqtf2>
   1ae2c:	02813e83          	ld	t4,40(sp)
   1ae30:	03013303          	ld	t1,48(sp)
   1ae34:	f40500e3          	beqz	a0,1ad74 <_svfprintf_r+0x1f24>
   1ae38:	00100693          	li	a3,1
   1ae3c:	417687bb          	subw	a5,a3,s7
   1ae40:	0ef12423          	sw	a5,232(sp)
   1ae44:	f35ff06f          	j	1ad78 <_svfprintf_r+0x1f28>
   1ae48:	02d00793          	li	a5,45
   1ae4c:	0cf10fa3          	sb	a5,223(sp)
   1ae50:	ad5ff06f          	j	1a924 <_svfprintf_r+0x1ad4>
   1ae54:	01013583          	ld	a1,16(sp)
   1ae58:	11010613          	addi	a2,sp,272
   1ae5c:	000a8513          	mv	a0,s5
   1ae60:	735020ef          	jal	ra,1dd94 <__ssprint_r>
   1ae64:	00050463          	beqz	a0,1ae6c <_svfprintf_r+0x201c>
   1ae68:	9d4fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1ae6c:	0e812683          	lw	a3,232(sp)
   1ae70:	12013783          	ld	a5,288(sp)
   1ae74:	19010313          	addi	t1,sp,400
   1ae78:	be4ff06f          	j	1a25c <_svfprintf_r+0x140c>
   1ae7c:	0df14783          	lbu	a5,223(sp)
   1ae80:	01613c23          	sd	s6,24(sp)
   1ae84:	04013023          	sd	zero,64(sp)
   1ae88:	02013c23          	sd	zero,56(sp)
   1ae8c:	02013423          	sd	zero,40(sp)
   1ae90:	000b8a13          	mv	s4,s7
   1ae94:	000b8c93          	mv	s9,s7
   1ae98:	00000b93          	li	s7,0
   1ae9c:	00078463          	beqz	a5,1aea4 <_svfprintf_r+0x2054>
   1aea0:	ab0fe06f          	j	19150 <_svfprintf_r+0x300>
   1aea4:	e1cfe06f          	j	194c0 <_svfprintf_r+0x670>
   1aea8:	01013583          	ld	a1,16(sp)
   1aeac:	11010613          	addi	a2,sp,272
   1aeb0:	000a8513          	mv	a0,s5
   1aeb4:	6e1020ef          	jal	ra,1dd94 <__ssprint_r>
   1aeb8:	00050463          	beqz	a0,1aec0 <_svfprintf_r+0x2070>
   1aebc:	980fe06f          	j	1903c <_svfprintf_r+0x1ec>
   1aec0:	0e812603          	lw	a2,232(sp)
   1aec4:	03013703          	ld	a4,48(sp)
   1aec8:	12013783          	ld	a5,288(sp)
   1aecc:	19010313          	addi	t1,sp,400
   1aed0:	40c7063b          	subw	a2,a4,a2
   1aed4:	bd4ff06f          	j	1a2a8 <_svfprintf_r+0x1458>
   1aed8:	03013703          	ld	a4,48(sp)
   1aedc:	05013783          	ld	a5,80(sp)
   1aee0:	06700413          	li	s0,103
   1aee4:	00e78cbb          	addw	s9,a5,a4
   1aee8:	02813703          	ld	a4,40(sp)
   1aeec:	58e05a63          	blez	a4,1b480 <_svfprintf_r+0x2630>
   1aef0:	04013783          	ld	a5,64(sp)
   1aef4:	4007f793          	andi	a5,a5,1024
   1aef8:	4a079663          	bnez	a5,1b3a4 <_svfprintf_r+0x2554>
   1aefc:	fffcca13          	not	s4,s9
   1af00:	43fa5a13          	srai	s4,s4,0x3f
   1af04:	014cfa33          	and	s4,s9,s4
   1af08:	000a0a1b          	sext.w	s4,s4
   1af0c:	e19ff06f          	j	1ad24 <_svfprintf_r+0x1ed4>
   1af10:	04013783          	ld	a5,64(sp)
   1af14:	02813703          	ld	a4,40(sp)
   1af18:	0017f793          	andi	a5,a5,1
   1af1c:	00fbe7b3          	or	a5,s7,a5
   1af20:	0007879b          	sext.w	a5,a5
   1af24:	58e05863          	blez	a4,1b4b4 <_svfprintf_r+0x2664>
   1af28:	54079263          	bnez	a5,1b46c <_svfprintf_r+0x261c>
   1af2c:	02813c83          	ld	s9,40(sp)
   1af30:	06600413          	li	s0,102
   1af34:	fbdff06f          	j	1aef0 <_svfprintf_r+0x20a0>
   1af38:	03000793          	li	a5,48
   1af3c:	0ef10023          	sb	a5,224(sp)
   1af40:	05800713          	li	a4,88
   1af44:	0024e793          	ori	a5,s1,2
   1af48:	0007879b          	sext.w	a5,a5
   1af4c:	0ee100a3          	sb	a4,225(sp)
   1af50:	06300693          	li	a3,99
   1af54:	04f13023          	sd	a5,64(sp)
   1af58:	02013023          	sd	zero,32(sp)
   1af5c:	12810d93          	addi	s11,sp,296
   1af60:	2b76cc63          	blt	a3,s7,1b218 <_svfprintf_r+0x23c8>
   1af64:	10813c83          	ld	s9,264(sp)
   1af68:	fdf47793          	andi	a5,s0,-33
   1af6c:	1024e493          	ori	s1,s1,258
   1af70:	02f13c23          	sd	a5,56(sp)
   1af74:	06013423          	sd	zero,104(sp)
   1af78:	0004849b          	sext.w	s1,s1
   1af7c:	10013e83          	ld	t4,256(sp)
   1af80:	220cc263          	bltz	s9,1b1a4 <_svfprintf_r+0x2354>
   1af84:	06100793          	li	a5,97
   1af88:	3af40663          	beq	s0,a5,1b334 <_svfprintf_r+0x24e4>
   1af8c:	04100793          	li	a5,65
   1af90:	00f40463          	beq	s0,a5,1af98 <_svfprintf_r+0x2148>
   1af94:	891fe06f          	j	19824 <_svfprintf_r+0x9d4>
   1af98:	000e8513          	mv	a0,t4
   1af9c:	000c8593          	mv	a1,s9
   1afa0:	08613423          	sd	t1,136(sp)
   1afa4:	024060ef          	jal	ra,20fc8 <__trunctfdf2>
   1afa8:	0e810593          	addi	a1,sp,232
   1afac:	fecfd0ef          	jal	ra,18798 <frexp>
   1afb0:	725050ef          	jal	ra,20ed4 <__extenddftf2>
   1afb4:	00006797          	auipc	a5,0x6
   1afb8:	41c78793          	addi	a5,a5,1052 # 213d0 <zeroes.4539+0x30>
   1afbc:	0087b683          	ld	a3,8(a5)
   1afc0:	00000613          	li	a2,0
   1afc4:	729040ef          	jal	ra,1feec <__multf3>
   1afc8:	00000613          	li	a2,0
   1afcc:	00000693          	li	a3,0
   1afd0:	02a13823          	sd	a0,48(sp)
   1afd4:	02b13423          	sd	a1,40(sp)
   1afd8:	4c9040ef          	jal	ra,1fca0 <__eqtf2>
   1afdc:	02813f03          	ld	t5,40(sp)
   1afe0:	03013e83          	ld	t4,48(sp)
   1afe4:	08813303          	ld	t1,136(sp)
   1afe8:	00051663          	bnez	a0,1aff4 <_svfprintf_r+0x21a4>
   1afec:	00100793          	li	a5,1
   1aff0:	0ef12423          	sw	a5,232(sp)
   1aff4:	00006797          	auipc	a5,0x6
   1aff8:	42478793          	addi	a5,a5,1060 # 21418 <zeroes.4539+0x78>
   1affc:	02f13423          	sd	a5,40(sp)
   1b000:	000b879b          	sext.w	a5,s7
   1b004:	02079c93          	slli	s9,a5,0x20
   1b008:	00fd873b          	addw	a4,s11,a5
   1b00c:	00006797          	auipc	a5,0x6
   1b010:	3a478793          	addi	a5,a5,932 # 213b0 <zeroes.4539+0x10>
   1b014:	0087b783          	ld	a5,8(a5)
   1b018:	020cdc93          	srli	s9,s9,0x20
   1b01c:	001c8c93          	addi	s9,s9,1
   1b020:	0a913023          	sd	s1,160(sp)
   1b024:	0b313423          	sd	s3,168(sp)
   1b028:	0d513023          	sd	s5,192(sp)
   1b02c:	019d8cb3          	add	s9,s11,s9
   1b030:	000d8b13          	mv	s6,s11
   1b034:	02f13823          	sd	a5,48(sp)
   1b038:	09213423          	sd	s2,136(sp)
   1b03c:	08813c23          	sd	s0,152(sp)
   1b040:	0b713823          	sd	s7,176(sp)
   1b044:	0a613c23          	sd	t1,184(sp)
   1b048:	0db13423          	sd	s11,200(sp)
   1b04c:	000e8993          	mv	s3,t4
   1b050:	000f0a93          	mv	s5,t5
   1b054:	00070493          	mv	s1,a4
   1b058:	0180006f          	j	1b070 <_svfprintf_r+0x2220>
   1b05c:	00000613          	li	a2,0
   1b060:	00000693          	li	a3,0
   1b064:	43d040ef          	jal	ra,1fca0 <__eqtf2>
   1b068:	28050463          	beqz	a0,1b2f0 <_svfprintf_r+0x24a0>
   1b06c:	000b8b13          	mv	s6,s7
   1b070:	03013683          	ld	a3,48(sp)
   1b074:	00000613          	li	a2,0
   1b078:	00098513          	mv	a0,s3
   1b07c:	000a8593          	mv	a1,s5
   1b080:	66d040ef          	jal	ra,1feec <__multf3>
   1b084:	00058913          	mv	s2,a1
   1b088:	00050413          	mv	s0,a0
   1b08c:	551050ef          	jal	ra,20ddc <__fixtfsi>
   1b090:	00050a1b          	sext.w	s4,a0
   1b094:	000a0513          	mv	a0,s4
   1b098:	5ad050ef          	jal	ra,20e44 <__floatsitf>
   1b09c:	00050613          	mv	a2,a0
   1b0a0:	00058693          	mv	a3,a1
   1b0a4:	00040513          	mv	a0,s0
   1b0a8:	00090593          	mv	a1,s2
   1b0ac:	560050ef          	jal	ra,2060c <__subtf3>
   1b0b0:	02813783          	ld	a5,40(sp)
   1b0b4:	001b0b93          	addi	s7,s6,1
   1b0b8:	00050d93          	mv	s11,a0
   1b0bc:	014787b3          	add	a5,a5,s4
   1b0c0:	0007c703          	lbu	a4,0(a5)
   1b0c4:	00058413          	mv	s0,a1
   1b0c8:	00050993          	mv	s3,a0
   1b0cc:	feeb8fa3          	sb	a4,-1(s7)
   1b0d0:	00058a93          	mv	s5,a1
   1b0d4:	4174893b          	subw	s2,s1,s7
   1b0d8:	f97c92e3          	bne	s9,s7,1b05c <_svfprintf_r+0x220c>
   1b0dc:	08813903          	ld	s2,136(sp)
   1b0e0:	0a013483          	ld	s1,160(sp)
   1b0e4:	0a813983          	ld	s3,168(sp)
   1b0e8:	0b013b83          	ld	s7,176(sp)
   1b0ec:	0b813303          	ld	t1,184(sp)
   1b0f0:	0c013a83          	ld	s5,192(sp)
   1b0f4:	0c813d83          	ld	s11,200(sp)
   1b0f8:	09813403          	ld	s0,152(sp)
   1b0fc:	fff00793          	li	a5,-1
   1b100:	00050893          	mv	a7,a0
   1b104:	00058813          	mv	a6,a1
   1b108:	02f13823          	sd	a5,48(sp)
   1b10c:	00006797          	auipc	a5,0x6
   1b110:	2b478793          	addi	a5,a5,692 # 213c0 <zeroes.4539+0x20>
   1b114:	0087b783          	ld	a5,8(a5)
   1b118:	00000613          	li	a2,0
   1b11c:	00088513          	mv	a0,a7
   1b120:	00078693          	mv	a3,a5
   1b124:	00080593          	mv	a1,a6
   1b128:	08613c23          	sd	t1,152(sp)
   1b12c:	08f13423          	sd	a5,136(sp)
   1b130:	0b113423          	sd	a7,168(sp)
   1b134:	0b013023          	sd	a6,160(sp)
   1b138:	3f5040ef          	jal	ra,1fd2c <__getf2>
   1b13c:	09813303          	ld	t1,152(sp)
   1b140:	06a04e63          	bgtz	a0,1b1bc <_svfprintf_r+0x236c>
   1b144:	0a813883          	ld	a7,168(sp)
   1b148:	0a013803          	ld	a6,160(sp)
   1b14c:	08813683          	ld	a3,136(sp)
   1b150:	00000613          	li	a2,0
   1b154:	00088513          	mv	a0,a7
   1b158:	00080593          	mv	a1,a6
   1b15c:	345040ef          	jal	ra,1fca0 <__eqtf2>
   1b160:	09813303          	ld	t1,152(sp)
   1b164:	00051663          	bnez	a0,1b170 <_svfprintf_r+0x2320>
   1b168:	001a7a13          	andi	s4,s4,1
   1b16c:	040a1863          	bnez	s4,1b1bc <_svfprintf_r+0x236c>
   1b170:	03013703          	ld	a4,48(sp)
   1b174:	03000693          	li	a3,48
   1b178:	00170793          	addi	a5,a4,1
   1b17c:	00fc87b3          	add	a5,s9,a5
   1b180:	00074863          	bltz	a4,1b190 <_svfprintf_r+0x2340>
   1b184:	001c8c93          	addi	s9,s9,1
   1b188:	fedc8fa3          	sb	a3,-1(s9)
   1b18c:	ff979ce3          	bne	a5,s9,1b184 <_svfprintf_r+0x2334>
   1b190:	41bc87bb          	subw	a5,s9,s11
   1b194:	02f13823          	sd	a5,48(sp)
   1b198:	f10fe06f          	j	198a8 <_svfprintf_r+0xa58>
   1b19c:	02013023          	sd	zero,32(sp)
   1b1a0:	00078493          	mv	s1,a5
   1b1a4:	fff00793          	li	a5,-1
   1b1a8:	03f79793          	slli	a5,a5,0x3f
   1b1ac:	00fcccb3          	xor	s9,s9,a5
   1b1b0:	02d00793          	li	a5,45
   1b1b4:	06f13423          	sd	a5,104(sp)
   1b1b8:	dcdff06f          	j	1af84 <_svfprintf_r+0x2134>
   1b1bc:	02813783          	ld	a5,40(sp)
   1b1c0:	0f613c23          	sd	s6,248(sp)
   1b1c4:	fffcc683          	lbu	a3,-1(s9)
   1b1c8:	00f7c603          	lbu	a2,15(a5)
   1b1cc:	000c8793          	mv	a5,s9
   1b1d0:	02d61063          	bne	a2,a3,1b1f0 <_svfprintf_r+0x23a0>
   1b1d4:	03000593          	li	a1,48
   1b1d8:	feb78fa3          	sb	a1,-1(a5)
   1b1dc:	0f813783          	ld	a5,248(sp)
   1b1e0:	fff78713          	addi	a4,a5,-1
   1b1e4:	0ee13c23          	sd	a4,248(sp)
   1b1e8:	fff7c683          	lbu	a3,-1(a5)
   1b1ec:	fed606e3          	beq	a2,a3,1b1d8 <_svfprintf_r+0x2388>
   1b1f0:	0016861b          	addiw	a2,a3,1
   1b1f4:	03900593          	li	a1,57
   1b1f8:	0ff67613          	andi	a2,a2,255
   1b1fc:	00b68663          	beq	a3,a1,1b208 <_svfprintf_r+0x23b8>
   1b200:	fec78fa3          	sb	a2,-1(a5)
   1b204:	f8dff06f          	j	1b190 <_svfprintf_r+0x2340>
   1b208:	02813703          	ld	a4,40(sp)
   1b20c:	00a74603          	lbu	a2,10(a4)
   1b210:	fec78fa3          	sb	a2,-1(a5)
   1b214:	f7dff06f          	j	1b190 <_svfprintf_r+0x2340>
   1b218:	001b859b          	addiw	a1,s7,1
   1b21c:	000a8513          	mv	a0,s5
   1b220:	02613023          	sd	t1,32(sp)
   1b224:	9edfb0ef          	jal	ra,16c10 <_malloc_r>
   1b228:	00050d93          	mv	s11,a0
   1b22c:	02013303          	ld	t1,32(sp)
   1b230:	30050e63          	beqz	a0,1b54c <_svfprintf_r+0x26fc>
   1b234:	02a13023          	sd	a0,32(sp)
   1b238:	d2dff06f          	j	1af64 <_svfprintf_r+0x2114>
   1b23c:	03000793          	li	a5,48
   1b240:	0ef10023          	sb	a5,224(sp)
   1b244:	07800713          	li	a4,120
   1b248:	cfdff06f          	j	1af44 <_svfprintf_r+0x20f4>
   1b24c:	001b8a1b          	addiw	s4,s7,1
   1b250:	000a0713          	mv	a4,s4
   1b254:	000e8593          	mv	a1,t4
   1b258:	0f810893          	addi	a7,sp,248
   1b25c:	0ec10813          	addi	a6,sp,236
   1b260:	0e810793          	addi	a5,sp,232
   1b264:	00200693          	li	a3,2
   1b268:	000c8613          	mv	a2,s9
   1b26c:	000a8513          	mv	a0,s5
   1b270:	03d13423          	sd	t4,40(sp)
   1b274:	b88fa0ef          	jal	ra,155fc <_ldtoa_r>
   1b278:	00050d93          	mv	s11,a0
   1b27c:	02813e83          	ld	t4,40(sp)
   1b280:	03013303          	ld	t1,48(sp)
   1b284:	014d8a33          	add	s4,s11,s4
   1b288:	af9ff06f          	j	1ad80 <_svfprintf_r+0x1f30>
   1b28c:	0016869b          	addiw	a3,a3,1
   1b290:	008787b3          	add	a5,a5,s0
   1b294:	01833023          	sd	s8,0(t1)
   1b298:	00833423          	sd	s0,8(t1)
   1b29c:	12f13023          	sd	a5,288(sp)
   1b2a0:	10d12c23          	sw	a3,280(sp)
   1b2a4:	00700613          	li	a2,7
   1b2a8:	d0d65863          	bge	a2,a3,1a7b8 <_svfprintf_r+0x1968>
   1b2ac:	01013583          	ld	a1,16(sp)
   1b2b0:	11010613          	addi	a2,sp,272
   1b2b4:	000a8513          	mv	a0,s5
   1b2b8:	2dd020ef          	jal	ra,1dd94 <__ssprint_r>
   1b2bc:	00050463          	beqz	a0,1b2c4 <_svfprintf_r+0x2474>
   1b2c0:	d7dfd06f          	j	1903c <_svfprintf_r+0x1ec>
   1b2c4:	12013783          	ld	a5,288(sp)
   1b2c8:	11812683          	lw	a3,280(sp)
   1b2cc:	19010313          	addi	t1,sp,400
   1b2d0:	cecff06f          	j	1a7bc <_svfprintf_r+0x196c>
   1b2d4:	00f72023          	sw	a5,0(a4)
   1b2d8:	00090d93          	mv	s11,s2
   1b2dc:	b08fe06f          	j	195e4 <_svfprintf_r+0x794>
   1b2e0:	000b8463          	beqz	s7,1b2e8 <_svfprintf_r+0x2498>
   1b2e4:	d18fe06f          	j	197fc <_svfprintf_r+0x9ac>
   1b2e8:	00100b93          	li	s7,1
   1b2ec:	d10fe06f          	j	197fc <_svfprintf_r+0x9ac>
   1b2f0:	000b8793          	mv	a5,s7
   1b2f4:	03213823          	sd	s2,48(sp)
   1b2f8:	000d8893          	mv	a7,s11
   1b2fc:	00040813          	mv	a6,s0
   1b300:	0a013483          	ld	s1,160(sp)
   1b304:	0a813983          	ld	s3,168(sp)
   1b308:	0b813303          	ld	t1,184(sp)
   1b30c:	08813903          	ld	s2,136(sp)
   1b310:	0b013b83          	ld	s7,176(sp)
   1b314:	0c013a83          	ld	s5,192(sp)
   1b318:	0c813d83          	ld	s11,200(sp)
   1b31c:	09813403          	ld	s0,152(sp)
   1b320:	00078c93          	mv	s9,a5
   1b324:	de9ff06f          	j	1b10c <_svfprintf_r+0x22bc>
   1b328:	fff00793          	li	a5,-1
   1b32c:	00f13423          	sd	a5,8(sp)
   1b330:	d35fd06f          	j	19064 <_svfprintf_r+0x214>
   1b334:	000e8513          	mv	a0,t4
   1b338:	000c8593          	mv	a1,s9
   1b33c:	08613423          	sd	t1,136(sp)
   1b340:	489050ef          	jal	ra,20fc8 <__trunctfdf2>
   1b344:	0e810593          	addi	a1,sp,232
   1b348:	c50fd0ef          	jal	ra,18798 <frexp>
   1b34c:	389050ef          	jal	ra,20ed4 <__extenddftf2>
   1b350:	00006797          	auipc	a5,0x6
   1b354:	08078793          	addi	a5,a5,128 # 213d0 <zeroes.4539+0x30>
   1b358:	0087b683          	ld	a3,8(a5)
   1b35c:	00000613          	li	a2,0
   1b360:	38d040ef          	jal	ra,1feec <__multf3>
   1b364:	00000613          	li	a2,0
   1b368:	00000693          	li	a3,0
   1b36c:	02a13823          	sd	a0,48(sp)
   1b370:	02b13423          	sd	a1,40(sp)
   1b374:	12d040ef          	jal	ra,1fca0 <__eqtf2>
   1b378:	02813f03          	ld	t5,40(sp)
   1b37c:	03013e83          	ld	t4,48(sp)
   1b380:	08813303          	ld	t1,136(sp)
   1b384:	00051663          	bnez	a0,1b390 <_svfprintf_r+0x2540>
   1b388:	00100793          	li	a5,1
   1b38c:	0ef12423          	sw	a5,232(sp)
   1b390:	00006797          	auipc	a5,0x6
   1b394:	07078793          	addi	a5,a5,112 # 21400 <zeroes.4539+0x60>
   1b398:	02f13423          	sd	a5,40(sp)
   1b39c:	c65ff06f          	j	1b000 <_svfprintf_r+0x21b0>
   1b3a0:	06700413          	li	s0,103
   1b3a4:	08013503          	ld	a0,128(sp)
   1b3a8:	02813703          	ld	a4,40(sp)
   1b3ac:	04013023          	sd	zero,64(sp)
   1b3b0:	00054783          	lbu	a5,0(a0)
   1b3b4:	02013c23          	sd	zero,56(sp)
   1b3b8:	0ff00593          	li	a1,255
   1b3bc:	04b78063          	beq	a5,a1,1b3fc <_svfprintf_r+0x25ac>
   1b3c0:	0007869b          	sext.w	a3,a5
   1b3c4:	02e6dc63          	bge	a3,a4,1b3fc <_svfprintf_r+0x25ac>
   1b3c8:	00154603          	lbu	a2,1(a0)
   1b3cc:	40d7073b          	subw	a4,a4,a3
   1b3d0:	00060e63          	beqz	a2,1b3ec <_svfprintf_r+0x259c>
   1b3d4:	03813783          	ld	a5,56(sp)
   1b3d8:	00150513          	addi	a0,a0,1
   1b3dc:	0017879b          	addiw	a5,a5,1
   1b3e0:	02f13c23          	sd	a5,56(sp)
   1b3e4:	00060793          	mv	a5,a2
   1b3e8:	fd5ff06f          	j	1b3bc <_svfprintf_r+0x256c>
   1b3ec:	04013683          	ld	a3,64(sp)
   1b3f0:	0016869b          	addiw	a3,a3,1
   1b3f4:	04d13023          	sd	a3,64(sp)
   1b3f8:	fc5ff06f          	j	1b3bc <_svfprintf_r+0x256c>
   1b3fc:	02e13423          	sd	a4,40(sp)
   1b400:	03813783          	ld	a5,56(sp)
   1b404:	04013703          	ld	a4,64(sp)
   1b408:	09013583          	ld	a1,144(sp)
   1b40c:	08a13023          	sd	a0,128(sp)
   1b410:	00e7853b          	addw	a0,a5,a4
   1b414:	08613423          	sd	t1,136(sp)
   1b418:	569050ef          	jal	ra,21180 <__muldi3>
   1b41c:	0195053b          	addw	a0,a0,s9
   1b420:	00050c9b          	sext.w	s9,a0
   1b424:	fffcca13          	not	s4,s9
   1b428:	43fa5a13          	srai	s4,s4,0x3f
   1b42c:	01457533          	and	a0,a0,s4
   1b430:	00050a1b          	sext.w	s4,a0
   1b434:	08813303          	ld	t1,136(sp)
   1b438:	ddcfe06f          	j	19a14 <_svfprintf_r+0xbc4>
   1b43c:	0f210793          	addi	a5,sp,242
   1b440:	00069863          	bnez	a3,1b450 <_svfprintf_r+0x2600>
   1b444:	03000793          	li	a5,48
   1b448:	0ef10923          	sb	a5,242(sp)
   1b44c:	0f310793          	addi	a5,sp,243
   1b450:	21010713          	addi	a4,sp,528
   1b454:	030a0a1b          	addiw	s4,s4,48
   1b458:	40e786b3          	sub	a3,a5,a4
   1b45c:	01478023          	sb	s4,0(a5)
   1b460:	1216879b          	addiw	a5,a3,289
   1b464:	06f13823          	sd	a5,112(sp)
   1b468:	d5cfe06f          	j	199c4 <_svfprintf_r+0xb74>
   1b46c:	05013783          	ld	a5,80(sp)
   1b470:	06600413          	li	s0,102
   1b474:	00e78cbb          	addw	s9,a5,a4
   1b478:	017c8cbb          	addw	s9,s9,s7
   1b47c:	a75ff06f          	j	1aef0 <_svfprintf_r+0x20a0>
   1b480:	40ec87bb          	subw	a5,s9,a4
   1b484:	0017879b          	addiw	a5,a5,1
   1b488:	00078c9b          	sext.w	s9,a5
   1b48c:	fffcca13          	not	s4,s9
   1b490:	43fa5a13          	srai	s4,s4,0x3f
   1b494:	0147f7b3          	and	a5,a5,s4
   1b498:	00078a1b          	sext.w	s4,a5
   1b49c:	889ff06f          	j	1ad24 <_svfprintf_r+0x1ed4>
   1b4a0:	04013703          	ld	a4,64(sp)
   1b4a4:	00177693          	andi	a3,a4,1
   1b4a8:	00069463          	bnez	a3,1b4b0 <_svfprintf_r+0x2660>
   1b4ac:	d3cfe06f          	j	199e8 <_svfprintf_r+0xb98>
   1b4b0:	d30fe06f          	j	199e0 <_svfprintf_r+0xb90>
   1b4b4:	00079a63          	bnez	a5,1b4c8 <_svfprintf_r+0x2678>
   1b4b8:	00100a13          	li	s4,1
   1b4bc:	06600413          	li	s0,102
   1b4c0:	00100c93          	li	s9,1
   1b4c4:	861ff06f          	j	1ad24 <_svfprintf_r+0x1ed4>
   1b4c8:	05013783          	ld	a5,80(sp)
   1b4cc:	06600413          	li	s0,102
   1b4d0:	0017879b          	addiw	a5,a5,1
   1b4d4:	01778e3b          	addw	t3,a5,s7
   1b4d8:	000e0c9b          	sext.w	s9,t3
   1b4dc:	fffcca13          	not	s4,s9
   1b4e0:	43fa5a13          	srai	s4,s4,0x3f
   1b4e4:	014e7e33          	and	t3,t3,s4
   1b4e8:	000e0a1b          	sext.w	s4,t3
   1b4ec:	839ff06f          	j	1ad24 <_svfprintf_r+0x1ed4>
   1b4f0:	00030793          	mv	a5,t1
   1b4f4:	d60ff06f          	j	1aa54 <_svfprintf_r+0x1c04>
   1b4f8:	01813703          	ld	a4,24(sp)
   1b4fc:	00072b83          	lw	s7,0(a4)
   1b500:	00870713          	addi	a4,a4,8
   1b504:	000bd463          	bgez	s7,1b50c <_svfprintf_r+0x26bc>
   1b508:	fff00b93          	li	s7,-1
   1b50c:	00194403          	lbu	s0,1(s2)
   1b510:	00e13c23          	sd	a4,24(sp)
   1b514:	00078913          	mv	s2,a5
   1b518:	aa1fd06f          	j	18fb8 <_svfprintf_r+0x168>
   1b51c:	000b8a13          	mv	s4,s7
   1b520:	014d8a33          	add	s4,s11,s4
   1b524:	85dff06f          	j	1ad80 <_svfprintf_r+0x1f30>
   1b528:	00200793          	li	a5,2
   1b52c:	06f13823          	sd	a5,112(sp)
   1b530:	c94fe06f          	j	199c4 <_svfprintf_r+0xb74>
   1b534:	04813703          	ld	a4,72(sp)
   1b538:	00c00793          	li	a5,12
   1b53c:	00f72023          	sw	a5,0(a4)
   1b540:	fff00793          	li	a5,-1
   1b544:	00f13423          	sd	a5,8(sp)
   1b548:	b1dfd06f          	j	19064 <_svfprintf_r+0x214>
   1b54c:	01013683          	ld	a3,16(sp)
   1b550:	0106d783          	lhu	a5,16(a3)
   1b554:	0407e713          	ori	a4,a5,64
   1b558:	00070793          	mv	a5,a4
   1b55c:	00e69823          	sh	a4,16(a3)
   1b560:	af9fd06f          	j	19058 <_svfprintf_r+0x208>

000000000001b564 <__sprint_r.part.0>:
   1b564:	0ac5a783          	lw	a5,172(a1)
   1b568:	fb010113          	addi	sp,sp,-80
   1b56c:	01513c23          	sd	s5,24(sp)
   1b570:	04113423          	sd	ra,72(sp)
   1b574:	04813023          	sd	s0,64(sp)
   1b578:	02913c23          	sd	s1,56(sp)
   1b57c:	03213823          	sd	s2,48(sp)
   1b580:	03313423          	sd	s3,40(sp)
   1b584:	03413023          	sd	s4,32(sp)
   1b588:	01613823          	sd	s6,16(sp)
   1b58c:	01713423          	sd	s7,8(sp)
   1b590:	03279713          	slli	a4,a5,0x32
   1b594:	00060a93          	mv	s5,a2
   1b598:	0c075063          	bgez	a4,1b658 <__sprint_r.part.0+0xf4>
   1b59c:	01063703          	ld	a4,16(a2)
   1b5a0:	00058913          	mv	s2,a1
   1b5a4:	00050993          	mv	s3,a0
   1b5a8:	00063b03          	ld	s6,0(a2)
   1b5ac:	fff00a13          	li	s4,-1
   1b5b0:	0a070063          	beqz	a4,1b650 <__sprint_r.part.0+0xec>
   1b5b4:	008b3783          	ld	a5,8(s6)
   1b5b8:	000b3403          	ld	s0,0(s6)
   1b5bc:	0027d793          	srli	a5,a5,0x2
   1b5c0:	00078b9b          	sext.w	s7,a5
   1b5c4:	07705c63          	blez	s7,1b63c <__sprint_r.part.0+0xd8>
   1b5c8:	fff7849b          	addiw	s1,a5,-1
   1b5cc:	02049493          	slli	s1,s1,0x20
   1b5d0:	01e4d493          	srli	s1,s1,0x1e
   1b5d4:	00440793          	addi	a5,s0,4
   1b5d8:	00f484b3          	add	s1,s1,a5
   1b5dc:	0080006f          	j	1b5e4 <__sprint_r.part.0+0x80>
   1b5e0:	04848c63          	beq	s1,s0,1b638 <__sprint_r.part.0+0xd4>
   1b5e4:	00042583          	lw	a1,0(s0)
   1b5e8:	00090613          	mv	a2,s2
   1b5ec:	00098513          	mv	a0,s3
   1b5f0:	78c010ef          	jal	ra,1cd7c <_fputwc_r>
   1b5f4:	0005051b          	sext.w	a0,a0
   1b5f8:	00440413          	addi	s0,s0,4
   1b5fc:	ff4512e3          	bne	a0,s4,1b5e0 <__sprint_r.part.0+0x7c>
   1b600:	fff00513          	li	a0,-1
   1b604:	04813083          	ld	ra,72(sp)
   1b608:	04013403          	ld	s0,64(sp)
   1b60c:	000ab823          	sd	zero,16(s5)
   1b610:	000aa423          	sw	zero,8(s5)
   1b614:	03813483          	ld	s1,56(sp)
   1b618:	03013903          	ld	s2,48(sp)
   1b61c:	02813983          	ld	s3,40(sp)
   1b620:	02013a03          	ld	s4,32(sp)
   1b624:	01813a83          	ld	s5,24(sp)
   1b628:	01013b03          	ld	s6,16(sp)
   1b62c:	00813b83          	ld	s7,8(sp)
   1b630:	05010113          	addi	sp,sp,80
   1b634:	00008067          	ret
   1b638:	010ab703          	ld	a4,16(s5)
   1b63c:	002b9b93          	slli	s7,s7,0x2
   1b640:	41770733          	sub	a4,a4,s7
   1b644:	00eab823          	sd	a4,16(s5)
   1b648:	010b0b13          	addi	s6,s6,16
   1b64c:	f60714e3          	bnez	a4,1b5b4 <__sprint_r.part.0+0x50>
   1b650:	00000513          	li	a0,0
   1b654:	fb1ff06f          	j	1b604 <__sprint_r.part.0+0xa0>
   1b658:	039010ef          	jal	ra,1ce90 <__sfvwrite_r>
   1b65c:	fa9ff06f          	j	1b604 <__sprint_r.part.0+0xa0>

000000000001b660 <__sprint_r>:
   1b660:	01063703          	ld	a4,16(a2)
   1b664:	00070463          	beqz	a4,1b66c <__sprint_r+0xc>
   1b668:	efdff06f          	j	1b564 <__sprint_r.part.0>
   1b66c:	00062423          	sw	zero,8(a2)
   1b670:	00000513          	li	a0,0
   1b674:	00008067          	ret

000000000001b678 <_vfiprintf_r>:
   1b678:	e3010113          	addi	sp,sp,-464
   1b67c:	1b213823          	sd	s2,432(sp)
   1b680:	1b313423          	sd	s3,424(sp)
   1b684:	19713423          	sd	s7,392(sp)
   1b688:	1c113423          	sd	ra,456(sp)
   1b68c:	1c813023          	sd	s0,448(sp)
   1b690:	1a913c23          	sd	s1,440(sp)
   1b694:	1b413023          	sd	s4,416(sp)
   1b698:	19513c23          	sd	s5,408(sp)
   1b69c:	19613823          	sd	s6,400(sp)
   1b6a0:	19813023          	sd	s8,384(sp)
   1b6a4:	17913c23          	sd	s9,376(sp)
   1b6a8:	17a13823          	sd	s10,368(sp)
   1b6ac:	17b13423          	sd	s11,360(sp)
   1b6b0:	00d13823          	sd	a3,16(sp)
   1b6b4:	00050993          	mv	s3,a0
   1b6b8:	00058913          	mv	s2,a1
   1b6bc:	00060b93          	mv	s7,a2
   1b6c0:	00050663          	beqz	a0,1b6cc <_vfiprintf_r+0x54>
   1b6c4:	05052783          	lw	a5,80(a0)
   1b6c8:	0e0780e3          	beqz	a5,1bfa8 <_vfiprintf_r+0x930>
   1b6cc:	01091703          	lh	a4,16(s2)
   1b6d0:	03071793          	slli	a5,a4,0x30
   1b6d4:	0307d793          	srli	a5,a5,0x30
   1b6d8:	03279693          	slli	a3,a5,0x32
   1b6dc:	0206c663          	bltz	a3,1b708 <_vfiprintf_r+0x90>
   1b6e0:	0ac92683          	lw	a3,172(s2)
   1b6e4:	000027b7          	lui	a5,0x2
   1b6e8:	00f767b3          	or	a5,a4,a5
   1b6ec:	ffffe737          	lui	a4,0xffffe
   1b6f0:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdadf7>
   1b6f4:	00e6f733          	and	a4,a3,a4
   1b6f8:	00f91823          	sh	a5,16(s2)
   1b6fc:	03079793          	slli	a5,a5,0x30
   1b700:	0ae92623          	sw	a4,172(s2)
   1b704:	0307d793          	srli	a5,a5,0x30
   1b708:	0087f713          	andi	a4,a5,8
   1b70c:	14070463          	beqz	a4,1b854 <_vfiprintf_r+0x1dc>
   1b710:	01893703          	ld	a4,24(s2)
   1b714:	14070063          	beqz	a4,1b854 <_vfiprintf_r+0x1dc>
   1b718:	01a7f793          	andi	a5,a5,26
   1b71c:	00a00713          	li	a4,10
   1b720:	14e78c63          	beq	a5,a4,1b878 <_vfiprintf_r+0x200>
   1b724:	ffff87b7          	lui	a5,0xffff8
   1b728:	0e010493          	addi	s1,sp,224
   1b72c:	8307c793          	xori	a5,a5,-2000
   1b730:	000b8c13          	mv	s8,s7
   1b734:	06913023          	sd	s1,96(sp)
   1b738:	06013823          	sd	zero,112(sp)
   1b73c:	06012423          	sw	zero,104(sp)
   1b740:	00013c23          	sd	zero,24(sp)
   1b744:	02013423          	sd	zero,40(sp)
   1b748:	02013c23          	sd	zero,56(sp)
   1b74c:	02013823          	sd	zero,48(sp)
   1b750:	00013023          	sd	zero,0(sp)
   1b754:	00006a17          	auipc	s4,0x6
   1b758:	25ca0a13          	addi	s4,s4,604 # 219b0 <zeroes.4524+0x10>
   1b75c:	04f13023          	sd	a5,64(sp)
   1b760:	00048b93          	mv	s7,s1
   1b764:	000c4783          	lbu	a5,0(s8)
   1b768:	14078063          	beqz	a5,1b8a8 <_vfiprintf_r+0x230>
   1b76c:	02500713          	li	a4,37
   1b770:	56e78ce3          	beq	a5,a4,1c4e8 <_vfiprintf_r+0xe70>
   1b774:	000c0413          	mv	s0,s8
   1b778:	00c0006f          	j	1b784 <_vfiprintf_r+0x10c>
   1b77c:	12e78063          	beq	a5,a4,1b89c <_vfiprintf_r+0x224>
   1b780:	000c8413          	mv	s0,s9
   1b784:	00144783          	lbu	a5,1(s0)
   1b788:	00140c93          	addi	s9,s0,1
   1b78c:	fe0798e3          	bnez	a5,1b77c <_vfiprintf_r+0x104>
   1b790:	418c8d3b          	subw	s10,s9,s8
   1b794:	100d0a63          	beqz	s10,1b8a8 <_vfiprintf_r+0x230>
   1b798:	06812783          	lw	a5,104(sp)
   1b79c:	07013703          	ld	a4,112(sp)
   1b7a0:	018bb023          	sd	s8,0(s7)
   1b7a4:	0017869b          	addiw	a3,a5,1
   1b7a8:	00ed0733          	add	a4,s10,a4
   1b7ac:	01abb423          	sd	s10,8(s7)
   1b7b0:	06e13823          	sd	a4,112(sp)
   1b7b4:	06d12423          	sw	a3,104(sp)
   1b7b8:	00700793          	li	a5,7
   1b7bc:	010b8b93          	addi	s7,s7,16
   1b7c0:	02d7d063          	bge	a5,a3,1b7e0 <_vfiprintf_r+0x168>
   1b7c4:	4e0708e3          	beqz	a4,1c4b4 <_vfiprintf_r+0xe3c>
   1b7c8:	06010613          	addi	a2,sp,96
   1b7cc:	00090593          	mv	a1,s2
   1b7d0:	00098513          	mv	a0,s3
   1b7d4:	d91ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1b7d8:	0e051463          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1b7dc:	00048b93          	mv	s7,s1
   1b7e0:	00013703          	ld	a4,0(sp)
   1b7e4:	00144783          	lbu	a5,1(s0)
   1b7e8:	01a7073b          	addw	a4,a4,s10
   1b7ec:	00e13023          	sd	a4,0(sp)
   1b7f0:	0a078c63          	beqz	a5,1b8a8 <_vfiprintf_r+0x230>
   1b7f4:	001c8c13          	addi	s8,s9,1
   1b7f8:	001cc703          	lbu	a4,1(s9)
   1b7fc:	04010ba3          	sb	zero,87(sp)
   1b800:	fff00a93          	li	s5,-1
   1b804:	00000413          	li	s0,0
   1b808:	00000b13          	li	s6,0
   1b80c:	00900c93          	li	s9,9
   1b810:	02a00d13          	li	s10,42
   1b814:	001c0c13          	addi	s8,s8,1
   1b818:	0007071b          	sext.w	a4,a4
   1b81c:	05a00613          	li	a2,90
   1b820:	fe07079b          	addiw	a5,a4,-32
   1b824:	0007869b          	sext.w	a3,a5
   1b828:	1cd66063          	bltu	a2,a3,1b9e8 <_vfiprintf_r+0x370>
   1b82c:	02079793          	slli	a5,a5,0x20
   1b830:	01e7d793          	srli	a5,a5,0x1e
   1b834:	014787b3          	add	a5,a5,s4
   1b838:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   1b83c:	014787b3          	add	a5,a5,s4
   1b840:	00078067          	jr	a5
   1b844:	010b6b13          	ori	s6,s6,16
   1b848:	000b0b1b          	sext.w	s6,s6
   1b84c:	000c4703          	lbu	a4,0(s8)
   1b850:	fc5ff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1b854:	00090593          	mv	a1,s2
   1b858:	00098513          	mv	a0,s3
   1b85c:	da0f70ef          	jal	ra,12dfc <__swsetup_r>
   1b860:	00050463          	beqz	a0,1b868 <_vfiprintf_r+0x1f0>
   1b864:	7dd0006f          	j	1c840 <_vfiprintf_r+0x11c8>
   1b868:	01095783          	lhu	a5,16(s2)
   1b86c:	00a00713          	li	a4,10
   1b870:	01a7f793          	andi	a5,a5,26
   1b874:	eae798e3          	bne	a5,a4,1b724 <_vfiprintf_r+0xac>
   1b878:	01291783          	lh	a5,18(s2)
   1b87c:	ea07c4e3          	bltz	a5,1b724 <_vfiprintf_r+0xac>
   1b880:	01013683          	ld	a3,16(sp)
   1b884:	000b8613          	mv	a2,s7
   1b888:	00090593          	mv	a1,s2
   1b88c:	00098513          	mv	a0,s3
   1b890:	014010ef          	jal	ra,1c8a4 <__sbprintf>
   1b894:	00a13023          	sd	a0,0(sp)
   1b898:	0340006f          	j	1b8cc <_vfiprintf_r+0x254>
   1b89c:	418c8d3b          	subw	s10,s9,s8
   1b8a0:	f40d0ae3          	beqz	s10,1b7f4 <_vfiprintf_r+0x17c>
   1b8a4:	ef5ff06f          	j	1b798 <_vfiprintf_r+0x120>
   1b8a8:	07013783          	ld	a5,112(sp)
   1b8ac:	00078a63          	beqz	a5,1b8c0 <_vfiprintf_r+0x248>
   1b8b0:	06010613          	addi	a2,sp,96
   1b8b4:	00090593          	mv	a1,s2
   1b8b8:	00098513          	mv	a0,s3
   1b8bc:	ca9ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1b8c0:	01095783          	lhu	a5,16(s2)
   1b8c4:	0407f793          	andi	a5,a5,64
   1b8c8:	76079ce3          	bnez	a5,1c840 <_vfiprintf_r+0x11c8>
   1b8cc:	1c813083          	ld	ra,456(sp)
   1b8d0:	1c013403          	ld	s0,448(sp)
   1b8d4:	00013503          	ld	a0,0(sp)
   1b8d8:	1b813483          	ld	s1,440(sp)
   1b8dc:	1b013903          	ld	s2,432(sp)
   1b8e0:	1a813983          	ld	s3,424(sp)
   1b8e4:	1a013a03          	ld	s4,416(sp)
   1b8e8:	19813a83          	ld	s5,408(sp)
   1b8ec:	19013b03          	ld	s6,400(sp)
   1b8f0:	18813b83          	ld	s7,392(sp)
   1b8f4:	18013c03          	ld	s8,384(sp)
   1b8f8:	17813c83          	ld	s9,376(sp)
   1b8fc:	17013d03          	ld	s10,368(sp)
   1b900:	16813d83          	ld	s11,360(sp)
   1b904:	1d010113          	addi	sp,sp,464
   1b908:	00008067          	ret
   1b90c:	01013683          	ld	a3,16(sp)
   1b910:	00006797          	auipc	a5,0x6
   1b914:	b0878793          	addi	a5,a5,-1272 # 21418 <zeroes.4539+0x78>
   1b918:	00f13c23          	sd	a5,24(sp)
   1b91c:	020b7793          	andi	a5,s6,32
   1b920:	00868613          	addi	a2,a3,8
   1b924:	66078063          	beqz	a5,1bf84 <_vfiprintf_r+0x90c>
   1b928:	0006bd83          	ld	s11,0(a3)
   1b92c:	001b7793          	andi	a5,s6,1
   1b930:	00078e63          	beqz	a5,1b94c <_vfiprintf_r+0x2d4>
   1b934:	000d8c63          	beqz	s11,1b94c <_vfiprintf_r+0x2d4>
   1b938:	002b6813          	ori	a6,s6,2
   1b93c:	03000793          	li	a5,48
   1b940:	04f10c23          	sb	a5,88(sp)
   1b944:	04e10ca3          	sb	a4,89(sp)
   1b948:	00080b1b          	sext.w	s6,a6
   1b94c:	bffb7813          	andi	a6,s6,-1025
   1b950:	00080c9b          	sext.w	s9,a6
   1b954:	00c13823          	sd	a2,16(sp)
   1b958:	00200793          	li	a5,2
   1b95c:	04010ba3          	sb	zero,87(sp)
   1b960:	fff00713          	li	a4,-1
   1b964:	5aea8063          	beq	s5,a4,1bf04 <_vfiprintf_r+0x88c>
   1b968:	f7fcf813          	andi	a6,s9,-129
   1b96c:	00080b1b          	sext.w	s6,a6
   1b970:	100d90e3          	bnez	s11,1c270 <_vfiprintf_r+0xbf8>
   1b974:	640a9463          	bnez	s5,1bfbc <_vfiprintf_r+0x944>
   1b978:	340796e3          	bnez	a5,1c4c4 <_vfiprintf_r+0xe4c>
   1b97c:	001cf793          	andi	a5,s9,1
   1b980:	00f13423          	sd	a5,8(sp)
   1b984:	0dc10d13          	addi	s10,sp,220
   1b988:	36079ee3          	bnez	a5,1c504 <_vfiprintf_r+0xe8c>
   1b98c:	00813703          	ld	a4,8(sp)
   1b990:	000a8793          	mv	a5,s5
   1b994:	00ead463          	bge	s5,a4,1b99c <_vfiprintf_r+0x324>
   1b998:	00070793          	mv	a5,a4
   1b99c:	05714703          	lbu	a4,87(sp)
   1b9a0:	00078c9b          	sext.w	s9,a5
   1b9a4:	06070263          	beqz	a4,1ba08 <_vfiprintf_r+0x390>
   1b9a8:	00178c9b          	addiw	s9,a5,1
   1b9ac:	05c0006f          	j	1ba08 <_vfiprintf_r+0x390>
   1b9b0:	00000413          	li	s0,0
   1b9b4:	001c0c13          	addi	s8,s8,1
   1b9b8:	fffc4683          	lbu	a3,-1(s8)
   1b9bc:	0024179b          	slliw	a5,s0,0x2
   1b9c0:	0087843b          	addw	s0,a5,s0
   1b9c4:	fd07071b          	addiw	a4,a4,-48
   1b9c8:	0014141b          	slliw	s0,s0,0x1
   1b9cc:	fd06879b          	addiw	a5,a3,-48
   1b9d0:	0087043b          	addw	s0,a4,s0
   1b9d4:	0006871b          	sext.w	a4,a3
   1b9d8:	fcfcfee3          	bgeu	s9,a5,1b9b4 <_vfiprintf_r+0x33c>
   1b9dc:	fe07079b          	addiw	a5,a4,-32
   1b9e0:	0007869b          	sext.w	a3,a5
   1b9e4:	e4d674e3          	bgeu	a2,a3,1b82c <_vfiprintf_r+0x1b4>
   1b9e8:	ec0700e3          	beqz	a4,1b8a8 <_vfiprintf_r+0x230>
   1b9ec:	00100793          	li	a5,1
   1b9f0:	06e10c23          	sb	a4,120(sp)
   1b9f4:	04010ba3          	sb	zero,87(sp)
   1b9f8:	00100c93          	li	s9,1
   1b9fc:	00f13423          	sd	a5,8(sp)
   1ba00:	07810d13          	addi	s10,sp,120
   1ba04:	00000a93          	li	s5,0
   1ba08:	002b7e93          	andi	t4,s6,2
   1ba0c:	000e8e9b          	sext.w	t4,t4
   1ba10:	000e8463          	beqz	t4,1ba18 <_vfiprintf_r+0x3a0>
   1ba14:	002c8c9b          	addiw	s9,s9,2
   1ba18:	06812703          	lw	a4,104(sp)
   1ba1c:	084b7f13          	andi	t5,s6,132
   1ba20:	07013783          	ld	a5,112(sp)
   1ba24:	0017061b          	addiw	a2,a4,1
   1ba28:	00060593          	mv	a1,a2
   1ba2c:	000f1663          	bnez	t5,1ba38 <_vfiprintf_r+0x3c0>
   1ba30:	41940dbb          	subw	s11,s0,s9
   1ba34:	05b042e3          	bgtz	s11,1c278 <_vfiprintf_r+0xc00>
   1ba38:	05714503          	lbu	a0,87(sp)
   1ba3c:	010b8593          	addi	a1,s7,16
   1ba40:	02050c63          	beqz	a0,1ba78 <_vfiprintf_r+0x400>
   1ba44:	05710713          	addi	a4,sp,87
   1ba48:	00178793          	addi	a5,a5,1
   1ba4c:	00ebb023          	sd	a4,0(s7)
   1ba50:	00100713          	li	a4,1
   1ba54:	00ebb423          	sd	a4,8(s7)
   1ba58:	06f13823          	sd	a5,112(sp)
   1ba5c:	06c12423          	sw	a2,104(sp)
   1ba60:	00700713          	li	a4,7
   1ba64:	78c74863          	blt	a4,a2,1c1f4 <_vfiprintf_r+0xb7c>
   1ba68:	00060713          	mv	a4,a2
   1ba6c:	00058b93          	mv	s7,a1
   1ba70:	0016061b          	addiw	a2,a2,1
   1ba74:	01058593          	addi	a1,a1,16
   1ba78:	040e8e63          	beqz	t4,1bad4 <_vfiprintf_r+0x45c>
   1ba7c:	05810713          	addi	a4,sp,88
   1ba80:	00278793          	addi	a5,a5,2
   1ba84:	00ebb023          	sd	a4,0(s7)
   1ba88:	00200713          	li	a4,2
   1ba8c:	00ebb423          	sd	a4,8(s7)
   1ba90:	06f13823          	sd	a5,112(sp)
   1ba94:	06c12423          	sw	a2,104(sp)
   1ba98:	00700713          	li	a4,7
   1ba9c:	7cc75063          	bge	a4,a2,1c25c <_vfiprintf_r+0xbe4>
   1baa0:	22078ae3          	beqz	a5,1c4d4 <_vfiprintf_r+0xe5c>
   1baa4:	06010613          	addi	a2,sp,96
   1baa8:	00090593          	mv	a1,s2
   1baac:	00098513          	mv	a0,s3
   1bab0:	03e13023          	sd	t5,32(sp)
   1bab4:	ab1ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1bab8:	e00514e3          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1babc:	06812703          	lw	a4,104(sp)
   1bac0:	07013783          	ld	a5,112(sp)
   1bac4:	02013f03          	ld	t5,32(sp)
   1bac8:	0f010593          	addi	a1,sp,240
   1bacc:	0017061b          	addiw	a2,a4,1
   1bad0:	00048b93          	mv	s7,s1
   1bad4:	08000513          	li	a0,128
   1bad8:	52af0863          	beq	t5,a0,1c008 <_vfiprintf_r+0x990>
   1badc:	00813683          	ld	a3,8(sp)
   1bae0:	40da8abb          	subw	s5,s5,a3
   1bae4:	61504c63          	bgtz	s5,1c0fc <_vfiprintf_r+0xa84>
   1bae8:	00813703          	ld	a4,8(sp)
   1baec:	01abb023          	sd	s10,0(s7)
   1baf0:	06c12423          	sw	a2,104(sp)
   1baf4:	00f707b3          	add	a5,a4,a5
   1baf8:	00ebb423          	sd	a4,8(s7)
   1bafc:	06f13823          	sd	a5,112(sp)
   1bb00:	00700713          	li	a4,7
   1bb04:	02c75263          	bge	a4,a2,1bb28 <_vfiprintf_r+0x4b0>
   1bb08:	06078ae3          	beqz	a5,1c37c <_vfiprintf_r+0xd04>
   1bb0c:	06010613          	addi	a2,sp,96
   1bb10:	00090593          	mv	a1,s2
   1bb14:	00098513          	mv	a0,s3
   1bb18:	a4dff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1bb1c:	da0512e3          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1bb20:	07013783          	ld	a5,112(sp)
   1bb24:	00048593          	mv	a1,s1
   1bb28:	004b7813          	andi	a6,s6,4
   1bb2c:	00080663          	beqz	a6,1bb38 <_vfiprintf_r+0x4c0>
   1bb30:	41940bbb          	subw	s7,s0,s9
   1bb34:	077040e3          	bgtz	s7,1c394 <_vfiprintf_r+0xd1c>
   1bb38:	00040713          	mv	a4,s0
   1bb3c:	01945463          	bge	s0,s9,1bb44 <_vfiprintf_r+0x4cc>
   1bb40:	000c8713          	mv	a4,s9
   1bb44:	00013683          	ld	a3,0(sp)
   1bb48:	00d7073b          	addw	a4,a4,a3
   1bb4c:	00e13023          	sd	a4,0(sp)
   1bb50:	66079e63          	bnez	a5,1c1cc <_vfiprintf_r+0xb54>
   1bb54:	06012423          	sw	zero,104(sp)
   1bb58:	00048b93          	mv	s7,s1
   1bb5c:	c09ff06f          	j	1b764 <_vfiprintf_r+0xec>
   1bb60:	01013703          	ld	a4,16(sp)
   1bb64:	04010ba3          	sb	zero,87(sp)
   1bb68:	00100c93          	li	s9,1
   1bb6c:	00072783          	lw	a5,0(a4)
   1bb70:	00870713          	addi	a4,a4,8
   1bb74:	00e13823          	sd	a4,16(sp)
   1bb78:	06f10c23          	sb	a5,120(sp)
   1bb7c:	00100793          	li	a5,1
   1bb80:	00f13423          	sd	a5,8(sp)
   1bb84:	07810d13          	addi	s10,sp,120
   1bb88:	e7dff06f          	j	1ba04 <_vfiprintf_r+0x38c>
   1bb8c:	01013703          	ld	a4,16(sp)
   1bb90:	020b7793          	andi	a5,s6,32
   1bb94:	00870713          	addi	a4,a4,8
   1bb98:	1c0798e3          	bnez	a5,1c568 <_vfiprintf_r+0xef0>
   1bb9c:	010b7793          	andi	a5,s6,16
   1bba0:	1c0794e3          	bnez	a5,1c568 <_vfiprintf_r+0xef0>
   1bba4:	01013683          	ld	a3,16(sp)
   1bba8:	040b7793          	andi	a5,s6,64
   1bbac:	0006ae03          	lw	t3,0(a3)
   1bbb0:	3a0784e3          	beqz	a5,1c758 <_vfiprintf_r+0x10e0>
   1bbb4:	030e1d93          	slli	s11,t3,0x30
   1bbb8:	030ddd93          	srli	s11,s11,0x30
   1bbbc:	00e13823          	sd	a4,16(sp)
   1bbc0:	000b0c93          	mv	s9,s6
   1bbc4:	00100793          	li	a5,1
   1bbc8:	d95ff06f          	j	1b95c <_vfiprintf_r+0x2e4>
   1bbcc:	080b6b13          	ori	s6,s6,128
   1bbd0:	000b0b1b          	sext.w	s6,s6
   1bbd4:	000c4703          	lbu	a4,0(s8)
   1bbd8:	c3dff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bbdc:	000c4703          	lbu	a4,0(s8)
   1bbe0:	001c0793          	addi	a5,s8,1
   1bbe4:	49a702e3          	beq	a4,s10,1c868 <_vfiprintf_r+0x11f0>
   1bbe8:	fd07069b          	addiw	a3,a4,-48
   1bbec:	00078c13          	mv	s8,a5
   1bbf0:	00000a93          	li	s5,0
   1bbf4:	c2dce6e3          	bltu	s9,a3,1b820 <_vfiprintf_r+0x1a8>
   1bbf8:	001c0c13          	addi	s8,s8,1
   1bbfc:	002a979b          	slliw	a5,s5,0x2
   1bc00:	fffc4703          	lbu	a4,-1(s8)
   1bc04:	01578abb          	addw	s5,a5,s5
   1bc08:	001a9a9b          	slliw	s5,s5,0x1
   1bc0c:	00da8abb          	addw	s5,s5,a3
   1bc10:	fd07069b          	addiw	a3,a4,-48
   1bc14:	fedcf2e3          	bgeu	s9,a3,1bbf8 <_vfiprintf_r+0x580>
   1bc18:	c09ff06f          	j	1b820 <_vfiprintf_r+0x1a8>
   1bc1c:	000c4703          	lbu	a4,0(s8)
   1bc20:	004b6b13          	ori	s6,s6,4
   1bc24:	000b0b1b          	sext.w	s6,s6
   1bc28:	bedff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bc2c:	02b00793          	li	a5,43
   1bc30:	04f10ba3          	sb	a5,87(sp)
   1bc34:	000c4703          	lbu	a4,0(s8)
   1bc38:	bddff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bc3c:	01013783          	ld	a5,16(sp)
   1bc40:	000c4703          	lbu	a4,0(s8)
   1bc44:	0007a403          	lw	s0,0(a5)
   1bc48:	00878793          	addi	a5,a5,8
   1bc4c:	00f13823          	sd	a5,16(sp)
   1bc50:	bc0452e3          	bgez	s0,1b814 <_vfiprintf_r+0x19c>
   1bc54:	4080043b          	negw	s0,s0
   1bc58:	fc9ff06f          	j	1bc20 <_vfiprintf_r+0x5a8>
   1bc5c:	00098513          	mv	a0,s3
   1bc60:	d19fa0ef          	jal	ra,16978 <_localeconv_r>
   1bc64:	00853783          	ld	a5,8(a0)
   1bc68:	00078513          	mv	a0,a5
   1bc6c:	02f13823          	sd	a5,48(sp)
   1bc70:	840fd0ef          	jal	ra,18cb0 <strlen>
   1bc74:	02a13c23          	sd	a0,56(sp)
   1bc78:	00050d93          	mv	s11,a0
   1bc7c:	00098513          	mv	a0,s3
   1bc80:	cf9fa0ef          	jal	ra,16978 <_localeconv_r>
   1bc84:	01053783          	ld	a5,16(a0)
   1bc88:	000c4703          	lbu	a4,0(s8)
   1bc8c:	02f13423          	sd	a5,40(sp)
   1bc90:	b80d82e3          	beqz	s11,1b814 <_vfiprintf_r+0x19c>
   1bc94:	b80780e3          	beqz	a5,1b814 <_vfiprintf_r+0x19c>
   1bc98:	0007c783          	lbu	a5,0(a5)
   1bc9c:	b6078ce3          	beqz	a5,1b814 <_vfiprintf_r+0x19c>
   1bca0:	400b6b13          	ori	s6,s6,1024
   1bca4:	000b0b1b          	sext.w	s6,s6
   1bca8:	b6dff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bcac:	001b6b13          	ori	s6,s6,1
   1bcb0:	000b0b1b          	sext.w	s6,s6
   1bcb4:	000c4703          	lbu	a4,0(s8)
   1bcb8:	b5dff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bcbc:	05714783          	lbu	a5,87(sp)
   1bcc0:	000c4703          	lbu	a4,0(s8)
   1bcc4:	b40798e3          	bnez	a5,1b814 <_vfiprintf_r+0x19c>
   1bcc8:	02000793          	li	a5,32
   1bccc:	04f10ba3          	sb	a5,87(sp)
   1bcd0:	b45ff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bcd4:	010b6793          	ori	a5,s6,16
   1bcd8:	0007881b          	sext.w	a6,a5
   1bcdc:	01013783          	ld	a5,16(sp)
   1bce0:	00878793          	addi	a5,a5,8
   1bce4:	01013703          	ld	a4,16(sp)
   1bce8:	00073d83          	ld	s11,0(a4)
   1bcec:	00f13823          	sd	a5,16(sp)
   1bcf0:	bff87813          	andi	a6,a6,-1025
   1bcf4:	00080c9b          	sext.w	s9,a6
   1bcf8:	00000793          	li	a5,0
   1bcfc:	c61ff06f          	j	1b95c <_vfiprintf_r+0x2e4>
   1bd00:	01013783          	ld	a5,16(sp)
   1bd04:	010b6e93          	ori	t4,s6,16
   1bd08:	000e8c9b          	sext.w	s9,t4
   1bd0c:	00878713          	addi	a4,a5,8
   1bd10:	01013783          	ld	a5,16(sp)
   1bd14:	0007b783          	ld	a5,0(a5)
   1bd18:	00e13823          	sd	a4,16(sp)
   1bd1c:	00078d93          	mv	s11,a5
   1bd20:	1c07c663          	bltz	a5,1beec <_vfiprintf_r+0x874>
   1bd24:	fff00793          	li	a5,-1
   1bd28:	00fa8a63          	beq	s5,a5,1bd3c <_vfiprintf_r+0x6c4>
   1bd2c:	f7fcf813          	andi	a6,s9,-129
   1bd30:	00080b1b          	sext.w	s6,a6
   1bd34:	780d8663          	beqz	s11,1c4c0 <_vfiprintf_r+0xe48>
   1bd38:	000b0c93          	mv	s9,s6
   1bd3c:	00900793          	li	a5,9
   1bd40:	09b7e0e3          	bltu	a5,s11,1c5c0 <_vfiprintf_r+0xf48>
   1bd44:	030d8e1b          	addiw	t3,s11,48
   1bd48:	00100793          	li	a5,1
   1bd4c:	0dc10da3          	sb	t3,219(sp)
   1bd50:	000c8b13          	mv	s6,s9
   1bd54:	00f13423          	sd	a5,8(sp)
   1bd58:	0db10d13          	addi	s10,sp,219
   1bd5c:	c31ff06f          	j	1b98c <_vfiprintf_r+0x314>
   1bd60:	01013783          	ld	a5,16(sp)
   1bd64:	010b6e93          	ori	t4,s6,16
   1bd68:	000e8c9b          	sext.w	s9,t4
   1bd6c:	00878713          	addi	a4,a5,8
   1bd70:	01013783          	ld	a5,16(sp)
   1bd74:	0007bd83          	ld	s11,0(a5)
   1bd78:	00100793          	li	a5,1
   1bd7c:	00e13823          	sd	a4,16(sp)
   1bd80:	bddff06f          	j	1b95c <_vfiprintf_r+0x2e4>
   1bd84:	01013783          	ld	a5,16(sp)
   1bd88:	04010ba3          	sb	zero,87(sp)
   1bd8c:	0007bd03          	ld	s10,0(a5)
   1bd90:	00878d93          	addi	s11,a5,8
   1bd94:	140d04e3          	beqz	s10,1c6dc <_vfiprintf_r+0x1064>
   1bd98:	fff00793          	li	a5,-1
   1bd9c:	7efa8463          	beq	s5,a5,1c584 <_vfiprintf_r+0xf0c>
   1bda0:	000a8613          	mv	a2,s5
   1bda4:	00000593          	li	a1,0
   1bda8:	000d0513          	mv	a0,s10
   1bdac:	f30fb0ef          	jal	ra,174dc <memchr>
   1bdb0:	260502e3          	beqz	a0,1c814 <_vfiprintf_r+0x119c>
   1bdb4:	41a507bb          	subw	a5,a0,s10
   1bdb8:	00f13423          	sd	a5,8(sp)
   1bdbc:	01b13823          	sd	s11,16(sp)
   1bdc0:	00000a93          	li	s5,0
   1bdc4:	bc9ff06f          	j	1b98c <_vfiprintf_r+0x314>
   1bdc8:	020b6b13          	ori	s6,s6,32
   1bdcc:	000b0b1b          	sext.w	s6,s6
   1bdd0:	000c4703          	lbu	a4,0(s8)
   1bdd4:	a41ff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1bdd8:	01013783          	ld	a5,16(sp)
   1bddc:	04013703          	ld	a4,64(sp)
   1bde0:	002b6813          	ori	a6,s6,2
   1bde4:	0007bd83          	ld	s11,0(a5)
   1bde8:	00878793          	addi	a5,a5,8
   1bdec:	00f13823          	sd	a5,16(sp)
   1bdf0:	00005797          	auipc	a5,0x5
   1bdf4:	61078793          	addi	a5,a5,1552 # 21400 <zeroes.4539+0x60>
   1bdf8:	00f13c23          	sd	a5,24(sp)
   1bdfc:	00080c9b          	sext.w	s9,a6
   1be00:	04e11c23          	sh	a4,88(sp)
   1be04:	00200793          	li	a5,2
   1be08:	b55ff06f          	j	1b95c <_vfiprintf_r+0x2e4>
   1be0c:	01013783          	ld	a5,16(sp)
   1be10:	020b7713          	andi	a4,s6,32
   1be14:	00878793          	addi	a5,a5,8
   1be18:	74071463          	bnez	a4,1c560 <_vfiprintf_r+0xee8>
   1be1c:	010b7713          	andi	a4,s6,16
   1be20:	74071063          	bnez	a4,1c560 <_vfiprintf_r+0xee8>
   1be24:	01013683          	ld	a3,16(sp)
   1be28:	040b7713          	andi	a4,s6,64
   1be2c:	0006ae03          	lw	t3,0(a3)
   1be30:	100708e3          	beqz	a4,1c740 <_vfiprintf_r+0x10c8>
   1be34:	030e1d93          	slli	s11,t3,0x30
   1be38:	030ddd93          	srli	s11,s11,0x30
   1be3c:	000b0813          	mv	a6,s6
   1be40:	00f13823          	sd	a5,16(sp)
   1be44:	eadff06f          	j	1bcf0 <_vfiprintf_r+0x678>
   1be48:	01013683          	ld	a3,16(sp)
   1be4c:	020b7793          	andi	a5,s6,32
   1be50:	0006b703          	ld	a4,0(a3)
   1be54:	00868693          	addi	a3,a3,8
   1be58:	00d13823          	sd	a3,16(sp)
   1be5c:	14079a63          	bnez	a5,1bfb0 <_vfiprintf_r+0x938>
   1be60:	010b7793          	andi	a5,s6,16
   1be64:	14079663          	bnez	a5,1bfb0 <_vfiprintf_r+0x938>
   1be68:	040b7793          	andi	a5,s6,64
   1be6c:	140798e3          	bnez	a5,1c7bc <_vfiprintf_r+0x1144>
   1be70:	200b7813          	andi	a6,s6,512
   1be74:	00013783          	ld	a5,0(sp)
   1be78:	1e0804e3          	beqz	a6,1c860 <_vfiprintf_r+0x11e8>
   1be7c:	00f70023          	sb	a5,0(a4)
   1be80:	8e5ff06f          	j	1b764 <_vfiprintf_r+0xec>
   1be84:	000c4703          	lbu	a4,0(s8)
   1be88:	06c00793          	li	a5,108
   1be8c:	02f70ee3          	beq	a4,a5,1c6c8 <_vfiprintf_r+0x1050>
   1be90:	010b6b13          	ori	s6,s6,16
   1be94:	000b0b1b          	sext.w	s6,s6
   1be98:	97dff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1be9c:	000c4703          	lbu	a4,0(s8)
   1bea0:	06800793          	li	a5,104
   1bea4:	00f708e3          	beq	a4,a5,1c6b4 <_vfiprintf_r+0x103c>
   1bea8:	040b6b13          	ori	s6,s6,64
   1beac:	000b0b1b          	sext.w	s6,s6
   1beb0:	965ff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1beb4:	01013703          	ld	a4,16(sp)
   1beb8:	020b7793          	andi	a5,s6,32
   1bebc:	00870713          	addi	a4,a4,8
   1bec0:	6a079e63          	bnez	a5,1c57c <_vfiprintf_r+0xf04>
   1bec4:	010b7793          	andi	a5,s6,16
   1bec8:	6a079a63          	bnez	a5,1c57c <_vfiprintf_r+0xf04>
   1becc:	040b7793          	andi	a5,s6,64
   1bed0:	040788e3          	beqz	a5,1c720 <_vfiprintf_r+0x10a8>
   1bed4:	01013783          	ld	a5,16(sp)
   1bed8:	00e13823          	sd	a4,16(sp)
   1bedc:	000b0c93          	mv	s9,s6
   1bee0:	00079d83          	lh	s11,0(a5)
   1bee4:	000d8793          	mv	a5,s11
   1bee8:	e207dee3          	bgez	a5,1bd24 <_vfiprintf_r+0x6ac>
   1beec:	02d00793          	li	a5,45
   1bef0:	04f10ba3          	sb	a5,87(sp)
   1bef4:	fff00713          	li	a4,-1
   1bef8:	41b00db3          	neg	s11,s11
   1befc:	00100793          	li	a5,1
   1bf00:	a6ea94e3          	bne	s5,a4,1b968 <_vfiprintf_r+0x2f0>
   1bf04:	00100713          	li	a4,1
   1bf08:	e2e78ae3          	beq	a5,a4,1bd3c <_vfiprintf_r+0x6c4>
   1bf0c:	00200713          	li	a4,2
   1bf10:	0ce78063          	beq	a5,a4,1bfd0 <_vfiprintf_r+0x958>
   1bf14:	0dc10713          	addi	a4,sp,220
   1bf18:	0080006f          	j	1bf20 <_vfiprintf_r+0x8a8>
   1bf1c:	000d0713          	mv	a4,s10
   1bf20:	007df793          	andi	a5,s11,7
   1bf24:	03078793          	addi	a5,a5,48
   1bf28:	fef70fa3          	sb	a5,-1(a4)
   1bf2c:	003ddd93          	srli	s11,s11,0x3
   1bf30:	fff70d13          	addi	s10,a4,-1
   1bf34:	fe0d94e3          	bnez	s11,1bf1c <_vfiprintf_r+0x8a4>
   1bf38:	001cf613          	andi	a2,s9,1
   1bf3c:	0a060c63          	beqz	a2,1bff4 <_vfiprintf_r+0x97c>
   1bf40:	03000613          	li	a2,48
   1bf44:	0ac78863          	beq	a5,a2,1bff4 <_vfiprintf_r+0x97c>
   1bf48:	ffe70713          	addi	a4,a4,-2
   1bf4c:	0dc10793          	addi	a5,sp,220
   1bf50:	40e787bb          	subw	a5,a5,a4
   1bf54:	fecd0fa3          	sb	a2,-1(s10)
   1bf58:	00f13423          	sd	a5,8(sp)
   1bf5c:	000c8b13          	mv	s6,s9
   1bf60:	00070d13          	mv	s10,a4
   1bf64:	a29ff06f          	j	1b98c <_vfiprintf_r+0x314>
   1bf68:	01013683          	ld	a3,16(sp)
   1bf6c:	00005797          	auipc	a5,0x5
   1bf70:	49478793          	addi	a5,a5,1172 # 21400 <zeroes.4539+0x60>
   1bf74:	00f13c23          	sd	a5,24(sp)
   1bf78:	020b7793          	andi	a5,s6,32
   1bf7c:	00868613          	addi	a2,a3,8
   1bf80:	9a0794e3          	bnez	a5,1b928 <_vfiprintf_r+0x2b0>
   1bf84:	010b7793          	andi	a5,s6,16
   1bf88:	5e079463          	bnez	a5,1c570 <_vfiprintf_r+0xef8>
   1bf8c:	01013683          	ld	a3,16(sp)
   1bf90:	040b7793          	andi	a5,s6,64
   1bf94:	0006ae03          	lw	t3,0(a3)
   1bf98:	76078863          	beqz	a5,1c708 <_vfiprintf_r+0x1090>
   1bf9c:	030e1d93          	slli	s11,t3,0x30
   1bfa0:	030ddd93          	srli	s11,s11,0x30
   1bfa4:	989ff06f          	j	1b92c <_vfiprintf_r+0x2b4>
   1bfa8:	f90f70ef          	jal	ra,13738 <__sinit>
   1bfac:	f20ff06f          	j	1b6cc <_vfiprintf_r+0x54>
   1bfb0:	00013783          	ld	a5,0(sp)
   1bfb4:	00f73023          	sd	a5,0(a4)
   1bfb8:	facff06f          	j	1b764 <_vfiprintf_r+0xec>
   1bfbc:	00100713          	li	a4,1
   1bfc0:	04e786e3          	beq	a5,a4,1c80c <_vfiprintf_r+0x1194>
   1bfc4:	00200713          	li	a4,2
   1bfc8:	000b0c93          	mv	s9,s6
   1bfcc:	f4e794e3          	bne	a5,a4,1bf14 <_vfiprintf_r+0x89c>
   1bfd0:	01813703          	ld	a4,24(sp)
   1bfd4:	0dc10d13          	addi	s10,sp,220
   1bfd8:	00fdf793          	andi	a5,s11,15
   1bfdc:	00f707b3          	add	a5,a4,a5
   1bfe0:	0007c783          	lbu	a5,0(a5)
   1bfe4:	fffd0d13          	addi	s10,s10,-1
   1bfe8:	004ddd93          	srli	s11,s11,0x4
   1bfec:	00fd0023          	sb	a5,0(s10)
   1bff0:	fe0d94e3          	bnez	s11,1bfd8 <_vfiprintf_r+0x960>
   1bff4:	0dc10793          	addi	a5,sp,220
   1bff8:	41a787bb          	subw	a5,a5,s10
   1bffc:	00f13423          	sd	a5,8(sp)
   1c000:	000c8b13          	mv	s6,s9
   1c004:	989ff06f          	j	1b98c <_vfiprintf_r+0x314>
   1c008:	41940dbb          	subw	s11,s0,s9
   1c00c:	adb058e3          	blez	s11,1badc <_vfiprintf_r+0x464>
   1c010:	01000513          	li	a0,16
   1c014:	03b55ce3          	bge	a0,s11,1c84c <_vfiprintf_r+0x11d4>
   1c018:	00006e17          	auipc	t3,0x6
   1c01c:	b18e0e13          	addi	t3,t3,-1256 # 21b30 <zeroes.4515>
   1c020:	02813023          	sd	s0,32(sp)
   1c024:	01000e93          	li	t4,16
   1c028:	00700f13          	li	t5,7
   1c02c:	000e0413          	mv	s0,t3
   1c030:	0180006f          	j	1c048 <_vfiprintf_r+0x9d0>
   1c034:	0027051b          	addiw	a0,a4,2
   1c038:	010b8b93          	addi	s7,s7,16
   1c03c:	00060713          	mv	a4,a2
   1c040:	ff0d8d9b          	addiw	s11,s11,-16
   1c044:	05bedc63          	bge	t4,s11,1c09c <_vfiprintf_r+0xa24>
   1c048:	0017061b          	addiw	a2,a4,1
   1c04c:	01078793          	addi	a5,a5,16
   1c050:	008bb023          	sd	s0,0(s7)
   1c054:	01dbb423          	sd	t4,8(s7)
   1c058:	06f13823          	sd	a5,112(sp)
   1c05c:	06c12423          	sw	a2,104(sp)
   1c060:	fccf5ae3          	bge	t5,a2,1c034 <_vfiprintf_r+0x9bc>
   1c064:	18078063          	beqz	a5,1c1e4 <_vfiprintf_r+0xb6c>
   1c068:	06010613          	addi	a2,sp,96
   1c06c:	00090593          	mv	a1,s2
   1c070:	00098513          	mv	a0,s3
   1c074:	cf0ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c078:	840514e3          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c07c:	06812703          	lw	a4,104(sp)
   1c080:	01000e93          	li	t4,16
   1c084:	ff0d8d9b          	addiw	s11,s11,-16
   1c088:	07013783          	ld	a5,112(sp)
   1c08c:	00048b93          	mv	s7,s1
   1c090:	0017051b          	addiw	a0,a4,1
   1c094:	00700f13          	li	t5,7
   1c098:	fbbec8e3          	blt	t4,s11,1c048 <_vfiprintf_r+0x9d0>
   1c09c:	00040e13          	mv	t3,s0
   1c0a0:	02013403          	ld	s0,32(sp)
   1c0a4:	010b8e93          	addi	t4,s7,16
   1c0a8:	01b787b3          	add	a5,a5,s11
   1c0ac:	01cbb023          	sd	t3,0(s7)
   1c0b0:	01bbb423          	sd	s11,8(s7)
   1c0b4:	06f13823          	sd	a5,112(sp)
   1c0b8:	06a12423          	sw	a0,104(sp)
   1c0bc:	00700713          	li	a4,7
   1c0c0:	48a75663          	bge	a4,a0,1c54c <_vfiprintf_r+0xed4>
   1c0c4:	6c078063          	beqz	a5,1c784 <_vfiprintf_r+0x110c>
   1c0c8:	06010613          	addi	a2,sp,96
   1c0cc:	00090593          	mv	a1,s2
   1c0d0:	00098513          	mv	a0,s3
   1c0d4:	c90ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c0d8:	fe051463          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c0dc:	00813683          	ld	a3,8(sp)
   1c0e0:	06812703          	lw	a4,104(sp)
   1c0e4:	07013783          	ld	a5,112(sp)
   1c0e8:	40da8abb          	subw	s5,s5,a3
   1c0ec:	0f010593          	addi	a1,sp,240
   1c0f0:	0017061b          	addiw	a2,a4,1
   1c0f4:	00048b93          	mv	s7,s1
   1c0f8:	9f5058e3          	blez	s5,1bae8 <_vfiprintf_r+0x470>
   1c0fc:	01000513          	li	a0,16
   1c100:	67555a63          	bge	a0,s5,1c774 <_vfiprintf_r+0x10fc>
   1c104:	00006e17          	auipc	t3,0x6
   1c108:	a2ce0e13          	addi	t3,t3,-1492 # 21b30 <zeroes.4515>
   1c10c:	02813023          	sd	s0,32(sp)
   1c110:	01000893          	li	a7,16
   1c114:	00700d93          	li	s11,7
   1c118:	000e0413          	mv	s0,t3
   1c11c:	0180006f          	j	1c134 <_vfiprintf_r+0xabc>
   1c120:	0027061b          	addiw	a2,a4,2
   1c124:	010b8b93          	addi	s7,s7,16
   1c128:	00058713          	mv	a4,a1
   1c12c:	ff0a8a9b          	addiw	s5,s5,-16
   1c130:	0558da63          	bge	a7,s5,1c184 <_vfiprintf_r+0xb0c>
   1c134:	0017059b          	addiw	a1,a4,1
   1c138:	01078793          	addi	a5,a5,16
   1c13c:	008bb023          	sd	s0,0(s7)
   1c140:	011bb423          	sd	a7,8(s7)
   1c144:	06f13823          	sd	a5,112(sp)
   1c148:	06b12423          	sw	a1,104(sp)
   1c14c:	fcbddae3          	bge	s11,a1,1c120 <_vfiprintf_r+0xaa8>
   1c150:	06078663          	beqz	a5,1c1bc <_vfiprintf_r+0xb44>
   1c154:	06010613          	addi	a2,sp,96
   1c158:	00090593          	mv	a1,s2
   1c15c:	00098513          	mv	a0,s3
   1c160:	c04ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c164:	f4051e63          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c168:	06812703          	lw	a4,104(sp)
   1c16c:	01000893          	li	a7,16
   1c170:	ff0a8a9b          	addiw	s5,s5,-16
   1c174:	07013783          	ld	a5,112(sp)
   1c178:	00048b93          	mv	s7,s1
   1c17c:	0017061b          	addiw	a2,a4,1
   1c180:	fb58cae3          	blt	a7,s5,1c134 <_vfiprintf_r+0xabc>
   1c184:	00040e13          	mv	t3,s0
   1c188:	02013403          	ld	s0,32(sp)
   1c18c:	010b8513          	addi	a0,s7,16
   1c190:	015787b3          	add	a5,a5,s5
   1c194:	01cbb023          	sd	t3,0(s7)
   1c198:	015bb423          	sd	s5,8(s7)
   1c19c:	06f13823          	sd	a5,112(sp)
   1c1a0:	06c12423          	sw	a2,104(sp)
   1c1a4:	00700713          	li	a4,7
   1c1a8:	2cc74e63          	blt	a4,a2,1c484 <_vfiprintf_r+0xe0c>
   1c1ac:	0016061b          	addiw	a2,a2,1
   1c1b0:	01050593          	addi	a1,a0,16
   1c1b4:	00050b93          	mv	s7,a0
   1c1b8:	931ff06f          	j	1bae8 <_vfiprintf_r+0x470>
   1c1bc:	00100613          	li	a2,1
   1c1c0:	00000713          	li	a4,0
   1c1c4:	00048b93          	mv	s7,s1
   1c1c8:	f65ff06f          	j	1c12c <_vfiprintf_r+0xab4>
   1c1cc:	06010613          	addi	a2,sp,96
   1c1d0:	00090593          	mv	a1,s2
   1c1d4:	00098513          	mv	a0,s3
   1c1d8:	b8cff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c1dc:	96050ce3          	beqz	a0,1bb54 <_vfiprintf_r+0x4dc>
   1c1e0:	ee0ff06f          	j	1b8c0 <_vfiprintf_r+0x248>
   1c1e4:	00100513          	li	a0,1
   1c1e8:	00000713          	li	a4,0
   1c1ec:	00048b93          	mv	s7,s1
   1c1f0:	e51ff06f          	j	1c040 <_vfiprintf_r+0x9c8>
   1c1f4:	04078663          	beqz	a5,1c240 <_vfiprintf_r+0xbc8>
   1c1f8:	06010613          	addi	a2,sp,96
   1c1fc:	00090593          	mv	a1,s2
   1c200:	00098513          	mv	a0,s3
   1c204:	05e13423          	sd	t5,72(sp)
   1c208:	03d13023          	sd	t4,32(sp)
   1c20c:	b58ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c210:	ea051863          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c214:	06812703          	lw	a4,104(sp)
   1c218:	07013783          	ld	a5,112(sp)
   1c21c:	0f010593          	addi	a1,sp,240
   1c220:	0017061b          	addiw	a2,a4,1
   1c224:	00048b93          	mv	s7,s1
   1c228:	04813f03          	ld	t5,72(sp)
   1c22c:	02013e83          	ld	t4,32(sp)
   1c230:	849ff06f          	j	1ba78 <_vfiprintf_r+0x400>
   1c234:	2e079063          	bnez	a5,1c514 <_vfiprintf_r+0xe9c>
   1c238:	05714703          	lbu	a4,87(sp)
   1c23c:	56071263          	bnez	a4,1c7a0 <_vfiprintf_r+0x1128>
   1c240:	2a0e8863          	beqz	t4,1c4f0 <_vfiprintf_r+0xe78>
   1c244:	05810793          	addi	a5,sp,88
   1c248:	0ef13023          	sd	a5,224(sp)
   1c24c:	00200793          	li	a5,2
   1c250:	0ef13423          	sd	a5,232(sp)
   1c254:	00100613          	li	a2,1
   1c258:	0f010593          	addi	a1,sp,240
   1c25c:	00060713          	mv	a4,a2
   1c260:	00058b93          	mv	s7,a1
   1c264:	0016061b          	addiw	a2,a2,1
   1c268:	01058593          	addi	a1,a1,16
   1c26c:	869ff06f          	j	1bad4 <_vfiprintf_r+0x45c>
   1c270:	000b0c93          	mv	s9,s6
   1c274:	c91ff06f          	j	1bf04 <_vfiprintf_r+0x88c>
   1c278:	01000513          	li	a0,16
   1c27c:	5bb55463          	bge	a0,s11,1c824 <_vfiprintf_r+0x11ac>
   1c280:	00006e17          	auipc	t3,0x6
   1c284:	8a0e0e13          	addi	t3,t3,-1888 # 21b20 <blanks.4514>
   1c288:	000b8693          	mv	a3,s7
   1c28c:	01000f93          	li	t6,16
   1c290:	00040b93          	mv	s7,s0
   1c294:	00700293          	li	t0,7
   1c298:	000d8413          	mv	s0,s11
   1c29c:	03d13023          	sd	t4,32(sp)
   1c2a0:	000c0d93          	mv	s11,s8
   1c2a4:	05e13423          	sd	t5,72(sp)
   1c2a8:	000a8c13          	mv	s8,s5
   1c2ac:	000e0a93          	mv	s5,t3
   1c2b0:	01c0006f          	j	1c2cc <_vfiprintf_r+0xc54>
   1c2b4:	0027059b          	addiw	a1,a4,2
   1c2b8:	01068693          	addi	a3,a3,16
   1c2bc:	00060713          	mv	a4,a2
   1c2c0:	ff04041b          	addiw	s0,s0,-16
   1c2c4:	048fde63          	bge	t6,s0,1c320 <_vfiprintf_r+0xca8>
   1c2c8:	0017059b          	addiw	a1,a4,1
   1c2cc:	01078793          	addi	a5,a5,16
   1c2d0:	0156b023          	sd	s5,0(a3)
   1c2d4:	01f6b423          	sd	t6,8(a3)
   1c2d8:	06f13823          	sd	a5,112(sp)
   1c2dc:	0005861b          	sext.w	a2,a1
   1c2e0:	06b12423          	sw	a1,104(sp)
   1c2e4:	fcc2d8e3          	bge	t0,a2,1c2b4 <_vfiprintf_r+0xc3c>
   1c2e8:	08078263          	beqz	a5,1c36c <_vfiprintf_r+0xcf4>
   1c2ec:	06010613          	addi	a2,sp,96
   1c2f0:	00090593          	mv	a1,s2
   1c2f4:	00098513          	mv	a0,s3
   1c2f8:	a6cff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c2fc:	dc051263          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c300:	06812703          	lw	a4,104(sp)
   1c304:	01000f93          	li	t6,16
   1c308:	ff04041b          	addiw	s0,s0,-16
   1c30c:	07013783          	ld	a5,112(sp)
   1c310:	00048693          	mv	a3,s1
   1c314:	0017059b          	addiw	a1,a4,1
   1c318:	00700293          	li	t0,7
   1c31c:	fa8fc6e3          	blt	t6,s0,1c2c8 <_vfiprintf_r+0xc50>
   1c320:	02013e83          	ld	t4,32(sp)
   1c324:	04813f03          	ld	t5,72(sp)
   1c328:	000a8e13          	mv	t3,s5
   1c32c:	000c0a93          	mv	s5,s8
   1c330:	000d8c13          	mv	s8,s11
   1c334:	00040d93          	mv	s11,s0
   1c338:	000b8413          	mv	s0,s7
   1c33c:	00068b93          	mv	s7,a3
   1c340:	01b787b3          	add	a5,a5,s11
   1c344:	01cbb023          	sd	t3,0(s7)
   1c348:	01bbb423          	sd	s11,8(s7)
   1c34c:	06f13823          	sd	a5,112(sp)
   1c350:	06b12423          	sw	a1,104(sp)
   1c354:	00700713          	li	a4,7
   1c358:	ecb74ee3          	blt	a4,a1,1c234 <_vfiprintf_r+0xbbc>
   1c35c:	010b8b93          	addi	s7,s7,16
   1c360:	0015861b          	addiw	a2,a1,1
   1c364:	00058713          	mv	a4,a1
   1c368:	ed0ff06f          	j	1ba38 <_vfiprintf_r+0x3c0>
   1c36c:	00000713          	li	a4,0
   1c370:	00100593          	li	a1,1
   1c374:	00048693          	mv	a3,s1
   1c378:	f49ff06f          	j	1c2c0 <_vfiprintf_r+0xc48>
   1c37c:	06012423          	sw	zero,104(sp)
   1c380:	004b7813          	andi	a6,s6,4
   1c384:	0e080263          	beqz	a6,1c468 <_vfiprintf_r+0xdf0>
   1c388:	41940bbb          	subw	s7,s0,s9
   1c38c:	0d705e63          	blez	s7,1c468 <_vfiprintf_r+0xdf0>
   1c390:	00048593          	mv	a1,s1
   1c394:	01000713          	li	a4,16
   1c398:	06812603          	lw	a2,104(sp)
   1c39c:	49775a63          	bge	a4,s7,1c830 <_vfiprintf_r+0x11b8>
   1c3a0:	00005e17          	auipc	t3,0x5
   1c3a4:	780e0e13          	addi	t3,t3,1920 # 21b20 <blanks.4514>
   1c3a8:	01000d13          	li	s10,16
   1c3ac:	00700d93          	li	s11,7
   1c3b0:	000e0a93          	mv	s5,t3
   1c3b4:	0180006f          	j	1c3cc <_vfiprintf_r+0xd54>
   1c3b8:	0026071b          	addiw	a4,a2,2
   1c3bc:	01058593          	addi	a1,a1,16
   1c3c0:	00068613          	mv	a2,a3
   1c3c4:	ff0b8b9b          	addiw	s7,s7,-16
   1c3c8:	057d5863          	bge	s10,s7,1c418 <_vfiprintf_r+0xda0>
   1c3cc:	0016069b          	addiw	a3,a2,1
   1c3d0:	01078793          	addi	a5,a5,16
   1c3d4:	0155b023          	sd	s5,0(a1)
   1c3d8:	01a5b423          	sd	s10,8(a1)
   1c3dc:	06f13823          	sd	a5,112(sp)
   1c3e0:	06d12423          	sw	a3,104(sp)
   1c3e4:	fcdddae3          	bge	s11,a3,1c3b8 <_vfiprintf_r+0xd40>
   1c3e8:	06078863          	beqz	a5,1c458 <_vfiprintf_r+0xde0>
   1c3ec:	06010613          	addi	a2,sp,96
   1c3f0:	00090593          	mv	a1,s2
   1c3f4:	00098513          	mv	a0,s3
   1c3f8:	96cff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c3fc:	cc051263          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c400:	06812603          	lw	a2,104(sp)
   1c404:	ff0b8b9b          	addiw	s7,s7,-16
   1c408:	07013783          	ld	a5,112(sp)
   1c40c:	00048593          	mv	a1,s1
   1c410:	0016071b          	addiw	a4,a2,1
   1c414:	fb7d4ce3          	blt	s10,s7,1c3cc <_vfiprintf_r+0xd54>
   1c418:	000a8e13          	mv	t3,s5
   1c41c:	017787b3          	add	a5,a5,s7
   1c420:	01c5b023          	sd	t3,0(a1)
   1c424:	0175b423          	sd	s7,8(a1)
   1c428:	06f13823          	sd	a5,112(sp)
   1c42c:	06e12423          	sw	a4,104(sp)
   1c430:	00700613          	li	a2,7
   1c434:	f0e65263          	bge	a2,a4,1bb38 <_vfiprintf_r+0x4c0>
   1c438:	02078863          	beqz	a5,1c468 <_vfiprintf_r+0xdf0>
   1c43c:	06010613          	addi	a2,sp,96
   1c440:	00090593          	mv	a1,s2
   1c444:	00098513          	mv	a0,s3
   1c448:	91cff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c44c:	c6051a63          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c450:	07013783          	ld	a5,112(sp)
   1c454:	ee4ff06f          	j	1bb38 <_vfiprintf_r+0x4c0>
   1c458:	00100713          	li	a4,1
   1c45c:	00000613          	li	a2,0
   1c460:	00048593          	mv	a1,s1
   1c464:	f61ff06f          	j	1c3c4 <_vfiprintf_r+0xd4c>
   1c468:	00040793          	mv	a5,s0
   1c46c:	01945463          	bge	s0,s9,1c474 <_vfiprintf_r+0xdfc>
   1c470:	000c8793          	mv	a5,s9
   1c474:	00013703          	ld	a4,0(sp)
   1c478:	00e787bb          	addw	a5,a5,a4
   1c47c:	00f13023          	sd	a5,0(sp)
   1c480:	ed4ff06f          	j	1bb54 <_vfiprintf_r+0x4dc>
   1c484:	10078e63          	beqz	a5,1c5a0 <_vfiprintf_r+0xf28>
   1c488:	06010613          	addi	a2,sp,96
   1c48c:	00090593          	mv	a1,s2
   1c490:	00098513          	mv	a0,s3
   1c494:	8d0ff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c498:	c2051463          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c49c:	06812603          	lw	a2,104(sp)
   1c4a0:	07013783          	ld	a5,112(sp)
   1c4a4:	0f010593          	addi	a1,sp,240
   1c4a8:	0016061b          	addiw	a2,a2,1
   1c4ac:	00048b93          	mv	s7,s1
   1c4b0:	e38ff06f          	j	1bae8 <_vfiprintf_r+0x470>
   1c4b4:	06012423          	sw	zero,104(sp)
   1c4b8:	00048b93          	mv	s7,s1
   1c4bc:	b24ff06f          	j	1b7e0 <_vfiprintf_r+0x168>
   1c4c0:	340a9663          	bnez	s5,1c80c <_vfiprintf_r+0x1194>
   1c4c4:	00000a93          	li	s5,0
   1c4c8:	00013423          	sd	zero,8(sp)
   1c4cc:	0dc10d13          	addi	s10,sp,220
   1c4d0:	cbcff06f          	j	1b98c <_vfiprintf_r+0x314>
   1c4d4:	0f010593          	addi	a1,sp,240
   1c4d8:	00100613          	li	a2,1
   1c4dc:	00000713          	li	a4,0
   1c4e0:	00048b93          	mv	s7,s1
   1c4e4:	df0ff06f          	j	1bad4 <_vfiprintf_r+0x45c>
   1c4e8:	000c0c93          	mv	s9,s8
   1c4ec:	b08ff06f          	j	1b7f4 <_vfiprintf_r+0x17c>
   1c4f0:	00000713          	li	a4,0
   1c4f4:	0f010593          	addi	a1,sp,240
   1c4f8:	00100613          	li	a2,1
   1c4fc:	00048b93          	mv	s7,s1
   1c500:	dd4ff06f          	j	1bad4 <_vfiprintf_r+0x45c>
   1c504:	03000793          	li	a5,48
   1c508:	0cf10da3          	sb	a5,219(sp)
   1c50c:	0db10d13          	addi	s10,sp,219
   1c510:	c7cff06f          	j	1b98c <_vfiprintf_r+0x314>
   1c514:	06010613          	addi	a2,sp,96
   1c518:	00090593          	mv	a1,s2
   1c51c:	00098513          	mv	a0,s3
   1c520:	05e13423          	sd	t5,72(sp)
   1c524:	03d13023          	sd	t4,32(sp)
   1c528:	83cff0ef          	jal	ra,1b564 <__sprint_r.part.0>
   1c52c:	b8051a63          	bnez	a0,1b8c0 <_vfiprintf_r+0x248>
   1c530:	06812703          	lw	a4,104(sp)
   1c534:	07013783          	ld	a5,112(sp)
   1c538:	00048b93          	mv	s7,s1
   1c53c:	0017061b          	addiw	a2,a4,1
   1c540:	04813f03          	ld	t5,72(sp)
   1c544:	02013e83          	ld	t4,32(sp)
   1c548:	cf0ff06f          	j	1ba38 <_vfiprintf_r+0x3c0>
   1c54c:	0015061b          	addiw	a2,a0,1
   1c550:	010e8593          	addi	a1,t4,16
   1c554:	00050713          	mv	a4,a0
   1c558:	000e8b93          	mv	s7,t4
   1c55c:	d80ff06f          	j	1badc <_vfiprintf_r+0x464>
   1c560:	000b0813          	mv	a6,s6
   1c564:	f80ff06f          	j	1bce4 <_vfiprintf_r+0x66c>
   1c568:	000b0c93          	mv	s9,s6
   1c56c:	805ff06f          	j	1bd70 <_vfiprintf_r+0x6f8>
   1c570:	01013783          	ld	a5,16(sp)
   1c574:	0007bd83          	ld	s11,0(a5)
   1c578:	bb4ff06f          	j	1b92c <_vfiprintf_r+0x2b4>
   1c57c:	000b0c93          	mv	s9,s6
   1c580:	f90ff06f          	j	1bd10 <_vfiprintf_r+0x698>
   1c584:	000d0513          	mv	a0,s10
   1c588:	f28fc0ef          	jal	ra,18cb0 <strlen>
   1c58c:	0005079b          	sext.w	a5,a0
   1c590:	00f13423          	sd	a5,8(sp)
   1c594:	01b13823          	sd	s11,16(sp)
   1c598:	00000a93          	li	s5,0
   1c59c:	bf0ff06f          	j	1b98c <_vfiprintf_r+0x314>
   1c5a0:	00813783          	ld	a5,8(sp)
   1c5a4:	00100713          	li	a4,1
   1c5a8:	0fa13023          	sd	s10,224(sp)
   1c5ac:	0ef13423          	sd	a5,232(sp)
   1c5b0:	06f13823          	sd	a5,112(sp)
   1c5b4:	06e12423          	sw	a4,104(sp)
   1c5b8:	0f010593          	addi	a1,sp,240
   1c5bc:	d6cff06f          	j	1bb28 <_vfiprintf_r+0x4b0>
   1c5c0:	400cfd13          	andi	s10,s9,1024
   1c5c4:	000d079b          	sext.w	a5,s10
   1c5c8:	00813423          	sd	s0,8(sp)
   1c5cc:	02813403          	ld	s0,40(sp)
   1c5d0:	0dc10d13          	addi	s10,sp,220
   1c5d4:	03313023          	sd	s3,32(sp)
   1c5d8:	000d8993          	mv	s3,s11
   1c5dc:	00078d93          	mv	s11,a5
   1c5e0:	000c0793          	mv	a5,s8
   1c5e4:	00000b13          	li	s6,0
   1c5e8:	00090c13          	mv	s8,s2
   1c5ec:	000d0913          	mv	s2,s10
   1c5f0:	00078d13          	mv	s10,a5
   1c5f4:	00a00593          	li	a1,10
   1c5f8:	00098513          	mv	a0,s3
   1c5fc:	cb1f30ef          	jal	ra,102ac <__umoddi3>
   1c600:	0305051b          	addiw	a0,a0,48
   1c604:	fea90fa3          	sb	a0,-1(s2)
   1c608:	001b0b1b          	addiw	s6,s6,1
   1c60c:	fff90913          	addi	s2,s2,-1
   1c610:	000d8663          	beqz	s11,1c61c <_vfiprintf_r+0xfa4>
   1c614:	00044683          	lbu	a3,0(s0)
   1c618:	05668863          	beq	a3,s6,1c668 <_vfiprintf_r+0xff0>
   1c61c:	00a00593          	li	a1,10
   1c620:	00098513          	mv	a0,s3
   1c624:	c41f30ef          	jal	ra,10264 <__udivdi3>
   1c628:	00900793          	li	a5,9
   1c62c:	0137f663          	bgeu	a5,s3,1c638 <_vfiprintf_r+0xfc0>
   1c630:	00050993          	mv	s3,a0
   1c634:	fc1ff06f          	j	1c5f4 <_vfiprintf_r+0xf7c>
   1c638:	000d0793          	mv	a5,s10
   1c63c:	00090d13          	mv	s10,s2
   1c640:	000c0913          	mv	s2,s8
   1c644:	00078c13          	mv	s8,a5
   1c648:	0dc10793          	addi	a5,sp,220
   1c64c:	41a787bb          	subw	a5,a5,s10
   1c650:	02813423          	sd	s0,40(sp)
   1c654:	02013983          	ld	s3,32(sp)
   1c658:	00813403          	ld	s0,8(sp)
   1c65c:	000c8b13          	mv	s6,s9
   1c660:	00f13423          	sd	a5,8(sp)
   1c664:	b28ff06f          	j	1b98c <_vfiprintf_r+0x314>
   1c668:	0ff00793          	li	a5,255
   1c66c:	faf688e3          	beq	a3,a5,1c61c <_vfiprintf_r+0xfa4>
   1c670:	00900793          	li	a5,9
   1c674:	fd37f2e3          	bgeu	a5,s3,1c638 <_vfiprintf_r+0xfc0>
   1c678:	03813783          	ld	a5,56(sp)
   1c67c:	03013583          	ld	a1,48(sp)
   1c680:	00000b13          	li	s6,0
   1c684:	40f90933          	sub	s2,s2,a5
   1c688:	00078613          	mv	a2,a5
   1c68c:	00090513          	mv	a0,s2
   1c690:	ef0fc0ef          	jal	ra,18d80 <strncpy>
   1c694:	00144683          	lbu	a3,1(s0)
   1c698:	00098513          	mv	a0,s3
   1c69c:	00a00593          	li	a1,10
   1c6a0:	00d03733          	snez	a4,a3
   1c6a4:	00e40433          	add	s0,s0,a4
   1c6a8:	bbdf30ef          	jal	ra,10264 <__udivdi3>
   1c6ac:	00050993          	mv	s3,a0
   1c6b0:	f45ff06f          	j	1c5f4 <_vfiprintf_r+0xf7c>
   1c6b4:	200b6b13          	ori	s6,s6,512
   1c6b8:	001c4703          	lbu	a4,1(s8)
   1c6bc:	000b0b1b          	sext.w	s6,s6
   1c6c0:	001c0c13          	addi	s8,s8,1
   1c6c4:	950ff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1c6c8:	020b6b13          	ori	s6,s6,32
   1c6cc:	001c4703          	lbu	a4,1(s8)
   1c6d0:	000b0b1b          	sext.w	s6,s6
   1c6d4:	001c0c13          	addi	s8,s8,1
   1c6d8:	93cff06f          	j	1b814 <_vfiprintf_r+0x19c>
   1c6dc:	000a871b          	sext.w	a4,s5
   1c6e0:	00600793          	li	a5,6
   1c6e4:	000a8693          	mv	a3,s5
   1c6e8:	0ae7e863          	bltu	a5,a4,1c798 <_vfiprintf_r+0x1120>
   1c6ec:	0006879b          	sext.w	a5,a3
   1c6f0:	00f13423          	sd	a5,8(sp)
   1c6f4:	00078c93          	mv	s9,a5
   1c6f8:	01b13823          	sd	s11,16(sp)
   1c6fc:	00005d17          	auipc	s10,0x5
   1c700:	d34d0d13          	addi	s10,s10,-716 # 21430 <zeroes.4539+0x90>
   1c704:	b00ff06f          	j	1ba04 <_vfiprintf_r+0x38c>
   1c708:	200b7793          	andi	a5,s6,512
   1c70c:	0ffe7d93          	andi	s11,t3,255
   1c710:	a0079e63          	bnez	a5,1b92c <_vfiprintf_r+0x2b4>
   1c714:	020e1d93          	slli	s11,t3,0x20
   1c718:	020ddd93          	srli	s11,s11,0x20
   1c71c:	a10ff06f          	j	1b92c <_vfiprintf_r+0x2b4>
   1c720:	200b7793          	andi	a5,s6,512
   1c724:	0c078863          	beqz	a5,1c7f4 <_vfiprintf_r+0x117c>
   1c728:	01013783          	ld	a5,16(sp)
   1c72c:	000b0c93          	mv	s9,s6
   1c730:	00e13823          	sd	a4,16(sp)
   1c734:	00078d83          	lb	s11,0(a5)
   1c738:	000d8793          	mv	a5,s11
   1c73c:	de4ff06f          	j	1bd20 <_vfiprintf_r+0x6a8>
   1c740:	200b7713          	andi	a4,s6,512
   1c744:	08070e63          	beqz	a4,1c7e0 <_vfiprintf_r+0x1168>
   1c748:	0ffe7d93          	andi	s11,t3,255
   1c74c:	000b0813          	mv	a6,s6
   1c750:	00f13823          	sd	a5,16(sp)
   1c754:	d9cff06f          	j	1bcf0 <_vfiprintf_r+0x678>
   1c758:	200b7793          	andi	a5,s6,512
   1c75c:	06078663          	beqz	a5,1c7c8 <_vfiprintf_r+0x1150>
   1c760:	0ffe7d93          	andi	s11,t3,255
   1c764:	00e13823          	sd	a4,16(sp)
   1c768:	000b0c93          	mv	s9,s6
   1c76c:	00100793          	li	a5,1
   1c770:	9ecff06f          	j	1b95c <_vfiprintf_r+0x2e4>
   1c774:	00058513          	mv	a0,a1
   1c778:	00005e17          	auipc	t3,0x5
   1c77c:	3b8e0e13          	addi	t3,t3,952 # 21b30 <zeroes.4515>
   1c780:	a11ff06f          	j	1c190 <_vfiprintf_r+0xb18>
   1c784:	0f010593          	addi	a1,sp,240
   1c788:	00100613          	li	a2,1
   1c78c:	00000713          	li	a4,0
   1c790:	00048b93          	mv	s7,s1
   1c794:	b48ff06f          	j	1badc <_vfiprintf_r+0x464>
   1c798:	00600693          	li	a3,6
   1c79c:	f51ff06f          	j	1c6ec <_vfiprintf_r+0x1074>
   1c7a0:	05710793          	addi	a5,sp,87
   1c7a4:	0ef13023          	sd	a5,224(sp)
   1c7a8:	00100793          	li	a5,1
   1c7ac:	0ef13423          	sd	a5,232(sp)
   1c7b0:	00100613          	li	a2,1
   1c7b4:	0f010593          	addi	a1,sp,240
   1c7b8:	ab0ff06f          	j	1ba68 <_vfiprintf_r+0x3f0>
   1c7bc:	00013783          	ld	a5,0(sp)
   1c7c0:	00f71023          	sh	a5,0(a4)
   1c7c4:	fa1fe06f          	j	1b764 <_vfiprintf_r+0xec>
   1c7c8:	020e1d93          	slli	s11,t3,0x20
   1c7cc:	020ddd93          	srli	s11,s11,0x20
   1c7d0:	00e13823          	sd	a4,16(sp)
   1c7d4:	000b0c93          	mv	s9,s6
   1c7d8:	00100793          	li	a5,1
   1c7dc:	980ff06f          	j	1b95c <_vfiprintf_r+0x2e4>
   1c7e0:	020e1d93          	slli	s11,t3,0x20
   1c7e4:	020ddd93          	srli	s11,s11,0x20
   1c7e8:	000b0813          	mv	a6,s6
   1c7ec:	00f13823          	sd	a5,16(sp)
   1c7f0:	d00ff06f          	j	1bcf0 <_vfiprintf_r+0x678>
   1c7f4:	01013783          	ld	a5,16(sp)
   1c7f8:	000b0c93          	mv	s9,s6
   1c7fc:	00e13823          	sd	a4,16(sp)
   1c800:	0007ad83          	lw	s11,0(a5)
   1c804:	000d8793          	mv	a5,s11
   1c808:	d18ff06f          	j	1bd20 <_vfiprintf_r+0x6a8>
   1c80c:	000b0c93          	mv	s9,s6
   1c810:	d34ff06f          	j	1bd44 <_vfiprintf_r+0x6cc>
   1c814:	01513423          	sd	s5,8(sp)
   1c818:	01b13823          	sd	s11,16(sp)
   1c81c:	00000a93          	li	s5,0
   1c820:	96cff06f          	j	1b98c <_vfiprintf_r+0x314>
   1c824:	00005e17          	auipc	t3,0x5
   1c828:	2fce0e13          	addi	t3,t3,764 # 21b20 <blanks.4514>
   1c82c:	b15ff06f          	j	1c340 <_vfiprintf_r+0xcc8>
   1c830:	0016071b          	addiw	a4,a2,1
   1c834:	00005e17          	auipc	t3,0x5
   1c838:	2ece0e13          	addi	t3,t3,748 # 21b20 <blanks.4514>
   1c83c:	be1ff06f          	j	1c41c <_vfiprintf_r+0xda4>
   1c840:	fff00793          	li	a5,-1
   1c844:	00f13023          	sd	a5,0(sp)
   1c848:	884ff06f          	j	1b8cc <_vfiprintf_r+0x254>
   1c84c:	00058e93          	mv	t4,a1
   1c850:	00060513          	mv	a0,a2
   1c854:	00005e17          	auipc	t3,0x5
   1c858:	2dce0e13          	addi	t3,t3,732 # 21b30 <zeroes.4515>
   1c85c:	84dff06f          	j	1c0a8 <_vfiprintf_r+0xa30>
   1c860:	00f72023          	sw	a5,0(a4)
   1c864:	f01fe06f          	j	1b764 <_vfiprintf_r+0xec>
   1c868:	01013703          	ld	a4,16(sp)
   1c86c:	00072a83          	lw	s5,0(a4)
   1c870:	00870693          	addi	a3,a4,8
   1c874:	000ad463          	bgez	s5,1c87c <_vfiprintf_r+0x1204>
   1c878:	fff00a93          	li	s5,-1
   1c87c:	001c4703          	lbu	a4,1(s8)
   1c880:	00d13823          	sd	a3,16(sp)
   1c884:	00078c13          	mv	s8,a5
   1c888:	f8dfe06f          	j	1b814 <_vfiprintf_r+0x19c>

000000000001c88c <vfiprintf>:
   1c88c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1c890:	00060693          	mv	a3,a2
   1c894:	00058613          	mv	a2,a1
   1c898:	00050593          	mv	a1,a0
   1c89c:	0007b503          	ld	a0,0(a5)
   1c8a0:	dd9fe06f          	j	1b678 <_vfiprintf_r>

000000000001c8a4 <__sbprintf>:
   1c8a4:	0105d783          	lhu	a5,16(a1)
   1c8a8:	0ac5ae03          	lw	t3,172(a1)
   1c8ac:	0125d303          	lhu	t1,18(a1)
   1c8b0:	0305b883          	ld	a7,48(a1)
   1c8b4:	0405b803          	ld	a6,64(a1)
   1c8b8:	b3010113          	addi	sp,sp,-1232
   1c8bc:	ffd7f793          	andi	a5,a5,-3
   1c8c0:	40000713          	li	a4,1024
   1c8c4:	4c813023          	sd	s0,1216(sp)
   1c8c8:	00f11823          	sh	a5,16(sp)
   1c8cc:	00058413          	mv	s0,a1
   1c8d0:	0b010793          	addi	a5,sp,176
   1c8d4:	00010593          	mv	a1,sp
   1c8d8:	4a913c23          	sd	s1,1208(sp)
   1c8dc:	4b213823          	sd	s2,1200(sp)
   1c8e0:	4c113423          	sd	ra,1224(sp)
   1c8e4:	00050913          	mv	s2,a0
   1c8e8:	0bc12623          	sw	t3,172(sp)
   1c8ec:	00611923          	sh	t1,18(sp)
   1c8f0:	03113823          	sd	a7,48(sp)
   1c8f4:	05013023          	sd	a6,64(sp)
   1c8f8:	00f13023          	sd	a5,0(sp)
   1c8fc:	00f13c23          	sd	a5,24(sp)
   1c900:	00e12623          	sw	a4,12(sp)
   1c904:	02e12023          	sw	a4,32(sp)
   1c908:	02012423          	sw	zero,40(sp)
   1c90c:	d6dfe0ef          	jal	ra,1b678 <_vfiprintf_r>
   1c910:	00050493          	mv	s1,a0
   1c914:	02055c63          	bgez	a0,1c94c <__sbprintf+0xa8>
   1c918:	01015783          	lhu	a5,16(sp)
   1c91c:	0407f793          	andi	a5,a5,64
   1c920:	00078863          	beqz	a5,1c930 <__sbprintf+0x8c>
   1c924:	01045783          	lhu	a5,16(s0)
   1c928:	0407e793          	ori	a5,a5,64
   1c92c:	00f41823          	sh	a5,16(s0)
   1c930:	4c813083          	ld	ra,1224(sp)
   1c934:	4c013403          	ld	s0,1216(sp)
   1c938:	00048513          	mv	a0,s1
   1c93c:	4b013903          	ld	s2,1200(sp)
   1c940:	4b813483          	ld	s1,1208(sp)
   1c944:	4d010113          	addi	sp,sp,1232
   1c948:	00008067          	ret
   1c94c:	00010593          	mv	a1,sp
   1c950:	00090513          	mv	a0,s2
   1c954:	a3df60ef          	jal	ra,13390 <_fflush_r>
   1c958:	fc0500e3          	beqz	a0,1c918 <__sbprintf+0x74>
   1c95c:	fff00493          	li	s1,-1
   1c960:	fb9ff06f          	j	1c918 <__sbprintf+0x74>

000000000001c964 <_wctomb_r>:
   1c964:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1c968:	0e07b303          	ld	t1,224(a5)
   1c96c:	00030067          	jr	t1

000000000001c970 <__ascii_wctomb>:
   1c970:	0006079b          	sext.w	a5,a2
   1c974:	02058463          	beqz	a1,1c99c <__ascii_wctomb+0x2c>
   1c978:	0ff00713          	li	a4,255
   1c97c:	00f76863          	bltu	a4,a5,1c98c <__ascii_wctomb+0x1c>
   1c980:	00c58023          	sb	a2,0(a1)
   1c984:	00100513          	li	a0,1
   1c988:	00008067          	ret
   1c98c:	08a00793          	li	a5,138
   1c990:	00f52023          	sw	a5,0(a0)
   1c994:	fff00513          	li	a0,-1
   1c998:	00008067          	ret
   1c99c:	00000513          	li	a0,0
   1c9a0:	00008067          	ret

000000000001c9a4 <_write_r>:
   1c9a4:	00058793          	mv	a5,a1
   1c9a8:	ff010113          	addi	sp,sp,-16
   1c9ac:	00813023          	sd	s0,0(sp)
   1c9b0:	00060593          	mv	a1,a2
   1c9b4:	00050413          	mv	s0,a0
   1c9b8:	00068613          	mv	a2,a3
   1c9bc:	00078513          	mv	a0,a5
   1c9c0:	00113423          	sd	ra,8(sp)
   1c9c4:	00007797          	auipc	a5,0x7
   1c9c8:	8207ae23          	sw	zero,-1988(a5) # 23200 <errno>
   1c9cc:	30d020ef          	jal	ra,1f4d8 <_write>
   1c9d0:	fff00793          	li	a5,-1
   1c9d4:	00f50a63          	beq	a0,a5,1c9e8 <_write_r+0x44>
   1c9d8:	00813083          	ld	ra,8(sp)
   1c9dc:	00013403          	ld	s0,0(sp)
   1c9e0:	01010113          	addi	sp,sp,16
   1c9e4:	00008067          	ret
   1c9e8:	00007797          	auipc	a5,0x7
   1c9ec:	81878793          	addi	a5,a5,-2024 # 23200 <errno>
   1c9f0:	0007a783          	lw	a5,0(a5)
   1c9f4:	fe0782e3          	beqz	a5,1c9d8 <_write_r+0x34>
   1c9f8:	00f42023          	sw	a5,0(s0)
   1c9fc:	00813083          	ld	ra,8(sp)
   1ca00:	00013403          	ld	s0,0(sp)
   1ca04:	01010113          	addi	sp,sp,16
   1ca08:	00008067          	ret

000000000001ca0c <_calloc_r>:
   1ca0c:	ff010113          	addi	sp,sp,-16
   1ca10:	00058793          	mv	a5,a1
   1ca14:	00813023          	sd	s0,0(sp)
   1ca18:	00060593          	mv	a1,a2
   1ca1c:	00050413          	mv	s0,a0
   1ca20:	00078513          	mv	a0,a5
   1ca24:	00113423          	sd	ra,8(sp)
   1ca28:	758040ef          	jal	ra,21180 <__muldi3>
   1ca2c:	00050593          	mv	a1,a0
   1ca30:	00040513          	mv	a0,s0
   1ca34:	9dcfa0ef          	jal	ra,16c10 <_malloc_r>
   1ca38:	00050413          	mv	s0,a0
   1ca3c:	02050863          	beqz	a0,1ca6c <_calloc_r+0x60>
   1ca40:	ff853603          	ld	a2,-8(a0)
   1ca44:	04800713          	li	a4,72
   1ca48:	ffc67613          	andi	a2,a2,-4
   1ca4c:	ff860613          	addi	a2,a2,-8
   1ca50:	06c76063          	bltu	a4,a2,1cab0 <_calloc_r+0xa4>
   1ca54:	02700693          	li	a3,39
   1ca58:	00050793          	mv	a5,a0
   1ca5c:	02c6e263          	bltu	a3,a2,1ca80 <_calloc_r+0x74>
   1ca60:	0007b023          	sd	zero,0(a5)
   1ca64:	0007b423          	sd	zero,8(a5)
   1ca68:	0007b823          	sd	zero,16(a5)
   1ca6c:	00040513          	mv	a0,s0
   1ca70:	00813083          	ld	ra,8(sp)
   1ca74:	00013403          	ld	s0,0(sp)
   1ca78:	01010113          	addi	sp,sp,16
   1ca7c:	00008067          	ret
   1ca80:	00053023          	sd	zero,0(a0)
   1ca84:	00053423          	sd	zero,8(a0)
   1ca88:	03700793          	li	a5,55
   1ca8c:	04c7f063          	bgeu	a5,a2,1cacc <_calloc_r+0xc0>
   1ca90:	00053823          	sd	zero,16(a0)
   1ca94:	00053c23          	sd	zero,24(a0)
   1ca98:	02050793          	addi	a5,a0,32
   1ca9c:	fce612e3          	bne	a2,a4,1ca60 <_calloc_r+0x54>
   1caa0:	02053023          	sd	zero,32(a0)
   1caa4:	03050793          	addi	a5,a0,48
   1caa8:	02053423          	sd	zero,40(a0)
   1caac:	fb5ff06f          	j	1ca60 <_calloc_r+0x54>
   1cab0:	00000593          	li	a1,0
   1cab4:	9a1f30ef          	jal	ra,10454 <memset>
   1cab8:	00040513          	mv	a0,s0
   1cabc:	00813083          	ld	ra,8(sp)
   1cac0:	00013403          	ld	s0,0(sp)
   1cac4:	01010113          	addi	sp,sp,16
   1cac8:	00008067          	ret
   1cacc:	01050793          	addi	a5,a0,16
   1cad0:	f91ff06f          	j	1ca60 <_calloc_r+0x54>

000000000001cad4 <_close_r>:
   1cad4:	ff010113          	addi	sp,sp,-16
   1cad8:	00813023          	sd	s0,0(sp)
   1cadc:	00050413          	mv	s0,a0
   1cae0:	00058513          	mv	a0,a1
   1cae4:	00006797          	auipc	a5,0x6
   1cae8:	7007ae23          	sw	zero,1820(a5) # 23200 <errno>
   1caec:	00113423          	sd	ra,8(sp)
   1caf0:	758020ef          	jal	ra,1f248 <_close>
   1caf4:	fff00793          	li	a5,-1
   1caf8:	00f50a63          	beq	a0,a5,1cb0c <_close_r+0x38>
   1cafc:	00813083          	ld	ra,8(sp)
   1cb00:	00013403          	ld	s0,0(sp)
   1cb04:	01010113          	addi	sp,sp,16
   1cb08:	00008067          	ret
   1cb0c:	00006797          	auipc	a5,0x6
   1cb10:	6f478793          	addi	a5,a5,1780 # 23200 <errno>
   1cb14:	0007a783          	lw	a5,0(a5)
   1cb18:	fe0782e3          	beqz	a5,1cafc <_close_r+0x28>
   1cb1c:	00f42023          	sw	a5,0(s0)
   1cb20:	00813083          	ld	ra,8(sp)
   1cb24:	00013403          	ld	s0,0(sp)
   1cb28:	01010113          	addi	sp,sp,16
   1cb2c:	00008067          	ret

000000000001cb30 <_fclose_r>:
   1cb30:	fe010113          	addi	sp,sp,-32
   1cb34:	00113c23          	sd	ra,24(sp)
   1cb38:	00813823          	sd	s0,16(sp)
   1cb3c:	00913423          	sd	s1,8(sp)
   1cb40:	01213023          	sd	s2,0(sp)
   1cb44:	02058063          	beqz	a1,1cb64 <_fclose_r+0x34>
   1cb48:	00050493          	mv	s1,a0
   1cb4c:	00058413          	mv	s0,a1
   1cb50:	00050663          	beqz	a0,1cb5c <_fclose_r+0x2c>
   1cb54:	05052783          	lw	a5,80(a0)
   1cb58:	0a078c63          	beqz	a5,1cc10 <_fclose_r+0xe0>
   1cb5c:	01041783          	lh	a5,16(s0)
   1cb60:	02079263          	bnez	a5,1cb84 <_fclose_r+0x54>
   1cb64:	01813083          	ld	ra,24(sp)
   1cb68:	01013403          	ld	s0,16(sp)
   1cb6c:	00000913          	li	s2,0
   1cb70:	00090513          	mv	a0,s2
   1cb74:	00813483          	ld	s1,8(sp)
   1cb78:	00013903          	ld	s2,0(sp)
   1cb7c:	02010113          	addi	sp,sp,32
   1cb80:	00008067          	ret
   1cb84:	00040593          	mv	a1,s0
   1cb88:	00048513          	mv	a0,s1
   1cb8c:	da8f60ef          	jal	ra,13134 <__sflush_r>
   1cb90:	05043783          	ld	a5,80(s0)
   1cb94:	00050913          	mv	s2,a0
   1cb98:	00078a63          	beqz	a5,1cbac <_fclose_r+0x7c>
   1cb9c:	03043583          	ld	a1,48(s0)
   1cba0:	00048513          	mv	a0,s1
   1cba4:	000780e7          	jalr	a5
   1cba8:	06054c63          	bltz	a0,1cc20 <_fclose_r+0xf0>
   1cbac:	01045783          	lhu	a5,16(s0)
   1cbb0:	0807f793          	andi	a5,a5,128
   1cbb4:	06079e63          	bnez	a5,1cc30 <_fclose_r+0x100>
   1cbb8:	05843583          	ld	a1,88(s0)
   1cbbc:	00058c63          	beqz	a1,1cbd4 <_fclose_r+0xa4>
   1cbc0:	07440793          	addi	a5,s0,116
   1cbc4:	00f58663          	beq	a1,a5,1cbd0 <_fclose_r+0xa0>
   1cbc8:	00048513          	mv	a0,s1
   1cbcc:	cedf60ef          	jal	ra,138b8 <_free_r>
   1cbd0:	04043c23          	sd	zero,88(s0)
   1cbd4:	07843583          	ld	a1,120(s0)
   1cbd8:	00058863          	beqz	a1,1cbe8 <_fclose_r+0xb8>
   1cbdc:	00048513          	mv	a0,s1
   1cbe0:	cd9f60ef          	jal	ra,138b8 <_free_r>
   1cbe4:	06043c23          	sd	zero,120(s0)
   1cbe8:	b61f60ef          	jal	ra,13748 <__sfp_lock_acquire>
   1cbec:	00041823          	sh	zero,16(s0)
   1cbf0:	b5df60ef          	jal	ra,1374c <__sfp_lock_release>
   1cbf4:	01813083          	ld	ra,24(sp)
   1cbf8:	01013403          	ld	s0,16(sp)
   1cbfc:	00090513          	mv	a0,s2
   1cc00:	00813483          	ld	s1,8(sp)
   1cc04:	00013903          	ld	s2,0(sp)
   1cc08:	02010113          	addi	sp,sp,32
   1cc0c:	00008067          	ret
   1cc10:	b29f60ef          	jal	ra,13738 <__sinit>
   1cc14:	01041783          	lh	a5,16(s0)
   1cc18:	f40786e3          	beqz	a5,1cb64 <_fclose_r+0x34>
   1cc1c:	f69ff06f          	j	1cb84 <_fclose_r+0x54>
   1cc20:	01045783          	lhu	a5,16(s0)
   1cc24:	fff00913          	li	s2,-1
   1cc28:	0807f793          	andi	a5,a5,128
   1cc2c:	f80786e3          	beqz	a5,1cbb8 <_fclose_r+0x88>
   1cc30:	01843583          	ld	a1,24(s0)
   1cc34:	00048513          	mv	a0,s1
   1cc38:	c81f60ef          	jal	ra,138b8 <_free_r>
   1cc3c:	f7dff06f          	j	1cbb8 <_fclose_r+0x88>

000000000001cc40 <fclose>:
   1cc40:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1cc44:	00050593          	mv	a1,a0
   1cc48:	0007b503          	ld	a0,0(a5)
   1cc4c:	ee5ff06f          	j	1cb30 <_fclose_r>

000000000001cc50 <__fputwc>:
   1cc50:	fb010113          	addi	sp,sp,-80
   1cc54:	04813023          	sd	s0,64(sp)
   1cc58:	03213823          	sd	s2,48(sp)
   1cc5c:	03313423          	sd	s3,40(sp)
   1cc60:	04113423          	sd	ra,72(sp)
   1cc64:	02913c23          	sd	s1,56(sp)
   1cc68:	03413023          	sd	s4,32(sp)
   1cc6c:	01513c23          	sd	s5,24(sp)
   1cc70:	01613823          	sd	s6,16(sp)
   1cc74:	00050913          	mv	s2,a0
   1cc78:	00058993          	mv	s3,a1
   1cc7c:	00060413          	mv	s0,a2
   1cc80:	d85f90ef          	jal	ra,16a04 <__locale_mb_cur_max>
   1cc84:	00100793          	li	a5,1
   1cc88:	02f51063          	bne	a0,a5,1cca8 <__fputwc+0x58>
   1cc8c:	fff9879b          	addiw	a5,s3,-1
   1cc90:	0fe00713          	li	a4,254
   1cc94:	00f76a63          	bltu	a4,a5,1cca8 <__fputwc+0x58>
   1cc98:	0ff9f713          	andi	a4,s3,255
   1cc9c:	00e10423          	sb	a4,8(sp)
   1cca0:	00100a93          	li	s5,1
   1cca4:	02c0006f          	j	1ccd0 <__fputwc+0x80>
   1cca8:	0a440693          	addi	a3,s0,164
   1ccac:	00098613          	mv	a2,s3
   1ccb0:	00810593          	addi	a1,sp,8
   1ccb4:	00090513          	mv	a0,s2
   1ccb8:	488020ef          	jal	ra,1f140 <_wcrtomb_r>
   1ccbc:	fff00793          	li	a5,-1
   1ccc0:	00050a93          	mv	s5,a0
   1ccc4:	0af50263          	beq	a0,a5,1cd68 <__fputwc+0x118>
   1ccc8:	08050c63          	beqz	a0,1cd60 <__fputwc+0x110>
   1cccc:	00814703          	lbu	a4,8(sp)
   1ccd0:	00000493          	li	s1,0
   1ccd4:	fff00a13          	li	s4,-1
   1ccd8:	00a00b13          	li	s6,10
   1ccdc:	0280006f          	j	1cd04 <__fputwc+0xb4>
   1cce0:	00043783          	ld	a5,0(s0)
   1cce4:	00178693          	addi	a3,a5,1
   1cce8:	00d43023          	sd	a3,0(s0)
   1ccec:	00e78023          	sb	a4,0(a5)
   1ccf0:	00148493          	addi	s1,s1,1
   1ccf4:	00810793          	addi	a5,sp,8
   1ccf8:	009787b3          	add	a5,a5,s1
   1ccfc:	0754f263          	bgeu	s1,s5,1cd60 <__fputwc+0x110>
   1cd00:	0007c703          	lbu	a4,0(a5)
   1cd04:	00c42783          	lw	a5,12(s0)
   1cd08:	fff7879b          	addiw	a5,a5,-1
   1cd0c:	00f42623          	sw	a5,12(s0)
   1cd10:	fc07d8e3          	bgez	a5,1cce0 <__fputwc+0x90>
   1cd14:	02842683          	lw	a3,40(s0)
   1cd18:	00070593          	mv	a1,a4
   1cd1c:	00040613          	mv	a2,s0
   1cd20:	00090513          	mv	a0,s2
   1cd24:	00d7c463          	blt	a5,a3,1cd2c <__fputwc+0xdc>
   1cd28:	fb671ce3          	bne	a4,s6,1cce0 <__fputwc+0x90>
   1cd2c:	27c020ef          	jal	ra,1efa8 <__swbuf_r>
   1cd30:	fd4510e3          	bne	a0,s4,1ccf0 <__fputwc+0xa0>
   1cd34:	fff00513          	li	a0,-1
   1cd38:	04813083          	ld	ra,72(sp)
   1cd3c:	04013403          	ld	s0,64(sp)
   1cd40:	03813483          	ld	s1,56(sp)
   1cd44:	03013903          	ld	s2,48(sp)
   1cd48:	02813983          	ld	s3,40(sp)
   1cd4c:	02013a03          	ld	s4,32(sp)
   1cd50:	01813a83          	ld	s5,24(sp)
   1cd54:	01013b03          	ld	s6,16(sp)
   1cd58:	05010113          	addi	sp,sp,80
   1cd5c:	00008067          	ret
   1cd60:	0009851b          	sext.w	a0,s3
   1cd64:	fd5ff06f          	j	1cd38 <__fputwc+0xe8>
   1cd68:	01045783          	lhu	a5,16(s0)
   1cd6c:	fff00513          	li	a0,-1
   1cd70:	0407e793          	ori	a5,a5,64
   1cd74:	00f41823          	sh	a5,16(s0)
   1cd78:	fc1ff06f          	j	1cd38 <__fputwc+0xe8>

000000000001cd7c <_fputwc_r>:
   1cd7c:	01061783          	lh	a5,16(a2)
   1cd80:	03279713          	slli	a4,a5,0x32
   1cd84:	02074063          	bltz	a4,1cda4 <_fputwc_r+0x28>
   1cd88:	0ac62703          	lw	a4,172(a2)
   1cd8c:	000026b7          	lui	a3,0x2
   1cd90:	00d7e7b3          	or	a5,a5,a3
   1cd94:	000026b7          	lui	a3,0x2
   1cd98:	00d76733          	or	a4,a4,a3
   1cd9c:	00f61823          	sh	a5,16(a2)
   1cda0:	0ae62623          	sw	a4,172(a2)
   1cda4:	eadff06f          	j	1cc50 <__fputwc>

000000000001cda8 <fputwc>:
   1cda8:	fd010113          	addi	sp,sp,-48
   1cdac:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1cdb0:	02813023          	sd	s0,32(sp)
   1cdb4:	0007b403          	ld	s0,0(a5)
   1cdb8:	00913c23          	sd	s1,24(sp)
   1cdbc:	02113423          	sd	ra,40(sp)
   1cdc0:	00050493          	mv	s1,a0
   1cdc4:	00058613          	mv	a2,a1
   1cdc8:	00040663          	beqz	s0,1cdd4 <fputwc+0x2c>
   1cdcc:	05042783          	lw	a5,80(s0)
   1cdd0:	04078463          	beqz	a5,1ce18 <fputwc+0x70>
   1cdd4:	01061783          	lh	a5,16(a2)
   1cdd8:	03279713          	slli	a4,a5,0x32
   1cddc:	02074063          	bltz	a4,1cdfc <fputwc+0x54>
   1cde0:	0ac62703          	lw	a4,172(a2)
   1cde4:	000026b7          	lui	a3,0x2
   1cde8:	00d7e7b3          	or	a5,a5,a3
   1cdec:	000026b7          	lui	a3,0x2
   1cdf0:	00d76733          	or	a4,a4,a3
   1cdf4:	00f61823          	sh	a5,16(a2)
   1cdf8:	0ae62623          	sw	a4,172(a2)
   1cdfc:	00040513          	mv	a0,s0
   1ce00:	02013403          	ld	s0,32(sp)
   1ce04:	02813083          	ld	ra,40(sp)
   1ce08:	00048593          	mv	a1,s1
   1ce0c:	01813483          	ld	s1,24(sp)
   1ce10:	03010113          	addi	sp,sp,48
   1ce14:	e3dff06f          	j	1cc50 <__fputwc>
   1ce18:	00040513          	mv	a0,s0
   1ce1c:	00b13423          	sd	a1,8(sp)
   1ce20:	919f60ef          	jal	ra,13738 <__sinit>
   1ce24:	00813603          	ld	a2,8(sp)
   1ce28:	fadff06f          	j	1cdd4 <fputwc+0x2c>

000000000001ce2c <_fstat_r>:
   1ce2c:	00058793          	mv	a5,a1
   1ce30:	ff010113          	addi	sp,sp,-16
   1ce34:	00813023          	sd	s0,0(sp)
   1ce38:	00060593          	mv	a1,a2
   1ce3c:	00050413          	mv	s0,a0
   1ce40:	00078513          	mv	a0,a5
   1ce44:	00113423          	sd	ra,8(sp)
   1ce48:	00006797          	auipc	a5,0x6
   1ce4c:	3a07ac23          	sw	zero,952(a5) # 23200 <errno>
   1ce50:	494020ef          	jal	ra,1f2e4 <_fstat>
   1ce54:	fff00793          	li	a5,-1
   1ce58:	00f50a63          	beq	a0,a5,1ce6c <_fstat_r+0x40>
   1ce5c:	00813083          	ld	ra,8(sp)
   1ce60:	00013403          	ld	s0,0(sp)
   1ce64:	01010113          	addi	sp,sp,16
   1ce68:	00008067          	ret
   1ce6c:	00006797          	auipc	a5,0x6
   1ce70:	39478793          	addi	a5,a5,916 # 23200 <errno>
   1ce74:	0007a783          	lw	a5,0(a5)
   1ce78:	fe0782e3          	beqz	a5,1ce5c <_fstat_r+0x30>
   1ce7c:	00f42023          	sw	a5,0(s0)
   1ce80:	00813083          	ld	ra,8(sp)
   1ce84:	00013403          	ld	s0,0(sp)
   1ce88:	01010113          	addi	sp,sp,16
   1ce8c:	00008067          	ret

000000000001ce90 <__sfvwrite_r>:
   1ce90:	01063783          	ld	a5,16(a2)
   1ce94:	28078c63          	beqz	a5,1d12c <__sfvwrite_r+0x29c>
   1ce98:	0105d783          	lhu	a5,16(a1)
   1ce9c:	fa010113          	addi	sp,sp,-96
   1cea0:	04813823          	sd	s0,80(sp)
   1cea4:	03413823          	sd	s4,48(sp)
   1cea8:	03513423          	sd	s5,40(sp)
   1ceac:	04113c23          	sd	ra,88(sp)
   1ceb0:	04913423          	sd	s1,72(sp)
   1ceb4:	05213023          	sd	s2,64(sp)
   1ceb8:	03313c23          	sd	s3,56(sp)
   1cebc:	03613023          	sd	s6,32(sp)
   1cec0:	01713c23          	sd	s7,24(sp)
   1cec4:	01813823          	sd	s8,16(sp)
   1cec8:	01913423          	sd	s9,8(sp)
   1cecc:	01a13023          	sd	s10,0(sp)
   1ced0:	0087f713          	andi	a4,a5,8
   1ced4:	00058413          	mv	s0,a1
   1ced8:	00050a93          	mv	s5,a0
   1cedc:	00060a13          	mv	s4,a2
   1cee0:	08070c63          	beqz	a4,1cf78 <__sfvwrite_r+0xe8>
   1cee4:	0185b703          	ld	a4,24(a1)
   1cee8:	08070863          	beqz	a4,1cf78 <__sfvwrite_r+0xe8>
   1ceec:	0027f713          	andi	a4,a5,2
   1cef0:	000a3903          	ld	s2,0(s4)
   1cef4:	0a070263          	beqz	a4,1cf98 <__sfvwrite_r+0x108>
   1cef8:	04043703          	ld	a4,64(s0)
   1cefc:	03043783          	ld	a5,48(s0)
   1cf00:	80000b37          	lui	s6,0x80000
   1cf04:	00000993          	li	s3,0
   1cf08:	00000493          	li	s1,0
   1cf0c:	c00b4b13          	xori	s6,s6,-1024
   1cf10:	00098613          	mv	a2,s3
   1cf14:	00078593          	mv	a1,a5
   1cf18:	000a8513          	mv	a0,s5
   1cf1c:	04048663          	beqz	s1,1cf68 <__sfvwrite_r+0xd8>
   1cf20:	00048693          	mv	a3,s1
   1cf24:	009b7463          	bgeu	s6,s1,1cf2c <__sfvwrite_r+0x9c>
   1cf28:	000b0693          	mv	a3,s6
   1cf2c:	0006869b          	sext.w	a3,a3
   1cf30:	000700e7          	jalr	a4
   1cf34:	1ea05263          	blez	a0,1d118 <__sfvwrite_r+0x288>
   1cf38:	010a3783          	ld	a5,16(s4)
   1cf3c:	00a989b3          	add	s3,s3,a0
   1cf40:	40a484b3          	sub	s1,s1,a0
   1cf44:	40a78533          	sub	a0,a5,a0
   1cf48:	00aa3823          	sd	a0,16(s4)
   1cf4c:	18050063          	beqz	a0,1d0cc <__sfvwrite_r+0x23c>
   1cf50:	03043783          	ld	a5,48(s0)
   1cf54:	04043703          	ld	a4,64(s0)
   1cf58:	00098613          	mv	a2,s3
   1cf5c:	00078593          	mv	a1,a5
   1cf60:	000a8513          	mv	a0,s5
   1cf64:	fa049ee3          	bnez	s1,1cf20 <__sfvwrite_r+0x90>
   1cf68:	00093983          	ld	s3,0(s2)
   1cf6c:	00893483          	ld	s1,8(s2)
   1cf70:	01090913          	addi	s2,s2,16
   1cf74:	f9dff06f          	j	1cf10 <__sfvwrite_r+0x80>
   1cf78:	00040593          	mv	a1,s0
   1cf7c:	000a8513          	mv	a0,s5
   1cf80:	e7df50ef          	jal	ra,12dfc <__swsetup_r>
   1cf84:	3c051663          	bnez	a0,1d350 <__sfvwrite_r+0x4c0>
   1cf88:	01045783          	lhu	a5,16(s0)
   1cf8c:	000a3903          	ld	s2,0(s4)
   1cf90:	0027f713          	andi	a4,a5,2
   1cf94:	f60712e3          	bnez	a4,1cef8 <__sfvwrite_r+0x68>
   1cf98:	0017f713          	andi	a4,a5,1
   1cf9c:	0a071263          	bnez	a4,1d040 <__sfvwrite_r+0x1b0>
   1cfa0:	00c42483          	lw	s1,12(s0)
   1cfa4:	00043503          	ld	a0,0(s0)
   1cfa8:	80000b37          	lui	s6,0x80000
   1cfac:	ffeb4b93          	xori	s7,s6,-2
   1cfb0:	00000c13          	li	s8,0
   1cfb4:	00000993          	li	s3,0
   1cfb8:	fffb4b13          	not	s6,s6
   1cfbc:	00048c93          	mv	s9,s1
   1cfc0:	06098863          	beqz	s3,1d030 <__sfvwrite_r+0x1a0>
   1cfc4:	2007f713          	andi	a4,a5,512
   1cfc8:	1c070863          	beqz	a4,1d198 <__sfvwrite_r+0x308>
   1cfcc:	00048d13          	mv	s10,s1
   1cfd0:	2699f663          	bgeu	s3,s1,1d23c <__sfvwrite_r+0x3ac>
   1cfd4:	00098c93          	mv	s9,s3
   1cfd8:	00098d13          	mv	s10,s3
   1cfdc:	000d0613          	mv	a2,s10
   1cfe0:	000c0593          	mv	a1,s8
   1cfe4:	554000ef          	jal	ra,1d538 <memmove>
   1cfe8:	00c42783          	lw	a5,12(s0)
   1cfec:	00043603          	ld	a2,0(s0)
   1cff0:	00098493          	mv	s1,s3
   1cff4:	41978cbb          	subw	s9,a5,s9
   1cff8:	01a60633          	add	a2,a2,s10
   1cffc:	01942623          	sw	s9,12(s0)
   1d000:	00c43023          	sd	a2,0(s0)
   1d004:	00000993          	li	s3,0
   1d008:	010a3783          	ld	a5,16(s4)
   1d00c:	009c0c33          	add	s8,s8,s1
   1d010:	409784b3          	sub	s1,a5,s1
   1d014:	009a3823          	sd	s1,16(s4)
   1d018:	0a048a63          	beqz	s1,1d0cc <__sfvwrite_r+0x23c>
   1d01c:	00c42483          	lw	s1,12(s0)
   1d020:	00043503          	ld	a0,0(s0)
   1d024:	01045783          	lhu	a5,16(s0)
   1d028:	00048c93          	mv	s9,s1
   1d02c:	f8099ce3          	bnez	s3,1cfc4 <__sfvwrite_r+0x134>
   1d030:	00093c03          	ld	s8,0(s2)
   1d034:	00893983          	ld	s3,8(s2)
   1d038:	01090913          	addi	s2,s2,16
   1d03c:	f81ff06f          	j	1cfbc <__sfvwrite_r+0x12c>
   1d040:	00000993          	li	s3,0
   1d044:	00000513          	li	a0,0
   1d048:	00000c93          	li	s9,0
   1d04c:	00000493          	li	s1,0
   1d050:	0e048263          	beqz	s1,1d134 <__sfvwrite_r+0x2a4>
   1d054:	0e050863          	beqz	a0,1d144 <__sfvwrite_r+0x2b4>
   1d058:	00098c13          	mv	s8,s3
   1d05c:	0134f463          	bgeu	s1,s3,1d064 <__sfvwrite_r+0x1d4>
   1d060:	00048c13          	mv	s8,s1
   1d064:	00043503          	ld	a0,0(s0)
   1d068:	01843783          	ld	a5,24(s0)
   1d06c:	000c0b13          	mv	s6,s8
   1d070:	02042683          	lw	a3,32(s0)
   1d074:	00a7f863          	bgeu	a5,a0,1d084 <__sfvwrite_r+0x1f4>
   1d078:	00c42603          	lw	a2,12(s0)
   1d07c:	00d60bbb          	addw	s7,a2,a3
   1d080:	0f8bc263          	blt	s7,s8,1d164 <__sfvwrite_r+0x2d4>
   1d084:	24dc4a63          	blt	s8,a3,1d2d8 <__sfvwrite_r+0x448>
   1d088:	04043783          	ld	a5,64(s0)
   1d08c:	03043583          	ld	a1,48(s0)
   1d090:	000c8613          	mv	a2,s9
   1d094:	000a8513          	mv	a0,s5
   1d098:	000780e7          	jalr	a5
   1d09c:	00050b13          	mv	s6,a0
   1d0a0:	06a05c63          	blez	a0,1d118 <__sfvwrite_r+0x288>
   1d0a4:	0005061b          	sext.w	a2,a0
   1d0a8:	40c989bb          	subw	s3,s3,a2
   1d0ac:	00100513          	li	a0,1
   1d0b0:	04098c63          	beqz	s3,1d108 <__sfvwrite_r+0x278>
   1d0b4:	010a3783          	ld	a5,16(s4)
   1d0b8:	016c8cb3          	add	s9,s9,s6
   1d0bc:	416484b3          	sub	s1,s1,s6
   1d0c0:	41678b33          	sub	s6,a5,s6
   1d0c4:	016a3823          	sd	s6,16(s4)
   1d0c8:	f80b14e3          	bnez	s6,1d050 <__sfvwrite_r+0x1c0>
   1d0cc:	00000513          	li	a0,0
   1d0d0:	05813083          	ld	ra,88(sp)
   1d0d4:	05013403          	ld	s0,80(sp)
   1d0d8:	04813483          	ld	s1,72(sp)
   1d0dc:	04013903          	ld	s2,64(sp)
   1d0e0:	03813983          	ld	s3,56(sp)
   1d0e4:	03013a03          	ld	s4,48(sp)
   1d0e8:	02813a83          	ld	s5,40(sp)
   1d0ec:	02013b03          	ld	s6,32(sp)
   1d0f0:	01813b83          	ld	s7,24(sp)
   1d0f4:	01013c03          	ld	s8,16(sp)
   1d0f8:	00813c83          	ld	s9,8(sp)
   1d0fc:	00013d03          	ld	s10,0(sp)
   1d100:	06010113          	addi	sp,sp,96
   1d104:	00008067          	ret
   1d108:	00040593          	mv	a1,s0
   1d10c:	000a8513          	mv	a0,s5
   1d110:	a80f60ef          	jal	ra,13390 <_fflush_r>
   1d114:	fa0500e3          	beqz	a0,1d0b4 <__sfvwrite_r+0x224>
   1d118:	01041783          	lh	a5,16(s0)
   1d11c:	0407e793          	ori	a5,a5,64
   1d120:	00f41823          	sh	a5,16(s0)
   1d124:	fff00513          	li	a0,-1
   1d128:	fa9ff06f          	j	1d0d0 <__sfvwrite_r+0x240>
   1d12c:	00000513          	li	a0,0
   1d130:	00008067          	ret
   1d134:	00893483          	ld	s1,8(s2)
   1d138:	00093c83          	ld	s9,0(s2)
   1d13c:	01090913          	addi	s2,s2,16
   1d140:	fe048ae3          	beqz	s1,1d134 <__sfvwrite_r+0x2a4>
   1d144:	00048613          	mv	a2,s1
   1d148:	00a00593          	li	a1,10
   1d14c:	000c8513          	mv	a0,s9
   1d150:	b8cfa0ef          	jal	ra,174dc <memchr>
   1d154:	1e050263          	beqz	a0,1d338 <__sfvwrite_r+0x4a8>
   1d158:	00150513          	addi	a0,a0,1
   1d15c:	419509bb          	subw	s3,a0,s9
   1d160:	ef9ff06f          	j	1d058 <__sfvwrite_r+0x1c8>
   1d164:	000c8593          	mv	a1,s9
   1d168:	000b8613          	mv	a2,s7
   1d16c:	3cc000ef          	jal	ra,1d538 <memmove>
   1d170:	00043783          	ld	a5,0(s0)
   1d174:	00040593          	mv	a1,s0
   1d178:	000a8513          	mv	a0,s5
   1d17c:	017787b3          	add	a5,a5,s7
   1d180:	00f43023          	sd	a5,0(s0)
   1d184:	a0cf60ef          	jal	ra,13390 <_fflush_r>
   1d188:	f80518e3          	bnez	a0,1d118 <__sfvwrite_r+0x288>
   1d18c:	000b8613          	mv	a2,s7
   1d190:	000b8b13          	mv	s6,s7
   1d194:	f15ff06f          	j	1d0a8 <__sfvwrite_r+0x218>
   1d198:	01843783          	ld	a5,24(s0)
   1d19c:	04a7ec63          	bltu	a5,a0,1d1f4 <__sfvwrite_r+0x364>
   1d1a0:	02042c83          	lw	s9,32(s0)
   1d1a4:	0599e863          	bltu	s3,s9,1d1f4 <__sfvwrite_r+0x364>
   1d1a8:	00098513          	mv	a0,s3
   1d1ac:	013bf463          	bgeu	s7,s3,1d1b4 <__sfvwrite_r+0x324>
   1d1b0:	000b0513          	mv	a0,s6
   1d1b4:	000c8593          	mv	a1,s9
   1d1b8:	0005051b          	sext.w	a0,a0
   1d1bc:	8a0f30ef          	jal	ra,1025c <__divdi3>
   1d1c0:	00050593          	mv	a1,a0
   1d1c4:	000c8513          	mv	a0,s9
   1d1c8:	7b9030ef          	jal	ra,21180 <__muldi3>
   1d1cc:	03043583          	ld	a1,48(s0)
   1d1d0:	04043783          	ld	a5,64(s0)
   1d1d4:	0005069b          	sext.w	a3,a0
   1d1d8:	000c0613          	mv	a2,s8
   1d1dc:	000a8513          	mv	a0,s5
   1d1e0:	000780e7          	jalr	a5
   1d1e4:	f2a05ae3          	blez	a0,1d118 <__sfvwrite_r+0x288>
   1d1e8:	00050493          	mv	s1,a0
   1d1ec:	409989b3          	sub	s3,s3,s1
   1d1f0:	e19ff06f          	j	1d008 <__sfvwrite_r+0x178>
   1d1f4:	0099f463          	bgeu	s3,s1,1d1fc <__sfvwrite_r+0x36c>
   1d1f8:	00098493          	mv	s1,s3
   1d1fc:	00048613          	mv	a2,s1
   1d200:	000c0593          	mv	a1,s8
   1d204:	334000ef          	jal	ra,1d538 <memmove>
   1d208:	00c42783          	lw	a5,12(s0)
   1d20c:	00043703          	ld	a4,0(s0)
   1d210:	409786bb          	subw	a3,a5,s1
   1d214:	00970733          	add	a4,a4,s1
   1d218:	00d42623          	sw	a3,12(s0)
   1d21c:	00e43023          	sd	a4,0(s0)
   1d220:	fc0696e3          	bnez	a3,1d1ec <__sfvwrite_r+0x35c>
   1d224:	00040593          	mv	a1,s0
   1d228:	000a8513          	mv	a0,s5
   1d22c:	964f60ef          	jal	ra,13390 <_fflush_r>
   1d230:	ee0514e3          	bnez	a0,1d118 <__sfvwrite_r+0x288>
   1d234:	409989b3          	sub	s3,s3,s1
   1d238:	dd1ff06f          	j	1d008 <__sfvwrite_r+0x178>
   1d23c:	4807f713          	andi	a4,a5,1152
   1d240:	d8070ee3          	beqz	a4,1cfdc <__sfvwrite_r+0x14c>
   1d244:	02042683          	lw	a3,32(s0)
   1d248:	01843583          	ld	a1,24(s0)
   1d24c:	00198713          	addi	a4,s3,1
   1d250:	0016949b          	slliw	s1,a3,0x1
   1d254:	00d486bb          	addw	a3,s1,a3
   1d258:	40b50533          	sub	a0,a0,a1
   1d25c:	01f6d49b          	srliw	s1,a3,0x1f
   1d260:	00050c9b          	sext.w	s9,a0
   1d264:	00d484bb          	addw	s1,s1,a3
   1d268:	4014d49b          	sraiw	s1,s1,0x1
   1d26c:	01970733          	add	a4,a4,s9
   1d270:	00e4f663          	bgeu	s1,a4,1d27c <__sfvwrite_r+0x3ec>
   1d274:	0019849b          	addiw	s1,s3,1
   1d278:	00a484bb          	addw	s1,s1,a0
   1d27c:	4007f793          	andi	a5,a5,1024
   1d280:	08078263          	beqz	a5,1d304 <__sfvwrite_r+0x474>
   1d284:	00048593          	mv	a1,s1
   1d288:	000a8513          	mv	a0,s5
   1d28c:	985f90ef          	jal	ra,16c10 <_malloc_r>
   1d290:	00050d13          	mv	s10,a0
   1d294:	0a050663          	beqz	a0,1d340 <__sfvwrite_r+0x4b0>
   1d298:	01843583          	ld	a1,24(s0)
   1d29c:	000c8613          	mv	a2,s9
   1d2a0:	17c000ef          	jal	ra,1d41c <memcpy>
   1d2a4:	01045783          	lhu	a5,16(s0)
   1d2a8:	b7f7f793          	andi	a5,a5,-1153
   1d2ac:	0807e793          	ori	a5,a5,128
   1d2b0:	00f41823          	sh	a5,16(s0)
   1d2b4:	019d0533          	add	a0,s10,s9
   1d2b8:	419487bb          	subw	a5,s1,s9
   1d2bc:	01a43c23          	sd	s10,24(s0)
   1d2c0:	00a43023          	sd	a0,0(s0)
   1d2c4:	02942023          	sw	s1,32(s0)
   1d2c8:	00098c93          	mv	s9,s3
   1d2cc:	00f42623          	sw	a5,12(s0)
   1d2d0:	00098d13          	mv	s10,s3
   1d2d4:	d09ff06f          	j	1cfdc <__sfvwrite_r+0x14c>
   1d2d8:	000c0613          	mv	a2,s8
   1d2dc:	000c8593          	mv	a1,s9
   1d2e0:	258000ef          	jal	ra,1d538 <memmove>
   1d2e4:	00c42703          	lw	a4,12(s0)
   1d2e8:	00043783          	ld	a5,0(s0)
   1d2ec:	000c061b          	sext.w	a2,s8
   1d2f0:	40c7073b          	subw	a4,a4,a2
   1d2f4:	01878c33          	add	s8,a5,s8
   1d2f8:	00e42623          	sw	a4,12(s0)
   1d2fc:	01843023          	sd	s8,0(s0)
   1d300:	da9ff06f          	j	1d0a8 <__sfvwrite_r+0x218>
   1d304:	00048613          	mv	a2,s1
   1d308:	000a8513          	mv	a0,s5
   1d30c:	3b4000ef          	jal	ra,1d6c0 <_realloc_r>
   1d310:	00050d13          	mv	s10,a0
   1d314:	fa0510e3          	bnez	a0,1d2b4 <__sfvwrite_r+0x424>
   1d318:	01843583          	ld	a1,24(s0)
   1d31c:	000a8513          	mv	a0,s5
   1d320:	d98f60ef          	jal	ra,138b8 <_free_r>
   1d324:	01041783          	lh	a5,16(s0)
   1d328:	00c00713          	li	a4,12
   1d32c:	00eaa023          	sw	a4,0(s5)
   1d330:	f7f7f793          	andi	a5,a5,-129
   1d334:	de9ff06f          	j	1d11c <__sfvwrite_r+0x28c>
   1d338:	0014899b          	addiw	s3,s1,1
   1d33c:	d1dff06f          	j	1d058 <__sfvwrite_r+0x1c8>
   1d340:	00c00793          	li	a5,12
   1d344:	00faa023          	sw	a5,0(s5)
   1d348:	01041783          	lh	a5,16(s0)
   1d34c:	dd1ff06f          	j	1d11c <__sfvwrite_r+0x28c>
   1d350:	fff00513          	li	a0,-1
   1d354:	d7dff06f          	j	1d0d0 <__sfvwrite_r+0x240>

000000000001d358 <_isatty_r>:
   1d358:	ff010113          	addi	sp,sp,-16
   1d35c:	00813023          	sd	s0,0(sp)
   1d360:	00050413          	mv	s0,a0
   1d364:	00058513          	mv	a0,a1
   1d368:	00006797          	auipc	a5,0x6
   1d36c:	e807ac23          	sw	zero,-360(a5) # 23200 <errno>
   1d370:	00113423          	sd	ra,8(sp)
   1d374:	7e5010ef          	jal	ra,1f358 <_isatty>
   1d378:	fff00793          	li	a5,-1
   1d37c:	00f50a63          	beq	a0,a5,1d390 <_isatty_r+0x38>
   1d380:	00813083          	ld	ra,8(sp)
   1d384:	00013403          	ld	s0,0(sp)
   1d388:	01010113          	addi	sp,sp,16
   1d38c:	00008067          	ret
   1d390:	00006797          	auipc	a5,0x6
   1d394:	e7078793          	addi	a5,a5,-400 # 23200 <errno>
   1d398:	0007a783          	lw	a5,0(a5)
   1d39c:	fe0782e3          	beqz	a5,1d380 <_isatty_r+0x28>
   1d3a0:	00f42023          	sw	a5,0(s0)
   1d3a4:	00813083          	ld	ra,8(sp)
   1d3a8:	00013403          	ld	s0,0(sp)
   1d3ac:	01010113          	addi	sp,sp,16
   1d3b0:	00008067          	ret

000000000001d3b4 <_lseek_r>:
   1d3b4:	00058793          	mv	a5,a1
   1d3b8:	ff010113          	addi	sp,sp,-16
   1d3bc:	00813023          	sd	s0,0(sp)
   1d3c0:	00060593          	mv	a1,a2
   1d3c4:	00050413          	mv	s0,a0
   1d3c8:	00068613          	mv	a2,a3
   1d3cc:	00078513          	mv	a0,a5
   1d3d0:	00113423          	sd	ra,8(sp)
   1d3d4:	00006797          	auipc	a5,0x6
   1d3d8:	e207a623          	sw	zero,-468(a5) # 23200 <errno>
   1d3dc:	7bd010ef          	jal	ra,1f398 <_lseek>
   1d3e0:	fff00793          	li	a5,-1
   1d3e4:	00f50a63          	beq	a0,a5,1d3f8 <_lseek_r+0x44>
   1d3e8:	00813083          	ld	ra,8(sp)
   1d3ec:	00013403          	ld	s0,0(sp)
   1d3f0:	01010113          	addi	sp,sp,16
   1d3f4:	00008067          	ret
   1d3f8:	00006797          	auipc	a5,0x6
   1d3fc:	e0878793          	addi	a5,a5,-504 # 23200 <errno>
   1d400:	0007a783          	lw	a5,0(a5)
   1d404:	fe0782e3          	beqz	a5,1d3e8 <_lseek_r+0x34>
   1d408:	00f42023          	sw	a5,0(s0)
   1d40c:	00813083          	ld	ra,8(sp)
   1d410:	00013403          	ld	s0,0(sp)
   1d414:	01010113          	addi	sp,sp,16
   1d418:	00008067          	ret

000000000001d41c <memcpy>:
   1d41c:	00a5c7b3          	xor	a5,a1,a0
   1d420:	0077f793          	andi	a5,a5,7
   1d424:	00c508b3          	add	a7,a0,a2
   1d428:	06079263          	bnez	a5,1d48c <memcpy+0x70>
   1d42c:	00700793          	li	a5,7
   1d430:	04c7fe63          	bgeu	a5,a2,1d48c <memcpy+0x70>
   1d434:	00757793          	andi	a5,a0,7
   1d438:	00050713          	mv	a4,a0
   1d43c:	06079863          	bnez	a5,1d4ac <memcpy+0x90>
   1d440:	ff88f613          	andi	a2,a7,-8
   1d444:	fc060793          	addi	a5,a2,-64
   1d448:	08f76c63          	bltu	a4,a5,1d4e0 <memcpy+0xc4>
   1d44c:	02c77c63          	bgeu	a4,a2,1d484 <memcpy+0x68>
   1d450:	00058693          	mv	a3,a1
   1d454:	00070793          	mv	a5,a4
   1d458:	0006b803          	ld	a6,0(a3) # 2000 <register_fini-0xe0b0>
   1d45c:	00878793          	addi	a5,a5,8
   1d460:	00868693          	addi	a3,a3,8
   1d464:	ff07bc23          	sd	a6,-8(a5)
   1d468:	fec7e8e3          	bltu	a5,a2,1d458 <memcpy+0x3c>
   1d46c:	fff60793          	addi	a5,a2,-1
   1d470:	40e787b3          	sub	a5,a5,a4
   1d474:	ff87f793          	andi	a5,a5,-8
   1d478:	00878793          	addi	a5,a5,8
   1d47c:	00f70733          	add	a4,a4,a5
   1d480:	00f585b3          	add	a1,a1,a5
   1d484:	01176863          	bltu	a4,a7,1d494 <memcpy+0x78>
   1d488:	00008067          	ret
   1d48c:	00050713          	mv	a4,a0
   1d490:	ff157ce3          	bgeu	a0,a7,1d488 <memcpy+0x6c>
   1d494:	0005c783          	lbu	a5,0(a1)
   1d498:	00170713          	addi	a4,a4,1
   1d49c:	00158593          	addi	a1,a1,1
   1d4a0:	fef70fa3          	sb	a5,-1(a4)
   1d4a4:	ff1768e3          	bltu	a4,a7,1d494 <memcpy+0x78>
   1d4a8:	00008067          	ret
   1d4ac:	0005c683          	lbu	a3,0(a1)
   1d4b0:	00170713          	addi	a4,a4,1
   1d4b4:	00777793          	andi	a5,a4,7
   1d4b8:	fed70fa3          	sb	a3,-1(a4)
   1d4bc:	00158593          	addi	a1,a1,1
   1d4c0:	f80780e3          	beqz	a5,1d440 <memcpy+0x24>
   1d4c4:	0005c683          	lbu	a3,0(a1)
   1d4c8:	00170713          	addi	a4,a4,1
   1d4cc:	00777793          	andi	a5,a4,7
   1d4d0:	fed70fa3          	sb	a3,-1(a4)
   1d4d4:	00158593          	addi	a1,a1,1
   1d4d8:	fc079ae3          	bnez	a5,1d4ac <memcpy+0x90>
   1d4dc:	f65ff06f          	j	1d440 <memcpy+0x24>
   1d4e0:	0005b683          	ld	a3,0(a1)
   1d4e4:	0085b283          	ld	t0,8(a1)
   1d4e8:	0105bf83          	ld	t6,16(a1)
   1d4ec:	0185bf03          	ld	t5,24(a1)
   1d4f0:	0205be83          	ld	t4,32(a1)
   1d4f4:	0285be03          	ld	t3,40(a1)
   1d4f8:	0305b303          	ld	t1,48(a1)
   1d4fc:	0385b803          	ld	a6,56(a1)
   1d500:	04858593          	addi	a1,a1,72
   1d504:	00d73023          	sd	a3,0(a4)
   1d508:	ff85b683          	ld	a3,-8(a1)
   1d50c:	00573423          	sd	t0,8(a4)
   1d510:	01f73823          	sd	t6,16(a4)
   1d514:	01e73c23          	sd	t5,24(a4)
   1d518:	03d73023          	sd	t4,32(a4)
   1d51c:	03c73423          	sd	t3,40(a4)
   1d520:	02673823          	sd	t1,48(a4)
   1d524:	03073c23          	sd	a6,56(a4)
   1d528:	04870713          	addi	a4,a4,72
   1d52c:	fed73c23          	sd	a3,-8(a4)
   1d530:	faf768e3          	bltu	a4,a5,1d4e0 <memcpy+0xc4>
   1d534:	f19ff06f          	j	1d44c <memcpy+0x30>

000000000001d538 <memmove>:
   1d538:	02a5f663          	bgeu	a1,a0,1d564 <memmove+0x2c>
   1d53c:	00c587b3          	add	a5,a1,a2
   1d540:	02f57263          	bgeu	a0,a5,1d564 <memmove+0x2c>
   1d544:	00c50733          	add	a4,a0,a2
   1d548:	0e060a63          	beqz	a2,1d63c <memmove+0x104>
   1d54c:	fff78793          	addi	a5,a5,-1
   1d550:	0007c683          	lbu	a3,0(a5)
   1d554:	fff70713          	addi	a4,a4,-1
   1d558:	00d70023          	sb	a3,0(a4)
   1d55c:	fef598e3          	bne	a1,a5,1d54c <memmove+0x14>
   1d560:	00008067          	ret
   1d564:	01f00793          	li	a5,31
   1d568:	02c7e863          	bltu	a5,a2,1d598 <memmove+0x60>
   1d56c:	00050793          	mv	a5,a0
   1d570:	fff60693          	addi	a3,a2,-1
   1d574:	0c060c63          	beqz	a2,1d64c <memmove+0x114>
   1d578:	00168693          	addi	a3,a3,1
   1d57c:	00d786b3          	add	a3,a5,a3
   1d580:	00158593          	addi	a1,a1,1
   1d584:	fff5c703          	lbu	a4,-1(a1)
   1d588:	00178793          	addi	a5,a5,1
   1d58c:	fee78fa3          	sb	a4,-1(a5)
   1d590:	fed798e3          	bne	a5,a3,1d580 <memmove+0x48>
   1d594:	00008067          	ret
   1d598:	00a5e7b3          	or	a5,a1,a0
   1d59c:	0077f793          	andi	a5,a5,7
   1d5a0:	0a079063          	bnez	a5,1d640 <memmove+0x108>
   1d5a4:	fe060893          	addi	a7,a2,-32
   1d5a8:	fe08f893          	andi	a7,a7,-32
   1d5ac:	02088893          	addi	a7,a7,32
   1d5b0:	01150833          	add	a6,a0,a7
   1d5b4:	00058713          	mv	a4,a1
   1d5b8:	00050793          	mv	a5,a0
   1d5bc:	00073683          	ld	a3,0(a4)
   1d5c0:	02078793          	addi	a5,a5,32
   1d5c4:	02070713          	addi	a4,a4,32
   1d5c8:	fed7b023          	sd	a3,-32(a5)
   1d5cc:	fe873683          	ld	a3,-24(a4)
   1d5d0:	fed7b423          	sd	a3,-24(a5)
   1d5d4:	ff073683          	ld	a3,-16(a4)
   1d5d8:	fed7b823          	sd	a3,-16(a5)
   1d5dc:	ff873683          	ld	a3,-8(a4)
   1d5e0:	fed7bc23          	sd	a3,-8(a5)
   1d5e4:	fcf81ce3          	bne	a6,a5,1d5bc <memmove+0x84>
   1d5e8:	01867713          	andi	a4,a2,24
   1d5ec:	011585b3          	add	a1,a1,a7
   1d5f0:	01f67813          	andi	a6,a2,31
   1d5f4:	04070e63          	beqz	a4,1d650 <memmove+0x118>
   1d5f8:	00058713          	mv	a4,a1
   1d5fc:	00078893          	mv	a7,a5
   1d600:	00700e13          	li	t3,7
   1d604:	00870713          	addi	a4,a4,8
   1d608:	ff873303          	ld	t1,-8(a4)
   1d60c:	00888893          	addi	a7,a7,8
   1d610:	40e806b3          	sub	a3,a6,a4
   1d614:	fe68bc23          	sd	t1,-8(a7)
   1d618:	00d586b3          	add	a3,a1,a3
   1d61c:	fede64e3          	bltu	t3,a3,1d604 <memmove+0xcc>
   1d620:	ff880713          	addi	a4,a6,-8
   1d624:	ff877713          	andi	a4,a4,-8
   1d628:	00870713          	addi	a4,a4,8
   1d62c:	00767613          	andi	a2,a2,7
   1d630:	00e787b3          	add	a5,a5,a4
   1d634:	00e585b3          	add	a1,a1,a4
   1d638:	f39ff06f          	j	1d570 <memmove+0x38>
   1d63c:	00008067          	ret
   1d640:	fff60693          	addi	a3,a2,-1
   1d644:	00050793          	mv	a5,a0
   1d648:	f31ff06f          	j	1d578 <memmove+0x40>
   1d64c:	00008067          	ret
   1d650:	00080613          	mv	a2,a6
   1d654:	f1dff06f          	j	1d570 <memmove+0x38>

000000000001d658 <_read_r>:
   1d658:	00058793          	mv	a5,a1
   1d65c:	ff010113          	addi	sp,sp,-16
   1d660:	00813023          	sd	s0,0(sp)
   1d664:	00060593          	mv	a1,a2
   1d668:	00050413          	mv	s0,a0
   1d66c:	00068613          	mv	a2,a3
   1d670:	00078513          	mv	a0,a5
   1d674:	00113423          	sd	ra,8(sp)
   1d678:	00006797          	auipc	a5,0x6
   1d67c:	b807a423          	sw	zero,-1144(a5) # 23200 <errno>
   1d680:	569010ef          	jal	ra,1f3e8 <_read>
   1d684:	fff00793          	li	a5,-1
   1d688:	00f50a63          	beq	a0,a5,1d69c <_read_r+0x44>
   1d68c:	00813083          	ld	ra,8(sp)
   1d690:	00013403          	ld	s0,0(sp)
   1d694:	01010113          	addi	sp,sp,16
   1d698:	00008067          	ret
   1d69c:	00006797          	auipc	a5,0x6
   1d6a0:	b6478793          	addi	a5,a5,-1180 # 23200 <errno>
   1d6a4:	0007a783          	lw	a5,0(a5)
   1d6a8:	fe0782e3          	beqz	a5,1d68c <_read_r+0x34>
   1d6ac:	00f42023          	sw	a5,0(s0)
   1d6b0:	00813083          	ld	ra,8(sp)
   1d6b4:	00013403          	ld	s0,0(sp)
   1d6b8:	01010113          	addi	sp,sp,16
   1d6bc:	00008067          	ret

000000000001d6c0 <_realloc_r>:
   1d6c0:	fb010113          	addi	sp,sp,-80
   1d6c4:	03213823          	sd	s2,48(sp)
   1d6c8:	04113423          	sd	ra,72(sp)
   1d6cc:	04813023          	sd	s0,64(sp)
   1d6d0:	02913c23          	sd	s1,56(sp)
   1d6d4:	03313423          	sd	s3,40(sp)
   1d6d8:	03413023          	sd	s4,32(sp)
   1d6dc:	01513c23          	sd	s5,24(sp)
   1d6e0:	01613823          	sd	s6,16(sp)
   1d6e4:	01713423          	sd	s7,8(sp)
   1d6e8:	01813023          	sd	s8,0(sp)
   1d6ec:	00060913          	mv	s2,a2
   1d6f0:	22058463          	beqz	a1,1d918 <_realloc_r+0x258>
   1d6f4:	00058a93          	mv	s5,a1
   1d6f8:	00050a13          	mv	s4,a0
   1d6fc:	ed1f90ef          	jal	ra,175cc <__malloc_lock>
   1d700:	ff8ab783          	ld	a5,-8(s5)
   1d704:	01790413          	addi	s0,s2,23
   1d708:	02e00713          	li	a4,46
   1d70c:	ff0a8b13          	addi	s6,s5,-16
   1d710:	ffc7f493          	andi	s1,a5,-4
   1d714:	0e877a63          	bgeu	a4,s0,1d808 <_realloc_r+0x148>
   1d718:	80000737          	lui	a4,0x80000
   1d71c:	ff047413          	andi	s0,s0,-16
   1d720:	fff74713          	not	a4,a4
   1d724:	0e876663          	bltu	a4,s0,1d810 <_realloc_r+0x150>
   1d728:	0f246463          	bltu	s0,s2,1d810 <_realloc_r+0x150>
   1d72c:	009b09b3          	add	s3,s6,s1
   1d730:	1884da63          	bge	s1,s0,1d8c4 <_realloc_r+0x204>
   1d734:	00005717          	auipc	a4,0x5
   1d738:	1dc70713          	addi	a4,a4,476 # 22910 <__malloc_av_>
   1d73c:	01073683          	ld	a3,16(a4)
   1d740:	0089b703          	ld	a4,8(s3)
   1d744:	23368c63          	beq	a3,s3,1d97c <_realloc_r+0x2bc>
   1d748:	ffe77693          	andi	a3,a4,-2
   1d74c:	00d986b3          	add	a3,s3,a3
   1d750:	0086b683          	ld	a3,8(a3)
   1d754:	0016f693          	andi	a3,a3,1
   1d758:	1a069263          	bnez	a3,1d8fc <_realloc_r+0x23c>
   1d75c:	ffc77713          	andi	a4,a4,-4
   1d760:	00e486b3          	add	a3,s1,a4
   1d764:	3486d063          	bge	a3,s0,1daa4 <_realloc_r+0x3e4>
   1d768:	0017f793          	andi	a5,a5,1
   1d76c:	02079463          	bnez	a5,1d794 <_realloc_r+0xd4>
   1d770:	ff0abc03          	ld	s8,-16(s5)
   1d774:	418b0c33          	sub	s8,s6,s8
   1d778:	008c3783          	ld	a5,8(s8)
   1d77c:	ffc7f793          	andi	a5,a5,-4
   1d780:	00e78733          	add	a4,a5,a4
   1d784:	00970bb3          	add	s7,a4,s1
   1d788:	348bdc63          	bge	s7,s0,1dae0 <_realloc_r+0x420>
   1d78c:	00f48bb3          	add	s7,s1,a5
   1d790:	0c8bd063          	bge	s7,s0,1d850 <_realloc_r+0x190>
   1d794:	00090593          	mv	a1,s2
   1d798:	000a0513          	mv	a0,s4
   1d79c:	c74f90ef          	jal	ra,16c10 <_malloc_r>
   1d7a0:	00050913          	mv	s2,a0
   1d7a4:	04050c63          	beqz	a0,1d7fc <_realloc_r+0x13c>
   1d7a8:	ff8ab783          	ld	a5,-8(s5)
   1d7ac:	ff050713          	addi	a4,a0,-16
   1d7b0:	ffe7f793          	andi	a5,a5,-2
   1d7b4:	00fb07b3          	add	a5,s6,a5
   1d7b8:	30e78463          	beq	a5,a4,1dac0 <_realloc_r+0x400>
   1d7bc:	ff848613          	addi	a2,s1,-8
   1d7c0:	04800793          	li	a5,72
   1d7c4:	30c7e863          	bltu	a5,a2,1dad4 <_realloc_r+0x414>
   1d7c8:	02700713          	li	a4,39
   1d7cc:	000ab683          	ld	a3,0(s5)
   1d7d0:	26c76c63          	bltu	a4,a2,1da48 <_realloc_r+0x388>
   1d7d4:	00050793          	mv	a5,a0
   1d7d8:	000a8713          	mv	a4,s5
   1d7dc:	00d7b023          	sd	a3,0(a5)
   1d7e0:	00873683          	ld	a3,8(a4)
   1d7e4:	00d7b423          	sd	a3,8(a5)
   1d7e8:	01073703          	ld	a4,16(a4)
   1d7ec:	00e7b823          	sd	a4,16(a5)
   1d7f0:	000a8593          	mv	a1,s5
   1d7f4:	000a0513          	mv	a0,s4
   1d7f8:	8c0f60ef          	jal	ra,138b8 <_free_r>
   1d7fc:	000a0513          	mv	a0,s4
   1d800:	dd1f90ef          	jal	ra,175d0 <__malloc_unlock>
   1d804:	0180006f          	j	1d81c <_realloc_r+0x15c>
   1d808:	02000413          	li	s0,32
   1d80c:	f32470e3          	bgeu	s0,s2,1d72c <_realloc_r+0x6c>
   1d810:	00c00793          	li	a5,12
   1d814:	00fa2023          	sw	a5,0(s4)
   1d818:	00000913          	li	s2,0
   1d81c:	04813083          	ld	ra,72(sp)
   1d820:	04013403          	ld	s0,64(sp)
   1d824:	00090513          	mv	a0,s2
   1d828:	03813483          	ld	s1,56(sp)
   1d82c:	03013903          	ld	s2,48(sp)
   1d830:	02813983          	ld	s3,40(sp)
   1d834:	02013a03          	ld	s4,32(sp)
   1d838:	01813a83          	ld	s5,24(sp)
   1d83c:	01013b03          	ld	s6,16(sp)
   1d840:	00813b83          	ld	s7,8(sp)
   1d844:	00013c03          	ld	s8,0(sp)
   1d848:	05010113          	addi	sp,sp,80
   1d84c:	00008067          	ret
   1d850:	018c3783          	ld	a5,24(s8)
   1d854:	010c3703          	ld	a4,16(s8)
   1d858:	ff848613          	addi	a2,s1,-8
   1d85c:	04800693          	li	a3,72
   1d860:	00f73c23          	sd	a5,24(a4)
   1d864:	00e7b823          	sd	a4,16(a5)
   1d868:	010c0913          	addi	s2,s8,16
   1d86c:	017c09b3          	add	s3,s8,s7
   1d870:	30c6e063          	bltu	a3,a2,1db70 <_realloc_r+0x4b0>
   1d874:	02700593          	li	a1,39
   1d878:	000ab703          	ld	a4,0(s5)
   1d87c:	00090793          	mv	a5,s2
   1d880:	02c5f263          	bgeu	a1,a2,1d8a4 <_realloc_r+0x1e4>
   1d884:	00ec3823          	sd	a4,16(s8)
   1d888:	008ab703          	ld	a4,8(s5)
   1d88c:	03700793          	li	a5,55
   1d890:	00ec3c23          	sd	a4,24(s8)
   1d894:	32c7ee63          	bltu	a5,a2,1dbd0 <_realloc_r+0x510>
   1d898:	010ab703          	ld	a4,16(s5)
   1d89c:	020c0793          	addi	a5,s8,32
   1d8a0:	010a8a93          	addi	s5,s5,16
   1d8a4:	00e7b023          	sd	a4,0(a5)
   1d8a8:	008ab703          	ld	a4,8(s5)
   1d8ac:	000b8493          	mv	s1,s7
   1d8b0:	000c0b13          	mv	s6,s8
   1d8b4:	00e7b423          	sd	a4,8(a5)
   1d8b8:	010ab703          	ld	a4,16(s5)
   1d8bc:	00090a93          	mv	s5,s2
   1d8c0:	00e7b823          	sd	a4,16(a5)
   1d8c4:	008b3603          	ld	a2,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdce00>
   1d8c8:	408487b3          	sub	a5,s1,s0
   1d8cc:	01f00713          	li	a4,31
   1d8d0:	00167613          	andi	a2,a2,1
   1d8d4:	06f76c63          	bltu	a4,a5,1d94c <_realloc_r+0x28c>
   1d8d8:	00c4e633          	or	a2,s1,a2
   1d8dc:	00cb3423          	sd	a2,8(s6)
   1d8e0:	0089b783          	ld	a5,8(s3)
   1d8e4:	0017e793          	ori	a5,a5,1
   1d8e8:	00f9b423          	sd	a5,8(s3)
   1d8ec:	000a0513          	mv	a0,s4
   1d8f0:	ce1f90ef          	jal	ra,175d0 <__malloc_unlock>
   1d8f4:	000a8913          	mv	s2,s5
   1d8f8:	f25ff06f          	j	1d81c <_realloc_r+0x15c>
   1d8fc:	0017f793          	andi	a5,a5,1
   1d900:	e8079ae3          	bnez	a5,1d794 <_realloc_r+0xd4>
   1d904:	ff0abc03          	ld	s8,-16(s5)
   1d908:	418b0c33          	sub	s8,s6,s8
   1d90c:	008c3783          	ld	a5,8(s8)
   1d910:	ffc7f793          	andi	a5,a5,-4
   1d914:	e79ff06f          	j	1d78c <_realloc_r+0xcc>
   1d918:	04013403          	ld	s0,64(sp)
   1d91c:	04813083          	ld	ra,72(sp)
   1d920:	03813483          	ld	s1,56(sp)
   1d924:	03013903          	ld	s2,48(sp)
   1d928:	02813983          	ld	s3,40(sp)
   1d92c:	02013a03          	ld	s4,32(sp)
   1d930:	01813a83          	ld	s5,24(sp)
   1d934:	01013b03          	ld	s6,16(sp)
   1d938:	00813b83          	ld	s7,8(sp)
   1d93c:	00013c03          	ld	s8,0(sp)
   1d940:	00060593          	mv	a1,a2
   1d944:	05010113          	addi	sp,sp,80
   1d948:	ac8f906f          	j	16c10 <_malloc_r>
   1d94c:	00c46633          	or	a2,s0,a2
   1d950:	00cb3423          	sd	a2,8(s6)
   1d954:	008b05b3          	add	a1,s6,s0
   1d958:	0017e793          	ori	a5,a5,1
   1d95c:	00f5b423          	sd	a5,8(a1)
   1d960:	0089b783          	ld	a5,8(s3)
   1d964:	01058593          	addi	a1,a1,16
   1d968:	000a0513          	mv	a0,s4
   1d96c:	0017e793          	ori	a5,a5,1
   1d970:	00f9b423          	sd	a5,8(s3)
   1d974:	f45f50ef          	jal	ra,138b8 <_free_r>
   1d978:	f75ff06f          	j	1d8ec <_realloc_r+0x22c>
   1d97c:	ffc77713          	andi	a4,a4,-4
   1d980:	00e486b3          	add	a3,s1,a4
   1d984:	02040613          	addi	a2,s0,32
   1d988:	0ec6d263          	bge	a3,a2,1da6c <_realloc_r+0x3ac>
   1d98c:	0017f793          	andi	a5,a5,1
   1d990:	e00792e3          	bnez	a5,1d794 <_realloc_r+0xd4>
   1d994:	ff0abc03          	ld	s8,-16(s5)
   1d998:	418b0c33          	sub	s8,s6,s8
   1d99c:	008c3783          	ld	a5,8(s8)
   1d9a0:	ffc7f793          	andi	a5,a5,-4
   1d9a4:	00e78733          	add	a4,a5,a4
   1d9a8:	009709b3          	add	s3,a4,s1
   1d9ac:	dec9c0e3          	blt	s3,a2,1d78c <_realloc_r+0xcc>
   1d9b0:	018c3783          	ld	a5,24(s8)
   1d9b4:	010c3703          	ld	a4,16(s8)
   1d9b8:	ff848613          	addi	a2,s1,-8
   1d9bc:	04800693          	li	a3,72
   1d9c0:	00f73c23          	sd	a5,24(a4)
   1d9c4:	00e7b823          	sd	a4,16(a5)
   1d9c8:	010c0913          	addi	s2,s8,16
   1d9cc:	22c6e463          	bltu	a3,a2,1dbf4 <_realloc_r+0x534>
   1d9d0:	02700593          	li	a1,39
   1d9d4:	000ab703          	ld	a4,0(s5)
   1d9d8:	00090793          	mv	a5,s2
   1d9dc:	02c5f263          	bgeu	a1,a2,1da00 <_realloc_r+0x340>
   1d9e0:	00ec3823          	sd	a4,16(s8)
   1d9e4:	008ab703          	ld	a4,8(s5)
   1d9e8:	03700793          	li	a5,55
   1d9ec:	00ec3c23          	sd	a4,24(s8)
   1d9f0:	20c7ea63          	bltu	a5,a2,1dc04 <_realloc_r+0x544>
   1d9f4:	010ab703          	ld	a4,16(s5)
   1d9f8:	020c0793          	addi	a5,s8,32
   1d9fc:	010a8a93          	addi	s5,s5,16
   1da00:	00e7b023          	sd	a4,0(a5)
   1da04:	008ab703          	ld	a4,8(s5)
   1da08:	00e7b423          	sd	a4,8(a5)
   1da0c:	010ab703          	ld	a4,16(s5)
   1da10:	00e7b823          	sd	a4,16(a5)
   1da14:	008c0733          	add	a4,s8,s0
   1da18:	408987b3          	sub	a5,s3,s0
   1da1c:	00005697          	auipc	a3,0x5
   1da20:	f0e6b223          	sd	a4,-252(a3) # 22920 <__malloc_av_+0x10>
   1da24:	0017e793          	ori	a5,a5,1
   1da28:	00f73423          	sd	a5,8(a4)
   1da2c:	008c3783          	ld	a5,8(s8)
   1da30:	000a0513          	mv	a0,s4
   1da34:	0017f793          	andi	a5,a5,1
   1da38:	0087e433          	or	s0,a5,s0
   1da3c:	008c3423          	sd	s0,8(s8)
   1da40:	b91f90ef          	jal	ra,175d0 <__malloc_unlock>
   1da44:	dd9ff06f          	j	1d81c <_realloc_r+0x15c>
   1da48:	00d53023          	sd	a3,0(a0)
   1da4c:	008ab683          	ld	a3,8(s5)
   1da50:	03700713          	li	a4,55
   1da54:	00d53423          	sd	a3,8(a0)
   1da58:	12c76a63          	bltu	a4,a2,1db8c <_realloc_r+0x4cc>
   1da5c:	010a8713          	addi	a4,s5,16
   1da60:	01050793          	addi	a5,a0,16
   1da64:	010ab683          	ld	a3,16(s5)
   1da68:	d75ff06f          	j	1d7dc <_realloc_r+0x11c>
   1da6c:	008b0b33          	add	s6,s6,s0
   1da70:	408687b3          	sub	a5,a3,s0
   1da74:	00005717          	auipc	a4,0x5
   1da78:	eb673623          	sd	s6,-340(a4) # 22920 <__malloc_av_+0x10>
   1da7c:	0017e793          	ori	a5,a5,1
   1da80:	00fb3423          	sd	a5,8(s6)
   1da84:	ff8ab783          	ld	a5,-8(s5)
   1da88:	000a0513          	mv	a0,s4
   1da8c:	000a8913          	mv	s2,s5
   1da90:	0017f793          	andi	a5,a5,1
   1da94:	0087e433          	or	s0,a5,s0
   1da98:	fe8abc23          	sd	s0,-8(s5)
   1da9c:	b35f90ef          	jal	ra,175d0 <__malloc_unlock>
   1daa0:	d7dff06f          	j	1d81c <_realloc_r+0x15c>
   1daa4:	0189b783          	ld	a5,24(s3)
   1daa8:	0109b703          	ld	a4,16(s3)
   1daac:	00068493          	mv	s1,a3
   1dab0:	00db09b3          	add	s3,s6,a3
   1dab4:	00f73c23          	sd	a5,24(a4)
   1dab8:	00e7b823          	sd	a4,16(a5)
   1dabc:	e09ff06f          	j	1d8c4 <_realloc_r+0x204>
   1dac0:	ff853783          	ld	a5,-8(a0)
   1dac4:	ffc7f793          	andi	a5,a5,-4
   1dac8:	00f484b3          	add	s1,s1,a5
   1dacc:	009b09b3          	add	s3,s6,s1
   1dad0:	df5ff06f          	j	1d8c4 <_realloc_r+0x204>
   1dad4:	000a8593          	mv	a1,s5
   1dad8:	a61ff0ef          	jal	ra,1d538 <memmove>
   1dadc:	d15ff06f          	j	1d7f0 <_realloc_r+0x130>
   1dae0:	0189b783          	ld	a5,24(s3)
   1dae4:	0109b703          	ld	a4,16(s3)
   1dae8:	ff848613          	addi	a2,s1,-8
   1daec:	04800693          	li	a3,72
   1daf0:	00f73c23          	sd	a5,24(a4)
   1daf4:	00e7b823          	sd	a4,16(a5)
   1daf8:	010c3703          	ld	a4,16(s8)
   1dafc:	018c3783          	ld	a5,24(s8)
   1db00:	010c0913          	addi	s2,s8,16
   1db04:	017c09b3          	add	s3,s8,s7
   1db08:	00f73c23          	sd	a5,24(a4)
   1db0c:	00e7b823          	sd	a4,16(a5)
   1db10:	06c6e063          	bltu	a3,a2,1db70 <_realloc_r+0x4b0>
   1db14:	02700693          	li	a3,39
   1db18:	000ab703          	ld	a4,0(s5)
   1db1c:	00090793          	mv	a5,s2
   1db20:	d8c6f2e3          	bgeu	a3,a2,1d8a4 <_realloc_r+0x1e4>
   1db24:	00ec3823          	sd	a4,16(s8)
   1db28:	008ab703          	ld	a4,8(s5)
   1db2c:	03700793          	li	a5,55
   1db30:	00ec3c23          	sd	a4,24(s8)
   1db34:	010ab703          	ld	a4,16(s5)
   1db38:	d6c7f2e3          	bgeu	a5,a2,1d89c <_realloc_r+0x1dc>
   1db3c:	02ec3023          	sd	a4,32(s8)
   1db40:	018ab703          	ld	a4,24(s5)
   1db44:	04800793          	li	a5,72
   1db48:	02ec3423          	sd	a4,40(s8)
   1db4c:	020ab703          	ld	a4,32(s5)
   1db50:	08f61c63          	bne	a2,a5,1dbe8 <_realloc_r+0x528>
   1db54:	02ec3823          	sd	a4,48(s8)
   1db58:	028ab703          	ld	a4,40(s5)
   1db5c:	040c0793          	addi	a5,s8,64
   1db60:	030a8a93          	addi	s5,s5,48
   1db64:	02ec3c23          	sd	a4,56(s8)
   1db68:	000ab703          	ld	a4,0(s5)
   1db6c:	d39ff06f          	j	1d8a4 <_realloc_r+0x1e4>
   1db70:	000a8593          	mv	a1,s5
   1db74:	00090513          	mv	a0,s2
   1db78:	9c1ff0ef          	jal	ra,1d538 <memmove>
   1db7c:	00090a93          	mv	s5,s2
   1db80:	000b8493          	mv	s1,s7
   1db84:	000c0b13          	mv	s6,s8
   1db88:	d3dff06f          	j	1d8c4 <_realloc_r+0x204>
   1db8c:	010ab703          	ld	a4,16(s5)
   1db90:	00e53823          	sd	a4,16(a0)
   1db94:	018ab703          	ld	a4,24(s5)
   1db98:	00e53c23          	sd	a4,24(a0)
   1db9c:	00f60a63          	beq	a2,a5,1dbb0 <_realloc_r+0x4f0>
   1dba0:	020a8713          	addi	a4,s5,32
   1dba4:	02050793          	addi	a5,a0,32
   1dba8:	020ab683          	ld	a3,32(s5)
   1dbac:	c31ff06f          	j	1d7dc <_realloc_r+0x11c>
   1dbb0:	020ab683          	ld	a3,32(s5)
   1dbb4:	030a8713          	addi	a4,s5,48
   1dbb8:	03050793          	addi	a5,a0,48
   1dbbc:	02d53023          	sd	a3,32(a0)
   1dbc0:	028ab683          	ld	a3,40(s5)
   1dbc4:	02d53423          	sd	a3,40(a0)
   1dbc8:	030ab683          	ld	a3,48(s5)
   1dbcc:	c11ff06f          	j	1d7dc <_realloc_r+0x11c>
   1dbd0:	010ab783          	ld	a5,16(s5)
   1dbd4:	02fc3023          	sd	a5,32(s8)
   1dbd8:	018ab783          	ld	a5,24(s5)
   1dbdc:	02fc3423          	sd	a5,40(s8)
   1dbe0:	020ab703          	ld	a4,32(s5)
   1dbe4:	f6d608e3          	beq	a2,a3,1db54 <_realloc_r+0x494>
   1dbe8:	030c0793          	addi	a5,s8,48
   1dbec:	020a8a93          	addi	s5,s5,32
   1dbf0:	cb5ff06f          	j	1d8a4 <_realloc_r+0x1e4>
   1dbf4:	000a8593          	mv	a1,s5
   1dbf8:	00090513          	mv	a0,s2
   1dbfc:	93dff0ef          	jal	ra,1d538 <memmove>
   1dc00:	e15ff06f          	j	1da14 <_realloc_r+0x354>
   1dc04:	010ab783          	ld	a5,16(s5)
   1dc08:	02fc3023          	sd	a5,32(s8)
   1dc0c:	018ab783          	ld	a5,24(s5)
   1dc10:	02fc3423          	sd	a5,40(s8)
   1dc14:	020ab703          	ld	a4,32(s5)
   1dc18:	00d60863          	beq	a2,a3,1dc28 <_realloc_r+0x568>
   1dc1c:	030c0793          	addi	a5,s8,48
   1dc20:	020a8a93          	addi	s5,s5,32
   1dc24:	dddff06f          	j	1da00 <_realloc_r+0x340>
   1dc28:	02ec3823          	sd	a4,48(s8)
   1dc2c:	028ab703          	ld	a4,40(s5)
   1dc30:	040c0793          	addi	a5,s8,64
   1dc34:	030a8a93          	addi	s5,s5,48
   1dc38:	02ec3c23          	sd	a4,56(s8)
   1dc3c:	000ab703          	ld	a4,0(s5)
   1dc40:	dc1ff06f          	j	1da00 <_realloc_r+0x340>

000000000001dc44 <cleanup_glue>:
   1dc44:	fe010113          	addi	sp,sp,-32
   1dc48:	00813823          	sd	s0,16(sp)
   1dc4c:	00058413          	mv	s0,a1
   1dc50:	0005b583          	ld	a1,0(a1)
   1dc54:	00913423          	sd	s1,8(sp)
   1dc58:	00113c23          	sd	ra,24(sp)
   1dc5c:	00050493          	mv	s1,a0
   1dc60:	00058463          	beqz	a1,1dc68 <cleanup_glue+0x24>
   1dc64:	fe1ff0ef          	jal	ra,1dc44 <cleanup_glue>
   1dc68:	00040593          	mv	a1,s0
   1dc6c:	01013403          	ld	s0,16(sp)
   1dc70:	01813083          	ld	ra,24(sp)
   1dc74:	00048513          	mv	a0,s1
   1dc78:	00813483          	ld	s1,8(sp)
   1dc7c:	02010113          	addi	sp,sp,32
   1dc80:	c39f506f          	j	138b8 <_free_r>

000000000001dc84 <_reclaim_reent>:
   1dc84:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1dc88:	0007b783          	ld	a5,0(a5)
   1dc8c:	10a78263          	beq	a5,a0,1dd90 <_reclaim_reent+0x10c>
   1dc90:	07853703          	ld	a4,120(a0)
   1dc94:	fd010113          	addi	sp,sp,-48
   1dc98:	00913c23          	sd	s1,24(sp)
   1dc9c:	02113423          	sd	ra,40(sp)
   1dca0:	02813023          	sd	s0,32(sp)
   1dca4:	01213823          	sd	s2,16(sp)
   1dca8:	01313423          	sd	s3,8(sp)
   1dcac:	00050493          	mv	s1,a0
   1dcb0:	04070263          	beqz	a4,1dcf4 <_reclaim_reent+0x70>
   1dcb4:	00000913          	li	s2,0
   1dcb8:	20000993          	li	s3,512
   1dcbc:	012707b3          	add	a5,a4,s2
   1dcc0:	0007b583          	ld	a1,0(a5)
   1dcc4:	00058e63          	beqz	a1,1dce0 <_reclaim_reent+0x5c>
   1dcc8:	0005b403          	ld	s0,0(a1)
   1dccc:	00048513          	mv	a0,s1
   1dcd0:	be9f50ef          	jal	ra,138b8 <_free_r>
   1dcd4:	00040593          	mv	a1,s0
   1dcd8:	fe0418e3          	bnez	s0,1dcc8 <_reclaim_reent+0x44>
   1dcdc:	0784b703          	ld	a4,120(s1)
   1dce0:	00890913          	addi	s2,s2,8
   1dce4:	fd391ce3          	bne	s2,s3,1dcbc <_reclaim_reent+0x38>
   1dce8:	00070593          	mv	a1,a4
   1dcec:	00048513          	mv	a0,s1
   1dcf0:	bc9f50ef          	jal	ra,138b8 <_free_r>
   1dcf4:	0604b583          	ld	a1,96(s1)
   1dcf8:	00058663          	beqz	a1,1dd04 <_reclaim_reent+0x80>
   1dcfc:	00048513          	mv	a0,s1
   1dd00:	bb9f50ef          	jal	ra,138b8 <_free_r>
   1dd04:	1f84b583          	ld	a1,504(s1)
   1dd08:	02058063          	beqz	a1,1dd28 <_reclaim_reent+0xa4>
   1dd0c:	20048913          	addi	s2,s1,512
   1dd10:	01258c63          	beq	a1,s2,1dd28 <_reclaim_reent+0xa4>
   1dd14:	0005b403          	ld	s0,0(a1)
   1dd18:	00048513          	mv	a0,s1
   1dd1c:	b9df50ef          	jal	ra,138b8 <_free_r>
   1dd20:	00040593          	mv	a1,s0
   1dd24:	fe8918e3          	bne	s2,s0,1dd14 <_reclaim_reent+0x90>
   1dd28:	0884b583          	ld	a1,136(s1)
   1dd2c:	00058663          	beqz	a1,1dd38 <_reclaim_reent+0xb4>
   1dd30:	00048513          	mv	a0,s1
   1dd34:	b85f50ef          	jal	ra,138b8 <_free_r>
   1dd38:	0504a783          	lw	a5,80(s1)
   1dd3c:	02078c63          	beqz	a5,1dd74 <_reclaim_reent+0xf0>
   1dd40:	0584b783          	ld	a5,88(s1)
   1dd44:	00048513          	mv	a0,s1
   1dd48:	000780e7          	jalr	a5
   1dd4c:	5204b583          	ld	a1,1312(s1)
   1dd50:	02058263          	beqz	a1,1dd74 <_reclaim_reent+0xf0>
   1dd54:	02013403          	ld	s0,32(sp)
   1dd58:	02813083          	ld	ra,40(sp)
   1dd5c:	01013903          	ld	s2,16(sp)
   1dd60:	00813983          	ld	s3,8(sp)
   1dd64:	00048513          	mv	a0,s1
   1dd68:	01813483          	ld	s1,24(sp)
   1dd6c:	03010113          	addi	sp,sp,48
   1dd70:	ed5ff06f          	j	1dc44 <cleanup_glue>
   1dd74:	02813083          	ld	ra,40(sp)
   1dd78:	02013403          	ld	s0,32(sp)
   1dd7c:	01813483          	ld	s1,24(sp)
   1dd80:	01013903          	ld	s2,16(sp)
   1dd84:	00813983          	ld	s3,8(sp)
   1dd88:	03010113          	addi	sp,sp,48
   1dd8c:	00008067          	ret
   1dd90:	00008067          	ret

000000000001dd94 <__ssprint_r>:
   1dd94:	01063783          	ld	a5,16(a2)
   1dd98:	fb010113          	addi	sp,sp,-80
   1dd9c:	03413023          	sd	s4,32(sp)
   1dda0:	04113423          	sd	ra,72(sp)
   1dda4:	04813023          	sd	s0,64(sp)
   1dda8:	02913c23          	sd	s1,56(sp)
   1ddac:	03213823          	sd	s2,48(sp)
   1ddb0:	03313423          	sd	s3,40(sp)
   1ddb4:	01513c23          	sd	s5,24(sp)
   1ddb8:	01613823          	sd	s6,16(sp)
   1ddbc:	01713423          	sd	s7,8(sp)
   1ddc0:	01813023          	sd	s8,0(sp)
   1ddc4:	00060a13          	mv	s4,a2
   1ddc8:	10078c63          	beqz	a5,1dee0 <__ssprint_r+0x14c>
   1ddcc:	00050a93          	mv	s5,a0
   1ddd0:	00063983          	ld	s3,0(a2)
   1ddd4:	0005b503          	ld	a0,0(a1)
   1ddd8:	00c5a403          	lw	s0,12(a1)
   1dddc:	00058913          	mv	s2,a1
   1dde0:	00000b13          	li	s6,0
   1dde4:	00000493          	li	s1,0
   1dde8:	12048863          	beqz	s1,1df18 <__ssprint_r+0x184>
   1ddec:	00040c13          	mv	s8,s0
   1ddf0:	0004879b          	sext.w	a5,s1
   1ddf4:	1284ea63          	bltu	s1,s0,1df28 <__ssprint_r+0x194>
   1ddf8:	01095783          	lhu	a5,16(s2)
   1ddfc:	00048b9b          	sext.w	s7,s1
   1de00:	4807f713          	andi	a4,a5,1152
   1de04:	0a070063          	beqz	a4,1dea4 <__ssprint_r+0x110>
   1de08:	02092683          	lw	a3,32(s2)
   1de0c:	01893583          	ld	a1,24(s2)
   1de10:	00148713          	addi	a4,s1,1
   1de14:	0016941b          	slliw	s0,a3,0x1
   1de18:	00d406bb          	addw	a3,s0,a3
   1de1c:	40b50533          	sub	a0,a0,a1
   1de20:	01f6d41b          	srliw	s0,a3,0x1f
   1de24:	00050b9b          	sext.w	s7,a0
   1de28:	00d4043b          	addw	s0,s0,a3
   1de2c:	4014541b          	sraiw	s0,s0,0x1
   1de30:	01770733          	add	a4,a4,s7
   1de34:	00e47663          	bgeu	s0,a4,1de40 <__ssprint_r+0xac>
   1de38:	0014841b          	addiw	s0,s1,1
   1de3c:	00a4043b          	addw	s0,s0,a0
   1de40:	4007f793          	andi	a5,a5,1024
   1de44:	0e078a63          	beqz	a5,1df38 <__ssprint_r+0x1a4>
   1de48:	00040593          	mv	a1,s0
   1de4c:	000a8513          	mv	a0,s5
   1de50:	dc1f80ef          	jal	ra,16c10 <_malloc_r>
   1de54:	00050c13          	mv	s8,a0
   1de58:	10050063          	beqz	a0,1df58 <__ssprint_r+0x1c4>
   1de5c:	01893583          	ld	a1,24(s2)
   1de60:	000b8613          	mv	a2,s7
   1de64:	db8ff0ef          	jal	ra,1d41c <memcpy>
   1de68:	01095783          	lhu	a5,16(s2)
   1de6c:	b7f7f793          	andi	a5,a5,-1153
   1de70:	0807e793          	ori	a5,a5,128
   1de74:	00f91823          	sh	a5,16(s2)
   1de78:	017c0533          	add	a0,s8,s7
   1de7c:	41740bbb          	subw	s7,s0,s7
   1de80:	0004879b          	sext.w	a5,s1
   1de84:	01893c23          	sd	s8,24(s2)
   1de88:	02892023          	sw	s0,32(s2)
   1de8c:	01792623          	sw	s7,12(s2)
   1de90:	00a93023          	sd	a0,0(s2)
   1de94:	00078413          	mv	s0,a5
   1de98:	00078c13          	mv	s8,a5
   1de9c:	00078b93          	mv	s7,a5
   1dea0:	08f4e463          	bltu	s1,a5,1df28 <__ssprint_r+0x194>
   1dea4:	00040613          	mv	a2,s0
   1dea8:	000b0593          	mv	a1,s6
   1deac:	e8cff0ef          	jal	ra,1d538 <memmove>
   1deb0:	00c92703          	lw	a4,12(s2)
   1deb4:	00093503          	ld	a0,0(s2)
   1deb8:	010a3783          	ld	a5,16(s4)
   1debc:	4087043b          	subw	s0,a4,s0
   1dec0:	01850533          	add	a0,a0,s8
   1dec4:	00892623          	sw	s0,12(s2)
   1dec8:	00a93023          	sd	a0,0(s2)
   1decc:	417787b3          	sub	a5,a5,s7
   1ded0:	00fa3823          	sd	a5,16(s4)
   1ded4:	017b0b33          	add	s6,s6,s7
   1ded8:	417484b3          	sub	s1,s1,s7
   1dedc:	f00796e3          	bnez	a5,1dde8 <__ssprint_r+0x54>
   1dee0:	000a2423          	sw	zero,8(s4)
   1dee4:	00000513          	li	a0,0
   1dee8:	04813083          	ld	ra,72(sp)
   1deec:	04013403          	ld	s0,64(sp)
   1def0:	03813483          	ld	s1,56(sp)
   1def4:	03013903          	ld	s2,48(sp)
   1def8:	02813983          	ld	s3,40(sp)
   1defc:	02013a03          	ld	s4,32(sp)
   1df00:	01813a83          	ld	s5,24(sp)
   1df04:	01013b03          	ld	s6,16(sp)
   1df08:	00813b83          	ld	s7,8(sp)
   1df0c:	00013c03          	ld	s8,0(sp)
   1df10:	05010113          	addi	sp,sp,80
   1df14:	00008067          	ret
   1df18:	0009bb03          	ld	s6,0(s3)
   1df1c:	0089b483          	ld	s1,8(s3)
   1df20:	01098993          	addi	s3,s3,16
   1df24:	ec5ff06f          	j	1dde8 <__ssprint_r+0x54>
   1df28:	00078413          	mv	s0,a5
   1df2c:	00078c13          	mv	s8,a5
   1df30:	00078b93          	mv	s7,a5
   1df34:	f71ff06f          	j	1dea4 <__ssprint_r+0x110>
   1df38:	00040613          	mv	a2,s0
   1df3c:	000a8513          	mv	a0,s5
   1df40:	f80ff0ef          	jal	ra,1d6c0 <_realloc_r>
   1df44:	00050c13          	mv	s8,a0
   1df48:	f20518e3          	bnez	a0,1de78 <__ssprint_r+0xe4>
   1df4c:	01893583          	ld	a1,24(s2)
   1df50:	000a8513          	mv	a0,s5
   1df54:	965f50ef          	jal	ra,138b8 <_free_r>
   1df58:	00c00793          	li	a5,12
   1df5c:	00faa023          	sw	a5,0(s5)
   1df60:	01095783          	lhu	a5,16(s2)
   1df64:	fff00513          	li	a0,-1
   1df68:	0407e793          	ori	a5,a5,64
   1df6c:	00f91823          	sh	a5,16(s2)
   1df70:	000a3823          	sd	zero,16(s4)
   1df74:	000a2423          	sw	zero,8(s4)
   1df78:	f71ff06f          	j	1dee8 <__ssprint_r+0x154>

000000000001df7c <_svfiprintf_r>:
   1df7c:	0105d783          	lhu	a5,16(a1)
   1df80:	e3010113          	addi	sp,sp,-464
   1df84:	1b213823          	sd	s2,432(sp)
   1df88:	1b313423          	sd	s3,424(sp)
   1df8c:	19713423          	sd	s7,392(sp)
   1df90:	1c113423          	sd	ra,456(sp)
   1df94:	1c813023          	sd	s0,448(sp)
   1df98:	1a913c23          	sd	s1,440(sp)
   1df9c:	1b413023          	sd	s4,416(sp)
   1dfa0:	19513c23          	sd	s5,408(sp)
   1dfa4:	19613823          	sd	s6,400(sp)
   1dfa8:	19813023          	sd	s8,384(sp)
   1dfac:	17913c23          	sd	s9,376(sp)
   1dfb0:	17a13823          	sd	s10,368(sp)
   1dfb4:	17b13423          	sd	s11,360(sp)
   1dfb8:	0807f793          	andi	a5,a5,128
   1dfbc:	00d13823          	sd	a3,16(sp)
   1dfc0:	00058913          	mv	s2,a1
   1dfc4:	00050993          	mv	s3,a0
   1dfc8:	00060b93          	mv	s7,a2
   1dfcc:	00078663          	beqz	a5,1dfd8 <_svfiprintf_r+0x5c>
   1dfd0:	0185b783          	ld	a5,24(a1)
   1dfd4:	4e078ce3          	beqz	a5,1eccc <_svfiprintf_r+0xd50>
   1dfd8:	ffff87b7          	lui	a5,0xffff8
   1dfdc:	0e010493          	addi	s1,sp,224
   1dfe0:	8307c793          	xori	a5,a5,-2000
   1dfe4:	000b8c13          	mv	s8,s7
   1dfe8:	06913023          	sd	s1,96(sp)
   1dfec:	06013823          	sd	zero,112(sp)
   1dff0:	06012423          	sw	zero,104(sp)
   1dff4:	00013c23          	sd	zero,24(sp)
   1dff8:	02013423          	sd	zero,40(sp)
   1dffc:	02013c23          	sd	zero,56(sp)
   1e000:	02013823          	sd	zero,48(sp)
   1e004:	00013023          	sd	zero,0(sp)
   1e008:	00004a17          	auipc	s4,0x4
   1e00c:	c40a0a13          	addi	s4,s4,-960 # 21c48 <_ctype_+0x108>
   1e010:	04f13023          	sd	a5,64(sp)
   1e014:	00048b93          	mv	s7,s1
   1e018:	000c4783          	lbu	a5,0(s8)
   1e01c:	0e078e63          	beqz	a5,1e118 <_svfiprintf_r+0x19c>
   1e020:	02500713          	li	a4,37
   1e024:	46e780e3          	beq	a5,a4,1ec84 <_svfiprintf_r+0xd08>
   1e028:	000c0413          	mv	s0,s8
   1e02c:	00c0006f          	j	1e038 <_svfiprintf_r+0xbc>
   1e030:	0ce78063          	beq	a5,a4,1e0f0 <_svfiprintf_r+0x174>
   1e034:	000c8413          	mv	s0,s9
   1e038:	00144783          	lbu	a5,1(s0)
   1e03c:	00140c93          	addi	s9,s0,1
   1e040:	fe0798e3          	bnez	a5,1e030 <_svfiprintf_r+0xb4>
   1e044:	418c8d3b          	subw	s10,s9,s8
   1e048:	0c0d0863          	beqz	s10,1e118 <_svfiprintf_r+0x19c>
   1e04c:	07013703          	ld	a4,112(sp)
   1e050:	06812783          	lw	a5,104(sp)
   1e054:	018bb023          	sd	s8,0(s7)
   1e058:	01a70733          	add	a4,a4,s10
   1e05c:	0017879b          	addiw	a5,a5,1
   1e060:	01abb423          	sd	s10,8(s7)
   1e064:	06e13823          	sd	a4,112(sp)
   1e068:	06f12423          	sw	a5,104(sp)
   1e06c:	0007871b          	sext.w	a4,a5
   1e070:	00700793          	li	a5,7
   1e074:	010b8b93          	addi	s7,s7,16
   1e078:	08e7c263          	blt	a5,a4,1e0fc <_svfiprintf_r+0x180>
   1e07c:	00013703          	ld	a4,0(sp)
   1e080:	00144783          	lbu	a5,1(s0)
   1e084:	00ed073b          	addw	a4,s10,a4
   1e088:	00e13023          	sd	a4,0(sp)
   1e08c:	08078663          	beqz	a5,1e118 <_svfiprintf_r+0x19c>
   1e090:	001c8c13          	addi	s8,s9,1
   1e094:	001cc703          	lbu	a4,1(s9)
   1e098:	04010ba3          	sb	zero,87(sp)
   1e09c:	fff00a93          	li	s5,-1
   1e0a0:	00000413          	li	s0,0
   1e0a4:	00000b13          	li	s6,0
   1e0a8:	00900c93          	li	s9,9
   1e0ac:	02a00d13          	li	s10,42
   1e0b0:	001c0c13          	addi	s8,s8,1
   1e0b4:	0007071b          	sext.w	a4,a4
   1e0b8:	05a00613          	li	a2,90
   1e0bc:	fe07079b          	addiw	a5,a4,-32
   1e0c0:	0007869b          	sext.w	a3,a5
   1e0c4:	1ad66063          	bltu	a2,a3,1e264 <_svfiprintf_r+0x2e8>
   1e0c8:	02079793          	slli	a5,a5,0x20
   1e0cc:	01e7d793          	srli	a5,a5,0x1e
   1e0d0:	014787b3          	add	a5,a5,s4
   1e0d4:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   1e0d8:	014787b3          	add	a5,a5,s4
   1e0dc:	00078067          	jr	a5
   1e0e0:	010b6b13          	ori	s6,s6,16
   1e0e4:	000b0b1b          	sext.w	s6,s6
   1e0e8:	000c4703          	lbu	a4,0(s8)
   1e0ec:	fc5ff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e0f0:	418c8d3b          	subw	s10,s9,s8
   1e0f4:	f80d0ee3          	beqz	s10,1e090 <_svfiprintf_r+0x114>
   1e0f8:	f55ff06f          	j	1e04c <_svfiprintf_r+0xd0>
   1e0fc:	06010613          	addi	a2,sp,96
   1e100:	00090593          	mv	a1,s2
   1e104:	00098513          	mv	a0,s3
   1e108:	c8dff0ef          	jal	ra,1dd94 <__ssprint_r>
   1e10c:	02051263          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1e110:	00048b93          	mv	s7,s1
   1e114:	f69ff06f          	j	1e07c <_svfiprintf_r+0x100>
   1e118:	07013783          	ld	a5,112(sp)
   1e11c:	00078a63          	beqz	a5,1e130 <_svfiprintf_r+0x1b4>
   1e120:	06010613          	addi	a2,sp,96
   1e124:	00090593          	mv	a1,s2
   1e128:	00098513          	mv	a0,s3
   1e12c:	c69ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1e130:	01095783          	lhu	a5,16(s2)
   1e134:	0407f793          	andi	a5,a5,64
   1e138:	620796e3          	bnez	a5,1ef64 <_svfiprintf_r+0xfe8>
   1e13c:	1c813083          	ld	ra,456(sp)
   1e140:	1c013403          	ld	s0,448(sp)
   1e144:	00013503          	ld	a0,0(sp)
   1e148:	1b813483          	ld	s1,440(sp)
   1e14c:	1b013903          	ld	s2,432(sp)
   1e150:	1a813983          	ld	s3,424(sp)
   1e154:	1a013a03          	ld	s4,416(sp)
   1e158:	19813a83          	ld	s5,408(sp)
   1e15c:	19013b03          	ld	s6,400(sp)
   1e160:	18813b83          	ld	s7,392(sp)
   1e164:	18013c03          	ld	s8,384(sp)
   1e168:	17813c83          	ld	s9,376(sp)
   1e16c:	17013d03          	ld	s10,368(sp)
   1e170:	16813d83          	ld	s11,360(sp)
   1e174:	1d010113          	addi	sp,sp,464
   1e178:	00008067          	ret
   1e17c:	01013683          	ld	a3,16(sp)
   1e180:	00003797          	auipc	a5,0x3
   1e184:	29878793          	addi	a5,a5,664 # 21418 <zeroes.4539+0x78>
   1e188:	00f13c23          	sd	a5,24(sp)
   1e18c:	020b7793          	andi	a5,s6,32
   1e190:	00868613          	addi	a2,a3,8
   1e194:	4e078463          	beqz	a5,1e67c <_svfiprintf_r+0x700>
   1e198:	0006bd83          	ld	s11,0(a3)
   1e19c:	001b7793          	andi	a5,s6,1
   1e1a0:	00078e63          	beqz	a5,1e1bc <_svfiprintf_r+0x240>
   1e1a4:	000d8c63          	beqz	s11,1e1bc <_svfiprintf_r+0x240>
   1e1a8:	002b6893          	ori	a7,s6,2
   1e1ac:	03000793          	li	a5,48
   1e1b0:	04f10c23          	sb	a5,88(sp)
   1e1b4:	04e10ca3          	sb	a4,89(sp)
   1e1b8:	00088b1b          	sext.w	s6,a7
   1e1bc:	bffb7893          	andi	a7,s6,-1025
   1e1c0:	00088c9b          	sext.w	s9,a7
   1e1c4:	00c13823          	sd	a2,16(sp)
   1e1c8:	00200793          	li	a5,2
   1e1cc:	04010ba3          	sb	zero,87(sp)
   1e1d0:	fff00713          	li	a4,-1
   1e1d4:	52ea8a63          	beq	s5,a4,1e708 <_svfiprintf_r+0x78c>
   1e1d8:	f7fcf893          	andi	a7,s9,-129
   1e1dc:	00088b1b          	sext.w	s6,a7
   1e1e0:	020d96e3          	bnez	s11,1ea0c <_svfiprintf_r+0xa90>
   1e1e4:	600a9663          	bnez	s5,1e7f0 <_svfiprintf_r+0x874>
   1e1e8:	260790e3          	bnez	a5,1ec48 <_svfiprintf_r+0xccc>
   1e1ec:	001cf793          	andi	a5,s9,1
   1e1f0:	00f13423          	sd	a5,8(sp)
   1e1f4:	0dc10d13          	addi	s10,sp,220
   1e1f8:	00078863          	beqz	a5,1e208 <_svfiprintf_r+0x28c>
   1e1fc:	03000793          	li	a5,48
   1e200:	0cf10da3          	sb	a5,219(sp)
   1e204:	0db10d13          	addi	s10,sp,219
   1e208:	00813703          	ld	a4,8(sp)
   1e20c:	000a8793          	mv	a5,s5
   1e210:	00ead463          	bge	s5,a4,1e218 <_svfiprintf_r+0x29c>
   1e214:	00070793          	mv	a5,a4
   1e218:	05714703          	lbu	a4,87(sp)
   1e21c:	00078c9b          	sext.w	s9,a5
   1e220:	06070263          	beqz	a4,1e284 <_svfiprintf_r+0x308>
   1e224:	00178c9b          	addiw	s9,a5,1
   1e228:	05c0006f          	j	1e284 <_svfiprintf_r+0x308>
   1e22c:	00000413          	li	s0,0
   1e230:	001c0c13          	addi	s8,s8,1
   1e234:	fffc4683          	lbu	a3,-1(s8)
   1e238:	0024179b          	slliw	a5,s0,0x2
   1e23c:	0087843b          	addw	s0,a5,s0
   1e240:	fd07071b          	addiw	a4,a4,-48
   1e244:	0014141b          	slliw	s0,s0,0x1
   1e248:	fd06879b          	addiw	a5,a3,-48
   1e24c:	0087043b          	addw	s0,a4,s0
   1e250:	0006871b          	sext.w	a4,a3
   1e254:	fcfcfee3          	bgeu	s9,a5,1e230 <_svfiprintf_r+0x2b4>
   1e258:	fe07079b          	addiw	a5,a4,-32
   1e25c:	0007869b          	sext.w	a3,a5
   1e260:	e6d674e3          	bgeu	a2,a3,1e0c8 <_svfiprintf_r+0x14c>
   1e264:	ea070ae3          	beqz	a4,1e118 <_svfiprintf_r+0x19c>
   1e268:	00100793          	li	a5,1
   1e26c:	06e10c23          	sb	a4,120(sp)
   1e270:	04010ba3          	sb	zero,87(sp)
   1e274:	00100c93          	li	s9,1
   1e278:	00f13423          	sd	a5,8(sp)
   1e27c:	07810d13          	addi	s10,sp,120
   1e280:	00000a93          	li	s5,0
   1e284:	002b7e93          	andi	t4,s6,2
   1e288:	000e8e9b          	sext.w	t4,t4
   1e28c:	000e8463          	beqz	t4,1e294 <_svfiprintf_r+0x318>
   1e290:	002c8c9b          	addiw	s9,s9,2
   1e294:	084b7f13          	andi	t5,s6,132
   1e298:	07013783          	ld	a5,112(sp)
   1e29c:	06812603          	lw	a2,104(sp)
   1e2a0:	000f1663          	bnez	t5,1e2ac <_svfiprintf_r+0x330>
   1e2a4:	41940dbb          	subw	s11,s0,s9
   1e2a8:	77b04663          	bgtz	s11,1ea14 <_svfiprintf_r+0xa98>
   1e2ac:	05714e03          	lbu	t3,87(sp)
   1e2b0:	0016059b          	addiw	a1,a2,1
   1e2b4:	010b8713          	addi	a4,s7,16
   1e2b8:	040e0063          	beqz	t3,1e2f8 <_svfiprintf_r+0x37c>
   1e2bc:	05710e13          	addi	t3,sp,87
   1e2c0:	00178793          	addi	a5,a5,1
   1e2c4:	01cbb023          	sd	t3,0(s7)
   1e2c8:	00100e13          	li	t3,1
   1e2cc:	01cbb423          	sd	t3,8(s7)
   1e2d0:	06f13823          	sd	a5,112(sp)
   1e2d4:	06b12423          	sw	a1,104(sp)
   1e2d8:	00700513          	li	a0,7
   1e2dc:	04b542e3          	blt	a0,a1,1eb20 <_svfiprintf_r+0xba4>
   1e2e0:	00260e1b          	addiw	t3,a2,2
   1e2e4:	020b8513          	addi	a0,s7,32
   1e2e8:	00058613          	mv	a2,a1
   1e2ec:	00070b93          	mv	s7,a4
   1e2f0:	000e0593          	mv	a1,t3
   1e2f4:	00050713          	mv	a4,a0
   1e2f8:	020e8c63          	beqz	t4,1e330 <_svfiprintf_r+0x3b4>
   1e2fc:	05810613          	addi	a2,sp,88
   1e300:	00278793          	addi	a5,a5,2
   1e304:	00cbb023          	sd	a2,0(s7)
   1e308:	00200613          	li	a2,2
   1e30c:	00cbb423          	sd	a2,8(s7)
   1e310:	06f13823          	sd	a5,112(sp)
   1e314:	06b12423          	sw	a1,104(sp)
   1e318:	00700613          	li	a2,7
   1e31c:	04b640e3          	blt	a2,a1,1eb5c <_svfiprintf_r+0xbe0>
   1e320:	00058613          	mv	a2,a1
   1e324:	00070b93          	mv	s7,a4
   1e328:	0015859b          	addiw	a1,a1,1
   1e32c:	01070713          	addi	a4,a4,16
   1e330:	08000513          	li	a0,128
   1e334:	50af0463          	beq	t5,a0,1e83c <_svfiprintf_r+0x8c0>
   1e338:	00813683          	ld	a3,8(sp)
   1e33c:	40da8abb          	subw	s5,s5,a3
   1e340:	5d504263          	bgtz	s5,1e904 <_svfiprintf_r+0x988>
   1e344:	00813683          	ld	a3,8(sp)
   1e348:	01abb023          	sd	s10,0(s7)
   1e34c:	06b12423          	sw	a1,104(sp)
   1e350:	00f687b3          	add	a5,a3,a5
   1e354:	00dbb423          	sd	a3,8(s7)
   1e358:	06f13823          	sd	a5,112(sp)
   1e35c:	00700613          	li	a2,7
   1e360:	66b64a63          	blt	a2,a1,1e9d4 <_svfiprintf_r+0xa58>
   1e364:	004b7893          	andi	a7,s6,4
   1e368:	00088663          	beqz	a7,1e374 <_svfiprintf_r+0x3f8>
   1e36c:	41940bbb          	subw	s7,s0,s9
   1e370:	037040e3          	bgtz	s7,1eb90 <_svfiprintf_r+0xc14>
   1e374:	00040713          	mv	a4,s0
   1e378:	01945463          	bge	s0,s9,1e380 <_svfiprintf_r+0x404>
   1e37c:	000c8713          	mv	a4,s9
   1e380:	00013683          	ld	a3,0(sp)
   1e384:	00d7073b          	addw	a4,a4,a3
   1e388:	00e13023          	sd	a4,0(sp)
   1e38c:	66079463          	bnez	a5,1e9f4 <_svfiprintf_r+0xa78>
   1e390:	06012423          	sw	zero,104(sp)
   1e394:	00048b93          	mv	s7,s1
   1e398:	c81ff06f          	j	1e018 <_svfiprintf_r+0x9c>
   1e39c:	01013703          	ld	a4,16(sp)
   1e3a0:	04010ba3          	sb	zero,87(sp)
   1e3a4:	00100c93          	li	s9,1
   1e3a8:	00072783          	lw	a5,0(a4)
   1e3ac:	00870713          	addi	a4,a4,8
   1e3b0:	00e13823          	sd	a4,16(sp)
   1e3b4:	06f10c23          	sb	a5,120(sp)
   1e3b8:	00100793          	li	a5,1
   1e3bc:	00f13423          	sd	a5,8(sp)
   1e3c0:	07810d13          	addi	s10,sp,120
   1e3c4:	ebdff06f          	j	1e280 <_svfiprintf_r+0x304>
   1e3c8:	001b6b13          	ori	s6,s6,1
   1e3cc:	000b0b1b          	sext.w	s6,s6
   1e3d0:	000c4703          	lbu	a4,0(s8)
   1e3d4:	cddff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e3d8:	000c4703          	lbu	a4,0(s8)
   1e3dc:	004b6b13          	ori	s6,s6,4
   1e3e0:	000b0b1b          	sext.w	s6,s6
   1e3e4:	ccdff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e3e8:	02b00793          	li	a5,43
   1e3ec:	04f10ba3          	sb	a5,87(sp)
   1e3f0:	000c4703          	lbu	a4,0(s8)
   1e3f4:	cbdff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e3f8:	01013783          	ld	a5,16(sp)
   1e3fc:	000c4703          	lbu	a4,0(s8)
   1e400:	0007a403          	lw	s0,0(a5)
   1e404:	00878793          	addi	a5,a5,8
   1e408:	00f13823          	sd	a5,16(sp)
   1e40c:	ca0452e3          	bgez	s0,1e0b0 <_svfiprintf_r+0x134>
   1e410:	4080043b          	negw	s0,s0
   1e414:	fc9ff06f          	j	1e3dc <_svfiprintf_r+0x460>
   1e418:	00098513          	mv	a0,s3
   1e41c:	d5cf80ef          	jal	ra,16978 <_localeconv_r>
   1e420:	00853783          	ld	a5,8(a0)
   1e424:	00078513          	mv	a0,a5
   1e428:	02f13823          	sd	a5,48(sp)
   1e42c:	885fa0ef          	jal	ra,18cb0 <strlen>
   1e430:	02a13c23          	sd	a0,56(sp)
   1e434:	00050d93          	mv	s11,a0
   1e438:	00098513          	mv	a0,s3
   1e43c:	d3cf80ef          	jal	ra,16978 <_localeconv_r>
   1e440:	01053783          	ld	a5,16(a0)
   1e444:	000c4703          	lbu	a4,0(s8)
   1e448:	02f13423          	sd	a5,40(sp)
   1e44c:	c60d82e3          	beqz	s11,1e0b0 <_svfiprintf_r+0x134>
   1e450:	c60780e3          	beqz	a5,1e0b0 <_svfiprintf_r+0x134>
   1e454:	0007c783          	lbu	a5,0(a5)
   1e458:	c4078ce3          	beqz	a5,1e0b0 <_svfiprintf_r+0x134>
   1e45c:	400b6b13          	ori	s6,s6,1024
   1e460:	000b0b1b          	sext.w	s6,s6
   1e464:	c4dff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e468:	080b6b13          	ori	s6,s6,128
   1e46c:	000b0b1b          	sext.w	s6,s6
   1e470:	000c4703          	lbu	a4,0(s8)
   1e474:	c3dff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e478:	000c4703          	lbu	a4,0(s8)
   1e47c:	001c0793          	addi	a5,s8,1
   1e480:	2fa708e3          	beq	a4,s10,1ef70 <_svfiprintf_r+0xff4>
   1e484:	fd07069b          	addiw	a3,a4,-48
   1e488:	00078c13          	mv	s8,a5
   1e48c:	00000a93          	li	s5,0
   1e490:	c2dce6e3          	bltu	s9,a3,1e0bc <_svfiprintf_r+0x140>
   1e494:	001c0c13          	addi	s8,s8,1
   1e498:	002a979b          	slliw	a5,s5,0x2
   1e49c:	fffc4703          	lbu	a4,-1(s8)
   1e4a0:	01578abb          	addw	s5,a5,s5
   1e4a4:	001a9a9b          	slliw	s5,s5,0x1
   1e4a8:	00da8abb          	addw	s5,s5,a3
   1e4ac:	fd07069b          	addiw	a3,a4,-48
   1e4b0:	fedcf2e3          	bgeu	s9,a3,1e494 <_svfiprintf_r+0x518>
   1e4b4:	c09ff06f          	j	1e0bc <_svfiprintf_r+0x140>
   1e4b8:	01013783          	ld	a5,16(sp)
   1e4bc:	010b6e93          	ori	t4,s6,16
   1e4c0:	000e8c9b          	sext.w	s9,t4
   1e4c4:	00878713          	addi	a4,a5,8
   1e4c8:	01013783          	ld	a5,16(sp)
   1e4cc:	0007bd83          	ld	s11,0(a5)
   1e4d0:	00100793          	li	a5,1
   1e4d4:	00e13823          	sd	a4,16(sp)
   1e4d8:	cf5ff06f          	j	1e1cc <_svfiprintf_r+0x250>
   1e4dc:	01013783          	ld	a5,16(sp)
   1e4e0:	04010ba3          	sb	zero,87(sp)
   1e4e4:	0007bd03          	ld	s10,0(a5)
   1e4e8:	00878d93          	addi	s11,a5,8
   1e4ec:	140d04e3          	beqz	s10,1ee34 <_svfiprintf_r+0xeb8>
   1e4f0:	fff00793          	li	a5,-1
   1e4f4:	7afa8e63          	beq	s5,a5,1ecb0 <_svfiprintf_r+0xd34>
   1e4f8:	000a8613          	mv	a2,s5
   1e4fc:	00000593          	li	a1,0
   1e500:	000d0513          	mv	a0,s10
   1e504:	fd9f80ef          	jal	ra,174dc <memchr>
   1e508:	220508e3          	beqz	a0,1ef38 <_svfiprintf_r+0xfbc>
   1e50c:	41a507bb          	subw	a5,a0,s10
   1e510:	00f13423          	sd	a5,8(sp)
   1e514:	01b13823          	sd	s11,16(sp)
   1e518:	00000a93          	li	s5,0
   1e51c:	cedff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1e520:	010b6793          	ori	a5,s6,16
   1e524:	0007889b          	sext.w	a7,a5
   1e528:	01013783          	ld	a5,16(sp)
   1e52c:	00878793          	addi	a5,a5,8
   1e530:	01013703          	ld	a4,16(sp)
   1e534:	00073d83          	ld	s11,0(a4)
   1e538:	00f13823          	sd	a5,16(sp)
   1e53c:	bff8f893          	andi	a7,a7,-1025
   1e540:	00088c9b          	sext.w	s9,a7
   1e544:	00000793          	li	a5,0
   1e548:	c85ff06f          	j	1e1cc <_svfiprintf_r+0x250>
   1e54c:	01013783          	ld	a5,16(sp)
   1e550:	010b6e93          	ori	t4,s6,16
   1e554:	000e8c9b          	sext.w	s9,t4
   1e558:	00878713          	addi	a4,a5,8
   1e55c:	01013783          	ld	a5,16(sp)
   1e560:	0007b783          	ld	a5,0(a5)
   1e564:	00e13823          	sd	a4,16(sp)
   1e568:	00078d93          	mv	s11,a5
   1e56c:	1807c263          	bltz	a5,1e6f0 <_svfiprintf_r+0x774>
   1e570:	fff00793          	li	a5,-1
   1e574:	00fa8a63          	beq	s5,a5,1e588 <_svfiprintf_r+0x60c>
   1e578:	f7fcf893          	andi	a7,s9,-129
   1e57c:	00088b1b          	sext.w	s6,a7
   1e580:	6c0d8263          	beqz	s11,1ec44 <_svfiprintf_r+0xcc8>
   1e584:	000b0c93          	mv	s9,s6
   1e588:	00900793          	li	a5,9
   1e58c:	77b7e063          	bltu	a5,s11,1ecec <_svfiprintf_r+0xd70>
   1e590:	030d8e1b          	addiw	t3,s11,48
   1e594:	00100793          	li	a5,1
   1e598:	0dc10da3          	sb	t3,219(sp)
   1e59c:	000c8b13          	mv	s6,s9
   1e5a0:	00f13423          	sd	a5,8(sp)
   1e5a4:	0db10d13          	addi	s10,sp,219
   1e5a8:	c61ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1e5ac:	020b6b13          	ori	s6,s6,32
   1e5b0:	000b0b1b          	sext.w	s6,s6
   1e5b4:	000c4703          	lbu	a4,0(s8)
   1e5b8:	af9ff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e5bc:	01013783          	ld	a5,16(sp)
   1e5c0:	04013703          	ld	a4,64(sp)
   1e5c4:	002b6893          	ori	a7,s6,2
   1e5c8:	0007bd83          	ld	s11,0(a5)
   1e5cc:	00878793          	addi	a5,a5,8
   1e5d0:	00f13823          	sd	a5,16(sp)
   1e5d4:	00003797          	auipc	a5,0x3
   1e5d8:	e2c78793          	addi	a5,a5,-468 # 21400 <zeroes.4539+0x60>
   1e5dc:	00f13c23          	sd	a5,24(sp)
   1e5e0:	00088c9b          	sext.w	s9,a7
   1e5e4:	04e11c23          	sh	a4,88(sp)
   1e5e8:	00200793          	li	a5,2
   1e5ec:	be1ff06f          	j	1e1cc <_svfiprintf_r+0x250>
   1e5f0:	01013703          	ld	a4,16(sp)
   1e5f4:	020b7793          	andi	a5,s6,32
   1e5f8:	00870713          	addi	a4,a4,8
   1e5fc:	6a079063          	bnez	a5,1ec9c <_svfiprintf_r+0xd20>
   1e600:	010b7793          	andi	a5,s6,16
   1e604:	68079c63          	bnez	a5,1ec9c <_svfiprintf_r+0xd20>
   1e608:	01013683          	ld	a3,16(sp)
   1e60c:	040b7793          	andi	a5,s6,64
   1e610:	0006ae03          	lw	t3,0(a3)
   1e614:	040788e3          	beqz	a5,1ee64 <_svfiprintf_r+0xee8>
   1e618:	030e1d93          	slli	s11,t3,0x30
   1e61c:	030ddd93          	srli	s11,s11,0x30
   1e620:	00e13823          	sd	a4,16(sp)
   1e624:	000b0c93          	mv	s9,s6
   1e628:	00100793          	li	a5,1
   1e62c:	ba1ff06f          	j	1e1cc <_svfiprintf_r+0x250>
   1e630:	05714783          	lbu	a5,87(sp)
   1e634:	000c4703          	lbu	a4,0(s8)
   1e638:	a6079ce3          	bnez	a5,1e0b0 <_svfiprintf_r+0x134>
   1e63c:	02000793          	li	a5,32
   1e640:	04f10ba3          	sb	a5,87(sp)
   1e644:	a6dff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e648:	000c4703          	lbu	a4,0(s8)
   1e64c:	06c00793          	li	a5,108
   1e650:	7af70263          	beq	a4,a5,1edf4 <_svfiprintf_r+0xe78>
   1e654:	010b6b13          	ori	s6,s6,16
   1e658:	000b0b1b          	sext.w	s6,s6
   1e65c:	a55ff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e660:	01013683          	ld	a3,16(sp)
   1e664:	00003797          	auipc	a5,0x3
   1e668:	d9c78793          	addi	a5,a5,-612 # 21400 <zeroes.4539+0x60>
   1e66c:	00f13c23          	sd	a5,24(sp)
   1e670:	020b7793          	andi	a5,s6,32
   1e674:	00868613          	addi	a2,a3,8
   1e678:	b20790e3          	bnez	a5,1e198 <_svfiprintf_r+0x21c>
   1e67c:	010b7793          	andi	a5,s6,16
   1e680:	62079263          	bnez	a5,1eca4 <_svfiprintf_r+0xd28>
   1e684:	01013683          	ld	a3,16(sp)
   1e688:	040b7793          	andi	a5,s6,64
   1e68c:	0006ae03          	lw	t3,0(a3)
   1e690:	7e078863          	beqz	a5,1ee80 <_svfiprintf_r+0xf04>
   1e694:	030e1d93          	slli	s11,t3,0x30
   1e698:	030ddd93          	srli	s11,s11,0x30
   1e69c:	b01ff06f          	j	1e19c <_svfiprintf_r+0x220>
   1e6a0:	000c4703          	lbu	a4,0(s8)
   1e6a4:	06800793          	li	a5,104
   1e6a8:	72f70c63          	beq	a4,a5,1ede0 <_svfiprintf_r+0xe64>
   1e6ac:	040b6b13          	ori	s6,s6,64
   1e6b0:	000b0b1b          	sext.w	s6,s6
   1e6b4:	9fdff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1e6b8:	01013703          	ld	a4,16(sp)
   1e6bc:	020b7793          	andi	a5,s6,32
   1e6c0:	00870713          	addi	a4,a4,8
   1e6c4:	5c079863          	bnez	a5,1ec94 <_svfiprintf_r+0xd18>
   1e6c8:	010b7793          	andi	a5,s6,16
   1e6cc:	5c079463          	bnez	a5,1ec94 <_svfiprintf_r+0xd18>
   1e6d0:	040b7793          	andi	a5,s6,64
   1e6d4:	7c078e63          	beqz	a5,1eeb0 <_svfiprintf_r+0xf34>
   1e6d8:	01013783          	ld	a5,16(sp)
   1e6dc:	00e13823          	sd	a4,16(sp)
   1e6e0:	000b0c93          	mv	s9,s6
   1e6e4:	00079d83          	lh	s11,0(a5)
   1e6e8:	000d8793          	mv	a5,s11
   1e6ec:	e807d2e3          	bgez	a5,1e570 <_svfiprintf_r+0x5f4>
   1e6f0:	02d00793          	li	a5,45
   1e6f4:	04f10ba3          	sb	a5,87(sp)
   1e6f8:	fff00713          	li	a4,-1
   1e6fc:	41b00db3          	neg	s11,s11
   1e700:	00100793          	li	a5,1
   1e704:	acea9ae3          	bne	s5,a4,1e1d8 <_svfiprintf_r+0x25c>
   1e708:	00100713          	li	a4,1
   1e70c:	e6e78ee3          	beq	a5,a4,1e588 <_svfiprintf_r+0x60c>
   1e710:	00200713          	li	a4,2
   1e714:	0ee78863          	beq	a5,a4,1e804 <_svfiprintf_r+0x888>
   1e718:	0dc10713          	addi	a4,sp,220
   1e71c:	0080006f          	j	1e724 <_svfiprintf_r+0x7a8>
   1e720:	000d0713          	mv	a4,s10
   1e724:	007df793          	andi	a5,s11,7
   1e728:	03078793          	addi	a5,a5,48
   1e72c:	fef70fa3          	sb	a5,-1(a4)
   1e730:	003ddd93          	srli	s11,s11,0x3
   1e734:	fff70d13          	addi	s10,a4,-1
   1e738:	fe0d94e3          	bnez	s11,1e720 <_svfiprintf_r+0x7a4>
   1e73c:	001cf613          	andi	a2,s9,1
   1e740:	0e060463          	beqz	a2,1e828 <_svfiprintf_r+0x8ac>
   1e744:	03000613          	li	a2,48
   1e748:	0ec78063          	beq	a5,a2,1e828 <_svfiprintf_r+0x8ac>
   1e74c:	ffe70713          	addi	a4,a4,-2
   1e750:	0dc10793          	addi	a5,sp,220
   1e754:	40e787bb          	subw	a5,a5,a4
   1e758:	fecd0fa3          	sb	a2,-1(s10)
   1e75c:	00f13423          	sd	a5,8(sp)
   1e760:	000c8b13          	mv	s6,s9
   1e764:	00070d13          	mv	s10,a4
   1e768:	aa1ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1e76c:	01013783          	ld	a5,16(sp)
   1e770:	020b7713          	andi	a4,s6,32
   1e774:	00878793          	addi	a5,a5,8
   1e778:	50071a63          	bnez	a4,1ec8c <_svfiprintf_r+0xd10>
   1e77c:	010b7713          	andi	a4,s6,16
   1e780:	50071663          	bnez	a4,1ec8c <_svfiprintf_r+0xd10>
   1e784:	01013683          	ld	a3,16(sp)
   1e788:	040b7713          	andi	a4,s6,64
   1e78c:	0006ae03          	lw	t3,0(a3)
   1e790:	70070463          	beqz	a4,1ee98 <_svfiprintf_r+0xf1c>
   1e794:	030e1d93          	slli	s11,t3,0x30
   1e798:	030ddd93          	srli	s11,s11,0x30
   1e79c:	000b0893          	mv	a7,s6
   1e7a0:	00f13823          	sd	a5,16(sp)
   1e7a4:	d99ff06f          	j	1e53c <_svfiprintf_r+0x5c0>
   1e7a8:	01013683          	ld	a3,16(sp)
   1e7ac:	020b7793          	andi	a5,s6,32
   1e7b0:	0006b703          	ld	a4,0(a3)
   1e7b4:	00868693          	addi	a3,a3,8
   1e7b8:	00d13823          	sd	a3,16(sp)
   1e7bc:	02079463          	bnez	a5,1e7e4 <_svfiprintf_r+0x868>
   1e7c0:	010b7793          	andi	a5,s6,16
   1e7c4:	02079063          	bnez	a5,1e7e4 <_svfiprintf_r+0x868>
   1e7c8:	040b7793          	andi	a5,s6,64
   1e7cc:	74079c63          	bnez	a5,1ef24 <_svfiprintf_r+0xfa8>
   1e7d0:	200b7893          	andi	a7,s6,512
   1e7d4:	00013783          	ld	a5,0(sp)
   1e7d8:	78088263          	beqz	a7,1ef5c <_svfiprintf_r+0xfe0>
   1e7dc:	00f70023          	sb	a5,0(a4)
   1e7e0:	839ff06f          	j	1e018 <_svfiprintf_r+0x9c>
   1e7e4:	00013783          	ld	a5,0(sp)
   1e7e8:	00f73023          	sd	a5,0(a4)
   1e7ec:	82dff06f          	j	1e018 <_svfiprintf_r+0x9c>
   1e7f0:	00100713          	li	a4,1
   1e7f4:	72e78e63          	beq	a5,a4,1ef30 <_svfiprintf_r+0xfb4>
   1e7f8:	00200713          	li	a4,2
   1e7fc:	000b0c93          	mv	s9,s6
   1e800:	f0e79ce3          	bne	a5,a4,1e718 <_svfiprintf_r+0x79c>
   1e804:	01813703          	ld	a4,24(sp)
   1e808:	0dc10d13          	addi	s10,sp,220
   1e80c:	00fdf793          	andi	a5,s11,15
   1e810:	00f707b3          	add	a5,a4,a5
   1e814:	0007c783          	lbu	a5,0(a5)
   1e818:	fffd0d13          	addi	s10,s10,-1
   1e81c:	004ddd93          	srli	s11,s11,0x4
   1e820:	00fd0023          	sb	a5,0(s10)
   1e824:	fe0d94e3          	bnez	s11,1e80c <_svfiprintf_r+0x890>
   1e828:	0dc10793          	addi	a5,sp,220
   1e82c:	41a787bb          	subw	a5,a5,s10
   1e830:	00f13423          	sd	a5,8(sp)
   1e834:	000c8b13          	mv	s6,s9
   1e838:	9d1ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1e83c:	41940dbb          	subw	s11,s0,s9
   1e840:	afb05ce3          	blez	s11,1e338 <_svfiprintf_r+0x3bc>
   1e844:	01000513          	li	a0,16
   1e848:	71b55063          	bge	a0,s11,1ef48 <_svfiprintf_r+0xfcc>
   1e84c:	00003e17          	auipc	t3,0x3
   1e850:	57ce0e13          	addi	t3,t3,1404 # 21dc8 <zeroes.4501>
   1e854:	02813023          	sd	s0,32(sp)
   1e858:	01000e93          	li	t4,16
   1e85c:	00700f13          	li	t5,7
   1e860:	000e0413          	mv	s0,t3
   1e864:	00c0006f          	j	1e870 <_svfiprintf_r+0x8f4>
   1e868:	ff0d8d9b          	addiw	s11,s11,-16
   1e86c:	05beda63          	bge	t4,s11,1e8c0 <_svfiprintf_r+0x944>
   1e870:	0016061b          	addiw	a2,a2,1
   1e874:	01078793          	addi	a5,a5,16
   1e878:	008bb023          	sd	s0,0(s7)
   1e87c:	01dbb423          	sd	t4,8(s7)
   1e880:	06f13823          	sd	a5,112(sp)
   1e884:	06c12423          	sw	a2,104(sp)
   1e888:	010b8b93          	addi	s7,s7,16
   1e88c:	fccf5ee3          	bge	t5,a2,1e868 <_svfiprintf_r+0x8ec>
   1e890:	06010613          	addi	a2,sp,96
   1e894:	00090593          	mv	a1,s2
   1e898:	00098513          	mv	a0,s3
   1e89c:	cf8ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1e8a0:	880518e3          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1e8a4:	01000e93          	li	t4,16
   1e8a8:	ff0d8d9b          	addiw	s11,s11,-16
   1e8ac:	07013783          	ld	a5,112(sp)
   1e8b0:	06812603          	lw	a2,104(sp)
   1e8b4:	00048b93          	mv	s7,s1
   1e8b8:	00700f13          	li	t5,7
   1e8bc:	fbbecae3          	blt	t4,s11,1e870 <_svfiprintf_r+0x8f4>
   1e8c0:	00040e13          	mv	t3,s0
   1e8c4:	02013403          	ld	s0,32(sp)
   1e8c8:	0016061b          	addiw	a2,a2,1
   1e8cc:	010b8513          	addi	a0,s7,16
   1e8d0:	01b787b3          	add	a5,a5,s11
   1e8d4:	01cbb023          	sd	t3,0(s7)
   1e8d8:	01bbb423          	sd	s11,8(s7)
   1e8dc:	06f13823          	sd	a5,112(sp)
   1e8e0:	06c12423          	sw	a2,104(sp)
   1e8e4:	00700713          	li	a4,7
   1e8e8:	52c74063          	blt	a4,a2,1ee08 <_svfiprintf_r+0xe8c>
   1e8ec:	00813683          	ld	a3,8(sp)
   1e8f0:	0016059b          	addiw	a1,a2,1
   1e8f4:	01050713          	addi	a4,a0,16
   1e8f8:	40da8abb          	subw	s5,s5,a3
   1e8fc:	00050b93          	mv	s7,a0
   1e900:	a55052e3          	blez	s5,1e344 <_svfiprintf_r+0x3c8>
   1e904:	01000513          	li	a0,16
   1e908:	5d555463          	bge	a0,s5,1eed0 <_svfiprintf_r+0xf54>
   1e90c:	00003e17          	auipc	t3,0x3
   1e910:	4bce0e13          	addi	t3,t3,1212 # 21dc8 <zeroes.4501>
   1e914:	02813023          	sd	s0,32(sp)
   1e918:	01000813          	li	a6,16
   1e91c:	00700d93          	li	s11,7
   1e920:	000e0413          	mv	s0,t3
   1e924:	00c0006f          	j	1e930 <_svfiprintf_r+0x9b4>
   1e928:	ff0a8a9b          	addiw	s5,s5,-16
   1e92c:	05585863          	bge	a6,s5,1e97c <_svfiprintf_r+0xa00>
   1e930:	0016061b          	addiw	a2,a2,1
   1e934:	01078793          	addi	a5,a5,16
   1e938:	008bb023          	sd	s0,0(s7)
   1e93c:	010bb423          	sd	a6,8(s7)
   1e940:	06f13823          	sd	a5,112(sp)
   1e944:	06c12423          	sw	a2,104(sp)
   1e948:	010b8b93          	addi	s7,s7,16
   1e94c:	fccddee3          	bge	s11,a2,1e928 <_svfiprintf_r+0x9ac>
   1e950:	06010613          	addi	a2,sp,96
   1e954:	00090593          	mv	a1,s2
   1e958:	00098513          	mv	a0,s3
   1e95c:	c38ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1e960:	fc051863          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1e964:	01000813          	li	a6,16
   1e968:	ff0a8a9b          	addiw	s5,s5,-16
   1e96c:	07013783          	ld	a5,112(sp)
   1e970:	06812603          	lw	a2,104(sp)
   1e974:	00048b93          	mv	s7,s1
   1e978:	fb584ce3          	blt	a6,s5,1e930 <_svfiprintf_r+0x9b4>
   1e97c:	00040e13          	mv	t3,s0
   1e980:	02013403          	ld	s0,32(sp)
   1e984:	0016059b          	addiw	a1,a2,1
   1e988:	010b8613          	addi	a2,s7,16
   1e98c:	015787b3          	add	a5,a5,s5
   1e990:	01cbb023          	sd	t3,0(s7)
   1e994:	015bb423          	sd	s5,8(s7)
   1e998:	06f13823          	sd	a5,112(sp)
   1e99c:	06b12423          	sw	a1,104(sp)
   1e9a0:	00700713          	li	a4,7
   1e9a4:	2ab74a63          	blt	a4,a1,1ec58 <_svfiprintf_r+0xcdc>
   1e9a8:	00813683          	ld	a3,8(sp)
   1e9ac:	00060b93          	mv	s7,a2
   1e9b0:	0015859b          	addiw	a1,a1,1
   1e9b4:	00f687b3          	add	a5,a3,a5
   1e9b8:	01060713          	addi	a4,a2,16
   1e9bc:	01abb023          	sd	s10,0(s7)
   1e9c0:	00dbb423          	sd	a3,8(s7)
   1e9c4:	06f13823          	sd	a5,112(sp)
   1e9c8:	06b12423          	sw	a1,104(sp)
   1e9cc:	00700613          	li	a2,7
   1e9d0:	98b65ae3          	bge	a2,a1,1e364 <_svfiprintf_r+0x3e8>
   1e9d4:	06010613          	addi	a2,sp,96
   1e9d8:	00090593          	mv	a1,s2
   1e9dc:	00098513          	mv	a0,s3
   1e9e0:	bb4ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1e9e4:	f4051663          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1e9e8:	07013783          	ld	a5,112(sp)
   1e9ec:	00048713          	mv	a4,s1
   1e9f0:	975ff06f          	j	1e364 <_svfiprintf_r+0x3e8>
   1e9f4:	06010613          	addi	a2,sp,96
   1e9f8:	00090593          	mv	a1,s2
   1e9fc:	00098513          	mv	a0,s3
   1ea00:	b94ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1ea04:	980506e3          	beqz	a0,1e390 <_svfiprintf_r+0x414>
   1ea08:	f28ff06f          	j	1e130 <_svfiprintf_r+0x1b4>
   1ea0c:	000b0c93          	mv	s9,s6
   1ea10:	cf9ff06f          	j	1e708 <_svfiprintf_r+0x78c>
   1ea14:	01000713          	li	a4,16
   1ea18:	00003e17          	auipc	t3,0x3
   1ea1c:	3a0e0e13          	addi	t3,t3,928 # 21db8 <blanks.4500>
   1ea20:	0bb75463          	bge	a4,s11,1eac8 <_svfiprintf_r+0xb4c>
   1ea24:	000b8713          	mv	a4,s7
   1ea28:	01000f93          	li	t6,16
   1ea2c:	00040b93          	mv	s7,s0
   1ea30:	00700293          	li	t0,7
   1ea34:	000d8413          	mv	s0,s11
   1ea38:	03d13023          	sd	t4,32(sp)
   1ea3c:	000c0d93          	mv	s11,s8
   1ea40:	05e13423          	sd	t5,72(sp)
   1ea44:	000a8c13          	mv	s8,s5
   1ea48:	000e0a93          	mv	s5,t3
   1ea4c:	00c0006f          	j	1ea58 <_svfiprintf_r+0xadc>
   1ea50:	ff04041b          	addiw	s0,s0,-16
   1ea54:	048fda63          	bge	t6,s0,1eaa8 <_svfiprintf_r+0xb2c>
   1ea58:	0016061b          	addiw	a2,a2,1
   1ea5c:	01078793          	addi	a5,a5,16
   1ea60:	01573023          	sd	s5,0(a4)
   1ea64:	01f73423          	sd	t6,8(a4)
   1ea68:	06f13823          	sd	a5,112(sp)
   1ea6c:	06c12423          	sw	a2,104(sp)
   1ea70:	01070713          	addi	a4,a4,16
   1ea74:	fcc2dee3          	bge	t0,a2,1ea50 <_svfiprintf_r+0xad4>
   1ea78:	06010613          	addi	a2,sp,96
   1ea7c:	00090593          	mv	a1,s2
   1ea80:	00098513          	mv	a0,s3
   1ea84:	b10ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1ea88:	ea051463          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1ea8c:	01000f93          	li	t6,16
   1ea90:	ff04041b          	addiw	s0,s0,-16
   1ea94:	07013783          	ld	a5,112(sp)
   1ea98:	06812603          	lw	a2,104(sp)
   1ea9c:	00048713          	mv	a4,s1
   1eaa0:	00700293          	li	t0,7
   1eaa4:	fa8fcae3          	blt	t6,s0,1ea58 <_svfiprintf_r+0xadc>
   1eaa8:	02013e83          	ld	t4,32(sp)
   1eaac:	04813f03          	ld	t5,72(sp)
   1eab0:	000a8e13          	mv	t3,s5
   1eab4:	000c0a93          	mv	s5,s8
   1eab8:	000d8c13          	mv	s8,s11
   1eabc:	00040d93          	mv	s11,s0
   1eac0:	000b8413          	mv	s0,s7
   1eac4:	00070b93          	mv	s7,a4
   1eac8:	0016061b          	addiw	a2,a2,1
   1eacc:	01b787b3          	add	a5,a5,s11
   1ead0:	01cbb023          	sd	t3,0(s7)
   1ead4:	01bbb423          	sd	s11,8(s7)
   1ead8:	06f13823          	sd	a5,112(sp)
   1eadc:	06c12423          	sw	a2,104(sp)
   1eae0:	00700713          	li	a4,7
   1eae4:	010b8b93          	addi	s7,s7,16
   1eae8:	fcc75263          	bge	a4,a2,1e2ac <_svfiprintf_r+0x330>
   1eaec:	06010613          	addi	a2,sp,96
   1eaf0:	00090593          	mv	a1,s2
   1eaf4:	00098513          	mv	a0,s3
   1eaf8:	05e13423          	sd	t5,72(sp)
   1eafc:	03d13023          	sd	t4,32(sp)
   1eb00:	a94ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1eb04:	e2051663          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1eb08:	07013783          	ld	a5,112(sp)
   1eb0c:	06812603          	lw	a2,104(sp)
   1eb10:	00048b93          	mv	s7,s1
   1eb14:	04813f03          	ld	t5,72(sp)
   1eb18:	02013e83          	ld	t4,32(sp)
   1eb1c:	f90ff06f          	j	1e2ac <_svfiprintf_r+0x330>
   1eb20:	06010613          	addi	a2,sp,96
   1eb24:	00090593          	mv	a1,s2
   1eb28:	00098513          	mv	a0,s3
   1eb2c:	05e13423          	sd	t5,72(sp)
   1eb30:	03d13023          	sd	t4,32(sp)
   1eb34:	a60ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1eb38:	de051c63          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1eb3c:	06812603          	lw	a2,104(sp)
   1eb40:	07013783          	ld	a5,112(sp)
   1eb44:	0f010713          	addi	a4,sp,240
   1eb48:	0016059b          	addiw	a1,a2,1
   1eb4c:	00048b93          	mv	s7,s1
   1eb50:	04813f03          	ld	t5,72(sp)
   1eb54:	02013e83          	ld	t4,32(sp)
   1eb58:	fa0ff06f          	j	1e2f8 <_svfiprintf_r+0x37c>
   1eb5c:	06010613          	addi	a2,sp,96
   1eb60:	00090593          	mv	a1,s2
   1eb64:	00098513          	mv	a0,s3
   1eb68:	03e13023          	sd	t5,32(sp)
   1eb6c:	a28ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1eb70:	dc051063          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1eb74:	06812603          	lw	a2,104(sp)
   1eb78:	07013783          	ld	a5,112(sp)
   1eb7c:	0f010713          	addi	a4,sp,240
   1eb80:	0016059b          	addiw	a1,a2,1
   1eb84:	00048b93          	mv	s7,s1
   1eb88:	02013f03          	ld	t5,32(sp)
   1eb8c:	fa4ff06f          	j	1e330 <_svfiprintf_r+0x3b4>
   1eb90:	00003e17          	auipc	t3,0x3
   1eb94:	228e0e13          	addi	t3,t3,552 # 21db8 <blanks.4500>
   1eb98:	01000593          	li	a1,16
   1eb9c:	06812603          	lw	a2,104(sp)
   1eba0:	01000d13          	li	s10,16
   1eba4:	00700d93          	li	s11,7
   1eba8:	000e0a93          	mv	s5,t3
   1ebac:	0175c863          	blt	a1,s7,1ebbc <_svfiprintf_r+0xc40>
   1ebb0:	0580006f          	j	1ec08 <_svfiprintf_r+0xc8c>
   1ebb4:	ff0b8b9b          	addiw	s7,s7,-16
   1ebb8:	057d5663          	bge	s10,s7,1ec04 <_svfiprintf_r+0xc88>
   1ebbc:	0016061b          	addiw	a2,a2,1
   1ebc0:	01078793          	addi	a5,a5,16
   1ebc4:	01573023          	sd	s5,0(a4)
   1ebc8:	01a73423          	sd	s10,8(a4)
   1ebcc:	06f13823          	sd	a5,112(sp)
   1ebd0:	06c12423          	sw	a2,104(sp)
   1ebd4:	01070713          	addi	a4,a4,16
   1ebd8:	fccddee3          	bge	s11,a2,1ebb4 <_svfiprintf_r+0xc38>
   1ebdc:	06010613          	addi	a2,sp,96
   1ebe0:	00090593          	mv	a1,s2
   1ebe4:	00098513          	mv	a0,s3
   1ebe8:	9acff0ef          	jal	ra,1dd94 <__ssprint_r>
   1ebec:	d4051263          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1ebf0:	ff0b8b9b          	addiw	s7,s7,-16
   1ebf4:	07013783          	ld	a5,112(sp)
   1ebf8:	06812603          	lw	a2,104(sp)
   1ebfc:	00048713          	mv	a4,s1
   1ec00:	fb7d4ee3          	blt	s10,s7,1ebbc <_svfiprintf_r+0xc40>
   1ec04:	000a8e13          	mv	t3,s5
   1ec08:	0016059b          	addiw	a1,a2,1
   1ec0c:	017787b3          	add	a5,a5,s7
   1ec10:	01c73023          	sd	t3,0(a4)
   1ec14:	01773423          	sd	s7,8(a4)
   1ec18:	06f13823          	sd	a5,112(sp)
   1ec1c:	06b12423          	sw	a1,104(sp)
   1ec20:	00700713          	li	a4,7
   1ec24:	f4b75863          	bge	a4,a1,1e374 <_svfiprintf_r+0x3f8>
   1ec28:	06010613          	addi	a2,sp,96
   1ec2c:	00090593          	mv	a1,s2
   1ec30:	00098513          	mv	a0,s3
   1ec34:	960ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1ec38:	ce051c63          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1ec3c:	07013783          	ld	a5,112(sp)
   1ec40:	f34ff06f          	j	1e374 <_svfiprintf_r+0x3f8>
   1ec44:	2e0a9663          	bnez	s5,1ef30 <_svfiprintf_r+0xfb4>
   1ec48:	00000a93          	li	s5,0
   1ec4c:	00013423          	sd	zero,8(sp)
   1ec50:	0dc10d13          	addi	s10,sp,220
   1ec54:	db4ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1ec58:	06010613          	addi	a2,sp,96
   1ec5c:	00090593          	mv	a1,s2
   1ec60:	00098513          	mv	a0,s3
   1ec64:	930ff0ef          	jal	ra,1dd94 <__ssprint_r>
   1ec68:	cc051463          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1ec6c:	06812583          	lw	a1,104(sp)
   1ec70:	07013783          	ld	a5,112(sp)
   1ec74:	0f010713          	addi	a4,sp,240
   1ec78:	0015859b          	addiw	a1,a1,1
   1ec7c:	00048b93          	mv	s7,s1
   1ec80:	ec4ff06f          	j	1e344 <_svfiprintf_r+0x3c8>
   1ec84:	000c0c93          	mv	s9,s8
   1ec88:	c08ff06f          	j	1e090 <_svfiprintf_r+0x114>
   1ec8c:	000b0893          	mv	a7,s6
   1ec90:	8a1ff06f          	j	1e530 <_svfiprintf_r+0x5b4>
   1ec94:	000b0c93          	mv	s9,s6
   1ec98:	8c5ff06f          	j	1e55c <_svfiprintf_r+0x5e0>
   1ec9c:	000b0c93          	mv	s9,s6
   1eca0:	829ff06f          	j	1e4c8 <_svfiprintf_r+0x54c>
   1eca4:	01013783          	ld	a5,16(sp)
   1eca8:	0007bd83          	ld	s11,0(a5)
   1ecac:	cf0ff06f          	j	1e19c <_svfiprintf_r+0x220>
   1ecb0:	000d0513          	mv	a0,s10
   1ecb4:	ffdf90ef          	jal	ra,18cb0 <strlen>
   1ecb8:	0005079b          	sext.w	a5,a0
   1ecbc:	00f13423          	sd	a5,8(sp)
   1ecc0:	01b13823          	sd	s11,16(sp)
   1ecc4:	00000a93          	li	s5,0
   1ecc8:	d40ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1eccc:	04000593          	li	a1,64
   1ecd0:	f41f70ef          	jal	ra,16c10 <_malloc_r>
   1ecd4:	00a93023          	sd	a0,0(s2)
   1ecd8:	00a93c23          	sd	a0,24(s2)
   1ecdc:	2a050c63          	beqz	a0,1ef94 <_svfiprintf_r+0x1018>
   1ece0:	04000793          	li	a5,64
   1ece4:	02f92023          	sw	a5,32(s2)
   1ece8:	af0ff06f          	j	1dfd8 <_svfiprintf_r+0x5c>
   1ecec:	400cfd13          	andi	s10,s9,1024
   1ecf0:	000d079b          	sext.w	a5,s10
   1ecf4:	00813423          	sd	s0,8(sp)
   1ecf8:	02813403          	ld	s0,40(sp)
   1ecfc:	0dc10d13          	addi	s10,sp,220
   1ed00:	03313023          	sd	s3,32(sp)
   1ed04:	000d8993          	mv	s3,s11
   1ed08:	00078d93          	mv	s11,a5
   1ed0c:	000c0793          	mv	a5,s8
   1ed10:	00000b13          	li	s6,0
   1ed14:	00090c13          	mv	s8,s2
   1ed18:	000d0913          	mv	s2,s10
   1ed1c:	00078d13          	mv	s10,a5
   1ed20:	00a00593          	li	a1,10
   1ed24:	00098513          	mv	a0,s3
   1ed28:	d84f10ef          	jal	ra,102ac <__umoddi3>
   1ed2c:	0305051b          	addiw	a0,a0,48
   1ed30:	fea90fa3          	sb	a0,-1(s2)
   1ed34:	001b0b1b          	addiw	s6,s6,1
   1ed38:	fff90913          	addi	s2,s2,-1
   1ed3c:	000d8663          	beqz	s11,1ed48 <_svfiprintf_r+0xdcc>
   1ed40:	00044683          	lbu	a3,0(s0)
   1ed44:	05668863          	beq	a3,s6,1ed94 <_svfiprintf_r+0xe18>
   1ed48:	00a00593          	li	a1,10
   1ed4c:	00098513          	mv	a0,s3
   1ed50:	d14f10ef          	jal	ra,10264 <__udivdi3>
   1ed54:	00900793          	li	a5,9
   1ed58:	0137f663          	bgeu	a5,s3,1ed64 <_svfiprintf_r+0xde8>
   1ed5c:	00050993          	mv	s3,a0
   1ed60:	fc1ff06f          	j	1ed20 <_svfiprintf_r+0xda4>
   1ed64:	000d0793          	mv	a5,s10
   1ed68:	00090d13          	mv	s10,s2
   1ed6c:	000c0913          	mv	s2,s8
   1ed70:	00078c13          	mv	s8,a5
   1ed74:	0dc10793          	addi	a5,sp,220
   1ed78:	41a787bb          	subw	a5,a5,s10
   1ed7c:	02813423          	sd	s0,40(sp)
   1ed80:	02013983          	ld	s3,32(sp)
   1ed84:	00813403          	ld	s0,8(sp)
   1ed88:	000c8b13          	mv	s6,s9
   1ed8c:	00f13423          	sd	a5,8(sp)
   1ed90:	c78ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1ed94:	0ff00793          	li	a5,255
   1ed98:	faf688e3          	beq	a3,a5,1ed48 <_svfiprintf_r+0xdcc>
   1ed9c:	00900793          	li	a5,9
   1eda0:	fd37f2e3          	bgeu	a5,s3,1ed64 <_svfiprintf_r+0xde8>
   1eda4:	03813783          	ld	a5,56(sp)
   1eda8:	03013583          	ld	a1,48(sp)
   1edac:	00000b13          	li	s6,0
   1edb0:	40f90933          	sub	s2,s2,a5
   1edb4:	00078613          	mv	a2,a5
   1edb8:	00090513          	mv	a0,s2
   1edbc:	fc5f90ef          	jal	ra,18d80 <strncpy>
   1edc0:	00144683          	lbu	a3,1(s0)
   1edc4:	00098513          	mv	a0,s3
   1edc8:	00a00593          	li	a1,10
   1edcc:	00d03733          	snez	a4,a3
   1edd0:	00e40433          	add	s0,s0,a4
   1edd4:	c90f10ef          	jal	ra,10264 <__udivdi3>
   1edd8:	00050993          	mv	s3,a0
   1eddc:	f45ff06f          	j	1ed20 <_svfiprintf_r+0xda4>
   1ede0:	200b6b13          	ori	s6,s6,512
   1ede4:	001c4703          	lbu	a4,1(s8)
   1ede8:	000b0b1b          	sext.w	s6,s6
   1edec:	001c0c13          	addi	s8,s8,1
   1edf0:	ac0ff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1edf4:	020b6b13          	ori	s6,s6,32
   1edf8:	001c4703          	lbu	a4,1(s8)
   1edfc:	000b0b1b          	sext.w	s6,s6
   1ee00:	001c0c13          	addi	s8,s8,1
   1ee04:	aacff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1ee08:	06010613          	addi	a2,sp,96
   1ee0c:	00090593          	mv	a1,s2
   1ee10:	00098513          	mv	a0,s3
   1ee14:	f81fe0ef          	jal	ra,1dd94 <__ssprint_r>
   1ee18:	b0051c63          	bnez	a0,1e130 <_svfiprintf_r+0x1b4>
   1ee1c:	06812603          	lw	a2,104(sp)
   1ee20:	07013783          	ld	a5,112(sp)
   1ee24:	0f010713          	addi	a4,sp,240
   1ee28:	0016059b          	addiw	a1,a2,1
   1ee2c:	00048b93          	mv	s7,s1
   1ee30:	d08ff06f          	j	1e338 <_svfiprintf_r+0x3bc>
   1ee34:	000a871b          	sext.w	a4,s5
   1ee38:	00600793          	li	a5,6
   1ee3c:	000a8693          	mv	a3,s5
   1ee40:	00e7f463          	bgeu	a5,a4,1ee48 <_svfiprintf_r+0xecc>
   1ee44:	00600693          	li	a3,6
   1ee48:	0006879b          	sext.w	a5,a3
   1ee4c:	00f13423          	sd	a5,8(sp)
   1ee50:	00078c93          	mv	s9,a5
   1ee54:	01b13823          	sd	s11,16(sp)
   1ee58:	00002d17          	auipc	s10,0x2
   1ee5c:	5d8d0d13          	addi	s10,s10,1496 # 21430 <zeroes.4539+0x90>
   1ee60:	c20ff06f          	j	1e280 <_svfiprintf_r+0x304>
   1ee64:	200b7793          	andi	a5,s6,512
   1ee68:	0a078263          	beqz	a5,1ef0c <_svfiprintf_r+0xf90>
   1ee6c:	0ffe7d93          	andi	s11,t3,255
   1ee70:	00e13823          	sd	a4,16(sp)
   1ee74:	000b0c93          	mv	s9,s6
   1ee78:	00100793          	li	a5,1
   1ee7c:	b50ff06f          	j	1e1cc <_svfiprintf_r+0x250>
   1ee80:	200b7793          	andi	a5,s6,512
   1ee84:	0ffe7d93          	andi	s11,t3,255
   1ee88:	b0079a63          	bnez	a5,1e19c <_svfiprintf_r+0x220>
   1ee8c:	020e1d93          	slli	s11,t3,0x20
   1ee90:	020ddd93          	srli	s11,s11,0x20
   1ee94:	b08ff06f          	j	1e19c <_svfiprintf_r+0x220>
   1ee98:	200b7713          	andi	a4,s6,512
   1ee9c:	04070e63          	beqz	a4,1eef8 <_svfiprintf_r+0xf7c>
   1eea0:	0ffe7d93          	andi	s11,t3,255
   1eea4:	000b0893          	mv	a7,s6
   1eea8:	00f13823          	sd	a5,16(sp)
   1eeac:	e90ff06f          	j	1e53c <_svfiprintf_r+0x5c0>
   1eeb0:	200b7793          	andi	a5,s6,512
   1eeb4:	02078663          	beqz	a5,1eee0 <_svfiprintf_r+0xf64>
   1eeb8:	01013783          	ld	a5,16(sp)
   1eebc:	000b0c93          	mv	s9,s6
   1eec0:	00e13823          	sd	a4,16(sp)
   1eec4:	00078d83          	lb	s11,0(a5)
   1eec8:	000d8793          	mv	a5,s11
   1eecc:	ea0ff06f          	j	1e56c <_svfiprintf_r+0x5f0>
   1eed0:	00070613          	mv	a2,a4
   1eed4:	00003e17          	auipc	t3,0x3
   1eed8:	ef4e0e13          	addi	t3,t3,-268 # 21dc8 <zeroes.4501>
   1eedc:	ab1ff06f          	j	1e98c <_svfiprintf_r+0xa10>
   1eee0:	01013783          	ld	a5,16(sp)
   1eee4:	000b0c93          	mv	s9,s6
   1eee8:	00e13823          	sd	a4,16(sp)
   1eeec:	0007ad83          	lw	s11,0(a5)
   1eef0:	000d8793          	mv	a5,s11
   1eef4:	e78ff06f          	j	1e56c <_svfiprintf_r+0x5f0>
   1eef8:	020e1d93          	slli	s11,t3,0x20
   1eefc:	020ddd93          	srli	s11,s11,0x20
   1ef00:	000b0893          	mv	a7,s6
   1ef04:	00f13823          	sd	a5,16(sp)
   1ef08:	e34ff06f          	j	1e53c <_svfiprintf_r+0x5c0>
   1ef0c:	020e1d93          	slli	s11,t3,0x20
   1ef10:	020ddd93          	srli	s11,s11,0x20
   1ef14:	00e13823          	sd	a4,16(sp)
   1ef18:	000b0c93          	mv	s9,s6
   1ef1c:	00100793          	li	a5,1
   1ef20:	aacff06f          	j	1e1cc <_svfiprintf_r+0x250>
   1ef24:	00013783          	ld	a5,0(sp)
   1ef28:	00f71023          	sh	a5,0(a4)
   1ef2c:	8ecff06f          	j	1e018 <_svfiprintf_r+0x9c>
   1ef30:	000b0c93          	mv	s9,s6
   1ef34:	e5cff06f          	j	1e590 <_svfiprintf_r+0x614>
   1ef38:	01513423          	sd	s5,8(sp)
   1ef3c:	01b13823          	sd	s11,16(sp)
   1ef40:	00000a93          	li	s5,0
   1ef44:	ac4ff06f          	j	1e208 <_svfiprintf_r+0x28c>
   1ef48:	00070513          	mv	a0,a4
   1ef4c:	00058613          	mv	a2,a1
   1ef50:	00003e17          	auipc	t3,0x3
   1ef54:	e78e0e13          	addi	t3,t3,-392 # 21dc8 <zeroes.4501>
   1ef58:	979ff06f          	j	1e8d0 <_svfiprintf_r+0x954>
   1ef5c:	00f72023          	sw	a5,0(a4)
   1ef60:	8b8ff06f          	j	1e018 <_svfiprintf_r+0x9c>
   1ef64:	fff00793          	li	a5,-1
   1ef68:	00f13023          	sd	a5,0(sp)
   1ef6c:	9d0ff06f          	j	1e13c <_svfiprintf_r+0x1c0>
   1ef70:	01013703          	ld	a4,16(sp)
   1ef74:	00072a83          	lw	s5,0(a4)
   1ef78:	00870693          	addi	a3,a4,8
   1ef7c:	000ad463          	bgez	s5,1ef84 <_svfiprintf_r+0x1008>
   1ef80:	fff00a93          	li	s5,-1
   1ef84:	001c4703          	lbu	a4,1(s8)
   1ef88:	00d13823          	sd	a3,16(sp)
   1ef8c:	00078c13          	mv	s8,a5
   1ef90:	920ff06f          	j	1e0b0 <_svfiprintf_r+0x134>
   1ef94:	00c00793          	li	a5,12
   1ef98:	00f9a023          	sw	a5,0(s3)
   1ef9c:	fff00793          	li	a5,-1
   1efa0:	00f13023          	sd	a5,0(sp)
   1efa4:	998ff06f          	j	1e13c <_svfiprintf_r+0x1c0>

000000000001efa8 <__swbuf_r>:
   1efa8:	fd010113          	addi	sp,sp,-48
   1efac:	02813023          	sd	s0,32(sp)
   1efb0:	00913c23          	sd	s1,24(sp)
   1efb4:	01213823          	sd	s2,16(sp)
   1efb8:	02113423          	sd	ra,40(sp)
   1efbc:	01313423          	sd	s3,8(sp)
   1efc0:	00050913          	mv	s2,a0
   1efc4:	00058493          	mv	s1,a1
   1efc8:	00060413          	mv	s0,a2
   1efcc:	00050663          	beqz	a0,1efd8 <__swbuf_r+0x30>
   1efd0:	05052783          	lw	a5,80(a0)
   1efd4:	14078863          	beqz	a5,1f124 <__swbuf_r+0x17c>
   1efd8:	01041703          	lh	a4,16(s0)
   1efdc:	02842783          	lw	a5,40(s0)
   1efe0:	03071693          	slli	a3,a4,0x30
   1efe4:	0306d693          	srli	a3,a3,0x30
   1efe8:	00f42623          	sw	a5,12(s0)
   1efec:	0086f793          	andi	a5,a3,8
   1eff0:	08078263          	beqz	a5,1f074 <__swbuf_r+0xcc>
   1eff4:	01843783          	ld	a5,24(s0)
   1eff8:	06078e63          	beqz	a5,1f074 <__swbuf_r+0xcc>
   1effc:	0ff4f993          	andi	s3,s1,255
   1f000:	03269613          	slli	a2,a3,0x32
   1f004:	00098493          	mv	s1,s3
   1f008:	08065e63          	bgez	a2,1f0a4 <__swbuf_r+0xfc>
   1f00c:	00043703          	ld	a4,0(s0)
   1f010:	02042683          	lw	a3,32(s0)
   1f014:	40f707bb          	subw	a5,a4,a5
   1f018:	0ad7de63          	bge	a5,a3,1f0d4 <__swbuf_r+0x12c>
   1f01c:	00c42683          	lw	a3,12(s0)
   1f020:	00170613          	addi	a2,a4,1
   1f024:	00c43023          	sd	a2,0(s0)
   1f028:	fff6869b          	addiw	a3,a3,-1
   1f02c:	00d42623          	sw	a3,12(s0)
   1f030:	01370023          	sb	s3,0(a4)
   1f034:	02042703          	lw	a4,32(s0)
   1f038:	0017879b          	addiw	a5,a5,1
   1f03c:	0cf70863          	beq	a4,a5,1f10c <__swbuf_r+0x164>
   1f040:	01045783          	lhu	a5,16(s0)
   1f044:	0017f793          	andi	a5,a5,1
   1f048:	00078663          	beqz	a5,1f054 <__swbuf_r+0xac>
   1f04c:	00a00793          	li	a5,10
   1f050:	0af48e63          	beq	s1,a5,1f10c <__swbuf_r+0x164>
   1f054:	02813083          	ld	ra,40(sp)
   1f058:	02013403          	ld	s0,32(sp)
   1f05c:	00048513          	mv	a0,s1
   1f060:	01013903          	ld	s2,16(sp)
   1f064:	01813483          	ld	s1,24(sp)
   1f068:	00813983          	ld	s3,8(sp)
   1f06c:	03010113          	addi	sp,sp,48
   1f070:	00008067          	ret
   1f074:	00040593          	mv	a1,s0
   1f078:	00090513          	mv	a0,s2
   1f07c:	d81f30ef          	jal	ra,12dfc <__swsetup_r>
   1f080:	08051e63          	bnez	a0,1f11c <__swbuf_r+0x174>
   1f084:	01041703          	lh	a4,16(s0)
   1f088:	0ff4f993          	andi	s3,s1,255
   1f08c:	01843783          	ld	a5,24(s0)
   1f090:	03071693          	slli	a3,a4,0x30
   1f094:	0306d693          	srli	a3,a3,0x30
   1f098:	03269613          	slli	a2,a3,0x32
   1f09c:	00098493          	mv	s1,s3
   1f0a0:	f60646e3          	bltz	a2,1f00c <__swbuf_r+0x64>
   1f0a4:	0ac42683          	lw	a3,172(s0)
   1f0a8:	00002637          	lui	a2,0x2
   1f0ac:	00c76733          	or	a4,a4,a2
   1f0b0:	ffffe637          	lui	a2,0xffffe
   1f0b4:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdadf7>
   1f0b8:	00c6f6b3          	and	a3,a3,a2
   1f0bc:	00e41823          	sh	a4,16(s0)
   1f0c0:	00043703          	ld	a4,0(s0)
   1f0c4:	0ad42623          	sw	a3,172(s0)
   1f0c8:	02042683          	lw	a3,32(s0)
   1f0cc:	40f707bb          	subw	a5,a4,a5
   1f0d0:	f4d7c6e3          	blt	a5,a3,1f01c <__swbuf_r+0x74>
   1f0d4:	00040593          	mv	a1,s0
   1f0d8:	00090513          	mv	a0,s2
   1f0dc:	ab4f40ef          	jal	ra,13390 <_fflush_r>
   1f0e0:	02051e63          	bnez	a0,1f11c <__swbuf_r+0x174>
   1f0e4:	00043703          	ld	a4,0(s0)
   1f0e8:	00c42683          	lw	a3,12(s0)
   1f0ec:	00100793          	li	a5,1
   1f0f0:	00170613          	addi	a2,a4,1
   1f0f4:	fff6869b          	addiw	a3,a3,-1
   1f0f8:	00c43023          	sd	a2,0(s0)
   1f0fc:	00d42623          	sw	a3,12(s0)
   1f100:	01370023          	sb	s3,0(a4)
   1f104:	02042703          	lw	a4,32(s0)
   1f108:	f2f71ce3          	bne	a4,a5,1f040 <__swbuf_r+0x98>
   1f10c:	00040593          	mv	a1,s0
   1f110:	00090513          	mv	a0,s2
   1f114:	a7cf40ef          	jal	ra,13390 <_fflush_r>
   1f118:	f2050ee3          	beqz	a0,1f054 <__swbuf_r+0xac>
   1f11c:	fff00493          	li	s1,-1
   1f120:	f35ff06f          	j	1f054 <__swbuf_r+0xac>
   1f124:	e14f40ef          	jal	ra,13738 <__sinit>
   1f128:	eb1ff06f          	j	1efd8 <__swbuf_r+0x30>

000000000001f12c <__swbuf>:
   1f12c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1f130:	00058613          	mv	a2,a1
   1f134:	00050593          	mv	a1,a0
   1f138:	0007b503          	ld	a0,0(a5)
   1f13c:	e6dff06f          	j	1efa8 <__swbuf_r>

000000000001f140 <_wcrtomb_r>:
   1f140:	fd010113          	addi	sp,sp,-48
   1f144:	02813023          	sd	s0,32(sp)
   1f148:	00913c23          	sd	s1,24(sp)
   1f14c:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1f150:	02113423          	sd	ra,40(sp)
   1f154:	00050413          	mv	s0,a0
   1f158:	00068493          	mv	s1,a3
   1f15c:	0e07b783          	ld	a5,224(a5)
   1f160:	02058263          	beqz	a1,1f184 <_wcrtomb_r+0x44>
   1f164:	000780e7          	jalr	a5
   1f168:	fff00793          	li	a5,-1
   1f16c:	02f50663          	beq	a0,a5,1f198 <_wcrtomb_r+0x58>
   1f170:	02813083          	ld	ra,40(sp)
   1f174:	02013403          	ld	s0,32(sp)
   1f178:	01813483          	ld	s1,24(sp)
   1f17c:	03010113          	addi	sp,sp,48
   1f180:	00008067          	ret
   1f184:	00000613          	li	a2,0
   1f188:	00010593          	mv	a1,sp
   1f18c:	000780e7          	jalr	a5
   1f190:	fff00793          	li	a5,-1
   1f194:	fcf51ee3          	bne	a0,a5,1f170 <_wcrtomb_r+0x30>
   1f198:	0004a023          	sw	zero,0(s1)
   1f19c:	08a00793          	li	a5,138
   1f1a0:	00f42023          	sw	a5,0(s0)
   1f1a4:	02813083          	ld	ra,40(sp)
   1f1a8:	02013403          	ld	s0,32(sp)
   1f1ac:	01813483          	ld	s1,24(sp)
   1f1b0:	03010113          	addi	sp,sp,48
   1f1b4:	00008067          	ret

000000000001f1b8 <wcrtomb>:
   1f1b8:	fd010113          	addi	sp,sp,-48
   1f1bc:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1f1c0:	02813023          	sd	s0,32(sp)
   1f1c4:	00913c23          	sd	s1,24(sp)
   1f1c8:	0007b403          	ld	s0,0(a5)
   1f1cc:	02113423          	sd	ra,40(sp)
   1f1d0:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1f1d4:	00060493          	mv	s1,a2
   1f1d8:	0e07b783          	ld	a5,224(a5)
   1f1dc:	00060693          	mv	a3,a2
   1f1e0:	02050863          	beqz	a0,1f210 <wcrtomb+0x58>
   1f1e4:	00058613          	mv	a2,a1
   1f1e8:	00050593          	mv	a1,a0
   1f1ec:	00040513          	mv	a0,s0
   1f1f0:	000780e7          	jalr	a5
   1f1f4:	fff00793          	li	a5,-1
   1f1f8:	02f50863          	beq	a0,a5,1f228 <wcrtomb+0x70>
   1f1fc:	02813083          	ld	ra,40(sp)
   1f200:	02013403          	ld	s0,32(sp)
   1f204:	01813483          	ld	s1,24(sp)
   1f208:	03010113          	addi	sp,sp,48
   1f20c:	00008067          	ret
   1f210:	00000613          	li	a2,0
   1f214:	00010593          	mv	a1,sp
   1f218:	00040513          	mv	a0,s0
   1f21c:	000780e7          	jalr	a5
   1f220:	fff00793          	li	a5,-1
   1f224:	fcf51ce3          	bne	a0,a5,1f1fc <wcrtomb+0x44>
   1f228:	0004a023          	sw	zero,0(s1)
   1f22c:	08a00793          	li	a5,138
   1f230:	00f42023          	sw	a5,0(s0)
   1f234:	02813083          	ld	ra,40(sp)
   1f238:	02013403          	ld	s0,32(sp)
   1f23c:	01813483          	ld	s1,24(sp)
   1f240:	03010113          	addi	sp,sp,48
   1f244:	00008067          	ret

000000000001f248 <_close>:
   1f248:	00000593          	li	a1,0
   1f24c:	00000613          	li	a2,0
   1f250:	00000693          	li	a3,0
   1f254:	00000713          	li	a4,0
   1f258:	00000793          	li	a5,0
   1f25c:	03900893          	li	a7,57
   1f260:	00000073          	ecall
   1f264:	00054663          	bltz	a0,1f270 <_close+0x28>
   1f268:	0005051b          	sext.w	a0,a0
   1f26c:	00008067          	ret
   1f270:	ff010113          	addi	sp,sp,-16
   1f274:	00813023          	sd	s0,0(sp)
   1f278:	00113423          	sd	ra,8(sp)
   1f27c:	00050413          	mv	s0,a0
   1f280:	314000ef          	jal	ra,1f594 <__errno>
   1f284:	408007bb          	negw	a5,s0
   1f288:	00813083          	ld	ra,8(sp)
   1f28c:	00013403          	ld	s0,0(sp)
   1f290:	00f52023          	sw	a5,0(a0)
   1f294:	fff00513          	li	a0,-1
   1f298:	01010113          	addi	sp,sp,16
   1f29c:	00008067          	ret

000000000001f2a0 <_exit>:
   1f2a0:	00000593          	li	a1,0
   1f2a4:	00000613          	li	a2,0
   1f2a8:	00000693          	li	a3,0
   1f2ac:	00000713          	li	a4,0
   1f2b0:	00000793          	li	a5,0
   1f2b4:	05d00893          	li	a7,93
   1f2b8:	00000073          	ecall
   1f2bc:	00054463          	bltz	a0,1f2c4 <_exit+0x24>
   1f2c0:	0000006f          	j	1f2c0 <_exit+0x20>
   1f2c4:	ff010113          	addi	sp,sp,-16
   1f2c8:	00813023          	sd	s0,0(sp)
   1f2cc:	00050413          	mv	s0,a0
   1f2d0:	00113423          	sd	ra,8(sp)
   1f2d4:	4080043b          	negw	s0,s0
   1f2d8:	2bc000ef          	jal	ra,1f594 <__errno>
   1f2dc:	00852023          	sw	s0,0(a0)
   1f2e0:	0000006f          	j	1f2e0 <_exit+0x40>

000000000001f2e4 <_fstat>:
   1f2e4:	f6010113          	addi	sp,sp,-160
   1f2e8:	08913423          	sd	s1,136(sp)
   1f2ec:	08113c23          	sd	ra,152(sp)
   1f2f0:	00058493          	mv	s1,a1
   1f2f4:	08813823          	sd	s0,144(sp)
   1f2f8:	00000613          	li	a2,0
   1f2fc:	00010593          	mv	a1,sp
   1f300:	00000693          	li	a3,0
   1f304:	00000713          	li	a4,0
   1f308:	00000793          	li	a5,0
   1f30c:	05000893          	li	a7,80
   1f310:	00000073          	ecall
   1f314:	00050413          	mv	s0,a0
   1f318:	02054663          	bltz	a0,1f344 <_fstat+0x60>
   1f31c:	0005041b          	sext.w	s0,a0
   1f320:	00048513          	mv	a0,s1
   1f324:	00010593          	mv	a1,sp
   1f328:	200000ef          	jal	ra,1f528 <_conv_stat>
   1f32c:	00040513          	mv	a0,s0
   1f330:	09813083          	ld	ra,152(sp)
   1f334:	09013403          	ld	s0,144(sp)
   1f338:	08813483          	ld	s1,136(sp)
   1f33c:	0a010113          	addi	sp,sp,160
   1f340:	00008067          	ret
   1f344:	4080043b          	negw	s0,s0
   1f348:	24c000ef          	jal	ra,1f594 <__errno>
   1f34c:	00852023          	sw	s0,0(a0)
   1f350:	fff00413          	li	s0,-1
   1f354:	fcdff06f          	j	1f320 <_fstat+0x3c>

000000000001f358 <_isatty>:
   1f358:	f8010113          	addi	sp,sp,-128
   1f35c:	00810593          	addi	a1,sp,8
   1f360:	06113c23          	sd	ra,120(sp)
   1f364:	f81ff0ef          	jal	ra,1f2e4 <_fstat>
   1f368:	fff00793          	li	a5,-1
   1f36c:	00f50e63          	beq	a0,a5,1f388 <_isatty+0x30>
   1f370:	00c12503          	lw	a0,12(sp)
   1f374:	07813083          	ld	ra,120(sp)
   1f378:	40d5551b          	sraiw	a0,a0,0xd
   1f37c:	00157513          	andi	a0,a0,1
   1f380:	08010113          	addi	sp,sp,128
   1f384:	00008067          	ret
   1f388:	07813083          	ld	ra,120(sp)
   1f38c:	00000513          	li	a0,0
   1f390:	08010113          	addi	sp,sp,128
   1f394:	00008067          	ret

000000000001f398 <_lseek>:
   1f398:	ff010113          	addi	sp,sp,-16
   1f39c:	00113423          	sd	ra,8(sp)
   1f3a0:	00813023          	sd	s0,0(sp)
   1f3a4:	00000693          	li	a3,0
   1f3a8:	00000713          	li	a4,0
   1f3ac:	00000793          	li	a5,0
   1f3b0:	03e00893          	li	a7,62
   1f3b4:	00000073          	ecall
   1f3b8:	00050413          	mv	s0,a0
   1f3bc:	00054c63          	bltz	a0,1f3d4 <_lseek+0x3c>
   1f3c0:	00040513          	mv	a0,s0
   1f3c4:	00813083          	ld	ra,8(sp)
   1f3c8:	00013403          	ld	s0,0(sp)
   1f3cc:	01010113          	addi	sp,sp,16
   1f3d0:	00008067          	ret
   1f3d4:	4080043b          	negw	s0,s0
   1f3d8:	1bc000ef          	jal	ra,1f594 <__errno>
   1f3dc:	00852023          	sw	s0,0(a0)
   1f3e0:	fff00413          	li	s0,-1
   1f3e4:	fddff06f          	j	1f3c0 <_lseek+0x28>

000000000001f3e8 <_read>:
   1f3e8:	ff010113          	addi	sp,sp,-16
   1f3ec:	00113423          	sd	ra,8(sp)
   1f3f0:	00813023          	sd	s0,0(sp)
   1f3f4:	00000693          	li	a3,0
   1f3f8:	00000713          	li	a4,0
   1f3fc:	00000793          	li	a5,0
   1f400:	03f00893          	li	a7,63
   1f404:	00000073          	ecall
   1f408:	00050413          	mv	s0,a0
   1f40c:	00054c63          	bltz	a0,1f424 <_read+0x3c>
   1f410:	00040513          	mv	a0,s0
   1f414:	00813083          	ld	ra,8(sp)
   1f418:	00013403          	ld	s0,0(sp)
   1f41c:	01010113          	addi	sp,sp,16
   1f420:	00008067          	ret
   1f424:	4080043b          	negw	s0,s0
   1f428:	16c000ef          	jal	ra,1f594 <__errno>
   1f42c:	00852023          	sw	s0,0(a0)
   1f430:	fff00413          	li	s0,-1
   1f434:	fddff06f          	j	1f410 <_read+0x28>

000000000001f438 <_sbrk>:
   1f438:	79018313          	addi	t1,gp,1936 # 23198 <heap_end.1898>
   1f43c:	00033783          	ld	a5,0(t1)
   1f440:	ff010113          	addi	sp,sp,-16
   1f444:	00113423          	sd	ra,8(sp)
   1f448:	00050813          	mv	a6,a0
   1f44c:	02079863          	bnez	a5,1f47c <_sbrk+0x44>
   1f450:	00000513          	li	a0,0
   1f454:	00000593          	li	a1,0
   1f458:	00000613          	li	a2,0
   1f45c:	00000693          	li	a3,0
   1f460:	00000713          	li	a4,0
   1f464:	0d600893          	li	a7,214
   1f468:	00000073          	ecall
   1f46c:	fff00793          	li	a5,-1
   1f470:	04f50663          	beq	a0,a5,1f4bc <_sbrk+0x84>
   1f474:	00050793          	mv	a5,a0
   1f478:	78a1b823          	sd	a0,1936(gp) # 23198 <heap_end.1898>
   1f47c:	00f80533          	add	a0,a6,a5
   1f480:	00000593          	li	a1,0
   1f484:	00000613          	li	a2,0
   1f488:	00000693          	li	a3,0
   1f48c:	00000713          	li	a4,0
   1f490:	00000793          	li	a5,0
   1f494:	0d600893          	li	a7,214
   1f498:	00000073          	ecall
   1f49c:	00033783          	ld	a5,0(t1)
   1f4a0:	00f80833          	add	a6,a6,a5
   1f4a4:	01051c63          	bne	a0,a6,1f4bc <_sbrk+0x84>
   1f4a8:	00813083          	ld	ra,8(sp)
   1f4ac:	78a1b823          	sd	a0,1936(gp) # 23198 <heap_end.1898>
   1f4b0:	00078513          	mv	a0,a5
   1f4b4:	01010113          	addi	sp,sp,16
   1f4b8:	00008067          	ret
   1f4bc:	0d8000ef          	jal	ra,1f594 <__errno>
   1f4c0:	00813083          	ld	ra,8(sp)
   1f4c4:	00c00793          	li	a5,12
   1f4c8:	00f52023          	sw	a5,0(a0)
   1f4cc:	fff00513          	li	a0,-1
   1f4d0:	01010113          	addi	sp,sp,16
   1f4d4:	00008067          	ret

000000000001f4d8 <_write>:
   1f4d8:	ff010113          	addi	sp,sp,-16
   1f4dc:	00113423          	sd	ra,8(sp)
   1f4e0:	00813023          	sd	s0,0(sp)
   1f4e4:	00000693          	li	a3,0
   1f4e8:	00000713          	li	a4,0
   1f4ec:	00000793          	li	a5,0
   1f4f0:	04000893          	li	a7,64
   1f4f4:	00000073          	ecall
   1f4f8:	00050413          	mv	s0,a0
   1f4fc:	00054c63          	bltz	a0,1f514 <_write+0x3c>
   1f500:	00040513          	mv	a0,s0
   1f504:	00813083          	ld	ra,8(sp)
   1f508:	00013403          	ld	s0,0(sp)
   1f50c:	01010113          	addi	sp,sp,16
   1f510:	00008067          	ret
   1f514:	4080043b          	negw	s0,s0
   1f518:	07c000ef          	jal	ra,1f594 <__errno>
   1f51c:	00852023          	sw	s0,0(a0)
   1f520:	fff00413          	li	s0,-1
   1f524:	fddff06f          	j	1f500 <_write+0x28>

000000000001f528 <_conv_stat>:
   1f528:	0005b383          	ld	t2,0(a1)
   1f52c:	0085b283          	ld	t0,8(a1)
   1f530:	0105af83          	lw	t6,16(a1)
   1f534:	0145af03          	lw	t5,20(a1)
   1f538:	0185ae83          	lw	t4,24(a1)
   1f53c:	01c5ae03          	lw	t3,28(a1)
   1f540:	0205b303          	ld	t1,32(a1)
   1f544:	0305b883          	ld	a7,48(a1)
   1f548:	0405b803          	ld	a6,64(a1)
   1f54c:	0385a603          	lw	a2,56(a1)
   1f550:	0485b683          	ld	a3,72(a1)
   1f554:	0585b703          	ld	a4,88(a1)
   1f558:	0685b783          	ld	a5,104(a1)
   1f55c:	00751023          	sh	t2,0(a0)
   1f560:	00551123          	sh	t0,2(a0)
   1f564:	01f52223          	sw	t6,4(a0)
   1f568:	01e51423          	sh	t5,8(a0)
   1f56c:	01d51523          	sh	t4,10(a0)
   1f570:	01c51623          	sh	t3,12(a0)
   1f574:	00651723          	sh	t1,14(a0)
   1f578:	01153823          	sd	a7,16(a0)
   1f57c:	05053823          	sd	a6,80(a0)
   1f580:	04c53423          	sd	a2,72(a0)
   1f584:	00d53c23          	sd	a3,24(a0)
   1f588:	02e53423          	sd	a4,40(a0)
   1f58c:	02f53c23          	sd	a5,56(a0)
   1f590:	00008067          	ret

000000000001f594 <__errno>:
   1f594:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1f598:	0007b503          	ld	a0,0(a5)
   1f59c:	00008067          	ret

000000000001f5a0 <__divdf3>:
   1f5a0:	fa010113          	addi	sp,sp,-96
   1f5a4:	05213023          	sd	s2,64(sp)
   1f5a8:	03455913          	srli	s2,a0,0x34
   1f5ac:	04913423          	sd	s1,72(sp)
   1f5b0:	03313c23          	sd	s3,56(sp)
   1f5b4:	03513423          	sd	s5,40(sp)
   1f5b8:	00c51493          	slli	s1,a0,0xc
   1f5bc:	04113c23          	sd	ra,88(sp)
   1f5c0:	04813823          	sd	s0,80(sp)
   1f5c4:	03413823          	sd	s4,48(sp)
   1f5c8:	03613023          	sd	s6,32(sp)
   1f5cc:	01713c23          	sd	s7,24(sp)
   1f5d0:	01813823          	sd	s8,16(sp)
   1f5d4:	01913423          	sd	s9,8(sp)
   1f5d8:	7ff97913          	andi	s2,s2,2047
   1f5dc:	00058a93          	mv	s5,a1
   1f5e0:	00c4d493          	srli	s1,s1,0xc
   1f5e4:	03f55993          	srli	s3,a0,0x3f
   1f5e8:	08090a63          	beqz	s2,1f67c <__divdf3+0xdc>
   1f5ec:	7ff00793          	li	a5,2047
   1f5f0:	0af90863          	beq	s2,a5,1f6a0 <__divdf3+0x100>
   1f5f4:	00100793          	li	a5,1
   1f5f8:	00349493          	slli	s1,s1,0x3
   1f5fc:	03779793          	slli	a5,a5,0x37
   1f600:	00f4e4b3          	or	s1,s1,a5
   1f604:	c0190913          	addi	s2,s2,-1023
   1f608:	00000b13          	li	s6,0
   1f60c:	034ad513          	srli	a0,s5,0x34
   1f610:	00ca9413          	slli	s0,s5,0xc
   1f614:	7ff57513          	andi	a0,a0,2047
   1f618:	00c45413          	srli	s0,s0,0xc
   1f61c:	03fada93          	srli	s5,s5,0x3f
   1f620:	0a050063          	beqz	a0,1f6c0 <__divdf3+0x120>
   1f624:	7ff00793          	li	a5,2047
   1f628:	0af50e63          	beq	a0,a5,1f6e4 <__divdf3+0x144>
   1f62c:	00100793          	li	a5,1
   1f630:	00341413          	slli	s0,s0,0x3
   1f634:	03779793          	slli	a5,a5,0x37
   1f638:	00f46433          	or	s0,s0,a5
   1f63c:	c0150513          	addi	a0,a0,-1023
   1f640:	00000793          	li	a5,0
   1f644:	002b1713          	slli	a4,s6,0x2
   1f648:	00f76733          	or	a4,a4,a5
   1f64c:	fff70713          	addi	a4,a4,-1
   1f650:	00e00693          	li	a3,14
   1f654:	0159ca33          	xor	s4,s3,s5
   1f658:	40a90933          	sub	s2,s2,a0
   1f65c:	0ae6e463          	bltu	a3,a4,1f704 <__divdf3+0x164>
   1f660:	00002697          	auipc	a3,0x2
   1f664:	77868693          	addi	a3,a3,1912 # 21dd8 <zeroes.4501+0x10>
   1f668:	00271713          	slli	a4,a4,0x2
   1f66c:	00d70733          	add	a4,a4,a3
   1f670:	00072703          	lw	a4,0(a4)
   1f674:	00d70733          	add	a4,a4,a3
   1f678:	00070067          	jr	a4
   1f67c:	02048c63          	beqz	s1,1f6b4 <__divdf3+0x114>
   1f680:	00048513          	mv	a0,s1
   1f684:	321010ef          	jal	ra,211a4 <__clzdi2>
   1f688:	0005051b          	sext.w	a0,a0
   1f68c:	ff85079b          	addiw	a5,a0,-8
   1f690:	c0d00913          	li	s2,-1011
   1f694:	00f494b3          	sll	s1,s1,a5
   1f698:	40a90933          	sub	s2,s2,a0
   1f69c:	f6dff06f          	j	1f608 <__divdf3+0x68>
   1f6a0:	7ff00913          	li	s2,2047
   1f6a4:	00200b13          	li	s6,2
   1f6a8:	f60482e3          	beqz	s1,1f60c <__divdf3+0x6c>
   1f6ac:	00300b13          	li	s6,3
   1f6b0:	f5dff06f          	j	1f60c <__divdf3+0x6c>
   1f6b4:	00000913          	li	s2,0
   1f6b8:	00100b13          	li	s6,1
   1f6bc:	f51ff06f          	j	1f60c <__divdf3+0x6c>
   1f6c0:	02040c63          	beqz	s0,1f6f8 <__divdf3+0x158>
   1f6c4:	00040513          	mv	a0,s0
   1f6c8:	2dd010ef          	jal	ra,211a4 <__clzdi2>
   1f6cc:	0005051b          	sext.w	a0,a0
   1f6d0:	ff85079b          	addiw	a5,a0,-8
   1f6d4:	00f41433          	sll	s0,s0,a5
   1f6d8:	c0d00793          	li	a5,-1011
   1f6dc:	40a78533          	sub	a0,a5,a0
   1f6e0:	f61ff06f          	j	1f640 <__divdf3+0xa0>
   1f6e4:	7ff00513          	li	a0,2047
   1f6e8:	00200793          	li	a5,2
   1f6ec:	f4040ce3          	beqz	s0,1f644 <__divdf3+0xa4>
   1f6f0:	00300793          	li	a5,3
   1f6f4:	f51ff06f          	j	1f644 <__divdf3+0xa4>
   1f6f8:	00000513          	li	a0,0
   1f6fc:	00100793          	li	a5,1
   1f700:	f45ff06f          	j	1f644 <__divdf3+0xa4>
   1f704:	00841a93          	slli	s5,s0,0x8
   1f708:	1284f863          	bgeu	s1,s0,1f838 <__divdf3+0x298>
   1f70c:	fff90913          	addi	s2,s2,-1
   1f710:	00000413          	li	s0,0
   1f714:	020adb93          	srli	s7,s5,0x20
   1f718:	fff00b13          	li	s6,-1
   1f71c:	000b8593          	mv	a1,s7
   1f720:	020b5b13          	srli	s6,s6,0x20
   1f724:	00048513          	mv	a0,s1
   1f728:	b3df00ef          	jal	ra,10264 <__udivdi3>
   1f72c:	016afb33          	and	s6,s5,s6
   1f730:	00050593          	mv	a1,a0
   1f734:	00050c93          	mv	s9,a0
   1f738:	000b0513          	mv	a0,s6
   1f73c:	245010ef          	jal	ra,21180 <__muldi3>
   1f740:	00050c13          	mv	s8,a0
   1f744:	000b8593          	mv	a1,s7
   1f748:	00048513          	mv	a0,s1
   1f74c:	b61f00ef          	jal	ra,102ac <__umoddi3>
   1f750:	02051513          	slli	a0,a0,0x20
   1f754:	02045413          	srli	s0,s0,0x20
   1f758:	00a46533          	or	a0,s0,a0
   1f75c:	000c8993          	mv	s3,s9
   1f760:	01857e63          	bgeu	a0,s8,1f77c <__divdf3+0x1dc>
   1f764:	01550533          	add	a0,a0,s5
   1f768:	fffc8993          	addi	s3,s9,-1
   1f76c:	01556863          	bltu	a0,s5,1f77c <__divdf3+0x1dc>
   1f770:	01857663          	bgeu	a0,s8,1f77c <__divdf3+0x1dc>
   1f774:	ffec8993          	addi	s3,s9,-2
   1f778:	01550533          	add	a0,a0,s5
   1f77c:	41850c33          	sub	s8,a0,s8
   1f780:	000b8593          	mv	a1,s7
   1f784:	000c0513          	mv	a0,s8
   1f788:	addf00ef          	jal	ra,10264 <__udivdi3>
   1f78c:	00050593          	mv	a1,a0
   1f790:	00050413          	mv	s0,a0
   1f794:	000b0513          	mv	a0,s6
   1f798:	1e9010ef          	jal	ra,21180 <__muldi3>
   1f79c:	00050b13          	mv	s6,a0
   1f7a0:	000b8593          	mv	a1,s7
   1f7a4:	000c0513          	mv	a0,s8
   1f7a8:	b05f00ef          	jal	ra,102ac <__umoddi3>
   1f7ac:	02051513          	slli	a0,a0,0x20
   1f7b0:	00040793          	mv	a5,s0
   1f7b4:	01657e63          	bgeu	a0,s6,1f7d0 <__divdf3+0x230>
   1f7b8:	01550533          	add	a0,a0,s5
   1f7bc:	fff40793          	addi	a5,s0,-1
   1f7c0:	01556863          	bltu	a0,s5,1f7d0 <__divdf3+0x230>
   1f7c4:	01657663          	bgeu	a0,s6,1f7d0 <__divdf3+0x230>
   1f7c8:	ffe40793          	addi	a5,s0,-2
   1f7cc:	01550533          	add	a0,a0,s5
   1f7d0:	02099413          	slli	s0,s3,0x20
   1f7d4:	41650533          	sub	a0,a0,s6
   1f7d8:	00f46433          	or	s0,s0,a5
   1f7dc:	00a03533          	snez	a0,a0
   1f7e0:	00a46433          	or	s0,s0,a0
   1f7e4:	3ff90793          	addi	a5,s2,1023
   1f7e8:	0ef05a63          	blez	a5,1f8dc <__divdf3+0x33c>
   1f7ec:	00747713          	andi	a4,s0,7
   1f7f0:	00070a63          	beqz	a4,1f804 <__divdf3+0x264>
   1f7f4:	00f47713          	andi	a4,s0,15
   1f7f8:	00400693          	li	a3,4
   1f7fc:	00d70463          	beq	a4,a3,1f804 <__divdf3+0x264>
   1f800:	00440413          	addi	s0,s0,4
   1f804:	00741713          	slli	a4,s0,0x7
   1f808:	00075c63          	bgez	a4,1f820 <__divdf3+0x280>
   1f80c:	fff00793          	li	a5,-1
   1f810:	03879793          	slli	a5,a5,0x38
   1f814:	fff78793          	addi	a5,a5,-1
   1f818:	00f47433          	and	s0,s0,a5
   1f81c:	40090793          	addi	a5,s2,1024
   1f820:	7fe00713          	li	a4,2046
   1f824:	00345413          	srli	s0,s0,0x3
   1f828:	04f75463          	bge	a4,a5,1f870 <__divdf3+0x2d0>
   1f82c:	00000413          	li	s0,0
   1f830:	7ff00793          	li	a5,2047
   1f834:	03c0006f          	j	1f870 <__divdf3+0x2d0>
   1f838:	03f49413          	slli	s0,s1,0x3f
   1f83c:	0014d493          	srli	s1,s1,0x1
   1f840:	ed5ff06f          	j	1f714 <__divdf3+0x174>
   1f844:	00098a13          	mv	s4,s3
   1f848:	00048413          	mv	s0,s1
   1f84c:	000b0793          	mv	a5,s6
   1f850:	00200713          	li	a4,2
   1f854:	fce78ce3          	beq	a5,a4,1f82c <__divdf3+0x28c>
   1f858:	00300713          	li	a4,3
   1f85c:	0ce78e63          	beq	a5,a4,1f938 <__divdf3+0x398>
   1f860:	00100713          	li	a4,1
   1f864:	f8e790e3          	bne	a5,a4,1f7e4 <__divdf3+0x244>
   1f868:	00000413          	li	s0,0
   1f86c:	00000793          	li	a5,0
   1f870:	00c41413          	slli	s0,s0,0xc
   1f874:	7ff7f793          	andi	a5,a5,2047
   1f878:	03479793          	slli	a5,a5,0x34
   1f87c:	00c45413          	srli	s0,s0,0xc
   1f880:	03fa1513          	slli	a0,s4,0x3f
   1f884:	00f46433          	or	s0,s0,a5
   1f888:	00a46533          	or	a0,s0,a0
   1f88c:	05813083          	ld	ra,88(sp)
   1f890:	05013403          	ld	s0,80(sp)
   1f894:	04813483          	ld	s1,72(sp)
   1f898:	04013903          	ld	s2,64(sp)
   1f89c:	03813983          	ld	s3,56(sp)
   1f8a0:	03013a03          	ld	s4,48(sp)
   1f8a4:	02813a83          	ld	s5,40(sp)
   1f8a8:	02013b03          	ld	s6,32(sp)
   1f8ac:	01813b83          	ld	s7,24(sp)
   1f8b0:	01013c03          	ld	s8,16(sp)
   1f8b4:	00813c83          	ld	s9,8(sp)
   1f8b8:	06010113          	addi	sp,sp,96
   1f8bc:	00008067          	ret
   1f8c0:	000a8a13          	mv	s4,s5
   1f8c4:	f8dff06f          	j	1f850 <__divdf3+0x2b0>
   1f8c8:	00100413          	li	s0,1
   1f8cc:	03341413          	slli	s0,s0,0x33
   1f8d0:	00000a13          	li	s4,0
   1f8d4:	00300793          	li	a5,3
   1f8d8:	f79ff06f          	j	1f850 <__divdf3+0x2b0>
   1f8dc:	00100713          	li	a4,1
   1f8e0:	40f707b3          	sub	a5,a4,a5
   1f8e4:	03800713          	li	a4,56
   1f8e8:	f8f740e3          	blt	a4,a5,1f868 <__divdf3+0x2c8>
   1f8ec:	0007871b          	sext.w	a4,a5
   1f8f0:	04000693          	li	a3,64
   1f8f4:	00e457b3          	srl	a5,s0,a4
   1f8f8:	40e6873b          	subw	a4,a3,a4
   1f8fc:	00e41433          	sll	s0,s0,a4
   1f900:	00803433          	snez	s0,s0
   1f904:	0087e433          	or	s0,a5,s0
   1f908:	00747793          	andi	a5,s0,7
   1f90c:	00078a63          	beqz	a5,1f920 <__divdf3+0x380>
   1f910:	00f47793          	andi	a5,s0,15
   1f914:	00400713          	li	a4,4
   1f918:	00e78463          	beq	a5,a4,1f920 <__divdf3+0x380>
   1f91c:	00440413          	addi	s0,s0,4
   1f920:	00841793          	slli	a5,s0,0x8
   1f924:	00345413          	srli	s0,s0,0x3
   1f928:	f407d2e3          	bgez	a5,1f86c <__divdf3+0x2cc>
   1f92c:	00000413          	li	s0,0
   1f930:	00100793          	li	a5,1
   1f934:	f3dff06f          	j	1f870 <__divdf3+0x2d0>
   1f938:	00100413          	li	s0,1
   1f93c:	03341413          	slli	s0,s0,0x33
   1f940:	7ff00793          	li	a5,2047
   1f944:	00000a13          	li	s4,0
   1f948:	f29ff06f          	j	1f870 <__divdf3+0x2d0>

000000000001f94c <__muldf3>:
   1f94c:	fc010113          	addi	sp,sp,-64
   1f950:	03213023          	sd	s2,32(sp)
   1f954:	03455913          	srli	s2,a0,0x34
   1f958:	02913423          	sd	s1,40(sp)
   1f95c:	01313c23          	sd	s3,24(sp)
   1f960:	01513423          	sd	s5,8(sp)
   1f964:	00c51493          	slli	s1,a0,0xc
   1f968:	02113c23          	sd	ra,56(sp)
   1f96c:	02813823          	sd	s0,48(sp)
   1f970:	01413823          	sd	s4,16(sp)
   1f974:	7ff97913          	andi	s2,s2,2047
   1f978:	00058a93          	mv	s5,a1
   1f97c:	00c4d493          	srli	s1,s1,0xc
   1f980:	03f55993          	srli	s3,a0,0x3f
   1f984:	08090c63          	beqz	s2,1fa1c <__muldf3+0xd0>
   1f988:	7ff00793          	li	a5,2047
   1f98c:	0af90a63          	beq	s2,a5,1fa40 <__muldf3+0xf4>
   1f990:	00100793          	li	a5,1
   1f994:	00349493          	slli	s1,s1,0x3
   1f998:	03779793          	slli	a5,a5,0x37
   1f99c:	00f4e4b3          	or	s1,s1,a5
   1f9a0:	c0190913          	addi	s2,s2,-1023
   1f9a4:	00000a13          	li	s4,0
   1f9a8:	034ad513          	srli	a0,s5,0x34
   1f9ac:	00ca9413          	slli	s0,s5,0xc
   1f9b0:	7ff57513          	andi	a0,a0,2047
   1f9b4:	00c45413          	srli	s0,s0,0xc
   1f9b8:	03fada93          	srli	s5,s5,0x3f
   1f9bc:	0a050263          	beqz	a0,1fa60 <__muldf3+0x114>
   1f9c0:	7ff00793          	li	a5,2047
   1f9c4:	0cf50063          	beq	a0,a5,1fa84 <__muldf3+0x138>
   1f9c8:	00100793          	li	a5,1
   1f9cc:	00341413          	slli	s0,s0,0x3
   1f9d0:	03779793          	slli	a5,a5,0x37
   1f9d4:	00f46433          	or	s0,s0,a5
   1f9d8:	c0150513          	addi	a0,a0,-1023
   1f9dc:	00000793          	li	a5,0
   1f9e0:	002a1713          	slli	a4,s4,0x2
   1f9e4:	00f76733          	or	a4,a4,a5
   1f9e8:	00a90933          	add	s2,s2,a0
   1f9ec:	fff70713          	addi	a4,a4,-1
   1f9f0:	00e00693          	li	a3,14
   1f9f4:	0159c833          	xor	a6,s3,s5
   1f9f8:	00190893          	addi	a7,s2,1
   1f9fc:	0ae6e463          	bltu	a3,a4,1faa4 <__muldf3+0x158>
   1fa00:	00002697          	auipc	a3,0x2
   1fa04:	41468693          	addi	a3,a3,1044 # 21e14 <zeroes.4501+0x4c>
   1fa08:	00271713          	slli	a4,a4,0x2
   1fa0c:	00d70733          	add	a4,a4,a3
   1fa10:	00072703          	lw	a4,0(a4)
   1fa14:	00d70733          	add	a4,a4,a3
   1fa18:	00070067          	jr	a4
   1fa1c:	02048c63          	beqz	s1,1fa54 <__muldf3+0x108>
   1fa20:	00048513          	mv	a0,s1
   1fa24:	780010ef          	jal	ra,211a4 <__clzdi2>
   1fa28:	0005051b          	sext.w	a0,a0
   1fa2c:	ff85079b          	addiw	a5,a0,-8
   1fa30:	c0d00913          	li	s2,-1011
   1fa34:	00f494b3          	sll	s1,s1,a5
   1fa38:	40a90933          	sub	s2,s2,a0
   1fa3c:	f69ff06f          	j	1f9a4 <__muldf3+0x58>
   1fa40:	7ff00913          	li	s2,2047
   1fa44:	00200a13          	li	s4,2
   1fa48:	f60480e3          	beqz	s1,1f9a8 <__muldf3+0x5c>
   1fa4c:	00300a13          	li	s4,3
   1fa50:	f59ff06f          	j	1f9a8 <__muldf3+0x5c>
   1fa54:	00000913          	li	s2,0
   1fa58:	00100a13          	li	s4,1
   1fa5c:	f4dff06f          	j	1f9a8 <__muldf3+0x5c>
   1fa60:	02040c63          	beqz	s0,1fa98 <__muldf3+0x14c>
   1fa64:	00040513          	mv	a0,s0
   1fa68:	73c010ef          	jal	ra,211a4 <__clzdi2>
   1fa6c:	0005051b          	sext.w	a0,a0
   1fa70:	ff85079b          	addiw	a5,a0,-8
   1fa74:	00f41433          	sll	s0,s0,a5
   1fa78:	c0d00793          	li	a5,-1011
   1fa7c:	40a78533          	sub	a0,a5,a0
   1fa80:	f5dff06f          	j	1f9dc <__muldf3+0x90>
   1fa84:	7ff00513          	li	a0,2047
   1fa88:	00200793          	li	a5,2
   1fa8c:	f4040ae3          	beqz	s0,1f9e0 <__muldf3+0x94>
   1fa90:	00300793          	li	a5,3
   1fa94:	f4dff06f          	j	1f9e0 <__muldf3+0x94>
   1fa98:	00000513          	li	a0,0
   1fa9c:	00100793          	li	a5,1
   1faa0:	f41ff06f          	j	1f9e0 <__muldf3+0x94>
   1faa4:	fff00793          	li	a5,-1
   1faa8:	0207d793          	srli	a5,a5,0x20
   1faac:	0204df13          	srli	t5,s1,0x20
   1fab0:	02045e93          	srli	t4,s0,0x20
   1fab4:	00f4f4b3          	and	s1,s1,a5
   1fab8:	00f47433          	and	s0,s0,a5
   1fabc:	00048513          	mv	a0,s1
   1fac0:	00040593          	mv	a1,s0
   1fac4:	6bc010ef          	jal	ra,21180 <__muldi3>
   1fac8:	00050313          	mv	t1,a0
   1facc:	000e8593          	mv	a1,t4
   1fad0:	00048513          	mv	a0,s1
   1fad4:	6ac010ef          	jal	ra,21180 <__muldi3>
   1fad8:	00050713          	mv	a4,a0
   1fadc:	00040593          	mv	a1,s0
   1fae0:	000f0513          	mv	a0,t5
   1fae4:	69c010ef          	jal	ra,21180 <__muldi3>
   1fae8:	00050e13          	mv	t3,a0
   1faec:	000e8593          	mv	a1,t4
   1faf0:	000f0513          	mv	a0,t5
   1faf4:	68c010ef          	jal	ra,21180 <__muldi3>
   1faf8:	02035793          	srli	a5,t1,0x20
   1fafc:	01c70733          	add	a4,a4,t3
   1fb00:	00e787b3          	add	a5,a5,a4
   1fb04:	01c7f863          	bgeu	a5,t3,1fb14 <__muldf3+0x1c8>
   1fb08:	00100713          	li	a4,1
   1fb0c:	02071713          	slli	a4,a4,0x20
   1fb10:	00e50533          	add	a0,a0,a4
   1fb14:	fff00693          	li	a3,-1
   1fb18:	0206d693          	srli	a3,a3,0x20
   1fb1c:	00d7f733          	and	a4,a5,a3
   1fb20:	02071713          	slli	a4,a4,0x20
   1fb24:	00d37333          	and	t1,t1,a3
   1fb28:	00670733          	add	a4,a4,t1
   1fb2c:	00971413          	slli	s0,a4,0x9
   1fb30:	0207d793          	srli	a5,a5,0x20
   1fb34:	00803433          	snez	s0,s0
   1fb38:	00a787b3          	add	a5,a5,a0
   1fb3c:	03775713          	srli	a4,a4,0x37
   1fb40:	00e46733          	or	a4,s0,a4
   1fb44:	00979413          	slli	s0,a5,0x9
   1fb48:	00e46433          	or	s0,s0,a4
   1fb4c:	00741793          	slli	a5,s0,0x7
   1fb50:	0807de63          	bgez	a5,1fbec <__muldf3+0x2a0>
   1fb54:	00145793          	srli	a5,s0,0x1
   1fb58:	00147413          	andi	s0,s0,1
   1fb5c:	0087e433          	or	s0,a5,s0
   1fb60:	3ff88793          	addi	a5,a7,1023
   1fb64:	08f05863          	blez	a5,1fbf4 <__muldf3+0x2a8>
   1fb68:	00747713          	andi	a4,s0,7
   1fb6c:	00070a63          	beqz	a4,1fb80 <__muldf3+0x234>
   1fb70:	00f47713          	andi	a4,s0,15
   1fb74:	00400693          	li	a3,4
   1fb78:	00d70463          	beq	a4,a3,1fb80 <__muldf3+0x234>
   1fb7c:	00440413          	addi	s0,s0,4
   1fb80:	00741713          	slli	a4,s0,0x7
   1fb84:	00075c63          	bgez	a4,1fb9c <__muldf3+0x250>
   1fb88:	fff00793          	li	a5,-1
   1fb8c:	03879793          	slli	a5,a5,0x38
   1fb90:	fff78793          	addi	a5,a5,-1
   1fb94:	00f47433          	and	s0,s0,a5
   1fb98:	40088793          	addi	a5,a7,1024
   1fb9c:	7fe00713          	li	a4,2046
   1fba0:	00345413          	srli	s0,s0,0x3
   1fba4:	0af75e63          	bge	a4,a5,1fc60 <__muldf3+0x314>
   1fba8:	00000413          	li	s0,0
   1fbac:	7ff00793          	li	a5,2047
   1fbb0:	0b00006f          	j	1fc60 <__muldf3+0x314>
   1fbb4:	00098813          	mv	a6,s3
   1fbb8:	00048413          	mv	s0,s1
   1fbbc:	000a0793          	mv	a5,s4
   1fbc0:	00200713          	li	a4,2
   1fbc4:	fee782e3          	beq	a5,a4,1fba8 <__muldf3+0x25c>
   1fbc8:	00300713          	li	a4,3
   1fbcc:	08e78263          	beq	a5,a4,1fc50 <__muldf3+0x304>
   1fbd0:	00100713          	li	a4,1
   1fbd4:	f8e796e3          	bne	a5,a4,1fb60 <__muldf3+0x214>
   1fbd8:	00000413          	li	s0,0
   1fbdc:	00000793          	li	a5,0
   1fbe0:	0800006f          	j	1fc60 <__muldf3+0x314>
   1fbe4:	000a8813          	mv	a6,s5
   1fbe8:	fd9ff06f          	j	1fbc0 <__muldf3+0x274>
   1fbec:	00090893          	mv	a7,s2
   1fbf0:	f71ff06f          	j	1fb60 <__muldf3+0x214>
   1fbf4:	00100713          	li	a4,1
   1fbf8:	40f707b3          	sub	a5,a4,a5
   1fbfc:	03800713          	li	a4,56
   1fc00:	fcf74ce3          	blt	a4,a5,1fbd8 <__muldf3+0x28c>
   1fc04:	0007871b          	sext.w	a4,a5
   1fc08:	04000693          	li	a3,64
   1fc0c:	00e457b3          	srl	a5,s0,a4
   1fc10:	40e6873b          	subw	a4,a3,a4
   1fc14:	00e41433          	sll	s0,s0,a4
   1fc18:	00803433          	snez	s0,s0
   1fc1c:	0087e433          	or	s0,a5,s0
   1fc20:	00747793          	andi	a5,s0,7
   1fc24:	00078a63          	beqz	a5,1fc38 <__muldf3+0x2ec>
   1fc28:	00f47793          	andi	a5,s0,15
   1fc2c:	00400713          	li	a4,4
   1fc30:	00e78463          	beq	a5,a4,1fc38 <__muldf3+0x2ec>
   1fc34:	00440413          	addi	s0,s0,4
   1fc38:	00841793          	slli	a5,s0,0x8
   1fc3c:	00345413          	srli	s0,s0,0x3
   1fc40:	f807dee3          	bgez	a5,1fbdc <__muldf3+0x290>
   1fc44:	00000413          	li	s0,0
   1fc48:	00100793          	li	a5,1
   1fc4c:	0140006f          	j	1fc60 <__muldf3+0x314>
   1fc50:	00100413          	li	s0,1
   1fc54:	03341413          	slli	s0,s0,0x33
   1fc58:	7ff00793          	li	a5,2047
   1fc5c:	00000813          	li	a6,0
   1fc60:	00c41413          	slli	s0,s0,0xc
   1fc64:	7ff7f793          	andi	a5,a5,2047
   1fc68:	03479793          	slli	a5,a5,0x34
   1fc6c:	00c45413          	srli	s0,s0,0xc
   1fc70:	00f46433          	or	s0,s0,a5
   1fc74:	03f81513          	slli	a0,a6,0x3f
   1fc78:	00a46533          	or	a0,s0,a0
   1fc7c:	03813083          	ld	ra,56(sp)
   1fc80:	03013403          	ld	s0,48(sp)
   1fc84:	02813483          	ld	s1,40(sp)
   1fc88:	02013903          	ld	s2,32(sp)
   1fc8c:	01813983          	ld	s3,24(sp)
   1fc90:	01013a03          	ld	s4,16(sp)
   1fc94:	00813a83          	ld	s5,8(sp)
   1fc98:	04010113          	addi	sp,sp,64
   1fc9c:	00008067          	ret

000000000001fca0 <__eqtf2>:
   1fca0:	000088b7          	lui	a7,0x8
   1fca4:	0305d813          	srli	a6,a1,0x30
   1fca8:	fff88893          	addi	a7,a7,-1 # 7fff <register_fini-0x80b1>
   1fcac:	fff00713          	li	a4,-1
   1fcb0:	01075713          	srli	a4,a4,0x10
   1fcb4:	0306d313          	srli	t1,a3,0x30
   1fcb8:	01187833          	and	a6,a6,a7
   1fcbc:	00e5fe33          	and	t3,a1,a4
   1fcc0:	01137333          	and	t1,t1,a7
   1fcc4:	00e6f733          	and	a4,a3,a4
   1fcc8:	03f5d593          	srli	a1,a1,0x3f
   1fccc:	03f6d693          	srli	a3,a3,0x3f
   1fcd0:	01181e63          	bne	a6,a7,1fcec <__eqtf2+0x4c>
   1fcd4:	00ae68b3          	or	a7,t3,a0
   1fcd8:	00100793          	li	a5,1
   1fcdc:	04089063          	bnez	a7,1fd1c <__eqtf2+0x7c>
   1fce0:	01030863          	beq	t1,a6,1fcf0 <__eqtf2+0x50>
   1fce4:	00100793          	li	a5,1
   1fce8:	0340006f          	j	1fd1c <__eqtf2+0x7c>
   1fcec:	01131863          	bne	t1,a7,1fcfc <__eqtf2+0x5c>
   1fcf0:	00c768b3          	or	a7,a4,a2
   1fcf4:	00100793          	li	a5,1
   1fcf8:	02089263          	bnez	a7,1fd1c <__eqtf2+0x7c>
   1fcfc:	00100793          	li	a5,1
   1fd00:	00681e63          	bne	a6,t1,1fd1c <__eqtf2+0x7c>
   1fd04:	00ee1c63          	bne	t3,a4,1fd1c <__eqtf2+0x7c>
   1fd08:	00c51a63          	bne	a0,a2,1fd1c <__eqtf2+0x7c>
   1fd0c:	00d58c63          	beq	a1,a3,1fd24 <__eqtf2+0x84>
   1fd10:	00081663          	bnez	a6,1fd1c <__eqtf2+0x7c>
   1fd14:	00ae67b3          	or	a5,t3,a0
   1fd18:	00f037b3          	snez	a5,a5
   1fd1c:	00078513          	mv	a0,a5
   1fd20:	00008067          	ret
   1fd24:	00000793          	li	a5,0
   1fd28:	ff5ff06f          	j	1fd1c <__eqtf2+0x7c>

000000000001fd2c <__getf2>:
   1fd2c:	000088b7          	lui	a7,0x8
   1fd30:	0305d813          	srli	a6,a1,0x30
   1fd34:	fff88893          	addi	a7,a7,-1 # 7fff <register_fini-0x80b1>
   1fd38:	fff00793          	li	a5,-1
   1fd3c:	0107d793          	srli	a5,a5,0x10
   1fd40:	0306d713          	srli	a4,a3,0x30
   1fd44:	01187833          	and	a6,a6,a7
   1fd48:	00f5f333          	and	t1,a1,a5
   1fd4c:	01177733          	and	a4,a4,a7
   1fd50:	00f6f7b3          	and	a5,a3,a5
   1fd54:	03f5d593          	srli	a1,a1,0x3f
   1fd58:	03f6d693          	srli	a3,a3,0x3f
   1fd5c:	01181a63          	bne	a6,a7,1fd70 <__getf2+0x44>
   1fd60:	00a368b3          	or	a7,t1,a0
   1fd64:	08088c63          	beqz	a7,1fdfc <__getf2+0xd0>
   1fd68:	ffe00593          	li	a1,-2
   1fd6c:	0480006f          	j	1fdb4 <__getf2+0x88>
   1fd70:	01171663          	bne	a4,a7,1fd7c <__getf2+0x50>
   1fd74:	00c7e8b3          	or	a7,a5,a2
   1fd78:	fe0898e3          	bnez	a7,1fd68 <__getf2+0x3c>
   1fd7c:	08081263          	bnez	a6,1fe00 <__getf2+0xd4>
   1fd80:	00a368b3          	or	a7,t1,a0
   1fd84:	0018b893          	seqz	a7,a7
   1fd88:	00071663          	bnez	a4,1fd94 <__getf2+0x68>
   1fd8c:	00c7ee33          	or	t3,a5,a2
   1fd90:	040e0e63          	beqz	t3,1fdec <__getf2+0xc0>
   1fd94:	00089a63          	bnez	a7,1fda8 <__getf2+0x7c>
   1fd98:	02d58263          	beq	a1,a3,1fdbc <__getf2+0x90>
   1fd9c:	04058463          	beqz	a1,1fde4 <__getf2+0xb8>
   1fda0:	fff00593          	li	a1,-1
   1fda4:	0100006f          	j	1fdb4 <__getf2+0x88>
   1fda8:	fff00593          	li	a1,-1
   1fdac:	00068463          	beqz	a3,1fdb4 <__getf2+0x88>
   1fdb0:	00068593          	mv	a1,a3
   1fdb4:	00058513          	mv	a0,a1
   1fdb8:	00008067          	ret
   1fdbc:	ff0740e3          	blt	a4,a6,1fd9c <__getf2+0x70>
   1fdc0:	00e85663          	bge	a6,a4,1fdcc <__getf2+0xa0>
   1fdc4:	fe0598e3          	bnez	a1,1fdb4 <__getf2+0x88>
   1fdc8:	fd9ff06f          	j	1fda0 <__getf2+0x74>
   1fdcc:	fc67e8e3          	bltu	a5,t1,1fd9c <__getf2+0x70>
   1fdd0:	02f31263          	bne	t1,a5,1fdf4 <__getf2+0xc8>
   1fdd4:	fca664e3          	bltu	a2,a0,1fd9c <__getf2+0x70>
   1fdd8:	fec566e3          	bltu	a0,a2,1fdc4 <__getf2+0x98>
   1fddc:	00000593          	li	a1,0
   1fde0:	fd5ff06f          	j	1fdb4 <__getf2+0x88>
   1fde4:	00100593          	li	a1,1
   1fde8:	fcdff06f          	j	1fdb4 <__getf2+0x88>
   1fdec:	fe0898e3          	bnez	a7,1fddc <__getf2+0xb0>
   1fdf0:	fadff06f          	j	1fd9c <__getf2+0x70>
   1fdf4:	fcf368e3          	bltu	t1,a5,1fdc4 <__getf2+0x98>
   1fdf8:	fe5ff06f          	j	1fddc <__getf2+0xb0>
   1fdfc:	f7070ce3          	beq	a4,a6,1fd74 <__getf2+0x48>
   1fe00:	f8071ce3          	bnez	a4,1fd98 <__getf2+0x6c>
   1fe04:	00000893          	li	a7,0
   1fe08:	f85ff06f          	j	1fd8c <__getf2+0x60>

000000000001fe0c <__letf2>:
   1fe0c:	000088b7          	lui	a7,0x8
   1fe10:	0305d813          	srli	a6,a1,0x30
   1fe14:	fff88893          	addi	a7,a7,-1 # 7fff <register_fini-0x80b1>
   1fe18:	fff00793          	li	a5,-1
   1fe1c:	0107d793          	srli	a5,a5,0x10
   1fe20:	0306d713          	srli	a4,a3,0x30
   1fe24:	01187833          	and	a6,a6,a7
   1fe28:	00f5f333          	and	t1,a1,a5
   1fe2c:	01177733          	and	a4,a4,a7
   1fe30:	00f6f7b3          	and	a5,a3,a5
   1fe34:	03f5d593          	srli	a1,a1,0x3f
   1fe38:	03f6d693          	srli	a3,a3,0x3f
   1fe3c:	01181a63          	bne	a6,a7,1fe50 <__letf2+0x44>
   1fe40:	00a368b3          	or	a7,t1,a0
   1fe44:	08088c63          	beqz	a7,1fedc <__letf2+0xd0>
   1fe48:	00200593          	li	a1,2
   1fe4c:	0480006f          	j	1fe94 <__letf2+0x88>
   1fe50:	01171663          	bne	a4,a7,1fe5c <__letf2+0x50>
   1fe54:	00c7e8b3          	or	a7,a5,a2
   1fe58:	fe0898e3          	bnez	a7,1fe48 <__letf2+0x3c>
   1fe5c:	08081263          	bnez	a6,1fee0 <__letf2+0xd4>
   1fe60:	00a368b3          	or	a7,t1,a0
   1fe64:	0018b893          	seqz	a7,a7
   1fe68:	00071663          	bnez	a4,1fe74 <__letf2+0x68>
   1fe6c:	00c7ee33          	or	t3,a5,a2
   1fe70:	040e0e63          	beqz	t3,1fecc <__letf2+0xc0>
   1fe74:	00089a63          	bnez	a7,1fe88 <__letf2+0x7c>
   1fe78:	02d58263          	beq	a1,a3,1fe9c <__letf2+0x90>
   1fe7c:	04058463          	beqz	a1,1fec4 <__letf2+0xb8>
   1fe80:	fff00593          	li	a1,-1
   1fe84:	0100006f          	j	1fe94 <__letf2+0x88>
   1fe88:	fff00593          	li	a1,-1
   1fe8c:	00068463          	beqz	a3,1fe94 <__letf2+0x88>
   1fe90:	00068593          	mv	a1,a3
   1fe94:	00058513          	mv	a0,a1
   1fe98:	00008067          	ret
   1fe9c:	ff0740e3          	blt	a4,a6,1fe7c <__letf2+0x70>
   1fea0:	00e85663          	bge	a6,a4,1feac <__letf2+0xa0>
   1fea4:	fe0598e3          	bnez	a1,1fe94 <__letf2+0x88>
   1fea8:	fd9ff06f          	j	1fe80 <__letf2+0x74>
   1feac:	fc67e8e3          	bltu	a5,t1,1fe7c <__letf2+0x70>
   1feb0:	02f31263          	bne	t1,a5,1fed4 <__letf2+0xc8>
   1feb4:	fca664e3          	bltu	a2,a0,1fe7c <__letf2+0x70>
   1feb8:	fec566e3          	bltu	a0,a2,1fea4 <__letf2+0x98>
   1febc:	00000593          	li	a1,0
   1fec0:	fd5ff06f          	j	1fe94 <__letf2+0x88>
   1fec4:	00100593          	li	a1,1
   1fec8:	fcdff06f          	j	1fe94 <__letf2+0x88>
   1fecc:	fe0898e3          	bnez	a7,1febc <__letf2+0xb0>
   1fed0:	fadff06f          	j	1fe7c <__letf2+0x70>
   1fed4:	fcf368e3          	bltu	t1,a5,1fea4 <__letf2+0x98>
   1fed8:	fe5ff06f          	j	1febc <__letf2+0xb0>
   1fedc:	f7070ce3          	beq	a4,a6,1fe54 <__letf2+0x48>
   1fee0:	f8071ce3          	bnez	a4,1fe78 <__letf2+0x6c>
   1fee4:	00000893          	li	a7,0
   1fee8:	f85ff06f          	j	1fe6c <__letf2+0x60>

000000000001feec <__multf3>:
   1feec:	fa010113          	addi	sp,sp,-96
   1fef0:	00008737          	lui	a4,0x8
   1fef4:	03313c23          	sd	s3,56(sp)
   1fef8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1fefc:	0305d993          	srli	s3,a1,0x30
   1ff00:	04813823          	sd	s0,80(sp)
   1ff04:	04913423          	sd	s1,72(sp)
   1ff08:	03413823          	sd	s4,48(sp)
   1ff0c:	03513423          	sd	s5,40(sp)
   1ff10:	03613023          	sd	s6,32(sp)
   1ff14:	01059493          	slli	s1,a1,0x10
   1ff18:	04113c23          	sd	ra,88(sp)
   1ff1c:	05213023          	sd	s2,64(sp)
   1ff20:	01713c23          	sd	s7,24(sp)
   1ff24:	01813823          	sd	s8,16(sp)
   1ff28:	01913423          	sd	s9,8(sp)
   1ff2c:	00e9f7b3          	and	a5,s3,a4
   1ff30:	00050413          	mv	s0,a0
   1ff34:	00060b13          	mv	s6,a2
   1ff38:	00068a13          	mv	s4,a3
   1ff3c:	0104d493          	srli	s1,s1,0x10
   1ff40:	03f5da93          	srli	s5,a1,0x3f
   1ff44:	0c078463          	beqz	a5,2000c <__multf3+0x120>
   1ff48:	0007899b          	sext.w	s3,a5
   1ff4c:	12e98a63          	beq	s3,a4,20080 <__multf3+0x194>
   1ff50:	00349493          	slli	s1,s1,0x3
   1ff54:	03d55713          	srli	a4,a0,0x3d
   1ff58:	00976733          	or	a4,a4,s1
   1ff5c:	ffffc9b7          	lui	s3,0xffffc
   1ff60:	00100493          	li	s1,1
   1ff64:	03349493          	slli	s1,s1,0x33
   1ff68:	00198993          	addi	s3,s3,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd8df9>
   1ff6c:	009764b3          	or	s1,a4,s1
   1ff70:	00351913          	slli	s2,a0,0x3
   1ff74:	013789b3          	add	s3,a5,s3
   1ff78:	00000b93          	li	s7,0
   1ff7c:	000087b7          	lui	a5,0x8
   1ff80:	030a5513          	srli	a0,s4,0x30
   1ff84:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1ff88:	010a1413          	slli	s0,s4,0x10
   1ff8c:	00f57733          	and	a4,a0,a5
   1ff90:	01045413          	srli	s0,s0,0x10
   1ff94:	03fa5a13          	srli	s4,s4,0x3f
   1ff98:	10070c63          	beqz	a4,200b0 <__multf3+0x1c4>
   1ff9c:	0007051b          	sext.w	a0,a4
   1ffa0:	18f50463          	beq	a0,a5,20128 <__multf3+0x23c>
   1ffa4:	00341413          	slli	s0,s0,0x3
   1ffa8:	03db5593          	srli	a1,s6,0x3d
   1ffac:	0085e5b3          	or	a1,a1,s0
   1ffb0:	ffffc537          	lui	a0,0xffffc
   1ffb4:	00100413          	li	s0,1
   1ffb8:	03341413          	slli	s0,s0,0x33
   1ffbc:	00150513          	addi	a0,a0,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd8df9>
   1ffc0:	0085e433          	or	s0,a1,s0
   1ffc4:	003b1793          	slli	a5,s6,0x3
   1ffc8:	00a70533          	add	a0,a4,a0
   1ffcc:	00000713          	li	a4,0
   1ffd0:	002b9693          	slli	a3,s7,0x2
   1ffd4:	00e6e6b3          	or	a3,a3,a4
   1ffd8:	013509b3          	add	s3,a0,s3
   1ffdc:	fff68693          	addi	a3,a3,-1
   1ffe0:	00e00613          	li	a2,14
   1ffe4:	014ac833          	xor	a6,s5,s4
   1ffe8:	00198893          	addi	a7,s3,1
   1ffec:	16d66663          	bltu	a2,a3,20158 <__multf3+0x26c>
   1fff0:	00002617          	auipc	a2,0x2
   1fff4:	e6060613          	addi	a2,a2,-416 # 21e50 <zeroes.4501+0x88>
   1fff8:	00269693          	slli	a3,a3,0x2
   1fffc:	00c686b3          	add	a3,a3,a2
   20000:	0006a683          	lw	a3,0(a3)
   20004:	00c686b3          	add	a3,a3,a2
   20008:	00068067          	jr	a3
   2000c:	00956933          	or	s2,a0,s1
   20010:	08090263          	beqz	s2,20094 <__multf3+0x1a8>
   20014:	04048663          	beqz	s1,20060 <__multf3+0x174>
   20018:	00048513          	mv	a0,s1
   2001c:	188010ef          	jal	ra,211a4 <__clzdi2>
   20020:	0005051b          	sext.w	a0,a0
   20024:	ff150713          	addi	a4,a0,-15
   20028:	03c00693          	li	a3,60
   2002c:	0007079b          	sext.w	a5,a4
   20030:	04e6c063          	blt	a3,a4,20070 <__multf3+0x184>
   20034:	03d00713          	li	a4,61
   20038:	0037891b          	addiw	s2,a5,3
   2003c:	40f707bb          	subw	a5,a4,a5
   20040:	012494b3          	sll	s1,s1,s2
   20044:	00f457b3          	srl	a5,s0,a5
   20048:	0097e4b3          	or	s1,a5,s1
   2004c:	01241933          	sll	s2,s0,s2
   20050:	ffffc9b7          	lui	s3,0xffffc
   20054:	01198993          	addi	s3,s3,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd8e09>
   20058:	40a989b3          	sub	s3,s3,a0
   2005c:	f1dff06f          	j	1ff78 <__multf3+0x8c>
   20060:	144010ef          	jal	ra,211a4 <__clzdi2>
   20064:	0005051b          	sext.w	a0,a0
   20068:	04050513          	addi	a0,a0,64
   2006c:	fb9ff06f          	j	20024 <__multf3+0x138>
   20070:	fc37849b          	addiw	s1,a5,-61
   20074:	009414b3          	sll	s1,s0,s1
   20078:	00000913          	li	s2,0
   2007c:	fd5ff06f          	j	20050 <__multf3+0x164>
   20080:	00956933          	or	s2,a0,s1
   20084:	02090063          	beqz	s2,200a4 <__multf3+0x1b8>
   20088:	00050913          	mv	s2,a0
   2008c:	00300b93          	li	s7,3
   20090:	eedff06f          	j	1ff7c <__multf3+0x90>
   20094:	00000493          	li	s1,0
   20098:	00000993          	li	s3,0
   2009c:	00100b93          	li	s7,1
   200a0:	eddff06f          	j	1ff7c <__multf3+0x90>
   200a4:	00000493          	li	s1,0
   200a8:	00200b93          	li	s7,2
   200ac:	ed1ff06f          	j	1ff7c <__multf3+0x90>
   200b0:	008b67b3          	or	a5,s6,s0
   200b4:	08078463          	beqz	a5,2013c <__multf3+0x250>
   200b8:	04040663          	beqz	s0,20104 <__multf3+0x218>
   200bc:	00040513          	mv	a0,s0
   200c0:	0e4010ef          	jal	ra,211a4 <__clzdi2>
   200c4:	0005051b          	sext.w	a0,a0
   200c8:	ff150793          	addi	a5,a0,-15
   200cc:	03c00693          	li	a3,60
   200d0:	0007871b          	sext.w	a4,a5
   200d4:	04f6c263          	blt	a3,a5,20118 <__multf3+0x22c>
   200d8:	03d00693          	li	a3,61
   200dc:	0037079b          	addiw	a5,a4,3
   200e0:	40e6873b          	subw	a4,a3,a4
   200e4:	00f41433          	sll	s0,s0,a5
   200e8:	00eb5733          	srl	a4,s6,a4
   200ec:	00876433          	or	s0,a4,s0
   200f0:	00fb17b3          	sll	a5,s6,a5
   200f4:	ffffc737          	lui	a4,0xffffc
   200f8:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd8e09>
   200fc:	40a70533          	sub	a0,a4,a0
   20100:	ecdff06f          	j	1ffcc <__multf3+0xe0>
   20104:	000b0513          	mv	a0,s6
   20108:	09c010ef          	jal	ra,211a4 <__clzdi2>
   2010c:	0005051b          	sext.w	a0,a0
   20110:	04050513          	addi	a0,a0,64
   20114:	fb5ff06f          	j	200c8 <__multf3+0x1dc>
   20118:	fc37041b          	addiw	s0,a4,-61
   2011c:	008b1433          	sll	s0,s6,s0
   20120:	00000793          	li	a5,0
   20124:	fd1ff06f          	j	200f4 <__multf3+0x208>
   20128:	008b67b3          	or	a5,s6,s0
   2012c:	02078063          	beqz	a5,2014c <__multf3+0x260>
   20130:	000b0793          	mv	a5,s6
   20134:	00300713          	li	a4,3
   20138:	e99ff06f          	j	1ffd0 <__multf3+0xe4>
   2013c:	00000413          	li	s0,0
   20140:	00000513          	li	a0,0
   20144:	00100713          	li	a4,1
   20148:	e89ff06f          	j	1ffd0 <__multf3+0xe4>
   2014c:	00000413          	li	s0,0
   20150:	00200713          	li	a4,2
   20154:	e7dff06f          	j	1ffd0 <__multf3+0xe4>
   20158:	fff00713          	li	a4,-1
   2015c:	01248ab3          	add	s5,s1,s2
   20160:	00878a33          	add	s4,a5,s0
   20164:	02075713          	srli	a4,a4,0x20
   20168:	012ab2b3          	sltu	t0,s5,s2
   2016c:	00fa33b3          	sltu	t2,s4,a5
   20170:	02095b13          	srli	s6,s2,0x20
   20174:	0207df93          	srli	t6,a5,0x20
   20178:	00e97933          	and	s2,s2,a4
   2017c:	00e7f7b3          	and	a5,a5,a4
   20180:	00028f1b          	sext.w	t5,t0
   20184:	00038e1b          	sext.w	t3,t2
   20188:	00090513          	mv	a0,s2
   2018c:	00078593          	mv	a1,a5
   20190:	7f1000ef          	jal	ra,21180 <__muldi3>
   20194:	00050e93          	mv	t4,a0
   20198:	000f8593          	mv	a1,t6
   2019c:	00090513          	mv	a0,s2
   201a0:	7e1000ef          	jal	ra,21180 <__muldi3>
   201a4:	00050313          	mv	t1,a0
   201a8:	00078593          	mv	a1,a5
   201ac:	000b0513          	mv	a0,s6
   201b0:	7d1000ef          	jal	ra,21180 <__muldi3>
   201b4:	00050713          	mv	a4,a0
   201b8:	000f8593          	mv	a1,t6
   201bc:	000b0513          	mv	a0,s6
   201c0:	7c1000ef          	jal	ra,21180 <__muldi3>
   201c4:	020ed793          	srli	a5,t4,0x20
   201c8:	00e30333          	add	t1,t1,a4
   201cc:	006787b3          	add	a5,a5,t1
   201d0:	00e7f863          	bgeu	a5,a4,201e0 <__multf3+0x2f4>
   201d4:	00100713          	li	a4,1
   201d8:	02071713          	slli	a4,a4,0x20
   201dc:	00e50533          	add	a0,a0,a4
   201e0:	fff00713          	li	a4,-1
   201e4:	02075713          	srli	a4,a4,0x20
   201e8:	00e7f333          	and	t1,a5,a4
   201ec:	00eefeb3          	and	t4,t4,a4
   201f0:	00eafb33          	and	s6,s5,a4
   201f4:	0207df93          	srli	t6,a5,0x20
   201f8:	00ea7733          	and	a4,s4,a4
   201fc:	02031313          	slli	t1,t1,0x20
   20200:	00af8fb3          	add	t6,t6,a0
   20204:	01d30333          	add	t1,t1,t4
   20208:	020ad913          	srli	s2,s5,0x20
   2020c:	020a5793          	srli	a5,s4,0x20
   20210:	000b0513          	mv	a0,s6
   20214:	00070593          	mv	a1,a4
   20218:	769000ef          	jal	ra,21180 <__muldi3>
   2021c:	00050e93          	mv	t4,a0
   20220:	00078593          	mv	a1,a5
   20224:	000b0513          	mv	a0,s6
   20228:	759000ef          	jal	ra,21180 <__muldi3>
   2022c:	00050b93          	mv	s7,a0
   20230:	00070593          	mv	a1,a4
   20234:	00090513          	mv	a0,s2
   20238:	749000ef          	jal	ra,21180 <__muldi3>
   2023c:	00050713          	mv	a4,a0
   20240:	00078593          	mv	a1,a5
   20244:	00090513          	mv	a0,s2
   20248:	739000ef          	jal	ra,21180 <__muldi3>
   2024c:	020ed693          	srli	a3,t4,0x20
   20250:	00eb8bb3          	add	s7,s7,a4
   20254:	017686b3          	add	a3,a3,s7
   20258:	00050b13          	mv	s6,a0
   2025c:	00e6f863          	bgeu	a3,a4,2026c <__multf3+0x380>
   20260:	00100793          	li	a5,1
   20264:	02079793          	slli	a5,a5,0x20
   20268:	00f50b33          	add	s6,a0,a5
   2026c:	fff00593          	li	a1,-1
   20270:	0205d593          	srli	a1,a1,0x20
   20274:	0206d913          	srli	s2,a3,0x20
   20278:	00b6f6b3          	and	a3,a3,a1
   2027c:	02069693          	slli	a3,a3,0x20
   20280:	00befeb3          	and	t4,t4,a1
   20284:	0204dc93          	srli	s9,s1,0x20
   20288:	02045c13          	srli	s8,s0,0x20
   2028c:	00b4f4b3          	and	s1,s1,a1
   20290:	00b47433          	and	s0,s0,a1
   20294:	01d68eb3          	add	t4,a3,t4
   20298:	00048513          	mv	a0,s1
   2029c:	00040593          	mv	a1,s0
   202a0:	6e1000ef          	jal	ra,21180 <__muldi3>
   202a4:	00050b93          	mv	s7,a0
   202a8:	000c0593          	mv	a1,s8
   202ac:	00048513          	mv	a0,s1
   202b0:	6d1000ef          	jal	ra,21180 <__muldi3>
   202b4:	00050713          	mv	a4,a0
   202b8:	00040593          	mv	a1,s0
   202bc:	000c8513          	mv	a0,s9
   202c0:	6c1000ef          	jal	ra,21180 <__muldi3>
   202c4:	00050793          	mv	a5,a0
   202c8:	000c0593          	mv	a1,s8
   202cc:	000c8513          	mv	a0,s9
   202d0:	6b1000ef          	jal	ra,21180 <__muldi3>
   202d4:	020bd613          	srli	a2,s7,0x20
   202d8:	00f70733          	add	a4,a4,a5
   202dc:	00e60633          	add	a2,a2,a4
   202e0:	00f67863          	bgeu	a2,a5,202f0 <__multf3+0x404>
   202e4:	00100793          	li	a5,1
   202e8:	02079793          	slli	a5,a5,0x20
   202ec:	00f50533          	add	a0,a0,a5
   202f0:	02065693          	srli	a3,a2,0x20
   202f4:	00a687b3          	add	a5,a3,a0
   202f8:	fff00693          	li	a3,-1
   202fc:	0206d693          	srli	a3,a3,0x20
   20300:	00d67733          	and	a4,a2,a3
   20304:	00dbfbb3          	and	s7,s7,a3
   20308:	01fe86b3          	add	a3,t4,t6
   2030c:	01f6b633          	sltu	a2,a3,t6
   20310:	00c90533          	add	a0,s2,a2
   20314:	41c005b3          	neg	a1,t3
   20318:	01650533          	add	a0,a0,s6
   2031c:	0155f5b3          	and	a1,a1,s5
   20320:	41e00e33          	neg	t3,t5
   20324:	00a585b3          	add	a1,a1,a0
   20328:	00c53633          	sltu	a2,a0,a2
   2032c:	014e7e33          	and	t3,t3,s4
   20330:	0072f433          	and	s0,t0,t2
   20334:	00be0e33          	add	t3,t3,a1
   20338:	00a5b533          	sltu	a0,a1,a0
   2033c:	00860433          	add	s0,a2,s0
   20340:	40668eb3          	sub	t4,a3,t1
   20344:	00a40433          	add	s0,s0,a0
   20348:	00be35b3          	sltu	a1,t3,a1
   2034c:	41fe0633          	sub	a2,t3,t6
   20350:	01d6b533          	sltu	a0,a3,t4
   20354:	02071713          	slli	a4,a4,0x20
   20358:	00b40433          	add	s0,s0,a1
   2035c:	01770733          	add	a4,a4,s7
   20360:	00ce35b3          	sltu	a1,t3,a2
   20364:	40a60633          	sub	a2,a2,a0
   20368:	00000513          	li	a0,0
   2036c:	01d6f663          	bgeu	a3,t4,20378 <__multf3+0x48c>
   20370:	41cf8e33          	sub	t3,t6,t3
   20374:	001e3513          	seqz	a0,t3
   20378:	00b56e33          	or	t3,a0,a1
   2037c:	40ee85b3          	sub	a1,t4,a4
   20380:	40f606b3          	sub	a3,a2,a5
   20384:	00f40433          	add	s0,s0,a5
   20388:	00beb7b3          	sltu	a5,t4,a1
   2038c:	00d63633          	sltu	a2,a2,a3
   20390:	40f707b3          	sub	a5,a4,a5
   20394:	00000513          	li	a0,0
   20398:	00bef463          	bgeu	t4,a1,203a0 <__multf3+0x4b4>
   2039c:	0016b513          	seqz	a0,a3
   203a0:	00f686b3          	add	a3,a3,a5
   203a4:	00e6b733          	sltu	a4,a3,a4
   203a8:	00870433          	add	s0,a4,s0
   203ac:	41c40433          	sub	s0,s0,t3
   203b0:	00c56633          	or	a2,a0,a2
   203b4:	40c40433          	sub	s0,s0,a2
   203b8:	0336d793          	srli	a5,a3,0x33
   203bc:	00d41413          	slli	s0,s0,0xd
   203c0:	00f46433          	or	s0,s0,a5
   203c4:	00d59793          	slli	a5,a1,0xd
   203c8:	0067e7b3          	or	a5,a5,t1
   203cc:	00f037b3          	snez	a5,a5
   203d0:	0335d593          	srli	a1,a1,0x33
   203d4:	00b7e7b3          	or	a5,a5,a1
   203d8:	00d69693          	slli	a3,a3,0xd
   203dc:	00b41713          	slli	a4,s0,0xb
   203e0:	00d7e7b3          	or	a5,a5,a3
   203e4:	10075c63          	bgez	a4,204fc <__multf3+0x610>
   203e8:	0017d713          	srli	a4,a5,0x1
   203ec:	0017f793          	andi	a5,a5,1
   203f0:	03f41513          	slli	a0,s0,0x3f
   203f4:	00f767b3          	or	a5,a4,a5
   203f8:	00a7e7b3          	or	a5,a5,a0
   203fc:	00145413          	srli	s0,s0,0x1
   20400:	00004737          	lui	a4,0x4
   20404:	fff70713          	addi	a4,a4,-1 # 3fff <register_fini-0xc0b1>
   20408:	00e88733          	add	a4,a7,a4
   2040c:	0ee05c63          	blez	a4,20504 <__multf3+0x618>
   20410:	0077f693          	andi	a3,a5,7
   20414:	02068063          	beqz	a3,20434 <__multf3+0x548>
   20418:	00f7f693          	andi	a3,a5,15
   2041c:	00400613          	li	a2,4
   20420:	00c68a63          	beq	a3,a2,20434 <__multf3+0x548>
   20424:	00478693          	addi	a3,a5,4
   20428:	00f6b7b3          	sltu	a5,a3,a5
   2042c:	00f40433          	add	s0,s0,a5
   20430:	00068793          	mv	a5,a3
   20434:	00b41693          	slli	a3,s0,0xb
   20438:	0006de63          	bgez	a3,20454 <__multf3+0x568>
   2043c:	fff00713          	li	a4,-1
   20440:	03471713          	slli	a4,a4,0x34
   20444:	fff70713          	addi	a4,a4,-1
   20448:	00e47433          	and	s0,s0,a4
   2044c:	00004737          	lui	a4,0x4
   20450:	00e88733          	add	a4,a7,a4
   20454:	000086b7          	lui	a3,0x8
   20458:	ffe68613          	addi	a2,a3,-2 # 7ffe <register_fini-0x80b2>
   2045c:	18e64863          	blt	a2,a4,205ec <__multf3+0x700>
   20460:	03d41513          	slli	a0,s0,0x3d
   20464:	0037d793          	srli	a5,a5,0x3
   20468:	00f56533          	or	a0,a0,a5
   2046c:	00345413          	srli	s0,s0,0x3
   20470:	01041413          	slli	s0,s0,0x10
   20474:	03171713          	slli	a4,a4,0x31
   20478:	00175713          	srli	a4,a4,0x1
   2047c:	01045413          	srli	s0,s0,0x10
   20480:	00e46433          	or	s0,s0,a4
   20484:	03f81593          	slli	a1,a6,0x3f
   20488:	00b465b3          	or	a1,s0,a1
   2048c:	05813083          	ld	ra,88(sp)
   20490:	05013403          	ld	s0,80(sp)
   20494:	04813483          	ld	s1,72(sp)
   20498:	04013903          	ld	s2,64(sp)
   2049c:	03813983          	ld	s3,56(sp)
   204a0:	03013a03          	ld	s4,48(sp)
   204a4:	02813a83          	ld	s5,40(sp)
   204a8:	02013b03          	ld	s6,32(sp)
   204ac:	01813b83          	ld	s7,24(sp)
   204b0:	01013c03          	ld	s8,16(sp)
   204b4:	00813c83          	ld	s9,8(sp)
   204b8:	06010113          	addi	sp,sp,96
   204bc:	00008067          	ret
   204c0:	000a8813          	mv	a6,s5
   204c4:	00048413          	mv	s0,s1
   204c8:	00090793          	mv	a5,s2
   204cc:	000b8713          	mv	a4,s7
   204d0:	00200693          	li	a3,2
   204d4:	0ed70463          	beq	a4,a3,205bc <__multf3+0x6d0>
   204d8:	00300693          	li	a3,3
   204dc:	0ed70a63          	beq	a4,a3,205d0 <__multf3+0x6e4>
   204e0:	00100693          	li	a3,1
   204e4:	f0d71ee3          	bne	a4,a3,20400 <__multf3+0x514>
   204e8:	00000413          	li	s0,0
   204ec:	00000513          	li	a0,0
   204f0:	0900006f          	j	20580 <__multf3+0x694>
   204f4:	000a0813          	mv	a6,s4
   204f8:	fd9ff06f          	j	204d0 <__multf3+0x5e4>
   204fc:	00098893          	mv	a7,s3
   20500:	f01ff06f          	j	20400 <__multf3+0x514>
   20504:	00100693          	li	a3,1
   20508:	40e68733          	sub	a4,a3,a4
   2050c:	07400693          	li	a3,116
   20510:	fce6cce3          	blt	a3,a4,204e8 <__multf3+0x5fc>
   20514:	03f00693          	li	a3,63
   20518:	0007059b          	sext.w	a1,a4
   2051c:	06e6c663          	blt	a3,a4,20588 <__multf3+0x69c>
   20520:	04000713          	li	a4,64
   20524:	40b7073b          	subw	a4,a4,a1
   20528:	00e41533          	sll	a0,s0,a4
   2052c:	00b7d6b3          	srl	a3,a5,a1
   20530:	00e797b3          	sll	a5,a5,a4
   20534:	00d56533          	or	a0,a0,a3
   20538:	00f037b3          	snez	a5,a5
   2053c:	00f567b3          	or	a5,a0,a5
   20540:	00b45433          	srl	s0,s0,a1
   20544:	0077f713          	andi	a4,a5,7
   20548:	02070063          	beqz	a4,20568 <__multf3+0x67c>
   2054c:	00f7f713          	andi	a4,a5,15
   20550:	00400693          	li	a3,4
   20554:	00d70a63          	beq	a4,a3,20568 <__multf3+0x67c>
   20558:	00478713          	addi	a4,a5,4
   2055c:	00f737b3          	sltu	a5,a4,a5
   20560:	00f40433          	add	s0,s0,a5
   20564:	00070793          	mv	a5,a4
   20568:	00c41713          	slli	a4,s0,0xc
   2056c:	08074863          	bltz	a4,205fc <__multf3+0x710>
   20570:	03d41513          	slli	a0,s0,0x3d
   20574:	0037d793          	srli	a5,a5,0x3
   20578:	00f56533          	or	a0,a0,a5
   2057c:	00345413          	srli	s0,s0,0x3
   20580:	00000713          	li	a4,0
   20584:	eedff06f          	j	20470 <__multf3+0x584>
   20588:	fc05851b          	addiw	a0,a1,-64
   2058c:	04000613          	li	a2,64
   20590:	00a45533          	srl	a0,s0,a0
   20594:	00000693          	li	a3,0
   20598:	00c70863          	beq	a4,a2,205a8 <__multf3+0x6bc>
   2059c:	08000693          	li	a3,128
   205a0:	40b686bb          	subw	a3,a3,a1
   205a4:	00d416b3          	sll	a3,s0,a3
   205a8:	00f6e7b3          	or	a5,a3,a5
   205ac:	00f037b3          	snez	a5,a5
   205b0:	00f567b3          	or	a5,a0,a5
   205b4:	00000413          	li	s0,0
   205b8:	f8dff06f          	j	20544 <__multf3+0x658>
   205bc:	00008737          	lui	a4,0x8
   205c0:	00000413          	li	s0,0
   205c4:	00000513          	li	a0,0
   205c8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   205cc:	ea5ff06f          	j	20470 <__multf3+0x584>
   205d0:	00100413          	li	s0,1
   205d4:	00008737          	lui	a4,0x8
   205d8:	02f41413          	slli	s0,s0,0x2f
   205dc:	00000513          	li	a0,0
   205e0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   205e4:	00000813          	li	a6,0
   205e8:	e89ff06f          	j	20470 <__multf3+0x584>
   205ec:	00000413          	li	s0,0
   205f0:	00000513          	li	a0,0
   205f4:	fff68713          	addi	a4,a3,-1
   205f8:	e79ff06f          	j	20470 <__multf3+0x584>
   205fc:	00000413          	li	s0,0
   20600:	00000513          	li	a0,0
   20604:	00100713          	li	a4,1
   20608:	e69ff06f          	j	20470 <__multf3+0x584>

000000000002060c <__subtf3>:
   2060c:	fff00313          	li	t1,-1
   20610:	fd010113          	addi	sp,sp,-48
   20614:	01035313          	srli	t1,t1,0x10
   20618:	00008837          	lui	a6,0x8
   2061c:	0305de93          	srli	t4,a1,0x30
   20620:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   20624:	0306d893          	srli	a7,a3,0x30
   20628:	00913c23          	sd	s1,24(sp)
   2062c:	03f6de13          	srli	t3,a3,0x3f
   20630:	03f5d493          	srli	s1,a1,0x3f
   20634:	0066f6b3          	and	a3,a3,t1
   20638:	0065f5b3          	and	a1,a1,t1
   2063c:	03d55793          	srli	a5,a0,0x3d
   20640:	03d65713          	srli	a4,a2,0x3d
   20644:	02813023          	sd	s0,32(sp)
   20648:	010efeb3          	and	t4,t4,a6
   2064c:	00359593          	slli	a1,a1,0x3
   20650:	00369693          	slli	a3,a3,0x3
   20654:	02113423          	sd	ra,40(sp)
   20658:	01213823          	sd	s2,16(sp)
   2065c:	01313423          	sd	s3,8(sp)
   20660:	0108f8b3          	and	a7,a7,a6
   20664:	000e8413          	mv	s0,t4
   20668:	00b7e7b3          	or	a5,a5,a1
   2066c:	00351513          	slli	a0,a0,0x3
   20670:	00d766b3          	or	a3,a4,a3
   20674:	00361613          	slli	a2,a2,0x3
   20678:	01089663          	bne	a7,a6,20684 <__subtf3+0x78>
   2067c:	00c6e733          	or	a4,a3,a2
   20680:	00071463          	bnez	a4,20688 <__subtf3+0x7c>
   20684:	001e4e13          	xori	t3,t3,1
   20688:	411e873b          	subw	a4,t4,a7
   2068c:	000085b7          	lui	a1,0x8
   20690:	0007081b          	sext.w	a6,a4
   20694:	fff58313          	addi	t1,a1,-1 # 7fff <register_fini-0x80b1>
   20698:	2a9e1a63          	bne	t3,s1,2094c <__subtf3+0x340>
   2069c:	13005a63          	blez	a6,207d0 <__subtf3+0x1c4>
   206a0:	08089c63          	bnez	a7,20738 <__subtf3+0x12c>
   206a4:	00c6e5b3          	or	a1,a3,a2
   206a8:	06058463          	beqz	a1,20710 <__subtf3+0x104>
   206ac:	fff7081b          	addiw	a6,a4,-1
   206b0:	04081e63          	bnez	a6,2070c <__subtf3+0x100>
   206b4:	00c50633          	add	a2,a0,a2
   206b8:	00d787b3          	add	a5,a5,a3
   206bc:	00a63533          	sltu	a0,a2,a0
   206c0:	00a787b3          	add	a5,a5,a0
   206c4:	00060513          	mv	a0,a2
   206c8:	00c79713          	slli	a4,a5,0xc
   206cc:	04075263          	bgez	a4,20710 <__subtf3+0x104>
   206d0:	00008737          	lui	a4,0x8
   206d4:	00140413          	addi	s0,s0,1
   206d8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   206dc:	60e40c63          	beq	s0,a4,20cf4 <__subtf3+0x6e8>
   206e0:	fff00593          	li	a1,-1
   206e4:	03359593          	slli	a1,a1,0x33
   206e8:	fff58593          	addi	a1,a1,-1
   206ec:	00b7f5b3          	and	a1,a5,a1
   206f0:	00155813          	srli	a6,a0,0x1
   206f4:	00157513          	andi	a0,a0,1
   206f8:	03f59793          	slli	a5,a1,0x3f
   206fc:	00a86533          	or	a0,a6,a0
   20700:	00a7e533          	or	a0,a5,a0
   20704:	0015d793          	srli	a5,a1,0x1
   20708:	0080006f          	j	20710 <__subtf3+0x104>
   2070c:	026e9e63          	bne	t4,t1,20748 <__subtf3+0x13c>
   20710:	00757713          	andi	a4,a0,7
   20714:	5e070463          	beqz	a4,20cfc <__subtf3+0x6f0>
   20718:	00f57713          	andi	a4,a0,15
   2071c:	00400693          	li	a3,4
   20720:	5cd70e63          	beq	a4,a3,20cfc <__subtf3+0x6f0>
   20724:	00450593          	addi	a1,a0,4
   20728:	00a5b533          	sltu	a0,a1,a0
   2072c:	00a787b3          	add	a5,a5,a0
   20730:	00058513          	mv	a0,a1
   20734:	5c80006f          	j	20cfc <__subtf3+0x6f0>
   20738:	fc6e8ce3          	beq	t4,t1,20710 <__subtf3+0x104>
   2073c:	00100713          	li	a4,1
   20740:	03371713          	slli	a4,a4,0x33
   20744:	00e6e6b3          	or	a3,a3,a4
   20748:	07400713          	li	a4,116
   2074c:	07074c63          	blt	a4,a6,207c4 <__subtf3+0x1b8>
   20750:	03f00713          	li	a4,63
   20754:	03074e63          	blt	a4,a6,20790 <__subtf3+0x184>
   20758:	04000593          	li	a1,64
   2075c:	410585bb          	subw	a1,a1,a6
   20760:	00b69733          	sll	a4,a3,a1
   20764:	010658b3          	srl	a7,a2,a6
   20768:	00b61633          	sll	a2,a2,a1
   2076c:	01176733          	or	a4,a4,a7
   20770:	00c03633          	snez	a2,a2
   20774:	00c76633          	or	a2,a4,a2
   20778:	0106d6b3          	srl	a3,a3,a6
   2077c:	00a60633          	add	a2,a2,a0
   20780:	00f686b3          	add	a3,a3,a5
   20784:	00a637b3          	sltu	a5,a2,a0
   20788:	00f687b3          	add	a5,a3,a5
   2078c:	f39ff06f          	j	206c4 <__subtf3+0xb8>
   20790:	fc08071b          	addiw	a4,a6,-64
   20794:	04000893          	li	a7,64
   20798:	00e6d733          	srl	a4,a3,a4
   2079c:	00000593          	li	a1,0
   207a0:	01180863          	beq	a6,a7,207b0 <__subtf3+0x1a4>
   207a4:	08000593          	li	a1,128
   207a8:	4105883b          	subw	a6,a1,a6
   207ac:	010695b3          	sll	a1,a3,a6
   207b0:	00c5e633          	or	a2,a1,a2
   207b4:	00c03633          	snez	a2,a2
   207b8:	00c76633          	or	a2,a4,a2
   207bc:	00000693          	li	a3,0
   207c0:	fbdff06f          	j	2077c <__subtf3+0x170>
   207c4:	00c6e633          	or	a2,a3,a2
   207c8:	00c03633          	snez	a2,a2
   207cc:	ff1ff06f          	j	207bc <__subtf3+0x1b0>
   207d0:	0c080a63          	beqz	a6,208a4 <__subtf3+0x298>
   207d4:	060e9c63          	bnez	t4,2084c <__subtf3+0x240>
   207d8:	00a7e5b3          	or	a1,a5,a0
   207dc:	4e058663          	beqz	a1,20cc8 <__subtf3+0x6bc>
   207e0:	fff00593          	li	a1,-1
   207e4:	00b81e63          	bne	a6,a1,20800 <__subtf3+0x1f4>
   207e8:	00c50533          	add	a0,a0,a2
   207ec:	00d787b3          	add	a5,a5,a3
   207f0:	00c53633          	sltu	a2,a0,a2
   207f4:	00c787b3          	add	a5,a5,a2
   207f8:	00088413          	mv	s0,a7
   207fc:	ecdff06f          	j	206c8 <__subtf3+0xbc>
   20800:	4c688463          	beq	a7,t1,20cc8 <__subtf3+0x6bc>
   20804:	fff74713          	not	a4,a4
   20808:	0007071b          	sext.w	a4,a4
   2080c:	07400593          	li	a1,116
   20810:	08e5c463          	blt	a1,a4,20898 <__subtf3+0x28c>
   20814:	03f00593          	li	a1,63
   20818:	04e5c663          	blt	a1,a4,20864 <__subtf3+0x258>
   2081c:	04000813          	li	a6,64
   20820:	40e8083b          	subw	a6,a6,a4
   20824:	00e55333          	srl	t1,a0,a4
   20828:	010795b3          	sll	a1,a5,a6
   2082c:	01051533          	sll	a0,a0,a6
   20830:	0065e5b3          	or	a1,a1,t1
   20834:	00a03533          	snez	a0,a0
   20838:	00a5e533          	or	a0,a1,a0
   2083c:	00e7d733          	srl	a4,a5,a4
   20840:	00c50533          	add	a0,a0,a2
   20844:	00d707b3          	add	a5,a4,a3
   20848:	fa9ff06f          	j	207f0 <__subtf3+0x1e4>
   2084c:	46688e63          	beq	a7,t1,20cc8 <__subtf3+0x6bc>
   20850:	00100593          	li	a1,1
   20854:	03359593          	slli	a1,a1,0x33
   20858:	40e0073b          	negw	a4,a4
   2085c:	00b7e7b3          	or	a5,a5,a1
   20860:	fadff06f          	j	2080c <__subtf3+0x200>
   20864:	fc07059b          	addiw	a1,a4,-64
   20868:	04000313          	li	t1,64
   2086c:	00b7d5b3          	srl	a1,a5,a1
   20870:	00000813          	li	a6,0
   20874:	00670863          	beq	a4,t1,20884 <__subtf3+0x278>
   20878:	08000813          	li	a6,128
   2087c:	40e8073b          	subw	a4,a6,a4
   20880:	00e79833          	sll	a6,a5,a4
   20884:	00a86533          	or	a0,a6,a0
   20888:	00a03533          	snez	a0,a0
   2088c:	00a5e533          	or	a0,a1,a0
   20890:	00000713          	li	a4,0
   20894:	fadff06f          	j	20840 <__subtf3+0x234>
   20898:	00a7e533          	or	a0,a5,a0
   2089c:	00a03533          	snez	a0,a0
   208a0:	ff1ff06f          	j	20890 <__subtf3+0x284>
   208a4:	001e8813          	addi	a6,t4,1
   208a8:	ffe58593          	addi	a1,a1,-2
   208ac:	00b875b3          	and	a1,a6,a1
   208b0:	06059863          	bnez	a1,20920 <__subtf3+0x314>
   208b4:	00a7e733          	or	a4,a5,a0
   208b8:	040e9263          	bnez	t4,208fc <__subtf3+0x2f0>
   208bc:	40070e63          	beqz	a4,20cd8 <__subtf3+0x6cc>
   208c0:	00c6e733          	or	a4,a3,a2
   208c4:	e40706e3          	beqz	a4,20710 <__subtf3+0x104>
   208c8:	00c50633          	add	a2,a0,a2
   208cc:	00a63533          	sltu	a0,a2,a0
   208d0:	00d787b3          	add	a5,a5,a3
   208d4:	00a787b3          	add	a5,a5,a0
   208d8:	00c79713          	slli	a4,a5,0xc
   208dc:	00060513          	mv	a0,a2
   208e0:	e20758e3          	bgez	a4,20710 <__subtf3+0x104>
   208e4:	fff00713          	li	a4,-1
   208e8:	03371713          	slli	a4,a4,0x33
   208ec:	fff70713          	addi	a4,a4,-1
   208f0:	00e7f7b3          	and	a5,a5,a4
   208f4:	00100413          	li	s0,1
   208f8:	e19ff06f          	j	20710 <__subtf3+0x104>
   208fc:	3e070463          	beqz	a4,20ce4 <__subtf3+0x6d8>
   20900:	00c6e633          	or	a2,a3,a2
   20904:	28060863          	beqz	a2,20b94 <__subtf3+0x588>
   20908:	00100793          	li	a5,1
   2090c:	00000493          	li	s1,0
   20910:	03279793          	slli	a5,a5,0x32
   20914:	00000513          	li	a0,0
   20918:	00030413          	mv	s0,t1
   2091c:	3e00006f          	j	20cfc <__subtf3+0x6f0>
   20920:	3c680863          	beq	a6,t1,20cf0 <__subtf3+0x6e4>
   20924:	00c50633          	add	a2,a0,a2
   20928:	00d786b3          	add	a3,a5,a3
   2092c:	00a637b3          	sltu	a5,a2,a0
   20930:	00f686b3          	add	a3,a3,a5
   20934:	03f69513          	slli	a0,a3,0x3f
   20938:	00165613          	srli	a2,a2,0x1
   2093c:	00c56533          	or	a0,a0,a2
   20940:	0016d793          	srli	a5,a3,0x1
   20944:	00080413          	mv	s0,a6
   20948:	dc9ff06f          	j	20710 <__subtf3+0x104>
   2094c:	0f005263          	blez	a6,20a30 <__subtf3+0x424>
   20950:	08089663          	bnez	a7,209dc <__subtf3+0x3d0>
   20954:	00c6e5b3          	or	a1,a3,a2
   20958:	da058ce3          	beqz	a1,20710 <__subtf3+0x104>
   2095c:	fff7081b          	addiw	a6,a4,-1
   20960:	02081863          	bnez	a6,20990 <__subtf3+0x384>
   20964:	40c50633          	sub	a2,a0,a2
   20968:	40d787b3          	sub	a5,a5,a3
   2096c:	00c53533          	sltu	a0,a0,a2
   20970:	40a787b3          	sub	a5,a5,a0
   20974:	00060513          	mv	a0,a2
   20978:	00c79713          	slli	a4,a5,0xc
   2097c:	d8075ae3          	bgez	a4,20710 <__subtf3+0x104>
   20980:	00d79913          	slli	s2,a5,0xd
   20984:	00d95913          	srli	s2,s2,0xd
   20988:	00050993          	mv	s3,a0
   2098c:	2440006f          	j	20bd0 <__subtf3+0x5c4>
   20990:	d86e80e3          	beq	t4,t1,20710 <__subtf3+0x104>
   20994:	07400713          	li	a4,116
   20998:	09074663          	blt	a4,a6,20a24 <__subtf3+0x418>
   2099c:	03f00713          	li	a4,63
   209a0:	05074863          	blt	a4,a6,209f0 <__subtf3+0x3e4>
   209a4:	04000593          	li	a1,64
   209a8:	410585bb          	subw	a1,a1,a6
   209ac:	00b69733          	sll	a4,a3,a1
   209b0:	010658b3          	srl	a7,a2,a6
   209b4:	00b61633          	sll	a2,a2,a1
   209b8:	01176733          	or	a4,a4,a7
   209bc:	00c03633          	snez	a2,a2
   209c0:	00c76633          	or	a2,a4,a2
   209c4:	0106d6b3          	srl	a3,a3,a6
   209c8:	40c50633          	sub	a2,a0,a2
   209cc:	40d786b3          	sub	a3,a5,a3
   209d0:	00c537b3          	sltu	a5,a0,a2
   209d4:	40f687b3          	sub	a5,a3,a5
   209d8:	f9dff06f          	j	20974 <__subtf3+0x368>
   209dc:	d26e8ae3          	beq	t4,t1,20710 <__subtf3+0x104>
   209e0:	00100713          	li	a4,1
   209e4:	03371713          	slli	a4,a4,0x33
   209e8:	00e6e6b3          	or	a3,a3,a4
   209ec:	fa9ff06f          	j	20994 <__subtf3+0x388>
   209f0:	fc08071b          	addiw	a4,a6,-64
   209f4:	04000893          	li	a7,64
   209f8:	00e6d733          	srl	a4,a3,a4
   209fc:	00000593          	li	a1,0
   20a00:	01180863          	beq	a6,a7,20a10 <__subtf3+0x404>
   20a04:	08000593          	li	a1,128
   20a08:	4105883b          	subw	a6,a1,a6
   20a0c:	010695b3          	sll	a1,a3,a6
   20a10:	00c5e633          	or	a2,a1,a2
   20a14:	00c03633          	snez	a2,a2
   20a18:	00c76633          	or	a2,a4,a2
   20a1c:	00000693          	li	a3,0
   20a20:	fa9ff06f          	j	209c8 <__subtf3+0x3bc>
   20a24:	00c6e633          	or	a2,a3,a2
   20a28:	00c03633          	snez	a2,a2
   20a2c:	ff1ff06f          	j	20a1c <__subtf3+0x410>
   20a30:	0c080c63          	beqz	a6,20b08 <__subtf3+0x4fc>
   20a34:	060e9e63          	bnez	t4,20ab0 <__subtf3+0x4a4>
   20a38:	00a7e5b3          	or	a1,a5,a0
   20a3c:	34058c63          	beqz	a1,20d94 <__subtf3+0x788>
   20a40:	fff00593          	li	a1,-1
   20a44:	02b81063          	bne	a6,a1,20a64 <__subtf3+0x458>
   20a48:	40a60533          	sub	a0,a2,a0
   20a4c:	40f687b3          	sub	a5,a3,a5
   20a50:	00a63633          	sltu	a2,a2,a0
   20a54:	40c787b3          	sub	a5,a5,a2
   20a58:	00088413          	mv	s0,a7
   20a5c:	000e0493          	mv	s1,t3
   20a60:	f19ff06f          	j	20978 <__subtf3+0x36c>
   20a64:	32688863          	beq	a7,t1,20d94 <__subtf3+0x788>
   20a68:	fff74713          	not	a4,a4
   20a6c:	0007071b          	sext.w	a4,a4
   20a70:	07400593          	li	a1,116
   20a74:	08e5c463          	blt	a1,a4,20afc <__subtf3+0x4f0>
   20a78:	03f00593          	li	a1,63
   20a7c:	04e5c663          	blt	a1,a4,20ac8 <__subtf3+0x4bc>
   20a80:	04000813          	li	a6,64
   20a84:	40e8083b          	subw	a6,a6,a4
   20a88:	00e55333          	srl	t1,a0,a4
   20a8c:	010795b3          	sll	a1,a5,a6
   20a90:	01051533          	sll	a0,a0,a6
   20a94:	0065e5b3          	or	a1,a1,t1
   20a98:	00a03533          	snez	a0,a0
   20a9c:	00a5e533          	or	a0,a1,a0
   20aa0:	00e7d733          	srl	a4,a5,a4
   20aa4:	40a60533          	sub	a0,a2,a0
   20aa8:	40e687b3          	sub	a5,a3,a4
   20aac:	fa5ff06f          	j	20a50 <__subtf3+0x444>
   20ab0:	2e688263          	beq	a7,t1,20d94 <__subtf3+0x788>
   20ab4:	00100593          	li	a1,1
   20ab8:	03359593          	slli	a1,a1,0x33
   20abc:	40e0073b          	negw	a4,a4
   20ac0:	00b7e7b3          	or	a5,a5,a1
   20ac4:	fadff06f          	j	20a70 <__subtf3+0x464>
   20ac8:	fc07059b          	addiw	a1,a4,-64
   20acc:	04000313          	li	t1,64
   20ad0:	00b7d5b3          	srl	a1,a5,a1
   20ad4:	00000813          	li	a6,0
   20ad8:	00670863          	beq	a4,t1,20ae8 <__subtf3+0x4dc>
   20adc:	08000813          	li	a6,128
   20ae0:	40e8073b          	subw	a4,a6,a4
   20ae4:	00e79833          	sll	a6,a5,a4
   20ae8:	00a86533          	or	a0,a6,a0
   20aec:	00a03533          	snez	a0,a0
   20af0:	00a5e533          	or	a0,a1,a0
   20af4:	00000713          	li	a4,0
   20af8:	fadff06f          	j	20aa4 <__subtf3+0x498>
   20afc:	00a7e533          	or	a0,a5,a0
   20b00:	00a03533          	snez	a0,a0
   20b04:	ff1ff06f          	j	20af4 <__subtf3+0x4e8>
   20b08:	001e8713          	addi	a4,t4,1
   20b0c:	ffe58593          	addi	a1,a1,-2
   20b10:	00b775b3          	and	a1,a4,a1
   20b14:	08059863          	bnez	a1,20ba4 <__subtf3+0x598>
   20b18:	00a7e5b3          	or	a1,a5,a0
   20b1c:	00c6e733          	or	a4,a3,a2
   20b20:	060e9063          	bnez	t4,20b80 <__subtf3+0x574>
   20b24:	00059c63          	bnez	a1,20b3c <__subtf3+0x530>
   20b28:	26070e63          	beqz	a4,20da4 <__subtf3+0x798>
   20b2c:	00068793          	mv	a5,a3
   20b30:	00060513          	mv	a0,a2
   20b34:	000e0493          	mv	s1,t3
   20b38:	bd9ff06f          	j	20710 <__subtf3+0x104>
   20b3c:	bc070ae3          	beqz	a4,20710 <__subtf3+0x104>
   20b40:	40c505b3          	sub	a1,a0,a2
   20b44:	00b53833          	sltu	a6,a0,a1
   20b48:	40d78733          	sub	a4,a5,a3
   20b4c:	41070733          	sub	a4,a4,a6
   20b50:	00c71813          	slli	a6,a4,0xc
   20b54:	00085c63          	bgez	a6,20b6c <__subtf3+0x560>
   20b58:	40a60533          	sub	a0,a2,a0
   20b5c:	40f687b3          	sub	a5,a3,a5
   20b60:	00a63633          	sltu	a2,a2,a0
   20b64:	40c787b3          	sub	a5,a5,a2
   20b68:	fcdff06f          	j	20b34 <__subtf3+0x528>
   20b6c:	00e5e533          	or	a0,a1,a4
   20b70:	24050263          	beqz	a0,20db4 <__subtf3+0x7a8>
   20b74:	00070793          	mv	a5,a4
   20b78:	00058513          	mv	a0,a1
   20b7c:	b95ff06f          	j	20710 <__subtf3+0x104>
   20b80:	00059e63          	bnez	a1,20b9c <__subtf3+0x590>
   20b84:	22070c63          	beqz	a4,20dbc <__subtf3+0x7b0>
   20b88:	00068793          	mv	a5,a3
   20b8c:	00060513          	mv	a0,a2
   20b90:	000e0493          	mv	s1,t3
   20b94:	00030413          	mv	s0,t1
   20b98:	b79ff06f          	j	20710 <__subtf3+0x104>
   20b9c:	fe070ce3          	beqz	a4,20b94 <__subtf3+0x588>
   20ba0:	d69ff06f          	j	20908 <__subtf3+0x2fc>
   20ba4:	40c509b3          	sub	s3,a0,a2
   20ba8:	01353733          	sltu	a4,a0,s3
   20bac:	40d78933          	sub	s2,a5,a3
   20bb0:	40e90933          	sub	s2,s2,a4
   20bb4:	00c91713          	slli	a4,s2,0xc
   20bb8:	08075863          	bgez	a4,20c48 <__subtf3+0x63c>
   20bbc:	40a609b3          	sub	s3,a2,a0
   20bc0:	40f687b3          	sub	a5,a3,a5
   20bc4:	01363633          	sltu	a2,a2,s3
   20bc8:	40c78933          	sub	s2,a5,a2
   20bcc:	000e0493          	mv	s1,t3
   20bd0:	08090663          	beqz	s2,20c5c <__subtf3+0x650>
   20bd4:	00090513          	mv	a0,s2
   20bd8:	5cc000ef          	jal	ra,211a4 <__clzdi2>
   20bdc:	0005051b          	sext.w	a0,a0
   20be0:	ff45069b          	addiw	a3,a0,-12
   20be4:	03f00793          	li	a5,63
   20be8:	00068713          	mv	a4,a3
   20bec:	08d7c063          	blt	a5,a3,20c6c <__subtf3+0x660>
   20bf0:	04000613          	li	a2,64
   20bf4:	40d6063b          	subw	a2,a2,a3
   20bf8:	00d917b3          	sll	a5,s2,a3
   20bfc:	00c9d633          	srl	a2,s3,a2
   20c00:	00f66633          	or	a2,a2,a5
   20c04:	00d99533          	sll	a0,s3,a3
   20c08:	0a86c463          	blt	a3,s0,20cb0 <__subtf3+0x6a4>
   20c0c:	4087073b          	subw	a4,a4,s0
   20c10:	0017079b          	addiw	a5,a4,1
   20c14:	03f00693          	li	a3,63
   20c18:	06f6c263          	blt	a3,a5,20c7c <__subtf3+0x670>
   20c1c:	04000693          	li	a3,64
   20c20:	40f686bb          	subw	a3,a3,a5
   20c24:	00f555b3          	srl	a1,a0,a5
   20c28:	00d61733          	sll	a4,a2,a3
   20c2c:	00d51533          	sll	a0,a0,a3
   20c30:	00b76733          	or	a4,a4,a1
   20c34:	00a03533          	snez	a0,a0
   20c38:	00a76533          	or	a0,a4,a0
   20c3c:	00f657b3          	srl	a5,a2,a5
   20c40:	00000413          	li	s0,0
   20c44:	acdff06f          	j	20710 <__subtf3+0x104>
   20c48:	0129e533          	or	a0,s3,s2
   20c4c:	f80512e3          	bnez	a0,20bd0 <__subtf3+0x5c4>
   20c50:	00000793          	li	a5,0
   20c54:	00000413          	li	s0,0
   20c58:	1540006f          	j	20dac <__subtf3+0x7a0>
   20c5c:	00098513          	mv	a0,s3
   20c60:	544000ef          	jal	ra,211a4 <__clzdi2>
   20c64:	0405051b          	addiw	a0,a0,64
   20c68:	f79ff06f          	j	20be0 <__subtf3+0x5d4>
   20c6c:	fb45051b          	addiw	a0,a0,-76
   20c70:	00a99633          	sll	a2,s3,a0
   20c74:	00000513          	li	a0,0
   20c78:	f91ff06f          	j	20c08 <__subtf3+0x5fc>
   20c7c:	fc17071b          	addiw	a4,a4,-63
   20c80:	04000813          	li	a6,64
   20c84:	00e65733          	srl	a4,a2,a4
   20c88:	00000693          	li	a3,0
   20c8c:	01078863          	beq	a5,a6,20c9c <__subtf3+0x690>
   20c90:	08000693          	li	a3,128
   20c94:	40f686bb          	subw	a3,a3,a5
   20c98:	00d616b3          	sll	a3,a2,a3
   20c9c:	00d56533          	or	a0,a0,a3
   20ca0:	00a03533          	snez	a0,a0
   20ca4:	00a76533          	or	a0,a4,a0
   20ca8:	00000793          	li	a5,0
   20cac:	f95ff06f          	j	20c40 <__subtf3+0x634>
   20cb0:	fff00793          	li	a5,-1
   20cb4:	03379793          	slli	a5,a5,0x33
   20cb8:	fff78793          	addi	a5,a5,-1
   20cbc:	40d40433          	sub	s0,s0,a3
   20cc0:	00f677b3          	and	a5,a2,a5
   20cc4:	a4dff06f          	j	20710 <__subtf3+0x104>
   20cc8:	00068793          	mv	a5,a3
   20ccc:	00060513          	mv	a0,a2
   20cd0:	00088413          	mv	s0,a7
   20cd4:	a3dff06f          	j	20710 <__subtf3+0x104>
   20cd8:	00068793          	mv	a5,a3
   20cdc:	00060513          	mv	a0,a2
   20ce0:	a31ff06f          	j	20710 <__subtf3+0x104>
   20ce4:	00068793          	mv	a5,a3
   20ce8:	00060513          	mv	a0,a2
   20cec:	ea9ff06f          	j	20b94 <__subtf3+0x588>
   20cf0:	00080413          	mv	s0,a6
   20cf4:	00000793          	li	a5,0
   20cf8:	00000513          	li	a0,0
   20cfc:	00c79713          	slli	a4,a5,0xc
   20d00:	02075263          	bgez	a4,20d24 <__subtf3+0x718>
   20d04:	00008737          	lui	a4,0x8
   20d08:	00140413          	addi	s0,s0,1
   20d0c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20d10:	0ce40063          	beq	s0,a4,20dd0 <__subtf3+0x7c4>
   20d14:	fff00713          	li	a4,-1
   20d18:	03371713          	slli	a4,a4,0x33
   20d1c:	fff70713          	addi	a4,a4,-1
   20d20:	00e7f7b3          	and	a5,a5,a4
   20d24:	03d79713          	slli	a4,a5,0x3d
   20d28:	00355513          	srli	a0,a0,0x3
   20d2c:	00a76533          	or	a0,a4,a0
   20d30:	00008737          	lui	a4,0x8
   20d34:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20d38:	0037d793          	srli	a5,a5,0x3
   20d3c:	02e41063          	bne	s0,a4,20d5c <__subtf3+0x750>
   20d40:	00f56533          	or	a0,a0,a5
   20d44:	00000793          	li	a5,0
   20d48:	00050a63          	beqz	a0,20d5c <__subtf3+0x750>
   20d4c:	00100793          	li	a5,1
   20d50:	02f79793          	slli	a5,a5,0x2f
   20d54:	00000513          	li	a0,0
   20d58:	00000493          	li	s1,0
   20d5c:	03141713          	slli	a4,s0,0x31
   20d60:	02813083          	ld	ra,40(sp)
   20d64:	02013403          	ld	s0,32(sp)
   20d68:	01079793          	slli	a5,a5,0x10
   20d6c:	00175713          	srli	a4,a4,0x1
   20d70:	0107d793          	srli	a5,a5,0x10
   20d74:	03f49593          	slli	a1,s1,0x3f
   20d78:	00e7e7b3          	or	a5,a5,a4
   20d7c:	01813483          	ld	s1,24(sp)
   20d80:	01013903          	ld	s2,16(sp)
   20d84:	00813983          	ld	s3,8(sp)
   20d88:	00b7e5b3          	or	a1,a5,a1
   20d8c:	03010113          	addi	sp,sp,48
   20d90:	00008067          	ret
   20d94:	00068793          	mv	a5,a3
   20d98:	00060513          	mv	a0,a2
   20d9c:	00088413          	mv	s0,a7
   20da0:	d95ff06f          	j	20b34 <__subtf3+0x528>
   20da4:	00000793          	li	a5,0
   20da8:	00000513          	li	a0,0
   20dac:	00000493          	li	s1,0
   20db0:	f4dff06f          	j	20cfc <__subtf3+0x6f0>
   20db4:	00000793          	li	a5,0
   20db8:	ff5ff06f          	j	20dac <__subtf3+0x7a0>
   20dbc:	00100793          	li	a5,1
   20dc0:	00000513          	li	a0,0
   20dc4:	00000493          	li	s1,0
   20dc8:	03279793          	slli	a5,a5,0x32
   20dcc:	b4dff06f          	j	20918 <__subtf3+0x30c>
   20dd0:	00000793          	li	a5,0
   20dd4:	00000513          	li	a0,0
   20dd8:	f4dff06f          	j	20d24 <__subtf3+0x718>

0000000000020ddc <__fixtfsi>:
   20ddc:	00159513          	slli	a0,a1,0x1
   20de0:	00004737          	lui	a4,0x4
   20de4:	03155793          	srli	a5,a0,0x31
   20de8:	ffe70613          	addi	a2,a4,-2 # 3ffe <register_fini-0xc0b2>
   20dec:	03f5d693          	srli	a3,a1,0x3f
   20df0:	00000513          	li	a0,0
   20df4:	04f65663          	bge	a2,a5,20e40 <__fixtfsi+0x64>
   20df8:	01d70713          	addi	a4,a4,29
   20dfc:	00f75a63          	bge	a4,a5,20e10 <__fixtfsi+0x34>
   20e00:	800005b7          	lui	a1,0x80000
   20e04:	fff5c593          	not	a1,a1
   20e08:	00d5853b          	addw	a0,a1,a3
   20e0c:	00008067          	ret
   20e10:	01059593          	slli	a1,a1,0x10
   20e14:	00100513          	li	a0,1
   20e18:	03051513          	slli	a0,a0,0x30
   20e1c:	0105d593          	srli	a1,a1,0x10
   20e20:	00a5e5b3          	or	a1,a1,a0
   20e24:	00004537          	lui	a0,0x4
   20e28:	02f5051b          	addiw	a0,a0,47
   20e2c:	40f5053b          	subw	a0,a0,a5
   20e30:	00a5d5b3          	srl	a1,a1,a0
   20e34:	0005851b          	sext.w	a0,a1
   20e38:	00068463          	beqz	a3,20e40 <__fixtfsi+0x64>
   20e3c:	40a0053b          	negw	a0,a0
   20e40:	00008067          	ret

0000000000020e44 <__floatsitf>:
   20e44:	fe010113          	addi	sp,sp,-32
   20e48:	00113c23          	sd	ra,24(sp)
   20e4c:	00813823          	sd	s0,16(sp)
   20e50:	00913423          	sd	s1,8(sp)
   20e54:	06050863          	beqz	a0,20ec4 <__floatsitf+0x80>
   20e58:	0005079b          	sext.w	a5,a0
   20e5c:	03f55493          	srli	s1,a0,0x3f
   20e60:	00055463          	bgez	a0,20e68 <__floatsitf+0x24>
   20e64:	40f007bb          	negw	a5,a5
   20e68:	02079413          	slli	s0,a5,0x20
   20e6c:	02045413          	srli	s0,s0,0x20
   20e70:	00040513          	mv	a0,s0
   20e74:	330000ef          	jal	ra,211a4 <__clzdi2>
   20e78:	00004737          	lui	a4,0x4
   20e7c:	03e7079b          	addiw	a5,a4,62
   20e80:	40a785bb          	subw	a1,a5,a0
   20e84:	02f7071b          	addiw	a4,a4,47
   20e88:	40b7053b          	subw	a0,a4,a1
   20e8c:	00a41533          	sll	a0,s0,a0
   20e90:	01813083          	ld	ra,24(sp)
   20e94:	01013403          	ld	s0,16(sp)
   20e98:	01051513          	slli	a0,a0,0x10
   20e9c:	03159593          	slli	a1,a1,0x31
   20ea0:	01055513          	srli	a0,a0,0x10
   20ea4:	0015d593          	srli	a1,a1,0x1
   20ea8:	03f49493          	slli	s1,s1,0x3f
   20eac:	00b565b3          	or	a1,a0,a1
   20eb0:	0095e5b3          	or	a1,a1,s1
   20eb4:	00000513          	li	a0,0
   20eb8:	00813483          	ld	s1,8(sp)
   20ebc:	02010113          	addi	sp,sp,32
   20ec0:	00008067          	ret
   20ec4:	00000513          	li	a0,0
   20ec8:	00000593          	li	a1,0
   20ecc:	00000493          	li	s1,0
   20ed0:	fc1ff06f          	j	20e90 <__floatsitf+0x4c>

0000000000020ed4 <__extenddftf2>:
   20ed4:	03455793          	srli	a5,a0,0x34
   20ed8:	7ff7f793          	andi	a5,a5,2047
   20edc:	fe010113          	addi	sp,sp,-32
   20ee0:	00178713          	addi	a4,a5,1
   20ee4:	00813823          	sd	s0,16(sp)
   20ee8:	00913423          	sd	s1,8(sp)
   20eec:	00c51413          	slli	s0,a0,0xc
   20ef0:	00113c23          	sd	ra,24(sp)
   20ef4:	7fe77713          	andi	a4,a4,2046
   20ef8:	00c45413          	srli	s0,s0,0xc
   20efc:	03f55493          	srli	s1,a0,0x3f
   20f00:	04070663          	beqz	a4,20f4c <__extenddftf2+0x78>
   20f04:	00004737          	lui	a4,0x4
   20f08:	c0070713          	addi	a4,a4,-1024 # 3c00 <register_fini-0xc4b0>
   20f0c:	00e787b3          	add	a5,a5,a4
   20f10:	00445713          	srli	a4,s0,0x4
   20f14:	03c41413          	slli	s0,s0,0x3c
   20f18:	00040513          	mv	a0,s0
   20f1c:	01813083          	ld	ra,24(sp)
   20f20:	01013403          	ld	s0,16(sp)
   20f24:	01071713          	slli	a4,a4,0x10
   20f28:	03179793          	slli	a5,a5,0x31
   20f2c:	0017d793          	srli	a5,a5,0x1
   20f30:	01075713          	srli	a4,a4,0x10
   20f34:	03f49593          	slli	a1,s1,0x3f
   20f38:	00f767b3          	or	a5,a4,a5
   20f3c:	00813483          	ld	s1,8(sp)
   20f40:	00b7e5b3          	or	a1,a5,a1
   20f44:	02010113          	addi	sp,sp,32
   20f48:	00008067          	ret
   20f4c:	04079a63          	bnez	a5,20fa0 <__extenddftf2+0xcc>
   20f50:	00000713          	li	a4,0
   20f54:	fc0402e3          	beqz	s0,20f18 <__extenddftf2+0x44>
   20f58:	00040513          	mv	a0,s0
   20f5c:	248000ef          	jal	ra,211a4 <__clzdi2>
   20f60:	0005071b          	sext.w	a4,a0
   20f64:	00e00793          	li	a5,14
   20f68:	02e7c463          	blt	a5,a4,20f90 <__extenddftf2+0xbc>
   20f6c:	00f00713          	li	a4,15
   20f70:	40a7073b          	subw	a4,a4,a0
   20f74:	0315079b          	addiw	a5,a0,49
   20f78:	00e45733          	srl	a4,s0,a4
   20f7c:	00f41433          	sll	s0,s0,a5
   20f80:	000047b7          	lui	a5,0x4
   20f84:	c0c7879b          	addiw	a5,a5,-1012
   20f88:	40a787bb          	subw	a5,a5,a0
   20f8c:	f8dff06f          	j	20f18 <__extenddftf2+0x44>
   20f90:	ff15071b          	addiw	a4,a0,-15
   20f94:	00e41733          	sll	a4,s0,a4
   20f98:	00000413          	li	s0,0
   20f9c:	fe5ff06f          	j	20f80 <__extenddftf2+0xac>
   20fa0:	00000713          	li	a4,0
   20fa4:	00040c63          	beqz	s0,20fbc <__extenddftf2+0xe8>
   20fa8:	00100793          	li	a5,1
   20fac:	00445713          	srli	a4,s0,0x4
   20fb0:	02f79793          	slli	a5,a5,0x2f
   20fb4:	00f76733          	or	a4,a4,a5
   20fb8:	03c41413          	slli	s0,s0,0x3c
   20fbc:	000087b7          	lui	a5,0x8
   20fc0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   20fc4:	f55ff06f          	j	20f18 <__extenddftf2+0x44>

0000000000020fc8 <__trunctfdf2>:
   20fc8:	00008837          	lui	a6,0x8
   20fcc:	fff80793          	addi	a5,a6,-1 # 7fff <register_fini-0x80b1>
   20fd0:	0305d713          	srli	a4,a1,0x30
   20fd4:	03f5d693          	srli	a3,a1,0x3f
   20fd8:	01059593          	slli	a1,a1,0x10
   20fdc:	00f77733          	and	a4,a4,a5
   20fe0:	00d5d793          	srli	a5,a1,0xd
   20fe4:	03d55593          	srli	a1,a0,0x3d
   20fe8:	00f5e5b3          	or	a1,a1,a5
   20fec:	ffe80813          	addi	a6,a6,-2
   20ff0:	00170793          	addi	a5,a4,1
   20ff4:	0107f833          	and	a6,a5,a6
   20ff8:	00351613          	slli	a2,a0,0x3
   20ffc:	0c080263          	beqz	a6,210c0 <__trunctfdf2+0xf8>
   21000:	ffffc7b7          	lui	a5,0xffffc
   21004:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd91f8>
   21008:	00f70733          	add	a4,a4,a5
   2100c:	7fe00793          	li	a5,2046
   21010:	0ee7c263          	blt	a5,a4,210f4 <__trunctfdf2+0x12c>
   21014:	08e04863          	bgtz	a4,210a4 <__trunctfdf2+0xdc>
   21018:	fcc00793          	li	a5,-52
   2101c:	14f74063          	blt	a4,a5,2115c <__trunctfdf2+0x194>
   21020:	00100793          	li	a5,1
   21024:	03379793          	slli	a5,a5,0x33
   21028:	00f5e5b3          	or	a1,a1,a5
   2102c:	03d00793          	li	a5,61
   21030:	40e787b3          	sub	a5,a5,a4
   21034:	0007051b          	sext.w	a0,a4
   21038:	03f00713          	li	a4,63
   2103c:	02f74c63          	blt	a4,a5,21074 <__trunctfdf2+0xac>
   21040:	03d00793          	li	a5,61
   21044:	0035071b          	addiw	a4,a0,3
   21048:	40a787bb          	subw	a5,a5,a0
   2104c:	00f657b3          	srl	a5,a2,a5
   21050:	00e61633          	sll	a2,a2,a4
   21054:	00c03633          	snez	a2,a2
   21058:	00c7e7b3          	or	a5,a5,a2
   2105c:	00e595b3          	sll	a1,a1,a4
   21060:	00f5e7b3          	or	a5,a1,a5
   21064:	00000713          	li	a4,0
   21068:	0077f613          	andi	a2,a5,7
   2106c:	08060863          	beqz	a2,210fc <__trunctfdf2+0x134>
   21070:	0f40006f          	j	21164 <__trunctfdf2+0x19c>
   21074:	ffd00713          	li	a4,-3
   21078:	40a7073b          	subw	a4,a4,a0
   2107c:	04000893          	li	a7,64
   21080:	00e5d733          	srl	a4,a1,a4
   21084:	00000813          	li	a6,0
   21088:	01178663          	beq	a5,a7,21094 <__trunctfdf2+0xcc>
   2108c:	0435079b          	addiw	a5,a0,67
   21090:	00f59833          	sll	a6,a1,a5
   21094:	00c867b3          	or	a5,a6,a2
   21098:	00f037b3          	snez	a5,a5
   2109c:	00f767b3          	or	a5,a4,a5
   210a0:	fc5ff06f          	j	21064 <__trunctfdf2+0x9c>
   210a4:	00751793          	slli	a5,a0,0x7
   210a8:	00f037b3          	snez	a5,a5
   210ac:	03c65613          	srli	a2,a2,0x3c
   210b0:	00c7e7b3          	or	a5,a5,a2
   210b4:	00459593          	slli	a1,a1,0x4
   210b8:	00f5e7b3          	or	a5,a1,a5
   210bc:	fadff06f          	j	21068 <__trunctfdf2+0xa0>
   210c0:	00c5e7b3          	or	a5,a1,a2
   210c4:	00071663          	bnez	a4,210d0 <__trunctfdf2+0x108>
   210c8:	00f037b3          	snez	a5,a5
   210cc:	f9dff06f          	j	21068 <__trunctfdf2+0xa0>
   210d0:	7ff00713          	li	a4,2047
   210d4:	02078463          	beqz	a5,210fc <__trunctfdf2+0x134>
   210d8:	03c65613          	srli	a2,a2,0x3c
   210dc:	00459593          	slli	a1,a1,0x4
   210e0:	00c5e5b3          	or	a1,a1,a2
   210e4:	00100793          	li	a5,1
   210e8:	ff85f593          	andi	a1,a1,-8
   210ec:	03679793          	slli	a5,a5,0x36
   210f0:	fc9ff06f          	j	210b8 <__trunctfdf2+0xf0>
   210f4:	00000793          	li	a5,0
   210f8:	7ff00713          	li	a4,2047
   210fc:	00879613          	slli	a2,a5,0x8
   21100:	02065063          	bgez	a2,21120 <__trunctfdf2+0x158>
   21104:	00170713          	addi	a4,a4,1
   21108:	7ff00613          	li	a2,2047
   2110c:	06c70663          	beq	a4,a2,21178 <__trunctfdf2+0x1b0>
   21110:	fff00613          	li	a2,-1
   21114:	03761613          	slli	a2,a2,0x37
   21118:	fff60613          	addi	a2,a2,-1
   2111c:	00c7f7b3          	and	a5,a5,a2
   21120:	7ff00613          	li	a2,2047
   21124:	0037d793          	srli	a5,a5,0x3
   21128:	00c71a63          	bne	a4,a2,2113c <__trunctfdf2+0x174>
   2112c:	00078863          	beqz	a5,2113c <__trunctfdf2+0x174>
   21130:	00100793          	li	a5,1
   21134:	03379793          	slli	a5,a5,0x33
   21138:	00000693          	li	a3,0
   2113c:	00c79793          	slli	a5,a5,0xc
   21140:	7ff77713          	andi	a4,a4,2047
   21144:	03471713          	slli	a4,a4,0x34
   21148:	00c7d793          	srli	a5,a5,0xc
   2114c:	03f69513          	slli	a0,a3,0x3f
   21150:	00e7e7b3          	or	a5,a5,a4
   21154:	00a7e533          	or	a0,a5,a0
   21158:	00008067          	ret
   2115c:	00100793          	li	a5,1
   21160:	00000713          	li	a4,0
   21164:	00f7f613          	andi	a2,a5,15
   21168:	00400593          	li	a1,4
   2116c:	f8b608e3          	beq	a2,a1,210fc <__trunctfdf2+0x134>
   21170:	00478793          	addi	a5,a5,4
   21174:	f89ff06f          	j	210fc <__trunctfdf2+0x134>
   21178:	00000793          	li	a5,0
   2117c:	fa5ff06f          	j	21120 <__trunctfdf2+0x158>

0000000000021180 <__muldi3>:
   21180:	00050613          	mv	a2,a0
   21184:	00000513          	li	a0,0
   21188:	0015f693          	andi	a3,a1,1
   2118c:	00068463          	beqz	a3,21194 <__muldi3+0x14>
   21190:	00c50533          	add	a0,a0,a2
   21194:	0015d593          	srli	a1,a1,0x1
   21198:	00161613          	slli	a2,a2,0x1
   2119c:	fe0596e3          	bnez	a1,21188 <__muldi3+0x8>
   211a0:	00008067          	ret

00000000000211a4 <__clzdi2>:
   211a4:	03800793          	li	a5,56
   211a8:	00f55733          	srl	a4,a0,a5
   211ac:	0ff77713          	andi	a4,a4,255
   211b0:	00071663          	bnez	a4,211bc <__clzdi2+0x18>
   211b4:	ff878793          	addi	a5,a5,-8
   211b8:	fe0798e3          	bnez	a5,211a8 <__clzdi2+0x4>
   211bc:	04000713          	li	a4,64
   211c0:	40f70733          	sub	a4,a4,a5
   211c4:	00f557b3          	srl	a5,a0,a5
   211c8:	00001517          	auipc	a0,0x1
   211cc:	cc850513          	addi	a0,a0,-824 # 21e90 <__clz_tab>
   211d0:	00f507b3          	add	a5,a0,a5
   211d4:	0007c503          	lbu	a0,0(a5)
   211d8:	40a7053b          	subw	a0,a4,a0
   211dc:	00008067          	ret
