
7_sumOf1ToN_RvOfast_gcc.o:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <main>:
   100b0:	fd010113          	addi	sp,sp,-48
   100b4:	02813023          	sd	s0,32(sp)
   100b8:	00913c23          	sd	s1,24(sp)
   100bc:	01213823          	sd	s2,16(sp)
   100c0:	01313423          	sd	s3,8(sp)
   100c4:	02113423          	sd	ra,40(sp)
   100c8:	00200413          	li	s0,2
   100cc:	00100493          	li	s1,1
   100d0:	000219b7          	lui	s3,0x21
   100d4:	06500913          	li	s2,101
   100d8:	01400593          	li	a1,20
   100dc:	00040513          	mv	a0,s0
   100e0:	1f8000ef          	jal	ra,102d8 <__moddi3>
   100e4:	0005051b          	sext.w	a0,a0
   100e8:	008484bb          	addw	s1,s1,s0
   100ec:	00051a63          	bnez	a0,10100 <main+0x50>
   100f0:	00040593          	mv	a1,s0
   100f4:	00048613          	mv	a2,s1
   100f8:	1e098513          	addi	a0,s3,480 # 211e0 <__clzdi2+0x44>
   100fc:	470000ef          	jal	ra,1056c <printf>
   10100:	0014041b          	addiw	s0,s0,1
   10104:	fd241ae3          	bne	s0,s2,100d8 <main+0x28>
   10108:	00001637          	lui	a2,0x1
   1010c:	00021537          	lui	a0,0x21
   10110:	3ba60613          	addi	a2,a2,954 # 13ba <main-0xecf6>
   10114:	06400593          	li	a1,100
   10118:	20850513          	addi	a0,a0,520 # 21208 <__clzdi2+0x6c>
   1011c:	450000ef          	jal	ra,1056c <printf>
   10120:	02813083          	ld	ra,40(sp)
   10124:	02013403          	ld	s0,32(sp)
   10128:	01813483          	ld	s1,24(sp)
   1012c:	01013903          	ld	s2,16(sp)
   10130:	00813983          	ld	s3,8(sp)
   10134:	00000513          	li	a0,0
   10138:	03010113          	addi	sp,sp,48
   1013c:	00008067          	ret

0000000000010140 <register_fini>:
   10140:	ffff0797          	auipc	a5,0xffff0
   10144:	ec078793          	addi	a5,a5,-320 # 0 <main-0x100b0>
   10148:	00078863          	beqz	a5,10158 <register_fini+0x18>
   1014c:	00000517          	auipc	a0,0x0
   10150:	21050513          	addi	a0,a0,528 # 1035c <__libc_fini_array>
   10154:	1c00006f          	j	10314 <atexit>
   10158:	00008067          	ret

000000000001015c <_start>:
   1015c:	00013197          	auipc	gp,0x13
   10160:	8ac18193          	addi	gp,gp,-1876 # 22a08 <__global_pointer$>
   10164:	77018513          	addi	a0,gp,1904 # 23178 <_edata>
   10168:	00013617          	auipc	a2,0x13
   1016c:	0a060613          	addi	a2,a2,160 # 23208 <__BSS_END__>
   10170:	40a60633          	sub	a2,a2,a0
   10174:	00000593          	li	a1,0
   10178:	2d4000ef          	jal	ra,1044c <memset>
   1017c:	00000517          	auipc	a0,0x0
   10180:	1e050513          	addi	a0,a0,480 # 1035c <__libc_fini_array>
   10184:	190000ef          	jal	ra,10314 <atexit>
   10188:	230000ef          	jal	ra,103b8 <__libc_init_array>
   1018c:	00012503          	lw	a0,0(sp)
   10190:	00810593          	addi	a1,sp,8
   10194:	00000613          	li	a2,0
   10198:	f19ff0ef          	jal	ra,100b0 <main>
   1019c:	18c0006f          	j	10328 <exit>

00000000000101a0 <__do_global_dtors_aux>:
   101a0:	7981c783          	lbu	a5,1944(gp) # 231a0 <completed.5468>
   101a4:	04079463          	bnez	a5,101ec <__do_global_dtors_aux+0x4c>
   101a8:	ffff0797          	auipc	a5,0xffff0
   101ac:	e5878793          	addi	a5,a5,-424 # 0 <main-0x100b0>
   101b0:	02078863          	beqz	a5,101e0 <__do_global_dtors_aux+0x40>
   101b4:	ff010113          	addi	sp,sp,-16
   101b8:	00012517          	auipc	a0,0x12
   101bc:	e4850513          	addi	a0,a0,-440 # 22000 <__FRAME_END__>
   101c0:	00113423          	sd	ra,8(sp)
   101c4:	00000097          	auipc	ra,0x0
   101c8:	000000e7          	jalr	zero # 0 <main-0x100b0>
   101cc:	00813083          	ld	ra,8(sp)
   101d0:	00100793          	li	a5,1
   101d4:	78f18c23          	sb	a5,1944(gp) # 231a0 <completed.5468>
   101d8:	01010113          	addi	sp,sp,16
   101dc:	00008067          	ret
   101e0:	00100793          	li	a5,1
   101e4:	78f18c23          	sb	a5,1944(gp) # 231a0 <completed.5468>
   101e8:	00008067          	ret
   101ec:	00008067          	ret

00000000000101f0 <frame_dummy>:
   101f0:	ffff0797          	auipc	a5,0xffff0
   101f4:	e1078793          	addi	a5,a5,-496 # 0 <main-0x100b0>
   101f8:	00078c63          	beqz	a5,10210 <frame_dummy+0x20>
   101fc:	7a018593          	addi	a1,gp,1952 # 231a8 <object.5473>
   10200:	00012517          	auipc	a0,0x12
   10204:	e0050513          	addi	a0,a0,-512 # 22000 <__FRAME_END__>
   10208:	00000317          	auipc	t1,0x0
   1020c:	00000067          	jr	zero # 0 <main-0x100b0>
   10210:	00008067          	ret

0000000000010214 <__udivsi3>:
   10214:	02051513          	slli	a0,a0,0x20
   10218:	02059593          	slli	a1,a1,0x20
   1021c:	00008293          	mv	t0,ra
   10220:	03c000ef          	jal	ra,1025c <__udivdi3>
   10224:	0005051b          	sext.w	a0,a0
   10228:	00028067          	jr	t0

000000000001022c <__umodsi3>:
   1022c:	02051513          	slli	a0,a0,0x20
   10230:	02059593          	slli	a1,a1,0x20
   10234:	02055513          	srli	a0,a0,0x20
   10238:	0205d593          	srli	a1,a1,0x20
   1023c:	00008293          	mv	t0,ra
   10240:	01c000ef          	jal	ra,1025c <__udivdi3>
   10244:	0005851b          	sext.w	a0,a1
   10248:	00028067          	jr	t0

000000000001024c <__divsi3>:
   1024c:	fff00293          	li	t0,-1
   10250:	0a558c63          	beq	a1,t0,10308 <__moddi3+0x30>

0000000000010254 <__divdi3>:
   10254:	06054063          	bltz	a0,102b4 <__umoddi3+0x10>
   10258:	0605c663          	bltz	a1,102c4 <__umoddi3+0x20>

000000000001025c <__udivdi3>:
   1025c:	00058613          	mv	a2,a1
   10260:	00050593          	mv	a1,a0
   10264:	fff00513          	li	a0,-1
   10268:	02060c63          	beqz	a2,102a0 <__udivdi3+0x44>
   1026c:	00100693          	li	a3,1
   10270:	00b67a63          	bgeu	a2,a1,10284 <__udivdi3+0x28>
   10274:	00c05863          	blez	a2,10284 <__udivdi3+0x28>
   10278:	00161613          	slli	a2,a2,0x1
   1027c:	00169693          	slli	a3,a3,0x1
   10280:	feb66ae3          	bltu	a2,a1,10274 <__udivdi3+0x18>
   10284:	00000513          	li	a0,0
   10288:	00c5e663          	bltu	a1,a2,10294 <__udivdi3+0x38>
   1028c:	40c585b3          	sub	a1,a1,a2
   10290:	00d56533          	or	a0,a0,a3
   10294:	0016d693          	srli	a3,a3,0x1
   10298:	00165613          	srli	a2,a2,0x1
   1029c:	fe0696e3          	bnez	a3,10288 <__udivdi3+0x2c>
   102a0:	00008067          	ret

00000000000102a4 <__umoddi3>:
   102a4:	00008293          	mv	t0,ra
   102a8:	fb5ff0ef          	jal	ra,1025c <__udivdi3>
   102ac:	00058513          	mv	a0,a1
   102b0:	00028067          	jr	t0
   102b4:	40a00533          	neg	a0,a0
   102b8:	0005d863          	bgez	a1,102c8 <__umoddi3+0x24>
   102bc:	40b005b3          	neg	a1,a1
   102c0:	f9dff06f          	j	1025c <__udivdi3>
   102c4:	40b005b3          	neg	a1,a1
   102c8:	00008293          	mv	t0,ra
   102cc:	f91ff0ef          	jal	ra,1025c <__udivdi3>
   102d0:	40a00533          	neg	a0,a0
   102d4:	00028067          	jr	t0

00000000000102d8 <__moddi3>:
   102d8:	00008293          	mv	t0,ra
   102dc:	0005ca63          	bltz	a1,102f0 <__moddi3+0x18>
   102e0:	00054c63          	bltz	a0,102f8 <__moddi3+0x20>
   102e4:	f79ff0ef          	jal	ra,1025c <__udivdi3>
   102e8:	00058513          	mv	a0,a1
   102ec:	00028067          	jr	t0
   102f0:	40b005b3          	neg	a1,a1
   102f4:	fe0558e3          	bgez	a0,102e4 <__moddi3+0xc>
   102f8:	40a00533          	neg	a0,a0
   102fc:	f61ff0ef          	jal	ra,1025c <__udivdi3>
   10300:	40b00533          	neg	a0,a1
   10304:	00028067          	jr	t0
   10308:	01f29293          	slli	t0,t0,0x1f
   1030c:	f45514e3          	bne	a0,t0,10254 <__divdi3>
   10310:	00008067          	ret

0000000000010314 <atexit>:
   10314:	00050593          	mv	a1,a0
   10318:	00000693          	li	a3,0
   1031c:	00000613          	li	a2,0
   10320:	00000513          	li	a0,0
   10324:	4390206f          	j	12f5c <__register_exitproc>

0000000000010328 <exit>:
   10328:	ff010113          	addi	sp,sp,-16
   1032c:	00000593          	li	a1,0
   10330:	00813023          	sd	s0,0(sp)
   10334:	00113423          	sd	ra,8(sp)
   10338:	00050413          	mv	s0,a0
   1033c:	4cd020ef          	jal	ra,13008 <__call_exitprocs>
   10340:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   10344:	0007b503          	ld	a0,0(a5)
   10348:	05853783          	ld	a5,88(a0)
   1034c:	00078463          	beqz	a5,10354 <exit+0x2c>
   10350:	000780e7          	jalr	a5
   10354:	00040513          	mv	a0,s0
   10358:	7410e0ef          	jal	ra,1f298 <_exit>

000000000001035c <__libc_fini_array>:
   1035c:	fe010113          	addi	sp,sp,-32
   10360:	00813823          	sd	s0,16(sp)
   10364:	00012797          	auipc	a5,0x12
   10368:	cbc78793          	addi	a5,a5,-836 # 22020 <__fini_array_end>
   1036c:	00012417          	auipc	s0,0x12
   10370:	cac40413          	addi	s0,s0,-852 # 22018 <__init_array_end>
   10374:	408787b3          	sub	a5,a5,s0
   10378:	00913423          	sd	s1,8(sp)
   1037c:	00113c23          	sd	ra,24(sp)
   10380:	4037d493          	srai	s1,a5,0x3
   10384:	02048063          	beqz	s1,103a4 <__libc_fini_array+0x48>
   10388:	ff878793          	addi	a5,a5,-8
   1038c:	00878433          	add	s0,a5,s0
   10390:	00043783          	ld	a5,0(s0)
   10394:	fff48493          	addi	s1,s1,-1
   10398:	ff840413          	addi	s0,s0,-8
   1039c:	000780e7          	jalr	a5
   103a0:	fe0498e3          	bnez	s1,10390 <__libc_fini_array+0x34>
   103a4:	01813083          	ld	ra,24(sp)
   103a8:	01013403          	ld	s0,16(sp)
   103ac:	00813483          	ld	s1,8(sp)
   103b0:	02010113          	addi	sp,sp,32
   103b4:	00008067          	ret

00000000000103b8 <__libc_init_array>:
   103b8:	fe010113          	addi	sp,sp,-32
   103bc:	00813823          	sd	s0,16(sp)
   103c0:	01213023          	sd	s2,0(sp)
   103c4:	00012417          	auipc	s0,0x12
   103c8:	c4040413          	addi	s0,s0,-960 # 22004 <__preinit_array_end>
   103cc:	00012917          	auipc	s2,0x12
   103d0:	c3890913          	addi	s2,s2,-968 # 22004 <__preinit_array_end>
   103d4:	40890933          	sub	s2,s2,s0
   103d8:	00113c23          	sd	ra,24(sp)
   103dc:	00913423          	sd	s1,8(sp)
   103e0:	40395913          	srai	s2,s2,0x3
   103e4:	00090e63          	beqz	s2,10400 <__libc_init_array+0x48>
   103e8:	00000493          	li	s1,0
   103ec:	00043783          	ld	a5,0(s0)
   103f0:	00148493          	addi	s1,s1,1
   103f4:	00840413          	addi	s0,s0,8
   103f8:	000780e7          	jalr	a5
   103fc:	fe9918e3          	bne	s2,s1,103ec <__libc_init_array+0x34>
   10400:	00012417          	auipc	s0,0x12
   10404:	c0840413          	addi	s0,s0,-1016 # 22008 <__init_array_start>
   10408:	00012917          	auipc	s2,0x12
   1040c:	c1090913          	addi	s2,s2,-1008 # 22018 <__init_array_end>
   10410:	40890933          	sub	s2,s2,s0
   10414:	40395913          	srai	s2,s2,0x3
   10418:	00090e63          	beqz	s2,10434 <__libc_init_array+0x7c>
   1041c:	00000493          	li	s1,0
   10420:	00043783          	ld	a5,0(s0)
   10424:	00148493          	addi	s1,s1,1
   10428:	00840413          	addi	s0,s0,8
   1042c:	000780e7          	jalr	a5
   10430:	fe9918e3          	bne	s2,s1,10420 <__libc_init_array+0x68>
   10434:	01813083          	ld	ra,24(sp)
   10438:	01013403          	ld	s0,16(sp)
   1043c:	00813483          	ld	s1,8(sp)
   10440:	00013903          	ld	s2,0(sp)
   10444:	02010113          	addi	sp,sp,32
   10448:	00008067          	ret

000000000001044c <memset>:
   1044c:	00f00313          	li	t1,15
   10450:	00050713          	mv	a4,a0
   10454:	02c37a63          	bgeu	t1,a2,10488 <memset+0x3c>
   10458:	00f77793          	andi	a5,a4,15
   1045c:	0a079063          	bnez	a5,104fc <memset+0xb0>
   10460:	06059e63          	bnez	a1,104dc <memset+0x90>
   10464:	ff067693          	andi	a3,a2,-16
   10468:	00f67613          	andi	a2,a2,15
   1046c:	00e686b3          	add	a3,a3,a4
   10470:	00b73023          	sd	a1,0(a4)
   10474:	00b73423          	sd	a1,8(a4)
   10478:	01070713          	addi	a4,a4,16
   1047c:	fed76ae3          	bltu	a4,a3,10470 <memset+0x24>
   10480:	00061463          	bnez	a2,10488 <memset+0x3c>
   10484:	00008067          	ret
   10488:	40c306b3          	sub	a3,t1,a2
   1048c:	00269693          	slli	a3,a3,0x2
   10490:	00000297          	auipc	t0,0x0
   10494:	005686b3          	add	a3,a3,t0
   10498:	00c68067          	jr	12(a3)
   1049c:	00b70723          	sb	a1,14(a4)
   104a0:	00b706a3          	sb	a1,13(a4)
   104a4:	00b70623          	sb	a1,12(a4)
   104a8:	00b705a3          	sb	a1,11(a4)
   104ac:	00b70523          	sb	a1,10(a4)
   104b0:	00b704a3          	sb	a1,9(a4)
   104b4:	00b70423          	sb	a1,8(a4)
   104b8:	00b703a3          	sb	a1,7(a4)
   104bc:	00b70323          	sb	a1,6(a4)
   104c0:	00b702a3          	sb	a1,5(a4)
   104c4:	00b70223          	sb	a1,4(a4)
   104c8:	00b701a3          	sb	a1,3(a4)
   104cc:	00b70123          	sb	a1,2(a4)
   104d0:	00b700a3          	sb	a1,1(a4)
   104d4:	00b70023          	sb	a1,0(a4)
   104d8:	00008067          	ret
   104dc:	0ff5f593          	andi	a1,a1,255
   104e0:	00859693          	slli	a3,a1,0x8
   104e4:	00d5e5b3          	or	a1,a1,a3
   104e8:	01059693          	slli	a3,a1,0x10
   104ec:	00d5e5b3          	or	a1,a1,a3
   104f0:	02059693          	slli	a3,a1,0x20
   104f4:	00d5e5b3          	or	a1,a1,a3
   104f8:	f6dff06f          	j	10464 <memset+0x18>
   104fc:	00279693          	slli	a3,a5,0x2
   10500:	00000297          	auipc	t0,0x0
   10504:	005686b3          	add	a3,a3,t0
   10508:	00008293          	mv	t0,ra
   1050c:	f98680e7          	jalr	-104(a3)
   10510:	00028093          	mv	ra,t0
   10514:	ff078793          	addi	a5,a5,-16
   10518:	40f70733          	sub	a4,a4,a5
   1051c:	00f60633          	add	a2,a2,a5
   10520:	f6c374e3          	bgeu	t1,a2,10488 <memset+0x3c>
   10524:	f3dff06f          	j	10460 <memset+0x14>

0000000000010528 <_printf_r>:
   10528:	fb010113          	addi	sp,sp,-80
   1052c:	02c13023          	sd	a2,32(sp)
   10530:	02d13423          	sd	a3,40(sp)
   10534:	02f13c23          	sd	a5,56(sp)
   10538:	02e13823          	sd	a4,48(sp)
   1053c:	05013023          	sd	a6,64(sp)
   10540:	05113423          	sd	a7,72(sp)
   10544:	00058613          	mv	a2,a1
   10548:	01053583          	ld	a1,16(a0)
   1054c:	02010793          	addi	a5,sp,32
   10550:	00078693          	mv	a3,a5
   10554:	00113c23          	sd	ra,24(sp)
   10558:	00f13423          	sd	a5,8(sp)
   1055c:	064000ef          	jal	ra,105c0 <_vfprintf_r>
   10560:	01813083          	ld	ra,24(sp)
   10564:	05010113          	addi	sp,sp,80
   10568:	00008067          	ret

000000000001056c <printf>:
   1056c:	75818313          	addi	t1,gp,1880 # 23160 <_impure_ptr>
   10570:	00033303          	ld	t1,0(t1) # 10208 <frame_dummy+0x18>
   10574:	fa010113          	addi	sp,sp,-96
   10578:	02c13823          	sd	a2,48(sp)
   1057c:	02d13c23          	sd	a3,56(sp)
   10580:	04f13423          	sd	a5,72(sp)
   10584:	02b13423          	sd	a1,40(sp)
   10588:	04e13023          	sd	a4,64(sp)
   1058c:	05013823          	sd	a6,80(sp)
   10590:	05113c23          	sd	a7,88(sp)
   10594:	01033583          	ld	a1,16(t1)
   10598:	02810793          	addi	a5,sp,40
   1059c:	00050613          	mv	a2,a0
   105a0:	00078693          	mv	a3,a5
   105a4:	00030513          	mv	a0,t1
   105a8:	00113c23          	sd	ra,24(sp)
   105ac:	00f13423          	sd	a5,8(sp)
   105b0:	010000ef          	jal	ra,105c0 <_vfprintf_r>
   105b4:	01813083          	ld	ra,24(sp)
   105b8:	06010113          	addi	sp,sp,96
   105bc:	00008067          	ret

00000000000105c0 <_vfprintf_r>:
   105c0:	d8010113          	addi	sp,sp,-640
   105c4:	26113c23          	sd	ra,632(sp)
   105c8:	26813823          	sd	s0,624(sp)
   105cc:	25613023          	sd	s6,576(sp)
   105d0:	00b13023          	sd	a1,0(sp)
   105d4:	00060b13          	mv	s6,a2
   105d8:	00d13823          	sd	a3,16(sp)
   105dc:	26913423          	sd	s1,616(sp)
   105e0:	27213023          	sd	s2,608(sp)
   105e4:	25313c23          	sd	s3,600(sp)
   105e8:	25413823          	sd	s4,592(sp)
   105ec:	25513423          	sd	s5,584(sp)
   105f0:	23713c23          	sd	s7,568(sp)
   105f4:	23813823          	sd	s8,560(sp)
   105f8:	23913423          	sd	s9,552(sp)
   105fc:	23a13023          	sd	s10,544(sp)
   10600:	21b13c23          	sd	s11,536(sp)
   10604:	00050413          	mv	s0,a0
   10608:	02a13823          	sd	a0,48(sp)
   1060c:	364060ef          	jal	ra,16970 <_localeconv_r>
   10610:	00053783          	ld	a5,0(a0)
   10614:	00078513          	mv	a0,a5
   10618:	04f13c23          	sd	a5,88(sp)
   1061c:	68c080ef          	jal	ra,18ca8 <strlen>
   10620:	04a13423          	sd	a0,72(sp)
   10624:	10013023          	sd	zero,256(sp)
   10628:	10013423          	sd	zero,264(sp)
   1062c:	00040663          	beqz	s0,10638 <_vfprintf_r+0x78>
   10630:	05042783          	lw	a5,80(s0)
   10634:	54078ee3          	beqz	a5,11390 <_vfprintf_r+0xdd0>
   10638:	00013703          	ld	a4,0(sp)
   1063c:	01071683          	lh	a3,16(a4)
   10640:	03069793          	slli	a5,a3,0x30
   10644:	0307d793          	srli	a5,a5,0x30
   10648:	03279613          	slli	a2,a5,0x32
   1064c:	02064663          	bltz	a2,10678 <_vfprintf_r+0xb8>
   10650:	0ac72603          	lw	a2,172(a4)
   10654:	000027b7          	lui	a5,0x2
   10658:	00f6e7b3          	or	a5,a3,a5
   1065c:	ffffe6b7          	lui	a3,0xffffe
   10660:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdadf7>
   10664:	00d676b3          	and	a3,a2,a3
   10668:	00f71823          	sh	a5,16(a4)
   1066c:	03079793          	slli	a5,a5,0x30
   10670:	0ad72623          	sw	a3,172(a4)
   10674:	0307d793          	srli	a5,a5,0x30
   10678:	0087f693          	andi	a3,a5,8
   1067c:	14068463          	beqz	a3,107c4 <_vfprintf_r+0x204>
   10680:	00013703          	ld	a4,0(sp)
   10684:	01873683          	ld	a3,24(a4)
   10688:	12068e63          	beqz	a3,107c4 <_vfprintf_r+0x204>
   1068c:	01a7f793          	andi	a5,a5,26
   10690:	00a00693          	li	a3,10
   10694:	14d78c63          	beq	a5,a3,107ec <_vfprintf_r+0x22c>
   10698:	19010793          	addi	a5,sp,400
   1069c:	000b0d93          	mv	s11,s6
   106a0:	10f13823          	sd	a5,272(sp)
   106a4:	00078313          	mv	t1,a5
   106a8:	000dc783          	lbu	a5,0(s11)
   106ac:	12013023          	sd	zero,288(sp)
   106b0:	10012c23          	sw	zero,280(sp)
   106b4:	02013423          	sd	zero,40(sp)
   106b8:	04013823          	sd	zero,80(sp)
   106bc:	06013423          	sd	zero,104(sp)
   106c0:	06013c23          	sd	zero,120(sp)
   106c4:	08013423          	sd	zero,136(sp)
   106c8:	06013823          	sd	zero,112(sp)
   106cc:	00013423          	sd	zero,8(sp)
   106d0:	01000d13          	li	s10,16
   106d4:	00011c17          	auipc	s8,0x11
   106d8:	cccc0c13          	addi	s8,s8,-820 # 213a0 <zeroes.4539>
   106dc:	03013a83          	ld	s5,48(sp)
   106e0:	1e078ce3          	beqz	a5,110d8 <_vfprintf_r+0xb18>
   106e4:	02500693          	li	a3,37
   106e8:	00d79463          	bne	a5,a3,106f0 <_vfprintf_r+0x130>
   106ec:	6e80106f          	j	11dd4 <_vfprintf_r+0x1814>
   106f0:	000d8413          	mv	s0,s11
   106f4:	00c0006f          	j	10700 <_vfprintf_r+0x140>
   106f8:	10d78e63          	beq	a5,a3,10814 <_vfprintf_r+0x254>
   106fc:	00048413          	mv	s0,s1
   10700:	00144783          	lbu	a5,1(s0)
   10704:	00140493          	addi	s1,s0,1
   10708:	fe0798e3          	bnez	a5,106f8 <_vfprintf_r+0x138>
   1070c:	41b4893b          	subw	s2,s1,s11
   10710:	1c0904e3          	beqz	s2,110d8 <_vfprintf_r+0xb18>
   10714:	12013683          	ld	a3,288(sp)
   10718:	11812783          	lw	a5,280(sp)
   1071c:	01b33023          	sd	s11,0(t1)
   10720:	012686b3          	add	a3,a3,s2
   10724:	0017879b          	addiw	a5,a5,1
   10728:	01233423          	sd	s2,8(t1)
   1072c:	12d13023          	sd	a3,288(sp)
   10730:	10f12c23          	sw	a5,280(sp)
   10734:	0007869b          	sext.w	a3,a5
   10738:	00700793          	li	a5,7
   1073c:	01030313          	addi	t1,t1,16
   10740:	0ed7c063          	blt	a5,a3,10820 <_vfprintf_r+0x260>
   10744:	00813703          	ld	a4,8(sp)
   10748:	00144783          	lbu	a5,1(s0)
   1074c:	00e9073b          	addw	a4,s2,a4
   10750:	00e13423          	sd	a4,8(sp)
   10754:	180782e3          	beqz	a5,110d8 <_vfprintf_r+0xb18>
   10758:	00148913          	addi	s2,s1,1
   1075c:	0014c403          	lbu	s0,1(s1)
   10760:	0c010fa3          	sb	zero,223(sp)
   10764:	fff00b93          	li	s7,-1
   10768:	00000993          	li	s3,0
   1076c:	00000493          	li	s1,0
   10770:	00900a13          	li	s4,9
   10774:	02a00b13          	li	s6,42
   10778:	00030c93          	mv	s9,t1
   1077c:	00190913          	addi	s2,s2,1
   10780:	0004041b          	sext.w	s0,s0
   10784:	05a00693          	li	a3,90
   10788:	fe04079b          	addiw	a5,s0,-32
   1078c:	0007871b          	sext.w	a4,a5
   10790:	20e6ea63          	bltu	a3,a4,109a4 <_vfprintf_r+0x3e4>
   10794:	02079793          	slli	a5,a5,0x20
   10798:	00011717          	auipc	a4,0x11
   1079c:	a8870713          	addi	a4,a4,-1400 # 21220 <__clzdi2+0x84>
   107a0:	01e7d793          	srli	a5,a5,0x1e
   107a4:	00e787b3          	add	a5,a5,a4
   107a8:	0007a783          	lw	a5,0(a5) # 2000 <main-0xe0b0>
   107ac:	00e787b3          	add	a5,a5,a4
   107b0:	00078067          	jr	a5
   107b4:	0104e493          	ori	s1,s1,16
   107b8:	0004849b          	sext.w	s1,s1
   107bc:	00094403          	lbu	s0,0(s2)
   107c0:	fbdff06f          	j	1077c <_vfprintf_r+0x1bc>
   107c4:	00013583          	ld	a1,0(sp)
   107c8:	03013503          	ld	a0,48(sp)
   107cc:	628020ef          	jal	ra,12df4 <__swsetup_r>
   107d0:	00050463          	beqz	a0,107d8 <_vfprintf_r+0x218>
   107d4:	1b40206f          	j	12988 <_vfprintf_r+0x23c8>
   107d8:	00013783          	ld	a5,0(sp)
   107dc:	00a00693          	li	a3,10
   107e0:	0107d783          	lhu	a5,16(a5)
   107e4:	01a7f793          	andi	a5,a5,26
   107e8:	ead798e3          	bne	a5,a3,10698 <_vfprintf_r+0xd8>
   107ec:	00013783          	ld	a5,0(sp)
   107f0:	01279783          	lh	a5,18(a5)
   107f4:	ea07c2e3          	bltz	a5,10698 <_vfprintf_r+0xd8>
   107f8:	01013683          	ld	a3,16(sp)
   107fc:	00013583          	ld	a1,0(sp)
   10800:	03013503          	ld	a0,48(sp)
   10804:	000b0613          	mv	a2,s6
   10808:	52c020ef          	jal	ra,12d34 <__sbprintf>
   1080c:	00a13423          	sd	a0,8(sp)
   10810:	0680006f          	j	10878 <_vfprintf_r+0x2b8>
   10814:	41b4893b          	subw	s2,s1,s11
   10818:	f40900e3          	beqz	s2,10758 <_vfprintf_r+0x198>
   1081c:	ef9ff06f          	j	10714 <_vfprintf_r+0x154>
   10820:	00013583          	ld	a1,0(sp)
   10824:	11010613          	addi	a2,sp,272
   10828:	000a8513          	mv	a0,s5
   1082c:	62d0a0ef          	jal	ra,1b658 <__sprint_r>
   10830:	02051a63          	bnez	a0,10864 <_vfprintf_r+0x2a4>
   10834:	19010313          	addi	t1,sp,400
   10838:	f0dff06f          	j	10744 <_vfprintf_r+0x184>
   1083c:	00013583          	ld	a1,0(sp)
   10840:	11010613          	addi	a2,sp,272
   10844:	000a8513          	mv	a0,s5
   10848:	6110a0ef          	jal	ra,1b658 <__sprint_r>
   1084c:	060502e3          	beqz	a0,110b0 <_vfprintf_r+0xaf0>
   10850:	01813783          	ld	a5,24(sp)
   10854:	00078863          	beqz	a5,10864 <_vfprintf_r+0x2a4>
   10858:	03013503          	ld	a0,48(sp)
   1085c:	00078593          	mv	a1,a5
   10860:	050030ef          	jal	ra,138b0 <_free_r>
   10864:	00013783          	ld	a5,0(sp)
   10868:	0107d783          	lhu	a5,16(a5)
   1086c:	0407f793          	andi	a5,a5,64
   10870:	00078463          	beqz	a5,10878 <_vfprintf_r+0x2b8>
   10874:	1140206f          	j	12988 <_vfprintf_r+0x23c8>
   10878:	27813083          	ld	ra,632(sp)
   1087c:	27013403          	ld	s0,624(sp)
   10880:	00813503          	ld	a0,8(sp)
   10884:	26813483          	ld	s1,616(sp)
   10888:	26013903          	ld	s2,608(sp)
   1088c:	25813983          	ld	s3,600(sp)
   10890:	25013a03          	ld	s4,592(sp)
   10894:	24813a83          	ld	s5,584(sp)
   10898:	24013b03          	ld	s6,576(sp)
   1089c:	23813b83          	ld	s7,568(sp)
   108a0:	23013c03          	ld	s8,560(sp)
   108a4:	22813c83          	ld	s9,552(sp)
   108a8:	22013d03          	ld	s10,544(sp)
   108ac:	21813d83          	ld	s11,536(sp)
   108b0:	28010113          	addi	sp,sp,640
   108b4:	00008067          	ret
   108b8:	01013683          	ld	a3,16(sp)
   108bc:	00011797          	auipc	a5,0x11
   108c0:	b4478793          	addi	a5,a5,-1212 # 21400 <zeroes.4539+0x60>
   108c4:	04f13823          	sd	a5,80(sp)
   108c8:	0204f793          	andi	a5,s1,32
   108cc:	000c8313          	mv	t1,s9
   108d0:	00868713          	addi	a4,a3,8
   108d4:	10078863          	beqz	a5,109e4 <_vfprintf_r+0x424>
   108d8:	0006bb03          	ld	s6,0(a3)
   108dc:	0014f793          	andi	a5,s1,1
   108e0:	00078e63          	beqz	a5,108fc <_vfprintf_r+0x33c>
   108e4:	000b0c63          	beqz	s6,108fc <_vfprintf_r+0x33c>
   108e8:	0024e493          	ori	s1,s1,2
   108ec:	03000793          	li	a5,48
   108f0:	0ef10023          	sb	a5,224(sp)
   108f4:	0e8100a3          	sb	s0,225(sp)
   108f8:	0004849b          	sext.w	s1,s1
   108fc:	bff4f813          	andi	a6,s1,-1025
   10900:	00080a1b          	sext.w	s4,a6
   10904:	00e13823          	sd	a4,16(sp)
   10908:	00200793          	li	a5,2
   1090c:	0c010fa3          	sb	zero,223(sp)
   10910:	fff00713          	li	a4,-1
   10914:	5eeb8e63          	beq	s7,a4,10f10 <_vfprintf_r+0x950>
   10918:	f7fa7493          	andi	s1,s4,-129
   1091c:	0004849b          	sext.w	s1,s1
   10920:	6c0b16e3          	bnez	s6,117ec <_vfprintf_r+0x122c>
   10924:	000b8463          	beqz	s7,1092c <_vfprintf_r+0x36c>
   10928:	0bc0106f          	j	119e4 <_vfprintf_r+0x1424>
   1092c:	52079663          	bnez	a5,10e58 <_vfprintf_r+0x898>
   10930:	001a7c93          	andi	s9,s4,1
   10934:	18c10d93          	addi	s11,sp,396
   10938:	000c8463          	beqz	s9,10940 <_vfprintf_r+0x380>
   1093c:	2f40106f          	j	11c30 <_vfprintf_r+0x1670>
   10940:	000c8a1b          	sext.w	s4,s9
   10944:	017cd463          	bge	s9,s7,1094c <_vfprintf_r+0x38c>
   10948:	000b8a1b          	sext.w	s4,s7
   1094c:	0df14783          	lbu	a5,223(sp)
   10950:	00013c23          	sd	zero,24(sp)
   10954:	04013023          	sd	zero,64(sp)
   10958:	02013c23          	sd	zero,56(sp)
   1095c:	02013023          	sd	zero,32(sp)
   10960:	64078663          	beqz	a5,10fac <_vfprintf_r+0x9ec>
   10964:	001a0a1b          	addiw	s4,s4,1
   10968:	6440006f          	j	10fac <_vfprintf_r+0x9ec>
   1096c:	00000993          	li	s3,0
   10970:	00190913          	addi	s2,s2,1
   10974:	fff94703          	lbu	a4,-1(s2)
   10978:	0029979b          	slliw	a5,s3,0x2
   1097c:	013787bb          	addw	a5,a5,s3
   10980:	fd04041b          	addiw	s0,s0,-48
   10984:	0017979b          	slliw	a5,a5,0x1
   10988:	fd07061b          	addiw	a2,a4,-48
   1098c:	00f409bb          	addw	s3,s0,a5
   10990:	0007041b          	sext.w	s0,a4
   10994:	fcca7ee3          	bgeu	s4,a2,10970 <_vfprintf_r+0x3b0>
   10998:	fe04079b          	addiw	a5,s0,-32
   1099c:	0007871b          	sext.w	a4,a5
   109a0:	dee6fae3          	bgeu	a3,a4,10794 <_vfprintf_r+0x1d4>
   109a4:	000c8313          	mv	t1,s9
   109a8:	72040863          	beqz	s0,110d8 <_vfprintf_r+0xb18>
   109ac:	12810423          	sb	s0,296(sp)
   109b0:	0c010fa3          	sb	zero,223(sp)
   109b4:	00100a13          	li	s4,1
   109b8:	00100c93          	li	s9,1
   109bc:	12810d93          	addi	s11,sp,296
   109c0:	5d80006f          	j	10f98 <_vfprintf_r+0x9d8>
   109c4:	01013683          	ld	a3,16(sp)
   109c8:	00011797          	auipc	a5,0x11
   109cc:	a5078793          	addi	a5,a5,-1456 # 21418 <zeroes.4539+0x78>
   109d0:	04f13823          	sd	a5,80(sp)
   109d4:	0204f793          	andi	a5,s1,32
   109d8:	000c8313          	mv	t1,s9
   109dc:	00868713          	addi	a4,a3,8
   109e0:	ee079ce3          	bnez	a5,108d8 <_vfprintf_r+0x318>
   109e4:	0104f793          	andi	a5,s1,16
   109e8:	00078463          	beqz	a5,109f0 <_vfprintf_r+0x430>
   109ec:	26c0106f          	j	11c58 <_vfprintf_r+0x1698>
   109f0:	01013683          	ld	a3,16(sp)
   109f4:	0404f793          	andi	a5,s1,64
   109f8:	0006ab03          	lw	s6,0(a3)
   109fc:	00079463          	bnez	a5,10a04 <_vfprintf_r+0x444>
   10a00:	66c0106f          	j	1206c <_vfprintf_r+0x1aac>
   10a04:	030b1b13          	slli	s6,s6,0x30
   10a08:	030b5b13          	srli	s6,s6,0x30
   10a0c:	ed1ff06f          	j	108dc <_vfprintf_r+0x31c>
   10a10:	00094403          	lbu	s0,0(s2)
   10a14:	0044e493          	ori	s1,s1,4
   10a18:	0004849b          	sext.w	s1,s1
   10a1c:	d61ff06f          	j	1077c <_vfprintf_r+0x1bc>
   10a20:	00094403          	lbu	s0,0(s2)
   10a24:	06800793          	li	a5,104
   10a28:	00f41463          	bne	s0,a5,10a30 <_vfprintf_r+0x470>
   10a2c:	2e40106f          	j	11d10 <_vfprintf_r+0x1750>
   10a30:	0404e493          	ori	s1,s1,64
   10a34:	0004849b          	sext.w	s1,s1
   10a38:	d45ff06f          	j	1077c <_vfprintf_r+0x1bc>
   10a3c:	0084f793          	andi	a5,s1,8
   10a40:	000c8313          	mv	t1,s9
   10a44:	00079463          	bnez	a5,10a4c <_vfprintf_r+0x48c>
   10a48:	22c0106f          	j	11c74 <_vfprintf_r+0x16b4>
   10a4c:	01013783          	ld	a5,16(sp)
   10a50:	00f78793          	addi	a5,a5,15
   10a54:	ff07f793          	andi	a5,a5,-16
   10a58:	0007b683          	ld	a3,0(a5)
   10a5c:	0087b703          	ld	a4,8(a5)
   10a60:	01078793          	addi	a5,a5,16
   10a64:	00f13823          	sd	a5,16(sp)
   10a68:	10d13023          	sd	a3,256(sp)
   10a6c:	10e13423          	sd	a4,264(sp)
   10a70:	10010513          	addi	a0,sp,256
   10a74:	00613c23          	sd	t1,24(sp)
   10a78:	69d050ef          	jal	ra,16914 <_ldcheck>
   10a7c:	0ea12423          	sw	a0,232(sp)
   10a80:	00200793          	li	a5,2
   10a84:	01813303          	ld	t1,24(sp)
   10a88:	00f51463          	bne	a0,a5,10a90 <_vfprintf_r+0x4d0>
   10a8c:	4e40106f          	j	11f70 <_vfprintf_r+0x19b0>
   10a90:	00100793          	li	a5,1
   10a94:	00f51463          	bne	a0,a5,10a9c <_vfprintf_r+0x4dc>
   10a98:	5e40106f          	j	1207c <_vfprintf_r+0x1abc>
   10a9c:	06100793          	li	a5,97
   10aa0:	00f41463          	bne	s0,a5,10aa8 <_vfprintf_r+0x4e8>
   10aa4:	7fd0106f          	j	12aa0 <_vfprintf_r+0x24e0>
   10aa8:	04100793          	li	a5,65
   10aac:	00f41463          	bne	s0,a5,10ab4 <_vfprintf_r+0x4f4>
   10ab0:	12d0106f          	j	123dc <_vfprintf_r+0x1e1c>
   10ab4:	fdf47713          	andi	a4,s0,-33
   10ab8:	fff00793          	li	a5,-1
   10abc:	02e13c23          	sd	a4,56(sp)
   10ac0:	00fb9463          	bne	s7,a5,10ac8 <_vfprintf_r+0x508>
   10ac4:	7fd0106f          	j	12ac0 <_vfprintf_r+0x2500>
   10ac8:	04700793          	li	a5,71
   10acc:	00f71463          	bne	a4,a5,10ad4 <_vfprintf_r+0x514>
   10ad0:	7e10106f          	j	12ab0 <_vfprintf_r+0x24f0>
   10ad4:	10813c83          	ld	s9,264(sp)
   10ad8:	1004e793          	ori	a5,s1,256
   10adc:	04913023          	sd	s1,64(sp)
   10ae0:	0007879b          	sext.w	a5,a5
   10ae4:	10013e83          	ld	t4,256(sp)
   10ae8:	000cd463          	bgez	s9,10af0 <_vfprintf_r+0x530>
   10aec:	4c10106f          	j	127ac <_vfprintf_r+0x21ec>
   10af0:	06013023          	sd	zero,96(sp)
   10af4:	00078493          	mv	s1,a5
   10af8:	00013c23          	sd	zero,24(sp)
   10afc:	03813703          	ld	a4,56(sp)
   10b00:	04600793          	li	a5,70
   10b04:	00f71463          	bne	a4,a5,10b0c <_vfprintf_r+0x54c>
   10b08:	4050106f          	j	1270c <_vfprintf_r+0x214c>
   10b0c:	04500793          	li	a5,69
   10b10:	02613423          	sd	t1,40(sp)
   10b14:	00f71463          	bne	a4,a5,10b1c <_vfprintf_r+0x55c>
   10b18:	7250106f          	j	12a3c <_vfprintf_r+0x247c>
   10b1c:	0e810793          	addi	a5,sp,232
   10b20:	000b8713          	mv	a4,s7
   10b24:	000e8593          	mv	a1,t4
   10b28:	0f810893          	addi	a7,sp,248
   10b2c:	0ec10813          	addi	a6,sp,236
   10b30:	00200693          	li	a3,2
   10b34:	000c8613          	mv	a2,s9
   10b38:	000a8513          	mv	a0,s5
   10b3c:	03d13023          	sd	t4,32(sp)
   10b40:	2b5040ef          	jal	ra,155f4 <_ldtoa_r>
   10b44:	03813703          	ld	a4,56(sp)
   10b48:	04700793          	li	a5,71
   10b4c:	00050d93          	mv	s11,a0
   10b50:	02013e83          	ld	t4,32(sp)
   10b54:	02813303          	ld	t1,40(sp)
   10b58:	00f70463          	beq	a4,a5,10b60 <_vfprintf_r+0x5a0>
   10b5c:	1a80206f          	j	12d04 <_vfprintf_r+0x2744>
   10b60:	04013783          	ld	a5,64(sp)
   10b64:	01750a33          	add	s4,a0,s7
   10b68:	0017f793          	andi	a5,a5,1
   10b6c:	00078463          	beqz	a5,10b74 <_vfprintf_r+0x5b4>
   10b70:	3ed0106f          	j	1275c <_vfprintf_r+0x219c>
   10b74:	0f813783          	ld	a5,248(sp)
   10b78:	41b787bb          	subw	a5,a5,s11
   10b7c:	02f13423          	sd	a5,40(sp)
   10b80:	0e812703          	lw	a4,232(sp)
   10b84:	04700793          	li	a5,71
   10b88:	02e13023          	sd	a4,32(sp)
   10b8c:	03813703          	ld	a4,56(sp)
   10b90:	00f71463          	bne	a4,a5,10b98 <_vfprintf_r+0x5d8>
   10b94:	2ed0106f          	j	12680 <_vfprintf_r+0x20c0>
   10b98:	03813703          	ld	a4,56(sp)
   10b9c:	04600793          	li	a5,70
   10ba0:	00f71463          	bne	a4,a5,10ba8 <_vfprintf_r+0x5e8>
   10ba4:	5550106f          	j	128f8 <_vfprintf_r+0x2338>
   10ba8:	02013783          	ld	a5,32(sp)
   10bac:	03813703          	ld	a4,56(sp)
   10bb0:	04100613          	li	a2,65
   10bb4:	fff78a1b          	addiw	s4,a5,-1
   10bb8:	0f412423          	sw	s4,232(sp)
   10bbc:	0ff47793          	andi	a5,s0,255
   10bc0:	00000693          	li	a3,0
   10bc4:	00c71863          	bne	a4,a2,10bd4 <_vfprintf_r+0x614>
   10bc8:	00f7879b          	addiw	a5,a5,15
   10bcc:	0ff7f793          	andi	a5,a5,255
   10bd0:	00100693          	li	a3,1
   10bd4:	0ef10823          	sb	a5,240(sp)
   10bd8:	02b00793          	li	a5,43
   10bdc:	000a5a63          	bgez	s4,10bf0 <_vfprintf_r+0x630>
   10be0:	02013783          	ld	a5,32(sp)
   10be4:	00100a13          	li	s4,1
   10be8:	40fa0a3b          	subw	s4,s4,a5
   10bec:	02d00793          	li	a5,45
   10bf0:	0ef108a3          	sb	a5,241(sp)
   10bf4:	00900793          	li	a5,9
   10bf8:	0147c463          	blt	a5,s4,10c00 <_vfprintf_r+0x640>
   10bfc:	0280206f          	j	12c24 <_vfprintf_r+0x2664>
   10c00:	0ff10b13          	addi	s6,sp,255
   10c04:	000b0c93          	mv	s9,s6
   10c08:	06300493          	li	s1,99
   10c0c:	00030b93          	mv	s7,t1
   10c10:	00c0006f          	j	10c1c <_vfprintf_r+0x65c>
   10c14:	00060c93          	mv	s9,a2
   10c18:	00050a13          	mv	s4,a0
   10c1c:	00a00593          	li	a1,10
   10c20:	000a0513          	mv	a0,s4
   10c24:	eb4ff0ef          	jal	ra,102d8 <__moddi3>
   10c28:	0305051b          	addiw	a0,a0,48
   10c2c:	feac8fa3          	sb	a0,-1(s9)
   10c30:	00a00593          	li	a1,10
   10c34:	000a0513          	mv	a0,s4
   10c38:	e1cff0ef          	jal	ra,10254 <__divdi3>
   10c3c:	fffc8613          	addi	a2,s9,-1
   10c40:	0005051b          	sext.w	a0,a0
   10c44:	fd44c8e3          	blt	s1,s4,10c14 <_vfprintf_r+0x654>
   10c48:	0305079b          	addiw	a5,a0,48
   10c4c:	0ff7f793          	andi	a5,a5,255
   10c50:	ffec8693          	addi	a3,s9,-2
   10c54:	fef60fa3          	sb	a5,-1(a2)
   10c58:	000b8313          	mv	t1,s7
   10c5c:	0166e463          	bltu	a3,s6,10c64 <_vfprintf_r+0x6a4>
   10c60:	0b00206f          	j	12d10 <_vfprintf_r+0x2750>
   10c64:	0f210613          	addi	a2,sp,242
   10c68:	0080006f          	j	10c70 <_vfprintf_r+0x6b0>
   10c6c:	0006c783          	lbu	a5,0(a3)
   10c70:	00160613          	addi	a2,a2,1
   10c74:	00168693          	addi	a3,a3,1
   10c78:	fef60fa3          	sb	a5,-1(a2)
   10c7c:	ff6698e3          	bne	a3,s6,10c6c <_vfprintf_r+0x6ac>
   10c80:	10110793          	addi	a5,sp,257
   10c84:	419787b3          	sub	a5,a5,s9
   10c88:	0f210713          	addi	a4,sp,242
   10c8c:	00f707b3          	add	a5,a4,a5
   10c90:	0f010693          	addi	a3,sp,240
   10c94:	40d787bb          	subw	a5,a5,a3
   10c98:	06f13423          	sd	a5,104(sp)
   10c9c:	06813783          	ld	a5,104(sp)
   10ca0:	02813703          	ld	a4,40(sp)
   10ca4:	00100693          	li	a3,1
   10ca8:	00f70cbb          	addw	s9,a4,a5
   10cac:	000c8793          	mv	a5,s9
   10cb0:	00e6c463          	blt	a3,a4,10cb8 <_vfprintf_r+0x6f8>
   10cb4:	7c10106f          	j	12c74 <_vfprintf_r+0x26b4>
   10cb8:	04813703          	ld	a4,72(sp)
   10cbc:	00e78cbb          	addw	s9,a5,a4
   10cc0:	04013783          	ld	a5,64(sp)
   10cc4:	fffcca13          	not	s4,s9
   10cc8:	43fa5a13          	srai	s4,s4,0x3f
   10ccc:	bff7f493          	andi	s1,a5,-1025
   10cd0:	0004849b          	sext.w	s1,s1
   10cd4:	014cfa33          	and	s4,s9,s4
   10cd8:	1004e493          	ori	s1,s1,256
   10cdc:	000a0a1b          	sext.w	s4,s4
   10ce0:	04013023          	sd	zero,64(sp)
   10ce4:	02013c23          	sd	zero,56(sp)
   10ce8:	02013023          	sd	zero,32(sp)
   10cec:	06013783          	ld	a5,96(sp)
   10cf0:	00079463          	bnez	a5,10cf8 <_vfprintf_r+0x738>
   10cf4:	2050106f          	j	126f8 <_vfprintf_r+0x2138>
   10cf8:	02d00793          	li	a5,45
   10cfc:	0cf10fa3          	sb	a5,223(sp)
   10d00:	00000b93          	li	s7,0
   10d04:	001a0a1b          	addiw	s4,s4,1
   10d08:	2a40006f          	j	10fac <_vfprintf_r+0x9ec>
   10d0c:	01013783          	ld	a5,16(sp)
   10d10:	0104e813          	ori	a6,s1,16
   10d14:	000c8313          	mv	t1,s9
   10d18:	00080a1b          	sext.w	s4,a6
   10d1c:	00878713          	addi	a4,a5,8
   10d20:	01013783          	ld	a5,16(sp)
   10d24:	0007bb03          	ld	s6,0(a5)
   10d28:	00100793          	li	a5,1
   10d2c:	00e13823          	sd	a4,16(sp)
   10d30:	bddff06f          	j	1090c <_vfprintf_r+0x34c>
   10d34:	01013783          	ld	a5,16(sp)
   10d38:	0c010fa3          	sb	zero,223(sp)
   10d3c:	000c8313          	mv	t1,s9
   10d40:	0007bd83          	ld	s11,0(a5)
   10d44:	00878b13          	addi	s6,a5,8
   10d48:	000d9463          	bnez	s11,10d50 <_vfprintf_r+0x790>
   10d4c:	7fd0006f          	j	11d48 <_vfprintf_r+0x1788>
   10d50:	fff00793          	li	a5,-1
   10d54:	00fb9463          	bne	s7,a5,10d5c <_vfprintf_r+0x79c>
   10d58:	2780106f          	j	11fd0 <_vfprintf_r+0x1a10>
   10d5c:	000b8613          	mv	a2,s7
   10d60:	00000593          	li	a1,0
   10d64:	000d8513          	mv	a0,s11
   10d68:	01913823          	sd	s9,16(sp)
   10d6c:	768060ef          	jal	ra,174d4 <memchr>
   10d70:	00a13c23          	sd	a0,24(sp)
   10d74:	01013303          	ld	t1,16(sp)
   10d78:	00051463          	bnez	a0,10d80 <_vfprintf_r+0x7c0>
   10d7c:	2e90106f          	j	12864 <_vfprintf_r+0x22a4>
   10d80:	01813783          	ld	a5,24(sp)
   10d84:	01613823          	sd	s6,16(sp)
   10d88:	00013c23          	sd	zero,24(sp)
   10d8c:	41b78cbb          	subw	s9,a5,s11
   10d90:	fffcca13          	not	s4,s9
   10d94:	0df14783          	lbu	a5,223(sp)
   10d98:	43fa5a13          	srai	s4,s4,0x3f
   10d9c:	014cfa33          	and	s4,s9,s4
   10da0:	04013023          	sd	zero,64(sp)
   10da4:	02013c23          	sd	zero,56(sp)
   10da8:	02013023          	sd	zero,32(sp)
   10dac:	000a0a1b          	sext.w	s4,s4
   10db0:	00000b93          	li	s7,0
   10db4:	ba0798e3          	bnez	a5,10964 <_vfprintf_r+0x3a4>
   10db8:	1f40006f          	j	10fac <_vfprintf_r+0x9ec>
   10dbc:	01013703          	ld	a4,16(sp)
   10dc0:	0104e813          	ori	a6,s1,16
   10dc4:	000c8313          	mv	t1,s9
   10dc8:	0008049b          	sext.w	s1,a6
   10dcc:	00870713          	addi	a4,a4,8
   10dd0:	01013783          	ld	a5,16(sp)
   10dd4:	0007bb03          	ld	s6,0(a5)
   10dd8:	00e13823          	sd	a4,16(sp)
   10ddc:	bff4f813          	andi	a6,s1,-1025
   10de0:	00080a1b          	sext.w	s4,a6
   10de4:	00000793          	li	a5,0
   10de8:	b25ff06f          	j	1090c <_vfprintf_r+0x34c>
   10dec:	0084e493          	ori	s1,s1,8
   10df0:	0004849b          	sext.w	s1,s1
   10df4:	00094403          	lbu	s0,0(s2)
   10df8:	985ff06f          	j	1077c <_vfprintf_r+0x1bc>
   10dfc:	01013703          	ld	a4,16(sp)
   10e00:	0204f793          	andi	a5,s1,32
   10e04:	000c8313          	mv	t1,s9
   10e08:	00870713          	addi	a4,a4,8
   10e0c:	660790e3          	bnez	a5,11c6c <_vfprintf_r+0x16ac>
   10e10:	0104f793          	andi	a5,s1,16
   10e14:	64079ce3          	bnez	a5,11c6c <_vfprintf_r+0x16ac>
   10e18:	0404f793          	andi	a5,s1,64
   10e1c:	00079463          	bnez	a5,10e24 <_vfprintf_r+0x864>
   10e20:	22c0106f          	j	1204c <_vfprintf_r+0x1a8c>
   10e24:	01013783          	ld	a5,16(sp)
   10e28:	00048a13          	mv	s4,s1
   10e2c:	00e13823          	sd	a4,16(sp)
   10e30:	00079b03          	lh	s6,0(a5)
   10e34:	000b0793          	mv	a5,s6
   10e38:	0c07c063          	bltz	a5,10ef8 <_vfprintf_r+0x938>
   10e3c:	fff00793          	li	a5,-1
   10e40:	56fb8063          	beq	s7,a5,113a0 <_vfprintf_r+0xde0>
   10e44:	f7fa7813          	andi	a6,s4,-129
   10e48:	0008049b          	sext.w	s1,a6
   10e4c:	540b1863          	bnez	s6,1139c <_vfprintf_r+0xddc>
   10e50:	000b8463          	beqz	s7,10e58 <_vfprintf_r+0x898>
   10e54:	7f80106f          	j	1264c <_vfprintf_r+0x208c>
   10e58:	00000b93          	li	s7,0
   10e5c:	00000c93          	li	s9,0
   10e60:	18c10d93          	addi	s11,sp,396
   10e64:	addff06f          	j	10940 <_vfprintf_r+0x380>
   10e68:	02b00793          	li	a5,43
   10e6c:	0cf10fa3          	sb	a5,223(sp)
   10e70:	00094403          	lbu	s0,0(s2)
   10e74:	909ff06f          	j	1077c <_vfprintf_r+0x1bc>
   10e78:	0804e493          	ori	s1,s1,128
   10e7c:	0004849b          	sext.w	s1,s1
   10e80:	00094403          	lbu	s0,0(s2)
   10e84:	8f9ff06f          	j	1077c <_vfprintf_r+0x1bc>
   10e88:	00094403          	lbu	s0,0(s2)
   10e8c:	00190793          	addi	a5,s2,1
   10e90:	01641463          	bne	s0,s6,10e98 <_vfprintf_r+0x8d8>
   10e94:	6390106f          	j	12ccc <_vfprintf_r+0x270c>
   10e98:	fd04071b          	addiw	a4,s0,-48
   10e9c:	00078913          	mv	s2,a5
   10ea0:	00000b93          	li	s7,0
   10ea4:	8eea62e3          	bltu	s4,a4,10788 <_vfprintf_r+0x1c8>
   10ea8:	00190913          	addi	s2,s2,1
   10eac:	002b979b          	slliw	a5,s7,0x2
   10eb0:	fff94603          	lbu	a2,-1(s2)
   10eb4:	017787bb          	addw	a5,a5,s7
   10eb8:	0017979b          	slliw	a5,a5,0x1
   10ebc:	00e78bbb          	addw	s7,a5,a4
   10ec0:	fd06071b          	addiw	a4,a2,-48
   10ec4:	feea72e3          	bgeu	s4,a4,10ea8 <_vfprintf_r+0x8e8>
   10ec8:	00060413          	mv	s0,a2
   10ecc:	8bdff06f          	j	10788 <_vfprintf_r+0x1c8>
   10ed0:	01013783          	ld	a5,16(sp)
   10ed4:	0104e813          	ori	a6,s1,16
   10ed8:	000c8313          	mv	t1,s9
   10edc:	00080a1b          	sext.w	s4,a6
   10ee0:	00878713          	addi	a4,a5,8
   10ee4:	01013783          	ld	a5,16(sp)
   10ee8:	0007b783          	ld	a5,0(a5)
   10eec:	00e13823          	sd	a4,16(sp)
   10ef0:	00078b13          	mv	s6,a5
   10ef4:	f407d4e3          	bgez	a5,10e3c <_vfprintf_r+0x87c>
   10ef8:	02d00793          	li	a5,45
   10efc:	0cf10fa3          	sb	a5,223(sp)
   10f00:	fff00713          	li	a4,-1
   10f04:	41600b33          	neg	s6,s6
   10f08:	00100793          	li	a5,1
   10f0c:	a0eb96e3          	bne	s7,a4,10918 <_vfprintf_r+0x358>
   10f10:	00100713          	li	a4,1
   10f14:	48e78663          	beq	a5,a4,113a0 <_vfprintf_r+0xde0>
   10f18:	00200713          	li	a4,2
   10f1c:	2ce78ee3          	beq	a5,a4,119f8 <_vfprintf_r+0x1438>
   10f20:	18c10c93          	addi	s9,sp,396
   10f24:	000c8693          	mv	a3,s9
   10f28:	0080006f          	j	10f30 <_vfprintf_r+0x970>
   10f2c:	000d8693          	mv	a3,s11
   10f30:	007b7793          	andi	a5,s6,7
   10f34:	03078793          	addi	a5,a5,48
   10f38:	fef68fa3          	sb	a5,-1(a3)
   10f3c:	003b5b13          	srli	s6,s6,0x3
   10f40:	fff68d93          	addi	s11,a3,-1
   10f44:	fe0b14e3          	bnez	s6,10f2c <_vfprintf_r+0x96c>
   10f48:	001a7613          	andi	a2,s4,1
   10f4c:	4a060463          	beqz	a2,113f4 <_vfprintf_r+0xe34>
   10f50:	03000613          	li	a2,48
   10f54:	4ac78063          	beq	a5,a2,113f4 <_vfprintf_r+0xe34>
   10f58:	ffe68693          	addi	a3,a3,-2
   10f5c:	fecd8fa3          	sb	a2,-1(s11)
   10f60:	40dc8cbb          	subw	s9,s9,a3
   10f64:	000a0493          	mv	s1,s4
   10f68:	00068d93          	mv	s11,a3
   10f6c:	9d5ff06f          	j	10940 <_vfprintf_r+0x380>
   10f70:	01013703          	ld	a4,16(sp)
   10f74:	000c8313          	mv	t1,s9
   10f78:	0c010fa3          	sb	zero,223(sp)
   10f7c:	00072783          	lw	a5,0(a4)
   10f80:	00870713          	addi	a4,a4,8
   10f84:	00e13823          	sd	a4,16(sp)
   10f88:	12f10423          	sb	a5,296(sp)
   10f8c:	00100a13          	li	s4,1
   10f90:	00100c93          	li	s9,1
   10f94:	12810d93          	addi	s11,sp,296
   10f98:	00013c23          	sd	zero,24(sp)
   10f9c:	00000b93          	li	s7,0
   10fa0:	04013023          	sd	zero,64(sp)
   10fa4:	02013c23          	sd	zero,56(sp)
   10fa8:	02013023          	sd	zero,32(sp)
   10fac:	0024fe93          	andi	t4,s1,2
   10fb0:	000e8e9b          	sext.w	t4,t4
   10fb4:	000e8463          	beqz	t4,10fbc <_vfprintf_r+0x9fc>
   10fb8:	002a0a1b          	addiw	s4,s4,2
   10fbc:	0844ff13          	andi	t5,s1,132
   10fc0:	12013783          	ld	a5,288(sp)
   10fc4:	000f1663          	bnez	t5,10fd0 <_vfprintf_r+0xa10>
   10fc8:	4149883b          	subw	a6,s3,s4
   10fcc:	030044e3          	bgtz	a6,117f4 <_vfprintf_r+0x1234>
   10fd0:	0df14683          	lbu	a3,223(sp)
   10fd4:	02068c63          	beqz	a3,1100c <_vfprintf_r+0xa4c>
   10fd8:	11812683          	lw	a3,280(sp)
   10fdc:	0df10613          	addi	a2,sp,223
   10fe0:	00c33023          	sd	a2,0(t1)
   10fe4:	0016869b          	addiw	a3,a3,1
   10fe8:	00100613          	li	a2,1
   10fec:	00178793          	addi	a5,a5,1
   10ff0:	00c33423          	sd	a2,8(t1)
   10ff4:	10d12c23          	sw	a3,280(sp)
   10ff8:	0006861b          	sext.w	a2,a3
   10ffc:	12f13023          	sd	a5,288(sp)
   11000:	00700693          	li	a3,7
   11004:	01030313          	addi	t1,t1,16
   11008:	0ec6c663          	blt	a3,a2,110f4 <_vfprintf_r+0xb34>
   1100c:	020e8c63          	beqz	t4,11044 <_vfprintf_r+0xa84>
   11010:	11812683          	lw	a3,280(sp)
   11014:	0e010613          	addi	a2,sp,224
   11018:	00c33023          	sd	a2,0(t1)
   1101c:	0016869b          	addiw	a3,a3,1
   11020:	00200613          	li	a2,2
   11024:	00278793          	addi	a5,a5,2
   11028:	00c33423          	sd	a2,8(t1)
   1102c:	10d12c23          	sw	a3,280(sp)
   11030:	0006861b          	sext.w	a2,a3
   11034:	12f13023          	sd	a5,288(sp)
   11038:	00700693          	li	a3,7
   1103c:	01030313          	addi	t1,t1,16
   11040:	0cc6c4e3          	blt	a3,a2,11908 <_vfprintf_r+0x1348>
   11044:	08000693          	li	a3,128
   11048:	4edf0063          	beq	t5,a3,11528 <_vfprintf_r+0xf68>
   1104c:	419b8bbb          	subw	s7,s7,s9
   11050:	5b704e63          	bgtz	s7,1160c <_vfprintf_r+0x104c>
   11054:	1004f693          	andi	a3,s1,256
   11058:	3a069463          	bnez	a3,11400 <_vfprintf_r+0xe40>
   1105c:	11812703          	lw	a4,280(sp)
   11060:	019787b3          	add	a5,a5,s9
   11064:	01b33023          	sd	s11,0(t1)
   11068:	0017069b          	addiw	a3,a4,1
   1106c:	01933423          	sd	s9,8(t1)
   11070:	12f13023          	sd	a5,288(sp)
   11074:	10d12c23          	sw	a3,280(sp)
   11078:	00700713          	li	a4,7
   1107c:	12d74463          	blt	a4,a3,111a4 <_vfprintf_r+0xbe4>
   11080:	01030313          	addi	t1,t1,16
   11084:	0044f493          	andi	s1,s1,4
   11088:	00048663          	beqz	s1,11094 <_vfprintf_r+0xad4>
   1108c:	4149843b          	subw	s0,s3,s4
   11090:	0a8042e3          	bgtz	s0,11934 <_vfprintf_r+0x1374>
   11094:	00098713          	mv	a4,s3
   11098:	0149d463          	bge	s3,s4,110a0 <_vfprintf_r+0xae0>
   1109c:	000a0713          	mv	a4,s4
   110a0:	00813683          	ld	a3,8(sp)
   110a4:	00d7073b          	addw	a4,a4,a3
   110a8:	00e13423          	sd	a4,8(sp)
   110ac:	f8079863          	bnez	a5,1083c <_vfprintf_r+0x27c>
   110b0:	01813783          	ld	a5,24(sp)
   110b4:	10012c23          	sw	zero,280(sp)
   110b8:	00078863          	beqz	a5,110c8 <_vfprintf_r+0xb08>
   110bc:	01813583          	ld	a1,24(sp)
   110c0:	000a8513          	mv	a0,s5
   110c4:	7ec020ef          	jal	ra,138b0 <_free_r>
   110c8:	19010313          	addi	t1,sp,400
   110cc:	00090d93          	mv	s11,s2
   110d0:	000dc783          	lbu	a5,0(s11)
   110d4:	e0079863          	bnez	a5,106e4 <_vfprintf_r+0x124>
   110d8:	12013783          	ld	a5,288(sp)
   110dc:	f8078463          	beqz	a5,10864 <_vfprintf_r+0x2a4>
   110e0:	00013583          	ld	a1,0(sp)
   110e4:	03013503          	ld	a0,48(sp)
   110e8:	11010613          	addi	a2,sp,272
   110ec:	56c0a0ef          	jal	ra,1b658 <__sprint_r>
   110f0:	f74ff06f          	j	10864 <_vfprintf_r+0x2a4>
   110f4:	00013583          	ld	a1,0(sp)
   110f8:	11010613          	addi	a2,sp,272
   110fc:	000a8513          	mv	a0,s5
   11100:	09e13023          	sd	t5,128(sp)
   11104:	07d13023          	sd	t4,96(sp)
   11108:	5500a0ef          	jal	ra,1b658 <__sprint_r>
   1110c:	f4051263          	bnez	a0,10850 <_vfprintf_r+0x290>
   11110:	12013783          	ld	a5,288(sp)
   11114:	19010313          	addi	t1,sp,400
   11118:	08013f03          	ld	t5,128(sp)
   1111c:	06013e83          	ld	t4,96(sp)
   11120:	eedff06f          	j	1100c <_vfprintf_r+0xa4c>
   11124:	11812603          	lw	a2,280(sp)
   11128:	04813703          	ld	a4,72(sp)
   1112c:	05813683          	ld	a3,88(sp)
   11130:	01030313          	addi	t1,t1,16
   11134:	00f707b3          	add	a5,a4,a5
   11138:	fed33823          	sd	a3,-16(t1)
   1113c:	0016069b          	addiw	a3,a2,1
   11140:	fee33c23          	sd	a4,-8(t1)
   11144:	12f13023          	sd	a5,288(sp)
   11148:	10d12c23          	sw	a3,280(sp)
   1114c:	00700613          	li	a2,7
   11150:	02d65463          	bge	a2,a3,11178 <_vfprintf_r+0xbb8>
   11154:	00013583          	ld	a1,0(sp)
   11158:	11010613          	addi	a2,sp,272
   1115c:	000a8513          	mv	a0,s5
   11160:	4f80a0ef          	jal	ra,1b658 <__sprint_r>
   11164:	ee051663          	bnez	a0,10850 <_vfprintf_r+0x290>
   11168:	0e812583          	lw	a1,232(sp)
   1116c:	12013783          	ld	a5,288(sp)
   11170:	11812683          	lw	a3,280(sp)
   11174:	19010313          	addi	t1,sp,400
   11178:	0005d463          	bgez	a1,11180 <_vfprintf_r+0xbc0>
   1117c:	7a40106f          	j	12920 <_vfprintf_r+0x2360>
   11180:	02813703          	ld	a4,40(sp)
   11184:	0016861b          	addiw	a2,a3,1
   11188:	01b33023          	sd	s11,0(t1)
   1118c:	00f707b3          	add	a5,a4,a5
   11190:	00e33423          	sd	a4,8(t1)
   11194:	12f13023          	sd	a5,288(sp)
   11198:	10c12c23          	sw	a2,280(sp)
   1119c:	00700713          	li	a4,7
   111a0:	eec750e3          	bge	a4,a2,11080 <_vfprintf_r+0xac0>
   111a4:	00013583          	ld	a1,0(sp)
   111a8:	11010613          	addi	a2,sp,272
   111ac:	000a8513          	mv	a0,s5
   111b0:	4a80a0ef          	jal	ra,1b658 <__sprint_r>
   111b4:	e8051e63          	bnez	a0,10850 <_vfprintf_r+0x290>
   111b8:	12013783          	ld	a5,288(sp)
   111bc:	19010313          	addi	t1,sp,400
   111c0:	ec5ff06f          	j	11084 <_vfprintf_r+0xac4>
   111c4:	01013783          	ld	a5,16(sp)
   111c8:	00094403          	lbu	s0,0(s2)
   111cc:	0007a983          	lw	s3,0(a5)
   111d0:	00878793          	addi	a5,a5,8
   111d4:	00f13823          	sd	a5,16(sp)
   111d8:	da09d263          	bgez	s3,1077c <_vfprintf_r+0x1bc>
   111dc:	413009bb          	negw	s3,s3
   111e0:	835ff06f          	j	10a14 <_vfprintf_r+0x454>
   111e4:	000a8513          	mv	a0,s5
   111e8:	788050ef          	jal	ra,16970 <_localeconv_r>
   111ec:	00853783          	ld	a5,8(a0)
   111f0:	00078513          	mv	a0,a5
   111f4:	06f13823          	sd	a5,112(sp)
   111f8:	2b1070ef          	jal	ra,18ca8 <strlen>
   111fc:	08a13423          	sd	a0,136(sp)
   11200:	00050413          	mv	s0,a0
   11204:	000a8513          	mv	a0,s5
   11208:	768050ef          	jal	ra,16970 <_localeconv_r>
   1120c:	01053783          	ld	a5,16(a0)
   11210:	06f13c23          	sd	a5,120(sp)
   11214:	22040ee3          	beqz	s0,11c50 <_vfprintf_r+0x1690>
   11218:	00094403          	lbu	s0,0(s2)
   1121c:	d6078063          	beqz	a5,1077c <_vfprintf_r+0x1bc>
   11220:	0007c783          	lbu	a5,0(a5)
   11224:	d4078c63          	beqz	a5,1077c <_vfprintf_r+0x1bc>
   11228:	4004e493          	ori	s1,s1,1024
   1122c:	0004849b          	sext.w	s1,s1
   11230:	d4cff06f          	j	1077c <_vfprintf_r+0x1bc>
   11234:	0014e493          	ori	s1,s1,1
   11238:	0004849b          	sext.w	s1,s1
   1123c:	00094403          	lbu	s0,0(s2)
   11240:	d3cff06f          	j	1077c <_vfprintf_r+0x1bc>
   11244:	0df14783          	lbu	a5,223(sp)
   11248:	00094403          	lbu	s0,0(s2)
   1124c:	d2079863          	bnez	a5,1077c <_vfprintf_r+0x1bc>
   11250:	02000793          	li	a5,32
   11254:	0cf10fa3          	sb	a5,223(sp)
   11258:	d24ff06f          	j	1077c <_vfprintf_r+0x1bc>
   1125c:	01013703          	ld	a4,16(sp)
   11260:	0204f793          	andi	a5,s1,32
   11264:	000c8313          	mv	t1,s9
   11268:	00870713          	addi	a4,a4,8
   1126c:	1e079ce3          	bnez	a5,11c64 <_vfprintf_r+0x16a4>
   11270:	0104f793          	andi	a5,s1,16
   11274:	1e0798e3          	bnez	a5,11c64 <_vfprintf_r+0x16a4>
   11278:	01013683          	ld	a3,16(sp)
   1127c:	0404f793          	andi	a5,s1,64
   11280:	0006ab03          	lw	s6,0(a3)
   11284:	5a0786e3          	beqz	a5,12030 <_vfprintf_r+0x1a70>
   11288:	030b1b13          	slli	s6,s6,0x30
   1128c:	030b5b13          	srli	s6,s6,0x30
   11290:	00e13823          	sd	a4,16(sp)
   11294:	00048a13          	mv	s4,s1
   11298:	00100793          	li	a5,1
   1129c:	e70ff06f          	j	1090c <_vfprintf_r+0x34c>
   112a0:	0204e493          	ori	s1,s1,32
   112a4:	0004849b          	sext.w	s1,s1
   112a8:	00094403          	lbu	s0,0(s2)
   112ac:	cd0ff06f          	j	1077c <_vfprintf_r+0x1bc>
   112b0:	01013703          	ld	a4,16(sp)
   112b4:	ffff87b7          	lui	a5,0xffff8
   112b8:	8307c793          	xori	a5,a5,-2000
   112bc:	0ef11023          	sh	a5,224(sp)
   112c0:	00870793          	addi	a5,a4,8
   112c4:	0024e813          	ori	a6,s1,2
   112c8:	00f13823          	sd	a5,16(sp)
   112cc:	00010797          	auipc	a5,0x10
   112d0:	13478793          	addi	a5,a5,308 # 21400 <zeroes.4539+0x60>
   112d4:	04f13823          	sd	a5,80(sp)
   112d8:	000c8313          	mv	t1,s9
   112dc:	00073b03          	ld	s6,0(a4)
   112e0:	00080a1b          	sext.w	s4,a6
   112e4:	00200793          	li	a5,2
   112e8:	07800413          	li	s0,120
   112ec:	e20ff06f          	j	1090c <_vfprintf_r+0x34c>
   112f0:	01013703          	ld	a4,16(sp)
   112f4:	0204f793          	andi	a5,s1,32
   112f8:	000c8313          	mv	t1,s9
   112fc:	00870713          	addi	a4,a4,8
   11300:	ac0798e3          	bnez	a5,10dd0 <_vfprintf_r+0x810>
   11304:	0104f793          	andi	a5,s1,16
   11308:	ac0794e3          	bnez	a5,10dd0 <_vfprintf_r+0x810>
   1130c:	01013683          	ld	a3,16(sp)
   11310:	0404f793          	andi	a5,s1,64
   11314:	0006ab03          	lw	s6,0(a3)
   11318:	500782e3          	beqz	a5,1201c <_vfprintf_r+0x1a5c>
   1131c:	030b1b13          	slli	s6,s6,0x30
   11320:	030b5b13          	srli	s6,s6,0x30
   11324:	00e13823          	sd	a4,16(sp)
   11328:	ab5ff06f          	j	10ddc <_vfprintf_r+0x81c>
   1132c:	01013683          	ld	a3,16(sp)
   11330:	0204f793          	andi	a5,s1,32
   11334:	000c8313          	mv	t1,s9
   11338:	0006b703          	ld	a4,0(a3)
   1133c:	00868693          	addi	a3,a3,8
   11340:	00d13823          	sd	a3,16(sp)
   11344:	0e079ee3          	bnez	a5,11c40 <_vfprintf_r+0x1680>
   11348:	0104f793          	andi	a5,s1,16
   1134c:	0e079ae3          	bnez	a5,11c40 <_vfprintf_r+0x1680>
   11350:	0404f793          	andi	a5,s1,64
   11354:	00078463          	beqz	a5,1135c <_vfprintf_r+0xd9c>
   11358:	01c0106f          	j	12374 <_vfprintf_r+0x1db4>
   1135c:	2004f493          	andi	s1,s1,512
   11360:	00813783          	ld	a5,8(sp)
   11364:	00049463          	bnez	s1,1136c <_vfprintf_r+0xdac>
   11368:	7980106f          	j	12b00 <_vfprintf_r+0x2540>
   1136c:	00f70023          	sb	a5,0(a4)
   11370:	00090d93          	mv	s11,s2
   11374:	d5dff06f          	j	110d0 <_vfprintf_r+0xb10>
   11378:	00094403          	lbu	s0,0(s2)
   1137c:	06c00793          	li	a5,108
   11380:	16f40ee3          	beq	s0,a5,11cfc <_vfprintf_r+0x173c>
   11384:	0104e493          	ori	s1,s1,16
   11388:	0004849b          	sext.w	s1,s1
   1138c:	bf0ff06f          	j	1077c <_vfprintf_r+0x1bc>
   11390:	03013503          	ld	a0,48(sp)
   11394:	39c020ef          	jal	ra,13730 <__sinit>
   11398:	aa0ff06f          	j	10638 <_vfprintf_r+0x78>
   1139c:	00048a13          	mv	s4,s1
   113a0:	00900793          	li	a5,9
   113a4:	3167e4e3          	bltu	a5,s6,11eac <_vfprintf_r+0x18ec>
   113a8:	030b0b1b          	addiw	s6,s6,48
   113ac:	196105a3          	sb	s6,395(sp)
   113b0:	000a0493          	mv	s1,s4
   113b4:	00100c93          	li	s9,1
   113b8:	18b10d93          	addi	s11,sp,395
   113bc:	d84ff06f          	j	10940 <_vfprintf_r+0x380>
   113c0:	0ff00793          	li	a5,255
   113c4:	34f686e3          	beq	a3,a5,11f10 <_vfprintf_r+0x1950>
   113c8:	00900793          	li	a5,9
   113cc:	7537e6e3          	bltu	a5,s3,12318 <_vfprintf_r+0x1d58>
   113d0:	07213c23          	sd	s2,120(sp)
   113d4:	000a8313          	mv	t1,s5
   113d8:	03813983          	ld	s3,56(sp)
   113dc:	000c8a93          	mv	s5,s9
   113e0:	01813903          	ld	s2,24(sp)
   113e4:	000d8c93          	mv	s9,s11
   113e8:	00040d93          	mv	s11,s0
   113ec:	02013403          	ld	s0,32(sp)
   113f0:	02913423          	sd	s1,40(sp)
   113f4:	41bc8cbb          	subw	s9,s9,s11
   113f8:	000a0493          	mv	s1,s4
   113fc:	d44ff06f          	j	10940 <_vfprintf_r+0x380>
   11400:	06500693          	li	a3,101
   11404:	2e86d063          	bge	a3,s0,116e4 <_vfprintf_r+0x1124>
   11408:	10013503          	ld	a0,256(sp)
   1140c:	10813583          	ld	a1,264(sp)
   11410:	00000613          	li	a2,0
   11414:	00000693          	li	a3,0
   11418:	08613023          	sd	t1,128(sp)
   1141c:	06f13023          	sd	a5,96(sp)
   11420:	0790e0ef          	jal	ra,1fc98 <__eqtf2>
   11424:	06013783          	ld	a5,96(sp)
   11428:	08013303          	ld	t1,128(sp)
   1142c:	60051063          	bnez	a0,11a2c <_vfprintf_r+0x146c>
   11430:	11812703          	lw	a4,280(sp)
   11434:	00010697          	auipc	a3,0x10
   11438:	00468693          	addi	a3,a3,4 # 21438 <zeroes.4539+0x98>
   1143c:	00178793          	addi	a5,a5,1
   11440:	0017071b          	addiw	a4,a4,1
   11444:	00d33023          	sd	a3,0(t1)
   11448:	00100693          	li	a3,1
   1144c:	00d33423          	sd	a3,8(t1)
   11450:	12f13023          	sd	a5,288(sp)
   11454:	0007069b          	sext.w	a3,a4
   11458:	10e12c23          	sw	a4,280(sp)
   1145c:	00700793          	li	a5,7
   11460:	01030313          	addi	t1,t1,16
   11464:	2cd7c4e3          	blt	a5,a3,11f2c <_vfprintf_r+0x196c>
   11468:	0e812783          	lw	a5,232(sp)
   1146c:	02813703          	ld	a4,40(sp)
   11470:	00e7ca63          	blt	a5,a4,11484 <_vfprintf_r+0xec4>
   11474:	0014f793          	andi	a5,s1,1
   11478:	00079663          	bnez	a5,11484 <_vfprintf_r+0xec4>
   1147c:	12013783          	ld	a5,288(sp)
   11480:	c05ff06f          	j	11084 <_vfprintf_r+0xac4>
   11484:	05813783          	ld	a5,88(sp)
   11488:	04813683          	ld	a3,72(sp)
   1148c:	11812703          	lw	a4,280(sp)
   11490:	00f33023          	sd	a5,0(t1)
   11494:	12013783          	ld	a5,288(sp)
   11498:	0017071b          	addiw	a4,a4,1
   1149c:	00d33423          	sd	a3,8(t1)
   114a0:	00f687b3          	add	a5,a3,a5
   114a4:	10e12c23          	sw	a4,280(sp)
   114a8:	0007069b          	sext.w	a3,a4
   114ac:	12f13023          	sd	a5,288(sp)
   114b0:	00700713          	li	a4,7
   114b4:	01030313          	addi	t1,t1,16
   114b8:	06d746e3          	blt	a4,a3,11d24 <_vfprintf_r+0x1764>
   114bc:	02813703          	ld	a4,40(sp)
   114c0:	fff7041b          	addiw	s0,a4,-1
   114c4:	bc8050e3          	blez	s0,11084 <_vfprintf_r+0xac4>
   114c8:	11812703          	lw	a4,280(sp)
   114cc:	288d50e3          	bge	s10,s0,11f4c <_vfprintf_r+0x198c>
   114d0:	00700c93          	li	s9,7
   114d4:	00013b03          	ld	s6,0(sp)
   114d8:	00c0006f          	j	114e4 <_vfprintf_r+0xf24>
   114dc:	ff04041b          	addiw	s0,s0,-16
   114e0:	268d56e3          	bge	s10,s0,11f4c <_vfprintf_r+0x198c>
   114e4:	0017071b          	addiw	a4,a4,1
   114e8:	01078793          	addi	a5,a5,16
   114ec:	01833023          	sd	s8,0(t1)
   114f0:	01a33423          	sd	s10,8(t1)
   114f4:	12f13023          	sd	a5,288(sp)
   114f8:	10e12c23          	sw	a4,280(sp)
   114fc:	01030313          	addi	t1,t1,16
   11500:	fcecdee3          	bge	s9,a4,114dc <_vfprintf_r+0xf1c>
   11504:	11010613          	addi	a2,sp,272
   11508:	000b0593          	mv	a1,s6
   1150c:	000a8513          	mv	a0,s5
   11510:	1480a0ef          	jal	ra,1b658 <__sprint_r>
   11514:	b2051e63          	bnez	a0,10850 <_vfprintf_r+0x290>
   11518:	12013783          	ld	a5,288(sp)
   1151c:	11812703          	lw	a4,280(sp)
   11520:	19010313          	addi	t1,sp,400
   11524:	fb9ff06f          	j	114dc <_vfprintf_r+0xf1c>
   11528:	41498b3b          	subw	s6,s3,s4
   1152c:	b36050e3          	blez	s6,1104c <_vfprintf_r+0xa8c>
   11530:	11812683          	lw	a3,280(sp)
   11534:	096d5a63          	bge	s10,s6,115c8 <_vfprintf_r+0x1008>
   11538:	000b0713          	mv	a4,s6
   1153c:	06813023          	sd	s0,96(sp)
   11540:	000a0b13          	mv	s6,s4
   11544:	00700893          	li	a7,7
   11548:	00098a13          	mv	s4,s3
   1154c:	00013403          	ld	s0,0(sp)
   11550:	00048993          	mv	s3,s1
   11554:	00070493          	mv	s1,a4
   11558:	00c0006f          	j	11564 <_vfprintf_r+0xfa4>
   1155c:	ff04849b          	addiw	s1,s1,-16
   11560:	049d5863          	bge	s10,s1,115b0 <_vfprintf_r+0xff0>
   11564:	0016869b          	addiw	a3,a3,1
   11568:	01078793          	addi	a5,a5,16
   1156c:	01833023          	sd	s8,0(t1)
   11570:	01a33423          	sd	s10,8(t1)
   11574:	12f13023          	sd	a5,288(sp)
   11578:	10d12c23          	sw	a3,280(sp)
   1157c:	01030313          	addi	t1,t1,16
   11580:	fcd8dee3          	bge	a7,a3,1155c <_vfprintf_r+0xf9c>
   11584:	11010613          	addi	a2,sp,272
   11588:	00040593          	mv	a1,s0
   1158c:	000a8513          	mv	a0,s5
   11590:	0c80a0ef          	jal	ra,1b658 <__sprint_r>
   11594:	aa051e63          	bnez	a0,10850 <_vfprintf_r+0x290>
   11598:	ff04849b          	addiw	s1,s1,-16
   1159c:	12013783          	ld	a5,288(sp)
   115a0:	11812683          	lw	a3,280(sp)
   115a4:	19010313          	addi	t1,sp,400
   115a8:	00700893          	li	a7,7
   115ac:	fa9d4ce3          	blt	s10,s1,11564 <_vfprintf_r+0xfa4>
   115b0:	06013403          	ld	s0,96(sp)
   115b4:	00048713          	mv	a4,s1
   115b8:	00098493          	mv	s1,s3
   115bc:	000a0993          	mv	s3,s4
   115c0:	000b0a13          	mv	s4,s6
   115c4:	00070b13          	mv	s6,a4
   115c8:	0016861b          	addiw	a2,a3,1
   115cc:	016787b3          	add	a5,a5,s6
   115d0:	01833023          	sd	s8,0(t1)
   115d4:	01633423          	sd	s6,8(t1)
   115d8:	12f13023          	sd	a5,288(sp)
   115dc:	10c12c23          	sw	a2,280(sp)
   115e0:	00700693          	li	a3,7
   115e4:	01030313          	addi	t1,t1,16
   115e8:	a6c6d2e3          	bge	a3,a2,1104c <_vfprintf_r+0xa8c>
   115ec:	00013583          	ld	a1,0(sp)
   115f0:	11010613          	addi	a2,sp,272
   115f4:	000a8513          	mv	a0,s5
   115f8:	0600a0ef          	jal	ra,1b658 <__sprint_r>
   115fc:	a4051a63          	bnez	a0,10850 <_vfprintf_r+0x290>
   11600:	12013783          	ld	a5,288(sp)
   11604:	19010313          	addi	t1,sp,400
   11608:	a45ff06f          	j	1104c <_vfprintf_r+0xa8c>
   1160c:	11812683          	lw	a3,280(sp)
   11610:	097d5863          	bge	s10,s7,116a0 <_vfprintf_r+0x10e0>
   11614:	000a0713          	mv	a4,s4
   11618:	06813023          	sd	s0,96(sp)
   1161c:	00098a13          	mv	s4,s3
   11620:	00700b13          	li	s6,7
   11624:	00048993          	mv	s3,s1
   11628:	00013403          	ld	s0,0(sp)
   1162c:	000b8493          	mv	s1,s7
   11630:	00070b93          	mv	s7,a4
   11634:	00c0006f          	j	11640 <_vfprintf_r+0x1080>
   11638:	ff04849b          	addiw	s1,s1,-16
   1163c:	049d5663          	bge	s10,s1,11688 <_vfprintf_r+0x10c8>
   11640:	0016869b          	addiw	a3,a3,1
   11644:	01078793          	addi	a5,a5,16
   11648:	01833023          	sd	s8,0(t1)
   1164c:	01a33423          	sd	s10,8(t1)
   11650:	12f13023          	sd	a5,288(sp)
   11654:	10d12c23          	sw	a3,280(sp)
   11658:	01030313          	addi	t1,t1,16
   1165c:	fcdb5ee3          	bge	s6,a3,11638 <_vfprintf_r+0x1078>
   11660:	11010613          	addi	a2,sp,272
   11664:	00040593          	mv	a1,s0
   11668:	000a8513          	mv	a0,s5
   1166c:	7ed090ef          	jal	ra,1b658 <__sprint_r>
   11670:	9e051063          	bnez	a0,10850 <_vfprintf_r+0x290>
   11674:	ff04849b          	addiw	s1,s1,-16
   11678:	12013783          	ld	a5,288(sp)
   1167c:	11812683          	lw	a3,280(sp)
   11680:	19010313          	addi	t1,sp,400
   11684:	fa9d4ee3          	blt	s10,s1,11640 <_vfprintf_r+0x1080>
   11688:	06013403          	ld	s0,96(sp)
   1168c:	000b8713          	mv	a4,s7
   11690:	00048b93          	mv	s7,s1
   11694:	00098493          	mv	s1,s3
   11698:	000a0993          	mv	s3,s4
   1169c:	00070a13          	mv	s4,a4
   116a0:	0016861b          	addiw	a2,a3,1
   116a4:	017787b3          	add	a5,a5,s7
   116a8:	01833023          	sd	s8,0(t1)
   116ac:	01733423          	sd	s7,8(t1)
   116b0:	12f13023          	sd	a5,288(sp)
   116b4:	10c12c23          	sw	a2,280(sp)
   116b8:	00700693          	li	a3,7
   116bc:	01030313          	addi	t1,t1,16
   116c0:	98c6dae3          	bge	a3,a2,11054 <_vfprintf_r+0xa94>
   116c4:	00013583          	ld	a1,0(sp)
   116c8:	11010613          	addi	a2,sp,272
   116cc:	000a8513          	mv	a0,s5
   116d0:	789090ef          	jal	ra,1b658 <__sprint_r>
   116d4:	96051e63          	bnez	a0,10850 <_vfprintf_r+0x290>
   116d8:	12013783          	ld	a5,288(sp)
   116dc:	19010313          	addi	t1,sp,400
   116e0:	975ff06f          	j	11054 <_vfprintf_r+0xa94>
   116e4:	11812583          	lw	a1,280(sp)
   116e8:	02813703          	ld	a4,40(sp)
   116ec:	00178c93          	addi	s9,a5,1
   116f0:	00100613          	li	a2,1
   116f4:	0015879b          	addiw	a5,a1,1
   116f8:	01b33023          	sd	s11,0(t1)
   116fc:	00078693          	mv	a3,a5
   11700:	01030413          	addi	s0,t1,16
   11704:	48e65c63          	bge	a2,a4,11b9c <_vfprintf_r+0x15dc>
   11708:	00100613          	li	a2,1
   1170c:	10d12c23          	sw	a3,280(sp)
   11710:	00c33423          	sd	a2,8(t1)
   11714:	13913023          	sd	s9,288(sp)
   11718:	00700693          	li	a3,7
   1171c:	6cf6c063          	blt	a3,a5,11ddc <_vfprintf_r+0x181c>
   11720:	0017869b          	addiw	a3,a5,1
   11724:	04813783          	ld	a5,72(sp)
   11728:	05813703          	ld	a4,88(sp)
   1172c:	10d12c23          	sw	a3,280(sp)
   11730:	00fc8cb3          	add	s9,s9,a5
   11734:	00f43423          	sd	a5,8(s0)
   11738:	00e43023          	sd	a4,0(s0)
   1173c:	0006879b          	sext.w	a5,a3
   11740:	13913023          	sd	s9,288(sp)
   11744:	00700693          	li	a3,7
   11748:	01040413          	addi	s0,s0,16
   1174c:	6af6cc63          	blt	a3,a5,11e04 <_vfprintf_r+0x1844>
   11750:	0017889b          	addiw	a7,a5,1
   11754:	04f13023          	sd	a5,64(sp)
   11758:	10013503          	ld	a0,256(sp)
   1175c:	02813783          	ld	a5,40(sp)
   11760:	10813583          	ld	a1,264(sp)
   11764:	01040313          	addi	t1,s0,16
   11768:	00000613          	li	a2,0
   1176c:	00000693          	li	a3,0
   11770:	00088b1b          	sext.w	s6,a7
   11774:	03113c23          	sd	a7,56(sp)
   11778:	02613023          	sd	t1,32(sp)
   1177c:	fff78b9b          	addiw	s7,a5,-1
   11780:	5180e0ef          	jal	ra,1fc98 <__eqtf2>
   11784:	02013303          	ld	t1,32(sp)
   11788:	03813883          	ld	a7,56(sp)
   1178c:	42050c63          	beqz	a0,11bc4 <_vfprintf_r+0x1604>
   11790:	001d8713          	addi	a4,s11,1
   11794:	017c8cb3          	add	s9,s9,s7
   11798:	00e43023          	sd	a4,0(s0)
   1179c:	01743423          	sd	s7,8(s0)
   117a0:	13913023          	sd	s9,288(sp)
   117a4:	11112c23          	sw	a7,280(sp)
   117a8:	00700713          	li	a4,7
   117ac:	53674063          	blt	a4,s6,11ccc <_vfprintf_r+0x170c>
   117b0:	04013783          	ld	a5,64(sp)
   117b4:	02040713          	addi	a4,s0,32
   117b8:	00030413          	mv	s0,t1
   117bc:	00278b1b          	addiw	s6,a5,2
   117c0:	00070313          	mv	t1,a4
   117c4:	06813683          	ld	a3,104(sp)
   117c8:	0f010713          	addi	a4,sp,240
   117cc:	00e43023          	sd	a4,0(s0)
   117d0:	00dc87b3          	add	a5,s9,a3
   117d4:	00d43423          	sd	a3,8(s0)
   117d8:	12f13023          	sd	a5,288(sp)
   117dc:	11612c23          	sw	s6,280(sp)
   117e0:	00700713          	li	a4,7
   117e4:	8b6750e3          	bge	a4,s6,11084 <_vfprintf_r+0xac4>
   117e8:	9bdff06f          	j	111a4 <_vfprintf_r+0xbe4>
   117ec:	00048a13          	mv	s4,s1
   117f0:	f20ff06f          	j	10f10 <_vfprintf_r+0x950>
   117f4:	11812683          	lw	a3,280(sp)
   117f8:	00010b17          	auipc	s6,0x10
   117fc:	b98b0b13          	addi	s6,s6,-1128 # 21390 <blanks.4538>
   11800:	0b0d5863          	bge	s10,a6,118b0 <_vfprintf_r+0x12f0>
   11804:	09213823          	sd	s2,144(sp)
   11808:	08813c23          	sd	s0,152(sp)
   1180c:	000b0913          	mv	s2,s6
   11810:	00700f93          	li	t6,7
   11814:	000a0b13          	mv	s6,s4
   11818:	07d13023          	sd	t4,96(sp)
   1181c:	00098a13          	mv	s4,s3
   11820:	09e13023          	sd	t5,128(sp)
   11824:	00048993          	mv	s3,s1
   11828:	00080413          	mv	s0,a6
   1182c:	00013483          	ld	s1,0(sp)
   11830:	00c0006f          	j	1183c <_vfprintf_r+0x127c>
   11834:	ff04041b          	addiw	s0,s0,-16
   11838:	048d5a63          	bge	s10,s0,1188c <_vfprintf_r+0x12cc>
   1183c:	0016869b          	addiw	a3,a3,1
   11840:	01078793          	addi	a5,a5,16
   11844:	01233023          	sd	s2,0(t1)
   11848:	01a33423          	sd	s10,8(t1)
   1184c:	12f13023          	sd	a5,288(sp)
   11850:	10d12c23          	sw	a3,280(sp)
   11854:	01030313          	addi	t1,t1,16
   11858:	fcdfdee3          	bge	t6,a3,11834 <_vfprintf_r+0x1274>
   1185c:	11010613          	addi	a2,sp,272
   11860:	00048593          	mv	a1,s1
   11864:	000a8513          	mv	a0,s5
   11868:	5f1090ef          	jal	ra,1b658 <__sprint_r>
   1186c:	00050463          	beqz	a0,11874 <_vfprintf_r+0x12b4>
   11870:	fe1fe06f          	j	10850 <_vfprintf_r+0x290>
   11874:	ff04041b          	addiw	s0,s0,-16
   11878:	12013783          	ld	a5,288(sp)
   1187c:	11812683          	lw	a3,280(sp)
   11880:	19010313          	addi	t1,sp,400
   11884:	00700f93          	li	t6,7
   11888:	fa8d4ae3          	blt	s10,s0,1183c <_vfprintf_r+0x127c>
   1188c:	00098493          	mv	s1,s3
   11890:	00040813          	mv	a6,s0
   11894:	000a0993          	mv	s3,s4
   11898:	06013e83          	ld	t4,96(sp)
   1189c:	000b0a13          	mv	s4,s6
   118a0:	08013f03          	ld	t5,128(sp)
   118a4:	00090b13          	mv	s6,s2
   118a8:	09813403          	ld	s0,152(sp)
   118ac:	09013903          	ld	s2,144(sp)
   118b0:	0016861b          	addiw	a2,a3,1
   118b4:	010787b3          	add	a5,a5,a6
   118b8:	01633023          	sd	s6,0(t1)
   118bc:	01033423          	sd	a6,8(t1)
   118c0:	12f13023          	sd	a5,288(sp)
   118c4:	10c12c23          	sw	a2,280(sp)
   118c8:	00700693          	li	a3,7
   118cc:	01030313          	addi	t1,t1,16
   118d0:	f0c6d063          	bge	a3,a2,10fd0 <_vfprintf_r+0xa10>
   118d4:	00013583          	ld	a1,0(sp)
   118d8:	11010613          	addi	a2,sp,272
   118dc:	000a8513          	mv	a0,s5
   118e0:	09e13023          	sd	t5,128(sp)
   118e4:	07d13023          	sd	t4,96(sp)
   118e8:	571090ef          	jal	ra,1b658 <__sprint_r>
   118ec:	00050463          	beqz	a0,118f4 <_vfprintf_r+0x1334>
   118f0:	f61fe06f          	j	10850 <_vfprintf_r+0x290>
   118f4:	12013783          	ld	a5,288(sp)
   118f8:	19010313          	addi	t1,sp,400
   118fc:	08013f03          	ld	t5,128(sp)
   11900:	06013e83          	ld	t4,96(sp)
   11904:	eccff06f          	j	10fd0 <_vfprintf_r+0xa10>
   11908:	00013583          	ld	a1,0(sp)
   1190c:	11010613          	addi	a2,sp,272
   11910:	000a8513          	mv	a0,s5
   11914:	07e13023          	sd	t5,96(sp)
   11918:	541090ef          	jal	ra,1b658 <__sprint_r>
   1191c:	00050463          	beqz	a0,11924 <_vfprintf_r+0x1364>
   11920:	f31fe06f          	j	10850 <_vfprintf_r+0x290>
   11924:	12013783          	ld	a5,288(sp)
   11928:	19010313          	addi	t1,sp,400
   1192c:	06013f03          	ld	t5,96(sp)
   11930:	f14ff06f          	j	11044 <_vfprintf_r+0xa84>
   11934:	11812703          	lw	a4,280(sp)
   11938:	00010b17          	auipc	s6,0x10
   1193c:	a58b0b13          	addi	s6,s6,-1448 # 21390 <blanks.4538>
   11940:	068d5263          	bge	s10,s0,119a4 <_vfprintf_r+0x13e4>
   11944:	00700493          	li	s1,7
   11948:	00013b83          	ld	s7,0(sp)
   1194c:	00c0006f          	j	11958 <_vfprintf_r+0x1398>
   11950:	ff04041b          	addiw	s0,s0,-16
   11954:	048d5863          	bge	s10,s0,119a4 <_vfprintf_r+0x13e4>
   11958:	0017071b          	addiw	a4,a4,1
   1195c:	01078793          	addi	a5,a5,16
   11960:	01633023          	sd	s6,0(t1)
   11964:	01a33423          	sd	s10,8(t1)
   11968:	12f13023          	sd	a5,288(sp)
   1196c:	10e12c23          	sw	a4,280(sp)
   11970:	01030313          	addi	t1,t1,16
   11974:	fce4dee3          	bge	s1,a4,11950 <_vfprintf_r+0x1390>
   11978:	11010613          	addi	a2,sp,272
   1197c:	000b8593          	mv	a1,s7
   11980:	000a8513          	mv	a0,s5
   11984:	4d5090ef          	jal	ra,1b658 <__sprint_r>
   11988:	00050463          	beqz	a0,11990 <_vfprintf_r+0x13d0>
   1198c:	ec5fe06f          	j	10850 <_vfprintf_r+0x290>
   11990:	ff04041b          	addiw	s0,s0,-16
   11994:	12013783          	ld	a5,288(sp)
   11998:	11812703          	lw	a4,280(sp)
   1199c:	19010313          	addi	t1,sp,400
   119a0:	fa8d4ce3          	blt	s10,s0,11958 <_vfprintf_r+0x1398>
   119a4:	0017069b          	addiw	a3,a4,1
   119a8:	008787b3          	add	a5,a5,s0
   119ac:	01633023          	sd	s6,0(t1)
   119b0:	00833423          	sd	s0,8(t1)
   119b4:	12f13023          	sd	a5,288(sp)
   119b8:	10d12c23          	sw	a3,280(sp)
   119bc:	00700713          	li	a4,7
   119c0:	ecd75a63          	bge	a4,a3,11094 <_vfprintf_r+0xad4>
   119c4:	00013583          	ld	a1,0(sp)
   119c8:	11010613          	addi	a2,sp,272
   119cc:	000a8513          	mv	a0,s5
   119d0:	489090ef          	jal	ra,1b658 <__sprint_r>
   119d4:	00050463          	beqz	a0,119dc <_vfprintf_r+0x141c>
   119d8:	e79fe06f          	j	10850 <_vfprintf_r+0x290>
   119dc:	12013783          	ld	a5,288(sp)
   119e0:	eb4ff06f          	j	11094 <_vfprintf_r+0xad4>
   119e4:	00100713          	li	a4,1
   119e8:	46e782e3          	beq	a5,a4,1264c <_vfprintf_r+0x208c>
   119ec:	00200713          	li	a4,2
   119f0:	00048a13          	mv	s4,s1
   119f4:	d2e79663          	bne	a5,a4,10f20 <_vfprintf_r+0x960>
   119f8:	05013703          	ld	a4,80(sp)
   119fc:	18c10c93          	addi	s9,sp,396
   11a00:	000c8d93          	mv	s11,s9
   11a04:	00fb7793          	andi	a5,s6,15
   11a08:	00f707b3          	add	a5,a4,a5
   11a0c:	0007c783          	lbu	a5,0(a5)
   11a10:	fffd8d93          	addi	s11,s11,-1
   11a14:	004b5b13          	srli	s6,s6,0x4
   11a18:	00fd8023          	sb	a5,0(s11)
   11a1c:	fe0b14e3          	bnez	s6,11a04 <_vfprintf_r+0x1444>
   11a20:	41bc8cbb          	subw	s9,s9,s11
   11a24:	000a0493          	mv	s1,s4
   11a28:	f19fe06f          	j	10940 <_vfprintf_r+0x380>
   11a2c:	0e812583          	lw	a1,232(sp)
   11a30:	3eb05e63          	blez	a1,11e2c <_vfprintf_r+0x186c>
   11a34:	02813703          	ld	a4,40(sp)
   11a38:	02013683          	ld	a3,32(sp)
   11a3c:	0007041b          	sext.w	s0,a4
   11a40:	24e6ce63          	blt	a3,a4,11c9c <_vfprintf_r+0x16dc>
   11a44:	02805663          	blez	s0,11a70 <_vfprintf_r+0x14b0>
   11a48:	11812683          	lw	a3,280(sp)
   11a4c:	008787b3          	add	a5,a5,s0
   11a50:	01b33023          	sd	s11,0(t1)
   11a54:	0016861b          	addiw	a2,a3,1
   11a58:	00833423          	sd	s0,8(t1)
   11a5c:	12f13023          	sd	a5,288(sp)
   11a60:	10c12c23          	sw	a2,280(sp)
   11a64:	00700693          	li	a3,7
   11a68:	01030313          	addi	t1,t1,16
   11a6c:	08c6c0e3          	blt	a3,a2,122ec <_vfprintf_r+0x1d2c>
   11a70:	fff44693          	not	a3,s0
   11a74:	02013703          	ld	a4,32(sp)
   11a78:	43f6d693          	srai	a3,a3,0x3f
   11a7c:	00d47433          	and	s0,s0,a3
   11a80:	4087043b          	subw	s0,a4,s0
   11a84:	2e804663          	bgtz	s0,11d70 <_vfprintf_r+0x17b0>
   11a88:	02013703          	ld	a4,32(sp)
   11a8c:	4004f693          	andi	a3,s1,1024
   11a90:	00ed8bb3          	add	s7,s11,a4
   11a94:	64069c63          	bnez	a3,120ec <_vfprintf_r+0x1b2c>
   11a98:	0e812403          	lw	s0,232(sp)
   11a9c:	02813703          	ld	a4,40(sp)
   11aa0:	00e44663          	blt	s0,a4,11aac <_vfprintf_r+0x14ec>
   11aa4:	0014f693          	andi	a3,s1,1
   11aa8:	0a0686e3          	beqz	a3,12354 <_vfprintf_r+0x1d94>
   11aac:	05813683          	ld	a3,88(sp)
   11ab0:	04813703          	ld	a4,72(sp)
   11ab4:	01030313          	addi	t1,t1,16
   11ab8:	fed33823          	sd	a3,-16(t1)
   11abc:	11812683          	lw	a3,280(sp)
   11ac0:	00e787b3          	add	a5,a5,a4
   11ac4:	fee33c23          	sd	a4,-8(t1)
   11ac8:	0016861b          	addiw	a2,a3,1
   11acc:	12f13023          	sd	a5,288(sp)
   11ad0:	10c12c23          	sw	a2,280(sp)
   11ad4:	00700693          	li	a3,7
   11ad8:	52c6c0e3          	blt	a3,a2,127f8 <_vfprintf_r+0x2238>
   11adc:	02813703          	ld	a4,40(sp)
   11ae0:	4087063b          	subw	a2,a4,s0
   11ae4:	00ed8733          	add	a4,s11,a4
   11ae8:	4177073b          	subw	a4,a4,s7
   11aec:	00060413          	mv	s0,a2
   11af0:	00c75463          	bge	a4,a2,11af8 <_vfprintf_r+0x1538>
   11af4:	0007041b          	sext.w	s0,a4
   11af8:	02805663          	blez	s0,11b24 <_vfprintf_r+0x1564>
   11afc:	11812703          	lw	a4,280(sp)
   11b00:	008787b3          	add	a5,a5,s0
   11b04:	01733023          	sd	s7,0(t1)
   11b08:	0017069b          	addiw	a3,a4,1
   11b0c:	00833423          	sd	s0,8(t1)
   11b10:	12f13023          	sd	a5,288(sp)
   11b14:	10d12c23          	sw	a3,280(sp)
   11b18:	00700713          	li	a4,7
   11b1c:	01030313          	addi	t1,t1,16
   11b20:	56d748e3          	blt	a4,a3,12890 <_vfprintf_r+0x22d0>
   11b24:	fff44713          	not	a4,s0
   11b28:	43f75713          	srai	a4,a4,0x3f
   11b2c:	00e47433          	and	s0,s0,a4
   11b30:	4086043b          	subw	s0,a2,s0
   11b34:	d4805863          	blez	s0,11084 <_vfprintf_r+0xac4>
   11b38:	11812703          	lw	a4,280(sp)
   11b3c:	408d5863          	bge	s10,s0,11f4c <_vfprintf_r+0x198c>
   11b40:	00700c93          	li	s9,7
   11b44:	00013b03          	ld	s6,0(sp)
   11b48:	00c0006f          	j	11b54 <_vfprintf_r+0x1594>
   11b4c:	ff04041b          	addiw	s0,s0,-16
   11b50:	3e8d5e63          	bge	s10,s0,11f4c <_vfprintf_r+0x198c>
   11b54:	0017071b          	addiw	a4,a4,1
   11b58:	01078793          	addi	a5,a5,16
   11b5c:	01833023          	sd	s8,0(t1)
   11b60:	01a33423          	sd	s10,8(t1)
   11b64:	12f13023          	sd	a5,288(sp)
   11b68:	10e12c23          	sw	a4,280(sp)
   11b6c:	01030313          	addi	t1,t1,16
   11b70:	fcecdee3          	bge	s9,a4,11b4c <_vfprintf_r+0x158c>
   11b74:	11010613          	addi	a2,sp,272
   11b78:	000b0593          	mv	a1,s6
   11b7c:	000a8513          	mv	a0,s5
   11b80:	2d9090ef          	jal	ra,1b658 <__sprint_r>
   11b84:	00050463          	beqz	a0,11b8c <_vfprintf_r+0x15cc>
   11b88:	cc9fe06f          	j	10850 <_vfprintf_r+0x290>
   11b8c:	12013783          	ld	a5,288(sp)
   11b90:	11812703          	lw	a4,280(sp)
   11b94:	19010313          	addi	t1,sp,400
   11b98:	fb5ff06f          	j	11b4c <_vfprintf_r+0x158c>
   11b9c:	0014f513          	andi	a0,s1,1
   11ba0:	b60514e3          	bnez	a0,11708 <_vfprintf_r+0x1148>
   11ba4:	00c33423          	sd	a2,8(t1)
   11ba8:	13913023          	sd	s9,288(sp)
   11bac:	10f12c23          	sw	a5,280(sp)
   11bb0:	00700713          	li	a4,7
   11bb4:	10f74c63          	blt	a4,a5,11ccc <_vfprintf_r+0x170c>
   11bb8:	00258b1b          	addiw	s6,a1,2
   11bbc:	02030313          	addi	t1,t1,32
   11bc0:	c05ff06f          	j	117c4 <_vfprintf_r+0x1204>
   11bc4:	c17050e3          	blez	s7,117c4 <_vfprintf_r+0x1204>
   11bc8:	017d4463          	blt	s10,s7,11bd0 <_vfprintf_r+0x1610>
   11bcc:	0bc0106f          	j	12c88 <_vfprintf_r+0x26c8>
   11bd0:	00700b13          	li	s6,7
   11bd4:	00013d83          	ld	s11,0(sp)
   11bd8:	0100006f          	j	11be8 <_vfprintf_r+0x1628>
   11bdc:	ff0b8b9b          	addiw	s7,s7,-16
   11be0:	0d7d5463          	bge	s10,s7,11ca8 <_vfprintf_r+0x16e8>
   11be4:	0017889b          	addiw	a7,a5,1
   11be8:	010c8c93          	addi	s9,s9,16
   11bec:	01843023          	sd	s8,0(s0)
   11bf0:	01a43423          	sd	s10,8(s0)
   11bf4:	13913023          	sd	s9,288(sp)
   11bf8:	0008879b          	sext.w	a5,a7
   11bfc:	11112c23          	sw	a7,280(sp)
   11c00:	01040413          	addi	s0,s0,16
   11c04:	fcfb5ce3          	bge	s6,a5,11bdc <_vfprintf_r+0x161c>
   11c08:	11010613          	addi	a2,sp,272
   11c0c:	000d8593          	mv	a1,s11
   11c10:	000a8513          	mv	a0,s5
   11c14:	245090ef          	jal	ra,1b658 <__sprint_r>
   11c18:	00050463          	beqz	a0,11c20 <_vfprintf_r+0x1660>
   11c1c:	c35fe06f          	j	10850 <_vfprintf_r+0x290>
   11c20:	12013c83          	ld	s9,288(sp)
   11c24:	11812783          	lw	a5,280(sp)
   11c28:	19010413          	addi	s0,sp,400
   11c2c:	fb1ff06f          	j	11bdc <_vfprintf_r+0x161c>
   11c30:	03000793          	li	a5,48
   11c34:	18f105a3          	sb	a5,395(sp)
   11c38:	18b10d93          	addi	s11,sp,395
   11c3c:	d05fe06f          	j	10940 <_vfprintf_r+0x380>
   11c40:	00813783          	ld	a5,8(sp)
   11c44:	00090d93          	mv	s11,s2
   11c48:	00f73023          	sd	a5,0(a4)
   11c4c:	c84ff06f          	j	110d0 <_vfprintf_r+0xb10>
   11c50:	00094403          	lbu	s0,0(s2)
   11c54:	b29fe06f          	j	1077c <_vfprintf_r+0x1bc>
   11c58:	01013783          	ld	a5,16(sp)
   11c5c:	0007bb03          	ld	s6,0(a5)
   11c60:	c7dfe06f          	j	108dc <_vfprintf_r+0x31c>
   11c64:	00048a13          	mv	s4,s1
   11c68:	8b8ff06f          	j	10d20 <_vfprintf_r+0x760>
   11c6c:	00048a13          	mv	s4,s1
   11c70:	a74ff06f          	j	10ee4 <_vfprintf_r+0x924>
   11c74:	01013783          	ld	a5,16(sp)
   11c78:	01913c23          	sd	s9,24(sp)
   11c7c:	0007b503          	ld	a0,0(a5)
   11c80:	00878793          	addi	a5,a5,8
   11c84:	00f13823          	sd	a5,16(sp)
   11c88:	2440f0ef          	jal	ra,20ecc <__extenddftf2>
   11c8c:	10a13023          	sd	a0,256(sp)
   11c90:	10b13423          	sd	a1,264(sp)
   11c94:	01813303          	ld	t1,24(sp)
   11c98:	dd9fe06f          	j	10a70 <_vfprintf_r+0x4b0>
   11c9c:	0006841b          	sext.w	s0,a3
   11ca0:	da8044e3          	bgtz	s0,11a48 <_vfprintf_r+0x1488>
   11ca4:	dcdff06f          	j	11a70 <_vfprintf_r+0x14b0>
   11ca8:	00178b1b          	addiw	s6,a5,1
   11cac:	01040793          	addi	a5,s0,16
   11cb0:	017c8cb3          	add	s9,s9,s7
   11cb4:	01843023          	sd	s8,0(s0)
   11cb8:	01743423          	sd	s7,8(s0)
   11cbc:	13913023          	sd	s9,288(sp)
   11cc0:	11612c23          	sw	s6,280(sp)
   11cc4:	00700713          	li	a4,7
   11cc8:	5f675063          	bge	a4,s6,122a8 <_vfprintf_r+0x1ce8>
   11ccc:	00013583          	ld	a1,0(sp)
   11cd0:	11010613          	addi	a2,sp,272
   11cd4:	000a8513          	mv	a0,s5
   11cd8:	181090ef          	jal	ra,1b658 <__sprint_r>
   11cdc:	00050463          	beqz	a0,11ce4 <_vfprintf_r+0x1724>
   11ce0:	b71fe06f          	j	10850 <_vfprintf_r+0x290>
   11ce4:	11812583          	lw	a1,280(sp)
   11ce8:	12013c83          	ld	s9,288(sp)
   11cec:	1a010313          	addi	t1,sp,416
   11cf0:	00158b1b          	addiw	s6,a1,1
   11cf4:	19010413          	addi	s0,sp,400
   11cf8:	acdff06f          	j	117c4 <_vfprintf_r+0x1204>
   11cfc:	0204e493          	ori	s1,s1,32
   11d00:	00194403          	lbu	s0,1(s2)
   11d04:	0004849b          	sext.w	s1,s1
   11d08:	00190913          	addi	s2,s2,1
   11d0c:	a71fe06f          	j	1077c <_vfprintf_r+0x1bc>
   11d10:	2004e493          	ori	s1,s1,512
   11d14:	00194403          	lbu	s0,1(s2)
   11d18:	0004849b          	sext.w	s1,s1
   11d1c:	00190913          	addi	s2,s2,1
   11d20:	a5dfe06f          	j	1077c <_vfprintf_r+0x1bc>
   11d24:	00013583          	ld	a1,0(sp)
   11d28:	11010613          	addi	a2,sp,272
   11d2c:	000a8513          	mv	a0,s5
   11d30:	129090ef          	jal	ra,1b658 <__sprint_r>
   11d34:	00050463          	beqz	a0,11d3c <_vfprintf_r+0x177c>
   11d38:	b19fe06f          	j	10850 <_vfprintf_r+0x290>
   11d3c:	12013783          	ld	a5,288(sp)
   11d40:	19010313          	addi	t1,sp,400
   11d44:	f78ff06f          	j	114bc <_vfprintf_r+0xefc>
   11d48:	000b871b          	sext.w	a4,s7
   11d4c:	00600793          	li	a5,6
   11d50:	000b8e13          	mv	t3,s7
   11d54:	5ae7ee63          	bltu	a5,a4,12310 <_vfprintf_r+0x1d50>
   11d58:	000e0c9b          	sext.w	s9,t3
   11d5c:	000c8a13          	mv	s4,s9
   11d60:	01613823          	sd	s6,16(sp)
   11d64:	0000fd97          	auipc	s11,0xf
   11d68:	6ccd8d93          	addi	s11,s11,1740 # 21430 <zeroes.4539+0x90>
   11d6c:	a2cff06f          	j	10f98 <_vfprintf_r+0x9d8>
   11d70:	11812683          	lw	a3,280(sp)
   11d74:	328d5863          	bge	s10,s0,120a4 <_vfprintf_r+0x1ae4>
   11d78:	00700c93          	li	s9,7
   11d7c:	00013b03          	ld	s6,0(sp)
   11d80:	00c0006f          	j	11d8c <_vfprintf_r+0x17cc>
   11d84:	ff04041b          	addiw	s0,s0,-16
   11d88:	308d5e63          	bge	s10,s0,120a4 <_vfprintf_r+0x1ae4>
   11d8c:	0016869b          	addiw	a3,a3,1
   11d90:	01078793          	addi	a5,a5,16
   11d94:	01833023          	sd	s8,0(t1)
   11d98:	01a33423          	sd	s10,8(t1)
   11d9c:	12f13023          	sd	a5,288(sp)
   11da0:	10d12c23          	sw	a3,280(sp)
   11da4:	01030313          	addi	t1,t1,16
   11da8:	fcdcdee3          	bge	s9,a3,11d84 <_vfprintf_r+0x17c4>
   11dac:	11010613          	addi	a2,sp,272
   11db0:	000b0593          	mv	a1,s6
   11db4:	000a8513          	mv	a0,s5
   11db8:	0a1090ef          	jal	ra,1b658 <__sprint_r>
   11dbc:	00050463          	beqz	a0,11dc4 <_vfprintf_r+0x1804>
   11dc0:	a91fe06f          	j	10850 <_vfprintf_r+0x290>
   11dc4:	12013783          	ld	a5,288(sp)
   11dc8:	11812683          	lw	a3,280(sp)
   11dcc:	19010313          	addi	t1,sp,400
   11dd0:	fb5ff06f          	j	11d84 <_vfprintf_r+0x17c4>
   11dd4:	000d8493          	mv	s1,s11
   11dd8:	981fe06f          	j	10758 <_vfprintf_r+0x198>
   11ddc:	00013583          	ld	a1,0(sp)
   11de0:	11010613          	addi	a2,sp,272
   11de4:	000a8513          	mv	a0,s5
   11de8:	071090ef          	jal	ra,1b658 <__sprint_r>
   11dec:	00050463          	beqz	a0,11df4 <_vfprintf_r+0x1834>
   11df0:	a61fe06f          	j	10850 <_vfprintf_r+0x290>
   11df4:	12013c83          	ld	s9,288(sp)
   11df8:	11812783          	lw	a5,280(sp)
   11dfc:	19010413          	addi	s0,sp,400
   11e00:	921ff06f          	j	11720 <_vfprintf_r+0x1160>
   11e04:	00013583          	ld	a1,0(sp)
   11e08:	11010613          	addi	a2,sp,272
   11e0c:	000a8513          	mv	a0,s5
   11e10:	049090ef          	jal	ra,1b658 <__sprint_r>
   11e14:	00050463          	beqz	a0,11e1c <_vfprintf_r+0x185c>
   11e18:	a39fe06f          	j	10850 <_vfprintf_r+0x290>
   11e1c:	12013c83          	ld	s9,288(sp)
   11e20:	11812783          	lw	a5,280(sp)
   11e24:	19010413          	addi	s0,sp,400
   11e28:	929ff06f          	j	11750 <_vfprintf_r+0x1190>
   11e2c:	11812683          	lw	a3,280(sp)
   11e30:	0000f617          	auipc	a2,0xf
   11e34:	60860613          	addi	a2,a2,1544 # 21438 <zeroes.4539+0x98>
   11e38:	00c33023          	sd	a2,0(t1)
   11e3c:	0016869b          	addiw	a3,a3,1
   11e40:	00100613          	li	a2,1
   11e44:	00178793          	addi	a5,a5,1
   11e48:	00c33423          	sd	a2,8(t1)
   11e4c:	10d12c23          	sw	a3,280(sp)
   11e50:	0006861b          	sext.w	a2,a3
   11e54:	12f13023          	sd	a5,288(sp)
   11e58:	00700693          	li	a3,7
   11e5c:	01030313          	addi	t1,t1,16
   11e60:	44c6cc63          	blt	a3,a2,122b8 <_vfprintf_r+0x1cf8>
   11e64:	ac059063          	bnez	a1,11124 <_vfprintf_r+0xb64>
   11e68:	02813703          	ld	a4,40(sp)
   11e6c:	0014f693          	andi	a3,s1,1
   11e70:	00d766b3          	or	a3,a4,a3
   11e74:	a0068863          	beqz	a3,11084 <_vfprintf_r+0xac4>
   11e78:	11812603          	lw	a2,280(sp)
   11e7c:	04813703          	ld	a4,72(sp)
   11e80:	05813683          	ld	a3,88(sp)
   11e84:	00f707b3          	add	a5,a4,a5
   11e88:	00d33023          	sd	a3,0(t1)
   11e8c:	0016069b          	addiw	a3,a2,1
   11e90:	00e33423          	sd	a4,8(t1)
   11e94:	12f13023          	sd	a5,288(sp)
   11e98:	10d12c23          	sw	a3,280(sp)
   11e9c:	00700613          	li	a2,7
   11ea0:	aad64a63          	blt	a2,a3,11154 <_vfprintf_r+0xb94>
   11ea4:	01030313          	addi	t1,t1,16
   11ea8:	ad8ff06f          	j	11180 <_vfprintf_r+0xbc0>
   11eac:	400a7493          	andi	s1,s4,1024
   11eb0:	01213c23          	sd	s2,24(sp)
   11eb4:	07813903          	ld	s2,120(sp)
   11eb8:	18c10c93          	addi	s9,sp,396
   11ebc:	0004849b          	sext.w	s1,s1
   11ec0:	00000793          	li	a5,0
   11ec4:	000c8d93          	mv	s11,s9
   11ec8:	02813023          	sd	s0,32(sp)
   11ecc:	03313c23          	sd	s3,56(sp)
   11ed0:	000c8413          	mv	s0,s9
   11ed4:	000b0993          	mv	s3,s6
   11ed8:	000a8c93          	mv	s9,s5
   11edc:	00048b13          	mv	s6,s1
   11ee0:	00030a93          	mv	s5,t1
   11ee4:	00078493          	mv	s1,a5
   11ee8:	00a00593          	li	a1,10
   11eec:	00098513          	mv	a0,s3
   11ef0:	bb4fe0ef          	jal	ra,102a4 <__umoddi3>
   11ef4:	0305051b          	addiw	a0,a0,48
   11ef8:	fea40fa3          	sb	a0,-1(s0)
   11efc:	0014849b          	addiw	s1,s1,1
   11f00:	fff40413          	addi	s0,s0,-1
   11f04:	000b0663          	beqz	s6,11f10 <_vfprintf_r+0x1950>
   11f08:	00094683          	lbu	a3,0(s2)
   11f0c:	cad48a63          	beq	s1,a3,113c0 <_vfprintf_r+0xe00>
   11f10:	00a00593          	li	a1,10
   11f14:	00098513          	mv	a0,s3
   11f18:	b44fe0ef          	jal	ra,1025c <__udivdi3>
   11f1c:	00900793          	li	a5,9
   11f20:	cb37f863          	bgeu	a5,s3,113d0 <_vfprintf_r+0xe10>
   11f24:	00050993          	mv	s3,a0
   11f28:	fc1ff06f          	j	11ee8 <_vfprintf_r+0x1928>
   11f2c:	00013583          	ld	a1,0(sp)
   11f30:	11010613          	addi	a2,sp,272
   11f34:	000a8513          	mv	a0,s5
   11f38:	720090ef          	jal	ra,1b658 <__sprint_r>
   11f3c:	00050463          	beqz	a0,11f44 <_vfprintf_r+0x1984>
   11f40:	911fe06f          	j	10850 <_vfprintf_r+0x290>
   11f44:	19010313          	addi	t1,sp,400
   11f48:	d20ff06f          	j	11468 <_vfprintf_r+0xea8>
   11f4c:	0017069b          	addiw	a3,a4,1
   11f50:	01833023          	sd	s8,0(t1)
   11f54:	00833423          	sd	s0,8(t1)
   11f58:	008787b3          	add	a5,a5,s0
   11f5c:	12f13023          	sd	a5,288(sp)
   11f60:	10d12c23          	sw	a3,280(sp)
   11f64:	00700713          	li	a4,7
   11f68:	90d75c63          	bge	a4,a3,11080 <_vfprintf_r+0xac0>
   11f6c:	a38ff06f          	j	111a4 <_vfprintf_r+0xbe4>
   11f70:	10013503          	ld	a0,256(sp)
   11f74:	10813583          	ld	a1,264(sp)
   11f78:	00000613          	li	a2,0
   11f7c:	00000693          	li	a3,0
   11f80:	6850d0ef          	jal	ra,1fe04 <__letf2>
   11f84:	01813303          	ld	t1,24(sp)
   11f88:	08054ce3          	bltz	a0,12820 <_vfprintf_r+0x2260>
   11f8c:	0df14783          	lbu	a5,223(sp)
   11f90:	04700693          	li	a3,71
   11f94:	0000fd97          	auipc	s11,0xf
   11f98:	44cd8d93          	addi	s11,s11,1100 # 213e0 <zeroes.4539+0x40>
   11f9c:	3486c263          	blt	a3,s0,122e0 <_vfprintf_r+0x1d20>
   11fa0:	f7f4f493          	andi	s1,s1,-129
   11fa4:	00013c23          	sd	zero,24(sp)
   11fa8:	04013023          	sd	zero,64(sp)
   11fac:	02013c23          	sd	zero,56(sp)
   11fb0:	02013023          	sd	zero,32(sp)
   11fb4:	0004849b          	sext.w	s1,s1
   11fb8:	00300a13          	li	s4,3
   11fbc:	00300c93          	li	s9,3
   11fc0:	00000b93          	li	s7,0
   11fc4:	00078463          	beqz	a5,11fcc <_vfprintf_r+0x1a0c>
   11fc8:	99dfe06f          	j	10964 <_vfprintf_r+0x3a4>
   11fcc:	fe1fe06f          	j	10fac <_vfprintf_r+0x9ec>
   11fd0:	000d8513          	mv	a0,s11
   11fd4:	07913023          	sd	s9,96(sp)
   11fd8:	4d1060ef          	jal	ra,18ca8 <strlen>
   11fdc:	00050c9b          	sext.w	s9,a0
   11fe0:	fffcca13          	not	s4,s9
   11fe4:	0df14783          	lbu	a5,223(sp)
   11fe8:	43fa5a13          	srai	s4,s4,0x3f
   11fec:	014cfa33          	and	s4,s9,s4
   11ff0:	01613823          	sd	s6,16(sp)
   11ff4:	00013c23          	sd	zero,24(sp)
   11ff8:	04013023          	sd	zero,64(sp)
   11ffc:	02013c23          	sd	zero,56(sp)
   12000:	02013023          	sd	zero,32(sp)
   12004:	000a0a1b          	sext.w	s4,s4
   12008:	00000b93          	li	s7,0
   1200c:	06013303          	ld	t1,96(sp)
   12010:	00078463          	beqz	a5,12018 <_vfprintf_r+0x1a58>
   12014:	951fe06f          	j	10964 <_vfprintf_r+0x3a4>
   12018:	f95fe06f          	j	10fac <_vfprintf_r+0x9ec>
   1201c:	2004f793          	andi	a5,s1,512
   12020:	3a078063          	beqz	a5,123c0 <_vfprintf_r+0x1e00>
   12024:	0ffb7b13          	andi	s6,s6,255
   12028:	00e13823          	sd	a4,16(sp)
   1202c:	db1fe06f          	j	10ddc <_vfprintf_r+0x81c>
   12030:	2004f793          	andi	a5,s1,512
   12034:	36078a63          	beqz	a5,123a8 <_vfprintf_r+0x1de8>
   12038:	0ffb7b13          	andi	s6,s6,255
   1203c:	00e13823          	sd	a4,16(sp)
   12040:	00048a13          	mv	s4,s1
   12044:	00100793          	li	a5,1
   12048:	8c5fe06f          	j	1090c <_vfprintf_r+0x34c>
   1204c:	2004f793          	andi	a5,s1,512
   12050:	34078063          	beqz	a5,12390 <_vfprintf_r+0x1dd0>
   12054:	01013783          	ld	a5,16(sp)
   12058:	00048a13          	mv	s4,s1
   1205c:	00e13823          	sd	a4,16(sp)
   12060:	00078b03          	lb	s6,0(a5)
   12064:	000b0793          	mv	a5,s6
   12068:	dd1fe06f          	j	10e38 <_vfprintf_r+0x878>
   1206c:	2004f793          	andi	a5,s1,512
   12070:	30078a63          	beqz	a5,12384 <_vfprintf_r+0x1dc4>
   12074:	0ffb7b13          	andi	s6,s6,255
   12078:	865fe06f          	j	108dc <_vfprintf_r+0x31c>
   1207c:	10813783          	ld	a5,264(sp)
   12080:	3407c863          	bltz	a5,123d0 <_vfprintf_r+0x1e10>
   12084:	0df14783          	lbu	a5,223(sp)
   12088:	04700693          	li	a3,71
   1208c:	0000fd97          	auipc	s11,0xf
   12090:	364d8d93          	addi	s11,s11,868 # 213f0 <zeroes.4539+0x50>
   12094:	f086d6e3          	bge	a3,s0,11fa0 <_vfprintf_r+0x19e0>
   12098:	0000fd97          	auipc	s11,0xf
   1209c:	360d8d93          	addi	s11,s11,864 # 213f8 <zeroes.4539+0x58>
   120a0:	f01ff06f          	j	11fa0 <_vfprintf_r+0x19e0>
   120a4:	0016861b          	addiw	a2,a3,1
   120a8:	008787b3          	add	a5,a5,s0
   120ac:	01833023          	sd	s8,0(t1)
   120b0:	00833423          	sd	s0,8(t1)
   120b4:	12f13023          	sd	a5,288(sp)
   120b8:	10c12c23          	sw	a2,280(sp)
   120bc:	00700693          	li	a3,7
   120c0:	01030313          	addi	t1,t1,16
   120c4:	9cc6d2e3          	bge	a3,a2,11a88 <_vfprintf_r+0x14c8>
   120c8:	00013583          	ld	a1,0(sp)
   120cc:	11010613          	addi	a2,sp,272
   120d0:	000a8513          	mv	a0,s5
   120d4:	584090ef          	jal	ra,1b658 <__sprint_r>
   120d8:	00050463          	beqz	a0,120e0 <_vfprintf_r+0x1b20>
   120dc:	f74fe06f          	j	10850 <_vfprintf_r+0x290>
   120e0:	12013783          	ld	a5,288(sp)
   120e4:	19010313          	addi	t1,sp,400
   120e8:	9a1ff06f          	j	11a88 <_vfprintf_r+0x14c8>
   120ec:	02813703          	ld	a4,40(sp)
   120f0:	03813c83          	ld	s9,56(sp)
   120f4:	03213023          	sd	s2,32(sp)
   120f8:	06913023          	sd	s1,96(sp)
   120fc:	09313023          	sd	s3,128(sp)
   12100:	04013903          	ld	s2,64(sp)
   12104:	03413c23          	sd	s4,56(sp)
   12108:	05b13023          	sd	s11,64(sp)
   1210c:	00700b13          	li	s6,7
   12110:	00ed8433          	add	s0,s11,a4
   12114:	08813983          	ld	s3,136(sp)
   12118:	07813483          	ld	s1,120(sp)
   1211c:	00013a03          	ld	s4,0(sp)
   12120:	0a0c8063          	beqz	s9,121c0 <_vfprintf_r+0x1c00>
   12124:	0a091063          	bnez	s2,121c4 <_vfprintf_r+0x1c04>
   12128:	fff48493          	addi	s1,s1,-1
   1212c:	fffc8c9b          	addiw	s9,s9,-1
   12130:	07013703          	ld	a4,112(sp)
   12134:	013787b3          	add	a5,a5,s3
   12138:	01333423          	sd	s3,8(t1)
   1213c:	00e33023          	sd	a4,0(t1)
   12140:	11812703          	lw	a4,280(sp)
   12144:	12f13023          	sd	a5,288(sp)
   12148:	01030313          	addi	t1,t1,16
   1214c:	0017069b          	addiw	a3,a4,1
   12150:	10d12c23          	sw	a3,280(sp)
   12154:	10db4263          	blt	s6,a3,12258 <_vfprintf_r+0x1c98>
   12158:	0004c603          	lbu	a2,0(s1)
   1215c:	417405bb          	subw	a1,s0,s7
   12160:	0006071b          	sext.w	a4,a2
   12164:	00070693          	mv	a3,a4
   12168:	00e5d463          	bge	a1,a4,12170 <_vfprintf_r+0x1bb0>
   1216c:	00058693          	mv	a3,a1
   12170:	00068d9b          	sext.w	s11,a3
   12174:	03b05863          	blez	s11,121a4 <_vfprintf_r+0x1be4>
   12178:	11812703          	lw	a4,280(sp)
   1217c:	01b787b3          	add	a5,a5,s11
   12180:	01733023          	sd	s7,0(t1)
   12184:	0017061b          	addiw	a2,a4,1
   12188:	01b33423          	sd	s11,8(t1)
   1218c:	12f13023          	sd	a5,288(sp)
   12190:	10c12c23          	sw	a2,280(sp)
   12194:	0ecb4463          	blt	s6,a2,1227c <_vfprintf_r+0x1cbc>
   12198:	0004c603          	lbu	a2,0(s1)
   1219c:	01030313          	addi	t1,t1,16
   121a0:	0006071b          	sext.w	a4,a2
   121a4:	fffdc593          	not	a1,s11
   121a8:	43f5d593          	srai	a1,a1,0x3f
   121ac:	00bdf6b3          	and	a3,s11,a1
   121b0:	40d70dbb          	subw	s11,a4,a3
   121b4:	01b04c63          	bgtz	s11,121cc <_vfprintf_r+0x1c0c>
   121b8:	00cb8bb3          	add	s7,s7,a2
   121bc:	f60c94e3          	bnez	s9,12124 <_vfprintf_r+0x1b64>
   121c0:	48090a63          	beqz	s2,12654 <_vfprintf_r+0x2094>
   121c4:	fff9091b          	addiw	s2,s2,-1
   121c8:	f69ff06f          	j	12130 <_vfprintf_r+0x1b70>
   121cc:	11812683          	lw	a3,280(sp)
   121d0:	01bd4863          	blt	s10,s11,121e0 <_vfprintf_r+0x1c20>
   121d4:	0580006f          	j	1222c <_vfprintf_r+0x1c6c>
   121d8:	ff0d8d9b          	addiw	s11,s11,-16
   121dc:	05bd5863          	bge	s10,s11,1222c <_vfprintf_r+0x1c6c>
   121e0:	0016869b          	addiw	a3,a3,1
   121e4:	01078793          	addi	a5,a5,16
   121e8:	01833023          	sd	s8,0(t1)
   121ec:	01a33423          	sd	s10,8(t1)
   121f0:	12f13023          	sd	a5,288(sp)
   121f4:	10d12c23          	sw	a3,280(sp)
   121f8:	01030313          	addi	t1,t1,16
   121fc:	fcdb5ee3          	bge	s6,a3,121d8 <_vfprintf_r+0x1c18>
   12200:	11010613          	addi	a2,sp,272
   12204:	000a0593          	mv	a1,s4
   12208:	000a8513          	mv	a0,s5
   1220c:	44c090ef          	jal	ra,1b658 <__sprint_r>
   12210:	00050463          	beqz	a0,12218 <_vfprintf_r+0x1c58>
   12214:	e3cfe06f          	j	10850 <_vfprintf_r+0x290>
   12218:	ff0d8d9b          	addiw	s11,s11,-16
   1221c:	12013783          	ld	a5,288(sp)
   12220:	11812683          	lw	a3,280(sp)
   12224:	19010313          	addi	t1,sp,400
   12228:	fbbd4ce3          	blt	s10,s11,121e0 <_vfprintf_r+0x1c20>
   1222c:	0016871b          	addiw	a4,a3,1
   12230:	01b787b3          	add	a5,a5,s11
   12234:	01833023          	sd	s8,0(t1)
   12238:	01b33423          	sd	s11,8(t1)
   1223c:	12f13023          	sd	a5,288(sp)
   12240:	10e12c23          	sw	a4,280(sp)
   12244:	58eb4463          	blt	s6,a4,127cc <_vfprintf_r+0x220c>
   12248:	0004c603          	lbu	a2,0(s1)
   1224c:	01030313          	addi	t1,t1,16
   12250:	00cb8bb3          	add	s7,s7,a2
   12254:	f69ff06f          	j	121bc <_vfprintf_r+0x1bfc>
   12258:	11010613          	addi	a2,sp,272
   1225c:	000a0593          	mv	a1,s4
   12260:	000a8513          	mv	a0,s5
   12264:	3f4090ef          	jal	ra,1b658 <__sprint_r>
   12268:	00050463          	beqz	a0,12270 <_vfprintf_r+0x1cb0>
   1226c:	de4fe06f          	j	10850 <_vfprintf_r+0x290>
   12270:	12013783          	ld	a5,288(sp)
   12274:	19010313          	addi	t1,sp,400
   12278:	ee1ff06f          	j	12158 <_vfprintf_r+0x1b98>
   1227c:	11010613          	addi	a2,sp,272
   12280:	000a0593          	mv	a1,s4
   12284:	000a8513          	mv	a0,s5
   12288:	3d0090ef          	jal	ra,1b658 <__sprint_r>
   1228c:	00050463          	beqz	a0,12294 <_vfprintf_r+0x1cd4>
   12290:	dc0fe06f          	j	10850 <_vfprintf_r+0x290>
   12294:	0004c603          	lbu	a2,0(s1)
   12298:	12013783          	ld	a5,288(sp)
   1229c:	19010313          	addi	t1,sp,400
   122a0:	0006071b          	sext.w	a4,a2
   122a4:	f01ff06f          	j	121a4 <_vfprintf_r+0x1be4>
   122a8:	001b0b1b          	addiw	s6,s6,1
   122ac:	01078313          	addi	t1,a5,16
   122b0:	00078413          	mv	s0,a5
   122b4:	d10ff06f          	j	117c4 <_vfprintf_r+0x1204>
   122b8:	00013583          	ld	a1,0(sp)
   122bc:	11010613          	addi	a2,sp,272
   122c0:	000a8513          	mv	a0,s5
   122c4:	394090ef          	jal	ra,1b658 <__sprint_r>
   122c8:	00050463          	beqz	a0,122d0 <_vfprintf_r+0x1d10>
   122cc:	d84fe06f          	j	10850 <_vfprintf_r+0x290>
   122d0:	0e812583          	lw	a1,232(sp)
   122d4:	12013783          	ld	a5,288(sp)
   122d8:	19010313          	addi	t1,sp,400
   122dc:	b89ff06f          	j	11e64 <_vfprintf_r+0x18a4>
   122e0:	0000fd97          	auipc	s11,0xf
   122e4:	108d8d93          	addi	s11,s11,264 # 213e8 <zeroes.4539+0x48>
   122e8:	cb9ff06f          	j	11fa0 <_vfprintf_r+0x19e0>
   122ec:	00013583          	ld	a1,0(sp)
   122f0:	11010613          	addi	a2,sp,272
   122f4:	000a8513          	mv	a0,s5
   122f8:	360090ef          	jal	ra,1b658 <__sprint_r>
   122fc:	00050463          	beqz	a0,12304 <_vfprintf_r+0x1d44>
   12300:	d50fe06f          	j	10850 <_vfprintf_r+0x290>
   12304:	12013783          	ld	a5,288(sp)
   12308:	19010313          	addi	t1,sp,400
   1230c:	f64ff06f          	j	11a70 <_vfprintf_r+0x14b0>
   12310:	00600e13          	li	t3,6
   12314:	a45ff06f          	j	11d58 <_vfprintf_r+0x1798>
   12318:	08813783          	ld	a5,136(sp)
   1231c:	07013583          	ld	a1,112(sp)
   12320:	00000493          	li	s1,0
   12324:	40f40433          	sub	s0,s0,a5
   12328:	00078613          	mv	a2,a5
   1232c:	00040513          	mv	a0,s0
   12330:	249060ef          	jal	ra,18d78 <strncpy>
   12334:	00194683          	lbu	a3,1(s2)
   12338:	00098513          	mv	a0,s3
   1233c:	00a00593          	li	a1,10
   12340:	00d03733          	snez	a4,a3
   12344:	00e90933          	add	s2,s2,a4
   12348:	f15fd0ef          	jal	ra,1025c <__udivdi3>
   1234c:	00050993          	mv	s3,a0
   12350:	b99ff06f          	j	11ee8 <_vfprintf_r+0x1928>
   12354:	02813683          	ld	a3,40(sp)
   12358:	00dd8733          	add	a4,s11,a3
   1235c:	4086863b          	subw	a2,a3,s0
   12360:	4177083b          	subw	a6,a4,s7
   12364:	0008041b          	sext.w	s0,a6
   12368:	fb065e63          	bge	a2,a6,11b24 <_vfprintf_r+0x1564>
   1236c:	0006041b          	sext.w	s0,a2
   12370:	fb4ff06f          	j	11b24 <_vfprintf_r+0x1564>
   12374:	00813783          	ld	a5,8(sp)
   12378:	00090d93          	mv	s11,s2
   1237c:	00f71023          	sh	a5,0(a4)
   12380:	d51fe06f          	j	110d0 <_vfprintf_r+0xb10>
   12384:	020b1b13          	slli	s6,s6,0x20
   12388:	020b5b13          	srli	s6,s6,0x20
   1238c:	d50fe06f          	j	108dc <_vfprintf_r+0x31c>
   12390:	01013783          	ld	a5,16(sp)
   12394:	00048a13          	mv	s4,s1
   12398:	00e13823          	sd	a4,16(sp)
   1239c:	0007ab03          	lw	s6,0(a5)
   123a0:	000b0793          	mv	a5,s6
   123a4:	a95fe06f          	j	10e38 <_vfprintf_r+0x878>
   123a8:	020b1b13          	slli	s6,s6,0x20
   123ac:	020b5b13          	srli	s6,s6,0x20
   123b0:	00e13823          	sd	a4,16(sp)
   123b4:	00048a13          	mv	s4,s1
   123b8:	00100793          	li	a5,1
   123bc:	d50fe06f          	j	1090c <_vfprintf_r+0x34c>
   123c0:	020b1b13          	slli	s6,s6,0x20
   123c4:	020b5b13          	srli	s6,s6,0x20
   123c8:	00e13823          	sd	a4,16(sp)
   123cc:	a11fe06f          	j	10ddc <_vfprintf_r+0x81c>
   123d0:	02d00793          	li	a5,45
   123d4:	0cf10fa3          	sb	a5,223(sp)
   123d8:	cb1ff06f          	j	12088 <_vfprintf_r+0x1ac8>
   123dc:	03000793          	li	a5,48
   123e0:	0ef10023          	sb	a5,224(sp)
   123e4:	05800713          	li	a4,88
   123e8:	0024e793          	ori	a5,s1,2
   123ec:	0007879b          	sext.w	a5,a5
   123f0:	0ee100a3          	sb	a4,225(sp)
   123f4:	06300693          	li	a3,99
   123f8:	04f13023          	sd	a5,64(sp)
   123fc:	00013c23          	sd	zero,24(sp)
   12400:	12810d93          	addi	s11,sp,296
   12404:	6776cc63          	blt	a3,s7,12a7c <_vfprintf_r+0x24bc>
   12408:	10813c83          	ld	s9,264(sp)
   1240c:	fdf47793          	andi	a5,s0,-33
   12410:	1024e493          	ori	s1,s1,258
   12414:	02f13c23          	sd	a5,56(sp)
   12418:	06013023          	sd	zero,96(sp)
   1241c:	0004849b          	sext.w	s1,s1
   12420:	10013e83          	ld	t4,256(sp)
   12424:	380cc863          	bltz	s9,127b4 <_vfprintf_r+0x21f4>
   12428:	06100793          	li	a5,97
   1242c:	76f40e63          	beq	s0,a5,12ba8 <_vfprintf_r+0x25e8>
   12430:	04100793          	li	a5,65
   12434:	00f40463          	beq	s0,a5,1243c <_vfprintf_r+0x1e7c>
   12438:	ec4fe06f          	j	10afc <_vfprintf_r+0x53c>
   1243c:	000e8513          	mv	a0,t4
   12440:	000c8593          	mv	a1,s9
   12444:	02613423          	sd	t1,40(sp)
   12448:	3790e0ef          	jal	ra,20fc0 <__trunctfdf2>
   1244c:	0e810593          	addi	a1,sp,232
   12450:	340060ef          	jal	ra,18790 <frexp>
   12454:	2790e0ef          	jal	ra,20ecc <__extenddftf2>
   12458:	0000f797          	auipc	a5,0xf
   1245c:	f7878793          	addi	a5,a5,-136 # 213d0 <zeroes.4539+0x30>
   12460:	0087b683          	ld	a3,8(a5)
   12464:	00000613          	li	a2,0
   12468:	27d0d0ef          	jal	ra,1fee4 <__multf3>
   1246c:	00000613          	li	a2,0
   12470:	00000693          	li	a3,0
   12474:	00050c93          	mv	s9,a0
   12478:	02b13023          	sd	a1,32(sp)
   1247c:	01d0d0ef          	jal	ra,1fc98 <__eqtf2>
   12480:	02013f03          	ld	t5,32(sp)
   12484:	02813303          	ld	t1,40(sp)
   12488:	00051663          	bnez	a0,12494 <_vfprintf_r+0x1ed4>
   1248c:	00100793          	li	a5,1
   12490:	0ef12423          	sw	a5,232(sp)
   12494:	0000f797          	auipc	a5,0xf
   12498:	f8478793          	addi	a5,a5,-124 # 21418 <zeroes.4539+0x78>
   1249c:	02f13023          	sd	a5,32(sp)
   124a0:	000b869b          	sext.w	a3,s7
   124a4:	02069793          	slli	a5,a3,0x20
   124a8:	0207d793          	srli	a5,a5,0x20
   124ac:	00178793          	addi	a5,a5,1
   124b0:	00fd8633          	add	a2,s11,a5
   124b4:	0000f797          	auipc	a5,0xf
   124b8:	efc78793          	addi	a5,a5,-260 # 213b0 <zeroes.4539+0x10>
   124bc:	0087b783          	ld	a5,8(a5)
   124c0:	00dd86bb          	addw	a3,s11,a3
   124c4:	09213023          	sd	s2,128(sp)
   124c8:	08813823          	sd	s0,144(sp)
   124cc:	0b313023          	sd	s3,160(sp)
   124d0:	0b713423          	sd	s7,168(sp)
   124d4:	0cc13423          	sd	a2,200(sp)
   124d8:	02f13423          	sd	a5,40(sp)
   124dc:	08913c23          	sd	s1,152(sp)
   124e0:	0a613823          	sd	t1,176(sp)
   124e4:	000d8413          	mv	s0,s11
   124e8:	00060913          	mv	s2,a2
   124ec:	0b513c23          	sd	s5,184(sp)
   124f0:	0db13023          	sd	s11,192(sp)
   124f4:	000c8b13          	mv	s6,s9
   124f8:	000f0b93          	mv	s7,t5
   124fc:	00068993          	mv	s3,a3
   12500:	0180006f          	j	12518 <_vfprintf_r+0x1f58>
   12504:	00000613          	li	a2,0
   12508:	00000693          	li	a3,0
   1250c:	78c0d0ef          	jal	ra,1fc98 <__eqtf2>
   12510:	5a050c63          	beqz	a0,12ac8 <_vfprintf_r+0x2508>
   12514:	000c8413          	mv	s0,s9
   12518:	02813683          	ld	a3,40(sp)
   1251c:	00000613          	li	a2,0
   12520:	000b0513          	mv	a0,s6
   12524:	000b8593          	mv	a1,s7
   12528:	1bd0d0ef          	jal	ra,1fee4 <__multf3>
   1252c:	00058a93          	mv	s5,a1
   12530:	00050493          	mv	s1,a0
   12534:	0a10e0ef          	jal	ra,20dd4 <__fixtfsi>
   12538:	00050a1b          	sext.w	s4,a0
   1253c:	000a0513          	mv	a0,s4
   12540:	0fd0e0ef          	jal	ra,20e3c <__floatsitf>
   12544:	00058693          	mv	a3,a1
   12548:	00050613          	mv	a2,a0
   1254c:	000a8593          	mv	a1,s5
   12550:	00048513          	mv	a0,s1
   12554:	0b00e0ef          	jal	ra,20604 <__subtf3>
   12558:	02013783          	ld	a5,32(sp)
   1255c:	00140c93          	addi	s9,s0,1
   12560:	00050d93          	mv	s11,a0
   12564:	014787b3          	add	a5,a5,s4
   12568:	0007c683          	lbu	a3,0(a5)
   1256c:	00058493          	mv	s1,a1
   12570:	00050b13          	mv	s6,a0
   12574:	fedc8fa3          	sb	a3,-1(s9)
   12578:	00058b93          	mv	s7,a1
   1257c:	41998abb          	subw	s5,s3,s9
   12580:	f92c92e3          	bne	s9,s2,12504 <_vfprintf_r+0x1f44>
   12584:	08013903          	ld	s2,128(sp)
   12588:	0a013983          	ld	s3,160(sp)
   1258c:	08813023          	sd	s0,128(sp)
   12590:	0a813b83          	ld	s7,168(sp)
   12594:	0b013303          	ld	t1,176(sp)
   12598:	09013403          	ld	s0,144(sp)
   1259c:	0b813a83          	ld	s5,184(sp)
   125a0:	0c013d83          	ld	s11,192(sp)
   125a4:	09813483          	ld	s1,152(sp)
   125a8:	0c813b03          	ld	s6,200(sp)
   125ac:	fff00793          	li	a5,-1
   125b0:	00050893          	mv	a7,a0
   125b4:	00058813          	mv	a6,a1
   125b8:	02f13423          	sd	a5,40(sp)
   125bc:	0000f697          	auipc	a3,0xf
   125c0:	e0468693          	addi	a3,a3,-508 # 213c0 <zeroes.4539+0x20>
   125c4:	0086b783          	ld	a5,8(a3)
   125c8:	00000613          	li	a2,0
   125cc:	00088513          	mv	a0,a7
   125d0:	00078693          	mv	a3,a5
   125d4:	00080593          	mv	a1,a6
   125d8:	08613c23          	sd	t1,152(sp)
   125dc:	08f13823          	sd	a5,144(sp)
   125e0:	0b113423          	sd	a7,168(sp)
   125e4:	0b013023          	sd	a6,160(sp)
   125e8:	73c0d0ef          	jal	ra,1fd24 <__getf2>
   125ec:	09813303          	ld	t1,152(sp)
   125f0:	3ea04663          	bgtz	a0,129dc <_vfprintf_r+0x241c>
   125f4:	0a813883          	ld	a7,168(sp)
   125f8:	0a013803          	ld	a6,160(sp)
   125fc:	09013683          	ld	a3,144(sp)
   12600:	00000613          	li	a2,0
   12604:	00088513          	mv	a0,a7
   12608:	00080593          	mv	a1,a6
   1260c:	68c0d0ef          	jal	ra,1fc98 <__eqtf2>
   12610:	09813303          	ld	t1,152(sp)
   12614:	00051663          	bnez	a0,12620 <_vfprintf_r+0x2060>
   12618:	001a7a13          	andi	s4,s4,1
   1261c:	3c0a1063          	bnez	s4,129dc <_vfprintf_r+0x241c>
   12620:	02813783          	ld	a5,40(sp)
   12624:	03000613          	li	a2,48
   12628:	00178693          	addi	a3,a5,1
   1262c:	00db06b3          	add	a3,s6,a3
   12630:	0007c863          	bltz	a5,12640 <_vfprintf_r+0x2080>
   12634:	001b0b13          	addi	s6,s6,1
   12638:	fecb0fa3          	sb	a2,-1(s6)
   1263c:	ff669ce3          	bne	a3,s6,12634 <_vfprintf_r+0x2074>
   12640:	41bb07bb          	subw	a5,s6,s11
   12644:	02f13423          	sd	a5,40(sp)
   12648:	d38fe06f          	j	10b80 <_vfprintf_r+0x5c0>
   1264c:	00048a13          	mv	s4,s1
   12650:	d59fe06f          	j	113a8 <_vfprintf_r+0xde8>
   12654:	04013d83          	ld	s11,64(sp)
   12658:	02813703          	ld	a4,40(sp)
   1265c:	06913c23          	sd	s1,120(sp)
   12660:	02013903          	ld	s2,32(sp)
   12664:	00ed86b3          	add	a3,s11,a4
   12668:	08013983          	ld	s3,128(sp)
   1266c:	06013483          	ld	s1,96(sp)
   12670:	03813a03          	ld	s4,56(sp)
   12674:	c376f263          	bgeu	a3,s7,11a98 <_vfprintf_r+0x14d8>
   12678:	00068b93          	mv	s7,a3
   1267c:	c1cff06f          	j	11a98 <_vfprintf_r+0x14d8>
   12680:	02013703          	ld	a4,32(sp)
   12684:	ffd00793          	li	a5,-3
   12688:	00f74463          	blt	a4,a5,12690 <_vfprintf_r+0x20d0>
   1268c:	00ebda63          	bge	s7,a4,126a0 <_vfprintf_r+0x20e0>
   12690:	ffe4041b          	addiw	s0,s0,-2
   12694:	fdf47793          	andi	a5,s0,-33
   12698:	02f13c23          	sd	a5,56(sp)
   1269c:	d0cfe06f          	j	10ba8 <_vfprintf_r+0x5e8>
   126a0:	02813783          	ld	a5,40(sp)
   126a4:	02013703          	ld	a4,32(sp)
   126a8:	20f74c63          	blt	a4,a5,128c0 <_vfprintf_r+0x2300>
   126ac:	04013783          	ld	a5,64(sp)
   126b0:	00070c93          	mv	s9,a4
   126b4:	0017f793          	andi	a5,a5,1
   126b8:	00078663          	beqz	a5,126c4 <_vfprintf_r+0x2104>
   126bc:	04813783          	ld	a5,72(sp)
   126c0:	00e78cbb          	addw	s9,a5,a4
   126c4:	04013783          	ld	a5,64(sp)
   126c8:	4007f793          	andi	a5,a5,1024
   126cc:	00078663          	beqz	a5,126d8 <_vfprintf_r+0x2118>
   126d0:	02013783          	ld	a5,32(sp)
   126d4:	42f04c63          	bgtz	a5,12b0c <_vfprintf_r+0x254c>
   126d8:	fffcca13          	not	s4,s9
   126dc:	43fa5a13          	srai	s4,s4,0x3f
   126e0:	014cfa33          	and	s4,s9,s4
   126e4:	000a0a1b          	sext.w	s4,s4
   126e8:	06700413          	li	s0,103
   126ec:	04013023          	sd	zero,64(sp)
   126f0:	02013c23          	sd	zero,56(sp)
   126f4:	df8fe06f          	j	10cec <_vfprintf_r+0x72c>
   126f8:	0df14783          	lbu	a5,223(sp)
   126fc:	00000b93          	li	s7,0
   12700:	00078463          	beqz	a5,12708 <_vfprintf_r+0x2148>
   12704:	a60fe06f          	j	10964 <_vfprintf_r+0x3a4>
   12708:	8a5fe06f          	j	10fac <_vfprintf_r+0x9ec>
   1270c:	0e810793          	addi	a5,sp,232
   12710:	00300693          	li	a3,3
   12714:	000e8593          	mv	a1,t4
   12718:	0f810893          	addi	a7,sp,248
   1271c:	0ec10813          	addi	a6,sp,236
   12720:	000b8713          	mv	a4,s7
   12724:	000c8613          	mv	a2,s9
   12728:	000a8513          	mv	a0,s5
   1272c:	02613423          	sd	t1,40(sp)
   12730:	03d13023          	sd	t4,32(sp)
   12734:	6c1020ef          	jal	ra,155f4 <_ldtoa_r>
   12738:	00054683          	lbu	a3,0(a0)
   1273c:	03000793          	li	a5,48
   12740:	00050d93          	mv	s11,a0
   12744:	02013e83          	ld	t4,32(sp)
   12748:	02813303          	ld	t1,40(sp)
   1274c:	0ef68063          	beq	a3,a5,1282c <_vfprintf_r+0x226c>
   12750:	0e812783          	lw	a5,232(sp)
   12754:	017787b3          	add	a5,a5,s7
   12758:	00fd8a33          	add	s4,s11,a5
   1275c:	00000613          	li	a2,0
   12760:	00000693          	li	a3,0
   12764:	000e8513          	mv	a0,t4
   12768:	000c8593          	mv	a1,s9
   1276c:	02613023          	sd	t1,32(sp)
   12770:	5280d0ef          	jal	ra,1fc98 <__eqtf2>
   12774:	000a0793          	mv	a5,s4
   12778:	02013303          	ld	t1,32(sp)
   1277c:	00051463          	bnez	a0,12784 <_vfprintf_r+0x21c4>
   12780:	bf8fe06f          	j	10b78 <_vfprintf_r+0x5b8>
   12784:	0f813783          	ld	a5,248(sp)
   12788:	03000613          	li	a2,48
   1278c:	0147e463          	bltu	a5,s4,12794 <_vfprintf_r+0x21d4>
   12790:	be8fe06f          	j	10b78 <_vfprintf_r+0x5b8>
   12794:	00178713          	addi	a4,a5,1
   12798:	0ee13c23          	sd	a4,248(sp)
   1279c:	00c78023          	sb	a2,0(a5)
   127a0:	0f813783          	ld	a5,248(sp)
   127a4:	ff47e8e3          	bltu	a5,s4,12794 <_vfprintf_r+0x21d4>
   127a8:	bd0fe06f          	j	10b78 <_vfprintf_r+0x5b8>
   127ac:	00013c23          	sd	zero,24(sp)
   127b0:	00078493          	mv	s1,a5
   127b4:	fff00793          	li	a5,-1
   127b8:	03f79793          	slli	a5,a5,0x3f
   127bc:	00fcccb3          	xor	s9,s9,a5
   127c0:	02d00793          	li	a5,45
   127c4:	06f13023          	sd	a5,96(sp)
   127c8:	c61ff06f          	j	12428 <_vfprintf_r+0x1e68>
   127cc:	11010613          	addi	a2,sp,272
   127d0:	000a0593          	mv	a1,s4
   127d4:	000a8513          	mv	a0,s5
   127d8:	681080ef          	jal	ra,1b658 <__sprint_r>
   127dc:	00050463          	beqz	a0,127e4 <_vfprintf_r+0x2224>
   127e0:	870fe06f          	j	10850 <_vfprintf_r+0x290>
   127e4:	0004c603          	lbu	a2,0(s1)
   127e8:	12013783          	ld	a5,288(sp)
   127ec:	19010313          	addi	t1,sp,400
   127f0:	00cb8bb3          	add	s7,s7,a2
   127f4:	9c9ff06f          	j	121bc <_vfprintf_r+0x1bfc>
   127f8:	00013583          	ld	a1,0(sp)
   127fc:	11010613          	addi	a2,sp,272
   12800:	000a8513          	mv	a0,s5
   12804:	655080ef          	jal	ra,1b658 <__sprint_r>
   12808:	00050463          	beqz	a0,12810 <_vfprintf_r+0x2250>
   1280c:	844fe06f          	j	10850 <_vfprintf_r+0x290>
   12810:	0e812403          	lw	s0,232(sp)
   12814:	12013783          	ld	a5,288(sp)
   12818:	19010313          	addi	t1,sp,400
   1281c:	ac0ff06f          	j	11adc <_vfprintf_r+0x151c>
   12820:	02d00793          	li	a5,45
   12824:	0cf10fa3          	sb	a5,223(sp)
   12828:	f68ff06f          	j	11f90 <_vfprintf_r+0x19d0>
   1282c:	000e8513          	mv	a0,t4
   12830:	00000613          	li	a2,0
   12834:	00000693          	li	a3,0
   12838:	000c8593          	mv	a1,s9
   1283c:	02613423          	sd	t1,40(sp)
   12840:	03d13023          	sd	t4,32(sp)
   12844:	4540d0ef          	jal	ra,1fc98 <__eqtf2>
   12848:	02013e83          	ld	t4,32(sp)
   1284c:	02813303          	ld	t1,40(sp)
   12850:	f00500e3          	beqz	a0,12750 <_vfprintf_r+0x2190>
   12854:	00100693          	li	a3,1
   12858:	417687bb          	subw	a5,a3,s7
   1285c:	0ef12423          	sw	a5,232(sp)
   12860:	ef5ff06f          	j	12754 <_vfprintf_r+0x2194>
   12864:	0df14783          	lbu	a5,223(sp)
   12868:	01613823          	sd	s6,16(sp)
   1286c:	04013023          	sd	zero,64(sp)
   12870:	02013c23          	sd	zero,56(sp)
   12874:	02013023          	sd	zero,32(sp)
   12878:	000b8a13          	mv	s4,s7
   1287c:	000b8c93          	mv	s9,s7
   12880:	00000b93          	li	s7,0
   12884:	00078463          	beqz	a5,1288c <_vfprintf_r+0x22cc>
   12888:	8dcfe06f          	j	10964 <_vfprintf_r+0x3a4>
   1288c:	f20fe06f          	j	10fac <_vfprintf_r+0x9ec>
   12890:	00013583          	ld	a1,0(sp)
   12894:	11010613          	addi	a2,sp,272
   12898:	000a8513          	mv	a0,s5
   1289c:	5bd080ef          	jal	ra,1b658 <__sprint_r>
   128a0:	00050463          	beqz	a0,128a8 <_vfprintf_r+0x22e8>
   128a4:	fadfd06f          	j	10850 <_vfprintf_r+0x290>
   128a8:	0e812603          	lw	a2,232(sp)
   128ac:	02813703          	ld	a4,40(sp)
   128b0:	12013783          	ld	a5,288(sp)
   128b4:	19010313          	addi	t1,sp,400
   128b8:	40c7063b          	subw	a2,a4,a2
   128bc:	a68ff06f          	j	11b24 <_vfprintf_r+0x1564>
   128c0:	02813703          	ld	a4,40(sp)
   128c4:	04813783          	ld	a5,72(sp)
   128c8:	06700413          	li	s0,103
   128cc:	00e78cbb          	addw	s9,a5,a4
   128d0:	02013703          	ld	a4,32(sp)
   128d4:	38e05063          	blez	a4,12c54 <_vfprintf_r+0x2694>
   128d8:	04013783          	ld	a5,64(sp)
   128dc:	4007f793          	andi	a5,a5,1024
   128e0:	22079863          	bnez	a5,12b10 <_vfprintf_r+0x2550>
   128e4:	fffcca13          	not	s4,s9
   128e8:	43fa5a13          	srai	s4,s4,0x3f
   128ec:	014cfa33          	and	s4,s9,s4
   128f0:	000a0a1b          	sext.w	s4,s4
   128f4:	df9ff06f          	j	126ec <_vfprintf_r+0x212c>
   128f8:	04013783          	ld	a5,64(sp)
   128fc:	02013703          	ld	a4,32(sp)
   12900:	0017f793          	andi	a5,a5,1
   12904:	00fbe7b3          	or	a5,s7,a5
   12908:	0007879b          	sext.w	a5,a5
   1290c:	38e05263          	blez	a4,12c90 <_vfprintf_r+0x26d0>
   12910:	30079063          	bnez	a5,12c10 <_vfprintf_r+0x2650>
   12914:	02013c83          	ld	s9,32(sp)
   12918:	06600413          	li	s0,102
   1291c:	fbdff06f          	j	128d8 <_vfprintf_r+0x2318>
   12920:	ff000613          	li	a2,-16
   12924:	40b0043b          	negw	s0,a1
   12928:	06c5d663          	bge	a1,a2,12994 <_vfprintf_r+0x23d4>
   1292c:	00700c93          	li	s9,7
   12930:	00013b03          	ld	s6,0(sp)
   12934:	00c0006f          	j	12940 <_vfprintf_r+0x2380>
   12938:	ff04041b          	addiw	s0,s0,-16
   1293c:	048d5c63          	bge	s10,s0,12994 <_vfprintf_r+0x23d4>
   12940:	0016869b          	addiw	a3,a3,1
   12944:	01078793          	addi	a5,a5,16
   12948:	01833023          	sd	s8,0(t1)
   1294c:	01a33423          	sd	s10,8(t1)
   12950:	12f13023          	sd	a5,288(sp)
   12954:	10d12c23          	sw	a3,280(sp)
   12958:	01030313          	addi	t1,t1,16
   1295c:	fcdcdee3          	bge	s9,a3,12938 <_vfprintf_r+0x2378>
   12960:	11010613          	addi	a2,sp,272
   12964:	000b0593          	mv	a1,s6
   12968:	000a8513          	mv	a0,s5
   1296c:	4ed080ef          	jal	ra,1b658 <__sprint_r>
   12970:	00050463          	beqz	a0,12978 <_vfprintf_r+0x23b8>
   12974:	eddfd06f          	j	10850 <_vfprintf_r+0x290>
   12978:	12013783          	ld	a5,288(sp)
   1297c:	11812683          	lw	a3,280(sp)
   12980:	19010313          	addi	t1,sp,400
   12984:	fb5ff06f          	j	12938 <_vfprintf_r+0x2378>
   12988:	fff00793          	li	a5,-1
   1298c:	00f13423          	sd	a5,8(sp)
   12990:	ee9fd06f          	j	10878 <_vfprintf_r+0x2b8>
   12994:	0016869b          	addiw	a3,a3,1
   12998:	008787b3          	add	a5,a5,s0
   1299c:	01833023          	sd	s8,0(t1)
   129a0:	00833423          	sd	s0,8(t1)
   129a4:	12f13023          	sd	a5,288(sp)
   129a8:	10d12c23          	sw	a3,280(sp)
   129ac:	00700613          	li	a2,7
   129b0:	ced65a63          	bge	a2,a3,11ea4 <_vfprintf_r+0x18e4>
   129b4:	00013583          	ld	a1,0(sp)
   129b8:	11010613          	addi	a2,sp,272
   129bc:	000a8513          	mv	a0,s5
   129c0:	499080ef          	jal	ra,1b658 <__sprint_r>
   129c4:	00050463          	beqz	a0,129cc <_vfprintf_r+0x240c>
   129c8:	e89fd06f          	j	10850 <_vfprintf_r+0x290>
   129cc:	12013783          	ld	a5,288(sp)
   129d0:	11812683          	lw	a3,280(sp)
   129d4:	19010313          	addi	t1,sp,400
   129d8:	fa8fe06f          	j	11180 <_vfprintf_r+0xbc0>
   129dc:	08013783          	ld	a5,128(sp)
   129e0:	000b0693          	mv	a3,s6
   129e4:	0ef13c23          	sd	a5,248(sp)
   129e8:	02013783          	ld	a5,32(sp)
   129ec:	fffb4603          	lbu	a2,-1(s6)
   129f0:	00f7c583          	lbu	a1,15(a5)
   129f4:	02c59063          	bne	a1,a2,12a14 <_vfprintf_r+0x2454>
   129f8:	03000513          	li	a0,48
   129fc:	fea68fa3          	sb	a0,-1(a3)
   12a00:	0f813683          	ld	a3,248(sp)
   12a04:	fff68793          	addi	a5,a3,-1
   12a08:	0ef13c23          	sd	a5,248(sp)
   12a0c:	fff6c603          	lbu	a2,-1(a3)
   12a10:	fec586e3          	beq	a1,a2,129fc <_vfprintf_r+0x243c>
   12a14:	0016059b          	addiw	a1,a2,1
   12a18:	03900513          	li	a0,57
   12a1c:	0ff5f593          	andi	a1,a1,255
   12a20:	00a60663          	beq	a2,a0,12a2c <_vfprintf_r+0x246c>
   12a24:	feb68fa3          	sb	a1,-1(a3)
   12a28:	c19ff06f          	j	12640 <_vfprintf_r+0x2080>
   12a2c:	02013783          	ld	a5,32(sp)
   12a30:	00a7c583          	lbu	a1,10(a5)
   12a34:	feb68fa3          	sb	a1,-1(a3)
   12a38:	c09ff06f          	j	12640 <_vfprintf_r+0x2080>
   12a3c:	001b8a1b          	addiw	s4,s7,1
   12a40:	000a0713          	mv	a4,s4
   12a44:	000e8593          	mv	a1,t4
   12a48:	0f810893          	addi	a7,sp,248
   12a4c:	0ec10813          	addi	a6,sp,236
   12a50:	0e810793          	addi	a5,sp,232
   12a54:	00200693          	li	a3,2
   12a58:	000c8613          	mv	a2,s9
   12a5c:	000a8513          	mv	a0,s5
   12a60:	03d13023          	sd	t4,32(sp)
   12a64:	391020ef          	jal	ra,155f4 <_ldtoa_r>
   12a68:	00050d93          	mv	s11,a0
   12a6c:	02013e83          	ld	t4,32(sp)
   12a70:	02813303          	ld	t1,40(sp)
   12a74:	014d8a33          	add	s4,s11,s4
   12a78:	ce5ff06f          	j	1275c <_vfprintf_r+0x219c>
   12a7c:	001b859b          	addiw	a1,s7,1
   12a80:	000a8513          	mv	a0,s5
   12a84:	00613c23          	sd	t1,24(sp)
   12a88:	180040ef          	jal	ra,16c08 <_malloc_r>
   12a8c:	00050d93          	mv	s11,a0
   12a90:	01813303          	ld	t1,24(sp)
   12a94:	24050e63          	beqz	a0,12cf0 <_vfprintf_r+0x2730>
   12a98:	00a13c23          	sd	a0,24(sp)
   12a9c:	96dff06f          	j	12408 <_vfprintf_r+0x1e48>
   12aa0:	03000793          	li	a5,48
   12aa4:	0ef10023          	sb	a5,224(sp)
   12aa8:	07800713          	li	a4,120
   12aac:	93dff06f          	j	123e8 <_vfprintf_r+0x1e28>
   12ab0:	000b8463          	beqz	s7,12ab8 <_vfprintf_r+0x24f8>
   12ab4:	820fe06f          	j	10ad4 <_vfprintf_r+0x514>
   12ab8:	00100b93          	li	s7,1
   12abc:	818fe06f          	j	10ad4 <_vfprintf_r+0x514>
   12ac0:	00600b93          	li	s7,6
   12ac4:	810fe06f          	j	10ad4 <_vfprintf_r+0x514>
   12ac8:	03513423          	sd	s5,40(sp)
   12acc:	08013903          	ld	s2,128(sp)
   12ad0:	000d8893          	mv	a7,s11
   12ad4:	08813023          	sd	s0,128(sp)
   12ad8:	00048813          	mv	a6,s1
   12adc:	0a013983          	ld	s3,160(sp)
   12ae0:	0a813b83          	ld	s7,168(sp)
   12ae4:	0b013303          	ld	t1,176(sp)
   12ae8:	09013403          	ld	s0,144(sp)
   12aec:	000c8b13          	mv	s6,s9
   12af0:	0b813a83          	ld	s5,184(sp)
   12af4:	0c013d83          	ld	s11,192(sp)
   12af8:	09813483          	ld	s1,152(sp)
   12afc:	ac1ff06f          	j	125bc <_vfprintf_r+0x1ffc>
   12b00:	00f72023          	sw	a5,0(a4)
   12b04:	00090d93          	mv	s11,s2
   12b08:	dc8fe06f          	j	110d0 <_vfprintf_r+0xb10>
   12b0c:	06700413          	li	s0,103
   12b10:	07813503          	ld	a0,120(sp)
   12b14:	02013703          	ld	a4,32(sp)
   12b18:	04013023          	sd	zero,64(sp)
   12b1c:	00054783          	lbu	a5,0(a0)
   12b20:	02013c23          	sd	zero,56(sp)
   12b24:	0ff00593          	li	a1,255
   12b28:	04b78063          	beq	a5,a1,12b68 <_vfprintf_r+0x25a8>
   12b2c:	0007869b          	sext.w	a3,a5
   12b30:	02e6dc63          	bge	a3,a4,12b68 <_vfprintf_r+0x25a8>
   12b34:	00154603          	lbu	a2,1(a0)
   12b38:	40d7073b          	subw	a4,a4,a3
   12b3c:	00060e63          	beqz	a2,12b58 <_vfprintf_r+0x2598>
   12b40:	03813783          	ld	a5,56(sp)
   12b44:	00150513          	addi	a0,a0,1
   12b48:	0017879b          	addiw	a5,a5,1
   12b4c:	02f13c23          	sd	a5,56(sp)
   12b50:	00060793          	mv	a5,a2
   12b54:	fd5ff06f          	j	12b28 <_vfprintf_r+0x2568>
   12b58:	04013683          	ld	a3,64(sp)
   12b5c:	0016869b          	addiw	a3,a3,1
   12b60:	04d13023          	sd	a3,64(sp)
   12b64:	fc5ff06f          	j	12b28 <_vfprintf_r+0x2568>
   12b68:	02e13023          	sd	a4,32(sp)
   12b6c:	03813783          	ld	a5,56(sp)
   12b70:	04013703          	ld	a4,64(sp)
   12b74:	08813583          	ld	a1,136(sp)
   12b78:	06a13c23          	sd	a0,120(sp)
   12b7c:	00e7853b          	addw	a0,a5,a4
   12b80:	08613023          	sd	t1,128(sp)
   12b84:	5f40e0ef          	jal	ra,21178 <__muldi3>
   12b88:	0195053b          	addw	a0,a0,s9
   12b8c:	00050c9b          	sext.w	s9,a0
   12b90:	fffcca13          	not	s4,s9
   12b94:	43fa5a13          	srai	s4,s4,0x3f
   12b98:	01457533          	and	a0,a0,s4
   12b9c:	00050a1b          	sext.w	s4,a0
   12ba0:	08013303          	ld	t1,128(sp)
   12ba4:	948fe06f          	j	10cec <_vfprintf_r+0x72c>
   12ba8:	000e8513          	mv	a0,t4
   12bac:	000c8593          	mv	a1,s9
   12bb0:	02613423          	sd	t1,40(sp)
   12bb4:	40c0e0ef          	jal	ra,20fc0 <__trunctfdf2>
   12bb8:	0e810593          	addi	a1,sp,232
   12bbc:	3d5050ef          	jal	ra,18790 <frexp>
   12bc0:	30c0e0ef          	jal	ra,20ecc <__extenddftf2>
   12bc4:	0000f797          	auipc	a5,0xf
   12bc8:	80c78793          	addi	a5,a5,-2036 # 213d0 <zeroes.4539+0x30>
   12bcc:	0087b683          	ld	a3,8(a5)
   12bd0:	00000613          	li	a2,0
   12bd4:	3100d0ef          	jal	ra,1fee4 <__multf3>
   12bd8:	00000613          	li	a2,0
   12bdc:	00000693          	li	a3,0
   12be0:	00050c93          	mv	s9,a0
   12be4:	02b13023          	sd	a1,32(sp)
   12be8:	0b00d0ef          	jal	ra,1fc98 <__eqtf2>
   12bec:	02013f03          	ld	t5,32(sp)
   12bf0:	02813303          	ld	t1,40(sp)
   12bf4:	00051663          	bnez	a0,12c00 <_vfprintf_r+0x2640>
   12bf8:	00100793          	li	a5,1
   12bfc:	0ef12423          	sw	a5,232(sp)
   12c00:	0000f797          	auipc	a5,0xf
   12c04:	80078793          	addi	a5,a5,-2048 # 21400 <zeroes.4539+0x60>
   12c08:	02f13023          	sd	a5,32(sp)
   12c0c:	895ff06f          	j	124a0 <_vfprintf_r+0x1ee0>
   12c10:	04813783          	ld	a5,72(sp)
   12c14:	06600413          	li	s0,102
   12c18:	00e78cbb          	addw	s9,a5,a4
   12c1c:	017c8cbb          	addw	s9,s9,s7
   12c20:	cb9ff06f          	j	128d8 <_vfprintf_r+0x2318>
   12c24:	0f210793          	addi	a5,sp,242
   12c28:	00069863          	bnez	a3,12c38 <_vfprintf_r+0x2678>
   12c2c:	03000793          	li	a5,48
   12c30:	0ef10923          	sb	a5,242(sp)
   12c34:	0f310793          	addi	a5,sp,243
   12c38:	21010713          	addi	a4,sp,528
   12c3c:	030a0a1b          	addiw	s4,s4,48
   12c40:	40e786b3          	sub	a3,a5,a4
   12c44:	01478023          	sb	s4,0(a5)
   12c48:	1216879b          	addiw	a5,a3,289
   12c4c:	06f13423          	sd	a5,104(sp)
   12c50:	84cfe06f          	j	10c9c <_vfprintf_r+0x6dc>
   12c54:	40ec87bb          	subw	a5,s9,a4
   12c58:	0017879b          	addiw	a5,a5,1
   12c5c:	00078c9b          	sext.w	s9,a5
   12c60:	fffcca13          	not	s4,s9
   12c64:	43fa5a13          	srai	s4,s4,0x3f
   12c68:	0147f7b3          	and	a5,a5,s4
   12c6c:	00078a1b          	sext.w	s4,a5
   12c70:	a7dff06f          	j	126ec <_vfprintf_r+0x212c>
   12c74:	04013703          	ld	a4,64(sp)
   12c78:	00177693          	andi	a3,a4,1
   12c7c:	00069463          	bnez	a3,12c84 <_vfprintf_r+0x26c4>
   12c80:	840fe06f          	j	10cc0 <_vfprintf_r+0x700>
   12c84:	834fe06f          	j	10cb8 <_vfprintf_r+0x6f8>
   12c88:	00030793          	mv	a5,t1
   12c8c:	824ff06f          	j	11cb0 <_vfprintf_r+0x16f0>
   12c90:	00079a63          	bnez	a5,12ca4 <_vfprintf_r+0x26e4>
   12c94:	00100a13          	li	s4,1
   12c98:	06600413          	li	s0,102
   12c9c:	00100c93          	li	s9,1
   12ca0:	a4dff06f          	j	126ec <_vfprintf_r+0x212c>
   12ca4:	04813783          	ld	a5,72(sp)
   12ca8:	06600413          	li	s0,102
   12cac:	0017879b          	addiw	a5,a5,1
   12cb0:	01778e3b          	addw	t3,a5,s7
   12cb4:	000e0c9b          	sext.w	s9,t3
   12cb8:	fffcca13          	not	s4,s9
   12cbc:	43fa5a13          	srai	s4,s4,0x3f
   12cc0:	014e7e33          	and	t3,t3,s4
   12cc4:	000e0a1b          	sext.w	s4,t3
   12cc8:	a25ff06f          	j	126ec <_vfprintf_r+0x212c>
   12ccc:	01013703          	ld	a4,16(sp)
   12cd0:	00072b83          	lw	s7,0(a4)
   12cd4:	00870713          	addi	a4,a4,8
   12cd8:	000bd463          	bgez	s7,12ce0 <_vfprintf_r+0x2720>
   12cdc:	fff00b93          	li	s7,-1
   12ce0:	00194403          	lbu	s0,1(s2)
   12ce4:	00e13823          	sd	a4,16(sp)
   12ce8:	00078913          	mv	s2,a5
   12cec:	a91fd06f          	j	1077c <_vfprintf_r+0x1bc>
   12cf0:	00013703          	ld	a4,0(sp)
   12cf4:	01075783          	lhu	a5,16(a4)
   12cf8:	0407e793          	ori	a5,a5,64
   12cfc:	00f71823          	sh	a5,16(a4)
   12d00:	b65fd06f          	j	10864 <_vfprintf_r+0x2a4>
   12d04:	000b8a13          	mv	s4,s7
   12d08:	014d8a33          	add	s4,s11,s4
   12d0c:	a51ff06f          	j	1275c <_vfprintf_r+0x219c>
   12d10:	00200793          	li	a5,2
   12d14:	06f13423          	sd	a5,104(sp)
   12d18:	f85fd06f          	j	10c9c <_vfprintf_r+0x6dc>

0000000000012d1c <vfprintf>:
   12d1c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   12d20:	00060693          	mv	a3,a2
   12d24:	00058613          	mv	a2,a1
   12d28:	00050593          	mv	a1,a0
   12d2c:	0007b503          	ld	a0,0(a5)
   12d30:	891fd06f          	j	105c0 <_vfprintf_r>

0000000000012d34 <__sbprintf>:
   12d34:	0105d783          	lhu	a5,16(a1)
   12d38:	0ac5ae03          	lw	t3,172(a1)
   12d3c:	0125d303          	lhu	t1,18(a1)
   12d40:	0305b883          	ld	a7,48(a1)
   12d44:	0405b803          	ld	a6,64(a1)
   12d48:	b3010113          	addi	sp,sp,-1232
   12d4c:	ffd7f793          	andi	a5,a5,-3
   12d50:	40000713          	li	a4,1024
   12d54:	4c813023          	sd	s0,1216(sp)
   12d58:	00f11823          	sh	a5,16(sp)
   12d5c:	00058413          	mv	s0,a1
   12d60:	0b010793          	addi	a5,sp,176
   12d64:	00010593          	mv	a1,sp
   12d68:	4a913c23          	sd	s1,1208(sp)
   12d6c:	4b213823          	sd	s2,1200(sp)
   12d70:	4c113423          	sd	ra,1224(sp)
   12d74:	00050913          	mv	s2,a0
   12d78:	0bc12623          	sw	t3,172(sp)
   12d7c:	00611923          	sh	t1,18(sp)
   12d80:	03113823          	sd	a7,48(sp)
   12d84:	05013023          	sd	a6,64(sp)
   12d88:	00f13023          	sd	a5,0(sp)
   12d8c:	00f13c23          	sd	a5,24(sp)
   12d90:	00e12623          	sw	a4,12(sp)
   12d94:	02e12023          	sw	a4,32(sp)
   12d98:	02012423          	sw	zero,40(sp)
   12d9c:	825fd0ef          	jal	ra,105c0 <_vfprintf_r>
   12da0:	00050493          	mv	s1,a0
   12da4:	02055c63          	bgez	a0,12ddc <__sbprintf+0xa8>
   12da8:	01015783          	lhu	a5,16(sp)
   12dac:	0407f793          	andi	a5,a5,64
   12db0:	00078863          	beqz	a5,12dc0 <__sbprintf+0x8c>
   12db4:	01045783          	lhu	a5,16(s0)
   12db8:	0407e793          	ori	a5,a5,64
   12dbc:	00f41823          	sh	a5,16(s0)
   12dc0:	4c813083          	ld	ra,1224(sp)
   12dc4:	4c013403          	ld	s0,1216(sp)
   12dc8:	00048513          	mv	a0,s1
   12dcc:	4b013903          	ld	s2,1200(sp)
   12dd0:	4b813483          	ld	s1,1208(sp)
   12dd4:	4d010113          	addi	sp,sp,1232
   12dd8:	00008067          	ret
   12ddc:	00010593          	mv	a1,sp
   12de0:	00090513          	mv	a0,s2
   12de4:	5a4000ef          	jal	ra,13388 <_fflush_r>
   12de8:	fc0500e3          	beqz	a0,12da8 <__sbprintf+0x74>
   12dec:	fff00493          	li	s1,-1
   12df0:	fb9ff06f          	j	12da8 <__sbprintf+0x74>

0000000000012df4 <__swsetup_r>:
   12df4:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   12df8:	0007b783          	ld	a5,0(a5)
   12dfc:	fe010113          	addi	sp,sp,-32
   12e00:	00813823          	sd	s0,16(sp)
   12e04:	00913423          	sd	s1,8(sp)
   12e08:	00113c23          	sd	ra,24(sp)
   12e0c:	00050493          	mv	s1,a0
   12e10:	00058413          	mv	s0,a1
   12e14:	00078663          	beqz	a5,12e20 <__swsetup_r+0x2c>
   12e18:	0507a703          	lw	a4,80(a5)
   12e1c:	08070663          	beqz	a4,12ea8 <__swsetup_r+0xb4>
   12e20:	01041703          	lh	a4,16(s0)
   12e24:	03071793          	slli	a5,a4,0x30
   12e28:	0307d793          	srli	a5,a5,0x30
   12e2c:	0087f693          	andi	a3,a5,8
   12e30:	08068a63          	beqz	a3,12ec4 <__swsetup_r+0xd0>
   12e34:	01843683          	ld	a3,24(s0)
   12e38:	0a068a63          	beqz	a3,12eec <__swsetup_r+0xf8>
   12e3c:	0017f713          	andi	a4,a5,1
   12e40:	02070863          	beqz	a4,12e70 <__swsetup_r+0x7c>
   12e44:	02042783          	lw	a5,32(s0)
   12e48:	00042623          	sw	zero,12(s0)
   12e4c:	00000513          	li	a0,0
   12e50:	40f007bb          	negw	a5,a5
   12e54:	02f42423          	sw	a5,40(s0)
   12e58:	02068a63          	beqz	a3,12e8c <__swsetup_r+0x98>
   12e5c:	01813083          	ld	ra,24(sp)
   12e60:	01013403          	ld	s0,16(sp)
   12e64:	00813483          	ld	s1,8(sp)
   12e68:	02010113          	addi	sp,sp,32
   12e6c:	00008067          	ret
   12e70:	0027f793          	andi	a5,a5,2
   12e74:	00000713          	li	a4,0
   12e78:	00079463          	bnez	a5,12e80 <__swsetup_r+0x8c>
   12e7c:	02042703          	lw	a4,32(s0)
   12e80:	00e42623          	sw	a4,12(s0)
   12e84:	00000513          	li	a0,0
   12e88:	fc069ae3          	bnez	a3,12e5c <__swsetup_r+0x68>
   12e8c:	01041783          	lh	a5,16(s0)
   12e90:	0807f713          	andi	a4,a5,128
   12e94:	fc0704e3          	beqz	a4,12e5c <__swsetup_r+0x68>
   12e98:	0407e793          	ori	a5,a5,64
   12e9c:	00f41823          	sh	a5,16(s0)
   12ea0:	fff00513          	li	a0,-1
   12ea4:	fb9ff06f          	j	12e5c <__swsetup_r+0x68>
   12ea8:	00078513          	mv	a0,a5
   12eac:	085000ef          	jal	ra,13730 <__sinit>
   12eb0:	01041703          	lh	a4,16(s0)
   12eb4:	03071793          	slli	a5,a4,0x30
   12eb8:	0307d793          	srli	a5,a5,0x30
   12ebc:	0087f693          	andi	a3,a5,8
   12ec0:	f6069ae3          	bnez	a3,12e34 <__swsetup_r+0x40>
   12ec4:	0107f693          	andi	a3,a5,16
   12ec8:	06068e63          	beqz	a3,12f44 <__swsetup_r+0x150>
   12ecc:	0047f793          	andi	a5,a5,4
   12ed0:	04079063          	bnez	a5,12f10 <__swsetup_r+0x11c>
   12ed4:	01843683          	ld	a3,24(s0)
   12ed8:	00876793          	ori	a5,a4,8
   12edc:	00f41823          	sh	a5,16(s0)
   12ee0:	03079793          	slli	a5,a5,0x30
   12ee4:	0307d793          	srli	a5,a5,0x30
   12ee8:	f4069ae3          	bnez	a3,12e3c <__swsetup_r+0x48>
   12eec:	2807f713          	andi	a4,a5,640
   12ef0:	20000613          	li	a2,512
   12ef4:	f4c704e3          	beq	a4,a2,12e3c <__swsetup_r+0x48>
   12ef8:	00040593          	mv	a1,s0
   12efc:	00048513          	mv	a0,s1
   12f00:	3e9030ef          	jal	ra,16ae8 <__smakebuf_r>
   12f04:	01045783          	lhu	a5,16(s0)
   12f08:	01843683          	ld	a3,24(s0)
   12f0c:	f31ff06f          	j	12e3c <__swsetup_r+0x48>
   12f10:	05843583          	ld	a1,88(s0)
   12f14:	00058e63          	beqz	a1,12f30 <__swsetup_r+0x13c>
   12f18:	07440793          	addi	a5,s0,116
   12f1c:	00f58863          	beq	a1,a5,12f2c <__swsetup_r+0x138>
   12f20:	00048513          	mv	a0,s1
   12f24:	18d000ef          	jal	ra,138b0 <_free_r>
   12f28:	01041703          	lh	a4,16(s0)
   12f2c:	04043c23          	sd	zero,88(s0)
   12f30:	01843683          	ld	a3,24(s0)
   12f34:	fdb77713          	andi	a4,a4,-37
   12f38:	00042423          	sw	zero,8(s0)
   12f3c:	00d43023          	sd	a3,0(s0)
   12f40:	f99ff06f          	j	12ed8 <__swsetup_r+0xe4>
   12f44:	00900793          	li	a5,9
   12f48:	00f4a023          	sw	a5,0(s1)
   12f4c:	04076713          	ori	a4,a4,64
   12f50:	00e41823          	sh	a4,16(s0)
   12f54:	fff00513          	li	a0,-1
   12f58:	f05ff06f          	j	12e5c <__swsetup_r+0x68>

0000000000012f5c <__register_exitproc>:
   12f5c:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   12f60:	0007b703          	ld	a4,0(a5)
   12f64:	1f873783          	ld	a5,504(a4)
   12f68:	06078063          	beqz	a5,12fc8 <__register_exitproc+0x6c>
   12f6c:	0087a703          	lw	a4,8(a5)
   12f70:	01f00813          	li	a6,31
   12f74:	08e84663          	blt	a6,a4,13000 <__register_exitproc+0xa4>
   12f78:	02050863          	beqz	a0,12fa8 <__register_exitproc+0x4c>
   12f7c:	00371813          	slli	a6,a4,0x3
   12f80:	01078833          	add	a6,a5,a6
   12f84:	10c83823          	sd	a2,272(a6)
   12f88:	3107a883          	lw	a7,784(a5)
   12f8c:	00100613          	li	a2,1
   12f90:	00e6163b          	sllw	a2,a2,a4
   12f94:	00c8e8b3          	or	a7,a7,a2
   12f98:	3117a823          	sw	a7,784(a5)
   12f9c:	20d83823          	sd	a3,528(a6)
   12fa0:	00200693          	li	a3,2
   12fa4:	02d50863          	beq	a0,a3,12fd4 <__register_exitproc+0x78>
   12fa8:	00270693          	addi	a3,a4,2
   12fac:	00369693          	slli	a3,a3,0x3
   12fb0:	0017071b          	addiw	a4,a4,1
   12fb4:	00e7a423          	sw	a4,8(a5)
   12fb8:	00d787b3          	add	a5,a5,a3
   12fbc:	00b7b023          	sd	a1,0(a5)
   12fc0:	00000513          	li	a0,0
   12fc4:	00008067          	ret
   12fc8:	20070793          	addi	a5,a4,512
   12fcc:	1ef73c23          	sd	a5,504(a4)
   12fd0:	f9dff06f          	j	12f6c <__register_exitproc+0x10>
   12fd4:	3147a683          	lw	a3,788(a5)
   12fd8:	00000513          	li	a0,0
   12fdc:	00c6e633          	or	a2,a3,a2
   12fe0:	00270693          	addi	a3,a4,2
   12fe4:	00369693          	slli	a3,a3,0x3
   12fe8:	0017071b          	addiw	a4,a4,1
   12fec:	30c7aa23          	sw	a2,788(a5)
   12ff0:	00e7a423          	sw	a4,8(a5)
   12ff4:	00d787b3          	add	a5,a5,a3
   12ff8:	00b7b023          	sd	a1,0(a5)
   12ffc:	00008067          	ret
   13000:	fff00513          	li	a0,-1
   13004:	00008067          	ret

0000000000013008 <__call_exitprocs>:
   13008:	fb010113          	addi	sp,sp,-80
   1300c:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13010:	01813023          	sd	s8,0(sp)
   13014:	0007bc03          	ld	s8,0(a5)
   13018:	03313423          	sd	s3,40(sp)
   1301c:	03413023          	sd	s4,32(sp)
   13020:	01513c23          	sd	s5,24(sp)
   13024:	01613823          	sd	s6,16(sp)
   13028:	04113423          	sd	ra,72(sp)
   1302c:	04813023          	sd	s0,64(sp)
   13030:	02913c23          	sd	s1,56(sp)
   13034:	03213823          	sd	s2,48(sp)
   13038:	01713423          	sd	s7,8(sp)
   1303c:	00050a93          	mv	s5,a0
   13040:	00058b13          	mv	s6,a1
   13044:	00100a13          	li	s4,1
   13048:	fff00993          	li	s3,-1
   1304c:	1f8c3903          	ld	s2,504(s8)
   13050:	02090863          	beqz	s2,13080 <__call_exitprocs+0x78>
   13054:	00892483          	lw	s1,8(s2)
   13058:	fff4841b          	addiw	s0,s1,-1
   1305c:	02044263          	bltz	s0,13080 <__call_exitprocs+0x78>
   13060:	00349493          	slli	s1,s1,0x3
   13064:	009904b3          	add	s1,s2,s1
   13068:	040b0463          	beqz	s6,130b0 <__call_exitprocs+0xa8>
   1306c:	2084b783          	ld	a5,520(s1)
   13070:	05678063          	beq	a5,s6,130b0 <__call_exitprocs+0xa8>
   13074:	fff4041b          	addiw	s0,s0,-1
   13078:	ff848493          	addi	s1,s1,-8
   1307c:	ff3416e3          	bne	s0,s3,13068 <__call_exitprocs+0x60>
   13080:	04813083          	ld	ra,72(sp)
   13084:	04013403          	ld	s0,64(sp)
   13088:	03813483          	ld	s1,56(sp)
   1308c:	03013903          	ld	s2,48(sp)
   13090:	02813983          	ld	s3,40(sp)
   13094:	02013a03          	ld	s4,32(sp)
   13098:	01813a83          	ld	s5,24(sp)
   1309c:	01013b03          	ld	s6,16(sp)
   130a0:	00813b83          	ld	s7,8(sp)
   130a4:	00013c03          	ld	s8,0(sp)
   130a8:	05010113          	addi	sp,sp,80
   130ac:	00008067          	ret
   130b0:	00892783          	lw	a5,8(s2)
   130b4:	0084b703          	ld	a4,8(s1)
   130b8:	fff7879b          	addiw	a5,a5,-1
   130bc:	04878e63          	beq	a5,s0,13118 <__call_exitprocs+0x110>
   130c0:	0004b423          	sd	zero,8(s1)
   130c4:	fa0708e3          	beqz	a4,13074 <__call_exitprocs+0x6c>
   130c8:	31092783          	lw	a5,784(s2)
   130cc:	008a16bb          	sllw	a3,s4,s0
   130d0:	00892b83          	lw	s7,8(s2)
   130d4:	00d7f7b3          	and	a5,a5,a3
   130d8:	0007879b          	sext.w	a5,a5
   130dc:	00079e63          	bnez	a5,130f8 <__call_exitprocs+0xf0>
   130e0:	000700e7          	jalr	a4
   130e4:	00892783          	lw	a5,8(s2)
   130e8:	f77792e3          	bne	a5,s7,1304c <__call_exitprocs+0x44>
   130ec:	1f8c3783          	ld	a5,504(s8)
   130f0:	f92782e3          	beq	a5,s2,13074 <__call_exitprocs+0x6c>
   130f4:	f59ff06f          	j	1304c <__call_exitprocs+0x44>
   130f8:	31492783          	lw	a5,788(s2)
   130fc:	1084b583          	ld	a1,264(s1)
   13100:	00d7f7b3          	and	a5,a5,a3
   13104:	0007879b          	sext.w	a5,a5
   13108:	00079c63          	bnez	a5,13120 <__call_exitprocs+0x118>
   1310c:	000a8513          	mv	a0,s5
   13110:	000700e7          	jalr	a4
   13114:	fd1ff06f          	j	130e4 <__call_exitprocs+0xdc>
   13118:	00892423          	sw	s0,8(s2)
   1311c:	fa9ff06f          	j	130c4 <__call_exitprocs+0xbc>
   13120:	00058513          	mv	a0,a1
   13124:	000700e7          	jalr	a4
   13128:	fbdff06f          	j	130e4 <__call_exitprocs+0xdc>

000000000001312c <__sflush_r>:
   1312c:	01059783          	lh	a5,16(a1)
   13130:	fd010113          	addi	sp,sp,-48
   13134:	02813023          	sd	s0,32(sp)
   13138:	03079713          	slli	a4,a5,0x30
   1313c:	03075713          	srli	a4,a4,0x30
   13140:	01313423          	sd	s3,8(sp)
   13144:	02113423          	sd	ra,40(sp)
   13148:	00913c23          	sd	s1,24(sp)
   1314c:	01213823          	sd	s2,16(sp)
   13150:	00877693          	andi	a3,a4,8
   13154:	00058413          	mv	s0,a1
   13158:	00050993          	mv	s3,a0
   1315c:	10069a63          	bnez	a3,13270 <__sflush_r+0x144>
   13160:	00001737          	lui	a4,0x1
   13164:	80070713          	addi	a4,a4,-2048 # 800 <main-0xf8b0>
   13168:	0085a683          	lw	a3,8(a1)
   1316c:	00e7e7b3          	or	a5,a5,a4
   13170:	00f59823          	sh	a5,16(a1)
   13174:	18d05063          	blez	a3,132f4 <__sflush_r+0x1c8>
   13178:	04843703          	ld	a4,72(s0)
   1317c:	0c070a63          	beqz	a4,13250 <__sflush_r+0x124>
   13180:	03079793          	slli	a5,a5,0x30
   13184:	0307d793          	srli	a5,a5,0x30
   13188:	0009a483          	lw	s1,0(s3)
   1318c:	03379693          	slli	a3,a5,0x33
   13190:	0009a023          	sw	zero,0(s3)
   13194:	03043583          	ld	a1,48(s0)
   13198:	1606c463          	bltz	a3,13300 <__sflush_r+0x1d4>
   1319c:	00000613          	li	a2,0
   131a0:	00100693          	li	a3,1
   131a4:	00098513          	mv	a0,s3
   131a8:	000700e7          	jalr	a4
   131ac:	fff00793          	li	a5,-1
   131b0:	00050613          	mv	a2,a0
   131b4:	18f50663          	beq	a0,a5,13340 <__sflush_r+0x214>
   131b8:	01045783          	lhu	a5,16(s0)
   131bc:	04843703          	ld	a4,72(s0)
   131c0:	03043583          	ld	a1,48(s0)
   131c4:	0047f793          	andi	a5,a5,4
   131c8:	00078e63          	beqz	a5,131e4 <__sflush_r+0xb8>
   131cc:	00842683          	lw	a3,8(s0)
   131d0:	05843783          	ld	a5,88(s0)
   131d4:	40d60633          	sub	a2,a2,a3
   131d8:	00078663          	beqz	a5,131e4 <__sflush_r+0xb8>
   131dc:	07042783          	lw	a5,112(s0)
   131e0:	40f60633          	sub	a2,a2,a5
   131e4:	00000693          	li	a3,0
   131e8:	00098513          	mv	a0,s3
   131ec:	000700e7          	jalr	a4
   131f0:	fff00793          	li	a5,-1
   131f4:	10f51a63          	bne	a0,a5,13308 <__sflush_r+0x1dc>
   131f8:	0009a703          	lw	a4,0(s3)
   131fc:	01041783          	lh	a5,16(s0)
   13200:	16070263          	beqz	a4,13364 <__sflush_r+0x238>
   13204:	01d00693          	li	a3,29
   13208:	00d70663          	beq	a4,a3,13214 <__sflush_r+0xe8>
   1320c:	01600693          	li	a3,22
   13210:	16d71463          	bne	a4,a3,13378 <__sflush_r+0x24c>
   13214:	01843683          	ld	a3,24(s0)
   13218:	fffff737          	lui	a4,0xfffff
   1321c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdc5f7>
   13220:	00e7f7b3          	and	a5,a5,a4
   13224:	00f41823          	sh	a5,16(s0)
   13228:	00042423          	sw	zero,8(s0)
   1322c:	00d43023          	sd	a3,0(s0)
   13230:	05843583          	ld	a1,88(s0)
   13234:	0099a023          	sw	s1,0(s3)
   13238:	00058c63          	beqz	a1,13250 <__sflush_r+0x124>
   1323c:	07440793          	addi	a5,s0,116
   13240:	00f58663          	beq	a1,a5,1324c <__sflush_r+0x120>
   13244:	00098513          	mv	a0,s3
   13248:	668000ef          	jal	ra,138b0 <_free_r>
   1324c:	04043c23          	sd	zero,88(s0)
   13250:	00000513          	li	a0,0
   13254:	02813083          	ld	ra,40(sp)
   13258:	02013403          	ld	s0,32(sp)
   1325c:	01813483          	ld	s1,24(sp)
   13260:	01013903          	ld	s2,16(sp)
   13264:	00813983          	ld	s3,8(sp)
   13268:	03010113          	addi	sp,sp,48
   1326c:	00008067          	ret
   13270:	0185b903          	ld	s2,24(a1)
   13274:	fc090ee3          	beqz	s2,13250 <__sflush_r+0x124>
   13278:	0005b483          	ld	s1,0(a1)
   1327c:	00377713          	andi	a4,a4,3
   13280:	0125b023          	sd	s2,0(a1)
   13284:	412484bb          	subw	s1,s1,s2
   13288:	00000793          	li	a5,0
   1328c:	00071463          	bnez	a4,13294 <__sflush_r+0x168>
   13290:	0205a783          	lw	a5,32(a1)
   13294:	00f42623          	sw	a5,12(s0)
   13298:	00904863          	bgtz	s1,132a8 <__sflush_r+0x17c>
   1329c:	fb5ff06f          	j	13250 <__sflush_r+0x124>
   132a0:	00a90933          	add	s2,s2,a0
   132a4:	fa9056e3          	blez	s1,13250 <__sflush_r+0x124>
   132a8:	04043783          	ld	a5,64(s0)
   132ac:	03043583          	ld	a1,48(s0)
   132b0:	00048693          	mv	a3,s1
   132b4:	00090613          	mv	a2,s2
   132b8:	00098513          	mv	a0,s3
   132bc:	000780e7          	jalr	a5
   132c0:	40a484bb          	subw	s1,s1,a0
   132c4:	fca04ee3          	bgtz	a0,132a0 <__sflush_r+0x174>
   132c8:	01045783          	lhu	a5,16(s0)
   132cc:	02813083          	ld	ra,40(sp)
   132d0:	01813483          	ld	s1,24(sp)
   132d4:	0407e793          	ori	a5,a5,64
   132d8:	00f41823          	sh	a5,16(s0)
   132dc:	02013403          	ld	s0,32(sp)
   132e0:	01013903          	ld	s2,16(sp)
   132e4:	00813983          	ld	s3,8(sp)
   132e8:	fff00513          	li	a0,-1
   132ec:	03010113          	addi	sp,sp,48
   132f0:	00008067          	ret
   132f4:	0705a703          	lw	a4,112(a1)
   132f8:	e8e040e3          	bgtz	a4,13178 <__sflush_r+0x4c>
   132fc:	f55ff06f          	j	13250 <__sflush_r+0x124>
   13300:	09043603          	ld	a2,144(s0)
   13304:	ec1ff06f          	j	131c4 <__sflush_r+0x98>
   13308:	01045783          	lhu	a5,16(s0)
   1330c:	fffff737          	lui	a4,0xfffff
   13310:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdc5f7>
   13314:	00e7f7b3          	and	a5,a5,a4
   13318:	01843683          	ld	a3,24(s0)
   1331c:	0107979b          	slliw	a5,a5,0x10
   13320:	4107d79b          	sraiw	a5,a5,0x10
   13324:	00f41823          	sh	a5,16(s0)
   13328:	00042423          	sw	zero,8(s0)
   1332c:	00d43023          	sd	a3,0(s0)
   13330:	03379713          	slli	a4,a5,0x33
   13334:	ee075ee3          	bgez	a4,13230 <__sflush_r+0x104>
   13338:	08a43823          	sd	a0,144(s0)
   1333c:	ef5ff06f          	j	13230 <__sflush_r+0x104>
   13340:	0009a783          	lw	a5,0(s3)
   13344:	e6078ae3          	beqz	a5,131b8 <__sflush_r+0x8c>
   13348:	01d00713          	li	a4,29
   1334c:	00e78663          	beq	a5,a4,13358 <__sflush_r+0x22c>
   13350:	01600713          	li	a4,22
   13354:	f6e79ae3          	bne	a5,a4,132c8 <__sflush_r+0x19c>
   13358:	0099a023          	sw	s1,0(s3)
   1335c:	00000513          	li	a0,0
   13360:	ef5ff06f          	j	13254 <__sflush_r+0x128>
   13364:	fffff737          	lui	a4,0xfffff
   13368:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdc5f7>
   1336c:	01843683          	ld	a3,24(s0)
   13370:	00e7f7b3          	and	a5,a5,a4
   13374:	fb1ff06f          	j	13324 <__sflush_r+0x1f8>
   13378:	0407e793          	ori	a5,a5,64
   1337c:	00f41823          	sh	a5,16(s0)
   13380:	fff00513          	li	a0,-1
   13384:	ed1ff06f          	j	13254 <__sflush_r+0x128>

0000000000013388 <_fflush_r>:
   13388:	fe010113          	addi	sp,sp,-32
   1338c:	00813823          	sd	s0,16(sp)
   13390:	00113c23          	sd	ra,24(sp)
   13394:	00050413          	mv	s0,a0
   13398:	00050663          	beqz	a0,133a4 <_fflush_r+0x1c>
   1339c:	05052783          	lw	a5,80(a0)
   133a0:	02078063          	beqz	a5,133c0 <_fflush_r+0x38>
   133a4:	01059783          	lh	a5,16(a1)
   133a8:	02079663          	bnez	a5,133d4 <_fflush_r+0x4c>
   133ac:	01813083          	ld	ra,24(sp)
   133b0:	01013403          	ld	s0,16(sp)
   133b4:	00000513          	li	a0,0
   133b8:	02010113          	addi	sp,sp,32
   133bc:	00008067          	ret
   133c0:	00b13423          	sd	a1,8(sp)
   133c4:	36c000ef          	jal	ra,13730 <__sinit>
   133c8:	00813583          	ld	a1,8(sp)
   133cc:	01059783          	lh	a5,16(a1)
   133d0:	fc078ee3          	beqz	a5,133ac <_fflush_r+0x24>
   133d4:	00040513          	mv	a0,s0
   133d8:	01013403          	ld	s0,16(sp)
   133dc:	01813083          	ld	ra,24(sp)
   133e0:	02010113          	addi	sp,sp,32
   133e4:	d49ff06f          	j	1312c <__sflush_r>

00000000000133e8 <fflush>:
   133e8:	00050593          	mv	a1,a0
   133ec:	00050863          	beqz	a0,133fc <fflush+0x14>
   133f0:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   133f4:	0007b503          	ld	a0,0(a5)
   133f8:	f91ff06f          	j	13388 <_fflush_r>
   133fc:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13400:	0007b503          	ld	a0,0(a5)
   13404:	00000597          	auipc	a1,0x0
   13408:	f8458593          	addi	a1,a1,-124 # 13388 <_fflush_r>
   1340c:	0c10006f          	j	13ccc <_fwalk_reent>

0000000000013410 <__fp_lock>:
   13410:	00000513          	li	a0,0
   13414:	00008067          	ret

0000000000013418 <_cleanup_r>:
   13418:	00009597          	auipc	a1,0x9
   1341c:	71058593          	addi	a1,a1,1808 # 1cb28 <_fclose_r>
   13420:	0ad0006f          	j	13ccc <_fwalk_reent>

0000000000013424 <__sinit.part.0>:
   13424:	fc010113          	addi	sp,sp,-64
   13428:	02113c23          	sd	ra,56(sp)
   1342c:	02813823          	sd	s0,48(sp)
   13430:	02913423          	sd	s1,40(sp)
   13434:	03213023          	sd	s2,32(sp)
   13438:	01313c23          	sd	s3,24(sp)
   1343c:	01413823          	sd	s4,16(sp)
   13440:	01513423          	sd	s5,8(sp)
   13444:	01613023          	sd	s6,0(sp)
   13448:	00853403          	ld	s0,8(a0)
   1344c:	00000717          	auipc	a4,0x0
   13450:	fcc70713          	addi	a4,a4,-52 # 13418 <_cleanup_r>
   13454:	04e53c23          	sd	a4,88(a0)
   13458:	53850793          	addi	a5,a0,1336
   1345c:	00300713          	li	a4,3
   13460:	52e52423          	sw	a4,1320(a0)
   13464:	52f53823          	sd	a5,1328(a0)
   13468:	52053023          	sd	zero,1312(a0)
   1346c:	00400793          	li	a5,4
   13470:	00050913          	mv	s2,a0
   13474:	00f42823          	sw	a5,16(s0)
   13478:	00800613          	li	a2,8
   1347c:	00000593          	li	a1,0
   13480:	0a042623          	sw	zero,172(s0)
   13484:	00043023          	sd	zero,0(s0)
   13488:	00043423          	sd	zero,8(s0)
   1348c:	00043c23          	sd	zero,24(s0)
   13490:	02042023          	sw	zero,32(s0)
   13494:	02042423          	sw	zero,40(s0)
   13498:	0a440513          	addi	a0,s0,164
   1349c:	fb1fc0ef          	jal	ra,1044c <memset>
   134a0:	01093483          	ld	s1,16(s2)
   134a4:	00005b17          	auipc	s6,0x5
   134a8:	498b0b13          	addi	s6,s6,1176 # 1893c <__sread>
   134ac:	00005a97          	auipc	s5,0x5
   134b0:	4f4a8a93          	addi	s5,s5,1268 # 189a0 <__swrite>
   134b4:	00005a17          	auipc	s4,0x5
   134b8:	574a0a13          	addi	s4,s4,1396 # 18a28 <__sseek>
   134bc:	00005997          	auipc	s3,0x5
   134c0:	5d498993          	addi	s3,s3,1492 # 18a90 <__sclose>
   134c4:	000107b7          	lui	a5,0x10
   134c8:	03643c23          	sd	s6,56(s0)
   134cc:	05543023          	sd	s5,64(s0)
   134d0:	05443423          	sd	s4,72(s0)
   134d4:	05343823          	sd	s3,80(s0)
   134d8:	02843823          	sd	s0,48(s0)
   134dc:	00978793          	addi	a5,a5,9 # 10009 <main-0xa7>
   134e0:	00f4a823          	sw	a5,16(s1)
   134e4:	00800613          	li	a2,8
   134e8:	00000593          	li	a1,0
   134ec:	0a04a623          	sw	zero,172(s1)
   134f0:	0004b023          	sd	zero,0(s1)
   134f4:	0004b423          	sd	zero,8(s1)
   134f8:	0004bc23          	sd	zero,24(s1)
   134fc:	0204a023          	sw	zero,32(s1)
   13500:	0204a423          	sw	zero,40(s1)
   13504:	0a448513          	addi	a0,s1,164
   13508:	f45fc0ef          	jal	ra,1044c <memset>
   1350c:	01893403          	ld	s0,24(s2)
   13510:	000207b7          	lui	a5,0x20
   13514:	0364bc23          	sd	s6,56(s1)
   13518:	0554b023          	sd	s5,64(s1)
   1351c:	0544b423          	sd	s4,72(s1)
   13520:	0534b823          	sd	s3,80(s1)
   13524:	0294b823          	sd	s1,48(s1)
   13528:	01278793          	addi	a5,a5,18 # 20012 <__multf3+0x12e>
   1352c:	00f42823          	sw	a5,16(s0)
   13530:	0a042623          	sw	zero,172(s0)
   13534:	00043023          	sd	zero,0(s0)
   13538:	00043423          	sd	zero,8(s0)
   1353c:	00043c23          	sd	zero,24(s0)
   13540:	02042023          	sw	zero,32(s0)
   13544:	02042423          	sw	zero,40(s0)
   13548:	0a440513          	addi	a0,s0,164
   1354c:	00800613          	li	a2,8
   13550:	00000593          	li	a1,0
   13554:	ef9fc0ef          	jal	ra,1044c <memset>
   13558:	03813083          	ld	ra,56(sp)
   1355c:	03643c23          	sd	s6,56(s0)
   13560:	05543023          	sd	s5,64(s0)
   13564:	05443423          	sd	s4,72(s0)
   13568:	05343823          	sd	s3,80(s0)
   1356c:	02843823          	sd	s0,48(s0)
   13570:	03013403          	ld	s0,48(sp)
   13574:	00100793          	li	a5,1
   13578:	04f92823          	sw	a5,80(s2)
   1357c:	02813483          	ld	s1,40(sp)
   13580:	02013903          	ld	s2,32(sp)
   13584:	01813983          	ld	s3,24(sp)
   13588:	01013a03          	ld	s4,16(sp)
   1358c:	00813a83          	ld	s5,8(sp)
   13590:	00013b03          	ld	s6,0(sp)
   13594:	04010113          	addi	sp,sp,64
   13598:	00008067          	ret

000000000001359c <__fp_unlock>:
   1359c:	00000513          	li	a0,0
   135a0:	00008067          	ret

00000000000135a4 <__sfmoreglue>:
   135a4:	fe010113          	addi	sp,sp,-32
   135a8:	fff5861b          	addiw	a2,a1,-1
   135ac:	00813823          	sd	s0,16(sp)
   135b0:	00161413          	slli	s0,a2,0x1
   135b4:	00c40433          	add	s0,s0,a2
   135b8:	00241413          	slli	s0,s0,0x2
   135bc:	40c40433          	sub	s0,s0,a2
   135c0:	00441413          	slli	s0,s0,0x4
   135c4:	01213023          	sd	s2,0(sp)
   135c8:	00058913          	mv	s2,a1
   135cc:	0c840593          	addi	a1,s0,200
   135d0:	00913423          	sd	s1,8(sp)
   135d4:	00113c23          	sd	ra,24(sp)
   135d8:	630030ef          	jal	ra,16c08 <_malloc_r>
   135dc:	00050493          	mv	s1,a0
   135e0:	02050063          	beqz	a0,13600 <__sfmoreglue+0x5c>
   135e4:	01850513          	addi	a0,a0,24
   135e8:	0004b023          	sd	zero,0(s1)
   135ec:	0124a423          	sw	s2,8(s1)
   135f0:	00a4b823          	sd	a0,16(s1)
   135f4:	0b040613          	addi	a2,s0,176
   135f8:	00000593          	li	a1,0
   135fc:	e51fc0ef          	jal	ra,1044c <memset>
   13600:	01813083          	ld	ra,24(sp)
   13604:	01013403          	ld	s0,16(sp)
   13608:	00048513          	mv	a0,s1
   1360c:	00013903          	ld	s2,0(sp)
   13610:	00813483          	ld	s1,8(sp)
   13614:	02010113          	addi	sp,sp,32
   13618:	00008067          	ret

000000000001361c <__sfp>:
   1361c:	fd010113          	addi	sp,sp,-48
   13620:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13624:	01213823          	sd	s2,16(sp)
   13628:	0007b903          	ld	s2,0(a5)
   1362c:	01313423          	sd	s3,8(sp)
   13630:	02113423          	sd	ra,40(sp)
   13634:	05092783          	lw	a5,80(s2)
   13638:	02813023          	sd	s0,32(sp)
   1363c:	00913c23          	sd	s1,24(sp)
   13640:	00050993          	mv	s3,a0
   13644:	0a078463          	beqz	a5,136ec <__sfp+0xd0>
   13648:	52090913          	addi	s2,s2,1312
   1364c:	fff00493          	li	s1,-1
   13650:	00892783          	lw	a5,8(s2)
   13654:	01093403          	ld	s0,16(s2)
   13658:	fff7879b          	addiw	a5,a5,-1
   1365c:	0007da63          	bgez	a5,13670 <__sfp+0x54>
   13660:	07c0006f          	j	136dc <__sfp+0xc0>
   13664:	fff7879b          	addiw	a5,a5,-1
   13668:	0b040413          	addi	s0,s0,176
   1366c:	06978863          	beq	a5,s1,136dc <__sfp+0xc0>
   13670:	01041703          	lh	a4,16(s0)
   13674:	fe0718e3          	bnez	a4,13664 <__sfp+0x48>
   13678:	ffff07b7          	lui	a5,0xffff0
   1367c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffccdf9>
   13680:	0a042623          	sw	zero,172(s0)
   13684:	00043023          	sd	zero,0(s0)
   13688:	00043423          	sd	zero,8(s0)
   1368c:	00f42823          	sw	a5,16(s0)
   13690:	00043c23          	sd	zero,24(s0)
   13694:	02042023          	sw	zero,32(s0)
   13698:	02042423          	sw	zero,40(s0)
   1369c:	00800613          	li	a2,8
   136a0:	00000593          	li	a1,0
   136a4:	0a440513          	addi	a0,s0,164
   136a8:	da5fc0ef          	jal	ra,1044c <memset>
   136ac:	04043c23          	sd	zero,88(s0)
   136b0:	06042023          	sw	zero,96(s0)
   136b4:	06043c23          	sd	zero,120(s0)
   136b8:	08042023          	sw	zero,128(s0)
   136bc:	00040513          	mv	a0,s0
   136c0:	02813083          	ld	ra,40(sp)
   136c4:	02013403          	ld	s0,32(sp)
   136c8:	01813483          	ld	s1,24(sp)
   136cc:	01013903          	ld	s2,16(sp)
   136d0:	00813983          	ld	s3,8(sp)
   136d4:	03010113          	addi	sp,sp,48
   136d8:	00008067          	ret
   136dc:	00093403          	ld	s0,0(s2)
   136e0:	00040c63          	beqz	s0,136f8 <__sfp+0xdc>
   136e4:	00040913          	mv	s2,s0
   136e8:	f69ff06f          	j	13650 <__sfp+0x34>
   136ec:	00090513          	mv	a0,s2
   136f0:	d35ff0ef          	jal	ra,13424 <__sinit.part.0>
   136f4:	f55ff06f          	j	13648 <__sfp+0x2c>
   136f8:	00400593          	li	a1,4
   136fc:	00098513          	mv	a0,s3
   13700:	ea5ff0ef          	jal	ra,135a4 <__sfmoreglue>
   13704:	00a93023          	sd	a0,0(s2)
   13708:	00050413          	mv	s0,a0
   1370c:	fc051ce3          	bnez	a0,136e4 <__sfp+0xc8>
   13710:	00c00793          	li	a5,12
   13714:	00f9a023          	sw	a5,0(s3)
   13718:	fa5ff06f          	j	136bc <__sfp+0xa0>

000000000001371c <_cleanup>:
   1371c:	74818793          	addi	a5,gp,1864 # 23150 <_global_impure_ptr>
   13720:	0007b503          	ld	a0,0(a5)
   13724:	00009597          	auipc	a1,0x9
   13728:	40458593          	addi	a1,a1,1028 # 1cb28 <_fclose_r>
   1372c:	5a00006f          	j	13ccc <_fwalk_reent>

0000000000013730 <__sinit>:
   13730:	05052783          	lw	a5,80(a0)
   13734:	00078463          	beqz	a5,1373c <__sinit+0xc>
   13738:	00008067          	ret
   1373c:	ce9ff06f          	j	13424 <__sinit.part.0>

0000000000013740 <__sfp_lock_acquire>:
   13740:	00008067          	ret

0000000000013744 <__sfp_lock_release>:
   13744:	00008067          	ret

0000000000013748 <__sinit_lock_acquire>:
   13748:	00008067          	ret

000000000001374c <__sinit_lock_release>:
   1374c:	00008067          	ret

0000000000013750 <__fp_lock_all>:
   13750:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   13754:	0007b503          	ld	a0,0(a5)
   13758:	00000597          	auipc	a1,0x0
   1375c:	cb858593          	addi	a1,a1,-840 # 13410 <__fp_lock>
   13760:	4980006f          	j	13bf8 <_fwalk>

0000000000013764 <__fp_unlock_all>:
   13764:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   13768:	0007b503          	ld	a0,0(a5)
   1376c:	00000597          	auipc	a1,0x0
   13770:	e3058593          	addi	a1,a1,-464 # 1359c <__fp_unlock>
   13774:	4840006f          	j	13bf8 <_fwalk>

0000000000013778 <_malloc_trim_r>:
   13778:	fd010113          	addi	sp,sp,-48
   1377c:	02813023          	sd	s0,32(sp)
   13780:	00913c23          	sd	s1,24(sp)
   13784:	01213823          	sd	s2,16(sp)
   13788:	01313423          	sd	s3,8(sp)
   1378c:	00058413          	mv	s0,a1
   13790:	02113423          	sd	ra,40(sp)
   13794:	0000f997          	auipc	s3,0xf
   13798:	17c98993          	addi	s3,s3,380 # 22910 <__malloc_av_>
   1379c:	00050913          	mv	s2,a0
   137a0:	625030ef          	jal	ra,175c4 <__malloc_lock>
   137a4:	0109b683          	ld	a3,16(s3)
   137a8:	00001737          	lui	a4,0x1
   137ac:	fdf70793          	addi	a5,a4,-33 # fdf <main-0xf0d1>
   137b0:	0086b483          	ld	s1,8(a3)
   137b4:	40878433          	sub	s0,a5,s0
   137b8:	ffc4f493          	andi	s1,s1,-4
   137bc:	00940433          	add	s0,s0,s1
   137c0:	00c45413          	srli	s0,s0,0xc
   137c4:	fff40413          	addi	s0,s0,-1
   137c8:	00c41413          	slli	s0,s0,0xc
   137cc:	00e44e63          	blt	s0,a4,137e8 <_malloc_trim_r+0x70>
   137d0:	00000593          	li	a1,0
   137d4:	00090513          	mv	a0,s2
   137d8:	75d040ef          	jal	ra,18734 <_sbrk_r>
   137dc:	0109b783          	ld	a5,16(s3)
   137e0:	009787b3          	add	a5,a5,s1
   137e4:	02f50663          	beq	a0,a5,13810 <_malloc_trim_r+0x98>
   137e8:	00090513          	mv	a0,s2
   137ec:	5dd030ef          	jal	ra,175c8 <__malloc_unlock>
   137f0:	02813083          	ld	ra,40(sp)
   137f4:	02013403          	ld	s0,32(sp)
   137f8:	01813483          	ld	s1,24(sp)
   137fc:	01013903          	ld	s2,16(sp)
   13800:	00813983          	ld	s3,8(sp)
   13804:	00000513          	li	a0,0
   13808:	03010113          	addi	sp,sp,48
   1380c:	00008067          	ret
   13810:	408005b3          	neg	a1,s0
   13814:	00090513          	mv	a0,s2
   13818:	71d040ef          	jal	ra,18734 <_sbrk_r>
   1381c:	fff00793          	li	a5,-1
   13820:	04f50a63          	beq	a0,a5,13874 <_malloc_trim_r+0xfc>
   13824:	00010797          	auipc	a5,0x10
   13828:	9b478793          	addi	a5,a5,-1612 # 231d8 <__malloc_current_mallinfo>
   1382c:	0007a783          	lw	a5,0(a5)
   13830:	0109b703          	ld	a4,16(s3)
   13834:	408484b3          	sub	s1,s1,s0
   13838:	0014e493          	ori	s1,s1,1
   1383c:	4087843b          	subw	s0,a5,s0
   13840:	00090513          	mv	a0,s2
   13844:	00973423          	sd	s1,8(a4)
   13848:	00010797          	auipc	a5,0x10
   1384c:	9887a823          	sw	s0,-1648(a5) # 231d8 <__malloc_current_mallinfo>
   13850:	579030ef          	jal	ra,175c8 <__malloc_unlock>
   13854:	02813083          	ld	ra,40(sp)
   13858:	02013403          	ld	s0,32(sp)
   1385c:	01813483          	ld	s1,24(sp)
   13860:	01013903          	ld	s2,16(sp)
   13864:	00813983          	ld	s3,8(sp)
   13868:	00100513          	li	a0,1
   1386c:	03010113          	addi	sp,sp,48
   13870:	00008067          	ret
   13874:	00000593          	li	a1,0
   13878:	00090513          	mv	a0,s2
   1387c:	6b9040ef          	jal	ra,18734 <_sbrk_r>
   13880:	0109b703          	ld	a4,16(s3)
   13884:	01f00693          	li	a3,31
   13888:	40e507b3          	sub	a5,a0,a4
   1388c:	f4f6dee3          	bge	a3,a5,137e8 <_malloc_trim_r+0x70>
   13890:	76018693          	addi	a3,gp,1888 # 23168 <__malloc_sbrk_base>
   13894:	0006b683          	ld	a3,0(a3)
   13898:	0017e793          	ori	a5,a5,1
   1389c:	00f73423          	sd	a5,8(a4)
   138a0:	40d50533          	sub	a0,a0,a3
   138a4:	00010797          	auipc	a5,0x10
   138a8:	92a7aa23          	sw	a0,-1740(a5) # 231d8 <__malloc_current_mallinfo>
   138ac:	f3dff06f          	j	137e8 <_malloc_trim_r+0x70>

00000000000138b0 <_free_r>:
   138b0:	14058263          	beqz	a1,139f4 <_free_r+0x144>
   138b4:	fe010113          	addi	sp,sp,-32
   138b8:	00813823          	sd	s0,16(sp)
   138bc:	00913423          	sd	s1,8(sp)
   138c0:	00058413          	mv	s0,a1
   138c4:	00050493          	mv	s1,a0
   138c8:	00113c23          	sd	ra,24(sp)
   138cc:	4f9030ef          	jal	ra,175c4 <__malloc_lock>
   138d0:	ff843583          	ld	a1,-8(s0)
   138d4:	ff040713          	addi	a4,s0,-16
   138d8:	0000f517          	auipc	a0,0xf
   138dc:	03850513          	addi	a0,a0,56 # 22910 <__malloc_av_>
   138e0:	ffe5f793          	andi	a5,a1,-2
   138e4:	00f70633          	add	a2,a4,a5
   138e8:	00863683          	ld	a3,8(a2)
   138ec:	01053803          	ld	a6,16(a0)
   138f0:	ffc6f693          	andi	a3,a3,-4
   138f4:	1ac80c63          	beq	a6,a2,13aac <_free_r+0x1fc>
   138f8:	00d63423          	sd	a3,8(a2)
   138fc:	0015f593          	andi	a1,a1,1
   13900:	00d60833          	add	a6,a2,a3
   13904:	0a059863          	bnez	a1,139b4 <_free_r+0x104>
   13908:	ff043303          	ld	t1,-16(s0)
   1390c:	00883583          	ld	a1,8(a6)
   13910:	0000f897          	auipc	a7,0xf
   13914:	01088893          	addi	a7,a7,16 # 22920 <__malloc_av_+0x10>
   13918:	40670733          	sub	a4,a4,t1
   1391c:	01073803          	ld	a6,16(a4)
   13920:	006787b3          	add	a5,a5,t1
   13924:	0015f593          	andi	a1,a1,1
   13928:	15180c63          	beq	a6,a7,13a80 <_free_r+0x1d0>
   1392c:	01873303          	ld	t1,24(a4)
   13930:	00683c23          	sd	t1,24(a6)
   13934:	01033823          	sd	a6,16(t1)
   13938:	1e058c63          	beqz	a1,13b30 <_free_r+0x280>
   1393c:	0017e693          	ori	a3,a5,1
   13940:	00d73423          	sd	a3,8(a4)
   13944:	00f63023          	sd	a5,0(a2)
   13948:	1ff00693          	li	a3,511
   1394c:	0cf6e063          	bltu	a3,a5,13a0c <_free_r+0x15c>
   13950:	0037d793          	srli	a5,a5,0x3
   13954:	0007879b          	sext.w	a5,a5
   13958:	0017869b          	addiw	a3,a5,1
   1395c:	0016969b          	slliw	a3,a3,0x1
   13960:	00369693          	slli	a3,a3,0x3
   13964:	00853583          	ld	a1,8(a0)
   13968:	00d50533          	add	a0,a0,a3
   1396c:	00053603          	ld	a2,0(a0)
   13970:	00100693          	li	a3,1
   13974:	4027d79b          	sraiw	a5,a5,0x2
   13978:	00f697b3          	sll	a5,a3,a5
   1397c:	00b7e7b3          	or	a5,a5,a1
   13980:	ff050693          	addi	a3,a0,-16
   13984:	00d73c23          	sd	a3,24(a4)
   13988:	00c73823          	sd	a2,16(a4)
   1398c:	0000f697          	auipc	a3,0xf
   13990:	f8f6b623          	sd	a5,-116(a3) # 22918 <__malloc_av_+0x8>
   13994:	00e53023          	sd	a4,0(a0)
   13998:	00e63c23          	sd	a4,24(a2)
   1399c:	01013403          	ld	s0,16(sp)
   139a0:	01813083          	ld	ra,24(sp)
   139a4:	00048513          	mv	a0,s1
   139a8:	00813483          	ld	s1,8(sp)
   139ac:	02010113          	addi	sp,sp,32
   139b0:	4190306f          	j	175c8 <__malloc_unlock>
   139b4:	00883583          	ld	a1,8(a6)
   139b8:	0015f593          	andi	a1,a1,1
   139bc:	02059e63          	bnez	a1,139f8 <_free_r+0x148>
   139c0:	00d787b3          	add	a5,a5,a3
   139c4:	0000f897          	auipc	a7,0xf
   139c8:	f5c88893          	addi	a7,a7,-164 # 22920 <__malloc_av_+0x10>
   139cc:	01063683          	ld	a3,16(a2)
   139d0:	0017e813          	ori	a6,a5,1
   139d4:	00f705b3          	add	a1,a4,a5
   139d8:	17168c63          	beq	a3,a7,13b50 <_free_r+0x2a0>
   139dc:	01863603          	ld	a2,24(a2)
   139e0:	00c6bc23          	sd	a2,24(a3)
   139e4:	00d63823          	sd	a3,16(a2)
   139e8:	01073423          	sd	a6,8(a4)
   139ec:	00f5b023          	sd	a5,0(a1)
   139f0:	f59ff06f          	j	13948 <_free_r+0x98>
   139f4:	00008067          	ret
   139f8:	0017e693          	ori	a3,a5,1
   139fc:	fed43c23          	sd	a3,-8(s0)
   13a00:	00f63023          	sd	a5,0(a2)
   13a04:	1ff00693          	li	a3,511
   13a08:	f4f6f4e3          	bgeu	a3,a5,13950 <_free_r+0xa0>
   13a0c:	0097d693          	srli	a3,a5,0x9
   13a10:	00400613          	li	a2,4
   13a14:	0ed66863          	bltu	a2,a3,13b04 <_free_r+0x254>
   13a18:	0067d693          	srli	a3,a5,0x6
   13a1c:	0006869b          	sext.w	a3,a3
   13a20:	0396859b          	addiw	a1,a3,57
   13a24:	0015959b          	slliw	a1,a1,0x1
   13a28:	0386861b          	addiw	a2,a3,56
   13a2c:	00359593          	slli	a1,a1,0x3
   13a30:	00b505b3          	add	a1,a0,a1
   13a34:	0005b683          	ld	a3,0(a1)
   13a38:	ff058593          	addi	a1,a1,-16
   13a3c:	12d58c63          	beq	a1,a3,13b74 <_free_r+0x2c4>
   13a40:	0086b603          	ld	a2,8(a3)
   13a44:	ffc67613          	andi	a2,a2,-4
   13a48:	00c7f663          	bgeu	a5,a2,13a54 <_free_r+0x1a4>
   13a4c:	0106b683          	ld	a3,16(a3)
   13a50:	fed598e3          	bne	a1,a3,13a40 <_free_r+0x190>
   13a54:	0186b583          	ld	a1,24(a3)
   13a58:	00b73c23          	sd	a1,24(a4)
   13a5c:	00d73823          	sd	a3,16(a4)
   13a60:	01013403          	ld	s0,16(sp)
   13a64:	00e5b823          	sd	a4,16(a1)
   13a68:	01813083          	ld	ra,24(sp)
   13a6c:	00048513          	mv	a0,s1
   13a70:	00813483          	ld	s1,8(sp)
   13a74:	00e6bc23          	sd	a4,24(a3)
   13a78:	02010113          	addi	sp,sp,32
   13a7c:	34d0306f          	j	175c8 <__malloc_unlock>
   13a80:	16059463          	bnez	a1,13be8 <_free_r+0x338>
   13a84:	01063583          	ld	a1,16(a2)
   13a88:	01863603          	ld	a2,24(a2)
   13a8c:	00f687b3          	add	a5,a3,a5
   13a90:	0017e693          	ori	a3,a5,1
   13a94:	00c5bc23          	sd	a2,24(a1)
   13a98:	00b63823          	sd	a1,16(a2)
   13a9c:	00d73423          	sd	a3,8(a4)
   13aa0:	00f70733          	add	a4,a4,a5
   13aa4:	00f73023          	sd	a5,0(a4)
   13aa8:	ef5ff06f          	j	1399c <_free_r+0xec>
   13aac:	0015f593          	andi	a1,a1,1
   13ab0:	00d787b3          	add	a5,a5,a3
   13ab4:	02059063          	bnez	a1,13ad4 <_free_r+0x224>
   13ab8:	ff043583          	ld	a1,-16(s0)
   13abc:	40b70733          	sub	a4,a4,a1
   13ac0:	01873683          	ld	a3,24(a4)
   13ac4:	01073603          	ld	a2,16(a4)
   13ac8:	00b787b3          	add	a5,a5,a1
   13acc:	00d63c23          	sd	a3,24(a2)
   13ad0:	00c6b823          	sd	a2,16(a3)
   13ad4:	76818693          	addi	a3,gp,1896 # 23170 <__malloc_trim_threshold>
   13ad8:	0017e613          	ori	a2,a5,1
   13adc:	0006b683          	ld	a3,0(a3)
   13ae0:	00c73423          	sd	a2,8(a4)
   13ae4:	0000f617          	auipc	a2,0xf
   13ae8:	e2e63e23          	sd	a4,-452(a2) # 22920 <__malloc_av_+0x10>
   13aec:	ead7e8e3          	bltu	a5,a3,1399c <_free_r+0xec>
   13af0:	78818793          	addi	a5,gp,1928 # 23190 <__malloc_top_pad>
   13af4:	0007b583          	ld	a1,0(a5)
   13af8:	00048513          	mv	a0,s1
   13afc:	c7dff0ef          	jal	ra,13778 <_malloc_trim_r>
   13b00:	e9dff06f          	j	1399c <_free_r+0xec>
   13b04:	01400613          	li	a2,20
   13b08:	02d67863          	bgeu	a2,a3,13b38 <_free_r+0x288>
   13b0c:	05400613          	li	a2,84
   13b10:	08d66263          	bltu	a2,a3,13b94 <_free_r+0x2e4>
   13b14:	00c7d693          	srli	a3,a5,0xc
   13b18:	0006869b          	sext.w	a3,a3
   13b1c:	06f6859b          	addiw	a1,a3,111
   13b20:	0015959b          	slliw	a1,a1,0x1
   13b24:	06e6861b          	addiw	a2,a3,110
   13b28:	00359593          	slli	a1,a1,0x3
   13b2c:	f05ff06f          	j	13a30 <_free_r+0x180>
   13b30:	00d787b3          	add	a5,a5,a3
   13b34:	e99ff06f          	j	139cc <_free_r+0x11c>
   13b38:	0006869b          	sext.w	a3,a3
   13b3c:	05c6859b          	addiw	a1,a3,92
   13b40:	0015959b          	slliw	a1,a1,0x1
   13b44:	05b6861b          	addiw	a2,a3,91
   13b48:	00359593          	slli	a1,a1,0x3
   13b4c:	ee5ff06f          	j	13a30 <_free_r+0x180>
   13b50:	0000f697          	auipc	a3,0xf
   13b54:	dee6b423          	sd	a4,-536(a3) # 22938 <__malloc_av_+0x28>
   13b58:	0000f697          	auipc	a3,0xf
   13b5c:	dce6bc23          	sd	a4,-552(a3) # 22930 <__malloc_av_+0x20>
   13b60:	01173c23          	sd	a7,24(a4)
   13b64:	01173823          	sd	a7,16(a4)
   13b68:	01073423          	sd	a6,8(a4)
   13b6c:	00f5b023          	sd	a5,0(a1)
   13b70:	e2dff06f          	j	1399c <_free_r+0xec>
   13b74:	00853503          	ld	a0,8(a0)
   13b78:	00100793          	li	a5,1
   13b7c:	4026561b          	sraiw	a2,a2,0x2
   13b80:	00c79633          	sll	a2,a5,a2
   13b84:	00a66633          	or	a2,a2,a0
   13b88:	0000f797          	auipc	a5,0xf
   13b8c:	d8c7b823          	sd	a2,-624(a5) # 22918 <__malloc_av_+0x8>
   13b90:	ec9ff06f          	j	13a58 <_free_r+0x1a8>
   13b94:	15400613          	li	a2,340
   13b98:	02d66063          	bltu	a2,a3,13bb8 <_free_r+0x308>
   13b9c:	00f7d693          	srli	a3,a5,0xf
   13ba0:	0006869b          	sext.w	a3,a3
   13ba4:	0786859b          	addiw	a1,a3,120
   13ba8:	0015959b          	slliw	a1,a1,0x1
   13bac:	0776861b          	addiw	a2,a3,119
   13bb0:	00359593          	slli	a1,a1,0x3
   13bb4:	e7dff06f          	j	13a30 <_free_r+0x180>
   13bb8:	55400613          	li	a2,1364
   13bbc:	02d66063          	bltu	a2,a3,13bdc <_free_r+0x32c>
   13bc0:	0127d693          	srli	a3,a5,0x12
   13bc4:	0006869b          	sext.w	a3,a3
   13bc8:	07d6859b          	addiw	a1,a3,125
   13bcc:	0015959b          	slliw	a1,a1,0x1
   13bd0:	07c6861b          	addiw	a2,a3,124
   13bd4:	00359593          	slli	a1,a1,0x3
   13bd8:	e59ff06f          	j	13a30 <_free_r+0x180>
   13bdc:	7f000593          	li	a1,2032
   13be0:	07e00613          	li	a2,126
   13be4:	e4dff06f          	j	13a30 <_free_r+0x180>
   13be8:	0017e693          	ori	a3,a5,1
   13bec:	00d73423          	sd	a3,8(a4)
   13bf0:	00f63023          	sd	a5,0(a2)
   13bf4:	da9ff06f          	j	1399c <_free_r+0xec>

0000000000013bf8 <_fwalk>:
   13bf8:	fc010113          	addi	sp,sp,-64
   13bfc:	01313c23          	sd	s3,24(sp)
   13c00:	02113c23          	sd	ra,56(sp)
   13c04:	02813823          	sd	s0,48(sp)
   13c08:	02913423          	sd	s1,40(sp)
   13c0c:	03213023          	sd	s2,32(sp)
   13c10:	01413823          	sd	s4,16(sp)
   13c14:	01513423          	sd	s5,8(sp)
   13c18:	01613023          	sd	s6,0(sp)
   13c1c:	52050993          	addi	s3,a0,1312
   13c20:	0a098263          	beqz	s3,13cc4 <_fwalk+0xcc>
   13c24:	00058a93          	mv	s5,a1
   13c28:	00000913          	li	s2,0
   13c2c:	00100b13          	li	s6,1
   13c30:	fff00a13          	li	s4,-1
   13c34:	0089a783          	lw	a5,8(s3)
   13c38:	0109b403          	ld	s0,16(s3)
   13c3c:	04f05a63          	blez	a5,13c90 <_fwalk+0x98>
   13c40:	fff7879b          	addiw	a5,a5,-1
   13c44:	02079493          	slli	s1,a5,0x20
   13c48:	0204d493          	srli	s1,s1,0x20
   13c4c:	00148793          	addi	a5,s1,1
   13c50:	00179493          	slli	s1,a5,0x1
   13c54:	00f484b3          	add	s1,s1,a5
   13c58:	00249493          	slli	s1,s1,0x2
   13c5c:	40f484b3          	sub	s1,s1,a5
   13c60:	00449493          	slli	s1,s1,0x4
   13c64:	009404b3          	add	s1,s0,s1
   13c68:	01045783          	lhu	a5,16(s0)
   13c6c:	00fb7e63          	bgeu	s6,a5,13c88 <_fwalk+0x90>
   13c70:	01241783          	lh	a5,18(s0)
   13c74:	00040513          	mv	a0,s0
   13c78:	01478863          	beq	a5,s4,13c88 <_fwalk+0x90>
   13c7c:	000a80e7          	jalr	s5
   13c80:	01256933          	or	s2,a0,s2
   13c84:	0009091b          	sext.w	s2,s2
   13c88:	0b040413          	addi	s0,s0,176
   13c8c:	fc941ee3          	bne	s0,s1,13c68 <_fwalk+0x70>
   13c90:	0009b983          	ld	s3,0(s3)
   13c94:	fa0990e3          	bnez	s3,13c34 <_fwalk+0x3c>
   13c98:	03813083          	ld	ra,56(sp)
   13c9c:	03013403          	ld	s0,48(sp)
   13ca0:	00090513          	mv	a0,s2
   13ca4:	02813483          	ld	s1,40(sp)
   13ca8:	02013903          	ld	s2,32(sp)
   13cac:	01813983          	ld	s3,24(sp)
   13cb0:	01013a03          	ld	s4,16(sp)
   13cb4:	00813a83          	ld	s5,8(sp)
   13cb8:	00013b03          	ld	s6,0(sp)
   13cbc:	04010113          	addi	sp,sp,64
   13cc0:	00008067          	ret
   13cc4:	00000913          	li	s2,0
   13cc8:	fd1ff06f          	j	13c98 <_fwalk+0xa0>

0000000000013ccc <_fwalk_reent>:
   13ccc:	fb010113          	addi	sp,sp,-80
   13cd0:	03213823          	sd	s2,48(sp)
   13cd4:	04113423          	sd	ra,72(sp)
   13cd8:	04813023          	sd	s0,64(sp)
   13cdc:	02913c23          	sd	s1,56(sp)
   13ce0:	03313423          	sd	s3,40(sp)
   13ce4:	03413023          	sd	s4,32(sp)
   13ce8:	01513c23          	sd	s5,24(sp)
   13cec:	01613823          	sd	s6,16(sp)
   13cf0:	01713423          	sd	s7,8(sp)
   13cf4:	52050913          	addi	s2,a0,1312
   13cf8:	0a090863          	beqz	s2,13da8 <_fwalk_reent+0xdc>
   13cfc:	00058a93          	mv	s5,a1
   13d00:	00050993          	mv	s3,a0
   13d04:	00000b13          	li	s6,0
   13d08:	00100b93          	li	s7,1
   13d0c:	fff00a13          	li	s4,-1
   13d10:	00892783          	lw	a5,8(s2)
   13d14:	01093403          	ld	s0,16(s2)
   13d18:	04f05c63          	blez	a5,13d70 <_fwalk_reent+0xa4>
   13d1c:	fff7879b          	addiw	a5,a5,-1
   13d20:	02079493          	slli	s1,a5,0x20
   13d24:	0204d493          	srli	s1,s1,0x20
   13d28:	00148793          	addi	a5,s1,1
   13d2c:	00179493          	slli	s1,a5,0x1
   13d30:	00f484b3          	add	s1,s1,a5
   13d34:	00249493          	slli	s1,s1,0x2
   13d38:	40f484b3          	sub	s1,s1,a5
   13d3c:	00449493          	slli	s1,s1,0x4
   13d40:	009404b3          	add	s1,s0,s1
   13d44:	01045783          	lhu	a5,16(s0)
   13d48:	02fbf063          	bgeu	s7,a5,13d68 <_fwalk_reent+0x9c>
   13d4c:	01241783          	lh	a5,18(s0)
   13d50:	00040593          	mv	a1,s0
   13d54:	00098513          	mv	a0,s3
   13d58:	01478863          	beq	a5,s4,13d68 <_fwalk_reent+0x9c>
   13d5c:	000a80e7          	jalr	s5
   13d60:	01656b33          	or	s6,a0,s6
   13d64:	000b0b1b          	sext.w	s6,s6
   13d68:	0b040413          	addi	s0,s0,176
   13d6c:	fc941ce3          	bne	s0,s1,13d44 <_fwalk_reent+0x78>
   13d70:	00093903          	ld	s2,0(s2)
   13d74:	f8091ee3          	bnez	s2,13d10 <_fwalk_reent+0x44>
   13d78:	04813083          	ld	ra,72(sp)
   13d7c:	04013403          	ld	s0,64(sp)
   13d80:	000b0513          	mv	a0,s6
   13d84:	03813483          	ld	s1,56(sp)
   13d88:	03013903          	ld	s2,48(sp)
   13d8c:	02813983          	ld	s3,40(sp)
   13d90:	02013a03          	ld	s4,32(sp)
   13d94:	01813a83          	ld	s5,24(sp)
   13d98:	01013b03          	ld	s6,16(sp)
   13d9c:	00813b83          	ld	s7,8(sp)
   13da0:	05010113          	addi	sp,sp,80
   13da4:	00008067          	ret
   13da8:	00000b13          	li	s6,0
   13dac:	fcdff06f          	j	13d78 <_fwalk_reent+0xac>

0000000000013db0 <eshdn1>:
   13db0:	00450693          	addi	a3,a0,4
   13db4:	00000793          	li	a5,0
   13db8:	01a50513          	addi	a0,a0,26
   13dbc:	ffff8837          	lui	a6,0xffff8
   13dc0:	01c0006f          	j	13ddc <eshdn1+0x2c>
   13dc4:	0017979b          	slliw	a5,a5,0x1
   13dc8:	00e69023          	sh	a4,0(a3)
   13dcc:	03079793          	slli	a5,a5,0x30
   13dd0:	00268693          	addi	a3,a3,2
   13dd4:	0307d793          	srli	a5,a5,0x30
   13dd8:	02d50e63          	beq	a0,a3,13e14 <eshdn1+0x64>
   13ddc:	0006d703          	lhu	a4,0(a3)
   13de0:	00177613          	andi	a2,a4,1
   13de4:	00060463          	beqz	a2,13dec <eshdn1+0x3c>
   13de8:	0017e793          	ori	a5,a5,1
   13dec:	00175713          	srli	a4,a4,0x1
   13df0:	0027f613          	andi	a2,a5,2
   13df4:	010765b3          	or	a1,a4,a6
   13df8:	fc0606e3          	beqz	a2,13dc4 <eshdn1+0x14>
   13dfc:	0017979b          	slliw	a5,a5,0x1
   13e00:	00b69023          	sh	a1,0(a3)
   13e04:	03079793          	slli	a5,a5,0x30
   13e08:	00268693          	addi	a3,a3,2
   13e0c:	0307d793          	srli	a5,a5,0x30
   13e10:	fcd516e3          	bne	a0,a3,13ddc <eshdn1+0x2c>
   13e14:	00008067          	ret

0000000000013e18 <eshup1>:
   13e18:	01850693          	addi	a3,a0,24
   13e1c:	00000713          	li	a4,0
   13e20:	00250513          	addi	a0,a0,2
   13e24:	01c0006f          	j	13e40 <eshup1+0x28>
   13e28:	0017171b          	slliw	a4,a4,0x1
   13e2c:	00f69023          	sh	a5,0(a3)
   13e30:	03071713          	slli	a4,a4,0x30
   13e34:	ffe68693          	addi	a3,a3,-2
   13e38:	03075713          	srli	a4,a4,0x30
   13e3c:	04d50663          	beq	a0,a3,13e88 <eshup1+0x70>
   13e40:	0006d783          	lhu	a5,0(a3)
   13e44:	0107961b          	slliw	a2,a5,0x10
   13e48:	4106561b          	sraiw	a2,a2,0x10
   13e4c:	02061593          	slli	a1,a2,0x20
   13e50:	0017979b          	slliw	a5,a5,0x1
   13e54:	0005d463          	bgez	a1,13e5c <eshup1+0x44>
   13e58:	00176713          	ori	a4,a4,1
   13e5c:	03079793          	slli	a5,a5,0x30
   13e60:	0307d793          	srli	a5,a5,0x30
   13e64:	00277613          	andi	a2,a4,2
   13e68:	0017e593          	ori	a1,a5,1
   13e6c:	fa060ee3          	beqz	a2,13e28 <eshup1+0x10>
   13e70:	0017171b          	slliw	a4,a4,0x1
   13e74:	00b69023          	sh	a1,0(a3)
   13e78:	03071713          	slli	a4,a4,0x30
   13e7c:	ffe68693          	addi	a3,a3,-2
   13e80:	03075713          	srli	a4,a4,0x30
   13e84:	fad51ee3          	bne	a0,a3,13e40 <eshup1+0x28>
   13e88:	00008067          	ret

0000000000013e8c <m16m>:
   13e8c:	fa010113          	addi	sp,sp,-96
   13e90:	03413823          	sd	s4,48(sp)
   13e94:	00010a37          	lui	s4,0x10
   13e98:	04813823          	sd	s0,80(sp)
   13e9c:	04913423          	sd	s1,72(sp)
   13ea0:	05213023          	sd	s2,64(sp)
   13ea4:	03313c23          	sd	s3,56(sp)
   13ea8:	03513423          	sd	s5,40(sp)
   13eac:	04113c23          	sd	ra,88(sp)
   13eb0:	00050a93          	mv	s5,a0
   13eb4:	00060493          	mv	s1,a2
   13eb8:	00011b23          	sh	zero,22(sp)
   13ebc:	00011c23          	sh	zero,24(sp)
   13ec0:	01858913          	addi	s2,a1,24
   13ec4:	01810413          	addi	s0,sp,24
   13ec8:	00410993          	addi	s3,sp,4
   13ecc:	fffa0a13          	addi	s4,s4,-1 # ffff <main-0xb1>
   13ed0:	00095783          	lhu	a5,0(s2)
   13ed4:	000a8593          	mv	a1,s5
   13ed8:	ffe40413          	addi	s0,s0,-2
   13edc:	ffe90913          	addi	s2,s2,-2
   13ee0:	00078513          	mv	a0,a5
   13ee4:	04079663          	bnez	a5,13f30 <m16m+0xa4>
   13ee8:	fe041f23          	sh	zero,-2(s0)
   13eec:	ff3412e3          	bne	s0,s3,13ed0 <m16m+0x44>
   13ef0:	00448613          	addi	a2,s1,4
   13ef4:	01a10713          	addi	a4,sp,26
   13ef8:	00045783          	lhu	a5,0(s0)
   13efc:	00260613          	addi	a2,a2,2
   13f00:	00240413          	addi	s0,s0,2
   13f04:	fef61f23          	sh	a5,-2(a2)
   13f08:	fee418e3          	bne	s0,a4,13ef8 <m16m+0x6c>
   13f0c:	05813083          	ld	ra,88(sp)
   13f10:	05013403          	ld	s0,80(sp)
   13f14:	04813483          	ld	s1,72(sp)
   13f18:	04013903          	ld	s2,64(sp)
   13f1c:	03813983          	ld	s3,56(sp)
   13f20:	03013a03          	ld	s4,48(sp)
   13f24:	02813a83          	ld	s5,40(sp)
   13f28:	06010113          	addi	sp,sp,96
   13f2c:	00008067          	ret
   13f30:	2480d0ef          	jal	ra,21178 <__muldi3>
   13f34:	00245703          	lhu	a4,2(s0)
   13f38:	00045683          	lhu	a3,0(s0)
   13f3c:	014577b3          	and	a5,a0,s4
   13f40:	00e787b3          	add	a5,a5,a4
   13f44:	01055513          	srli	a0,a0,0x10
   13f48:	0107d713          	srli	a4,a5,0x10
   13f4c:	00d50533          	add	a0,a0,a3
   13f50:	00e50533          	add	a0,a0,a4
   13f54:	01055713          	srli	a4,a0,0x10
   13f58:	00f41123          	sh	a5,2(s0)
   13f5c:	00a41023          	sh	a0,0(s0)
   13f60:	fee41f23          	sh	a4,-2(s0)
   13f64:	f73416e3          	bne	s0,s3,13ed0 <m16m+0x44>
   13f68:	f89ff06f          	j	13ef0 <m16m+0x64>

0000000000013f6c <eisnan.part.0>:
   13f6c:	01250713          	addi	a4,a0,18
   13f70:	00250513          	addi	a0,a0,2
   13f74:	ffe55783          	lhu	a5,-2(a0)
   13f78:	00079863          	bnez	a5,13f88 <eisnan.part.0+0x1c>
   13f7c:	fea71ae3          	bne	a4,a0,13f70 <eisnan.part.0+0x4>
   13f80:	00000513          	li	a0,0
   13f84:	00008067          	ret
   13f88:	00100513          	li	a0,1
   13f8c:	00008067          	ret

0000000000013f90 <eneg>:
   13f90:	fe010113          	addi	sp,sp,-32
   13f94:	00813823          	sd	s0,16(sp)
   13f98:	01255403          	lhu	s0,18(a0)
   13f9c:	00913423          	sd	s1,8(sp)
   13fa0:	00113c23          	sd	ra,24(sp)
   13fa4:	fff44793          	not	a5,s0
   13fa8:	03179713          	slli	a4,a5,0x31
   13fac:	00050493          	mv	s1,a0
   13fb0:	00071663          	bnez	a4,13fbc <eneg+0x2c>
   13fb4:	fb9ff0ef          	jal	ra,13f6c <eisnan.part.0>
   13fb8:	00051863          	bnez	a0,13fc8 <eneg+0x38>
   13fbc:	ffff87b7          	lui	a5,0xffff8
   13fc0:	00f44433          	xor	s0,s0,a5
   13fc4:	00849923          	sh	s0,18(s1)
   13fc8:	01813083          	ld	ra,24(sp)
   13fcc:	01013403          	ld	s0,16(sp)
   13fd0:	00813483          	ld	s1,8(sp)
   13fd4:	02010113          	addi	sp,sp,32
   13fd8:	00008067          	ret

0000000000013fdc <eisneg>:
   13fdc:	ff010113          	addi	sp,sp,-16
   13fe0:	00813023          	sd	s0,0(sp)
   13fe4:	01255403          	lhu	s0,18(a0)
   13fe8:	00113423          	sd	ra,8(sp)
   13fec:	fff44793          	not	a5,s0
   13ff0:	03179713          	slli	a4,a5,0x31
   13ff4:	00071863          	bnez	a4,14004 <eisneg+0x28>
   13ff8:	f75ff0ef          	jal	ra,13f6c <eisnan.part.0>
   13ffc:	00000793          	li	a5,0
   14000:	00051463          	bnez	a0,14008 <eisneg+0x2c>
   14004:	00f45793          	srli	a5,s0,0xf
   14008:	00813083          	ld	ra,8(sp)
   1400c:	00013403          	ld	s0,0(sp)
   14010:	00078513          	mv	a0,a5
   14014:	01010113          	addi	sp,sp,16
   14018:	00008067          	ret

000000000001401c <emovi>:
   1401c:	01255783          	lhu	a5,18(a0)
   14020:	fe010113          	addi	sp,sp,-32
   14024:	00813823          	sd	s0,16(sp)
   14028:	00f7d79b          	srliw	a5,a5,0xf
   1402c:	00913423          	sd	s1,8(sp)
   14030:	00113c23          	sd	ra,24(sp)
   14034:	01213023          	sd	s2,0(sp)
   14038:	40f007bb          	negw	a5,a5
   1403c:	00f59023          	sh	a5,0(a1)
   14040:	01255783          	lhu	a5,18(a0)
   14044:	000086b7          	lui	a3,0x8
   14048:	fff68693          	addi	a3,a3,-1 # 7fff <main-0x80b1>
   1404c:	00f6f7b3          	and	a5,a3,a5
   14050:	00f59123          	sh	a5,2(a1)
   14054:	0007879b          	sext.w	a5,a5
   14058:	00050493          	mv	s1,a0
   1405c:	01050413          	addi	s0,a0,16
   14060:	04d78063          	beq	a5,a3,140a0 <emovi+0x84>
   14064:	00658793          	addi	a5,a1,6
   14068:	00059223          	sh	zero,4(a1)
   1406c:	ffe50513          	addi	a0,a0,-2
   14070:	ffe40413          	addi	s0,s0,-2
   14074:	00245703          	lhu	a4,2(s0)
   14078:	00278793          	addi	a5,a5,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd4dfa>
   1407c:	fee79f23          	sh	a4,-2(a5)
   14080:	fea418e3          	bne	s0,a0,14070 <emovi+0x54>
   14084:	00059c23          	sh	zero,24(a1)
   14088:	01813083          	ld	ra,24(sp)
   1408c:	01013403          	ld	s0,16(sp)
   14090:	00813483          	ld	s1,8(sp)
   14094:	00013903          	ld	s2,0(sp)
   14098:	02010113          	addi	sp,sp,32
   1409c:	00008067          	ret
   140a0:	01255703          	lhu	a4,18(a0)
   140a4:	00058913          	mv	s2,a1
   140a8:	00e7f733          	and	a4,a5,a4
   140ac:	02f71863          	bne	a4,a5,140dc <emovi+0xc0>
   140b0:	ebdff0ef          	jal	ra,13f6c <eisnan.part.0>
   140b4:	02050463          	beqz	a0,140dc <emovi+0xc0>
   140b8:	00690713          	addi	a4,s2,6
   140bc:	00091223          	sh	zero,4(s2)
   140c0:	ffc48793          	addi	a5,s1,-4
   140c4:	ffe40413          	addi	s0,s0,-2
   140c8:	00245683          	lhu	a3,2(s0)
   140cc:	00270713          	addi	a4,a4,2
   140d0:	fed71f23          	sh	a3,-2(a4)
   140d4:	fe8798e3          	bne	a5,s0,140c4 <emovi+0xa8>
   140d8:	fb1ff06f          	j	14088 <emovi+0x6c>
   140dc:	00490793          	addi	a5,s2,4
   140e0:	01a90593          	addi	a1,s2,26
   140e4:	00278793          	addi	a5,a5,2
   140e8:	fe079f23          	sh	zero,-2(a5)
   140ec:	fef59ce3          	bne	a1,a5,140e4 <emovi+0xc8>
   140f0:	01813083          	ld	ra,24(sp)
   140f4:	01013403          	ld	s0,16(sp)
   140f8:	00813483          	ld	s1,8(sp)
   140fc:	00013903          	ld	s2,0(sp)
   14100:	02010113          	addi	sp,sp,32
   14104:	00008067          	ret

0000000000014108 <ecmp>:
   14108:	01255783          	lhu	a5,18(a0)
   1410c:	fa010113          	addi	sp,sp,-96
   14110:	04813823          	sd	s0,80(sp)
   14114:	fff7c793          	not	a5,a5
   14118:	04913423          	sd	s1,72(sp)
   1411c:	04113c23          	sd	ra,88(sp)
   14120:	03179713          	slli	a4,a5,0x31
   14124:	00050493          	mv	s1,a0
   14128:	00058413          	mv	s0,a1
   1412c:	00071663          	bnez	a4,14138 <ecmp+0x30>
   14130:	e3dff0ef          	jal	ra,13f6c <eisnan.part.0>
   14134:	08051263          	bnez	a0,141b8 <ecmp+0xb0>
   14138:	01245783          	lhu	a5,18(s0)
   1413c:	fff7c793          	not	a5,a5
   14140:	03179713          	slli	a4,a5,0x31
   14144:	06070463          	beqz	a4,141ac <ecmp+0xa4>
   14148:	00010593          	mv	a1,sp
   1414c:	00048513          	mv	a0,s1
   14150:	ecdff0ef          	jal	ra,1401c <emovi>
   14154:	02010593          	addi	a1,sp,32
   14158:	00040513          	mv	a0,s0
   1415c:	ec1ff0ef          	jal	ra,1401c <emovi>
   14160:	00015583          	lhu	a1,0(sp)
   14164:	02015783          	lhu	a5,32(sp)
   14168:	04b78c63          	beq	a5,a1,141c0 <ecmp+0xb8>
   1416c:	00210793          	addi	a5,sp,2
   14170:	02210713          	addi	a4,sp,34
   14174:	01810613          	addi	a2,sp,24
   14178:	0007d683          	lhu	a3,0(a5)
   1417c:	00278793          	addi	a5,a5,2
   14180:	08069663          	bnez	a3,1420c <ecmp+0x104>
   14184:	00075683          	lhu	a3,0(a4)
   14188:	00270713          	addi	a4,a4,2
   1418c:	08069063          	bnez	a3,1420c <ecmp+0x104>
   14190:	fec794e3          	bne	a5,a2,14178 <ecmp+0x70>
   14194:	00000513          	li	a0,0
   14198:	05813083          	ld	ra,88(sp)
   1419c:	05013403          	ld	s0,80(sp)
   141a0:	04813483          	ld	s1,72(sp)
   141a4:	06010113          	addi	sp,sp,96
   141a8:	00008067          	ret
   141ac:	00040513          	mv	a0,s0
   141b0:	dbdff0ef          	jal	ra,13f6c <eisnan.part.0>
   141b4:	f8050ae3          	beqz	a0,14148 <ecmp+0x40>
   141b8:	ffe00513          	li	a0,-2
   141bc:	fddff06f          	j	14198 <ecmp+0x90>
   141c0:	00100513          	li	a0,1
   141c4:	04059c63          	bnez	a1,1421c <ecmp+0x114>
   141c8:	00210713          	addi	a4,sp,2
   141cc:	02210793          	addi	a5,sp,34
   141d0:	00278793          	addi	a5,a5,2
   141d4:	00270713          	addi	a4,a4,2
   141d8:	ffe75603          	lhu	a2,-2(a4)
   141dc:	ffe7d683          	lhu	a3,-2(a5)
   141e0:	03810593          	addi	a1,sp,56
   141e4:	00d61e63          	bne	a2,a3,14200 <ecmp+0xf8>
   141e8:	fab786e3          	beq	a5,a1,14194 <ecmp+0x8c>
   141ec:	00278793          	addi	a5,a5,2
   141f0:	00270713          	addi	a4,a4,2
   141f4:	ffe75603          	lhu	a2,-2(a4)
   141f8:	ffe7d683          	lhu	a3,-2(a5)
   141fc:	fed606e3          	beq	a2,a3,141e8 <ecmp+0xe0>
   14200:	f8c6ece3          	bltu	a3,a2,14198 <ecmp+0x90>
   14204:	40a0053b          	negw	a0,a0
   14208:	f91ff06f          	j	14198 <ecmp+0x90>
   1420c:	00100513          	li	a0,1
   14210:	f80584e3          	beqz	a1,14198 <ecmp+0x90>
   14214:	fff00513          	li	a0,-1
   14218:	f81ff06f          	j	14198 <ecmp+0x90>
   1421c:	fff00513          	li	a0,-1
   14220:	fa9ff06f          	j	141c8 <ecmp+0xc0>

0000000000014224 <eisinf.part.1>:
   14224:	ff010113          	addi	sp,sp,-16
   14228:	00113423          	sd	ra,8(sp)
   1422c:	d41ff0ef          	jal	ra,13f6c <eisnan.part.0>
   14230:	00813083          	ld	ra,8(sp)
   14234:	00153513          	seqz	a0,a0
   14238:	01010113          	addi	sp,sp,16
   1423c:	00008067          	ret

0000000000014240 <eshift.part.3>:
   14240:	fe010113          	addi	sp,sp,-32
   14244:	00813823          	sd	s0,16(sp)
   14248:	01213023          	sd	s2,0(sp)
   1424c:	00113c23          	sd	ra,24(sp)
   14250:	00913423          	sd	s1,8(sp)
   14254:	00058913          	mv	s2,a1
   14258:	00050413          	mv	s0,a0
   1425c:	0a05c263          	bltz	a1,14300 <eshift.part.3+0xc0>
   14260:	00f00793          	li	a5,15
   14264:	00058613          	mv	a2,a1
   14268:	00450513          	addi	a0,a0,4
   1426c:	01840693          	addi	a3,s0,24
   14270:	00f00593          	li	a1,15
   14274:	0327d463          	bge	a5,s2,1429c <eshift.part.3+0x5c>
   14278:	00050793          	mv	a5,a0
   1427c:	00278793          	addi	a5,a5,2
   14280:	0007d703          	lhu	a4,0(a5)
   14284:	fee79f23          	sh	a4,-2(a5)
   14288:	fed79ae3          	bne	a5,a3,1427c <eshift.part.3+0x3c>
   1428c:	00041c23          	sh	zero,24(s0)
   14290:	ff06061b          	addiw	a2,a2,-16
   14294:	fec5c2e3          	blt	a1,a2,14278 <eshift.part.3+0x38>
   14298:	00f97913          	andi	s2,s2,15
   1429c:	00700793          	li	a5,7
   142a0:	0327d863          	bge	a5,s2,142d0 <eshift.part.3+0x90>
   142a4:	01840793          	addi	a5,s0,24
   142a8:	00240593          	addi	a1,s0,2
   142ac:	00000713          	li	a4,0
   142b0:	0007d683          	lhu	a3,0(a5)
   142b4:	ffe78793          	addi	a5,a5,-2
   142b8:	00869613          	slli	a2,a3,0x8
   142bc:	00c76733          	or	a4,a4,a2
   142c0:	00e79123          	sh	a4,2(a5)
   142c4:	0086d713          	srli	a4,a3,0x8
   142c8:	feb794e3          	bne	a5,a1,142b0 <eshift.part.3+0x70>
   142cc:	ff89091b          	addiw	s2,s2,-8
   142d0:	00090a63          	beqz	s2,142e4 <eshift.part.3+0xa4>
   142d4:	fff9091b          	addiw	s2,s2,-1
   142d8:	00040513          	mv	a0,s0
   142dc:	b3dff0ef          	jal	ra,13e18 <eshup1>
   142e0:	fe091ae3          	bnez	s2,142d4 <eshift.part.3+0x94>
   142e4:	01813083          	ld	ra,24(sp)
   142e8:	01013403          	ld	s0,16(sp)
   142ec:	00813483          	ld	s1,8(sp)
   142f0:	00013903          	ld	s2,0(sp)
   142f4:	00000513          	li	a0,0
   142f8:	02010113          	addi	sp,sp,32
   142fc:	00008067          	ret
   14300:	ff100793          	li	a5,-15
   14304:	40b004bb          	negw	s1,a1
   14308:	0cf5d463          	bge	a1,a5,143d0 <eshift.part.3+0x190>
   1430c:	01850593          	addi	a1,a0,24
   14310:	00000913          	li	s2,0
   14314:	00450693          	addi	a3,a0,4
   14318:	00f00613          	li	a2,15
   1431c:	01845703          	lhu	a4,24(s0)
   14320:	00058793          	mv	a5,a1
   14324:	00e96933          	or	s2,s2,a4
   14328:	ffe78793          	addi	a5,a5,-2
   1432c:	0007d703          	lhu	a4,0(a5)
   14330:	00e79123          	sh	a4,2(a5)
   14334:	fed79ae3          	bne	a5,a3,14328 <eshift.part.3+0xe8>
   14338:	00041223          	sh	zero,4(s0)
   1433c:	ff04849b          	addiw	s1,s1,-16
   14340:	fc964ee3          	blt	a2,s1,1431c <eshift.part.3+0xdc>
   14344:	00700793          	li	a5,7
   14348:	0497d663          	bge	a5,s1,14394 <eshift.part.3+0x154>
   1434c:	0109191b          	slliw	s2,s2,0x10
   14350:	4109591b          	sraiw	s2,s2,0x10
   14354:	01844783          	lbu	a5,24(s0)
   14358:	01a40593          	addi	a1,s0,26
   1435c:	00000713          	li	a4,0
   14360:	00f96933          	or	s2,s2,a5
   14364:	03091913          	slli	s2,s2,0x30
   14368:	03095913          	srli	s2,s2,0x30
   1436c:	0006d783          	lhu	a5,0(a3)
   14370:	00268693          	addi	a3,a3,2
   14374:	0087d61b          	srliw	a2,a5,0x8
   14378:	00c76733          	or	a4,a4,a2
   1437c:	0087979b          	slliw	a5,a5,0x8
   14380:	fee69f23          	sh	a4,-2(a3)
   14384:	03079713          	slli	a4,a5,0x30
   14388:	03075713          	srli	a4,a4,0x30
   1438c:	feb690e3          	bne	a3,a1,1436c <eshift.part.3+0x12c>
   14390:	ff84849b          	addiw	s1,s1,-8
   14394:	02048063          	beqz	s1,143b4 <eshift.part.3+0x174>
   14398:	01845783          	lhu	a5,24(s0)
   1439c:	fff4849b          	addiw	s1,s1,-1
   143a0:	00040513          	mv	a0,s0
   143a4:	0017f793          	andi	a5,a5,1
   143a8:	0127e933          	or	s2,a5,s2
   143ac:	a05ff0ef          	jal	ra,13db0 <eshdn1>
   143b0:	fe0494e3          	bnez	s1,14398 <eshift.part.3+0x158>
   143b4:	01813083          	ld	ra,24(sp)
   143b8:	01013403          	ld	s0,16(sp)
   143bc:	01203533          	snez	a0,s2
   143c0:	00813483          	ld	s1,8(sp)
   143c4:	00013903          	ld	s2,0(sp)
   143c8:	02010113          	addi	sp,sp,32
   143cc:	00008067          	ret
   143d0:	ff900793          	li	a5,-7
   143d4:	00f5c663          	blt	a1,a5,143e0 <eshift.part.3+0x1a0>
   143d8:	00000913          	li	s2,0
   143dc:	fbdff06f          	j	14398 <eshift.part.3+0x158>
   143e0:	00000913          	li	s2,0
   143e4:	00440693          	addi	a3,s0,4
   143e8:	f6dff06f          	j	14354 <eshift.part.3+0x114>

00000000000143ec <enormlz>:
   143ec:	00455783          	lhu	a5,4(a0)
   143f0:	fe010113          	addi	sp,sp,-32
   143f4:	00913423          	sd	s1,8(sp)
   143f8:	00113c23          	sd	ra,24(sp)
   143fc:	00813823          	sd	s0,16(sp)
   14400:	01213023          	sd	s2,0(sp)
   14404:	00050493          	mv	s1,a0
   14408:	0e079063          	bnez	a5,144e8 <enormlz+0xfc>
   1440c:	00655703          	lhu	a4,6(a0)
   14410:	00000413          	li	s0,0
   14414:	0107179b          	slliw	a5,a4,0x10
   14418:	4107d79b          	sraiw	a5,a5,0x10
   1441c:	02079693          	slli	a3,a5,0x20
   14420:	0a06c663          	bltz	a3,144cc <enormlz+0xe0>
   14424:	01a50693          	addi	a3,a0,26
   14428:	0a000613          	li	a2,160
   1442c:	02071863          	bnez	a4,1445c <enormlz+0x70>
   14430:	00648793          	addi	a5,s1,6
   14434:	0080006f          	j	1443c <enormlz+0x50>
   14438:	0007d703          	lhu	a4,0(a5)
   1443c:	00278793          	addi	a5,a5,2
   14440:	fee79e23          	sh	a4,-4(a5)
   14444:	fef69ae3          	bne	a3,a5,14438 <enormlz+0x4c>
   14448:	00049c23          	sh	zero,24(s1)
   1444c:	0104041b          	addiw	s0,s0,16
   14450:	06c40e63          	beq	s0,a2,144cc <enormlz+0xe0>
   14454:	0064d703          	lhu	a4,6(s1)
   14458:	fc070ce3          	beqz	a4,14430 <enormlz+0x44>
   1445c:	f0077793          	andi	a5,a4,-256
   14460:	04079063          	bnez	a5,144a0 <enormlz+0xb4>
   14464:	01848513          	addi	a0,s1,24
   14468:	00248593          	addi	a1,s1,2
   1446c:	00000713          	li	a4,0
   14470:	00050793          	mv	a5,a0
   14474:	0007d683          	lhu	a3,0(a5)
   14478:	ffe78793          	addi	a5,a5,-2
   1447c:	00869613          	slli	a2,a3,0x8
   14480:	00c76733          	or	a4,a4,a2
   14484:	00e79123          	sh	a4,2(a5)
   14488:	0086d713          	srli	a4,a3,0x8
   1448c:	fef594e3          	bne	a1,a5,14474 <enormlz+0x88>
   14490:	0064d703          	lhu	a4,6(s1)
   14494:	0084041b          	addiw	s0,s0,8
   14498:	f0077793          	andi	a5,a4,-256
   1449c:	fc0788e3          	beqz	a5,1446c <enormlz+0x80>
   144a0:	0a000913          	li	s2,160
   144a4:	0140006f          	j	144b8 <enormlz+0xcc>
   144a8:	0014041b          	addiw	s0,s0,1
   144ac:	96dff0ef          	jal	ra,13e18 <eshup1>
   144b0:	00894e63          	blt	s2,s0,144cc <enormlz+0xe0>
   144b4:	0064d703          	lhu	a4,6(s1)
   144b8:	0107171b          	slliw	a4,a4,0x10
   144bc:	4107571b          	sraiw	a4,a4,0x10
   144c0:	02071793          	slli	a5,a4,0x20
   144c4:	00048513          	mv	a0,s1
   144c8:	fe07d0e3          	bgez	a5,144a8 <enormlz+0xbc>
   144cc:	00040513          	mv	a0,s0
   144d0:	01813083          	ld	ra,24(sp)
   144d4:	01013403          	ld	s0,16(sp)
   144d8:	00813483          	ld	s1,8(sp)
   144dc:	00013903          	ld	s2,0(sp)
   144e0:	02010113          	addi	sp,sp,32
   144e4:	00008067          	ret
   144e8:	f007f713          	andi	a4,a5,-256
   144ec:	00000413          	li	s0,0
   144f0:	04071063          	bnez	a4,14530 <enormlz+0x144>
   144f4:	f6f00913          	li	s2,-145
   144f8:	0140006f          	j	1450c <enormlz+0x120>
   144fc:	fff4041b          	addiw	s0,s0,-1
   14500:	8b1ff0ef          	jal	ra,13db0 <eshdn1>
   14504:	fd2404e3          	beq	s0,s2,144cc <enormlz+0xe0>
   14508:	0044d783          	lhu	a5,4(s1)
   1450c:	00048513          	mv	a0,s1
   14510:	fe0796e3          	bnez	a5,144fc <enormlz+0x110>
   14514:	00040513          	mv	a0,s0
   14518:	01813083          	ld	ra,24(sp)
   1451c:	01013403          	ld	s0,16(sp)
   14520:	00813483          	ld	s1,8(sp)
   14524:	00013903          	ld	s2,0(sp)
   14528:	02010113          	addi	sp,sp,32
   1452c:	00008067          	ret
   14530:	00450693          	addi	a3,a0,4
   14534:	01a50593          	addi	a1,a0,26
   14538:	00000713          	li	a4,0
   1453c:	0080006f          	j	14544 <enormlz+0x158>
   14540:	0006d783          	lhu	a5,0(a3)
   14544:	0087d61b          	srliw	a2,a5,0x8
   14548:	00c76733          	or	a4,a4,a2
   1454c:	0087979b          	slliw	a5,a5,0x8
   14550:	00e69023          	sh	a4,0(a3)
   14554:	03079713          	slli	a4,a5,0x30
   14558:	00268693          	addi	a3,a3,2
   1455c:	03075713          	srli	a4,a4,0x30
   14560:	feb690e3          	bne	a3,a1,14540 <enormlz+0x154>
   14564:	0044d783          	lhu	a5,4(s1)
   14568:	ff800413          	li	s0,-8
   1456c:	f89ff06f          	j	144f4 <enormlz+0x108>

0000000000014570 <emdnorm>:
   14570:	fc010113          	addi	sp,sp,-64
   14574:	02813823          	sd	s0,48(sp)
   14578:	02913423          	sd	s1,40(sp)
   1457c:	03213023          	sd	s2,32(sp)
   14580:	01313c23          	sd	s3,24(sp)
   14584:	01413823          	sd	s4,16(sp)
   14588:	01513423          	sd	s5,8(sp)
   1458c:	00068913          	mv	s2,a3
   14590:	00078493          	mv	s1,a5
   14594:	02113c23          	sd	ra,56(sp)
   14598:	00050413          	mv	s0,a0
   1459c:	00058993          	mv	s3,a1
   145a0:	00060a13          	mv	s4,a2
   145a4:	00070a93          	mv	s5,a4
   145a8:	e45ff0ef          	jal	ra,143ec <enormlz>
   145ac:	09000793          	li	a5,144
   145b0:	40a90933          	sub	s2,s2,a0
   145b4:	08a7d063          	bge	a5,a0,14634 <emdnorm+0xc4>
   145b8:	000087b7          	lui	a5,0x8
   145bc:	ffe78793          	addi	a5,a5,-2 # 7ffe <main-0x80b2>
   145c0:	2327dc63          	bge	a5,s2,147f8 <emdnorm+0x288>
   145c4:	200a8663          	beqz	s5,147d0 <emdnorm+0x260>
   145c8:	0044a503          	lw	a0,4(s1)
   145cc:	0004a783          	lw	a5,0(s1)
   145d0:	0ea78e63          	beq	a5,a0,146cc <emdnorm+0x15c>
   145d4:	01a48713          	addi	a4,s1,26
   145d8:	03448793          	addi	a5,s1,52
   145dc:	00270713          	addi	a4,a4,2
   145e0:	fe071f23          	sh	zero,-2(a4)
   145e4:	fef71ce3          	bne	a4,a5,145dc <emdnorm+0x6c>
   145e8:	03800793          	li	a5,56
   145ec:	38f50263          	beq	a0,a5,14970 <emdnorm+0x400>
   145f0:	06a7d463          	bge	a5,a0,14658 <emdnorm+0xe8>
   145f4:	04000793          	li	a5,64
   145f8:	30f50c63          	beq	a0,a5,14910 <emdnorm+0x3a0>
   145fc:	07100793          	li	a5,113
   14600:	32f51e63          	bne	a0,a5,1493c <emdnorm+0x3cc>
   14604:	00a00793          	li	a5,10
   14608:	40008737          	lui	a4,0x40008
   1460c:	fff70713          	addi	a4,a4,-1 # 40007fff <__BSS_END__+0x3ffe4df7>
   14610:	02079793          	slli	a5,a5,0x20
   14614:	00a78793          	addi	a5,a5,10
   14618:	00e4aa23          	sw	a4,20(s1)
   1461c:	ffff8737          	lui	a4,0xffff8
   14620:	00e49c23          	sh	a4,24(s1)
   14624:	00f4b423          	sd	a5,8(s1)
   14628:	00008737          	lui	a4,0x8
   1462c:	00a00793          	li	a5,10
   14630:	0640006f          	j	14694 <emdnorm+0x124>
   14634:	20095263          	bgez	s2,14838 <emdnorm+0x2c8>
   14638:	f7000793          	li	a5,-144
   1463c:	1cf95a63          	bge	s2,a5,14810 <emdnorm+0x2a0>
   14640:	00240793          	addi	a5,s0,2
   14644:	01a40413          	addi	s0,s0,26
   14648:	00278793          	addi	a5,a5,2
   1464c:	fe079f23          	sh	zero,-2(a5)
   14650:	fe879ce3          	bne	a5,s0,14648 <emdnorm+0xd8>
   14654:	1580006f          	j	147ac <emdnorm+0x23c>
   14658:	01800793          	li	a5,24
   1465c:	28f50463          	beq	a0,a5,148e4 <emdnorm+0x374>
   14660:	03500793          	li	a5,53
   14664:	2cf51c63          	bne	a0,a5,1493c <emdnorm+0x3cc>
   14668:	040006b7          	lui	a3,0x4000
   1466c:	00001737          	lui	a4,0x1
   14670:	7ff68693          	addi	a3,a3,2047 # 40007ff <__BSS_END__+0x3fdd5f7>
   14674:	00600793          	li	a5,6
   14678:	80070713          	addi	a4,a4,-2048 # 800 <main-0xf8b0>
   1467c:	00d4aa23          	sw	a3,20(s1)
   14680:	02079793          	slli	a5,a5,0x20
   14684:	00678793          	addi	a5,a5,6
   14688:	00f4b423          	sd	a5,8(s1)
   1468c:	00e49c23          	sh	a4,24(s1)
   14690:	00600793          	li	a5,6
   14694:	00878793          	addi	a5,a5,8
   14698:	00179793          	slli	a5,a5,0x1
   1469c:	00f487b3          	add	a5,s1,a5
   146a0:	00e79523          	sh	a4,10(a5)
   146a4:	00a4a023          	sw	a0,0(s1)
   146a8:	03204263          	bgtz	s2,146cc <emdnorm+0x15c>
   146ac:	09000793          	li	a5,144
   146b0:	20f50663          	beq	a0,a5,148bc <emdnorm+0x34c>
   146b4:	01845783          	lhu	a5,24(s0)
   146b8:	00040513          	mv	a0,s0
   146bc:	0017f793          	andi	a5,a5,1
   146c0:	00f9e9b3          	or	s3,s3,a5
   146c4:	eecff0ef          	jal	ra,13db0 <eshdn1>
   146c8:	0044a503          	lw	a0,4(s1)
   146cc:	0084a683          	lw	a3,8(s1)
   146d0:	0144d603          	lhu	a2,20(s1)
   146d4:	08f00793          	li	a5,143
   146d8:	00169713          	slli	a4,a3,0x1
   146dc:	00e40833          	add	a6,s0,a4
   146e0:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   146e4:	00c8f5b3          	and	a1,a7,a2
   146e8:	04a7c863          	blt	a5,a0,14738 <emdnorm+0x1c8>
   146ec:	00b00793          	li	a5,11
   146f0:	04d7c463          	blt	a5,a3,14738 <emdnorm+0x1c8>
   146f4:	40d787bb          	subw	a5,a5,a3
   146f8:	02079793          	slli	a5,a5,0x20
   146fc:	0207d793          	srli	a5,a5,0x20
   14700:	00d787b3          	add	a5,a5,a3
   14704:	00179693          	slli	a3,a5,0x1
   14708:	00270713          	addi	a4,a4,2
   1470c:	00440793          	addi	a5,s0,4
   14710:	00e40733          	add	a4,s0,a4
   14714:	00f687b3          	add	a5,a3,a5
   14718:	00075683          	lhu	a3,0(a4)
   1471c:	00068463          	beqz	a3,14724 <emdnorm+0x1b4>
   14720:	0015e593          	ori	a1,a1,1
   14724:	00071023          	sh	zero,0(a4)
   14728:	00270713          	addi	a4,a4,2
   1472c:	fee796e3          	bne	a5,a4,14718 <emdnorm+0x1a8>
   14730:	00085883          	lhu	a7,0(a6)
   14734:	0144d603          	lhu	a2,20(s1)
   14738:	fff64613          	not	a2,a2
   1473c:	01167633          	and	a2,a2,a7
   14740:	00c81023          	sh	a2,0(a6)
   14744:	0164d783          	lhu	a5,22(s1)
   14748:	00b7f733          	and	a4,a5,a1
   1474c:	04070063          	beqz	a4,1478c <emdnorm+0x21c>
   14750:	12b78263          	beq	a5,a1,14874 <emdnorm+0x304>
   14754:	03248613          	addi	a2,s1,50
   14758:	01840713          	addi	a4,s0,24
   1475c:	01c48493          	addi	s1,s1,28
   14760:	00000693          	li	a3,0
   14764:	00065783          	lhu	a5,0(a2)
   14768:	00075583          	lhu	a1,0(a4)
   1476c:	ffe70713          	addi	a4,a4,-2
   14770:	ffe60613          	addi	a2,a2,-2
   14774:	00b787b3          	add	a5,a5,a1
   14778:	00d787b3          	add	a5,a5,a3
   1477c:	00f71123          	sh	a5,2(a4)
   14780:	0107d793          	srli	a5,a5,0x10
   14784:	0017f693          	andi	a3,a5,1
   14788:	fc961ee3          	bne	a2,s1,14764 <emdnorm+0x1f4>
   1478c:	11205663          	blez	s2,14898 <emdnorm+0x328>
   14790:	00445783          	lhu	a5,4(s0)
   14794:	0a079c63          	bnez	a5,1484c <emdnorm+0x2dc>
   14798:	000087b7          	lui	a5,0x8
   1479c:	00041c23          	sh	zero,24(s0)
   147a0:	ffe78793          	addi	a5,a5,-2 # 7ffe <main-0x80b2>
   147a4:	0327c863          	blt	a5,s2,147d4 <emdnorm+0x264>
   147a8:	01241123          	sh	s2,2(s0)
   147ac:	03813083          	ld	ra,56(sp)
   147b0:	03013403          	ld	s0,48(sp)
   147b4:	02813483          	ld	s1,40(sp)
   147b8:	02013903          	ld	s2,32(sp)
   147bc:	01813983          	ld	s3,24(sp)
   147c0:	01013a03          	ld	s4,16(sp)
   147c4:	00813a83          	ld	s5,8(sp)
   147c8:	04010113          	addi	sp,sp,64
   147cc:	00008067          	ret
   147d0:	00041c23          	sh	zero,24(s0)
   147d4:	ffff87b7          	lui	a5,0xffff8
   147d8:	fff7c793          	not	a5,a5
   147dc:	00f41123          	sh	a5,2(s0)
   147e0:	00440793          	addi	a5,s0,4
   147e4:	01840413          	addi	s0,s0,24
   147e8:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   147ec:	00278793          	addi	a5,a5,2
   147f0:	fef41ce3          	bne	s0,a5,147e8 <emdnorm+0x278>
   147f4:	fb9ff06f          	j	147ac <emdnorm+0x23c>
   147f8:	00240793          	addi	a5,s0,2
   147fc:	01a40413          	addi	s0,s0,26
   14800:	00278793          	addi	a5,a5,2
   14804:	fe079f23          	sh	zero,-2(a5)
   14808:	fe879ce3          	bne	a5,s0,14800 <emdnorm+0x290>
   1480c:	fa1ff06f          	j	147ac <emdnorm+0x23c>
   14810:	0009059b          	sext.w	a1,s2
   14814:	00040513          	mv	a0,s0
   14818:	a29ff0ef          	jal	ra,14240 <eshift.part.3>
   1481c:	00050463          	beqz	a0,14824 <emdnorm+0x2b4>
   14820:	00100993          	li	s3,1
   14824:	0a0a8a63          	beqz	s5,148d8 <emdnorm+0x368>
   14828:	0044a503          	lw	a0,4(s1)
   1482c:	0004a783          	lw	a5,0(s1)
   14830:	daa792e3          	bne	a5,a0,145d4 <emdnorm+0x64>
   14834:	e79ff06f          	j	146ac <emdnorm+0x13c>
   14838:	f60a80e3          	beqz	s5,14798 <emdnorm+0x228>
   1483c:	0044a503          	lw	a0,4(s1)
   14840:	0004a783          	lw	a5,0(s1)
   14844:	d8a798e3          	bne	a5,a0,145d4 <emdnorm+0x64>
   14848:	e61ff06f          	j	146a8 <emdnorm+0x138>
   1484c:	00040513          	mv	a0,s0
   14850:	d60ff0ef          	jal	ra,13db0 <eshdn1>
   14854:	000087b7          	lui	a5,0x8
   14858:	00190913          	addi	s2,s2,1
   1485c:	00041c23          	sh	zero,24(s0)
   14860:	ffe78793          	addi	a5,a5,-2 # 7ffe <main-0x80b2>
   14864:	f727c8e3          	blt	a5,s2,147d4 <emdnorm+0x264>
   14868:	f40950e3          	bgez	s2,147a8 <emdnorm+0x238>
   1486c:	00041123          	sh	zero,2(s0)
   14870:	f3dff06f          	j	147ac <emdnorm+0x23c>
   14874:	0e099a63          	bnez	s3,14968 <emdnorm+0x3f8>
   14878:	00c4a783          	lw	a5,12(s1)
   1487c:	0184d703          	lhu	a4,24(s1)
   14880:	00179793          	slli	a5,a5,0x1
   14884:	00f407b3          	add	a5,s0,a5
   14888:	0007d783          	lhu	a5,0(a5)
   1488c:	00e7f7b3          	and	a5,a5,a4
   14890:	ec0792e3          	bnez	a5,14754 <emdnorm+0x1e4>
   14894:	ef204ee3          	bgtz	s2,14790 <emdnorm+0x220>
   14898:	09000793          	li	a5,144
   1489c:	00f50663          	beq	a0,a5,148a8 <emdnorm+0x338>
   148a0:	00040513          	mv	a0,s0
   148a4:	d74ff0ef          	jal	ra,13e18 <eshup1>
   148a8:	00445783          	lhu	a5,4(s0)
   148ac:	fa0790e3          	bnez	a5,1484c <emdnorm+0x2dc>
   148b0:	00041c23          	sh	zero,24(s0)
   148b4:	fa094ce3          	bltz	s2,1486c <emdnorm+0x2fc>
   148b8:	ef1ff06f          	j	147a8 <emdnorm+0x238>
   148bc:	0084a803          	lw	a6,8(s1)
   148c0:	0144d603          	lhu	a2,20(s1)
   148c4:	00181813          	slli	a6,a6,0x1
   148c8:	01040833          	add	a6,s0,a6
   148cc:	00085883          	lhu	a7,0(a6)
   148d0:	011675b3          	and	a1,a2,a7
   148d4:	e65ff06f          	j	14738 <emdnorm+0x1c8>
   148d8:	00041c23          	sh	zero,24(s0)
   148dc:	00041123          	sh	zero,2(s0)
   148e0:	ecdff06f          	j	147ac <emdnorm+0x23c>
   148e4:	00400793          	li	a5,4
   148e8:	00800737          	lui	a4,0x800
   148ec:	0ff70713          	addi	a4,a4,255 # 8000ff <__BSS_END__+0x7dcef7>
   148f0:	02079793          	slli	a5,a5,0x20
   148f4:	00478793          	addi	a5,a5,4
   148f8:	00e4aa23          	sw	a4,20(s1)
   148fc:	10000713          	li	a4,256
   14900:	00f4b423          	sd	a5,8(s1)
   14904:	00e49c23          	sh	a4,24(s1)
   14908:	00400793          	li	a5,4
   1490c:	d89ff06f          	j	14694 <emdnorm+0x124>
   14910:	00300793          	li	a5,3
   14914:	80010737          	lui	a4,0x80010
   14918:	fff70713          	addi	a4,a4,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffecdf7>
   1491c:	02179793          	slli	a5,a5,0x21
   14920:	00778793          	addi	a5,a5,7
   14924:	00e4aa23          	sw	a4,20(s1)
   14928:	00100713          	li	a4,1
   1492c:	00f4b423          	sd	a5,8(s1)
   14930:	00e49c23          	sh	a4,24(s1)
   14934:	00600793          	li	a5,6
   14938:	d5dff06f          	j	14694 <emdnorm+0x124>
   1493c:	00b00793          	li	a5,11
   14940:	80010737          	lui	a4,0x80010
   14944:	fff70713          	addi	a4,a4,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffecdf7>
   14948:	02079793          	slli	a5,a5,0x20
   1494c:	00c78793          	addi	a5,a5,12
   14950:	00e4aa23          	sw	a4,20(s1)
   14954:	00100713          	li	a4,1
   14958:	00f4b423          	sd	a5,8(s1)
   1495c:	00e49c23          	sh	a4,24(s1)
   14960:	00b00793          	li	a5,11
   14964:	d31ff06f          	j	14694 <emdnorm+0x124>
   14968:	de0a06e3          	beqz	s4,14754 <emdnorm+0x1e4>
   1496c:	e21ff06f          	j	1478c <emdnorm+0x21c>
   14970:	00800737          	lui	a4,0x800
   14974:	0ff70713          	addi	a4,a4,255 # 8000ff <__BSS_END__+0x7dcef7>
   14978:	00e4aa23          	sw	a4,20(s1)
   1497c:	00600793          	li	a5,6
   14980:	10000713          	li	a4,256
   14984:	cfdff06f          	j	14680 <emdnorm+0x110>

0000000000014988 <eiremain>:
   14988:	fa010113          	addi	sp,sp,-96
   1498c:	03313c23          	sd	s3,56(sp)
   14990:	00255983          	lhu	s3,2(a0)
   14994:	04913423          	sd	s1,72(sp)
   14998:	00058493          	mv	s1,a1
   1499c:	04113c23          	sd	ra,88(sp)
   149a0:	04813823          	sd	s0,80(sp)
   149a4:	05213023          	sd	s2,64(sp)
   149a8:	03413823          	sd	s4,48(sp)
   149ac:	00060913          	mv	s2,a2
   149b0:	03513423          	sd	s5,40(sp)
   149b4:	03613023          	sd	s6,32(sp)
   149b8:	01713c23          	sd	s7,24(sp)
   149bc:	01813823          	sd	s8,16(sp)
   149c0:	01913423          	sd	s9,8(sp)
   149c4:	01a13023          	sd	s10,0(sp)
   149c8:	00050a13          	mv	s4,a0
   149cc:	a21ff0ef          	jal	ra,143ec <enormlz>
   149d0:	0024d403          	lhu	s0,2(s1)
   149d4:	40a989b3          	sub	s3,s3,a0
   149d8:	00048513          	mv	a0,s1
   149dc:	a11ff0ef          	jal	ra,143ec <enormlz>
   149e0:	03490a93          	addi	s5,s2,52
   149e4:	40a40433          	sub	s0,s0,a0
   149e8:	04e90713          	addi	a4,s2,78
   149ec:	000a8793          	mv	a5,s5
   149f0:	00278793          	addi	a5,a5,2
   149f4:	fe079f23          	sh	zero,-2(a5)
   149f8:	fee79ce3          	bne	a5,a4,149f0 <eiremain+0x68>
   149fc:	09344a63          	blt	s0,s3,14a90 <eiremain+0x108>
   14a00:	004a0b93          	addi	s7,s4,4
   14a04:	00448b13          	addi	s6,s1,4
   14a08:	fff98993          	addi	s3,s3,-1
   14a0c:	01aa0c93          	addi	s9,s4,26
   14a10:	00248c13          	addi	s8,s1,2
   14a14:	000b0713          	mv	a4,s6
   14a18:	000b8793          	mv	a5,s7
   14a1c:	00278793          	addi	a5,a5,2
   14a20:	00270713          	addi	a4,a4,2
   14a24:	ffe7d603          	lhu	a2,-2(a5)
   14a28:	ffe75683          	lhu	a3,-2(a4)
   14a2c:	0ad61a63          	bne	a2,a3,14ae0 <eiremain+0x158>
   14a30:	fefc96e3          	bne	s9,a5,14a1c <eiremain+0x94>
   14a34:	018a0693          	addi	a3,s4,24
   14a38:	01848713          	addi	a4,s1,24
   14a3c:	00000613          	li	a2,0
   14a40:	00075783          	lhu	a5,0(a4)
   14a44:	0006d583          	lhu	a1,0(a3)
   14a48:	ffe70713          	addi	a4,a4,-2
   14a4c:	40c787b3          	sub	a5,a5,a2
   14a50:	40b787b3          	sub	a5,a5,a1
   14a54:	00f71123          	sh	a5,2(a4)
   14a58:	0107d793          	srli	a5,a5,0x10
   14a5c:	ffe68693          	addi	a3,a3,-2
   14a60:	0017f613          	andi	a2,a5,1
   14a64:	fcec1ee3          	bne	s8,a4,14a40 <eiremain+0xb8>
   14a68:	00100d13          	li	s10,1
   14a6c:	000a8513          	mv	a0,s5
   14a70:	ba8ff0ef          	jal	ra,13e18 <eshup1>
   14a74:	04c95783          	lhu	a5,76(s2)
   14a78:	fff40413          	addi	s0,s0,-1
   14a7c:	00048513          	mv	a0,s1
   14a80:	00fd6d33          	or	s10,s10,a5
   14a84:	05a91623          	sh	s10,76(s2)
   14a88:	b90ff0ef          	jal	ra,13e18 <eshup1>
   14a8c:	f93414e3          	bne	s0,s3,14a14 <eiremain+0x8c>
   14a90:	00040693          	mv	a3,s0
   14a94:	05013403          	ld	s0,80(sp)
   14a98:	05813083          	ld	ra,88(sp)
   14a9c:	03813983          	ld	s3,56(sp)
   14aa0:	03013a03          	ld	s4,48(sp)
   14aa4:	02813a83          	ld	s5,40(sp)
   14aa8:	02013b03          	ld	s6,32(sp)
   14aac:	01813b83          	ld	s7,24(sp)
   14ab0:	01013c03          	ld	s8,16(sp)
   14ab4:	00813c83          	ld	s9,8(sp)
   14ab8:	00013d03          	ld	s10,0(sp)
   14abc:	00090793          	mv	a5,s2
   14ac0:	00048513          	mv	a0,s1
   14ac4:	04013903          	ld	s2,64(sp)
   14ac8:	04813483          	ld	s1,72(sp)
   14acc:	00000713          	li	a4,0
   14ad0:	00000613          	li	a2,0
   14ad4:	00000593          	li	a1,0
   14ad8:	06010113          	addi	sp,sp,96
   14adc:	a95ff06f          	j	14570 <emdnorm>
   14ae0:	00000d13          	li	s10,0
   14ae4:	f8c6e4e3          	bltu	a3,a2,14a6c <eiremain+0xe4>
   14ae8:	f4dff06f          	j	14a34 <eiremain+0xac>

0000000000014aec <emovo.isra.6>:
   14aec:	00055703          	lhu	a4,0(a0)
   14af0:	00255783          	lhu	a5,2(a0)
   14af4:	00070663          	beqz	a4,14b00 <emovo.isra.6+0x14>
   14af8:	00008737          	lui	a4,0x8
   14afc:	00e7e7b3          	or	a5,a5,a4
   14b00:	00f59923          	sh	a5,18(a1)
   14b04:	00255703          	lhu	a4,2(a0)
   14b08:	000087b7          	lui	a5,0x8
   14b0c:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   14b10:	02f70463          	beq	a4,a5,14b38 <emovo.isra.6+0x4c>
   14b14:	00650793          	addi	a5,a0,6
   14b18:	01058593          	addi	a1,a1,16
   14b1c:	01850513          	addi	a0,a0,24
   14b20:	00278793          	addi	a5,a5,2
   14b24:	ffe7d703          	lhu	a4,-2(a5)
   14b28:	ffe58593          	addi	a1,a1,-2
   14b2c:	00e59123          	sh	a4,2(a1)
   14b30:	fea798e3          	bne	a5,a0,14b20 <emovo.isra.6+0x34>
   14b34:	00008067          	ret
   14b38:	00650793          	addi	a5,a0,6
   14b3c:	01a50513          	addi	a0,a0,26
   14b40:	0007d703          	lhu	a4,0(a5)
   14b44:	00278793          	addi	a5,a5,2
   14b48:	02071a63          	bnez	a4,14b7c <emovo.isra.6+0x90>
   14b4c:	fea79ae3          	bne	a5,a0,14b40 <emovo.isra.6+0x54>
   14b50:	01258713          	addi	a4,a1,18
   14b54:	00058793          	mv	a5,a1
   14b58:	00278793          	addi	a5,a5,2
   14b5c:	fe079f23          	sh	zero,-2(a5)
   14b60:	fef71ce3          	bne	a4,a5,14b58 <emovo.isra.6+0x6c>
   14b64:	0125d783          	lhu	a5,18(a1)
   14b68:	00008737          	lui	a4,0x8
   14b6c:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   14b70:	00e7e7b3          	or	a5,a5,a4
   14b74:	00f59923          	sh	a5,18(a1)
   14b78:	00008067          	ret
   14b7c:	01058713          	addi	a4,a1,16
   14b80:	00058793          	mv	a5,a1
   14b84:	00278793          	addi	a5,a5,2
   14b88:	fe079f23          	sh	zero,-2(a5)
   14b8c:	fef71ce3          	bne	a4,a5,14b84 <emovo.isra.6+0x98>
   14b90:	7fffc7b7          	lui	a5,0x7fffc
   14b94:	00f5a823          	sw	a5,16(a1)
   14b98:	00008067          	ret

0000000000014b9c <emul>:
   14b9c:	f4010113          	addi	sp,sp,-192
   14ba0:	09513423          	sd	s5,136(sp)
   14ba4:	01255a83          	lhu	s5,18(a0)
   14ba8:	000087b7          	lui	a5,0x8
   14bac:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   14bb0:	0a813823          	sd	s0,176(sp)
   14bb4:	0a913423          	sd	s1,168(sp)
   14bb8:	0b213023          	sd	s2,160(sp)
   14bbc:	09313c23          	sd	s3,152(sp)
   14bc0:	09613023          	sd	s6,128(sp)
   14bc4:	0a113c23          	sd	ra,184(sp)
   14bc8:	09413823          	sd	s4,144(sp)
   14bcc:	07713c23          	sd	s7,120(sp)
   14bd0:	07813823          	sd	s8,112(sp)
   14bd4:	07913423          	sd	s9,104(sp)
   14bd8:	0157fb33          	and	s6,a5,s5
   14bdc:	00050493          	mv	s1,a0
   14be0:	00058913          	mv	s2,a1
   14be4:	00060413          	mv	s0,a2
   14be8:	00068993          	mv	s3,a3
   14bec:	0afb1863          	bne	s6,a5,14c9c <emul+0x100>
   14bf0:	b7cff0ef          	jal	ra,13f6c <eisnan.part.0>
   14bf4:	20051c63          	bnez	a0,14e0c <emul+0x270>
   14bf8:	01295a03          	lhu	s4,18(s2)
   14bfc:	014b77b3          	and	a5,s6,s4
   14c00:	23679463          	bne	a5,s6,14e28 <emul+0x28c>
   14c04:	00090513          	mv	a0,s2
   14c08:	b64ff0ef          	jal	ra,13f6c <eisnan.part.0>
   14c0c:	0a051463          	bnez	a0,14cb4 <emul+0x118>
   14c10:	00048513          	mv	a0,s1
   14c14:	e10ff0ef          	jal	ra,14224 <eisinf.part.1>
   14c18:	20051e63          	bnez	a0,14e34 <emul+0x298>
   14c1c:	000087b7          	lui	a5,0x8
   14c20:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   14c24:	0147fa33          	and	s4,a5,s4
   14c28:	030a1a13          	slli	s4,s4,0x30
   14c2c:	030a5a13          	srli	s4,s4,0x30
   14c30:	2cfa1663          	bne	s4,a5,14efc <emul+0x360>
   14c34:	00090513          	mv	a0,s2
   14c38:	decff0ef          	jal	ra,14224 <eisinf.part.1>
   14c3c:	32051263          	bnez	a0,14f60 <emul+0x3c4>
   14c40:	0124d783          	lhu	a5,18(s1)
   14c44:	00fa77b3          	and	a5,s4,a5
   14c48:	21478463          	beq	a5,s4,14e50 <emul+0x2b4>
   14c4c:	00048513          	mv	a0,s1
   14c50:	00010593          	mv	a1,sp
   14c54:	bc8ff0ef          	jal	ra,1401c <emovi>
   14c58:	00090513          	mv	a0,s2
   14c5c:	02010593          	addi	a1,sp,32
   14c60:	bbcff0ef          	jal	ra,1401c <emovi>
   14c64:	00215483          	lhu	s1,2(sp)
   14c68:	02215903          	lhu	s2,34(sp)
   14c6c:	08049a63          	bnez	s1,14d00 <emul+0x164>
   14c70:	00410793          	addi	a5,sp,4
   14c74:	01810693          	addi	a3,sp,24
   14c78:	2cd78063          	beq	a5,a3,14f38 <emul+0x39c>
   14c7c:	00278793          	addi	a5,a5,2
   14c80:	ffe7d703          	lhu	a4,-2(a5)
   14c84:	fe070ae3          	beqz	a4,14c78 <emul+0xdc>
   14c88:	00010513          	mv	a0,sp
   14c8c:	f60ff0ef          	jal	ra,143ec <enormlz>
   14c90:	40a004b3          	neg	s1,a0
   14c94:	02215703          	lhu	a4,34(sp)
   14c98:	06c0006f          	j	14d04 <emul+0x168>
   14c9c:	0125da03          	lhu	s4,18(a1)
   14ca0:	0147f733          	and	a4,a5,s4
   14ca4:	faf714e3          	bne	a4,a5,14c4c <emul+0xb0>
   14ca8:	00058513          	mv	a0,a1
   14cac:	ac0ff0ef          	jal	ra,13f6c <eisnan.part.0>
   14cb0:	f60506e3          	beqz	a0,14c1c <emul+0x80>
   14cb4:	01490713          	addi	a4,s2,20
   14cb8:	00290913          	addi	s2,s2,2
   14cbc:	ffe95783          	lhu	a5,-2(s2)
   14cc0:	00240413          	addi	s0,s0,2
   14cc4:	fef41f23          	sh	a5,-2(s0)
   14cc8:	fee918e3          	bne	s2,a4,14cb8 <emul+0x11c>
   14ccc:	0b813083          	ld	ra,184(sp)
   14cd0:	0b013403          	ld	s0,176(sp)
   14cd4:	0a813483          	ld	s1,168(sp)
   14cd8:	0a013903          	ld	s2,160(sp)
   14cdc:	09813983          	ld	s3,152(sp)
   14ce0:	09013a03          	ld	s4,144(sp)
   14ce4:	08813a83          	ld	s5,136(sp)
   14ce8:	08013b03          	ld	s6,128(sp)
   14cec:	07813b83          	ld	s7,120(sp)
   14cf0:	07013c03          	ld	s8,112(sp)
   14cf4:	06813c83          	ld	s9,104(sp)
   14cf8:	0c010113          	addi	sp,sp,192
   14cfc:	00008067          	ret
   14d00:	00090713          	mv	a4,s2
   14d04:	00090b13          	mv	s6,s2
   14d08:	02410793          	addi	a5,sp,36
   14d0c:	03810693          	addi	a3,sp,56
   14d10:	02071263          	bnez	a4,14d34 <emul+0x198>
   14d14:	22f68c63          	beq	a3,a5,14f4c <emul+0x3b0>
   14d18:	00278793          	addi	a5,a5,2
   14d1c:	ffe7d703          	lhu	a4,-2(a5)
   14d20:	fe070ae3          	beqz	a4,14d14 <emul+0x178>
   14d24:	02010513          	addi	a0,sp,32
   14d28:	ec4ff0ef          	jal	ra,143ec <enormlz>
   14d2c:	02215703          	lhu	a4,34(sp)
   14d30:	40a90b33          	sub	s6,s2,a0
   14d34:	02015783          	lhu	a5,32(sp)
   14d38:	03898a93          	addi	s5,s3,56
   14d3c:	02e99b23          	sh	a4,54(s3)
   14d40:	02f99a23          	sh	a5,52(s3)
   14d44:	04e98713          	addi	a4,s3,78
   14d48:	000a8793          	mv	a5,s5
   14d4c:	00079023          	sh	zero,0(a5)
   14d50:	00278793          	addi	a5,a5,2
   14d54:	fef71ce3          	bne	a4,a5,14d4c <emul+0x1b0>
   14d58:	04c98b93          	addi	s7,s3,76
   14d5c:	00000a13          	li	s4,0
   14d60:	01810913          	addi	s2,sp,24
   14d64:	00410c93          	addi	s9,sp,4
   14d68:	04210c13          	addi	s8,sp,66
   14d6c:	00095503          	lhu	a0,0(s2)
   14d70:	ffe90913          	addi	s2,s2,-2
   14d74:	14051263          	bnez	a0,14eb8 <emul+0x31c>
   14d78:	04c9d703          	lhu	a4,76(s3)
   14d7c:	000b8793          	mv	a5,s7
   14d80:	00ea6a33          	or	s4,s4,a4
   14d84:	ffe78793          	addi	a5,a5,-2
   14d88:	0007d703          	lhu	a4,0(a5)
   14d8c:	00e79123          	sh	a4,2(a5)
   14d90:	ff579ae3          	bne	a5,s5,14d84 <emul+0x1e8>
   14d94:	02099c23          	sh	zero,56(s3)
   14d98:	fd991ae3          	bne	s2,s9,14d6c <emul+0x1d0>
   14d9c:	03498713          	addi	a4,s3,52
   14da0:	02010793          	addi	a5,sp,32
   14da4:	03a10693          	addi	a3,sp,58
   14da8:	00075603          	lhu	a2,0(a4)
   14dac:	00278793          	addi	a5,a5,2
   14db0:	00270713          	addi	a4,a4,2
   14db4:	fec79f23          	sh	a2,-2(a5)
   14db8:	fef698e3          	bne	a3,a5,14da8 <emul+0x20c>
   14dbc:	ffffc6b7          	lui	a3,0xffffc
   14dc0:	016484b3          	add	s1,s1,s6
   14dc4:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd8dfa>
   14dc8:	000a0593          	mv	a1,s4
   14dcc:	02010513          	addi	a0,sp,32
   14dd0:	00098793          	mv	a5,s3
   14dd4:	04000713          	li	a4,64
   14dd8:	00d486b3          	add	a3,s1,a3
   14ddc:	00000613          	li	a2,0
   14de0:	f90ff0ef          	jal	ra,14570 <emdnorm>
   14de4:	02015703          	lhu	a4,32(sp)
   14de8:	00015783          	lhu	a5,0(sp)
   14dec:	00040593          	mv	a1,s0
   14df0:	02010513          	addi	a0,sp,32
   14df4:	40e787b3          	sub	a5,a5,a4
   14df8:	00f037b3          	snez	a5,a5
   14dfc:	40f007bb          	negw	a5,a5
   14e00:	02f11023          	sh	a5,32(sp)
   14e04:	ce9ff0ef          	jal	ra,14aec <emovo.isra.6>
   14e08:	ec5ff06f          	j	14ccc <emul+0x130>
   14e0c:	01448713          	addi	a4,s1,20
   14e10:	00248493          	addi	s1,s1,2
   14e14:	ffe4d783          	lhu	a5,-2(s1)
   14e18:	00240413          	addi	s0,s0,2
   14e1c:	fef41f23          	sh	a5,-2(s0)
   14e20:	fee498e3          	bne	s1,a4,14e10 <emul+0x274>
   14e24:	ea9ff06f          	j	14ccc <emul+0x130>
   14e28:	00048513          	mv	a0,s1
   14e2c:	bf8ff0ef          	jal	ra,14224 <eisinf.part.1>
   14e30:	0c050863          	beqz	a0,14f00 <emul+0x364>
   14e34:	0000c597          	auipc	a1,0xc
   14e38:	60c58593          	addi	a1,a1,1548 # 21440 <ezero>
   14e3c:	00090513          	mv	a0,s2
   14e40:	ac8ff0ef          	jal	ra,14108 <ecmp>
   14e44:	14050063          	beqz	a0,14f84 <emul+0x3e8>
   14e48:	01295a03          	lhu	s4,18(s2)
   14e4c:	dd1ff06f          	j	14c1c <emul+0x80>
   14e50:	00048513          	mv	a0,s1
   14e54:	bd0ff0ef          	jal	ra,14224 <eisinf.part.1>
   14e58:	00051863          	bnez	a0,14e68 <emul+0x2cc>
   14e5c:	00090513          	mv	a0,s2
   14e60:	bc4ff0ef          	jal	ra,14224 <eisinf.part.1>
   14e64:	de0504e3          	beqz	a0,14c4c <emul+0xb0>
   14e68:	00048513          	mv	a0,s1
   14e6c:	970ff0ef          	jal	ra,13fdc <eisneg>
   14e70:	00050493          	mv	s1,a0
   14e74:	00090513          	mv	a0,s2
   14e78:	964ff0ef          	jal	ra,13fdc <eisneg>
   14e7c:	40a48533          	sub	a0,s1,a0
   14e80:	00a03533          	snez	a0,a0
   14e84:	00f51513          	slli	a0,a0,0xf
   14e88:	00a41923          	sh	a0,18(s0)
   14e8c:	01240713          	addi	a4,s0,18
   14e90:	00040793          	mv	a5,s0
   14e94:	00278793          	addi	a5,a5,2
   14e98:	fe079f23          	sh	zero,-2(a5)
   14e9c:	fee79ce3          	bne	a5,a4,14e94 <emul+0x2f8>
   14ea0:	01245783          	lhu	a5,18(s0)
   14ea4:	00008737          	lui	a4,0x8
   14ea8:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   14eac:	00e7e7b3          	or	a5,a5,a4
   14eb0:	00f41923          	sh	a5,18(s0)
   14eb4:	e19ff06f          	j	14ccc <emul+0x130>
   14eb8:	04010613          	addi	a2,sp,64
   14ebc:	02010593          	addi	a1,sp,32
   14ec0:	fcdfe0ef          	jal	ra,13e8c <m16m>
   14ec4:	000b8613          	mv	a2,s7
   14ec8:	00000593          	li	a1,0
   14ecc:	05810713          	addi	a4,sp,88
   14ed0:	00065503          	lhu	a0,0(a2)
   14ed4:	00075783          	lhu	a5,0(a4)
   14ed8:	ffe60613          	addi	a2,a2,-2
   14edc:	ffe70713          	addi	a4,a4,-2
   14ee0:	00a787b3          	add	a5,a5,a0
   14ee4:	00b787b3          	add	a5,a5,a1
   14ee8:	00f61123          	sh	a5,2(a2)
   14eec:	0107d793          	srli	a5,a5,0x10
   14ef0:	0017f593          	andi	a1,a5,1
   14ef4:	fd871ee3          	bne	a4,s8,14ed0 <emul+0x334>
   14ef8:	e81ff06f          	j	14d78 <emul+0x1dc>
   14efc:	0124da83          	lhu	s5,18(s1)
   14f00:	000087b7          	lui	a5,0x8
   14f04:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   14f08:	0157fab3          	and	s5,a5,s5
   14f0c:	030a9a93          	slli	s5,s5,0x30
   14f10:	030ada93          	srli	s5,s5,0x30
   14f14:	d2fa9ce3          	bne	s5,a5,14c4c <emul+0xb0>
   14f18:	00048513          	mv	a0,s1
   14f1c:	b08ff0ef          	jal	ra,14224 <eisinf.part.1>
   14f20:	f40514e3          	bnez	a0,14e68 <emul+0x2cc>
   14f24:	01295783          	lhu	a5,18(s2)
   14f28:	fff7c793          	not	a5,a5
   14f2c:	03179713          	slli	a4,a5,0x31
   14f30:	d0071ee3          	bnez	a4,14c4c <emul+0xb0>
   14f34:	f29ff06f          	j	14e5c <emul+0x2c0>
   14f38:	01440793          	addi	a5,s0,20
   14f3c:	00240413          	addi	s0,s0,2
   14f40:	fe041f23          	sh	zero,-2(s0)
   14f44:	fe879ce3          	bne	a5,s0,14f3c <emul+0x3a0>
   14f48:	d85ff06f          	j	14ccc <emul+0x130>
   14f4c:	01440793          	addi	a5,s0,20
   14f50:	00240413          	addi	s0,s0,2
   14f54:	fe041f23          	sh	zero,-2(s0)
   14f58:	fef41ce3          	bne	s0,a5,14f50 <emul+0x3b4>
   14f5c:	d71ff06f          	j	14ccc <emul+0x130>
   14f60:	0000c597          	auipc	a1,0xc
   14f64:	4e058593          	addi	a1,a1,1248 # 21440 <ezero>
   14f68:	00048513          	mv	a0,s1
   14f6c:	99cff0ef          	jal	ra,14108 <ecmp>
   14f70:	00050a63          	beqz	a0,14f84 <emul+0x3e8>
   14f74:	0124d783          	lhu	a5,18(s1)
   14f78:	00fa77b3          	and	a5,s4,a5
   14f7c:	f9478ee3          	beq	a5,s4,14f18 <emul+0x37c>
   14f80:	fa5ff06f          	j	14f24 <emul+0x388>
   14f84:	01040713          	addi	a4,s0,16
   14f88:	00040793          	mv	a5,s0
   14f8c:	00278793          	addi	a5,a5,2
   14f90:	fe079f23          	sh	zero,-2(a5)
   14f94:	fee79ce3          	bne	a5,a4,14f8c <emul+0x3f0>
   14f98:	7fffc7b7          	lui	a5,0x7fffc
   14f9c:	00f42823          	sw	a5,16(s0)
   14fa0:	d2dff06f          	j	14ccc <emul+0x130>

0000000000014fa4 <ediv>:
   14fa4:	01255783          	lhu	a5,18(a0)
   14fa8:	f2010113          	addi	sp,sp,-224
   14fac:	0c813823          	sd	s0,208(sp)
   14fb0:	fff7c793          	not	a5,a5
   14fb4:	0c913423          	sd	s1,200(sp)
   14fb8:	0d213023          	sd	s2,192(sp)
   14fbc:	09813823          	sd	s8,144(sp)
   14fc0:	0c113c23          	sd	ra,216(sp)
   14fc4:	0b313c23          	sd	s3,184(sp)
   14fc8:	0b413823          	sd	s4,176(sp)
   14fcc:	0b513423          	sd	s5,168(sp)
   14fd0:	0b613023          	sd	s6,160(sp)
   14fd4:	09713c23          	sd	s7,152(sp)
   14fd8:	09913423          	sd	s9,136(sp)
   14fdc:	09a13023          	sd	s10,128(sp)
   14fe0:	07b13c23          	sd	s11,120(sp)
   14fe4:	03179713          	slli	a4,a5,0x31
   14fe8:	00050493          	mv	s1,a0
   14fec:	00058913          	mv	s2,a1
   14ff0:	00060413          	mv	s0,a2
   14ff4:	00068c13          	mv	s8,a3
   14ff8:	00071663          	bnez	a4,15004 <ediv+0x60>
   14ffc:	f71fe0ef          	jal	ra,13f6c <eisnan.part.0>
   15000:	38051463          	bnez	a0,15388 <ediv+0x3e4>
   15004:	01295783          	lhu	a5,18(s2)
   15008:	fff7c793          	not	a5,a5
   1500c:	03179713          	slli	a4,a5,0x31
   15010:	08070e63          	beqz	a4,150ac <ediv+0x108>
   15014:	0000c597          	auipc	a1,0xc
   15018:	42c58593          	addi	a1,a1,1068 # 21440 <ezero>
   1501c:	00048513          	mv	a0,s1
   15020:	8e8ff0ef          	jal	ra,14108 <ecmp>
   15024:	10050463          	beqz	a0,1512c <ediv+0x188>
   15028:	0124d983          	lhu	s3,18(s1)
   1502c:	01295703          	lhu	a4,18(s2)
   15030:	000087b7          	lui	a5,0x8
   15034:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   15038:	0137f9b3          	and	s3,a5,s3
   1503c:	00e7fa33          	and	s4,a5,a4
   15040:	08f99a63          	bne	s3,a5,150d4 <ediv+0x130>
   15044:	00048513          	mv	a0,s1
   15048:	9dcff0ef          	jal	ra,14224 <eisinf.part.1>
   1504c:	10050a63          	beqz	a0,15160 <ediv+0x1bc>
   15050:	013a1863          	bne	s4,s3,15060 <ediv+0xbc>
   15054:	00090513          	mv	a0,s2
   15058:	9ccff0ef          	jal	ra,14224 <eisinf.part.1>
   1505c:	0e051263          	bnez	a0,15140 <ediv+0x19c>
   15060:	01440793          	addi	a5,s0,20
   15064:	00240413          	addi	s0,s0,2
   15068:	fe041f23          	sh	zero,-2(s0)
   1506c:	fef41ce3          	bne	s0,a5,15064 <ediv+0xc0>
   15070:	0d813083          	ld	ra,216(sp)
   15074:	0d013403          	ld	s0,208(sp)
   15078:	0c813483          	ld	s1,200(sp)
   1507c:	0c013903          	ld	s2,192(sp)
   15080:	0b813983          	ld	s3,184(sp)
   15084:	0b013a03          	ld	s4,176(sp)
   15088:	0a813a83          	ld	s5,168(sp)
   1508c:	0a013b03          	ld	s6,160(sp)
   15090:	09813b83          	ld	s7,152(sp)
   15094:	09013c03          	ld	s8,144(sp)
   15098:	08813c83          	ld	s9,136(sp)
   1509c:	08013d03          	ld	s10,128(sp)
   150a0:	07813d83          	ld	s11,120(sp)
   150a4:	0e010113          	addi	sp,sp,224
   150a8:	00008067          	ret
   150ac:	00090513          	mv	a0,s2
   150b0:	ebdfe0ef          	jal	ra,13f6c <eisnan.part.0>
   150b4:	f60500e3          	beqz	a0,15014 <ediv+0x70>
   150b8:	01490713          	addi	a4,s2,20
   150bc:	00290913          	addi	s2,s2,2
   150c0:	ffe95783          	lhu	a5,-2(s2)
   150c4:	00240413          	addi	s0,s0,2
   150c8:	fef41f23          	sh	a5,-2(s0)
   150cc:	fee918e3          	bne	s2,a4,150bc <ediv+0x118>
   150d0:	fa1ff06f          	j	15070 <ediv+0xcc>
   150d4:	08fa0863          	beq	s4,a5,15164 <ediv+0x1c0>
   150d8:	01010593          	addi	a1,sp,16
   150dc:	00048513          	mv	a0,s1
   150e0:	f3dfe0ef          	jal	ra,1401c <emovi>
   150e4:	00090513          	mv	a0,s2
   150e8:	03010593          	addi	a1,sp,48
   150ec:	f31fe0ef          	jal	ra,1401c <emovi>
   150f0:	03215c83          	lhu	s9,50(sp)
   150f4:	01215903          	lhu	s2,18(sp)
   150f8:	0c0c9463          	bnez	s9,151c0 <ediv+0x21c>
   150fc:	03410793          	addi	a5,sp,52
   15100:	04810493          	addi	s1,sp,72
   15104:	34f48a63          	beq	s1,a5,15458 <ediv+0x4b4>
   15108:	00278793          	addi	a5,a5,2
   1510c:	ffe7d703          	lhu	a4,-2(a5)
   15110:	fe070ae3          	beqz	a4,15104 <ediv+0x160>
   15114:	03010513          	addi	a0,sp,48
   15118:	ad4ff0ef          	jal	ra,143ec <enormlz>
   1511c:	40a007b3          	neg	a5,a0
   15120:	00f13423          	sd	a5,8(sp)
   15124:	01215603          	lhu	a2,18(sp)
   15128:	0a00006f          	j	151c8 <ediv+0x224>
   1512c:	0000c597          	auipc	a1,0xc
   15130:	31458593          	addi	a1,a1,788 # 21440 <ezero>
   15134:	00090513          	mv	a0,s2
   15138:	fd1fe0ef          	jal	ra,14108 <ecmp>
   1513c:	ee0516e3          	bnez	a0,15028 <ediv+0x84>
   15140:	01040713          	addi	a4,s0,16
   15144:	00040793          	mv	a5,s0
   15148:	00278793          	addi	a5,a5,2
   1514c:	fe079f23          	sh	zero,-2(a5)
   15150:	fee79ce3          	bne	a5,a4,15148 <ediv+0x1a4>
   15154:	7fffc7b7          	lui	a5,0x7fffc
   15158:	00f42823          	sw	a5,16(s0)
   1515c:	f15ff06f          	j	15070 <ediv+0xcc>
   15160:	f73a1ce3          	bne	s4,s3,150d8 <ediv+0x134>
   15164:	00090513          	mv	a0,s2
   15168:	8bcff0ef          	jal	ra,14224 <eisinf.part.1>
   1516c:	f60506e3          	beqz	a0,150d8 <ediv+0x134>
   15170:	00048513          	mv	a0,s1
   15174:	e69fe0ef          	jal	ra,13fdc <eisneg>
   15178:	00050493          	mv	s1,a0
   1517c:	00090513          	mv	a0,s2
   15180:	e5dfe0ef          	jal	ra,13fdc <eisneg>
   15184:	40a48533          	sub	a0,s1,a0
   15188:	00a03533          	snez	a0,a0
   1518c:	00f51513          	slli	a0,a0,0xf
   15190:	00a41923          	sh	a0,18(s0)
   15194:	01240713          	addi	a4,s0,18
   15198:	00040793          	mv	a5,s0
   1519c:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd8dfa>
   151a0:	fe079f23          	sh	zero,-2(a5)
   151a4:	fee79ce3          	bne	a5,a4,1519c <ediv+0x1f8>
   151a8:	01245783          	lhu	a5,18(s0)
   151ac:	00008737          	lui	a4,0x8
   151b0:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   151b4:	00e7e7b3          	or	a5,a5,a4
   151b8:	00f41923          	sh	a5,18(s0)
   151bc:	eb5ff06f          	j	15070 <ediv+0xcc>
   151c0:	01913423          	sd	s9,8(sp)
   151c4:	00090613          	mv	a2,s2
   151c8:	01213023          	sd	s2,0(sp)
   151cc:	01410793          	addi	a5,sp,20
   151d0:	02810693          	addi	a3,sp,40
   151d4:	02061263          	bnez	a2,151f8 <ediv+0x254>
   151d8:	28f68a63          	beq	a3,a5,1546c <ediv+0x4c8>
   151dc:	00278793          	addi	a5,a5,2
   151e0:	ffe7d703          	lhu	a4,-2(a5)
   151e4:	fe070ae3          	beqz	a4,151d8 <ediv+0x234>
   151e8:	01010513          	addi	a0,sp,16
   151ec:	a00ff0ef          	jal	ra,143ec <enormlz>
   151f0:	40a907b3          	sub	a5,s2,a0
   151f4:	00f13023          	sd	a5,0(sp)
   151f8:	03012703          	lw	a4,48(sp)
   151fc:	038c0d93          	addi	s11,s8,56
   15200:	000d8793          	mv	a5,s11
   15204:	02ec2a23          	sw	a4,52(s8)
   15208:	04ec0993          	addi	s3,s8,78
   1520c:	00278793          	addi	a5,a5,2
   15210:	fe079f23          	sh	zero,-2(a5)
   15214:	fef99ce3          	bne	s3,a5,1520c <ediv+0x268>
   15218:	03010513          	addi	a0,sp,48
   1521c:	b95fe0ef          	jal	ra,13db0 <eshdn1>
   15220:	01615d03          	lhu	s10,22(sp)
   15224:	00010ab7          	lui	s5,0x10
   15228:	04810493          	addi	s1,sp,72
   1522c:	010d1b13          	slli	s6,s10,0x10
   15230:	41ab0b33          	sub	s6,s6,s10
   15234:	03210b93          	addi	s7,sp,50
   15238:	fffa8a93          	addi	s5,s5,-1 # ffff <main-0xb1>
   1523c:	06a10913          	addi	s2,sp,106
   15240:	05210a13          	addi	s4,sp,82
   15244:	03415503          	lhu	a0,52(sp)
   15248:	03615783          	lhu	a5,54(sp)
   1524c:	000a8c93          	mv	s9,s5
   15250:	01051513          	slli	a0,a0,0x10
   15254:	00f50533          	add	a0,a0,a5
   15258:	00ab6a63          	bltu	s6,a0,1526c <ediv+0x2c8>
   1525c:	000d0593          	mv	a1,s10
   15260:	ffdfa0ef          	jal	ra,1025c <__udivdi3>
   15264:	03051c93          	slli	s9,a0,0x30
   15268:	030cdc93          	srli	s9,s9,0x30
   1526c:	05010613          	addi	a2,sp,80
   15270:	01010593          	addi	a1,sp,16
   15274:	000c8513          	mv	a0,s9
   15278:	c15fe0ef          	jal	ra,13e8c <m16m>
   1527c:	03410613          	addi	a2,sp,52
   15280:	05410793          	addi	a5,sp,84
   15284:	00278793          	addi	a5,a5,2
   15288:	00260613          	addi	a2,a2,2
   1528c:	ffe7d503          	lhu	a0,-2(a5)
   15290:	ffe65583          	lhu	a1,-2(a2)
   15294:	10b51863          	bne	a0,a1,153a4 <ediv+0x400>
   15298:	ff2796e3          	bne	a5,s2,15284 <ediv+0x2e0>
   1529c:	00000513          	li	a0,0
   152a0:	06810593          	addi	a1,sp,104
   152a4:	00048613          	mv	a2,s1
   152a8:	00065783          	lhu	a5,0(a2)
   152ac:	0005d803          	lhu	a6,0(a1)
   152b0:	ffe60613          	addi	a2,a2,-2
   152b4:	40a787b3          	sub	a5,a5,a0
   152b8:	410787b3          	sub	a5,a5,a6
   152bc:	00f61123          	sh	a5,2(a2)
   152c0:	0107d793          	srli	a5,a5,0x10
   152c4:	ffe58593          	addi	a1,a1,-2
   152c8:	0017f513          	andi	a0,a5,1
   152cc:	fd761ee3          	bne	a2,s7,152a8 <ediv+0x304>
   152d0:	019d9023          	sh	s9,0(s11)
   152d4:	03410793          	addi	a5,sp,52
   152d8:	00278793          	addi	a5,a5,2
   152dc:	0007d683          	lhu	a3,0(a5)
   152e0:	fed79f23          	sh	a3,-2(a5)
   152e4:	fe979ae3          	bne	a5,s1,152d8 <ediv+0x334>
   152e8:	04011423          	sh	zero,72(sp)
   152ec:	002d8d93          	addi	s11,s11,2
   152f0:	f5b99ae3          	bne	s3,s11,15244 <ediv+0x2a0>
   152f4:	00000593          	li	a1,0
   152f8:	03410793          	addi	a5,sp,52
   152fc:	04a10693          	addi	a3,sp,74
   15300:	00278793          	addi	a5,a5,2
   15304:	ffe7d703          	lhu	a4,-2(a5)
   15308:	00e5e5b3          	or	a1,a1,a4
   1530c:	fed79ae3          	bne	a5,a3,15300 <ediv+0x35c>
   15310:	0005859b          	sext.w	a1,a1
   15314:	00b035b3          	snez	a1,a1
   15318:	034c0713          	addi	a4,s8,52
   1531c:	03010793          	addi	a5,sp,48
   15320:	00075603          	lhu	a2,0(a4)
   15324:	00278793          	addi	a5,a5,2
   15328:	00270713          	addi	a4,a4,2
   1532c:	fec79f23          	sh	a2,-2(a5)
   15330:	fef698e3          	bne	a3,a5,15320 <ediv+0x37c>
   15334:	00813783          	ld	a5,8(sp)
   15338:	00013703          	ld	a4,0(sp)
   1533c:	000046b7          	lui	a3,0x4
   15340:	fff68693          	addi	a3,a3,-1 # 3fff <main-0xc0b1>
   15344:	40e78cb3          	sub	s9,a5,a4
   15348:	03010513          	addi	a0,sp,48
   1534c:	000c0793          	mv	a5,s8
   15350:	04000713          	li	a4,64
   15354:	00dc86b3          	add	a3,s9,a3
   15358:	00000613          	li	a2,0
   1535c:	a14ff0ef          	jal	ra,14570 <emdnorm>
   15360:	03015703          	lhu	a4,48(sp)
   15364:	01015783          	lhu	a5,16(sp)
   15368:	00040593          	mv	a1,s0
   1536c:	03010513          	addi	a0,sp,48
   15370:	40e787b3          	sub	a5,a5,a4
   15374:	00f037b3          	snez	a5,a5
   15378:	40f007bb          	negw	a5,a5
   1537c:	02f11823          	sh	a5,48(sp)
   15380:	f6cff0ef          	jal	ra,14aec <emovo.isra.6>
   15384:	cedff06f          	j	15070 <ediv+0xcc>
   15388:	01448713          	addi	a4,s1,20
   1538c:	00248493          	addi	s1,s1,2
   15390:	ffe4d783          	lhu	a5,-2(s1)
   15394:	00240413          	addi	s0,s0,2
   15398:	fef41f23          	sh	a5,-2(s0)
   1539c:	fee498e3          	bne	s1,a4,1538c <ediv+0x3e8>
   153a0:	cd1ff06f          	j	15070 <ediv+0xcc>
   153a4:	eea5fce3          	bgeu	a1,a0,1529c <ediv+0x2f8>
   153a8:	fffc879b          	addiw	a5,s9,-1
   153ac:	03079893          	slli	a7,a5,0x30
   153b0:	0308d893          	srli	a7,a7,0x30
   153b4:	00000513          	li	a0,0
   153b8:	02810593          	addi	a1,sp,40
   153bc:	06810613          	addi	a2,sp,104
   153c0:	00065783          	lhu	a5,0(a2)
   153c4:	0005d803          	lhu	a6,0(a1)
   153c8:	ffe60613          	addi	a2,a2,-2
   153cc:	40a787b3          	sub	a5,a5,a0
   153d0:	410787b3          	sub	a5,a5,a6
   153d4:	00f61123          	sh	a5,2(a2)
   153d8:	0107d793          	srli	a5,a5,0x10
   153dc:	ffe58593          	addi	a1,a1,-2
   153e0:	0017f513          	andi	a0,a5,1
   153e4:	fd461ee3          	bne	a2,s4,153c0 <ediv+0x41c>
   153e8:	03410613          	addi	a2,sp,52
   153ec:	05410793          	addi	a5,sp,84
   153f0:	00278793          	addi	a5,a5,2
   153f4:	00260613          	addi	a2,a2,2
   153f8:	ffe7d503          	lhu	a0,-2(a5)
   153fc:	ffe65583          	lhu	a1,-2(a2)
   15400:	00b51863          	bne	a0,a1,15410 <ediv+0x46c>
   15404:	ff2796e3          	bne	a5,s2,153f0 <ediv+0x44c>
   15408:	00088c93          	mv	s9,a7
   1540c:	e91ff06f          	j	1529c <ediv+0x2f8>
   15410:	fea5fce3          	bgeu	a1,a0,15408 <ediv+0x464>
   15414:	ffec869b          	addiw	a3,s9,-2
   15418:	03069c93          	slli	s9,a3,0x30
   1541c:	030cdc93          	srli	s9,s9,0x30
   15420:	00000513          	li	a0,0
   15424:	02810593          	addi	a1,sp,40
   15428:	06810613          	addi	a2,sp,104
   1542c:	00065783          	lhu	a5,0(a2)
   15430:	0005d803          	lhu	a6,0(a1)
   15434:	ffe60613          	addi	a2,a2,-2
   15438:	40a787b3          	sub	a5,a5,a0
   1543c:	410787b3          	sub	a5,a5,a6
   15440:	00f61123          	sh	a5,2(a2)
   15444:	0107d793          	srli	a5,a5,0x10
   15448:	ffe58593          	addi	a1,a1,-2
   1544c:	0017f513          	andi	a0,a5,1
   15450:	fd461ee3          	bne	a2,s4,1542c <ediv+0x488>
   15454:	e49ff06f          	j	1529c <ediv+0x2f8>
   15458:	01440793          	addi	a5,s0,20
   1545c:	00240413          	addi	s0,s0,2
   15460:	fe041f23          	sh	zero,-2(s0)
   15464:	fe879ce3          	bne	a5,s0,1545c <ediv+0x4b8>
   15468:	c09ff06f          	j	15070 <ediv+0xcc>
   1546c:	01015703          	lhu	a4,16(sp)
   15470:	03015783          	lhu	a5,48(sp)
   15474:	00f70463          	beq	a4,a5,1547c <ediv+0x4d8>
   15478:	00008637          	lui	a2,0x8
   1547c:	00c41923          	sh	a2,18(s0)
   15480:	01240713          	addi	a4,s0,18
   15484:	00040793          	mv	a5,s0
   15488:	00278793          	addi	a5,a5,2
   1548c:	fe079f23          	sh	zero,-2(a5)
   15490:	fef71ce3          	bne	a4,a5,15488 <ediv+0x4e4>
   15494:	01245783          	lhu	a5,18(s0)
   15498:	00008737          	lui	a4,0x8
   1549c:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   154a0:	00e7e7b3          	or	a5,a5,a4
   154a4:	00f41923          	sh	a5,18(s0)
   154a8:	bc9ff06f          	j	15070 <ediv+0xcc>

00000000000154ac <e113toe.isra.8>:
   154ac:	fd010113          	addi	sp,sp,-48
   154b0:	02813023          	sd	s0,32(sp)
   154b4:	02113423          	sd	ra,40(sp)
   154b8:	00058413          	mv	s0,a1
   154bc:	00010793          	mv	a5,sp
   154c0:	01a10713          	addi	a4,sp,26
   154c4:	00278793          	addi	a5,a5,2
   154c8:	fe079f23          	sh	zero,-2(a5)
   154cc:	fee79ce3          	bne	a5,a4,154c4 <e113toe.isra.8+0x18>
   154d0:	00e55603          	lhu	a2,14(a0)
   154d4:	0106179b          	slliw	a5,a2,0x10
   154d8:	4107d79b          	sraiw	a5,a5,0x10
   154dc:	02079713          	slli	a4,a5,0x20
   154e0:	06074a63          	bltz	a4,15554 <e113toe.isra.8+0xa8>
   154e4:	000087b7          	lui	a5,0x8
   154e8:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   154ec:	00011023          	sh	zero,0(sp)
   154f0:	00f67633          	and	a2,a2,a5
   154f4:	06f60c63          	beq	a2,a5,1556c <e113toe.isra.8+0xc0>
   154f8:	00e50793          	addi	a5,a0,14
   154fc:	00c11123          	sh	a2,2(sp)
   15500:	00610713          	addi	a4,sp,6
   15504:	ffe78793          	addi	a5,a5,-2
   15508:	0007d683          	lhu	a3,0(a5)
   1550c:	00270713          	addi	a4,a4,2
   15510:	fed71f23          	sh	a3,-2(a4)
   15514:	fef518e3          	bne	a0,a5,15504 <e113toe.isra.8+0x58>
   15518:	02061263          	bnez	a2,1553c <e113toe.isra.8+0x90>
   1551c:	00011223          	sh	zero,4(sp)
   15520:	00040593          	mv	a1,s0
   15524:	00010513          	mv	a0,sp
   15528:	dc4ff0ef          	jal	ra,14aec <emovo.isra.6>
   1552c:	02813083          	ld	ra,40(sp)
   15530:	02013403          	ld	s0,32(sp)
   15534:	03010113          	addi	sp,sp,48
   15538:	00008067          	ret
   1553c:	00100793          	li	a5,1
   15540:	fff00593          	li	a1,-1
   15544:	00010513          	mv	a0,sp
   15548:	00f11223          	sh	a5,4(sp)
   1554c:	cf5fe0ef          	jal	ra,14240 <eshift.part.3>
   15550:	fd1ff06f          	j	15520 <e113toe.isra.8+0x74>
   15554:	fff00793          	li	a5,-1
   15558:	00f11023          	sh	a5,0(sp)
   1555c:	000087b7          	lui	a5,0x8
   15560:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   15564:	00f67633          	and	a2,a2,a5
   15568:	f8f618e3          	bne	a2,a5,154f8 <e113toe.isra.8+0x4c>
   1556c:	00050793          	mv	a5,a0
   15570:	00e50693          	addi	a3,a0,14
   15574:	0007d703          	lhu	a4,0(a5)
   15578:	00278793          	addi	a5,a5,2
   1557c:	04071c63          	bnez	a4,155d4 <e113toe.isra.8+0x128>
   15580:	fef69ae3          	bne	a3,a5,15574 <e113toe.isra.8+0xc8>
   15584:	01440713          	addi	a4,s0,20
   15588:	00040793          	mv	a5,s0
   1558c:	00278793          	addi	a5,a5,2
   15590:	fe079f23          	sh	zero,-2(a5)
   15594:	fee79ce3          	bne	a5,a4,1558c <e113toe.isra.8+0xe0>
   15598:	01240713          	addi	a4,s0,18
   1559c:	00040793          	mv	a5,s0
   155a0:	00278793          	addi	a5,a5,2
   155a4:	fe079f23          	sh	zero,-2(a5)
   155a8:	fee79ce3          	bne	a5,a4,155a0 <e113toe.isra.8+0xf4>
   155ac:	01245783          	lhu	a5,18(s0)
   155b0:	00008737          	lui	a4,0x8
   155b4:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   155b8:	00e7e7b3          	or	a5,a5,a4
   155bc:	00f41923          	sh	a5,18(s0)
   155c0:	00e51783          	lh	a5,14(a0)
   155c4:	f607d4e3          	bgez	a5,1552c <e113toe.isra.8+0x80>
   155c8:	00040513          	mv	a0,s0
   155cc:	9c5fe0ef          	jal	ra,13f90 <eneg>
   155d0:	f5dff06f          	j	1552c <e113toe.isra.8+0x80>
   155d4:	01040713          	addi	a4,s0,16
   155d8:	00040793          	mv	a5,s0
   155dc:	00278793          	addi	a5,a5,2
   155e0:	fe079f23          	sh	zero,-2(a5)
   155e4:	fee79ce3          	bne	a5,a4,155dc <e113toe.isra.8+0x130>
   155e8:	7fffc7b7          	lui	a5,0x7fffc
   155ec:	00f42823          	sw	a5,16(s0)
   155f0:	f3dff06f          	j	1552c <e113toe.isra.8+0x80>

00000000000155f4 <_ldtoa_r>:
   155f4:	09100313          	li	t1,145
   155f8:	02031313          	slli	t1,t1,0x20
   155fc:	06053e03          	ld	t3,96(a0)
   15600:	da010113          	addi	sp,sp,-608
   15604:	fff30313          	addi	t1,t1,-1
   15608:	24813823          	sd	s0,592(sp)
   1560c:	23613023          	sd	s6,544(sp)
   15610:	21713c23          	sd	s7,536(sp)
   15614:	24113c23          	sd	ra,600(sp)
   15618:	24913423          	sd	s1,584(sp)
   1561c:	25213023          	sd	s2,576(sp)
   15620:	23313c23          	sd	s3,568(sp)
   15624:	23413823          	sd	s4,560(sp)
   15628:	23513423          	sd	s5,552(sp)
   1562c:	21813823          	sd	s8,528(sp)
   15630:	21913423          	sd	s9,520(sp)
   15634:	21a13023          	sd	s10,512(sp)
   15638:	1fb13c23          	sd	s11,504(sp)
   1563c:	04b13823          	sd	a1,80(sp)
   15640:	04c13c23          	sd	a2,88(sp)
   15644:	1a613023          	sd	t1,416(sp)
   15648:	00e13823          	sd	a4,16(sp)
   1564c:	00f13c23          	sd	a5,24(sp)
   15650:	03113823          	sd	a7,48(sp)
   15654:	00050b13          	mv	s6,a0
   15658:	00068b93          	mv	s7,a3
   1565c:	00080413          	mv	s0,a6
   15660:	020e0263          	beqz	t3,15684 <_ldtoa_r+0x90>
   15664:	06852703          	lw	a4,104(a0)
   15668:	00100793          	li	a5,1
   1566c:	000e0593          	mv	a1,t3
   15670:	00e797bb          	sllw	a5,a5,a4
   15674:	00ee2423          	sw	a4,8(t3)
   15678:	00fe2623          	sw	a5,12(t3)
   1567c:	7f9010ef          	jal	ra,17674 <_Bfree>
   15680:	060b3023          	sd	zero,96(s6)
   15684:	08010593          	addi	a1,sp,128
   15688:	05010513          	addi	a0,sp,80
   1568c:	e21ff0ef          	jal	ra,154ac <e113toe.isra.8>
   15690:	08010513          	addi	a0,sp,128
   15694:	949fe0ef          	jal	ra,13fdc <eisneg>
   15698:	00a03533          	snez	a0,a0
   1569c:	00a42023          	sw	a0,0(s0)
   156a0:	00300793          	li	a5,3
   156a4:	1cfb80e3          	beq	s7,a5,16064 <_ldtoa_r+0xa70>
   156a8:	01400793          	li	a5,20
   156ac:	00f13423          	sd	a5,8(sp)
   156b0:	620b9ee3          	bnez	s7,164ec <_ldtoa_r+0xef8>
   156b4:	09215783          	lhu	a5,146(sp)
   156b8:	1a412703          	lw	a4,420(sp)
   156bc:	fff7c793          	not	a5,a5
   156c0:	02e13423          	sd	a4,40(sp)
   156c4:	03179713          	slli	a4,a5,0x31
   156c8:	00071863          	bnez	a4,156d8 <_ldtoa_r+0xe4>
   156cc:	08010513          	addi	a0,sp,128
   156d0:	89dfe0ef          	jal	ra,13f6c <eisnan.part.0>
   156d4:	460510e3          	bnez	a0,16334 <_ldtoa_r+0xd40>
   156d8:	09000793          	li	a5,144
   156dc:	1af12223          	sw	a5,420(sp)
   156e0:	0a010713          	addi	a4,sp,160
   156e4:	08010793          	addi	a5,sp,128
   156e8:	09410613          	addi	a2,sp,148
   156ec:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd8dfa>
   156f0:	ffe7d683          	lhu	a3,-2(a5)
   156f4:	00270713          	addi	a4,a4,2
   156f8:	fed71f23          	sh	a3,-2(a4)
   156fc:	fec798e3          	bne	a5,a2,156ec <_ldtoa_r+0xf8>
   15700:	0b215603          	lhu	a2,178(sp)
   15704:	02013023          	sd	zero,32(sp)
   15708:	0106179b          	slliw	a5,a2,0x10
   1570c:	4107d79b          	sraiw	a5,a5,0x10
   15710:	02079713          	slli	a4,a5,0x20
   15714:	00075e63          	bgez	a4,15730 <_ldtoa_r+0x13c>
   15718:	03161613          	slli	a2,a2,0x31
   1571c:	000107b7          	lui	a5,0x10
   15720:	03165613          	srli	a2,a2,0x31
   15724:	fff78793          	addi	a5,a5,-1 # ffff <main-0xb1>
   15728:	0ac11923          	sh	a2,178(sp)
   1572c:	02f13023          	sd	a5,32(sp)
   15730:	00000693          	li	a3,0
   15734:	0c010793          	addi	a5,sp,192
   15738:	0000c717          	auipc	a4,0xc
   1573c:	d2070713          	addi	a4,a4,-736 # 21458 <eone>
   15740:	0d410d93          	addi	s11,sp,212
   15744:	0080006f          	j	1574c <_ldtoa_r+0x158>
   15748:	00075683          	lhu	a3,0(a4)
   1574c:	00278793          	addi	a5,a5,2
   15750:	fed79f23          	sh	a3,-2(a5)
   15754:	00270713          	addi	a4,a4,2
   15758:	ffb798e3          	bne	a5,s11,15748 <_ldtoa_r+0x154>
   1575c:	16060663          	beqz	a2,158c8 <_ldtoa_r+0x2d4>
   15760:	000087b7          	lui	a5,0x8
   15764:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   15768:	5af60ee3          	beq	a2,a5,16524 <_ldtoa_r+0xf30>
   1576c:	0b011783          	lh	a5,176(sp)
   15770:	6407d0e3          	bgez	a5,165b0 <_ldtoa_r+0xfbc>
   15774:	0a010593          	addi	a1,sp,160
   15778:	0000c517          	auipc	a0,0xc
   1577c:	ce050513          	addi	a0,a0,-800 # 21458 <eone>
   15780:	989fe0ef          	jal	ra,14108 <ecmp>
   15784:	14050e63          	beqz	a0,158e0 <_ldtoa_r+0x2ec>
   15788:	100548e3          	bltz	a0,16098 <_ldtoa_r+0xaa4>
   1578c:	0b215783          	lhu	a5,178(sp)
   15790:	6a079ee3          	bnez	a5,1664c <_ldtoa_r+0x1058>
   15794:	0b011783          	lh	a5,176(sp)
   15798:	00000493          	li	s1,0
   1579c:	1a010993          	addi	s3,sp,416
   157a0:	0207c663          	bltz	a5,157cc <_ldtoa_r+0x1d8>
   157a4:	0000c417          	auipc	s0,0xc
   157a8:	dbc40413          	addi	s0,s0,-580 # 21560 <etens+0xf0>
   157ac:	0a010613          	addi	a2,sp,160
   157b0:	00098693          	mv	a3,s3
   157b4:	00060593          	mv	a1,a2
   157b8:	00040513          	mv	a0,s0
   157bc:	be0ff0ef          	jal	ra,14b9c <emul>
   157c0:	0b011783          	lh	a5,176(sp)
   157c4:	fff4849b          	addiw	s1,s1,-1
   157c8:	fe07d2e3          	bgez	a5,157ac <_ldtoa_r+0x1b8>
   157cc:	10010413          	addi	s0,sp,256
   157d0:	11810a13          	addi	s4,sp,280
   157d4:	00040713          	mv	a4,s0
   157d8:	0a010793          	addi	a5,sp,160
   157dc:	0b410613          	addi	a2,sp,180
   157e0:	00278793          	addi	a5,a5,2
   157e4:	ffe7d683          	lhu	a3,-2(a5)
   157e8:	00270713          	addi	a4,a4,2
   157ec:	fed71f23          	sh	a3,-2(a4)
   157f0:	fec798e3          	bne	a5,a2,157e0 <_ldtoa_r+0x1ec>
   157f4:	00000693          	li	a3,0
   157f8:	0c010793          	addi	a5,sp,192
   157fc:	0000c717          	auipc	a4,0xc
   15800:	c5c70713          	addi	a4,a4,-932 # 21458 <eone>
   15804:	0080006f          	j	1580c <_ldtoa_r+0x218>
   15808:	00075683          	lhu	a3,0(a4)
   1580c:	00278793          	addi	a5,a5,2
   15810:	fed79f23          	sh	a3,-2(a5)
   15814:	00270713          	addi	a4,a4,2
   15818:	ffb798e3          	bne	a5,s11,15808 <_ldtoa_r+0x214>
   1581c:	fffff937          	lui	s2,0xfffff
   15820:	0000ca97          	auipc	s5,0xc
   15824:	c50a8a93          	addi	s5,s5,-944 # 21470 <etens>
   15828:	0000cc97          	auipc	s9,0xc
   1582c:	d50c8c93          	addi	s9,s9,-688 # 21578 <emtens>
   15830:	0000cd17          	auipc	s10,0xc
   15834:	c28d0d13          	addi	s10,s10,-984 # 21458 <eone>
   15838:	0000cd97          	auipc	s11,0xc
   1583c:	d28d8d93          	addi	s11,s11,-728 # 21560 <etens+0xf0>
   15840:	00c0006f          	j	1584c <_ldtoa_r+0x258>
   15844:	014c8c93          	addi	s9,s9,20
   15848:	014a8a93          	addi	s5,s5,20
   1584c:	00040593          	mv	a1,s0
   15850:	000d0513          	mv	a0,s10
   15854:	8b5fe0ef          	jal	ra,14108 <ecmp>
   15858:	00040593          	mv	a1,s0
   1585c:	04a05663          	blez	a0,158a8 <_ldtoa_r+0x2b4>
   15860:	000c8513          	mv	a0,s9
   15864:	8a5fe0ef          	jal	ra,14108 <ecmp>
   15868:	00098693          	mv	a3,s3
   1586c:	00040613          	mv	a2,s0
   15870:	00040593          	mv	a1,s0
   15874:	02054263          	bltz	a0,15898 <_ldtoa_r+0x2a4>
   15878:	000a8513          	mv	a0,s5
   1587c:	b20ff0ef          	jal	ra,14b9c <emul>
   15880:	0c010613          	addi	a2,sp,192
   15884:	00098693          	mv	a3,s3
   15888:	00060593          	mv	a1,a2
   1588c:	000a8513          	mv	a0,s5
   15890:	b0cff0ef          	jal	ra,14b9c <emul>
   15894:	009904bb          	addw	s1,s2,s1
   15898:	01f9579b          	srliw	a5,s2,0x1f
   1589c:	0127893b          	addw	s2,a5,s2
   158a0:	4019591b          	sraiw	s2,s2,0x1
   158a4:	fbba90e3          	bne	s5,s11,15844 <_ldtoa_r+0x250>
   158a8:	0c010613          	addi	a2,sp,192
   158ac:	00098693          	mv	a3,s3
   158b0:	0000c597          	auipc	a1,0xc
   158b4:	ba858593          	addi	a1,a1,-1112 # 21458 <eone>
   158b8:	00060513          	mv	a0,a2
   158bc:	ee8ff0ef          	jal	ra,14fa4 <ediv>
   158c0:	16010913          	addi	s2,sp,352
   158c4:	0300006f          	j	158f4 <_ldtoa_r+0x300>
   158c8:	0a010793          	addi	a5,sp,160
   158cc:	0b210693          	addi	a3,sp,178
   158d0:	0007d703          	lhu	a4,0(a5)
   158d4:	00278793          	addi	a5,a5,2
   158d8:	e8071ee3          	bnez	a4,15774 <_ldtoa_r+0x180>
   158dc:	fef69ae3          	bne	a3,a5,158d0 <_ldtoa_r+0x2dc>
   158e0:	00000493          	li	s1,0
   158e4:	16010913          	addi	s2,sp,352
   158e8:	1a010993          	addi	s3,sp,416
   158ec:	10010413          	addi	s0,sp,256
   158f0:	11810a13          	addi	s4,sp,280
   158f4:	00040593          	mv	a1,s0
   158f8:	0c010513          	addi	a0,sp,192
   158fc:	f20fe0ef          	jal	ra,1401c <emovi>
   15900:	0c010713          	addi	a4,sp,192
   15904:	00040793          	mv	a5,s0
   15908:	00278793          	addi	a5,a5,2
   1590c:	ffe7d683          	lhu	a3,-2(a5)
   15910:	00270713          	addi	a4,a4,2
   15914:	fed71f23          	sh	a3,-2(a4)
   15918:	ff4798e3          	bne	a5,s4,15908 <_ldtoa_r+0x314>
   1591c:	00040593          	mv	a1,s0
   15920:	0a010513          	addi	a0,sp,160
   15924:	0c011c23          	sh	zero,216(sp)
   15928:	ef4fe0ef          	jal	ra,1401c <emovi>
   1592c:	0a010793          	addi	a5,sp,160
   15930:	00240413          	addi	s0,s0,2
   15934:	ffe45703          	lhu	a4,-2(s0)
   15938:	00278793          	addi	a5,a5,2
   1593c:	fee79f23          	sh	a4,-2(a5)
   15940:	ff4418e3          	bne	s0,s4,15930 <_ldtoa_r+0x33c>
   15944:	00098613          	mv	a2,s3
   15948:	0a010593          	addi	a1,sp,160
   1594c:	0c010513          	addi	a0,sp,192
   15950:	0a011c23          	sh	zero,184(sp)
   15954:	834ff0ef          	jal	ra,14988 <eiremain>
   15958:	1ec15c83          	lhu	s9,492(sp)
   1595c:	1e0c9063          	bnez	s9,15b3c <_ldtoa_r+0x548>
   15960:	0000ca97          	auipc	s5,0xc
   15964:	ae0a8a93          	addi	s5,s5,-1312 # 21440 <ezero>
   15968:	0b810d93          	addi	s11,sp,184
   1596c:	0a210413          	addi	s0,sp,162
   15970:	0e210d13          	addi	s10,sp,226
   15974:	000a8593          	mv	a1,s5
   15978:	0a010513          	addi	a0,sp,160
   1597c:	f8cfe0ef          	jal	ra,14108 <ecmp>
   15980:	1a050e63          	beqz	a0,15b3c <_ldtoa_r+0x548>
   15984:	00000713          	li	a4,0
   15988:	000d8693          	mv	a3,s11
   1598c:	01c0006f          	j	159a8 <_ldtoa_r+0x3b4>
   15990:	0017171b          	slliw	a4,a4,0x1
   15994:	00f69023          	sh	a5,0(a3)
   15998:	03071713          	slli	a4,a4,0x30
   1599c:	ffe68693          	addi	a3,a3,-2
   159a0:	03075713          	srli	a4,a4,0x30
   159a4:	04868663          	beq	a3,s0,159f0 <_ldtoa_r+0x3fc>
   159a8:	0006d783          	lhu	a5,0(a3)
   159ac:	0107961b          	slliw	a2,a5,0x10
   159b0:	4106561b          	sraiw	a2,a2,0x10
   159b4:	02061593          	slli	a1,a2,0x20
   159b8:	0017979b          	slliw	a5,a5,0x1
   159bc:	0005d463          	bgez	a1,159c4 <_ldtoa_r+0x3d0>
   159c0:	00176713          	ori	a4,a4,1
   159c4:	03079793          	slli	a5,a5,0x30
   159c8:	0307d793          	srli	a5,a5,0x30
   159cc:	00277613          	andi	a2,a4,2
   159d0:	0017e593          	ori	a1,a5,1
   159d4:	fa060ee3          	beqz	a2,15990 <_ldtoa_r+0x39c>
   159d8:	0017171b          	slliw	a4,a4,0x1
   159dc:	00b69023          	sh	a1,0(a3)
   159e0:	03071713          	slli	a4,a4,0x30
   159e4:	ffe68693          	addi	a3,a3,-2
   159e8:	03075713          	srli	a4,a4,0x30
   159ec:	fa869ee3          	bne	a3,s0,159a8 <_ldtoa_r+0x3b4>
   159f0:	0e010713          	addi	a4,sp,224
   159f4:	0a010793          	addi	a5,sp,160
   159f8:	00278793          	addi	a5,a5,2
   159fc:	ffe7d683          	lhu	a3,-2(a5)
   15a00:	00270713          	addi	a4,a4,2
   15a04:	fed71f23          	sh	a3,-2(a4)
   15a08:	ffb798e3          	bne	a5,s11,159f8 <_ldtoa_r+0x404>
   15a0c:	0e011c23          	sh	zero,248(sp)
   15a10:	00000713          	li	a4,0
   15a14:	0f810693          	addi	a3,sp,248
   15a18:	01c0006f          	j	15a34 <_ldtoa_r+0x440>
   15a1c:	0017171b          	slliw	a4,a4,0x1
   15a20:	00f69023          	sh	a5,0(a3)
   15a24:	03071713          	slli	a4,a4,0x30
   15a28:	ffe68693          	addi	a3,a3,-2
   15a2c:	03075713          	srli	a4,a4,0x30
   15a30:	05a68663          	beq	a3,s10,15a7c <_ldtoa_r+0x488>
   15a34:	0006d783          	lhu	a5,0(a3)
   15a38:	0107961b          	slliw	a2,a5,0x10
   15a3c:	4106561b          	sraiw	a2,a2,0x10
   15a40:	02061593          	slli	a1,a2,0x20
   15a44:	0017979b          	slliw	a5,a5,0x1
   15a48:	0005d463          	bgez	a1,15a50 <_ldtoa_r+0x45c>
   15a4c:	00176713          	ori	a4,a4,1
   15a50:	03079793          	slli	a5,a5,0x30
   15a54:	0307d793          	srli	a5,a5,0x30
   15a58:	00277613          	andi	a2,a4,2
   15a5c:	0017e593          	ori	a1,a5,1
   15a60:	fa060ee3          	beqz	a2,15a1c <_ldtoa_r+0x428>
   15a64:	0017171b          	slliw	a4,a4,0x1
   15a68:	00b69023          	sh	a1,0(a3)
   15a6c:	03071713          	slli	a4,a4,0x30
   15a70:	ffe68693          	addi	a3,a3,-2
   15a74:	03075713          	srli	a4,a4,0x30
   15a78:	fba69ee3          	bne	a3,s10,15a34 <_ldtoa_r+0x440>
   15a7c:	00000713          	li	a4,0
   15a80:	0f810693          	addi	a3,sp,248
   15a84:	01c0006f          	j	15aa0 <_ldtoa_r+0x4ac>
   15a88:	0017171b          	slliw	a4,a4,0x1
   15a8c:	00f69023          	sh	a5,0(a3)
   15a90:	03071713          	slli	a4,a4,0x30
   15a94:	ffe68693          	addi	a3,a3,-2
   15a98:	03075713          	srli	a4,a4,0x30
   15a9c:	05a68663          	beq	a3,s10,15ae8 <_ldtoa_r+0x4f4>
   15aa0:	0006d783          	lhu	a5,0(a3)
   15aa4:	0107961b          	slliw	a2,a5,0x10
   15aa8:	4106561b          	sraiw	a2,a2,0x10
   15aac:	02061593          	slli	a1,a2,0x20
   15ab0:	0017979b          	slliw	a5,a5,0x1
   15ab4:	0005d463          	bgez	a1,15abc <_ldtoa_r+0x4c8>
   15ab8:	00176713          	ori	a4,a4,1
   15abc:	03079793          	slli	a5,a5,0x30
   15ac0:	0307d793          	srli	a5,a5,0x30
   15ac4:	00277613          	andi	a2,a4,2
   15ac8:	0017e593          	ori	a1,a5,1
   15acc:	fa060ee3          	beqz	a2,15a88 <_ldtoa_r+0x494>
   15ad0:	0017171b          	slliw	a4,a4,0x1
   15ad4:	00b69023          	sh	a1,0(a3)
   15ad8:	03071713          	slli	a4,a4,0x30
   15adc:	ffe68693          	addi	a3,a3,-2
   15ae0:	03075713          	srli	a4,a4,0x30
   15ae4:	fba69ee3          	bne	a3,s10,15aa0 <_ldtoa_r+0x4ac>
   15ae8:	00000613          	li	a2,0
   15aec:	000d8693          	mv	a3,s11
   15af0:	0f810713          	addi	a4,sp,248
   15af4:	0006d583          	lhu	a1,0(a3)
   15af8:	00075783          	lhu	a5,0(a4)
   15afc:	ffe68693          	addi	a3,a3,-2
   15b00:	ffe70713          	addi	a4,a4,-2
   15b04:	00b787b3          	add	a5,a5,a1
   15b08:	00c787b3          	add	a5,a5,a2
   15b0c:	00f69123          	sh	a5,2(a3)
   15b10:	0107d793          	srli	a5,a5,0x10
   15b14:	0017f613          	andi	a2,a5,1
   15b18:	fda71ee3          	bne	a4,s10,15af4 <_ldtoa_r+0x500>
   15b1c:	00098613          	mv	a2,s3
   15b20:	0a010593          	addi	a1,sp,160
   15b24:	0c010513          	addi	a0,sp,192
   15b28:	e61fe0ef          	jal	ra,14988 <eiremain>
   15b2c:	1ec15783          	lhu	a5,492(sp)
   15b30:	fff4849b          	addiw	s1,s1,-1
   15b34:	e40780e3          	beqz	a5,15974 <_ldtoa_r+0x380>
   15b38:	00078c93          	mv	s9,a5
   15b3c:	02013703          	ld	a4,32(sp)
   15b40:	02d00793          	li	a5,45
   15b44:	00071463          	bnez	a4,15b4c <_ldtoa_r+0x558>
   15b48:	02000793          	li	a5,32
   15b4c:	16f10023          	sb	a5,352(sp)
   15b50:	00300793          	li	a5,3
   15b54:	00813403          	ld	s0,8(sp)
   15b58:	02fb8463          	beq	s7,a5,15b80 <_ldtoa_r+0x58c>
   15b5c:	00a00793          	li	a5,10
   15b60:	20fc8ae3          	beq	s9,a5,16574 <_ldtoa_r+0xf80>
   15b64:	030c8c9b          	addiw	s9,s9,48
   15b68:	02e00793          	li	a5,46
   15b6c:	179100a3          	sb	s9,353(sp)
   15b70:	16f10123          	sb	a5,354(sp)
   15b74:	7a044863          	bltz	s0,16324 <_ldtoa_r+0xd30>
   15b78:	16310c93          	addi	s9,sp,355
   15b7c:	0300006f          	j	15bac <_ldtoa_r+0x5b8>
   15b80:	0094043b          	addw	s0,s0,s1
   15b84:	02a00793          	li	a5,42
   15b88:	fc87dae3          	bge	a5,s0,15b5c <_ldtoa_r+0x568>
   15b8c:	00a00793          	li	a5,10
   15b90:	1afc8ee3          	beq	s9,a5,1654c <_ldtoa_r+0xf58>
   15b94:	030c8c9b          	addiw	s9,s9,48
   15b98:	02e00793          	li	a5,46
   15b9c:	179100a3          	sb	s9,353(sp)
   15ba0:	16f10123          	sb	a5,354(sp)
   15ba4:	02a00413          	li	s0,42
   15ba8:	16310c93          	addi	s9,sp,355
   15bac:	00000c13          	li	s8,0
   15bb0:	0e010a93          	addi	s5,sp,224
   15bb4:	0b810d93          	addi	s11,sp,184
   15bb8:	0a210a13          	addi	s4,sp,162
   15bbc:	0e210d13          	addi	s10,sp,226
   15bc0:	00000713          	li	a4,0
   15bc4:	000d8693          	mv	a3,s11
   15bc8:	01c0006f          	j	15be4 <_ldtoa_r+0x5f0>
   15bcc:	0017171b          	slliw	a4,a4,0x1
   15bd0:	00f69023          	sh	a5,0(a3)
   15bd4:	03071713          	slli	a4,a4,0x30
   15bd8:	ffe68693          	addi	a3,a3,-2
   15bdc:	03075713          	srli	a4,a4,0x30
   15be0:	05468663          	beq	a3,s4,15c2c <_ldtoa_r+0x638>
   15be4:	0006d783          	lhu	a5,0(a3)
   15be8:	0107961b          	slliw	a2,a5,0x10
   15bec:	4106561b          	sraiw	a2,a2,0x10
   15bf0:	02061593          	slli	a1,a2,0x20
   15bf4:	0017979b          	slliw	a5,a5,0x1
   15bf8:	0005d463          	bgez	a1,15c00 <_ldtoa_r+0x60c>
   15bfc:	00176713          	ori	a4,a4,1
   15c00:	03079793          	slli	a5,a5,0x30
   15c04:	0307d793          	srli	a5,a5,0x30
   15c08:	00277613          	andi	a2,a4,2
   15c0c:	0017e593          	ori	a1,a5,1
   15c10:	fa060ee3          	beqz	a2,15bcc <_ldtoa_r+0x5d8>
   15c14:	0017171b          	slliw	a4,a4,0x1
   15c18:	00b69023          	sh	a1,0(a3)
   15c1c:	03071713          	slli	a4,a4,0x30
   15c20:	ffe68693          	addi	a3,a3,-2
   15c24:	03075713          	srli	a4,a4,0x30
   15c28:	fb469ee3          	bne	a3,s4,15be4 <_ldtoa_r+0x5f0>
   15c2c:	000a8713          	mv	a4,s5
   15c30:	0a010793          	addi	a5,sp,160
   15c34:	00278793          	addi	a5,a5,2
   15c38:	ffe7d683          	lhu	a3,-2(a5)
   15c3c:	00270713          	addi	a4,a4,2
   15c40:	fed71f23          	sh	a3,-2(a4)
   15c44:	ffb798e3          	bne	a5,s11,15c34 <_ldtoa_r+0x640>
   15c48:	0e011c23          	sh	zero,248(sp)
   15c4c:	00000713          	li	a4,0
   15c50:	0f810693          	addi	a3,sp,248
   15c54:	01c0006f          	j	15c70 <_ldtoa_r+0x67c>
   15c58:	0017171b          	slliw	a4,a4,0x1
   15c5c:	00f69023          	sh	a5,0(a3)
   15c60:	03071713          	slli	a4,a4,0x30
   15c64:	ffe68693          	addi	a3,a3,-2
   15c68:	03075713          	srli	a4,a4,0x30
   15c6c:	05a68663          	beq	a3,s10,15cb8 <_ldtoa_r+0x6c4>
   15c70:	0006d783          	lhu	a5,0(a3)
   15c74:	0107961b          	slliw	a2,a5,0x10
   15c78:	4106561b          	sraiw	a2,a2,0x10
   15c7c:	02061593          	slli	a1,a2,0x20
   15c80:	0017979b          	slliw	a5,a5,0x1
   15c84:	0005d463          	bgez	a1,15c8c <_ldtoa_r+0x698>
   15c88:	00176713          	ori	a4,a4,1
   15c8c:	03079793          	slli	a5,a5,0x30
   15c90:	0307d793          	srli	a5,a5,0x30
   15c94:	00277613          	andi	a2,a4,2
   15c98:	0017e593          	ori	a1,a5,1
   15c9c:	fa060ee3          	beqz	a2,15c58 <_ldtoa_r+0x664>
   15ca0:	0017171b          	slliw	a4,a4,0x1
   15ca4:	00b69023          	sh	a1,0(a3)
   15ca8:	03071713          	slli	a4,a4,0x30
   15cac:	ffe68693          	addi	a3,a3,-2
   15cb0:	03075713          	srli	a4,a4,0x30
   15cb4:	fba69ee3          	bne	a3,s10,15c70 <_ldtoa_r+0x67c>
   15cb8:	00000713          	li	a4,0
   15cbc:	0f810693          	addi	a3,sp,248
   15cc0:	01c0006f          	j	15cdc <_ldtoa_r+0x6e8>
   15cc4:	0017171b          	slliw	a4,a4,0x1
   15cc8:	00f69023          	sh	a5,0(a3)
   15ccc:	03071713          	slli	a4,a4,0x30
   15cd0:	ffe68693          	addi	a3,a3,-2
   15cd4:	03075713          	srli	a4,a4,0x30
   15cd8:	05a68663          	beq	a3,s10,15d24 <_ldtoa_r+0x730>
   15cdc:	0006d783          	lhu	a5,0(a3)
   15ce0:	0107961b          	slliw	a2,a5,0x10
   15ce4:	4106561b          	sraiw	a2,a2,0x10
   15ce8:	02061593          	slli	a1,a2,0x20
   15cec:	0017979b          	slliw	a5,a5,0x1
   15cf0:	0005d463          	bgez	a1,15cf8 <_ldtoa_r+0x704>
   15cf4:	00176713          	ori	a4,a4,1
   15cf8:	03079793          	slli	a5,a5,0x30
   15cfc:	0307d793          	srli	a5,a5,0x30
   15d00:	00277613          	andi	a2,a4,2
   15d04:	0017e593          	ori	a1,a5,1
   15d08:	fa060ee3          	beqz	a2,15cc4 <_ldtoa_r+0x6d0>
   15d0c:	0017171b          	slliw	a4,a4,0x1
   15d10:	00b69023          	sh	a1,0(a3)
   15d14:	03071713          	slli	a4,a4,0x30
   15d18:	ffe68693          	addi	a3,a3,-2
   15d1c:	03075713          	srli	a4,a4,0x30
   15d20:	fba69ee3          	bne	a3,s10,15cdc <_ldtoa_r+0x6e8>
   15d24:	00000613          	li	a2,0
   15d28:	000d8693          	mv	a3,s11
   15d2c:	0f810713          	addi	a4,sp,248
   15d30:	0006d583          	lhu	a1,0(a3)
   15d34:	00075783          	lhu	a5,0(a4)
   15d38:	ffe68693          	addi	a3,a3,-2
   15d3c:	ffe70713          	addi	a4,a4,-2
   15d40:	00b787b3          	add	a5,a5,a1
   15d44:	00c787b3          	add	a5,a5,a2
   15d48:	00f69123          	sh	a5,2(a3)
   15d4c:	0107d793          	srli	a5,a5,0x10
   15d50:	0017f613          	andi	a2,a5,1
   15d54:	fda71ee3          	bne	a4,s10,15d30 <_ldtoa_r+0x73c>
   15d58:	00098613          	mv	a2,s3
   15d5c:	0a010593          	addi	a1,sp,160
   15d60:	0c010513          	addi	a0,sp,192
   15d64:	c25fe0ef          	jal	ra,14988 <eiremain>
   15d68:	1ec15783          	lhu	a5,492(sp)
   15d6c:	018c8733          	add	a4,s9,s8
   15d70:	001c0c13          	addi	s8,s8,1
   15d74:	0307869b          	addiw	a3,a5,48
   15d78:	00d70023          	sb	a3,0(a4)
   15d7c:	000c071b          	sext.w	a4,s8
   15d80:	e4e450e3          	bge	s0,a4,15bc0 <_ldtoa_r+0x5cc>
   15d84:	00140993          	addi	s3,s0,1
   15d88:	013c89b3          	add	s3,s9,s3
   15d8c:	008c8cb3          	add	s9,s9,s0
   15d90:	00400713          	li	a4,4
   15d94:	08f75063          	bge	a4,a5,15e14 <_ldtoa_r+0x820>
   15d98:	00500713          	li	a4,5
   15d9c:	02e78ae3          	beq	a5,a4,165d0 <_ldtoa_r+0xfdc>
   15da0:	ffe9c783          	lbu	a5,-2(s3)
   15da4:	ffe98713          	addi	a4,s3,-2
   15da8:	07f7f793          	andi	a5,a5,127
   15dac:	0007881b          	sext.w	a6,a5
   15db0:	7e044863          	bltz	s0,165a0 <_ldtoa_r+0xfac>
   15db4:	02e00693          	li	a3,46
   15db8:	04d78263          	beq	a5,a3,15dfc <_ldtoa_r+0x808>
   15dbc:	0017879b          	addiw	a5,a5,1
   15dc0:	00f70023          	sb	a5,0(a4)
   15dc4:	03800793          	li	a5,56
   15dc8:	03000593          	li	a1,48
   15dcc:	02e00613          	li	a2,46
   15dd0:	03800513          	li	a0,56
   15dd4:	0107c863          	blt	a5,a6,15de4 <_ldtoa_r+0x7f0>
   15dd8:	03c0006f          	j	15e14 <_ldtoa_r+0x820>
   15ddc:	00d70023          	sb	a3,0(a4)
   15de0:	02f57a63          	bgeu	a0,a5,15e14 <_ldtoa_r+0x820>
   15de4:	00b70023          	sb	a1,0(a4)
   15de8:	fff70713          	addi	a4,a4,-1
   15dec:	00074783          	lbu	a5,0(a4)
   15df0:	07f7f793          	andi	a5,a5,127
   15df4:	0017869b          	addiw	a3,a5,1
   15df8:	fec792e3          	bne	a5,a2,15ddc <_ldtoa_r+0x7e8>
   15dfc:	fff74783          	lbu	a5,-1(a4)
   15e00:	03800693          	li	a3,56
   15e04:	02f6fee3          	bgeu	a3,a5,16640 <_ldtoa_r+0x104c>
   15e08:	03100793          	li	a5,49
   15e0c:	0014849b          	addiw	s1,s1,1
   15e10:	fef70fa3          	sb	a5,-1(a4)
   15e14:	00048613          	mv	a2,s1
   15e18:	0000c597          	auipc	a1,0xc
   15e1c:	8c058593          	addi	a1,a1,-1856 # 216d8 <bmask+0x58>
   15e20:	000c8513          	mv	a0,s9
   15e24:	29d020ef          	jal	ra,188c0 <sprintf>
   15e28:	09215783          	lhu	a5,146(sp)
   15e2c:	02813703          	ld	a4,40(sp)
   15e30:	1a912823          	sw	s1,432(sp)
   15e34:	fff7c793          	not	a5,a5
   15e38:	1ae12223          	sw	a4,420(sp)
   15e3c:	03179713          	slli	a4,a5,0x31
   15e40:	00071e63          	bnez	a4,15e5c <_ldtoa_r+0x868>
   15e44:	08010513          	addi	a0,sp,128
   15e48:	bdcfe0ef          	jal	ra,14224 <eisinf.part.1>
   15e4c:	22051c63          	bnez	a0,16084 <_ldtoa_r+0xa90>
   15e50:	08010513          	addi	a0,sp,128
   15e54:	918fe0ef          	jal	ra,13f6c <eisnan.part.0>
   15e58:	22051663          	bnez	a0,16084 <_ldtoa_r+0xa90>
   15e5c:	01813683          	ld	a3,24(sp)
   15e60:	16014783          	lbu	a5,352(sp)
   15e64:	0014871b          	addiw	a4,s1,1
   15e68:	00e6a023          	sw	a4,0(a3)
   15e6c:	0e078ce3          	beqz	a5,16764 <_ldtoa_r+0x1170>
   15e70:	02e00713          	li	a4,46
   15e74:	06e78063          	beq	a5,a4,15ed4 <_ldtoa_r+0x8e0>
   15e78:	00090793          	mv	a5,s2
   15e7c:	02e00693          	li	a3,46
   15e80:	0080006f          	j	15e88 <_ldtoa_r+0x894>
   15e84:	04d70a63          	beq	a4,a3,15ed8 <_ldtoa_r+0x8e4>
   15e88:	00178793          	addi	a5,a5,1
   15e8c:	0007c703          	lbu	a4,0(a5)
   15e90:	fe071ae3          	bnez	a4,15e84 <_ldtoa_r+0x890>
   15e94:	04500693          	li	a3,69
   15e98:	00f96663          	bltu	s2,a5,15ea4 <_ldtoa_r+0x8b0>
   15e9c:	0140006f          	j	15eb0 <_ldtoa_r+0x8bc>
   15ea0:	01278863          	beq	a5,s2,15eb0 <_ldtoa_r+0x8bc>
   15ea4:	fff78793          	addi	a5,a5,-1
   15ea8:	0007c703          	lbu	a4,0(a5)
   15eac:	fed71ae3          	bne	a4,a3,15ea0 <_ldtoa_r+0x8ac>
   15eb0:	00078023          	sb	zero,0(a5)
   15eb4:	00090793          	mv	a5,s2
   15eb8:	02000693          	li	a3,32
   15ebc:	02d00613          	li	a2,45
   15ec0:	0007c703          	lbu	a4,0(a5)
   15ec4:	00d70463          	beq	a4,a3,15ecc <_ldtoa_r+0x8d8>
   15ec8:	02c71a63          	bne	a4,a2,15efc <_ldtoa_r+0x908>
   15ecc:	00178793          	addi	a5,a5,1
   15ed0:	ff1ff06f          	j	15ec0 <_ldtoa_r+0x8cc>
   15ed4:	00090793          	mv	a5,s2
   15ed8:	0017c703          	lbu	a4,1(a5)
   15edc:	00178793          	addi	a5,a5,1
   15ee0:	fee78fa3          	sb	a4,-1(a5)
   15ee4:	fa0708e3          	beqz	a4,15e94 <_ldtoa_r+0x8a0>
   15ee8:	0017c703          	lbu	a4,1(a5)
   15eec:	00178793          	addi	a5,a5,1
   15ef0:	fee78fa3          	sb	a4,-1(a5)
   15ef4:	fe0712e3          	bnez	a4,15ed8 <_ldtoa_r+0x8e4>
   15ef8:	f9dff06f          	j	15e94 <_ldtoa_r+0x8a0>
   15efc:	00090413          	mv	s0,s2
   15f00:	00c0006f          	j	15f0c <_ldtoa_r+0x918>
   15f04:	0007c703          	lbu	a4,0(a5)
   15f08:	00068413          	mv	s0,a3
   15f0c:	00e40023          	sb	a4,0(s0)
   15f10:	00140693          	addi	a3,s0,1
   15f14:	00178793          	addi	a5,a5,1
   15f18:	fe0716e3          	bnez	a4,15f04 <_ldtoa_r+0x910>
   15f1c:	00200793          	li	a5,2
   15f20:	fff44703          	lbu	a4,-1(s0)
   15f24:	12fb8463          	beq	s7,a5,1604c <_ldtoa_r+0xa58>
   15f28:	00813783          	ld	a5,8(sp)
   15f2c:	0007869b          	sext.w	a3,a5
   15f30:	0097d463          	bge	a5,s1,15f38 <_ldtoa_r+0x944>
   15f34:	0004869b          	sext.w	a3,s1
   15f38:	03000793          	li	a5,48
   15f3c:	02f71663          	bne	a4,a5,15f68 <_ldtoa_r+0x974>
   15f40:	412407b3          	sub	a5,s0,s2
   15f44:	02f6d263          	bge	a3,a5,15f68 <_ldtoa_r+0x974>
   15f48:	03000613          	li	a2,48
   15f4c:	0080006f          	j	15f54 <_ldtoa_r+0x960>
   15f50:	00e6dc63          	bge	a3,a4,15f68 <_ldtoa_r+0x974>
   15f54:	fff40413          	addi	s0,s0,-1
   15f58:	fff44783          	lbu	a5,-1(s0)
   15f5c:	00040023          	sb	zero,0(s0)
   15f60:	41240733          	sub	a4,s0,s2
   15f64:	fec786e3          	beq	a5,a2,15f50 <_ldtoa_r+0x95c>
   15f68:	00300793          	li	a5,3
   15f6c:	0afb8263          	beq	s7,a5,16010 <_ldtoa_r+0xa1c>
   15f70:	01013783          	ld	a5,16(sp)
   15f74:	060b2423          	sw	zero,104(s6)
   15f78:	00978a1b          	addiw	s4,a5,9
   15f7c:	01f00793          	li	a5,31
   15f80:	0d47f263          	bgeu	a5,s4,16044 <_ldtoa_r+0xa50>
   15f84:	00100713          	li	a4,1
   15f88:	00400793          	li	a5,4
   15f8c:	0017979b          	slliw	a5,a5,0x1
   15f90:	01c78693          	addi	a3,a5,28
   15f94:	0007059b          	sext.w	a1,a4
   15f98:	0017071b          	addiw	a4,a4,1
   15f9c:	feda78e3          	bgeu	s4,a3,15f8c <_ldtoa_r+0x998>
   15fa0:	06bb2423          	sw	a1,104(s6)
   15fa4:	000b0513          	mv	a0,s6
   15fa8:	624010ef          	jal	ra,175cc <_Balloc>
   15fac:	06ab3023          	sd	a0,96(s6)
   15fb0:	00090593          	mv	a1,s2
   15fb4:	00050493          	mv	s1,a0
   15fb8:	40d020ef          	jal	ra,18bc4 <strcpy>
   15fbc:	03013783          	ld	a5,48(sp)
   15fc0:	00078863          	beqz	a5,15fd0 <_ldtoa_r+0x9dc>
   15fc4:	41240433          	sub	s0,s0,s2
   15fc8:	00848433          	add	s0,s1,s0
   15fcc:	0087b023          	sd	s0,0(a5)
   15fd0:	25813083          	ld	ra,600(sp)
   15fd4:	25013403          	ld	s0,592(sp)
   15fd8:	00048513          	mv	a0,s1
   15fdc:	24013903          	ld	s2,576(sp)
   15fe0:	24813483          	ld	s1,584(sp)
   15fe4:	23813983          	ld	s3,568(sp)
   15fe8:	23013a03          	ld	s4,560(sp)
   15fec:	22813a83          	ld	s5,552(sp)
   15ff0:	22013b03          	ld	s6,544(sp)
   15ff4:	21813b83          	ld	s7,536(sp)
   15ff8:	21013c03          	ld	s8,528(sp)
   15ffc:	20813c83          	ld	s9,520(sp)
   16000:	20013d03          	ld	s10,512(sp)
   16004:	1f813d83          	ld	s11,504(sp)
   16008:	26010113          	addi	sp,sp,608
   1600c:	00008067          	ret
   16010:	00813783          	ld	a5,8(sp)
   16014:	009784bb          	addw	s1,a5,s1
   16018:	4e04c063          	bltz	s1,164f8 <_ldtoa_r+0xf04>
   1601c:	01813783          	ld	a5,24(sp)
   16020:	01013703          	ld	a4,16(sp)
   16024:	0007a783          	lw	a5,0(a5)
   16028:	00e787bb          	addw	a5,a5,a4
   1602c:	00f13823          	sd	a5,16(sp)
   16030:	01013783          	ld	a5,16(sp)
   16034:	060b2423          	sw	zero,104(s6)
   16038:	00378a1b          	addiw	s4,a5,3
   1603c:	01f00793          	li	a5,31
   16040:	f547e2e3          	bltu	a5,s4,15f84 <_ldtoa_r+0x990>
   16044:	00000593          	li	a1,0
   16048:	f5dff06f          	j	15fa4 <_ldtoa_r+0x9b0>
   1604c:	03000793          	li	a5,48
   16050:	f2f710e3          	bne	a4,a5,15f70 <_ldtoa_r+0x97c>
   16054:	412407b3          	sub	a5,s0,s2
   16058:	00100693          	li	a3,1
   1605c:	eef6c6e3          	blt	a3,a5,15f48 <_ldtoa_r+0x954>
   16060:	f11ff06f          	j	15f70 <_ldtoa_r+0x97c>
   16064:	01013783          	ld	a5,16(sp)
   16068:	02a00713          	li	a4,42
   1606c:	00078c13          	mv	s8,a5
   16070:	00f75463          	bge	a4,a5,16078 <_ldtoa_r+0xa84>
   16074:	02a00c13          	li	s8,42
   16078:	000c079b          	sext.w	a5,s8
   1607c:	00f13423          	sd	a5,8(sp)
   16080:	e34ff06f          	j	156b4 <_ldtoa_r+0xc0>
   16084:	01813703          	ld	a4,24(sp)
   16088:	000027b7          	lui	a5,0x2
   1608c:	70f78793          	addi	a5,a5,1807 # 270f <main-0xd9a1>
   16090:	00f72023          	sw	a5,0(a4)
   16094:	e21ff06f          	j	15eb4 <_ldtoa_r+0x8c0>
   16098:	0e010a93          	addi	s5,sp,224
   1609c:	000a8713          	mv	a4,s5
   160a0:	0a010793          	addi	a5,sp,160
   160a4:	0b410613          	addi	a2,sp,180
   160a8:	00278793          	addi	a5,a5,2
   160ac:	ffe7d683          	lhu	a3,-2(a5)
   160b0:	00270713          	addi	a4,a4,2
   160b4:	fed71f23          	sh	a3,-2(a4)
   160b8:	fec798e3          	bne	a5,a2,160a8 <_ldtoa_r+0xab4>
   160bc:	000047b7          	lui	a5,0x4
   160c0:	08e78793          	addi	a5,a5,142 # 408e <main-0xc022>
   160c4:	0ef11923          	sh	a5,242(sp)
   160c8:	000087b7          	lui	a5,0x8
   160cc:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   160d0:	02f13c23          	sd	a5,56(sp)
   160d4:	ffffc7b7          	lui	a5,0xffffc
   160d8:	0027879b          	addiw	a5,a5,2
   160dc:	01000d13          	li	s10,16
   160e0:	00000493          	li	s1,0
   160e4:	0000bc17          	auipc	s8,0xb
   160e8:	42cc0c13          	addi	s8,s8,1068 # 21510 <etens+0xa0>
   160ec:	16010913          	addi	s2,sp,352
   160f0:	1a010993          	addi	s3,sp,416
   160f4:	10010413          	addi	s0,sp,256
   160f8:	0d210a13          	addi	s4,sp,210
   160fc:	04f12223          	sw	a5,68(sp)
   16100:	07a10c93          	addi	s9,sp,122
   16104:	00098693          	mv	a3,s3
   16108:	0c010613          	addi	a2,sp,192
   1610c:	000a8593          	mv	a1,s5
   16110:	000c0513          	mv	a0,s8
   16114:	e91fe0ef          	jal	ra,14fa4 <ediv>
   16118:	06810713          	addi	a4,sp,104
   1611c:	0c010793          	addi	a5,sp,192
   16120:	00278793          	addi	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd8dfa>
   16124:	ffe7d683          	lhu	a3,-2(a5)
   16128:	00270713          	addi	a4,a4,2
   1612c:	fed71f23          	sh	a3,-2(a4)
   16130:	ffb798e3          	bne	a5,s11,16120 <_ldtoa_r+0xb2c>
   16134:	03813783          	ld	a5,56(sp)
   16138:	07a15503          	lhu	a0,122(sp)
   1613c:	00f57833          	and	a6,a0,a5
   16140:	04412783          	lw	a5,68(sp)
   16144:	00f807bb          	addw	a5,a6,a5
   16148:	00078893          	mv	a7,a5
   1614c:	3cf05063          	blez	a5,1650c <_ldtoa_r+0xf18>
   16150:	09000593          	li	a1,144
   16154:	40f5883b          	subw	a6,a1,a5
   16158:	00080593          	mv	a1,a6
   1615c:	00040713          	mv	a4,s0
   16160:	06810793          	addi	a5,sp,104
   16164:	07c10613          	addi	a2,sp,124
   16168:	00278793          	addi	a5,a5,2
   1616c:	ffe7d683          	lhu	a3,-2(a5)
   16170:	00270713          	addi	a4,a4,2
   16174:	fed71f23          	sh	a3,-2(a4)
   16178:	fec798e3          	bne	a5,a2,16168 <_ldtoa_r+0xb74>
   1617c:	07005e63          	blez	a6,161f8 <_ldtoa_r+0xc04>
   16180:	00f00793          	li	a5,15
   16184:	00040713          	mv	a4,s0
   16188:	0507d063          	bge	a5,a6,161c8 <_ldtoa_r+0xbd4>
   1618c:	ff05859b          	addiw	a1,a1,-16
   16190:	0045d59b          	srliw	a1,a1,0x4
   16194:	02059713          	slli	a4,a1,0x20
   16198:	02075713          	srli	a4,a4,0x20
   1619c:	00170713          	addi	a4,a4,1
   161a0:	00171713          	slli	a4,a4,0x1
   161a4:	00e40733          	add	a4,s0,a4
   161a8:	00040793          	mv	a5,s0
   161ac:	00278793          	addi	a5,a5,2
   161b0:	fe079f23          	sh	zero,-2(a5)
   161b4:	fee79ce3          	bne	a5,a4,161ac <_ldtoa_r+0xbb8>
   161b8:	08000813          	li	a6,128
   161bc:	4118083b          	subw	a6,a6,a7
   161c0:	0045959b          	slliw	a1,a1,0x4
   161c4:	40b8083b          	subw	a6,a6,a1
   161c8:	00181593          	slli	a1,a6,0x1
   161cc:	0000b817          	auipc	a6,0xb
   161d0:	27480813          	addi	a6,a6,628 # 21440 <ezero>
   161d4:	00b805b3          	add	a1,a6,a1
   161d8:	00075783          	lhu	a5,0(a4)
   161dc:	2405d683          	lhu	a3,576(a1)
   161e0:	00d7f7b3          	and	a5,a5,a3
   161e4:	00f71023          	sh	a5,0(a4)
   161e8:	0105151b          	slliw	a0,a0,0x10
   161ec:	4105551b          	sraiw	a0,a0,0x10
   161f0:	02051793          	slli	a5,a0,0x20
   161f4:	1607c063          	bltz	a5,16354 <_ldtoa_r+0xd60>
   161f8:	0c010793          	addi	a5,sp,192
   161fc:	00040713          	mv	a4,s0
   16200:	0007d603          	lhu	a2,0(a5)
   16204:	00075683          	lhu	a3,0(a4)
   16208:	00278793          	addi	a5,a5,2
   1620c:	00270713          	addi	a4,a4,2
   16210:	02d61463          	bne	a2,a3,16238 <_ldtoa_r+0xc44>
   16214:	fefa16e3          	bne	s4,a5,16200 <_ldtoa_r+0xc0c>
   16218:	000a8713          	mv	a4,s5
   1621c:	0c010793          	addi	a5,sp,192
   16220:	00278793          	addi	a5,a5,2
   16224:	ffe7d683          	lhu	a3,-2(a5)
   16228:	00270713          	addi	a4,a4,2
   1622c:	fed71f23          	sh	a3,-2(a4)
   16230:	ffb798e3          	bne	a5,s11,16220 <_ldtoa_r+0xc2c>
   16234:	009d04bb          	addw	s1,s10,s1
   16238:	014c0c13          	addi	s8,s8,20
   1623c:	0000b797          	auipc	a5,0xb
   16240:	33878793          	addi	a5,a5,824 # 21574 <etens+0x104>
   16244:	001d5d13          	srli	s10,s10,0x1
   16248:	eafc1ee3          	bne	s8,a5,16104 <_ldtoa_r+0xb10>
   1624c:	0f215783          	lhu	a5,242(sp)
   16250:	0b215703          	lhu	a4,178(sp)
   16254:	0f410613          	addi	a2,sp,244
   16258:	00e787bb          	addw	a5,a5,a4
   1625c:	ffffc737          	lui	a4,0xffffc
   16260:	f727071b          	addiw	a4,a4,-142
   16264:	00e787bb          	addw	a5,a5,a4
   16268:	0ef11923          	sh	a5,242(sp)
   1626c:	0a010713          	addi	a4,sp,160
   16270:	000a8793          	mv	a5,s5
   16274:	00278793          	addi	a5,a5,2
   16278:	ffe7d683          	lhu	a3,-2(a5)
   1627c:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd8dfa>
   16280:	fed71f23          	sh	a3,-2(a4)
   16284:	fec798e3          	bne	a5,a2,16274 <_ldtoa_r+0xc80>
   16288:	00000693          	li	a3,0
   1628c:	0c010793          	addi	a5,sp,192
   16290:	0000b717          	auipc	a4,0xb
   16294:	1c870713          	addi	a4,a4,456 # 21458 <eone>
   16298:	0080006f          	j	162a0 <_ldtoa_r+0xcac>
   1629c:	00075683          	lhu	a3,0(a4)
   162a0:	00278793          	addi	a5,a5,2
   162a4:	fed79f23          	sh	a3,-2(a5)
   162a8:	00270713          	addi	a4,a4,2
   162ac:	ffb798e3          	bne	a5,s11,1629c <_ldtoa_r+0xca8>
   162b0:	00001d37          	lui	s10,0x1
   162b4:	0000bc97          	auipc	s9,0xb
   162b8:	1bcc8c93          	addi	s9,s9,444 # 21470 <etens>
   162bc:	0000bd97          	auipc	s11,0xb
   162c0:	2a4d8d93          	addi	s11,s11,676 # 21560 <etens+0xf0>
   162c4:	0100006f          	j	162d4 <_ldtoa_r+0xce0>
   162c8:	001d5d13          	srli	s10,s10,0x1
   162cc:	2dbc8663          	beq	s9,s11,16598 <_ldtoa_r+0xfa4>
   162d0:	014c8c93          	addi	s9,s9,20
   162d4:	000a8593          	mv	a1,s5
   162d8:	000d8513          	mv	a0,s11
   162dc:	e2dfd0ef          	jal	ra,14108 <ecmp>
   162e0:	000a8593          	mv	a1,s5
   162e4:	2aa04a63          	bgtz	a0,16598 <_ldtoa_r+0xfa4>
   162e8:	000c8513          	mv	a0,s9
   162ec:	e1dfd0ef          	jal	ra,14108 <ecmp>
   162f0:	fca04ce3          	bgtz	a0,162c8 <_ldtoa_r+0xcd4>
   162f4:	00098693          	mv	a3,s3
   162f8:	000a8613          	mv	a2,s5
   162fc:	000a8593          	mv	a1,s5
   16300:	000c8513          	mv	a0,s9
   16304:	ca1fe0ef          	jal	ra,14fa4 <ediv>
   16308:	0c010613          	addi	a2,sp,192
   1630c:	00098693          	mv	a3,s3
   16310:	00060593          	mv	a1,a2
   16314:	000c8513          	mv	a0,s9
   16318:	885fe0ef          	jal	ra,14b9c <emul>
   1631c:	009d04bb          	addw	s1,s10,s1
   16320:	fa9ff06f          	j	162c8 <_ldtoa_r+0xcd4>
   16324:	1ec15783          	lhu	a5,492(sp)
   16328:	16210c93          	addi	s9,sp,354
   1632c:	16310993          	addi	s3,sp,355
   16330:	a61ff06f          	j	15d90 <_ldtoa_r+0x79c>
   16334:	16010913          	addi	s2,sp,352
   16338:	0000b597          	auipc	a1,0xb
   1633c:	37058593          	addi	a1,a1,880 # 216a8 <bmask+0x28>
   16340:	00090513          	mv	a0,s2
   16344:	000024b7          	lui	s1,0x2
   16348:	578020ef          	jal	ra,188c0 <sprintf>
   1634c:	70f48493          	addi	s1,s1,1807 # 270f <main-0xd9a1>
   16350:	ad9ff06f          	j	15e28 <_ldtoa_r+0x834>
   16354:	06810793          	addi	a5,sp,104
   16358:	00040713          	mv	a4,s0
   1635c:	0080006f          	j	16364 <_ldtoa_r+0xd70>
   16360:	e8fc8ce3          	beq	s9,a5,161f8 <_ldtoa_r+0xc04>
   16364:	0007d603          	lhu	a2,0(a5)
   16368:	00075683          	lhu	a3,0(a4)
   1636c:	00278793          	addi	a5,a5,2
   16370:	00270713          	addi	a4,a4,2
   16374:	fed606e3          	beq	a2,a3,16360 <_ldtoa_r+0xd6c>
   16378:	11215783          	lhu	a5,274(sp)
   1637c:	03813703          	ld	a4,56(sp)
   16380:	00f777b3          	and	a5,a4,a5
   16384:	00e79e63          	bne	a5,a4,163a0 <_ldtoa_r+0xdac>
   16388:	00040513          	mv	a0,s0
   1638c:	be1fd0ef          	jal	ra,13f6c <eisnan.part.0>
   16390:	e60514e3          	bnez	a0,161f8 <_ldtoa_r+0xc04>
   16394:	00040513          	mv	a0,s0
   16398:	e8dfd0ef          	jal	ra,14224 <eisinf.part.1>
   1639c:	e4051ee3          	bnez	a0,161f8 <_ldtoa_r+0xc04>
   163a0:	12010593          	addi	a1,sp,288
   163a4:	0000b517          	auipc	a0,0xb
   163a8:	0b450513          	addi	a0,a0,180 # 21458 <eone>
   163ac:	c71fd0ef          	jal	ra,1401c <emovi>
   163b0:	14010593          	addi	a1,sp,320
   163b4:	00040513          	mv	a0,s0
   163b8:	c65fd0ef          	jal	ra,1401c <emovi>
   163bc:	12015503          	lhu	a0,288(sp)
   163c0:	14215803          	lhu	a6,322(sp)
   163c4:	12215883          	lhu	a7,290(sp)
   163c8:	fff54513          	not	a0,a0
   163cc:	03051513          	slli	a0,a0,0x30
   163d0:	03055513          	srli	a0,a0,0x30
   163d4:	12a11023          	sh	a0,288(sp)
   163d8:	410885b3          	sub	a1,a7,a6
   163dc:	00080693          	mv	a3,a6
   163e0:	06b05e63          	blez	a1,1645c <_ldtoa_r+0xe68>
   163e4:	00090713          	mv	a4,s2
   163e8:	14010793          	addi	a5,sp,320
   163ec:	15810613          	addi	a2,sp,344
   163f0:	00278793          	addi	a5,a5,2
   163f4:	ffe7d683          	lhu	a3,-2(a5)
   163f8:	00270713          	addi	a4,a4,2
   163fc:	fed71f23          	sh	a3,-2(a4)
   16400:	fec798e3          	bne	a5,a2,163f0 <_ldtoa_r+0xdfc>
   16404:	16011c23          	sh	zero,376(sp)
   16408:	14010793          	addi	a5,sp,320
   1640c:	12010713          	addi	a4,sp,288
   16410:	0080006f          	j	16418 <_ldtoa_r+0xe24>
   16414:	00075503          	lhu	a0,0(a4)
   16418:	00278793          	addi	a5,a5,2
   1641c:	fea79f23          	sh	a0,-2(a5)
   16420:	00270713          	addi	a4,a4,2
   16424:	fec798e3          	bne	a5,a2,16414 <_ldtoa_r+0xe20>
   16428:	14011c23          	sh	zero,344(sp)
   1642c:	12010713          	addi	a4,sp,288
   16430:	00090793          	mv	a5,s2
   16434:	17810593          	addi	a1,sp,376
   16438:	00278793          	addi	a5,a5,2
   1643c:	ffe7d683          	lhu	a3,-2(a5)
   16440:	00270713          	addi	a4,a4,2
   16444:	fed71f23          	sh	a3,-2(a4)
   16448:	feb798e3          	bne	a5,a1,16438 <_ldtoa_r+0xe44>
   1644c:	14215683          	lhu	a3,322(sp)
   16450:	411805b3          	sub	a1,a6,a7
   16454:	12011c23          	sh	zero,312(sp)
   16458:	00068813          	mv	a6,a3
   1645c:	30058c63          	beqz	a1,16774 <_ldtoa_r+0x1180>
   16460:	04d13423          	sd	a3,72(sp)
   16464:	f6f00793          	li	a5,-145
   16468:	06f5ca63          	blt	a1,a5,164dc <_ldtoa_r+0xee8>
   1646c:	0005859b          	sext.w	a1,a1
   16470:	12010513          	addi	a0,sp,288
   16474:	dcdfd0ef          	jal	ra,14240 <eshift.part.3>
   16478:	04813683          	ld	a3,72(sp)
   1647c:	00050593          	mv	a1,a0
   16480:	15810613          	addi	a2,sp,344
   16484:	13810813          	addi	a6,sp,312
   16488:	12015703          	lhu	a4,288(sp)
   1648c:	14015783          	lhu	a5,320(sp)
   16490:	34f70063          	beq	a4,a5,167d0 <_ldtoa_r+0x11dc>
   16494:	00000793          	li	a5,0
   16498:	00078713          	mv	a4,a5
   1649c:	00065783          	lhu	a5,0(a2) # 8000 <main-0x80b0>
   164a0:	00085503          	lhu	a0,0(a6)
   164a4:	ffe60613          	addi	a2,a2,-2
   164a8:	40e787b3          	sub	a5,a5,a4
   164ac:	40a787b3          	sub	a5,a5,a0
   164b0:	00f61123          	sh	a5,2(a2)
   164b4:	0107d793          	srli	a5,a5,0x10
   164b8:	0017f713          	andi	a4,a5,1
   164bc:	14210793          	addi	a5,sp,322
   164c0:	ffe80813          	addi	a6,a6,-2
   164c4:	fcf61ce3          	bne	a2,a5,1649c <_ldtoa_r+0xea8>
   164c8:	00100613          	li	a2,1
   164cc:	00098793          	mv	a5,s3
   164d0:	04000713          	li	a4,64
   164d4:	14010513          	addi	a0,sp,320
   164d8:	898fe0ef          	jal	ra,14570 <emdnorm>
   164dc:	00040593          	mv	a1,s0
   164e0:	14010513          	addi	a0,sp,320
   164e4:	e08fe0ef          	jal	ra,14aec <emovo.isra.6>
   164e8:	d11ff06f          	j	161f8 <_ldtoa_r+0xc04>
   164ec:	01013783          	ld	a5,16(sp)
   164f0:	fff7879b          	addiw	a5,a5,-1
   164f4:	b75ff06f          	j	16068 <_ldtoa_r+0xa74>
   164f8:	01813783          	ld	a5,24(sp)
   164fc:	16010023          	sb	zero,352(sp)
   16500:	00090413          	mv	s0,s2
   16504:	0007a023          	sw	zero,0(a5)
   16508:	b29ff06f          	j	16030 <_ldtoa_r+0xa3c>
   1650c:	00040793          	mv	a5,s0
   16510:	11410713          	addi	a4,sp,276
   16514:	00278793          	addi	a5,a5,2
   16518:	fe079f23          	sh	zero,-2(a5)
   1651c:	fee79ce3          	bne	a5,a4,16514 <_ldtoa_r+0xf20>
   16520:	cc9ff06f          	j	161e8 <_ldtoa_r+0xbf4>
   16524:	02013783          	ld	a5,32(sp)
   16528:	16010913          	addi	s2,sp,352
   1652c:	0e078c63          	beqz	a5,16624 <_ldtoa_r+0x1030>
   16530:	0000b597          	auipc	a1,0xb
   16534:	18058593          	addi	a1,a1,384 # 216b0 <bmask+0x30>
   16538:	00090513          	mv	a0,s2
   1653c:	000024b7          	lui	s1,0x2
   16540:	380020ef          	jal	ra,188c0 <sprintf>
   16544:	70f48493          	addi	s1,s1,1807 # 270f <main-0xd9a1>
   16548:	8e1ff06f          	j	15e28 <_ldtoa_r+0x834>
   1654c:	03100793          	li	a5,49
   16550:	16f100a3          	sb	a5,353(sp)
   16554:	02e00793          	li	a5,46
   16558:	16f10123          	sb	a5,354(sp)
   1655c:	0014849b          	addiw	s1,s1,1
   16560:	02900413          	li	s0,41
   16564:	03000793          	li	a5,48
   16568:	16f101a3          	sb	a5,355(sp)
   1656c:	16410c93          	addi	s9,sp,356
   16570:	e3cff06f          	j	15bac <_ldtoa_r+0x5b8>
   16574:	03100793          	li	a5,49
   16578:	16f100a3          	sb	a5,353(sp)
   1657c:	02e00793          	li	a5,46
   16580:	16f10123          	sb	a5,354(sp)
   16584:	0014849b          	addiw	s1,s1,1
   16588:	1e804263          	bgtz	s0,1676c <_ldtoa_r+0x1178>
   1658c:	16310c93          	addi	s9,sp,355
   16590:	880412e3          	bnez	s0,15e14 <_ldtoa_r+0x820>
   16594:	e18ff06f          	j	15bac <_ldtoa_r+0x5b8>
   16598:	11810a13          	addi	s4,sp,280
   1659c:	b58ff06f          	j	158f4 <_ldtoa_r+0x300>
   165a0:	03100793          	li	a5,49
   165a4:	fef98f23          	sb	a5,-2(s3)
   165a8:	0014849b          	addiw	s1,s1,1
   165ac:	869ff06f          	j	15e14 <_ldtoa_r+0x820>
   165b0:	16010913          	addi	s2,sp,352
   165b4:	0000b597          	auipc	a1,0xb
   165b8:	11c58593          	addi	a1,a1,284 # 216d0 <bmask+0x50>
   165bc:	00090513          	mv	a0,s2
   165c0:	000024b7          	lui	s1,0x2
   165c4:	2fc020ef          	jal	ra,188c0 <sprintf>
   165c8:	70f48493          	addi	s1,s1,1807 # 270f <main-0xd9a1>
   165cc:	85dff06f          	j	15e28 <_ldtoa_r+0x834>
   165d0:	0c010593          	addi	a1,sp,192
   165d4:	0a010513          	addi	a0,sp,160
   165d8:	d14fe0ef          	jal	ra,14aec <emovo.isra.6>
   165dc:	0000b597          	auipc	a1,0xb
   165e0:	e6458593          	addi	a1,a1,-412 # 21440 <ezero>
   165e4:	0c010513          	addi	a0,sp,192
   165e8:	b21fd0ef          	jal	ra,14108 <ecmp>
   165ec:	fa051a63          	bnez	a0,15da0 <_ldtoa_r+0x7ac>
   165f0:	820442e3          	bltz	s0,15e14 <_ldtoa_r+0x820>
   165f4:	ffe9c783          	lbu	a5,-2(s3)
   165f8:	fd278713          	addi	a4,a5,-46
   165fc:	00173713          	seqz	a4,a4
   16600:	fff74713          	not	a4,a4
   16604:	00ec8733          	add	a4,s9,a4
   16608:	00074703          	lbu	a4,0(a4)
   1660c:	00177713          	andi	a4,a4,1
   16610:	800702e3          	beqz	a4,15e14 <_ldtoa_r+0x820>
   16614:	07f7f793          	andi	a5,a5,127
   16618:	ffe98713          	addi	a4,s3,-2
   1661c:	0007881b          	sext.w	a6,a5
   16620:	f94ff06f          	j	15db4 <_ldtoa_r+0x7c0>
   16624:	0000b597          	auipc	a1,0xb
   16628:	09c58593          	addi	a1,a1,156 # 216c0 <bmask+0x40>
   1662c:	00090513          	mv	a0,s2
   16630:	000024b7          	lui	s1,0x2
   16634:	28c020ef          	jal	ra,188c0 <sprintf>
   16638:	70f48493          	addi	s1,s1,1807 # 270f <main-0xd9a1>
   1663c:	fecff06f          	j	15e28 <_ldtoa_r+0x834>
   16640:	0017879b          	addiw	a5,a5,1
   16644:	fef70fa3          	sb	a5,-1(a4)
   16648:	fccff06f          	j	15e14 <_ldtoa_r+0x820>
   1664c:	10010413          	addi	s0,sp,256
   16650:	00040593          	mv	a1,s0
   16654:	0a010513          	addi	a0,sp,160
   16658:	00004ab7          	lui	s5,0x4
   1665c:	9c1fd0ef          	jal	ra,1401c <emovi>
   16660:	00000493          	li	s1,0
   16664:	11810a13          	addi	s4,sp,280
   16668:	0f810913          	addi	s2,sp,248
   1666c:	10210993          	addi	s3,sp,258
   16670:	ffea8a93          	addi	s5,s5,-2 # 3ffe <main-0xc0b2>
   16674:	fd500c93          	li	s9,-43
   16678:	11815783          	lhu	a5,280(sp)
   1667c:	0077f793          	andi	a5,a5,7
   16680:	0c079863          	bnez	a5,16750 <_ldtoa_r+0x115c>
   16684:	0e010713          	addi	a4,sp,224
   16688:	00040793          	mv	a5,s0
   1668c:	00278793          	addi	a5,a5,2
   16690:	ffe7d683          	lhu	a3,-2(a5)
   16694:	00270713          	addi	a4,a4,2
   16698:	fed71f23          	sh	a3,-2(a4)
   1669c:	ff4798e3          	bne	a5,s4,1668c <_ldtoa_r+0x1098>
   166a0:	0e010513          	addi	a0,sp,224
   166a4:	0e011c23          	sh	zero,248(sp)
   166a8:	f08fd0ef          	jal	ra,13db0 <eshdn1>
   166ac:	0e010513          	addi	a0,sp,224
   166b0:	f00fd0ef          	jal	ra,13db0 <eshdn1>
   166b4:	00000613          	li	a2,0
   166b8:	00090693          	mv	a3,s2
   166bc:	000a0713          	mv	a4,s4
   166c0:	0006d583          	lhu	a1,0(a3)
   166c4:	00075783          	lhu	a5,0(a4)
   166c8:	ffe68693          	addi	a3,a3,-2
   166cc:	ffe70713          	addi	a4,a4,-2
   166d0:	00b787b3          	add	a5,a5,a1
   166d4:	00c787b3          	add	a5,a5,a2
   166d8:	00f69123          	sh	a5,2(a3)
   166dc:	0107d793          	srli	a5,a5,0x10
   166e0:	0017f613          	andi	a2,a5,1
   166e4:	fd371ee3          	bne	a4,s3,166c0 <_ldtoa_r+0x10cc>
   166e8:	0e215783          	lhu	a5,226(sp)
   166ec:	0e415703          	lhu	a4,228(sp)
   166f0:	0037879b          	addiw	a5,a5,3
   166f4:	0ef11123          	sh	a5,226(sp)
   166f8:	02070063          	beqz	a4,16718 <_ldtoa_r+0x1124>
   166fc:	0e010513          	addi	a0,sp,224
   16700:	eb0fd0ef          	jal	ra,13db0 <eshdn1>
   16704:	0e215783          	lhu	a5,226(sp)
   16708:	0e415703          	lhu	a4,228(sp)
   1670c:	0017879b          	addiw	a5,a5,1
   16710:	0ef11123          	sh	a5,226(sp)
   16714:	fe0714e3          	bnez	a4,166fc <_ldtoa_r+0x1108>
   16718:	0f815783          	lhu	a5,248(sp)
   1671c:	02079a63          	bnez	a5,16750 <_ldtoa_r+0x115c>
   16720:	0e215783          	lhu	a5,226(sp)
   16724:	02fae663          	bltu	s5,a5,16750 <_ldtoa_r+0x115c>
   16728:	00040713          	mv	a4,s0
   1672c:	0e010793          	addi	a5,sp,224
   16730:	00278793          	addi	a5,a5,2
   16734:	ffe7d683          	lhu	a3,-2(a5)
   16738:	00270713          	addi	a4,a4,2
   1673c:	fed71f23          	sh	a3,-2(a4)
   16740:	ff2798e3          	bne	a5,s2,16730 <_ldtoa_r+0x113c>
   16744:	10011c23          	sh	zero,280(sp)
   16748:	fff4849b          	addiw	s1,s1,-1
   1674c:	f39496e3          	bne	s1,s9,16678 <_ldtoa_r+0x1084>
   16750:	0a010593          	addi	a1,sp,160
   16754:	00040513          	mv	a0,s0
   16758:	b94fe0ef          	jal	ra,14aec <emovo.isra.6>
   1675c:	1a010993          	addi	s3,sp,416
   16760:	874ff06f          	j	157d4 <_ldtoa_r+0x1e0>
   16764:	00090793          	mv	a5,s2
   16768:	f48ff06f          	j	15eb0 <_ldtoa_r+0x8bc>
   1676c:	fff4041b          	addiw	s0,s0,-1
   16770:	df5ff06f          	j	16564 <_ldtoa_r+0xf70>
   16774:	14410713          	addi	a4,sp,324
   16778:	12410793          	addi	a5,sp,292
   1677c:	00278793          	addi	a5,a5,2
   16780:	00270713          	addi	a4,a4,2
   16784:	ffe7d583          	lhu	a1,-2(a5)
   16788:	ffe75603          	lhu	a2,-2(a4)
   1678c:	02c59863          	bne	a1,a2,167bc <_ldtoa_r+0x11c8>
   16790:	13a10613          	addi	a2,sp,314
   16794:	fec794e3          	bne	a5,a2,1677c <_ldtoa_r+0x1188>
   16798:	12015703          	lhu	a4,288(sp)
   1679c:	14015783          	lhu	a5,320(sp)
   167a0:	06f70663          	beq	a4,a5,1680c <_ldtoa_r+0x1218>
   167a4:	00040793          	mv	a5,s0
   167a8:	11410713          	addi	a4,sp,276
   167ac:	00278793          	addi	a5,a5,2
   167b0:	fe079f23          	sh	zero,-2(a5)
   167b4:	fee79ce3          	bne	a5,a4,167ac <_ldtoa_r+0x11b8>
   167b8:	a41ff06f          	j	161f8 <_ldtoa_r+0xc04>
   167bc:	0cb66c63          	bltu	a2,a1,16894 <_ldtoa_r+0x12a0>
   167c0:	00000593          	li	a1,0
   167c4:	15810613          	addi	a2,sp,344
   167c8:	13810813          	addi	a6,sp,312
   167cc:	cbdff06f          	j	16488 <_ldtoa_r+0xe94>
   167d0:	00000713          	li	a4,0
   167d4:	00080793          	mv	a5,a6
   167d8:	12210893          	addi	a7,sp,290
   167dc:	00065803          	lhu	a6,0(a2)
   167e0:	0007d503          	lhu	a0,0(a5)
   167e4:	ffe60613          	addi	a2,a2,-2
   167e8:	ffe78793          	addi	a5,a5,-2
   167ec:	01050533          	add	a0,a0,a6
   167f0:	00e50733          	add	a4,a0,a4
   167f4:	00e61123          	sh	a4,2(a2)
   167f8:	01075713          	srli	a4,a4,0x10
   167fc:	00177713          	andi	a4,a4,1
   16800:	fd179ee3          	bne	a5,a7,167dc <_ldtoa_r+0x11e8>
   16804:	00000613          	li	a2,0
   16808:	cc5ff06f          	j	164cc <_ldtoa_r+0xed8>
   1680c:	00068793          	mv	a5,a3
   16810:	06069463          	bnez	a3,16878 <_ldtoa_r+0x1284>
   16814:	14611703          	lh	a4,326(sp)
   16818:	06074063          	bltz	a4,16878 <_ldtoa_r+0x1284>
   1681c:	15810693          	addi	a3,sp,344
   16820:	0200006f          	j	16840 <_ldtoa_r+0x124c>
   16824:	00e69023          	sh	a4,0(a3)
   16828:	0017979b          	slliw	a5,a5,0x1
   1682c:	03079793          	slli	a5,a5,0x30
   16830:	ffe68693          	addi	a3,a3,-2
   16834:	14210713          	addi	a4,sp,322
   16838:	0307d793          	srli	a5,a5,0x30
   1683c:	cae680e3          	beq	a3,a4,164dc <_ldtoa_r+0xee8>
   16840:	0006d703          	lhu	a4,0(a3)
   16844:	0107161b          	slliw	a2,a4,0x10
   16848:	4106561b          	sraiw	a2,a2,0x10
   1684c:	02061593          	slli	a1,a2,0x20
   16850:	0017171b          	slliw	a4,a4,0x1
   16854:	0005d463          	bgez	a1,1685c <_ldtoa_r+0x1268>
   16858:	0017e793          	ori	a5,a5,1
   1685c:	03071713          	slli	a4,a4,0x30
   16860:	03075713          	srli	a4,a4,0x30
   16864:	0027f613          	andi	a2,a5,2
   16868:	00176593          	ori	a1,a4,1
   1686c:	fa060ce3          	beqz	a2,16824 <_ldtoa_r+0x1230>
   16870:	00b69023          	sh	a1,0(a3)
   16874:	fb5ff06f          	j	16828 <_ldtoa_r+0x1234>
   16878:	14410713          	addi	a4,sp,324
   1687c:	15810613          	addi	a2,sp,344
   16880:	08079463          	bnez	a5,16908 <_ldtoa_r+0x1314>
   16884:	08e60463          	beq	a2,a4,1690c <_ldtoa_r+0x1318>
   16888:	00075783          	lhu	a5,0(a4)
   1688c:	00270713          	addi	a4,a4,2
   16890:	ff1ff06f          	j	16880 <_ldtoa_r+0x128c>
   16894:	00090713          	mv	a4,s2
   16898:	14010793          	addi	a5,sp,320
   1689c:	15810613          	addi	a2,sp,344
   168a0:	00278793          	addi	a5,a5,2
   168a4:	ffe7d583          	lhu	a1,-2(a5)
   168a8:	00270713          	addi	a4,a4,2
   168ac:	feb71f23          	sh	a1,-2(a4)
   168b0:	fec798e3          	bne	a5,a2,168a0 <_ldtoa_r+0x12ac>
   168b4:	16011c23          	sh	zero,376(sp)
   168b8:	14010713          	addi	a4,sp,320
   168bc:	12010793          	addi	a5,sp,288
   168c0:	13810813          	addi	a6,sp,312
   168c4:	00278793          	addi	a5,a5,2
   168c8:	ffe7d583          	lhu	a1,-2(a5)
   168cc:	00270713          	addi	a4,a4,2
   168d0:	feb71f23          	sh	a1,-2(a4)
   168d4:	ff0798e3          	bne	a5,a6,168c4 <_ldtoa_r+0x12d0>
   168d8:	14011c23          	sh	zero,344(sp)
   168dc:	12010713          	addi	a4,sp,288
   168e0:	00090793          	mv	a5,s2
   168e4:	17810593          	addi	a1,sp,376
   168e8:	00278793          	addi	a5,a5,2
   168ec:	ffe7d503          	lhu	a0,-2(a5)
   168f0:	00270713          	addi	a4,a4,2
   168f4:	fea71f23          	sh	a0,-2(a4)
   168f8:	feb798e3          	bne	a5,a1,168e8 <_ldtoa_r+0x12f4>
   168fc:	12011c23          	sh	zero,312(sp)
   16900:	00000593          	li	a1,0
   16904:	b85ff06f          	j	16488 <_ldtoa_r+0xe94>
   16908:	00168813          	addi	a6,a3,1
   1690c:	15011123          	sh	a6,322(sp)
   16910:	bcdff06f          	j	164dc <_ldtoa_r+0xee8>

0000000000016914 <_ldcheck>:
   16914:	00053703          	ld	a4,0(a0)
   16918:	00853783          	ld	a5,8(a0)
   1691c:	fc010113          	addi	sp,sp,-64
   16920:	00010513          	mv	a0,sp
   16924:	01010593          	addi	a1,sp,16
   16928:	00e13023          	sd	a4,0(sp)
   1692c:	00f13423          	sd	a5,8(sp)
   16930:	02113c23          	sd	ra,56(sp)
   16934:	b79fe0ef          	jal	ra,154ac <e113toe.isra.8>
   16938:	02215783          	lhu	a5,34(sp)
   1693c:	00000513          	li	a0,0
   16940:	fff7c793          	not	a5,a5
   16944:	03179713          	slli	a4,a5,0x31
   16948:	00071a63          	bnez	a4,1695c <_ldcheck+0x48>
   1694c:	01010513          	addi	a0,sp,16
   16950:	e1cfd0ef          	jal	ra,13f6c <eisnan.part.0>
   16954:	00153513          	seqz	a0,a0
   16958:	00150513          	addi	a0,a0,1
   1695c:	03813083          	ld	ra,56(sp)
   16960:	04010113          	addi	sp,sp,64
   16964:	00008067          	ret

0000000000016968 <__localeconv_l>:
   16968:	10050513          	addi	a0,a0,256
   1696c:	00008067          	ret

0000000000016970 <_localeconv_r>:
   16970:	e6018513          	addi	a0,gp,-416 # 22868 <__global_locale+0x100>
   16974:	00008067          	ret

0000000000016978 <localeconv>:
   16978:	e6018513          	addi	a0,gp,-416 # 22868 <__global_locale+0x100>
   1697c:	00008067          	ret

0000000000016980 <_setlocale_r>:
   16980:	04060063          	beqz	a2,169c0 <_setlocale_r+0x40>
   16984:	ff010113          	addi	sp,sp,-16
   16988:	0000b597          	auipc	a1,0xb
   1698c:	d6058593          	addi	a1,a1,-672 # 216e8 <bmask+0x68>
   16990:	00060513          	mv	a0,a2
   16994:	00813023          	sd	s0,0(sp)
   16998:	00113423          	sd	ra,8(sp)
   1699c:	00060413          	mv	s0,a2
   169a0:	0f8020ef          	jal	ra,18a98 <strcmp>
   169a4:	02051463          	bnez	a0,169cc <_setlocale_r+0x4c>
   169a8:	0000b517          	auipc	a0,0xb
   169ac:	d3850513          	addi	a0,a0,-712 # 216e0 <bmask+0x60>
   169b0:	00813083          	ld	ra,8(sp)
   169b4:	00013403          	ld	s0,0(sp)
   169b8:	01010113          	addi	sp,sp,16
   169bc:	00008067          	ret
   169c0:	0000b517          	auipc	a0,0xb
   169c4:	d2050513          	addi	a0,a0,-736 # 216e0 <bmask+0x60>
   169c8:	00008067          	ret
   169cc:	0000b597          	auipc	a1,0xb
   169d0:	d1458593          	addi	a1,a1,-748 # 216e0 <bmask+0x60>
   169d4:	00040513          	mv	a0,s0
   169d8:	0c0020ef          	jal	ra,18a98 <strcmp>
   169dc:	fc0506e3          	beqz	a0,169a8 <_setlocale_r+0x28>
   169e0:	0000b597          	auipc	a1,0xb
   169e4:	a4858593          	addi	a1,a1,-1464 # 21428 <zeroes.4539+0x88>
   169e8:	00040513          	mv	a0,s0
   169ec:	0ac020ef          	jal	ra,18a98 <strcmp>
   169f0:	fa050ce3          	beqz	a0,169a8 <_setlocale_r+0x28>
   169f4:	00000513          	li	a0,0
   169f8:	fb9ff06f          	j	169b0 <_setlocale_r+0x30>

00000000000169fc <__locale_mb_cur_max>:
   169fc:	ec01c503          	lbu	a0,-320(gp) # 228c8 <__global_locale+0x160>
   16a00:	00008067          	ret

0000000000016a04 <setlocale>:
   16a04:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   16a08:	00058613          	mv	a2,a1
   16a0c:	00050593          	mv	a1,a0
   16a10:	0007b503          	ld	a0,0(a5)
   16a14:	f6dff06f          	j	16980 <_setlocale_r>

0000000000016a18 <__swhatbuf_r>:
   16a18:	f7010113          	addi	sp,sp,-144
   16a1c:	08813023          	sd	s0,128(sp)
   16a20:	00058413          	mv	s0,a1
   16a24:	01259583          	lh	a1,18(a1)
   16a28:	06913c23          	sd	s1,120(sp)
   16a2c:	07213823          	sd	s2,112(sp)
   16a30:	08113423          	sd	ra,136(sp)
   16a34:	00060493          	mv	s1,a2
   16a38:	00068913          	mv	s2,a3
   16a3c:	0405ca63          	bltz	a1,16a90 <__swhatbuf_r+0x78>
   16a40:	00810613          	addi	a2,sp,8
   16a44:	3e0060ef          	jal	ra,1ce24 <_fstat_r>
   16a48:	04054463          	bltz	a0,16a90 <__swhatbuf_r+0x78>
   16a4c:	00c12783          	lw	a5,12(sp)
   16a50:	0000f737          	lui	a4,0xf
   16a54:	08813083          	ld	ra,136(sp)
   16a58:	00e7f7b3          	and	a5,a5,a4
   16a5c:	00002737          	lui	a4,0x2
   16a60:	40e787b3          	sub	a5,a5,a4
   16a64:	0017b793          	seqz	a5,a5
   16a68:	08013403          	ld	s0,128(sp)
   16a6c:	00f92023          	sw	a5,0(s2) # fffffffffffff000 <__BSS_END__+0xfffffffffffdbdf8>
   16a70:	40000793          	li	a5,1024
   16a74:	00f4b023          	sd	a5,0(s1)
   16a78:	00001537          	lui	a0,0x1
   16a7c:	07813483          	ld	s1,120(sp)
   16a80:	07013903          	ld	s2,112(sp)
   16a84:	80050513          	addi	a0,a0,-2048 # 800 <main-0xf8b0>
   16a88:	09010113          	addi	sp,sp,144
   16a8c:	00008067          	ret
   16a90:	01045783          	lhu	a5,16(s0)
   16a94:	00092023          	sw	zero,0(s2)
   16a98:	0807f793          	andi	a5,a5,128
   16a9c:	02078463          	beqz	a5,16ac4 <__swhatbuf_r+0xac>
   16aa0:	08813083          	ld	ra,136(sp)
   16aa4:	08013403          	ld	s0,128(sp)
   16aa8:	04000793          	li	a5,64
   16aac:	00f4b023          	sd	a5,0(s1)
   16ab0:	07013903          	ld	s2,112(sp)
   16ab4:	07813483          	ld	s1,120(sp)
   16ab8:	00000513          	li	a0,0
   16abc:	09010113          	addi	sp,sp,144
   16ac0:	00008067          	ret
   16ac4:	08813083          	ld	ra,136(sp)
   16ac8:	08013403          	ld	s0,128(sp)
   16acc:	40000793          	li	a5,1024
   16ad0:	00f4b023          	sd	a5,0(s1)
   16ad4:	07013903          	ld	s2,112(sp)
   16ad8:	07813483          	ld	s1,120(sp)
   16adc:	00000513          	li	a0,0
   16ae0:	09010113          	addi	sp,sp,144
   16ae4:	00008067          	ret

0000000000016ae8 <__smakebuf_r>:
   16ae8:	0105d703          	lhu	a4,16(a1)
   16aec:	fd010113          	addi	sp,sp,-48
   16af0:	02813023          	sd	s0,32(sp)
   16af4:	02113423          	sd	ra,40(sp)
   16af8:	00913c23          	sd	s1,24(sp)
   16afc:	01213823          	sd	s2,16(sp)
   16b00:	00277713          	andi	a4,a4,2
   16b04:	00058413          	mv	s0,a1
   16b08:	02070863          	beqz	a4,16b38 <__smakebuf_r+0x50>
   16b0c:	07758713          	addi	a4,a1,119
   16b10:	00e5b023          	sd	a4,0(a1)
   16b14:	00e5bc23          	sd	a4,24(a1)
   16b18:	00100713          	li	a4,1
   16b1c:	02e5a023          	sw	a4,32(a1)
   16b20:	02813083          	ld	ra,40(sp)
   16b24:	02013403          	ld	s0,32(sp)
   16b28:	01813483          	ld	s1,24(sp)
   16b2c:	01013903          	ld	s2,16(sp)
   16b30:	03010113          	addi	sp,sp,48
   16b34:	00008067          	ret
   16b38:	00410693          	addi	a3,sp,4
   16b3c:	00810613          	addi	a2,sp,8
   16b40:	00050493          	mv	s1,a0
   16b44:	ed5ff0ef          	jal	ra,16a18 <__swhatbuf_r>
   16b48:	00813583          	ld	a1,8(sp)
   16b4c:	00050913          	mv	s2,a0
   16b50:	00048513          	mv	a0,s1
   16b54:	0b4000ef          	jal	ra,16c08 <_malloc_r>
   16b58:	01041783          	lh	a5,16(s0)
   16b5c:	04050863          	beqz	a0,16bac <__smakebuf_r+0xc4>
   16b60:	ffffd697          	auipc	a3,0xffffd
   16b64:	8b868693          	addi	a3,a3,-1864 # 13418 <_cleanup_r>
   16b68:	04d4bc23          	sd	a3,88(s1)
   16b6c:	00813683          	ld	a3,8(sp)
   16b70:	00412703          	lw	a4,4(sp)
   16b74:	0807e793          	ori	a5,a5,128
   16b78:	00f41823          	sh	a5,16(s0)
   16b7c:	00a43023          	sd	a0,0(s0)
   16b80:	00a43c23          	sd	a0,24(s0)
   16b84:	02d42023          	sw	a3,32(s0)
   16b88:	04071863          	bnez	a4,16bd8 <__smakebuf_r+0xf0>
   16b8c:	0127e7b3          	or	a5,a5,s2
   16b90:	00f41823          	sh	a5,16(s0)
   16b94:	02813083          	ld	ra,40(sp)
   16b98:	02013403          	ld	s0,32(sp)
   16b9c:	01813483          	ld	s1,24(sp)
   16ba0:	01013903          	ld	s2,16(sp)
   16ba4:	03010113          	addi	sp,sp,48
   16ba8:	00008067          	ret
   16bac:	2007f713          	andi	a4,a5,512
   16bb0:	f60718e3          	bnez	a4,16b20 <__smakebuf_r+0x38>
   16bb4:	ffc7f793          	andi	a5,a5,-4
   16bb8:	0027e793          	ori	a5,a5,2
   16bbc:	07740713          	addi	a4,s0,119
   16bc0:	00f41823          	sh	a5,16(s0)
   16bc4:	00100793          	li	a5,1
   16bc8:	00e43023          	sd	a4,0(s0)
   16bcc:	00e43c23          	sd	a4,24(s0)
   16bd0:	02f42023          	sw	a5,32(s0)
   16bd4:	f4dff06f          	j	16b20 <__smakebuf_r+0x38>
   16bd8:	01241583          	lh	a1,18(s0)
   16bdc:	00048513          	mv	a0,s1
   16be0:	770060ef          	jal	ra,1d350 <_isatty_r>
   16be4:	00051663          	bnez	a0,16bf0 <__smakebuf_r+0x108>
   16be8:	01041783          	lh	a5,16(s0)
   16bec:	fa1ff06f          	j	16b8c <__smakebuf_r+0xa4>
   16bf0:	01045783          	lhu	a5,16(s0)
   16bf4:	ffc7f793          	andi	a5,a5,-4
   16bf8:	0017e793          	ori	a5,a5,1
   16bfc:	0107979b          	slliw	a5,a5,0x10
   16c00:	4107d79b          	sraiw	a5,a5,0x10
   16c04:	f89ff06f          	j	16b8c <__smakebuf_r+0xa4>

0000000000016c08 <_malloc_r>:
   16c08:	fa010113          	addi	sp,sp,-96
   16c0c:	04913423          	sd	s1,72(sp)
   16c10:	05213023          	sd	s2,64(sp)
   16c14:	04113c23          	sd	ra,88(sp)
   16c18:	04813823          	sd	s0,80(sp)
   16c1c:	03313c23          	sd	s3,56(sp)
   16c20:	03413823          	sd	s4,48(sp)
   16c24:	03513423          	sd	s5,40(sp)
   16c28:	03613023          	sd	s6,32(sp)
   16c2c:	01713c23          	sd	s7,24(sp)
   16c30:	01813823          	sd	s8,16(sp)
   16c34:	01913423          	sd	s9,8(sp)
   16c38:	01758493          	addi	s1,a1,23
   16c3c:	02e00793          	li	a5,46
   16c40:	00050913          	mv	s2,a0
   16c44:	0a97e663          	bltu	a5,s1,16cf0 <_malloc_r+0xe8>
   16c48:	02000793          	li	a5,32
   16c4c:	06b7e263          	bltu	a5,a1,16cb0 <_malloc_r+0xa8>
   16c50:	175000ef          	jal	ra,175c4 <__malloc_lock>
   16c54:	02000493          	li	s1,32
   16c58:	05000793          	li	a5,80
   16c5c:	00400613          	li	a2,4
   16c60:	0000c997          	auipc	s3,0xc
   16c64:	cb098993          	addi	s3,s3,-848 # 22910 <__malloc_av_>
   16c68:	00f987b3          	add	a5,s3,a5
   16c6c:	0087b403          	ld	s0,8(a5)
   16c70:	ff078713          	addi	a4,a5,-16
   16c74:	2ae40063          	beq	s0,a4,16f14 <_malloc_r+0x30c>
   16c78:	00843783          	ld	a5,8(s0)
   16c7c:	01843683          	ld	a3,24(s0)
   16c80:	01043603          	ld	a2,16(s0)
   16c84:	ffc7f793          	andi	a5,a5,-4
   16c88:	00f407b3          	add	a5,s0,a5
   16c8c:	0087b703          	ld	a4,8(a5)
   16c90:	00d63c23          	sd	a3,24(a2)
   16c94:	00c6b823          	sd	a2,16(a3)
   16c98:	00176713          	ori	a4,a4,1
   16c9c:	00090513          	mv	a0,s2
   16ca0:	00e7b423          	sd	a4,8(a5)
   16ca4:	125000ef          	jal	ra,175c8 <__malloc_unlock>
   16ca8:	01040513          	addi	a0,s0,16
   16cac:	0100006f          	j	16cbc <_malloc_r+0xb4>
   16cb0:	00c00793          	li	a5,12
   16cb4:	00f92023          	sw	a5,0(s2)
   16cb8:	00000513          	li	a0,0
   16cbc:	05813083          	ld	ra,88(sp)
   16cc0:	05013403          	ld	s0,80(sp)
   16cc4:	04813483          	ld	s1,72(sp)
   16cc8:	04013903          	ld	s2,64(sp)
   16ccc:	03813983          	ld	s3,56(sp)
   16cd0:	03013a03          	ld	s4,48(sp)
   16cd4:	02813a83          	ld	s5,40(sp)
   16cd8:	02013b03          	ld	s6,32(sp)
   16cdc:	01813b83          	ld	s7,24(sp)
   16ce0:	01013c03          	ld	s8,16(sp)
   16ce4:	00813c83          	ld	s9,8(sp)
   16ce8:	06010113          	addi	sp,sp,96
   16cec:	00008067          	ret
   16cf0:	800007b7          	lui	a5,0x80000
   16cf4:	ff04f493          	andi	s1,s1,-16
   16cf8:	fff7c793          	not	a5,a5
   16cfc:	fa97eae3          	bltu	a5,s1,16cb0 <_malloc_r+0xa8>
   16d00:	fab4e8e3          	bltu	s1,a1,16cb0 <_malloc_r+0xa8>
   16d04:	0c1000ef          	jal	ra,175c4 <__malloc_lock>
   16d08:	1f700793          	li	a5,503
   16d0c:	4c97f263          	bgeu	a5,s1,171d0 <_malloc_r+0x5c8>
   16d10:	0094d793          	srli	a5,s1,0x9
   16d14:	36078863          	beqz	a5,17084 <_malloc_r+0x47c>
   16d18:	00400713          	li	a4,4
   16d1c:	42f76c63          	bltu	a4,a5,17154 <_malloc_r+0x54c>
   16d20:	0064d513          	srli	a0,s1,0x6
   16d24:	0005051b          	sext.w	a0,a0
   16d28:	0395061b          	addiw	a2,a0,57
   16d2c:	0016169b          	slliw	a3,a2,0x1
   16d30:	0385051b          	addiw	a0,a0,56
   16d34:	00369693          	slli	a3,a3,0x3
   16d38:	0000c997          	auipc	s3,0xc
   16d3c:	bd898993          	addi	s3,s3,-1064 # 22910 <__malloc_av_>
   16d40:	00d986b3          	add	a3,s3,a3
   16d44:	0086b403          	ld	s0,8(a3)
   16d48:	ff068693          	addi	a3,a3,-16
   16d4c:	1c868a63          	beq	a3,s0,16f20 <_malloc_r+0x318>
   16d50:	00843783          	ld	a5,8(s0)
   16d54:	01f00593          	li	a1,31
   16d58:	ffc7f793          	andi	a5,a5,-4
   16d5c:	40978733          	sub	a4,a5,s1
   16d60:	02e5c063          	blt	a1,a4,16d80 <_malloc_r+0x178>
   16d64:	36075e63          	bgez	a4,170e0 <_malloc_r+0x4d8>
   16d68:	01843403          	ld	s0,24(s0)
   16d6c:	1a868a63          	beq	a3,s0,16f20 <_malloc_r+0x318>
   16d70:	00843783          	ld	a5,8(s0)
   16d74:	ffc7f793          	andi	a5,a5,-4
   16d78:	40978733          	sub	a4,a5,s1
   16d7c:	fee5d4e3          	bge	a1,a4,16d64 <_malloc_r+0x15c>
   16d80:	0209b403          	ld	s0,32(s3)
   16d84:	0000c817          	auipc	a6,0xc
   16d88:	b9c80813          	addi	a6,a6,-1124 # 22920 <__malloc_av_+0x10>
   16d8c:	00050613          	mv	a2,a0
   16d90:	1b041063          	bne	s0,a6,16f30 <_malloc_r+0x328>
   16d94:	0089b783          	ld	a5,8(s3)
   16d98:	4026571b          	sraiw	a4,a2,0x2
   16d9c:	00100693          	li	a3,1
   16da0:	00e696b3          	sll	a3,a3,a4
   16da4:	20d7fc63          	bgeu	a5,a3,16fbc <_malloc_r+0x3b4>
   16da8:	0109b403          	ld	s0,16(s3)
   16dac:	00843a03          	ld	s4,8(s0)
   16db0:	ffca7a93          	andi	s5,s4,-4
   16db4:	009ae863          	bltu	s5,s1,16dc4 <_malloc_r+0x1bc>
   16db8:	409a87b3          	sub	a5,s5,s1
   16dbc:	01f00713          	li	a4,31
   16dc0:	2ef74a63          	blt	a4,a5,170b4 <_malloc_r+0x4ac>
   16dc4:	78818793          	addi	a5,gp,1928 # 23190 <__malloc_top_pad>
   16dc8:	76018c13          	addi	s8,gp,1888 # 23168 <__malloc_sbrk_base>
   16dcc:	0007ba03          	ld	s4,0(a5) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdcdf8>
   16dd0:	000c3703          	ld	a4,0(s8)
   16dd4:	fff00793          	li	a5,-1
   16dd8:	01540bb3          	add	s7,s0,s5
   16ddc:	01448a33          	add	s4,s1,s4
   16de0:	4cf70263          	beq	a4,a5,172a4 <_malloc_r+0x69c>
   16de4:	000017b7          	lui	a5,0x1
   16de8:	01f78793          	addi	a5,a5,31 # 101f <main-0xf091>
   16dec:	00fa0a33          	add	s4,s4,a5
   16df0:	fffff7b7          	lui	a5,0xfffff
   16df4:	00fa7a33          	and	s4,s4,a5
   16df8:	000a0593          	mv	a1,s4
   16dfc:	00090513          	mv	a0,s2
   16e00:	135010ef          	jal	ra,18734 <_sbrk_r>
   16e04:	fff00793          	li	a5,-1
   16e08:	00050b13          	mv	s6,a0
   16e0c:	3ef50e63          	beq	a0,a5,17208 <_malloc_r+0x600>
   16e10:	3f756a63          	bltu	a0,s7,17204 <_malloc_r+0x5fc>
   16e14:	7d018c93          	addi	s9,gp,2000 # 231d8 <__malloc_current_mallinfo>
   16e18:	000ca703          	lw	a4,0(s9)
   16e1c:	014707bb          	addw	a5,a4,s4
   16e20:	7cf1a823          	sw	a5,2000(gp) # 231d8 <__malloc_current_mallinfo>
   16e24:	00078693          	mv	a3,a5
   16e28:	54ab8063          	beq	s7,a0,17368 <_malloc_r+0x760>
   16e2c:	000c3703          	ld	a4,0(s8)
   16e30:	fff00793          	li	a5,-1
   16e34:	54f70863          	beq	a4,a5,17384 <_malloc_r+0x77c>
   16e38:	417b07b3          	sub	a5,s6,s7
   16e3c:	00d787bb          	addw	a5,a5,a3
   16e40:	7cf1a823          	sw	a5,2000(gp) # 231d8 <__malloc_current_mallinfo>
   16e44:	00fb7b93          	andi	s7,s6,15
   16e48:	480b8263          	beqz	s7,172cc <_malloc_r+0x6c4>
   16e4c:	417b0b33          	sub	s6,s6,s7
   16e50:	000017b7          	lui	a5,0x1
   16e54:	010b0b13          	addi	s6,s6,16
   16e58:	fff78713          	addi	a4,a5,-1 # fff <main-0xf0b1>
   16e5c:	014b0c33          	add	s8,s6,s4
   16e60:	01078793          	addi	a5,a5,16
   16e64:	41778a33          	sub	s4,a5,s7
   16e68:	00ec77b3          	and	a5,s8,a4
   16e6c:	40fa0a33          	sub	s4,s4,a5
   16e70:	00ea7a33          	and	s4,s4,a4
   16e74:	000a0593          	mv	a1,s4
   16e78:	00090513          	mv	a0,s2
   16e7c:	0b9010ef          	jal	ra,18734 <_sbrk_r>
   16e80:	fff00793          	li	a5,-1
   16e84:	56f50263          	beq	a0,a5,173e8 <_malloc_r+0x7e0>
   16e88:	41650533          	sub	a0,a0,s6
   16e8c:	000a071b          	sext.w	a4,s4
   16e90:	01450a33          	add	s4,a0,s4
   16e94:	000ca783          	lw	a5,0(s9)
   16e98:	0000c697          	auipc	a3,0xc
   16e9c:	a966b423          	sd	s6,-1400(a3) # 22920 <__malloc_av_+0x10>
   16ea0:	001a6a13          	ori	s4,s4,1
   16ea4:	00e787bb          	addw	a5,a5,a4
   16ea8:	7cf1a823          	sw	a5,2000(gp) # 231d8 <__malloc_current_mallinfo>
   16eac:	014b3423          	sd	s4,8(s6)
   16eb0:	4d340e63          	beq	s0,s3,1738c <_malloc_r+0x784>
   16eb4:	01f00613          	li	a2,31
   16eb8:	4d567e63          	bgeu	a2,s5,17394 <_malloc_r+0x78c>
   16ebc:	00843683          	ld	a3,8(s0)
   16ec0:	fe8a8713          	addi	a4,s5,-24
   16ec4:	ff077713          	andi	a4,a4,-16
   16ec8:	0016f693          	andi	a3,a3,1
   16ecc:	00e6e6b3          	or	a3,a3,a4
   16ed0:	00d43423          	sd	a3,8(s0)
   16ed4:	00900593          	li	a1,9
   16ed8:	00e406b3          	add	a3,s0,a4
   16edc:	00b6b423          	sd	a1,8(a3)
   16ee0:	00b6b823          	sd	a1,16(a3)
   16ee4:	50e66c63          	bltu	a2,a4,173fc <_malloc_r+0x7f4>
   16ee8:	008b3a03          	ld	s4,8(s6)
   16eec:	000b0413          	mv	s0,s6
   16ef0:	78018713          	addi	a4,gp,1920 # 23188 <__malloc_max_sbrked_mem>
   16ef4:	00073703          	ld	a4,0(a4) # 2000 <main-0xe0b0>
   16ef8:	00f77463          	bgeu	a4,a5,16f00 <_malloc_r+0x2f8>
   16efc:	78f1b023          	sd	a5,1920(gp) # 23188 <__malloc_max_sbrked_mem>
   16f00:	77818713          	addi	a4,gp,1912 # 23180 <__malloc_max_total_mem>
   16f04:	00073703          	ld	a4,0(a4)
   16f08:	30f77463          	bgeu	a4,a5,17210 <_malloc_r+0x608>
   16f0c:	76f1bc23          	sd	a5,1912(gp) # 23180 <__malloc_max_total_mem>
   16f10:	3000006f          	j	17210 <_malloc_r+0x608>
   16f14:	0187b403          	ld	s0,24(a5)
   16f18:	0026061b          	addiw	a2,a2,2
   16f1c:	d4879ee3          	bne	a5,s0,16c78 <_malloc_r+0x70>
   16f20:	0209b403          	ld	s0,32(s3)
   16f24:	0000c817          	auipc	a6,0xc
   16f28:	9fc80813          	addi	a6,a6,-1540 # 22920 <__malloc_av_+0x10>
   16f2c:	e70404e3          	beq	s0,a6,16d94 <_malloc_r+0x18c>
   16f30:	00843783          	ld	a5,8(s0)
   16f34:	01f00693          	li	a3,31
   16f38:	ffc7f793          	andi	a5,a5,-4
   16f3c:	40978733          	sub	a4,a5,s1
   16f40:	28e6c263          	blt	a3,a4,171c4 <_malloc_r+0x5bc>
   16f44:	0000c697          	auipc	a3,0xc
   16f48:	9f06ba23          	sd	a6,-1548(a3) # 22938 <__malloc_av_+0x28>
   16f4c:	0000c697          	auipc	a3,0xc
   16f50:	9f06b223          	sd	a6,-1564(a3) # 22930 <__malloc_av_+0x20>
   16f54:	14075063          	bgez	a4,17094 <_malloc_r+0x48c>
   16f58:	1ff00713          	li	a4,511
   16f5c:	18f76863          	bltu	a4,a5,170ec <_malloc_r+0x4e4>
   16f60:	0037d793          	srli	a5,a5,0x3
   16f64:	0007879b          	sext.w	a5,a5
   16f68:	0017871b          	addiw	a4,a5,1
   16f6c:	0017171b          	slliw	a4,a4,0x1
   16f70:	00371713          	slli	a4,a4,0x3
   16f74:	0089b503          	ld	a0,8(s3)
   16f78:	00e98733          	add	a4,s3,a4
   16f7c:	00073583          	ld	a1,0(a4)
   16f80:	4027d69b          	sraiw	a3,a5,0x2
   16f84:	00100793          	li	a5,1
   16f88:	00d797b3          	sll	a5,a5,a3
   16f8c:	00a7e7b3          	or	a5,a5,a0
   16f90:	ff070693          	addi	a3,a4,-16
   16f94:	00d43c23          	sd	a3,24(s0)
   16f98:	00b43823          	sd	a1,16(s0)
   16f9c:	0000c697          	auipc	a3,0xc
   16fa0:	96f6be23          	sd	a5,-1668(a3) # 22918 <__malloc_av_+0x8>
   16fa4:	00873023          	sd	s0,0(a4)
   16fa8:	0085bc23          	sd	s0,24(a1)
   16fac:	4026571b          	sraiw	a4,a2,0x2
   16fb0:	00100693          	li	a3,1
   16fb4:	00e696b3          	sll	a3,a3,a4
   16fb8:	ded7e8e3          	bltu	a5,a3,16da8 <_malloc_r+0x1a0>
   16fbc:	00f6f733          	and	a4,a3,a5
   16fc0:	02071463          	bnez	a4,16fe8 <_malloc_r+0x3e0>
   16fc4:	00169693          	slli	a3,a3,0x1
   16fc8:	ffc67613          	andi	a2,a2,-4
   16fcc:	00f6f733          	and	a4,a3,a5
   16fd0:	0046061b          	addiw	a2,a2,4
   16fd4:	00071a63          	bnez	a4,16fe8 <_malloc_r+0x3e0>
   16fd8:	00169693          	slli	a3,a3,0x1
   16fdc:	00f6f733          	and	a4,a3,a5
   16fe0:	0046061b          	addiw	a2,a2,4
   16fe4:	fe070ae3          	beqz	a4,16fd8 <_malloc_r+0x3d0>
   16fe8:	01f00513          	li	a0,31
   16fec:	0016089b          	addiw	a7,a2,1
   16ff0:	0018989b          	slliw	a7,a7,0x1
   16ff4:	00389893          	slli	a7,a7,0x3
   16ff8:	ff088893          	addi	a7,a7,-16
   16ffc:	011988b3          	add	a7,s3,a7
   17000:	00088593          	mv	a1,a7
   17004:	00060313          	mv	t1,a2
   17008:	0185b403          	ld	s0,24(a1)
   1700c:	00859a63          	bne	a1,s0,17020 <_malloc_r+0x418>
   17010:	1700006f          	j	17180 <_malloc_r+0x578>
   17014:	18075063          	bgez	a4,17194 <_malloc_r+0x58c>
   17018:	01843403          	ld	s0,24(s0)
   1701c:	16858263          	beq	a1,s0,17180 <_malloc_r+0x578>
   17020:	00843783          	ld	a5,8(s0)
   17024:	ffc7f793          	andi	a5,a5,-4
   17028:	40978733          	sub	a4,a5,s1
   1702c:	fee554e3          	bge	a0,a4,17014 <_malloc_r+0x40c>
   17030:	01843683          	ld	a3,24(s0)
   17034:	01043603          	ld	a2,16(s0)
   17038:	0014e593          	ori	a1,s1,1
   1703c:	00b43423          	sd	a1,8(s0)
   17040:	00d63c23          	sd	a3,24(a2)
   17044:	00c6b823          	sd	a2,16(a3)
   17048:	009404b3          	add	s1,s0,s1
   1704c:	0000c697          	auipc	a3,0xc
   17050:	8e96b623          	sd	s1,-1812(a3) # 22938 <__malloc_av_+0x28>
   17054:	0000c697          	auipc	a3,0xc
   17058:	8c96be23          	sd	s1,-1828(a3) # 22930 <__malloc_av_+0x20>
   1705c:	00176693          	ori	a3,a4,1
   17060:	0104bc23          	sd	a6,24(s1)
   17064:	0104b823          	sd	a6,16(s1)
   17068:	00d4b423          	sd	a3,8(s1)
   1706c:	00f407b3          	add	a5,s0,a5
   17070:	00090513          	mv	a0,s2
   17074:	00e7b023          	sd	a4,0(a5)
   17078:	550000ef          	jal	ra,175c8 <__malloc_unlock>
   1707c:	01040513          	addi	a0,s0,16
   17080:	c3dff06f          	j	16cbc <_malloc_r+0xb4>
   17084:	40000693          	li	a3,1024
   17088:	04000613          	li	a2,64
   1708c:	03f00513          	li	a0,63
   17090:	ca9ff06f          	j	16d38 <_malloc_r+0x130>
   17094:	00f407b3          	add	a5,s0,a5
   17098:	0087b703          	ld	a4,8(a5)
   1709c:	00090513          	mv	a0,s2
   170a0:	00176713          	ori	a4,a4,1
   170a4:	00e7b423          	sd	a4,8(a5)
   170a8:	520000ef          	jal	ra,175c8 <__malloc_unlock>
   170ac:	01040513          	addi	a0,s0,16
   170b0:	c0dff06f          	j	16cbc <_malloc_r+0xb4>
   170b4:	0014e713          	ori	a4,s1,1
   170b8:	00e43423          	sd	a4,8(s0)
   170bc:	009404b3          	add	s1,s0,s1
   170c0:	0000c717          	auipc	a4,0xc
   170c4:	86973023          	sd	s1,-1952(a4) # 22920 <__malloc_av_+0x10>
   170c8:	0017e793          	ori	a5,a5,1
   170cc:	00090513          	mv	a0,s2
   170d0:	00f4b423          	sd	a5,8(s1)
   170d4:	4f4000ef          	jal	ra,175c8 <__malloc_unlock>
   170d8:	01040513          	addi	a0,s0,16
   170dc:	be1ff06f          	j	16cbc <_malloc_r+0xb4>
   170e0:	01843683          	ld	a3,24(s0)
   170e4:	01043603          	ld	a2,16(s0)
   170e8:	ba1ff06f          	j	16c88 <_malloc_r+0x80>
   170ec:	0097d713          	srli	a4,a5,0x9
   170f0:	00400693          	li	a3,4
   170f4:	0ee6fa63          	bgeu	a3,a4,171e8 <_malloc_r+0x5e0>
   170f8:	01400693          	li	a3,20
   170fc:	20e6e863          	bltu	a3,a4,1730c <_malloc_r+0x704>
   17100:	0007071b          	sext.w	a4,a4
   17104:	05c7059b          	addiw	a1,a4,92
   17108:	0015959b          	slliw	a1,a1,0x1
   1710c:	05b7069b          	addiw	a3,a4,91
   17110:	00359593          	slli	a1,a1,0x3
   17114:	00b985b3          	add	a1,s3,a1
   17118:	0005b703          	ld	a4,0(a1)
   1711c:	ff058593          	addi	a1,a1,-16
   17120:	18e58663          	beq	a1,a4,172ac <_malloc_r+0x6a4>
   17124:	00873683          	ld	a3,8(a4)
   17128:	ffc6f693          	andi	a3,a3,-4
   1712c:	00d7f663          	bgeu	a5,a3,17138 <_malloc_r+0x530>
   17130:	01073703          	ld	a4,16(a4)
   17134:	fee598e3          	bne	a1,a4,17124 <_malloc_r+0x51c>
   17138:	01873583          	ld	a1,24(a4)
   1713c:	0089b783          	ld	a5,8(s3)
   17140:	00b43c23          	sd	a1,24(s0)
   17144:	00e43823          	sd	a4,16(s0)
   17148:	0085b823          	sd	s0,16(a1)
   1714c:	00873c23          	sd	s0,24(a4)
   17150:	e5dff06f          	j	16fac <_malloc_r+0x3a4>
   17154:	01400713          	li	a4,20
   17158:	0cf77e63          	bgeu	a4,a5,17234 <_malloc_r+0x62c>
   1715c:	05400713          	li	a4,84
   17160:	1cf76863          	bltu	a4,a5,17330 <_malloc_r+0x728>
   17164:	00c4d513          	srli	a0,s1,0xc
   17168:	0005051b          	sext.w	a0,a0
   1716c:	06f5061b          	addiw	a2,a0,111
   17170:	0016169b          	slliw	a3,a2,0x1
   17174:	06e5051b          	addiw	a0,a0,110
   17178:	00369693          	slli	a3,a3,0x3
   1717c:	bbdff06f          	j	16d38 <_malloc_r+0x130>
   17180:	0013031b          	addiw	t1,t1,1
   17184:	00337793          	andi	a5,t1,3
   17188:	01058593          	addi	a1,a1,16
   1718c:	e6079ee3          	bnez	a5,17008 <_malloc_r+0x400>
   17190:	0c80006f          	j	17258 <_malloc_r+0x650>
   17194:	00f407b3          	add	a5,s0,a5
   17198:	0087b703          	ld	a4,8(a5)
   1719c:	01843683          	ld	a3,24(s0)
   171a0:	01043603          	ld	a2,16(s0)
   171a4:	00176713          	ori	a4,a4,1
   171a8:	00e7b423          	sd	a4,8(a5)
   171ac:	00d63c23          	sd	a3,24(a2)
   171b0:	00090513          	mv	a0,s2
   171b4:	00c6b823          	sd	a2,16(a3)
   171b8:	410000ef          	jal	ra,175c8 <__malloc_unlock>
   171bc:	01040513          	addi	a0,s0,16
   171c0:	afdff06f          	j	16cbc <_malloc_r+0xb4>
   171c4:	0014e693          	ori	a3,s1,1
   171c8:	00d43423          	sd	a3,8(s0)
   171cc:	e7dff06f          	j	17048 <_malloc_r+0x440>
   171d0:	0034d613          	srli	a2,s1,0x3
   171d4:	0006061b          	sext.w	a2,a2
   171d8:	0016079b          	addiw	a5,a2,1
   171dc:	0017979b          	slliw	a5,a5,0x1
   171e0:	00379793          	slli	a5,a5,0x3
   171e4:	a7dff06f          	j	16c60 <_malloc_r+0x58>
   171e8:	0067d713          	srli	a4,a5,0x6
   171ec:	0007071b          	sext.w	a4,a4
   171f0:	0397059b          	addiw	a1,a4,57
   171f4:	0015959b          	slliw	a1,a1,0x1
   171f8:	0387069b          	addiw	a3,a4,56
   171fc:	00359593          	slli	a1,a1,0x3
   17200:	f15ff06f          	j	17114 <_malloc_r+0x50c>
   17204:	15340863          	beq	s0,s3,17354 <_malloc_r+0x74c>
   17208:	0109b403          	ld	s0,16(s3)
   1720c:	00843a03          	ld	s4,8(s0)
   17210:	ffca7a13          	andi	s4,s4,-4
   17214:	409a07b3          	sub	a5,s4,s1
   17218:	009a6663          	bltu	s4,s1,17224 <_malloc_r+0x61c>
   1721c:	01f00713          	li	a4,31
   17220:	e8f74ae3          	blt	a4,a5,170b4 <_malloc_r+0x4ac>
   17224:	00090513          	mv	a0,s2
   17228:	3a0000ef          	jal	ra,175c8 <__malloc_unlock>
   1722c:	00000513          	li	a0,0
   17230:	a8dff06f          	j	16cbc <_malloc_r+0xb4>
   17234:	0007879b          	sext.w	a5,a5
   17238:	05c7861b          	addiw	a2,a5,92
   1723c:	0016169b          	slliw	a3,a2,0x1
   17240:	05b7851b          	addiw	a0,a5,91
   17244:	00369693          	slli	a3,a3,0x3
   17248:	af1ff06f          	j	16d38 <_malloc_r+0x130>
   1724c:	0108b783          	ld	a5,16(a7)
   17250:	fff6061b          	addiw	a2,a2,-1
   17254:	21179263          	bne	a5,a7,17458 <_malloc_r+0x850>
   17258:	00367793          	andi	a5,a2,3
   1725c:	ff088893          	addi	a7,a7,-16
   17260:	fe0796e3          	bnez	a5,1724c <_malloc_r+0x644>
   17264:	0089b703          	ld	a4,8(s3)
   17268:	fff6c793          	not	a5,a3
   1726c:	00e7f7b3          	and	a5,a5,a4
   17270:	0000b717          	auipc	a4,0xb
   17274:	6af73423          	sd	a5,1704(a4) # 22918 <__malloc_av_+0x8>
   17278:	00169693          	slli	a3,a3,0x1
   1727c:	b2d7e6e3          	bltu	a5,a3,16da8 <_malloc_r+0x1a0>
   17280:	b20684e3          	beqz	a3,16da8 <_malloc_r+0x1a0>
   17284:	00f6f733          	and	a4,a3,a5
   17288:	00071a63          	bnez	a4,1729c <_malloc_r+0x694>
   1728c:	00169693          	slli	a3,a3,0x1
   17290:	00f6f733          	and	a4,a3,a5
   17294:	0043031b          	addiw	t1,t1,4
   17298:	fe070ae3          	beqz	a4,1728c <_malloc_r+0x684>
   1729c:	00030613          	mv	a2,t1
   172a0:	d4dff06f          	j	16fec <_malloc_r+0x3e4>
   172a4:	020a0a13          	addi	s4,s4,32
   172a8:	b51ff06f          	j	16df8 <_malloc_r+0x1f0>
   172ac:	0089b503          	ld	a0,8(s3)
   172b0:	4026d69b          	sraiw	a3,a3,0x2
   172b4:	00100793          	li	a5,1
   172b8:	00d797b3          	sll	a5,a5,a3
   172bc:	00a7e7b3          	or	a5,a5,a0
   172c0:	0000b697          	auipc	a3,0xb
   172c4:	64f6bc23          	sd	a5,1624(a3) # 22918 <__malloc_av_+0x8>
   172c8:	e79ff06f          	j	17140 <_malloc_r+0x538>
   172cc:	000017b7          	lui	a5,0x1
   172d0:	fff78713          	addi	a4,a5,-1 # fff <main-0xf0b1>
   172d4:	014b0bb3          	add	s7,s6,s4
   172d8:	00ebfbb3          	and	s7,s7,a4
   172dc:	417787b3          	sub	a5,a5,s7
   172e0:	00e7fbb3          	and	s7,a5,a4
   172e4:	000b8593          	mv	a1,s7
   172e8:	00090513          	mv	a0,s2
   172ec:	448010ef          	jal	ra,18734 <_sbrk_r>
   172f0:	fff00793          	li	a5,-1
   172f4:	00000713          	li	a4,0
   172f8:	b8f50ee3          	beq	a0,a5,16e94 <_malloc_r+0x28c>
   172fc:	41650533          	sub	a0,a0,s6
   17300:	000b871b          	sext.w	a4,s7
   17304:	01750a33          	add	s4,a0,s7
   17308:	b8dff06f          	j	16e94 <_malloc_r+0x28c>
   1730c:	05400693          	li	a3,84
   17310:	08e6e863          	bltu	a3,a4,173a0 <_malloc_r+0x798>
   17314:	00c7d713          	srli	a4,a5,0xc
   17318:	0007071b          	sext.w	a4,a4
   1731c:	06f7059b          	addiw	a1,a4,111
   17320:	0015959b          	slliw	a1,a1,0x1
   17324:	06e7069b          	addiw	a3,a4,110
   17328:	00359593          	slli	a1,a1,0x3
   1732c:	de9ff06f          	j	17114 <_malloc_r+0x50c>
   17330:	15400713          	li	a4,340
   17334:	08f76863          	bltu	a4,a5,173c4 <_malloc_r+0x7bc>
   17338:	00f4d513          	srli	a0,s1,0xf
   1733c:	0005051b          	sext.w	a0,a0
   17340:	0785061b          	addiw	a2,a0,120
   17344:	0016169b          	slliw	a3,a2,0x1
   17348:	0775051b          	addiw	a0,a0,119
   1734c:	00369693          	slli	a3,a3,0x3
   17350:	9e9ff06f          	j	16d38 <_malloc_r+0x130>
   17354:	7d018c93          	addi	s9,gp,2000 # 231d8 <__malloc_current_mallinfo>
   17358:	000ca783          	lw	a5,0(s9)
   1735c:	014786bb          	addw	a3,a5,s4
   17360:	7cd1a823          	sw	a3,2000(gp) # 231d8 <__malloc_current_mallinfo>
   17364:	ac9ff06f          	j	16e2c <_malloc_r+0x224>
   17368:	034b9713          	slli	a4,s7,0x34
   1736c:	ac0710e3          	bnez	a4,16e2c <_malloc_r+0x224>
   17370:	0109b403          	ld	s0,16(s3)
   17374:	014a8a33          	add	s4,s5,s4
   17378:	001a6a13          	ori	s4,s4,1
   1737c:	01443423          	sd	s4,8(s0)
   17380:	b71ff06f          	j	16ef0 <_malloc_r+0x2e8>
   17384:	7761b023          	sd	s6,1888(gp) # 23168 <__malloc_sbrk_base>
   17388:	abdff06f          	j	16e44 <_malloc_r+0x23c>
   1738c:	000b0413          	mv	s0,s6
   17390:	b61ff06f          	j	16ef0 <_malloc_r+0x2e8>
   17394:	00100793          	li	a5,1
   17398:	00fb3423          	sd	a5,8(s6)
   1739c:	e89ff06f          	j	17224 <_malloc_r+0x61c>
   173a0:	15400693          	li	a3,340
   173a4:	06e6ea63          	bltu	a3,a4,17418 <_malloc_r+0x810>
   173a8:	00f7d713          	srli	a4,a5,0xf
   173ac:	0007071b          	sext.w	a4,a4
   173b0:	0787059b          	addiw	a1,a4,120
   173b4:	0015959b          	slliw	a1,a1,0x1
   173b8:	0777069b          	addiw	a3,a4,119
   173bc:	00359593          	slli	a1,a1,0x3
   173c0:	d55ff06f          	j	17114 <_malloc_r+0x50c>
   173c4:	55400713          	li	a4,1364
   173c8:	06f76a63          	bltu	a4,a5,1743c <_malloc_r+0x834>
   173cc:	0124d513          	srli	a0,s1,0x12
   173d0:	0005051b          	sext.w	a0,a0
   173d4:	07d5061b          	addiw	a2,a0,125
   173d8:	0016169b          	slliw	a3,a2,0x1
   173dc:	07c5051b          	addiw	a0,a0,124
   173e0:	00369693          	slli	a3,a3,0x3
   173e4:	955ff06f          	j	16d38 <_malloc_r+0x130>
   173e8:	ff0b8b93          	addi	s7,s7,-16
   173ec:	017c0a33          	add	s4,s8,s7
   173f0:	416a0a33          	sub	s4,s4,s6
   173f4:	00000713          	li	a4,0
   173f8:	a9dff06f          	j	16e94 <_malloc_r+0x28c>
   173fc:	01040593          	addi	a1,s0,16
   17400:	00090513          	mv	a0,s2
   17404:	cacfc0ef          	jal	ra,138b0 <_free_r>
   17408:	0109b403          	ld	s0,16(s3)
   1740c:	000ca783          	lw	a5,0(s9)
   17410:	00843a03          	ld	s4,8(s0)
   17414:	addff06f          	j	16ef0 <_malloc_r+0x2e8>
   17418:	55400693          	li	a3,1364
   1741c:	02e6e863          	bltu	a3,a4,1744c <_malloc_r+0x844>
   17420:	0127d713          	srli	a4,a5,0x12
   17424:	0007071b          	sext.w	a4,a4
   17428:	07d7059b          	addiw	a1,a4,125
   1742c:	0015959b          	slliw	a1,a1,0x1
   17430:	07c7069b          	addiw	a3,a4,124
   17434:	00359593          	slli	a1,a1,0x3
   17438:	cddff06f          	j	17114 <_malloc_r+0x50c>
   1743c:	7f000693          	li	a3,2032
   17440:	07f00613          	li	a2,127
   17444:	07e00513          	li	a0,126
   17448:	8f1ff06f          	j	16d38 <_malloc_r+0x130>
   1744c:	7f000593          	li	a1,2032
   17450:	07e00693          	li	a3,126
   17454:	cc1ff06f          	j	17114 <_malloc_r+0x50c>
   17458:	0089b783          	ld	a5,8(s3)
   1745c:	e1dff06f          	j	17278 <_malloc_r+0x670>

0000000000017460 <_mbtowc_r>:
   17460:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   17464:	0e87b303          	ld	t1,232(a5)
   17468:	00030067          	jr	t1

000000000001746c <__ascii_mbtowc>:
   1746c:	02058063          	beqz	a1,1748c <__ascii_mbtowc+0x20>
   17470:	04060263          	beqz	a2,174b4 <__ascii_mbtowc+0x48>
   17474:	04068863          	beqz	a3,174c4 <__ascii_mbtowc+0x58>
   17478:	00064783          	lbu	a5,0(a2)
   1747c:	00f5a023          	sw	a5,0(a1)
   17480:	00064503          	lbu	a0,0(a2)
   17484:	00a03533          	snez	a0,a0
   17488:	00008067          	ret
   1748c:	ff010113          	addi	sp,sp,-16
   17490:	00c10593          	addi	a1,sp,12
   17494:	02060463          	beqz	a2,174bc <__ascii_mbtowc+0x50>
   17498:	02068a63          	beqz	a3,174cc <__ascii_mbtowc+0x60>
   1749c:	00064783          	lbu	a5,0(a2)
   174a0:	00f5a023          	sw	a5,0(a1)
   174a4:	00064503          	lbu	a0,0(a2)
   174a8:	00a03533          	snez	a0,a0
   174ac:	01010113          	addi	sp,sp,16
   174b0:	00008067          	ret
   174b4:	00000513          	li	a0,0
   174b8:	00008067          	ret
   174bc:	00000513          	li	a0,0
   174c0:	fedff06f          	j	174ac <__ascii_mbtowc+0x40>
   174c4:	ffe00513          	li	a0,-2
   174c8:	00008067          	ret
   174cc:	ffe00513          	li	a0,-2
   174d0:	fddff06f          	j	174ac <__ascii_mbtowc+0x40>

00000000000174d4 <memchr>:
   174d4:	00757793          	andi	a5,a0,7
   174d8:	0ff5f813          	andi	a6,a1,255
   174dc:	0e078063          	beqz	a5,175bc <memchr+0xe8>
   174e0:	fff60793          	addi	a5,a2,-1
   174e4:	04060e63          	beqz	a2,17540 <memchr+0x6c>
   174e8:	00054703          	lbu	a4,0(a0)
   174ec:	05070c63          	beq	a4,a6,17544 <memchr+0x70>
   174f0:	fff00693          	li	a3,-1
   174f4:	0140006f          	j	17508 <memchr+0x34>
   174f8:	fff78793          	addi	a5,a5,-1
   174fc:	04d78263          	beq	a5,a3,17540 <memchr+0x6c>
   17500:	00054703          	lbu	a4,0(a0)
   17504:	05070063          	beq	a4,a6,17544 <memchr+0x70>
   17508:	00150513          	addi	a0,a0,1
   1750c:	00757713          	andi	a4,a0,7
   17510:	fe0714e3          	bnez	a4,174f8 <memchr+0x24>
   17514:	00700713          	li	a4,7
   17518:	02f76863          	bltu	a4,a5,17548 <memchr+0x74>
   1751c:	02078263          	beqz	a5,17540 <memchr+0x6c>
   17520:	00054703          	lbu	a4,0(a0)
   17524:	03070063          	beq	a4,a6,17544 <memchr+0x70>
   17528:	00f507b3          	add	a5,a0,a5
   1752c:	00c0006f          	j	17538 <memchr+0x64>
   17530:	00054703          	lbu	a4,0(a0)
   17534:	01070863          	beq	a4,a6,17544 <memchr+0x70>
   17538:	00150513          	addi	a0,a0,1
   1753c:	fea79ae3          	bne	a5,a0,17530 <memchr+0x5c>
   17540:	00000513          	li	a0,0
   17544:	00008067          	ret
   17548:	000106b7          	lui	a3,0x10
   1754c:	0085971b          	slliw	a4,a1,0x8
   17550:	fff68693          	addi	a3,a3,-1 # ffff <main-0xb1>
   17554:	00d77733          	and	a4,a4,a3
   17558:	0ff5f593          	andi	a1,a1,255
   1755c:	00b765b3          	or	a1,a4,a1
   17560:	0005859b          	sext.w	a1,a1
   17564:	0000c697          	auipc	a3,0xc
   17568:	bbc68693          	addi	a3,a3,-1092 # 23120 <__SDATA_BEGIN__>
   1756c:	01059613          	slli	a2,a1,0x10
   17570:	0006b883          	ld	a7,0(a3)
   17574:	0000c697          	auipc	a3,0xc
   17578:	bb468693          	addi	a3,a3,-1100 # 23128 <__SDATA_BEGIN__+0x8>
   1757c:	00b66733          	or	a4,a2,a1
   17580:	0006b583          	ld	a1,0(a3)
   17584:	02071613          	slli	a2,a4,0x20
   17588:	00e66633          	or	a2,a2,a4
   1758c:	00700313          	li	t1,7
   17590:	00053703          	ld	a4,0(a0)
   17594:	00e64733          	xor	a4,a2,a4
   17598:	011706b3          	add	a3,a4,a7
   1759c:	fff74713          	not	a4,a4
   175a0:	00e6f733          	and	a4,a3,a4
   175a4:	00b77733          	and	a4,a4,a1
   175a8:	f6071ce3          	bnez	a4,17520 <memchr+0x4c>
   175ac:	ff878793          	addi	a5,a5,-8
   175b0:	00850513          	addi	a0,a0,8
   175b4:	fcf36ee3          	bltu	t1,a5,17590 <memchr+0xbc>
   175b8:	f65ff06f          	j	1751c <memchr+0x48>
   175bc:	00060793          	mv	a5,a2
   175c0:	f55ff06f          	j	17514 <memchr+0x40>

00000000000175c4 <__malloc_lock>:
   175c4:	00008067          	ret

00000000000175c8 <__malloc_unlock>:
   175c8:	00008067          	ret

00000000000175cc <_Balloc>:
   175cc:	07853783          	ld	a5,120(a0)
   175d0:	fe010113          	addi	sp,sp,-32
   175d4:	00813823          	sd	s0,16(sp)
   175d8:	00913423          	sd	s1,8(sp)
   175dc:	00113c23          	sd	ra,24(sp)
   175e0:	01213023          	sd	s2,0(sp)
   175e4:	00050413          	mv	s0,a0
   175e8:	00058493          	mv	s1,a1
   175ec:	02078c63          	beqz	a5,17624 <_Balloc+0x58>
   175f0:	00349713          	slli	a4,s1,0x3
   175f4:	00e787b3          	add	a5,a5,a4
   175f8:	0007b503          	ld	a0,0(a5)
   175fc:	04050463          	beqz	a0,17644 <_Balloc+0x78>
   17600:	00053703          	ld	a4,0(a0)
   17604:	00e7b023          	sd	a4,0(a5)
   17608:	00053823          	sd	zero,16(a0)
   1760c:	01813083          	ld	ra,24(sp)
   17610:	01013403          	ld	s0,16(sp)
   17614:	00813483          	ld	s1,8(sp)
   17618:	00013903          	ld	s2,0(sp)
   1761c:	02010113          	addi	sp,sp,32
   17620:	00008067          	ret
   17624:	04100613          	li	a2,65
   17628:	00800593          	li	a1,8
   1762c:	3d8050ef          	jal	ra,1ca04 <_calloc_r>
   17630:	06a43c23          	sd	a0,120(s0)
   17634:	00050793          	mv	a5,a0
   17638:	fa051ce3          	bnez	a0,175f0 <_Balloc+0x24>
   1763c:	00000513          	li	a0,0
   17640:	fcdff06f          	j	1760c <_Balloc+0x40>
   17644:	00100913          	li	s2,1
   17648:	0099193b          	sllw	s2,s2,s1
   1764c:	fff9061b          	addiw	a2,s2,-1
   17650:	00860613          	addi	a2,a2,8
   17654:	00261613          	slli	a2,a2,0x2
   17658:	00100593          	li	a1,1
   1765c:	00040513          	mv	a0,s0
   17660:	3a4050ef          	jal	ra,1ca04 <_calloc_r>
   17664:	fc050ce3          	beqz	a0,1763c <_Balloc+0x70>
   17668:	00952423          	sw	s1,8(a0)
   1766c:	01252623          	sw	s2,12(a0)
   17670:	f99ff06f          	j	17608 <_Balloc+0x3c>

0000000000017674 <_Bfree>:
   17674:	02058063          	beqz	a1,17694 <_Bfree+0x20>
   17678:	0085a703          	lw	a4,8(a1)
   1767c:	07853783          	ld	a5,120(a0)
   17680:	00371713          	slli	a4,a4,0x3
   17684:	00e787b3          	add	a5,a5,a4
   17688:	0007b703          	ld	a4,0(a5)
   1768c:	00e5b023          	sd	a4,0(a1)
   17690:	00b7b023          	sd	a1,0(a5)
   17694:	00008067          	ret

0000000000017698 <__multadd>:
   17698:	fb010113          	addi	sp,sp,-80
   1769c:	03313423          	sd	s3,40(sp)
   176a0:	0145a983          	lw	s3,20(a1)
   176a4:	01813023          	sd	s8,0(sp)
   176a8:	00010c37          	lui	s8,0x10
   176ac:	04813023          	sd	s0,64(sp)
   176b0:	02913c23          	sd	s1,56(sp)
   176b4:	03213823          	sd	s2,48(sp)
   176b8:	03413023          	sd	s4,32(sp)
   176bc:	01513c23          	sd	s5,24(sp)
   176c0:	01613823          	sd	s6,16(sp)
   176c4:	04113423          	sd	ra,72(sp)
   176c8:	01713423          	sd	s7,8(sp)
   176cc:	00058a13          	mv	s4,a1
   176d0:	00050a93          	mv	s5,a0
   176d4:	00068413          	mv	s0,a3
   176d8:	01858493          	addi	s1,a1,24
   176dc:	00060913          	mv	s2,a2
   176e0:	00000b13          	li	s6,0
   176e4:	fffc0c13          	addi	s8,s8,-1 # ffff <main-0xb1>
   176e8:	0004ab83          	lw	s7,0(s1)
   176ec:	00090593          	mv	a1,s2
   176f0:	00448493          	addi	s1,s1,4
   176f4:	018bf533          	and	a0,s7,s8
   176f8:	281090ef          	jal	ra,21178 <__muldi3>
   176fc:	0085043b          	addw	s0,a0,s0
   17700:	00090593          	mv	a1,s2
   17704:	010bd51b          	srliw	a0,s7,0x10
   17708:	271090ef          	jal	ra,21178 <__muldi3>
   1770c:	0104569b          	srliw	a3,s0,0x10
   17710:	00a6853b          	addw	a0,a3,a0
   17714:	0105169b          	slliw	a3,a0,0x10
   17718:	008c7433          	and	s0,s8,s0
   1771c:	0086843b          	addw	s0,a3,s0
   17720:	fe84ae23          	sw	s0,-4(s1)
   17724:	001b0b1b          	addiw	s6,s6,1
   17728:	0105541b          	srliw	s0,a0,0x10
   1772c:	fb3b4ee3          	blt	s6,s3,176e8 <__multadd+0x50>
   17730:	02040263          	beqz	s0,17754 <__multadd+0xbc>
   17734:	00ca2783          	lw	a5,12(s4)
   17738:	04f9d863          	bge	s3,a5,17788 <__multadd+0xf0>
   1773c:	00498793          	addi	a5,s3,4
   17740:	00279793          	slli	a5,a5,0x2
   17744:	00fa07b3          	add	a5,s4,a5
   17748:	0087a423          	sw	s0,8(a5)
   1774c:	0019899b          	addiw	s3,s3,1
   17750:	013a2a23          	sw	s3,20(s4)
   17754:	04813083          	ld	ra,72(sp)
   17758:	04013403          	ld	s0,64(sp)
   1775c:	000a0513          	mv	a0,s4
   17760:	03813483          	ld	s1,56(sp)
   17764:	03013903          	ld	s2,48(sp)
   17768:	02813983          	ld	s3,40(sp)
   1776c:	02013a03          	ld	s4,32(sp)
   17770:	01813a83          	ld	s5,24(sp)
   17774:	01013b03          	ld	s6,16(sp)
   17778:	00813b83          	ld	s7,8(sp)
   1777c:	00013c03          	ld	s8,0(sp)
   17780:	05010113          	addi	sp,sp,80
   17784:	00008067          	ret
   17788:	008a2583          	lw	a1,8(s4)
   1778c:	000a8513          	mv	a0,s5
   17790:	0015859b          	addiw	a1,a1,1
   17794:	e39ff0ef          	jal	ra,175cc <_Balloc>
   17798:	014a2603          	lw	a2,20(s4)
   1779c:	00050493          	mv	s1,a0
   177a0:	010a0593          	addi	a1,s4,16
   177a4:	00260613          	addi	a2,a2,2
   177a8:	01050513          	addi	a0,a0,16
   177ac:	00261613          	slli	a2,a2,0x2
   177b0:	465050ef          	jal	ra,1d414 <memcpy>
   177b4:	008a2703          	lw	a4,8(s4)
   177b8:	078ab783          	ld	a5,120(s5)
   177bc:	00371713          	slli	a4,a4,0x3
   177c0:	00e787b3          	add	a5,a5,a4
   177c4:	0007b703          	ld	a4,0(a5)
   177c8:	00ea3023          	sd	a4,0(s4)
   177cc:	0147b023          	sd	s4,0(a5)
   177d0:	00498793          	addi	a5,s3,4
   177d4:	00048a13          	mv	s4,s1
   177d8:	00279793          	slli	a5,a5,0x2
   177dc:	00fa07b3          	add	a5,s4,a5
   177e0:	0087a423          	sw	s0,8(a5)
   177e4:	0019899b          	addiw	s3,s3,1
   177e8:	013a2a23          	sw	s3,20(s4)
   177ec:	f69ff06f          	j	17754 <__multadd+0xbc>

00000000000177f0 <__s2b>:
   177f0:	fc010113          	addi	sp,sp,-64
   177f4:	02813823          	sd	s0,48(sp)
   177f8:	03213023          	sd	s2,32(sp)
   177fc:	00058413          	mv	s0,a1
   17800:	00050913          	mv	s2,a0
   17804:	00900593          	li	a1,9
   17808:	0086851b          	addiw	a0,a3,8
   1780c:	02913423          	sd	s1,40(sp)
   17810:	01313c23          	sd	s3,24(sp)
   17814:	01413823          	sd	s4,16(sp)
   17818:	02113c23          	sd	ra,56(sp)
   1781c:	01513423          	sd	s5,8(sp)
   17820:	01613023          	sd	s6,0(sp)
   17824:	00068493          	mv	s1,a3
   17828:	00060a13          	mv	s4,a2
   1782c:	00070993          	mv	s3,a4
   17830:	a25f80ef          	jal	ra,10254 <__divdi3>
   17834:	00900793          	li	a5,9
   17838:	0e97d663          	bge	a5,s1,17924 <__s2b+0x134>
   1783c:	0005051b          	sext.w	a0,a0
   17840:	00100793          	li	a5,1
   17844:	00000593          	li	a1,0
   17848:	0017979b          	slliw	a5,a5,0x1
   1784c:	0015859b          	addiw	a1,a1,1
   17850:	fea7cce3          	blt	a5,a0,17848 <__s2b+0x58>
   17854:	00090513          	mv	a0,s2
   17858:	d75ff0ef          	jal	ra,175cc <_Balloc>
   1785c:	00100793          	li	a5,1
   17860:	00f52a23          	sw	a5,20(a0)
   17864:	01352c23          	sw	s3,24(a0)
   17868:	00900793          	li	a5,9
   1786c:	0b47d663          	bge	a5,s4,17918 <__s2b+0x128>
   17870:	ff6a0a9b          	addiw	s5,s4,-10
   17874:	020a9a93          	slli	s5,s5,0x20
   17878:	020ada93          	srli	s5,s5,0x20
   1787c:	00940b13          	addi	s6,s0,9
   17880:	00aa8793          	addi	a5,s5,10
   17884:	00f40433          	add	s0,s0,a5
   17888:	000b0993          	mv	s3,s6
   1788c:	00198993          	addi	s3,s3,1
   17890:	fff9c683          	lbu	a3,-1(s3)
   17894:	00050593          	mv	a1,a0
   17898:	00a00613          	li	a2,10
   1789c:	fd06869b          	addiw	a3,a3,-48
   178a0:	00090513          	mv	a0,s2
   178a4:	df5ff0ef          	jal	ra,17698 <__multadd>
   178a8:	fe8992e3          	bne	s3,s0,1788c <__s2b+0x9c>
   178ac:	002a8413          	addi	s0,s5,2
   178b0:	008b0433          	add	s0,s6,s0
   178b4:	029a5e63          	bge	s4,s1,178f0 <__s2b+0x100>
   178b8:	fff4849b          	addiw	s1,s1,-1
   178bc:	414484bb          	subw	s1,s1,s4
   178c0:	02049493          	slli	s1,s1,0x20
   178c4:	0204d493          	srli	s1,s1,0x20
   178c8:	00148493          	addi	s1,s1,1
   178cc:	009404b3          	add	s1,s0,s1
   178d0:	00140413          	addi	s0,s0,1
   178d4:	fff44683          	lbu	a3,-1(s0)
   178d8:	00050593          	mv	a1,a0
   178dc:	00a00613          	li	a2,10
   178e0:	fd06869b          	addiw	a3,a3,-48
   178e4:	00090513          	mv	a0,s2
   178e8:	db1ff0ef          	jal	ra,17698 <__multadd>
   178ec:	fe9412e3          	bne	s0,s1,178d0 <__s2b+0xe0>
   178f0:	03813083          	ld	ra,56(sp)
   178f4:	03013403          	ld	s0,48(sp)
   178f8:	02813483          	ld	s1,40(sp)
   178fc:	02013903          	ld	s2,32(sp)
   17900:	01813983          	ld	s3,24(sp)
   17904:	01013a03          	ld	s4,16(sp)
   17908:	00813a83          	ld	s5,8(sp)
   1790c:	00013b03          	ld	s6,0(sp)
   17910:	04010113          	addi	sp,sp,64
   17914:	00008067          	ret
   17918:	00a40413          	addi	s0,s0,10
   1791c:	00900a13          	li	s4,9
   17920:	f95ff06f          	j	178b4 <__s2b+0xc4>
   17924:	00000593          	li	a1,0
   17928:	f2dff06f          	j	17854 <__s2b+0x64>

000000000001792c <__hi0bits>:
   1792c:	ffff0737          	lui	a4,0xffff0
   17930:	00e57733          	and	a4,a0,a4
   17934:	00050793          	mv	a5,a0
   17938:	00000513          	li	a0,0
   1793c:	00071663          	bnez	a4,17948 <__hi0bits+0x1c>
   17940:	0107979b          	slliw	a5,a5,0x10
   17944:	01000513          	li	a0,16
   17948:	ff000737          	lui	a4,0xff000
   1794c:	00e7f733          	and	a4,a5,a4
   17950:	00071663          	bnez	a4,1795c <__hi0bits+0x30>
   17954:	0087979b          	slliw	a5,a5,0x8
   17958:	0085051b          	addiw	a0,a0,8
   1795c:	f0000737          	lui	a4,0xf0000
   17960:	00e7f733          	and	a4,a5,a4
   17964:	00071663          	bnez	a4,17970 <__hi0bits+0x44>
   17968:	0047979b          	slliw	a5,a5,0x4
   1796c:	0045051b          	addiw	a0,a0,4
   17970:	c0000737          	lui	a4,0xc0000
   17974:	00e7f733          	and	a4,a5,a4
   17978:	00071663          	bnez	a4,17984 <__hi0bits+0x58>
   1797c:	0027979b          	slliw	a5,a5,0x2
   17980:	0025051b          	addiw	a0,a0,2
   17984:	0007c863          	bltz	a5,17994 <__hi0bits+0x68>
   17988:	02179713          	slli	a4,a5,0x21
   1798c:	0015051b          	addiw	a0,a0,1
   17990:	00075463          	bgez	a4,17998 <__hi0bits+0x6c>
   17994:	00008067          	ret
   17998:	02000513          	li	a0,32
   1799c:	00008067          	ret

00000000000179a0 <__lo0bits>:
   179a0:	00052783          	lw	a5,0(a0)
   179a4:	0077f713          	andi	a4,a5,7
   179a8:	00078613          	mv	a2,a5
   179ac:	02070663          	beqz	a4,179d8 <__lo0bits+0x38>
   179b0:	0017f693          	andi	a3,a5,1
   179b4:	00000713          	li	a4,0
   179b8:	00069c63          	bnez	a3,179d0 <__lo0bits+0x30>
   179bc:	00267613          	andi	a2,a2,2
   179c0:	08060463          	beqz	a2,17a48 <__lo0bits+0xa8>
   179c4:	0017d79b          	srliw	a5,a5,0x1
   179c8:	00f52023          	sw	a5,0(a0)
   179cc:	00100713          	li	a4,1
   179d0:	00070513          	mv	a0,a4
   179d4:	00008067          	ret
   179d8:	03079693          	slli	a3,a5,0x30
   179dc:	0306d693          	srli	a3,a3,0x30
   179e0:	00000713          	li	a4,0
   179e4:	00069663          	bnez	a3,179f0 <__lo0bits+0x50>
   179e8:	0107d79b          	srliw	a5,a5,0x10
   179ec:	01000713          	li	a4,16
   179f0:	0ff7f693          	andi	a3,a5,255
   179f4:	00069663          	bnez	a3,17a00 <__lo0bits+0x60>
   179f8:	0087071b          	addiw	a4,a4,8
   179fc:	0087d79b          	srliw	a5,a5,0x8
   17a00:	00f7f693          	andi	a3,a5,15
   17a04:	00069663          	bnez	a3,17a10 <__lo0bits+0x70>
   17a08:	0047071b          	addiw	a4,a4,4
   17a0c:	0047d79b          	srliw	a5,a5,0x4
   17a10:	0037f693          	andi	a3,a5,3
   17a14:	00069663          	bnez	a3,17a20 <__lo0bits+0x80>
   17a18:	0027071b          	addiw	a4,a4,2
   17a1c:	0027d79b          	srliw	a5,a5,0x2
   17a20:	0017f693          	andi	a3,a5,1
   17a24:	00069863          	bnez	a3,17a34 <__lo0bits+0x94>
   17a28:	0017d79b          	srliw	a5,a5,0x1
   17a2c:	0017071b          	addiw	a4,a4,1
   17a30:	00078863          	beqz	a5,17a40 <__lo0bits+0xa0>
   17a34:	00f52023          	sw	a5,0(a0)
   17a38:	00070513          	mv	a0,a4
   17a3c:	00008067          	ret
   17a40:	02000713          	li	a4,32
   17a44:	f8dff06f          	j	179d0 <__lo0bits+0x30>
   17a48:	0027d79b          	srliw	a5,a5,0x2
   17a4c:	00200713          	li	a4,2
   17a50:	00f52023          	sw	a5,0(a0)
   17a54:	00070513          	mv	a0,a4
   17a58:	00008067          	ret

0000000000017a5c <__i2b>:
   17a5c:	ff010113          	addi	sp,sp,-16
   17a60:	00813023          	sd	s0,0(sp)
   17a64:	00058413          	mv	s0,a1
   17a68:	00100593          	li	a1,1
   17a6c:	00113423          	sd	ra,8(sp)
   17a70:	b5dff0ef          	jal	ra,175cc <_Balloc>
   17a74:	00852c23          	sw	s0,24(a0)
   17a78:	00813083          	ld	ra,8(sp)
   17a7c:	00013403          	ld	s0,0(sp)
   17a80:	00100713          	li	a4,1
   17a84:	00e52a23          	sw	a4,20(a0)
   17a88:	01010113          	addi	sp,sp,16
   17a8c:	00008067          	ret

0000000000017a90 <__multiply>:
   17a90:	f7010113          	addi	sp,sp,-144
   17a94:	07413023          	sd	s4,96(sp)
   17a98:	03913c23          	sd	s9,56(sp)
   17a9c:	01462a03          	lw	s4,20(a2)
   17aa0:	0145ac83          	lw	s9,20(a1)
   17aa4:	05513c23          	sd	s5,88(sp)
   17aa8:	03a13823          	sd	s10,48(sp)
   17aac:	08113423          	sd	ra,136(sp)
   17ab0:	08813023          	sd	s0,128(sp)
   17ab4:	06913c23          	sd	s1,120(sp)
   17ab8:	07213823          	sd	s2,112(sp)
   17abc:	07313423          	sd	s3,104(sp)
   17ac0:	05613823          	sd	s6,80(sp)
   17ac4:	05713423          	sd	s7,72(sp)
   17ac8:	05813023          	sd	s8,64(sp)
   17acc:	03b13423          	sd	s11,40(sp)
   17ad0:	00058a93          	mv	s5,a1
   17ad4:	00060d13          	mv	s10,a2
   17ad8:	014ccc63          	blt	s9,s4,17af0 <__multiply+0x60>
   17adc:	000a0793          	mv	a5,s4
   17ae0:	00058d13          	mv	s10,a1
   17ae4:	000c8a13          	mv	s4,s9
   17ae8:	00060a93          	mv	s5,a2
   17aec:	00078c93          	mv	s9,a5
   17af0:	00cd2783          	lw	a5,12(s10) # 100c <main-0xf0a4>
   17af4:	019a0bbb          	addw	s7,s4,s9
   17af8:	008d2583          	lw	a1,8(s10)
   17afc:	0177d463          	bge	a5,s7,17b04 <__multiply+0x74>
   17b00:	0015859b          	addiw	a1,a1,1
   17b04:	ac9ff0ef          	jal	ra,175cc <_Balloc>
   17b08:	01850c13          	addi	s8,a0,24
   17b0c:	002b9b13          	slli	s6,s7,0x2
   17b10:	016c07b3          	add	a5,s8,s6
   17b14:	00078713          	mv	a4,a5
   17b18:	00f13023          	sd	a5,0(sp)
   17b1c:	00a13c23          	sd	a0,24(sp)
   17b20:	000c0793          	mv	a5,s8
   17b24:	00ec7a63          	bgeu	s8,a4,17b38 <__multiply+0xa8>
   17b28:	00013703          	ld	a4,0(sp)
   17b2c:	0007a023          	sw	zero,0(a5)
   17b30:	00478793          	addi	a5,a5,4
   17b34:	fee7eae3          	bltu	a5,a4,17b28 <__multiply+0x98>
   17b38:	018a8a93          	addi	s5,s5,24
   17b3c:	002c9c93          	slli	s9,s9,0x2
   17b40:	018d0793          	addi	a5,s10,24
   17b44:	019a8733          	add	a4,s5,s9
   17b48:	002a1a13          	slli	s4,s4,0x2
   17b4c:	00010937          	lui	s2,0x10
   17b50:	00f13823          	sd	a5,16(sp)
   17b54:	00e13423          	sd	a4,8(sp)
   17b58:	01478a33          	add	s4,a5,s4
   17b5c:	fff90913          	addi	s2,s2,-1 # ffff <main-0xb1>
   17b60:	02eae063          	bltu	s5,a4,17b80 <__multiply+0xf0>
   17b64:	1280006f          	j	17c8c <__multiply+0x1fc>
   17b68:	0104541b          	srliw	s0,s0,0x10
   17b6c:	08041c63          	bnez	s0,17c04 <__multiply+0x174>
   17b70:	00813783          	ld	a5,8(sp)
   17b74:	004a8a93          	addi	s5,s5,4
   17b78:	004c0c13          	addi	s8,s8,4
   17b7c:	10faf863          	bgeu	s5,a5,17c8c <__multiply+0x1fc>
   17b80:	000aa403          	lw	s0,0(s5)
   17b84:	012479b3          	and	s3,s0,s2
   17b88:	fe0980e3          	beqz	s3,17b68 <__multiply+0xd8>
   17b8c:	01013d83          	ld	s11,16(sp)
   17b90:	000c0c93          	mv	s9,s8
   17b94:	00000d13          	li	s10,0
   17b98:	000dab03          	lw	s6,0(s11)
   17b9c:	000ca483          	lw	s1,0(s9)
   17ba0:	00098593          	mv	a1,s3
   17ba4:	012b7533          	and	a0,s6,s2
   17ba8:	5d0090ef          	jal	ra,21178 <__muldi3>
   17bac:	0124f433          	and	s0,s1,s2
   17bb0:	0085043b          	addw	s0,a0,s0
   17bb4:	00098593          	mv	a1,s3
   17bb8:	010b551b          	srliw	a0,s6,0x10
   17bbc:	01a4043b          	addw	s0,s0,s10
   17bc0:	5b8090ef          	jal	ra,21178 <__muldi3>
   17bc4:	0104d49b          	srliw	s1,s1,0x10
   17bc8:	00a4853b          	addw	a0,s1,a0
   17bcc:	0104549b          	srliw	s1,s0,0x10
   17bd0:	0095053b          	addw	a0,a0,s1
   17bd4:	0105169b          	slliw	a3,a0,0x10
   17bd8:	00897433          	and	s0,s2,s0
   17bdc:	004c8c93          	addi	s9,s9,4
   17be0:	00d46433          	or	s0,s0,a3
   17be4:	004d8d93          	addi	s11,s11,4
   17be8:	fe8cae23          	sw	s0,-4(s9)
   17bec:	01055d1b          	srliw	s10,a0,0x10
   17bf0:	fb4de4e3          	bltu	s11,s4,17b98 <__multiply+0x108>
   17bf4:	01aca023          	sw	s10,0(s9)
   17bf8:	000aa403          	lw	s0,0(s5)
   17bfc:	0104541b          	srliw	s0,s0,0x10
   17c00:	f60408e3          	beqz	s0,17b70 <__multiply+0xe0>
   17c04:	000c2d03          	lw	s10,0(s8)
   17c08:	01013c83          	ld	s9,16(sp)
   17c0c:	000c0d93          	mv	s11,s8
   17c10:	000d0493          	mv	s1,s10
   17c14:	00000993          	li	s3,0
   17c18:	000ca503          	lw	a0,0(s9)
   17c1c:	00040593          	mv	a1,s0
   17c20:	0104d49b          	srliw	s1,s1,0x10
   17c24:	00a97533          	and	a0,s2,a0
   17c28:	550090ef          	jal	ra,21178 <__muldi3>
   17c2c:	00a484bb          	addw	s1,s1,a0
   17c30:	013489bb          	addw	s3,s1,s3
   17c34:	0109961b          	slliw	a2,s3,0x10
   17c38:	012d77b3          	and	a5,s10,s2
   17c3c:	00c7e7b3          	or	a5,a5,a2
   17c40:	004d8d93          	addi	s11,s11,4
   17c44:	fefdae23          	sw	a5,-4(s11)
   17c48:	004c8c93          	addi	s9,s9,4
   17c4c:	ffecd503          	lhu	a0,-2(s9)
   17c50:	000da483          	lw	s1,0(s11)
   17c54:	00040593          	mv	a1,s0
   17c58:	520090ef          	jal	ra,21178 <__muldi3>
   17c5c:	0124f7b3          	and	a5,s1,s2
   17c60:	0109d99b          	srliw	s3,s3,0x10
   17c64:	00f5053b          	addw	a0,a0,a5
   17c68:	0135053b          	addw	a0,a0,s3
   17c6c:	00050d1b          	sext.w	s10,a0
   17c70:	0105599b          	srliw	s3,a0,0x10
   17c74:	fb4ce2e3          	bltu	s9,s4,17c18 <__multiply+0x188>
   17c78:	00813783          	ld	a5,8(sp)
   17c7c:	01ada023          	sw	s10,0(s11)
   17c80:	004a8a93          	addi	s5,s5,4
   17c84:	004c0c13          	addi	s8,s8,4
   17c88:	eefaece3          	bltu	s5,a5,17b80 <__multiply+0xf0>
   17c8c:	03705663          	blez	s7,17cb8 <__multiply+0x228>
   17c90:	00013703          	ld	a4,0(sp)
   17c94:	ffc72783          	lw	a5,-4(a4) # ffffffffbffffffc <__BSS_END__+0xffffffffbffdcdf4>
   17c98:	ffc70b13          	addi	s6,a4,-4
   17c9c:	00078863          	beqz	a5,17cac <__multiply+0x21c>
   17ca0:	0180006f          	j	17cb8 <__multiply+0x228>
   17ca4:	000b2783          	lw	a5,0(s6)
   17ca8:	00079863          	bnez	a5,17cb8 <__multiply+0x228>
   17cac:	fffb8b9b          	addiw	s7,s7,-1
   17cb0:	ffcb0b13          	addi	s6,s6,-4
   17cb4:	fe0b98e3          	bnez	s7,17ca4 <__multiply+0x214>
   17cb8:	01813783          	ld	a5,24(sp)
   17cbc:	08813083          	ld	ra,136(sp)
   17cc0:	08013403          	ld	s0,128(sp)
   17cc4:	0177aa23          	sw	s7,20(a5)
   17cc8:	07813483          	ld	s1,120(sp)
   17ccc:	07013903          	ld	s2,112(sp)
   17cd0:	06813983          	ld	s3,104(sp)
   17cd4:	06013a03          	ld	s4,96(sp)
   17cd8:	05813a83          	ld	s5,88(sp)
   17cdc:	05013b03          	ld	s6,80(sp)
   17ce0:	04813b83          	ld	s7,72(sp)
   17ce4:	04013c03          	ld	s8,64(sp)
   17ce8:	03813c83          	ld	s9,56(sp)
   17cec:	03013d03          	ld	s10,48(sp)
   17cf0:	02813d83          	ld	s11,40(sp)
   17cf4:	00078513          	mv	a0,a5
   17cf8:	09010113          	addi	sp,sp,144
   17cfc:	00008067          	ret

0000000000017d00 <__pow5mult>:
   17d00:	fd010113          	addi	sp,sp,-48
   17d04:	02813023          	sd	s0,32(sp)
   17d08:	01313423          	sd	s3,8(sp)
   17d0c:	01413023          	sd	s4,0(sp)
   17d10:	02113423          	sd	ra,40(sp)
   17d14:	00913c23          	sd	s1,24(sp)
   17d18:	01213823          	sd	s2,16(sp)
   17d1c:	00367793          	andi	a5,a2,3
   17d20:	00060413          	mv	s0,a2
   17d24:	00050993          	mv	s3,a0
   17d28:	00058a13          	mv	s4,a1
   17d2c:	0c079463          	bnez	a5,17df4 <__pow5mult+0xf4>
   17d30:	40245413          	srai	s0,s0,0x2
   17d34:	000a0913          	mv	s2,s4
   17d38:	06040863          	beqz	s0,17da8 <__pow5mult+0xa8>
   17d3c:	0709b483          	ld	s1,112(s3)
   17d40:	0c048e63          	beqz	s1,17e1c <__pow5mult+0x11c>
   17d44:	00147793          	andi	a5,s0,1
   17d48:	000a0913          	mv	s2,s4
   17d4c:	02079063          	bnez	a5,17d6c <__pow5mult+0x6c>
   17d50:	40145413          	srai	s0,s0,0x1
   17d54:	04040a63          	beqz	s0,17da8 <__pow5mult+0xa8>
   17d58:	0004b503          	ld	a0,0(s1)
   17d5c:	06050863          	beqz	a0,17dcc <__pow5mult+0xcc>
   17d60:	00050493          	mv	s1,a0
   17d64:	00147793          	andi	a5,s0,1
   17d68:	fe0784e3          	beqz	a5,17d50 <__pow5mult+0x50>
   17d6c:	00048613          	mv	a2,s1
   17d70:	00090593          	mv	a1,s2
   17d74:	00098513          	mv	a0,s3
   17d78:	d19ff0ef          	jal	ra,17a90 <__multiply>
   17d7c:	06090863          	beqz	s2,17dec <__pow5mult+0xec>
   17d80:	00892703          	lw	a4,8(s2)
   17d84:	0789b783          	ld	a5,120(s3)
   17d88:	40145413          	srai	s0,s0,0x1
   17d8c:	00371713          	slli	a4,a4,0x3
   17d90:	00e787b3          	add	a5,a5,a4
   17d94:	0007b703          	ld	a4,0(a5)
   17d98:	00e93023          	sd	a4,0(s2)
   17d9c:	0127b023          	sd	s2,0(a5)
   17da0:	00050913          	mv	s2,a0
   17da4:	fa041ae3          	bnez	s0,17d58 <__pow5mult+0x58>
   17da8:	02813083          	ld	ra,40(sp)
   17dac:	02013403          	ld	s0,32(sp)
   17db0:	00090513          	mv	a0,s2
   17db4:	01813483          	ld	s1,24(sp)
   17db8:	01013903          	ld	s2,16(sp)
   17dbc:	00813983          	ld	s3,8(sp)
   17dc0:	00013a03          	ld	s4,0(sp)
   17dc4:	03010113          	addi	sp,sp,48
   17dc8:	00008067          	ret
   17dcc:	00048613          	mv	a2,s1
   17dd0:	00048593          	mv	a1,s1
   17dd4:	00098513          	mv	a0,s3
   17dd8:	cb9ff0ef          	jal	ra,17a90 <__multiply>
   17ddc:	00a4b023          	sd	a0,0(s1)
   17de0:	00053023          	sd	zero,0(a0)
   17de4:	00050493          	mv	s1,a0
   17de8:	f7dff06f          	j	17d64 <__pow5mult+0x64>
   17dec:	00050913          	mv	s2,a0
   17df0:	f61ff06f          	j	17d50 <__pow5mult+0x50>
   17df4:	fff7879b          	addiw	a5,a5,-1
   17df8:	0000a717          	auipc	a4,0xa
   17dfc:	90070713          	addi	a4,a4,-1792 # 216f8 <p05.3332>
   17e00:	00279793          	slli	a5,a5,0x2
   17e04:	00f707b3          	add	a5,a4,a5
   17e08:	0007a603          	lw	a2,0(a5)
   17e0c:	00000693          	li	a3,0
   17e10:	889ff0ef          	jal	ra,17698 <__multadd>
   17e14:	00050a13          	mv	s4,a0
   17e18:	f19ff06f          	j	17d30 <__pow5mult+0x30>
   17e1c:	00100593          	li	a1,1
   17e20:	00098513          	mv	a0,s3
   17e24:	fa8ff0ef          	jal	ra,175cc <_Balloc>
   17e28:	27100793          	li	a5,625
   17e2c:	00f52c23          	sw	a5,24(a0)
   17e30:	00100793          	li	a5,1
   17e34:	00f52a23          	sw	a5,20(a0)
   17e38:	06a9b823          	sd	a0,112(s3)
   17e3c:	00050493          	mv	s1,a0
   17e40:	00053023          	sd	zero,0(a0)
   17e44:	f01ff06f          	j	17d44 <__pow5mult+0x44>

0000000000017e48 <__lshift>:
   17e48:	fc010113          	addi	sp,sp,-64
   17e4c:	01313c23          	sd	s3,24(sp)
   17e50:	0145a983          	lw	s3,20(a1)
   17e54:	01613023          	sd	s6,0(sp)
   17e58:	00c5a783          	lw	a5,12(a1)
   17e5c:	40565b1b          	sraiw	s6,a2,0x5
   17e60:	016989bb          	addw	s3,s3,s6
   17e64:	02813823          	sd	s0,48(sp)
   17e68:	02913423          	sd	s1,40(sp)
   17e6c:	03213023          	sd	s2,32(sp)
   17e70:	01413823          	sd	s4,16(sp)
   17e74:	01513423          	sd	s5,8(sp)
   17e78:	02113c23          	sd	ra,56(sp)
   17e7c:	0019849b          	addiw	s1,s3,1
   17e80:	00058913          	mv	s2,a1
   17e84:	00060a93          	mv	s5,a2
   17e88:	000b0413          	mv	s0,s6
   17e8c:	00050a13          	mv	s4,a0
   17e90:	0085a583          	lw	a1,8(a1)
   17e94:	0097d863          	bge	a5,s1,17ea4 <__lshift+0x5c>
   17e98:	0017979b          	slliw	a5,a5,0x1
   17e9c:	0015859b          	addiw	a1,a1,1
   17ea0:	fe97cce3          	blt	a5,s1,17e98 <__lshift+0x50>
   17ea4:	000a0513          	mv	a0,s4
   17ea8:	f24ff0ef          	jal	ra,175cc <_Balloc>
   17eac:	01850713          	addi	a4,a0,24
   17eb0:	03605c63          	blez	s6,17ee8 <__lshift+0xa0>
   17eb4:	fff4041b          	addiw	s0,s0,-1
   17eb8:	02041413          	slli	s0,s0,0x20
   17ebc:	02045413          	srli	s0,s0,0x20
   17ec0:	00740693          	addi	a3,s0,7
   17ec4:	00269693          	slli	a3,a3,0x2
   17ec8:	00d506b3          	add	a3,a0,a3
   17ecc:	00070793          	mv	a5,a4
   17ed0:	00478793          	addi	a5,a5,4
   17ed4:	fe07ae23          	sw	zero,-4(a5)
   17ed8:	fed79ce3          	bne	a5,a3,17ed0 <__lshift+0x88>
   17edc:	00140413          	addi	s0,s0,1
   17ee0:	00241413          	slli	s0,s0,0x2
   17ee4:	00870733          	add	a4,a4,s0
   17ee8:	01492803          	lw	a6,20(s2)
   17eec:	01890793          	addi	a5,s2,24
   17ef0:	01faf613          	andi	a2,s5,31
   17ef4:	00281813          	slli	a6,a6,0x2
   17ef8:	01078833          	add	a6,a5,a6
   17efc:	08060463          	beqz	a2,17f84 <__lshift+0x13c>
   17f00:	02000893          	li	a7,32
   17f04:	40c888bb          	subw	a7,a7,a2
   17f08:	00000693          	li	a3,0
   17f0c:	0007a583          	lw	a1,0(a5)
   17f10:	00470713          	addi	a4,a4,4
   17f14:	00478793          	addi	a5,a5,4
   17f18:	00c595bb          	sllw	a1,a1,a2
   17f1c:	00b6e6b3          	or	a3,a3,a1
   17f20:	fed72e23          	sw	a3,-4(a4)
   17f24:	ffc7a683          	lw	a3,-4(a5)
   17f28:	0116d6bb          	srlw	a3,a3,a7
   17f2c:	ff07e0e3          	bltu	a5,a6,17f0c <__lshift+0xc4>
   17f30:	00d72023          	sw	a3,0(a4)
   17f34:	00068463          	beqz	a3,17f3c <__lshift+0xf4>
   17f38:	00048993          	mv	s3,s1
   17f3c:	00892703          	lw	a4,8(s2)
   17f40:	078a3783          	ld	a5,120(s4)
   17f44:	03813083          	ld	ra,56(sp)
   17f48:	00371713          	slli	a4,a4,0x3
   17f4c:	00e787b3          	add	a5,a5,a4
   17f50:	0007b703          	ld	a4,0(a5)
   17f54:	01352a23          	sw	s3,20(a0)
   17f58:	03013403          	ld	s0,48(sp)
   17f5c:	00e93023          	sd	a4,0(s2)
   17f60:	0127b023          	sd	s2,0(a5)
   17f64:	02813483          	ld	s1,40(sp)
   17f68:	02013903          	ld	s2,32(sp)
   17f6c:	01813983          	ld	s3,24(sp)
   17f70:	01013a03          	ld	s4,16(sp)
   17f74:	00813a83          	ld	s5,8(sp)
   17f78:	00013b03          	ld	s6,0(sp)
   17f7c:	04010113          	addi	sp,sp,64
   17f80:	00008067          	ret
   17f84:	00478793          	addi	a5,a5,4
   17f88:	ffc7a683          	lw	a3,-4(a5)
   17f8c:	00470713          	addi	a4,a4,4
   17f90:	fed72e23          	sw	a3,-4(a4)
   17f94:	fb07f4e3          	bgeu	a5,a6,17f3c <__lshift+0xf4>
   17f98:	00478793          	addi	a5,a5,4
   17f9c:	ffc7a683          	lw	a3,-4(a5)
   17fa0:	00470713          	addi	a4,a4,4
   17fa4:	fed72e23          	sw	a3,-4(a4)
   17fa8:	fd07eee3          	bltu	a5,a6,17f84 <__lshift+0x13c>
   17fac:	f91ff06f          	j	17f3c <__lshift+0xf4>

0000000000017fb0 <__mcmp>:
   17fb0:	00050613          	mv	a2,a0
   17fb4:	0145a783          	lw	a5,20(a1)
   17fb8:	01452503          	lw	a0,20(a0)
   17fbc:	40f5053b          	subw	a0,a0,a5
   17fc0:	02051e63          	bnez	a0,17ffc <__mcmp+0x4c>
   17fc4:	00279713          	slli	a4,a5,0x2
   17fc8:	01860613          	addi	a2,a2,24
   17fcc:	01858593          	addi	a1,a1,24
   17fd0:	00e607b3          	add	a5,a2,a4
   17fd4:	00e585b3          	add	a1,a1,a4
   17fd8:	0080006f          	j	17fe0 <__mcmp+0x30>
   17fdc:	02f67063          	bgeu	a2,a5,17ffc <__mcmp+0x4c>
   17fe0:	ffc78793          	addi	a5,a5,-4
   17fe4:	ffc58593          	addi	a1,a1,-4
   17fe8:	0007a683          	lw	a3,0(a5)
   17fec:	0005a703          	lw	a4,0(a1)
   17ff0:	fee686e3          	beq	a3,a4,17fdc <__mcmp+0x2c>
   17ff4:	fff00513          	li	a0,-1
   17ff8:	00e6f463          	bgeu	a3,a4,18000 <__mcmp+0x50>
   17ffc:	00008067          	ret
   18000:	00100513          	li	a0,1
   18004:	00008067          	ret

0000000000018008 <__mdiff>:
   18008:	fd010113          	addi	sp,sp,-48
   1800c:	01213823          	sd	s2,16(sp)
   18010:	01462703          	lw	a4,20(a2)
   18014:	0145a903          	lw	s2,20(a1)
   18018:	02813023          	sd	s0,32(sp)
   1801c:	00913c23          	sd	s1,24(sp)
   18020:	01313423          	sd	s3,8(sp)
   18024:	01413023          	sd	s4,0(sp)
   18028:	02113423          	sd	ra,40(sp)
   1802c:	40e9093b          	subw	s2,s2,a4
   18030:	00058993          	mv	s3,a1
   18034:	00060a13          	mv	s4,a2
   18038:	01858413          	addi	s0,a1,24
   1803c:	01860493          	addi	s1,a2,24
   18040:	04091863          	bnez	s2,18090 <__mdiff+0x88>
   18044:	00271713          	slli	a4,a4,0x2
   18048:	00e407b3          	add	a5,s0,a4
   1804c:	00e48733          	add	a4,s1,a4
   18050:	0080006f          	j	18058 <__mdiff+0x50>
   18054:	16f47663          	bgeu	s0,a5,181c0 <__mdiff+0x1b8>
   18058:	ffc78793          	addi	a5,a5,-4
   1805c:	ffc70713          	addi	a4,a4,-4
   18060:	0007a583          	lw	a1,0(a5)
   18064:	00072683          	lw	a3,0(a4)
   18068:	fed586e3          	beq	a1,a3,18054 <__mdiff+0x4c>
   1806c:	02d5f663          	bgeu	a1,a3,18098 <__mdiff+0x90>
   18070:	00040713          	mv	a4,s0
   18074:	00098793          	mv	a5,s3
   18078:	00048413          	mv	s0,s1
   1807c:	000a0993          	mv	s3,s4
   18080:	00070493          	mv	s1,a4
   18084:	00078a13          	mv	s4,a5
   18088:	00100913          	li	s2,1
   1808c:	00c0006f          	j	18098 <__mdiff+0x90>
   18090:	fe0940e3          	bltz	s2,18070 <__mdiff+0x68>
   18094:	00000913          	li	s2,0
   18098:	0089a583          	lw	a1,8(s3)
   1809c:	d30ff0ef          	jal	ra,175cc <_Balloc>
   180a0:	0149a883          	lw	a7,20(s3)
   180a4:	014a2e83          	lw	t4,20(s4)
   180a8:	00010e37          	lui	t3,0x10
   180ac:	00289313          	slli	t1,a7,0x2
   180b0:	002e9e93          	slli	t4,t4,0x2
   180b4:	01252823          	sw	s2,16(a0)
   180b8:	00640333          	add	t1,s0,t1
   180bc:	01d48eb3          	add	t4,s1,t4
   180c0:	01850593          	addi	a1,a0,24
   180c4:	00000713          	li	a4,0
   180c8:	fffe0e13          	addi	t3,t3,-1 # ffff <main-0xb1>
   180cc:	0080006f          	j	180d4 <__mdiff+0xcc>
   180d0:	00080593          	mv	a1,a6
   180d4:	00042683          	lw	a3,0(s0)
   180d8:	0004a603          	lw	a2,0(s1)
   180dc:	00458813          	addi	a6,a1,4
   180e0:	01c6f7b3          	and	a5,a3,t3
   180e4:	00e787bb          	addw	a5,a5,a4
   180e8:	01c67733          	and	a4,a2,t3
   180ec:	40e787bb          	subw	a5,a5,a4
   180f0:	0106561b          	srliw	a2,a2,0x10
   180f4:	0106d71b          	srliw	a4,a3,0x10
   180f8:	40c7073b          	subw	a4,a4,a2
   180fc:	4107d69b          	sraiw	a3,a5,0x10
   18100:	00d7073b          	addw	a4,a4,a3
   18104:	0107169b          	slliw	a3,a4,0x10
   18108:	01c7f7b3          	and	a5,a5,t3
   1810c:	00d7e7b3          	or	a5,a5,a3
   18110:	0007879b          	sext.w	a5,a5
   18114:	00448493          	addi	s1,s1,4
   18118:	fef82e23          	sw	a5,-4(a6)
   1811c:	00440413          	addi	s0,s0,4
   18120:	4107571b          	sraiw	a4,a4,0x10
   18124:	fbd4e6e3          	bltu	s1,t4,180d0 <__mdiff+0xc8>
   18128:	06647063          	bgeu	s0,t1,18188 <__mdiff+0x180>
   1812c:	00010e37          	lui	t3,0x10
   18130:	00080593          	mv	a1,a6
   18134:	00040613          	mv	a2,s0
   18138:	fffe0e13          	addi	t3,t3,-1 # ffff <main-0xb1>
   1813c:	00062683          	lw	a3,0(a2)
   18140:	00458593          	addi	a1,a1,4
   18144:	00460613          	addi	a2,a2,4
   18148:	01c6f7b3          	and	a5,a3,t3
   1814c:	00e787bb          	addw	a5,a5,a4
   18150:	0106d71b          	srliw	a4,a3,0x10
   18154:	4107d69b          	sraiw	a3,a5,0x10
   18158:	00d7073b          	addw	a4,a4,a3
   1815c:	0107169b          	slliw	a3,a4,0x10
   18160:	01c7f7b3          	and	a5,a5,t3
   18164:	00d7e7b3          	or	a5,a5,a3
   18168:	0007879b          	sext.w	a5,a5
   1816c:	fef5ae23          	sw	a5,-4(a1)
   18170:	4107571b          	sraiw	a4,a4,0x10
   18174:	fc6664e3          	bltu	a2,t1,1813c <__mdiff+0x134>
   18178:	fff30593          	addi	a1,t1,-1
   1817c:	408585b3          	sub	a1,a1,s0
   18180:	ffc5f593          	andi	a1,a1,-4
   18184:	00b805b3          	add	a1,a6,a1
   18188:	00079a63          	bnez	a5,1819c <__mdiff+0x194>
   1818c:	ffc58593          	addi	a1,a1,-4
   18190:	0005a783          	lw	a5,0(a1)
   18194:	fff8889b          	addiw	a7,a7,-1
   18198:	fe078ae3          	beqz	a5,1818c <__mdiff+0x184>
   1819c:	02813083          	ld	ra,40(sp)
   181a0:	02013403          	ld	s0,32(sp)
   181a4:	01152a23          	sw	a7,20(a0)
   181a8:	01813483          	ld	s1,24(sp)
   181ac:	01013903          	ld	s2,16(sp)
   181b0:	00813983          	ld	s3,8(sp)
   181b4:	00013a03          	ld	s4,0(sp)
   181b8:	03010113          	addi	sp,sp,48
   181bc:	00008067          	ret
   181c0:	00000593          	li	a1,0
   181c4:	c08ff0ef          	jal	ra,175cc <_Balloc>
   181c8:	02813083          	ld	ra,40(sp)
   181cc:	02013403          	ld	s0,32(sp)
   181d0:	00100793          	li	a5,1
   181d4:	00f52a23          	sw	a5,20(a0)
   181d8:	00052c23          	sw	zero,24(a0)
   181dc:	01813483          	ld	s1,24(sp)
   181e0:	01013903          	ld	s2,16(sp)
   181e4:	00813983          	ld	s3,8(sp)
   181e8:	00013a03          	ld	s4,0(sp)
   181ec:	03010113          	addi	sp,sp,48
   181f0:	00008067          	ret

00000000000181f4 <__ulp>:
   181f4:	02055513          	srli	a0,a0,0x20
   181f8:	7ff007b7          	lui	a5,0x7ff00
   181fc:	00f577b3          	and	a5,a0,a5
   18200:	fcc00537          	lui	a0,0xfcc00
   18204:	00f5053b          	addw	a0,a0,a5
   18208:	0005079b          	sext.w	a5,a0
   1820c:	00f05663          	blez	a5,18218 <__ulp+0x24>
   18210:	02051513          	slli	a0,a0,0x20
   18214:	00008067          	ret
   18218:	40a0053b          	negw	a0,a0
   1821c:	4145579b          	sraiw	a5,a0,0x14
   18220:	01300713          	li	a4,19
   18224:	00f74a63          	blt	a4,a5,18238 <__ulp+0x44>
   18228:	00080537          	lui	a0,0x80
   1822c:	40f5553b          	sraw	a0,a0,a5
   18230:	02051513          	slli	a0,a0,0x20
   18234:	00008067          	ret
   18238:	fec7871b          	addiw	a4,a5,-20
   1823c:	01e00693          	li	a3,30
   18240:	00000513          	li	a0,0
   18244:	00100793          	li	a5,1
   18248:	00e6c663          	blt	a3,a4,18254 <__ulp+0x60>
   1824c:	800007b7          	lui	a5,0x80000
   18250:	00e7d7bb          	srlw	a5,a5,a4
   18254:	02055513          	srli	a0,a0,0x20
   18258:	02079793          	slli	a5,a5,0x20
   1825c:	0207d793          	srli	a5,a5,0x20
   18260:	02051513          	slli	a0,a0,0x20
   18264:	00f56533          	or	a0,a0,a5
   18268:	00008067          	ret

000000000001826c <__b2d>:
   1826c:	fd010113          	addi	sp,sp,-48
   18270:	02813023          	sd	s0,32(sp)
   18274:	01452403          	lw	s0,20(a0) # 80014 <__BSS_END__+0x5ce0c>
   18278:	01213823          	sd	s2,16(sp)
   1827c:	01850913          	addi	s2,a0,24
   18280:	00241413          	slli	s0,s0,0x2
   18284:	00890433          	add	s0,s2,s0
   18288:	00913c23          	sd	s1,24(sp)
   1828c:	ffc42483          	lw	s1,-4(s0)
   18290:	01313423          	sd	s3,8(sp)
   18294:	01413023          	sd	s4,0(sp)
   18298:	00048513          	mv	a0,s1
   1829c:	00058a13          	mv	s4,a1
   182a0:	02113423          	sd	ra,40(sp)
   182a4:	e88ff0ef          	jal	ra,1792c <__hi0bits>
   182a8:	02000693          	li	a3,32
   182ac:	40a687bb          	subw	a5,a3,a0
   182b0:	00fa2023          	sw	a5,0(s4)
   182b4:	00a00793          	li	a5,10
   182b8:	ffc40993          	addi	s3,s0,-4
   182bc:	0aa7d663          	bge	a5,a0,18368 <__b2d+0xfc>
   182c0:	ff55079b          	addiw	a5,a0,-11
   182c4:	07397063          	bgeu	s2,s3,18324 <__b2d+0xb8>
   182c8:	ff842703          	lw	a4,-8(s0)
   182cc:	06078063          	beqz	a5,1832c <__b2d+0xc0>
   182d0:	40f6853b          	subw	a0,a3,a5
   182d4:	00f496bb          	sllw	a3,s1,a5
   182d8:	00a754bb          	srlw	s1,a4,a0
   182dc:	0096e6b3          	or	a3,a3,s1
   182e0:	3ff004b7          	lui	s1,0x3ff00
   182e4:	0096e6b3          	or	a3,a3,s1
   182e8:	00f7173b          	sllw	a4,a4,a5
   182ec:	ff840613          	addi	a2,s0,-8
   182f0:	02069793          	slli	a5,a3,0x20
   182f4:	0007069b          	sext.w	a3,a4
   182f8:	00c97a63          	bgeu	s2,a2,1830c <__b2d+0xa0>
   182fc:	ff442683          	lw	a3,-12(s0)
   18300:	00a6d53b          	srlw	a0,a3,a0
   18304:	00e566b3          	or	a3,a0,a4
   18308:	0006869b          	sext.w	a3,a3
   1830c:	0207d793          	srli	a5,a5,0x20
   18310:	02069693          	slli	a3,a3,0x20
   18314:	0206d693          	srli	a3,a3,0x20
   18318:	02079793          	slli	a5,a5,0x20
   1831c:	00d7e7b3          	or	a5,a5,a3
   18320:	0240006f          	j	18344 <__b2d+0xd8>
   18324:	00000713          	li	a4,0
   18328:	08079663          	bnez	a5,183b4 <__b2d+0x148>
   1832c:	3ff007b7          	lui	a5,0x3ff00
   18330:	00f4e7b3          	or	a5,s1,a5
   18334:	02071713          	slli	a4,a4,0x20
   18338:	02075713          	srli	a4,a4,0x20
   1833c:	02079793          	slli	a5,a5,0x20
   18340:	00e7e7b3          	or	a5,a5,a4
   18344:	02813083          	ld	ra,40(sp)
   18348:	02013403          	ld	s0,32(sp)
   1834c:	01813483          	ld	s1,24(sp)
   18350:	01013903          	ld	s2,16(sp)
   18354:	00813983          	ld	s3,8(sp)
   18358:	00013a03          	ld	s4,0(sp)
   1835c:	00078513          	mv	a0,a5
   18360:	03010113          	addi	sp,sp,48
   18364:	00008067          	ret
   18368:	00b00693          	li	a3,11
   1836c:	40a686bb          	subw	a3,a3,a0
   18370:	3ff00737          	lui	a4,0x3ff00
   18374:	00d4d7bb          	srlw	a5,s1,a3
   18378:	00e7e7b3          	or	a5,a5,a4
   1837c:	02079793          	slli	a5,a5,0x20
   18380:	00000713          	li	a4,0
   18384:	01397663          	bgeu	s2,s3,18390 <__b2d+0x124>
   18388:	ff842703          	lw	a4,-8(s0)
   1838c:	00d7573b          	srlw	a4,a4,a3
   18390:	0155051b          	addiw	a0,a0,21
   18394:	00a494bb          	sllw	s1,s1,a0
   18398:	009764b3          	or	s1,a4,s1
   1839c:	0207d793          	srli	a5,a5,0x20
   183a0:	02049493          	slli	s1,s1,0x20
   183a4:	0204d493          	srli	s1,s1,0x20
   183a8:	02079793          	slli	a5,a5,0x20
   183ac:	0097e7b3          	or	a5,a5,s1
   183b0:	f95ff06f          	j	18344 <__b2d+0xd8>
   183b4:	00f497bb          	sllw	a5,s1,a5
   183b8:	3ff00537          	lui	a0,0x3ff00
   183bc:	00a7e7b3          	or	a5,a5,a0
   183c0:	02079793          	slli	a5,a5,0x20
   183c4:	00000693          	li	a3,0
   183c8:	f45ff06f          	j	1830c <__b2d+0xa0>

00000000000183cc <__d2b>:
   183cc:	fc010113          	addi	sp,sp,-64
   183d0:	02913423          	sd	s1,40(sp)
   183d4:	00058493          	mv	s1,a1
   183d8:	00100593          	li	a1,1
   183dc:	02813823          	sd	s0,48(sp)
   183e0:	03213023          	sd	s2,32(sp)
   183e4:	01313c23          	sd	s3,24(sp)
   183e8:	01413823          	sd	s4,16(sp)
   183ec:	02113c23          	sd	ra,56(sp)
   183f0:	00060993          	mv	s3,a2
   183f4:	00068913          	mv	s2,a3
   183f8:	9d4ff0ef          	jal	ra,175cc <_Balloc>
   183fc:	4204d793          	srai	a5,s1,0x20
   18400:	0147d41b          	srliw	s0,a5,0x14
   18404:	7ff47413          	andi	s0,s0,2047
   18408:	02c79793          	slli	a5,a5,0x2c
   1840c:	00050a13          	mv	s4,a0
   18410:	02c7d793          	srli	a5,a5,0x2c
   18414:	00040663          	beqz	s0,18420 <__d2b+0x54>
   18418:	00100737          	lui	a4,0x100
   1841c:	00e7e7b3          	or	a5,a5,a4
   18420:	00f12623          	sw	a5,12(sp)
   18424:	0004849b          	sext.w	s1,s1
   18428:	08048e63          	beqz	s1,184c4 <__d2b+0xf8>
   1842c:	00810513          	addi	a0,sp,8
   18430:	00912423          	sw	s1,8(sp)
   18434:	d6cff0ef          	jal	ra,179a0 <__lo0bits>
   18438:	06051063          	bnez	a0,18498 <__d2b+0xcc>
   1843c:	00812703          	lw	a4,8(sp)
   18440:	00c12783          	lw	a5,12(sp)
   18444:	00ea2c23          	sw	a4,24(s4)
   18448:	00f034b3          	snez	s1,a5
   1844c:	00148493          	addi	s1,s1,1 # 3ff00001 <__BSS_END__+0x3fedcdf9>
   18450:	00fa2e23          	sw	a5,28(s4)
   18454:	009a2a23          	sw	s1,20(s4)
   18458:	08040863          	beqz	s0,184e8 <__d2b+0x11c>
   1845c:	bcd4041b          	addiw	s0,s0,-1075
   18460:	00a4043b          	addw	s0,s0,a0
   18464:	03500793          	li	a5,53
   18468:	0089a023          	sw	s0,0(s3)
   1846c:	40a7853b          	subw	a0,a5,a0
   18470:	00a92023          	sw	a0,0(s2)
   18474:	03813083          	ld	ra,56(sp)
   18478:	03013403          	ld	s0,48(sp)
   1847c:	000a0513          	mv	a0,s4
   18480:	02813483          	ld	s1,40(sp)
   18484:	02013903          	ld	s2,32(sp)
   18488:	01813983          	ld	s3,24(sp)
   1848c:	01013a03          	ld	s4,16(sp)
   18490:	04010113          	addi	sp,sp,64
   18494:	00008067          	ret
   18498:	00c12703          	lw	a4,12(sp)
   1849c:	00812683          	lw	a3,8(sp)
   184a0:	02000793          	li	a5,32
   184a4:	40a787bb          	subw	a5,a5,a0
   184a8:	00f717bb          	sllw	a5,a4,a5
   184ac:	00d7e7b3          	or	a5,a5,a3
   184b0:	00a7573b          	srlw	a4,a4,a0
   184b4:	00fa2c23          	sw	a5,24(s4)
   184b8:	00e12623          	sw	a4,12(sp)
   184bc:	0007079b          	sext.w	a5,a4
   184c0:	f89ff06f          	j	18448 <__d2b+0x7c>
   184c4:	00c10513          	addi	a0,sp,12
   184c8:	cd8ff0ef          	jal	ra,179a0 <__lo0bits>
   184cc:	00100793          	li	a5,1
   184d0:	00fa2a23          	sw	a5,20(s4)
   184d4:	00c12783          	lw	a5,12(sp)
   184d8:	0205051b          	addiw	a0,a0,32
   184dc:	00100493          	li	s1,1
   184e0:	00fa2c23          	sw	a5,24(s4)
   184e4:	f6041ce3          	bnez	s0,1845c <__d2b+0x90>
   184e8:	bce5051b          	addiw	a0,a0,-1074
   184ec:	00249793          	slli	a5,s1,0x2
   184f0:	00a9a023          	sw	a0,0(s3)
   184f4:	00fa07b3          	add	a5,s4,a5
   184f8:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedce0c>
   184fc:	0054949b          	slliw	s1,s1,0x5
   18500:	c2cff0ef          	jal	ra,1792c <__hi0bits>
   18504:	40a484bb          	subw	s1,s1,a0
   18508:	00992023          	sw	s1,0(s2)
   1850c:	f69ff06f          	j	18474 <__d2b+0xa8>

0000000000018510 <__ratio>:
   18510:	fd010113          	addi	sp,sp,-48
   18514:	00913c23          	sd	s1,24(sp)
   18518:	00058493          	mv	s1,a1
   1851c:	00810593          	addi	a1,sp,8
   18520:	02113423          	sd	ra,40(sp)
   18524:	02813023          	sd	s0,32(sp)
   18528:	01213823          	sd	s2,16(sp)
   1852c:	00050913          	mv	s2,a0
   18530:	d3dff0ef          	jal	ra,1826c <__b2d>
   18534:	00c10593          	addi	a1,sp,12
   18538:	00050413          	mv	s0,a0
   1853c:	00048513          	mv	a0,s1
   18540:	d2dff0ef          	jal	ra,1826c <__b2d>
   18544:	0144a703          	lw	a4,20(s1)
   18548:	01492783          	lw	a5,20(s2)
   1854c:	00c12683          	lw	a3,12(sp)
   18550:	00050593          	mv	a1,a0
   18554:	40e787bb          	subw	a5,a5,a4
   18558:	00812703          	lw	a4,8(sp)
   1855c:	0057979b          	slliw	a5,a5,0x5
   18560:	40d7073b          	subw	a4,a4,a3
   18564:	00e7873b          	addw	a4,a5,a4
   18568:	00070793          	mv	a5,a4
   1856c:	04e05263          	blez	a4,185b0 <__ratio+0xa0>
   18570:	02045713          	srli	a4,s0,0x20
   18574:	0147979b          	slliw	a5,a5,0x14
   18578:	00e787bb          	addw	a5,a5,a4
   1857c:	fff00713          	li	a4,-1
   18580:	02075713          	srli	a4,a4,0x20
   18584:	02079793          	slli	a5,a5,0x20
   18588:	00877433          	and	s0,a4,s0
   1858c:	00f46433          	or	s0,s0,a5
   18590:	00040513          	mv	a0,s0
   18594:	004070ef          	jal	ra,1f598 <__divdf3>
   18598:	02813083          	ld	ra,40(sp)
   1859c:	02013403          	ld	s0,32(sp)
   185a0:	01813483          	ld	s1,24(sp)
   185a4:	01013903          	ld	s2,16(sp)
   185a8:	03010113          	addi	sp,sp,48
   185ac:	00008067          	ret
   185b0:	02055713          	srli	a4,a0,0x20
   185b4:	0147979b          	slliw	a5,a5,0x14
   185b8:	fff00513          	li	a0,-1
   185bc:	40f707bb          	subw	a5,a4,a5
   185c0:	02055513          	srli	a0,a0,0x20
   185c4:	02079793          	slli	a5,a5,0x20
   185c8:	00b575b3          	and	a1,a0,a1
   185cc:	00f5e5b3          	or	a1,a1,a5
   185d0:	fc1ff06f          	j	18590 <__ratio+0x80>

00000000000185d4 <_mprec_log10>:
   185d4:	fe010113          	addi	sp,sp,-32
   185d8:	00813823          	sd	s0,16(sp)
   185dc:	00113c23          	sd	ra,24(sp)
   185e0:	00913423          	sd	s1,8(sp)
   185e4:	01700793          	li	a5,23
   185e8:	00050413          	mv	s0,a0
   185ec:	04a7d063          	bge	a5,a0,1862c <_mprec_log10+0x58>
   185f0:	0000b797          	auipc	a5,0xb
   185f4:	b4078793          	addi	a5,a5,-1216 # 23130 <__SDATA_BEGIN__+0x10>
   185f8:	0007b503          	ld	a0,0(a5)
   185fc:	0000b797          	auipc	a5,0xb
   18600:	b3c78793          	addi	a5,a5,-1220 # 23138 <__SDATA_BEGIN__+0x18>
   18604:	0007b483          	ld	s1,0(a5)
   18608:	fff4041b          	addiw	s0,s0,-1
   1860c:	00048593          	mv	a1,s1
   18610:	334070ef          	jal	ra,1f944 <__muldf3>
   18614:	fe041ae3          	bnez	s0,18608 <_mprec_log10+0x34>
   18618:	01813083          	ld	ra,24(sp)
   1861c:	01013403          	ld	s0,16(sp)
   18620:	00813483          	ld	s1,8(sp)
   18624:	02010113          	addi	sp,sp,32
   18628:	00008067          	ret
   1862c:	00351413          	slli	s0,a0,0x3
   18630:	00009797          	auipc	a5,0x9
   18634:	0c878793          	addi	a5,a5,200 # 216f8 <p05.3332>
   18638:	00878433          	add	s0,a5,s0
   1863c:	01043503          	ld	a0,16(s0)
   18640:	01813083          	ld	ra,24(sp)
   18644:	01013403          	ld	s0,16(sp)
   18648:	00813483          	ld	s1,8(sp)
   1864c:	02010113          	addi	sp,sp,32
   18650:	00008067          	ret

0000000000018654 <__copybits>:
   18654:	01462683          	lw	a3,20(a2)
   18658:	fff5859b          	addiw	a1,a1,-1
   1865c:	4055d59b          	sraiw	a1,a1,0x5
   18660:	00158593          	addi	a1,a1,1
   18664:	01860793          	addi	a5,a2,24
   18668:	00269693          	slli	a3,a3,0x2
   1866c:	00259593          	slli	a1,a1,0x2
   18670:	00d786b3          	add	a3,a5,a3
   18674:	00b505b3          	add	a1,a0,a1
   18678:	02d7f863          	bgeu	a5,a3,186a8 <__copybits+0x54>
   1867c:	00050713          	mv	a4,a0
   18680:	00478793          	addi	a5,a5,4
   18684:	ffc7a803          	lw	a6,-4(a5)
   18688:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdcdfc>
   1868c:	ff072e23          	sw	a6,-4(a4)
   18690:	fed7e8e3          	bltu	a5,a3,18680 <__copybits+0x2c>
   18694:	40c687b3          	sub	a5,a3,a2
   18698:	fe778793          	addi	a5,a5,-25
   1869c:	ffc7f793          	andi	a5,a5,-4
   186a0:	00478793          	addi	a5,a5,4
   186a4:	00f50533          	add	a0,a0,a5
   186a8:	00b57863          	bgeu	a0,a1,186b8 <__copybits+0x64>
   186ac:	00450513          	addi	a0,a0,4 # 3ff00004 <__BSS_END__+0x3fedcdfc>
   186b0:	fe052e23          	sw	zero,-4(a0)
   186b4:	feb56ce3          	bltu	a0,a1,186ac <__copybits+0x58>
   186b8:	00008067          	ret

00000000000186bc <__any_on>:
   186bc:	01452703          	lw	a4,20(a0)
   186c0:	4055d613          	srai	a2,a1,0x5
   186c4:	01850693          	addi	a3,a0,24
   186c8:	02c75a63          	bge	a4,a2,186fc <__any_on+0x40>
   186cc:	00271793          	slli	a5,a4,0x2
   186d0:	00f687b3          	add	a5,a3,a5
   186d4:	04f6fc63          	bgeu	a3,a5,1872c <__any_on+0x70>
   186d8:	ffc7a503          	lw	a0,-4(a5)
   186dc:	ffc78793          	addi	a5,a5,-4
   186e0:	00051a63          	bnez	a0,186f4 <__any_on+0x38>
   186e4:	04f6f263          	bgeu	a3,a5,18728 <__any_on+0x6c>
   186e8:	ffc78793          	addi	a5,a5,-4
   186ec:	0007a703          	lw	a4,0(a5)
   186f0:	fe070ae3          	beqz	a4,186e4 <__any_on+0x28>
   186f4:	00100513          	li	a0,1
   186f8:	00008067          	ret
   186fc:	00261793          	slli	a5,a2,0x2
   18700:	00f687b3          	add	a5,a3,a5
   18704:	fce658e3          	bge	a2,a4,186d4 <__any_on+0x18>
   18708:	01f5f593          	andi	a1,a1,31
   1870c:	fc0584e3          	beqz	a1,186d4 <__any_on+0x18>
   18710:	0007a603          	lw	a2,0(a5)
   18714:	00100513          	li	a0,1
   18718:	00b6573b          	srlw	a4,a2,a1
   1871c:	00b715bb          	sllw	a1,a4,a1
   18720:	fac58ae3          	beq	a1,a2,186d4 <__any_on+0x18>
   18724:	00008067          	ret
   18728:	00008067          	ret
   1872c:	00000513          	li	a0,0
   18730:	00008067          	ret

0000000000018734 <_sbrk_r>:
   18734:	ff010113          	addi	sp,sp,-16
   18738:	00813023          	sd	s0,0(sp)
   1873c:	00050413          	mv	s0,a0
   18740:	00058513          	mv	a0,a1
   18744:	0000b797          	auipc	a5,0xb
   18748:	aa07ae23          	sw	zero,-1348(a5) # 23200 <errno>
   1874c:	00113423          	sd	ra,8(sp)
   18750:	4e1060ef          	jal	ra,1f430 <_sbrk>
   18754:	fff00793          	li	a5,-1
   18758:	00f50a63          	beq	a0,a5,1876c <_sbrk_r+0x38>
   1875c:	00813083          	ld	ra,8(sp)
   18760:	00013403          	ld	s0,0(sp)
   18764:	01010113          	addi	sp,sp,16
   18768:	00008067          	ret
   1876c:	0000b797          	auipc	a5,0xb
   18770:	a9478793          	addi	a5,a5,-1388 # 23200 <errno>
   18774:	0007a783          	lw	a5,0(a5)
   18778:	fe0782e3          	beqz	a5,1875c <_sbrk_r+0x28>
   1877c:	00f42023          	sw	a5,0(s0)
   18780:	00813083          	ld	ra,8(sp)
   18784:	00013403          	ld	s0,0(sp)
   18788:	01010113          	addi	sp,sp,16
   1878c:	00008067          	ret

0000000000018790 <frexp>:
   18790:	fe010113          	addi	sp,sp,-32
   18794:	00813823          	sd	s0,16(sp)
   18798:	42055693          	srai	a3,a0,0x20
   1879c:	80000437          	lui	s0,0x80000
   187a0:	00913423          	sd	s1,8(sp)
   187a4:	00113c23          	sd	ra,24(sp)
   187a8:	0006861b          	sext.w	a2,a3
   187ac:	fff44413          	not	s0,s0
   187b0:	00058493          	mv	s1,a1
   187b4:	0005a023          	sw	zero,0(a1)
   187b8:	008677b3          	and	a5,a2,s0
   187bc:	7ff005b7          	lui	a1,0x7ff00
   187c0:	00050713          	mv	a4,a0
   187c4:	06b7dc63          	bge	a5,a1,1883c <frexp+0xac>
   187c8:	00a7e5b3          	or	a1,a5,a0
   187cc:	0005859b          	sext.w	a1,a1
   187d0:	06058663          	beqz	a1,1883c <frexp+0xac>
   187d4:	7ff005b7          	lui	a1,0x7ff00
   187d8:	00b67633          	and	a2,a2,a1
   187dc:	00000593          	li	a1,0
   187e0:	02061263          	bnez	a2,18804 <frexp+0x74>
   187e4:	0000b797          	auipc	a5,0xb
   187e8:	95c78793          	addi	a5,a5,-1700 # 23140 <__SDATA_BEGIN__+0x20>
   187ec:	0007b583          	ld	a1,0(a5)
   187f0:	154070ef          	jal	ra,1f944 <__muldf3>
   187f4:	42055693          	srai	a3,a0,0x20
   187f8:	00050713          	mv	a4,a0
   187fc:	0086f7b3          	and	a5,a3,s0
   18800:	fca00593          	li	a1,-54
   18804:	80100637          	lui	a2,0x80100
   18808:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800dcdf7>
   1880c:	00c6f6b3          	and	a3,a3,a2
   18810:	3fe00637          	lui	a2,0x3fe00
   18814:	00c6e6b3          	or	a3,a3,a2
   18818:	4147d79b          	sraiw	a5,a5,0x14
   1881c:	fff00613          	li	a2,-1
   18820:	c027879b          	addiw	a5,a5,-1022
   18824:	02065613          	srli	a2,a2,0x20
   18828:	00b787bb          	addw	a5,a5,a1
   1882c:	02069693          	slli	a3,a3,0x20
   18830:	00e67733          	and	a4,a2,a4
   18834:	00f4a023          	sw	a5,0(s1)
   18838:	00d76733          	or	a4,a4,a3
   1883c:	01813083          	ld	ra,24(sp)
   18840:	01013403          	ld	s0,16(sp)
   18844:	00813483          	ld	s1,8(sp)
   18848:	00070513          	mv	a0,a4
   1884c:	02010113          	addi	sp,sp,32
   18850:	00008067          	ret

0000000000018854 <_sprintf_r>:
   18854:	f0010113          	addi	sp,sp,-256
   18858:	0d810e13          	addi	t3,sp,216
   1885c:	0ef13423          	sd	a5,232(sp)
   18860:	80000337          	lui	t1,0x80000
   18864:	ffff07b7          	lui	a5,0xffff0
   18868:	00058e93          	mv	t4,a1
   1886c:	fff34313          	not	t1,t1
   18870:	0cd13c23          	sd	a3,216(sp)
   18874:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcd000>
   18878:	01010593          	addi	a1,sp,16
   1887c:	000e0693          	mv	a3,t3
   18880:	0c113423          	sd	ra,200(sp)
   18884:	02f12023          	sw	a5,32(sp)
   18888:	0ee13023          	sd	a4,224(sp)
   1888c:	0f013823          	sd	a6,240(sp)
   18890:	0f113c23          	sd	a7,248(sp)
   18894:	01d13823          	sd	t4,16(sp)
   18898:	03d13423          	sd	t4,40(sp)
   1889c:	02612823          	sw	t1,48(sp)
   188a0:	00612e23          	sw	t1,28(sp)
   188a4:	01c13423          	sd	t3,8(sp)
   188a8:	5a0000ef          	jal	ra,18e48 <_svfprintf_r>
   188ac:	01013783          	ld	a5,16(sp)
   188b0:	00078023          	sb	zero,0(a5)
   188b4:	0c813083          	ld	ra,200(sp)
   188b8:	10010113          	addi	sp,sp,256
   188bc:	00008067          	ret

00000000000188c0 <sprintf>:
   188c0:	00050e93          	mv	t4,a0
   188c4:	75818513          	addi	a0,gp,1880 # 23160 <_impure_ptr>
   188c8:	f0010113          	addi	sp,sp,-256
   188cc:	00053503          	ld	a0,0(a0)
   188d0:	0d010e13          	addi	t3,sp,208
   188d4:	0ef13423          	sd	a5,232(sp)
   188d8:	80000337          	lui	t1,0x80000
   188dc:	ffff07b7          	lui	a5,0xffff0
   188e0:	fff34313          	not	t1,t1
   188e4:	0cc13823          	sd	a2,208(sp)
   188e8:	0cd13c23          	sd	a3,216(sp)
   188ec:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcd000>
   188f0:	00058613          	mv	a2,a1
   188f4:	000e0693          	mv	a3,t3
   188f8:	01010593          	addi	a1,sp,16
   188fc:	0c113423          	sd	ra,200(sp)
   18900:	02f12023          	sw	a5,32(sp)
   18904:	0ee13023          	sd	a4,224(sp)
   18908:	0f013823          	sd	a6,240(sp)
   1890c:	0f113c23          	sd	a7,248(sp)
   18910:	01d13823          	sd	t4,16(sp)
   18914:	03d13423          	sd	t4,40(sp)
   18918:	02612823          	sw	t1,48(sp)
   1891c:	00612e23          	sw	t1,28(sp)
   18920:	01c13423          	sd	t3,8(sp)
   18924:	524000ef          	jal	ra,18e48 <_svfprintf_r>
   18928:	01013783          	ld	a5,16(sp)
   1892c:	00078023          	sb	zero,0(a5)
   18930:	0c813083          	ld	ra,200(sp)
   18934:	10010113          	addi	sp,sp,256
   18938:	00008067          	ret

000000000001893c <__sread>:
   1893c:	ff010113          	addi	sp,sp,-16
   18940:	00813023          	sd	s0,0(sp)
   18944:	00058413          	mv	s0,a1
   18948:	01259583          	lh	a1,18(a1) # 7ff00012 <__BSS_END__+0x7fedce0a>
   1894c:	00113423          	sd	ra,8(sp)
   18950:	501040ef          	jal	ra,1d650 <_read_r>
   18954:	02054063          	bltz	a0,18974 <__sread+0x38>
   18958:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdce88>
   1895c:	00813083          	ld	ra,8(sp)
   18960:	00a787b3          	add	a5,a5,a0
   18964:	08f43823          	sd	a5,144(s0)
   18968:	00013403          	ld	s0,0(sp)
   1896c:	01010113          	addi	sp,sp,16
   18970:	00008067          	ret
   18974:	01045783          	lhu	a5,16(s0)
   18978:	fffff737          	lui	a4,0xfffff
   1897c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdbdf7>
   18980:	00e7f7b3          	and	a5,a5,a4
   18984:	00f41823          	sh	a5,16(s0)
   18988:	00813083          	ld	ra,8(sp)
   1898c:	00013403          	ld	s0,0(sp)
   18990:	01010113          	addi	sp,sp,16
   18994:	00008067          	ret

0000000000018998 <__seofread>:
   18998:	00000513          	li	a0,0
   1899c:	00008067          	ret

00000000000189a0 <__swrite>:
   189a0:	01059783          	lh	a5,16(a1)
   189a4:	fd010113          	addi	sp,sp,-48
   189a8:	02813023          	sd	s0,32(sp)
   189ac:	00913c23          	sd	s1,24(sp)
   189b0:	01213823          	sd	s2,16(sp)
   189b4:	01313423          	sd	s3,8(sp)
   189b8:	02113423          	sd	ra,40(sp)
   189bc:	1007f713          	andi	a4,a5,256
   189c0:	00058413          	mv	s0,a1
   189c4:	00050493          	mv	s1,a0
   189c8:	00060913          	mv	s2,a2
   189cc:	00068993          	mv	s3,a3
   189d0:	01259583          	lh	a1,18(a1)
   189d4:	02071e63          	bnez	a4,18a10 <__swrite+0x70>
   189d8:	fffff737          	lui	a4,0xfffff
   189dc:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdbdf7>
   189e0:	00e7f7b3          	and	a5,a5,a4
   189e4:	00f41823          	sh	a5,16(s0)
   189e8:	02013403          	ld	s0,32(sp)
   189ec:	02813083          	ld	ra,40(sp)
   189f0:	00098693          	mv	a3,s3
   189f4:	00090613          	mv	a2,s2
   189f8:	00813983          	ld	s3,8(sp)
   189fc:	01013903          	ld	s2,16(sp)
   18a00:	00048513          	mv	a0,s1
   18a04:	01813483          	ld	s1,24(sp)
   18a08:	03010113          	addi	sp,sp,48
   18a0c:	7910306f          	j	1c99c <_write_r>
   18a10:	00200693          	li	a3,2
   18a14:	00000613          	li	a2,0
   18a18:	195040ef          	jal	ra,1d3ac <_lseek_r>
   18a1c:	01041783          	lh	a5,16(s0)
   18a20:	01241583          	lh	a1,18(s0)
   18a24:	fb5ff06f          	j	189d8 <__swrite+0x38>

0000000000018a28 <__sseek>:
   18a28:	ff010113          	addi	sp,sp,-16
   18a2c:	00813023          	sd	s0,0(sp)
   18a30:	00058413          	mv	s0,a1
   18a34:	01259583          	lh	a1,18(a1)
   18a38:	00113423          	sd	ra,8(sp)
   18a3c:	171040ef          	jal	ra,1d3ac <_lseek_r>
   18a40:	fff00793          	li	a5,-1
   18a44:	02f50463          	beq	a0,a5,18a6c <__sseek+0x44>
   18a48:	01045783          	lhu	a5,16(s0)
   18a4c:	00001737          	lui	a4,0x1
   18a50:	08a43823          	sd	a0,144(s0)
   18a54:	00e7e7b3          	or	a5,a5,a4
   18a58:	00f41823          	sh	a5,16(s0)
   18a5c:	00813083          	ld	ra,8(sp)
   18a60:	00013403          	ld	s0,0(sp)
   18a64:	01010113          	addi	sp,sp,16
   18a68:	00008067          	ret
   18a6c:	01045783          	lhu	a5,16(s0)
   18a70:	fffff737          	lui	a4,0xfffff
   18a74:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdbdf7>
   18a78:	00e7f7b3          	and	a5,a5,a4
   18a7c:	00f41823          	sh	a5,16(s0)
   18a80:	00813083          	ld	ra,8(sp)
   18a84:	00013403          	ld	s0,0(sp)
   18a88:	01010113          	addi	sp,sp,16
   18a8c:	00008067          	ret

0000000000018a90 <__sclose>:
   18a90:	01259583          	lh	a1,18(a1)
   18a94:	0380406f          	j	1cacc <_close_r>

0000000000018a98 <strcmp>:
   18a98:	00b56733          	or	a4,a0,a1
   18a9c:	fff00393          	li	t2,-1
   18aa0:	00777713          	andi	a4,a4,7
   18aa4:	0c071c63          	bnez	a4,18b7c <strcmp+0xe4>
   18aa8:	0000a797          	auipc	a5,0xa
   18aac:	6a07b783          	ld	a5,1696(a5) # 23148 <mask>
   18ab0:	00053603          	ld	a2,0(a0)
   18ab4:	0005b683          	ld	a3,0(a1)
   18ab8:	00f672b3          	and	t0,a2,a5
   18abc:	00f66333          	or	t1,a2,a5
   18ac0:	00f282b3          	add	t0,t0,a5
   18ac4:	0062e2b3          	or	t0,t0,t1
   18ac8:	0c729e63          	bne	t0,t2,18ba4 <strcmp+0x10c>
   18acc:	04d61663          	bne	a2,a3,18b18 <strcmp+0x80>
   18ad0:	00853603          	ld	a2,8(a0)
   18ad4:	0085b683          	ld	a3,8(a1)
   18ad8:	00f672b3          	and	t0,a2,a5
   18adc:	00f66333          	or	t1,a2,a5
   18ae0:	00f282b3          	add	t0,t0,a5
   18ae4:	0062e2b3          	or	t0,t0,t1
   18ae8:	0a729a63          	bne	t0,t2,18b9c <strcmp+0x104>
   18aec:	02d61663          	bne	a2,a3,18b18 <strcmp+0x80>
   18af0:	01053603          	ld	a2,16(a0)
   18af4:	0105b683          	ld	a3,16(a1)
   18af8:	00f672b3          	and	t0,a2,a5
   18afc:	00f66333          	or	t1,a2,a5
   18b00:	00f282b3          	add	t0,t0,a5
   18b04:	0062e2b3          	or	t0,t0,t1
   18b08:	0a729463          	bne	t0,t2,18bb0 <strcmp+0x118>
   18b0c:	01850513          	addi	a0,a0,24
   18b10:	01858593          	addi	a1,a1,24
   18b14:	f8d60ee3          	beq	a2,a3,18ab0 <strcmp+0x18>
   18b18:	03061713          	slli	a4,a2,0x30
   18b1c:	03069793          	slli	a5,a3,0x30
   18b20:	02f71a63          	bne	a4,a5,18b54 <strcmp+0xbc>
   18b24:	02061713          	slli	a4,a2,0x20
   18b28:	02069793          	slli	a5,a3,0x20
   18b2c:	02f71463          	bne	a4,a5,18b54 <strcmp+0xbc>
   18b30:	01061713          	slli	a4,a2,0x10
   18b34:	01069793          	slli	a5,a3,0x10
   18b38:	00f71e63          	bne	a4,a5,18b54 <strcmp+0xbc>
   18b3c:	03065713          	srli	a4,a2,0x30
   18b40:	0306d793          	srli	a5,a3,0x30
   18b44:	40f70533          	sub	a0,a4,a5
   18b48:	0ff57593          	andi	a1,a0,255
   18b4c:	02059063          	bnez	a1,18b6c <strcmp+0xd4>
   18b50:	00008067          	ret
   18b54:	03075713          	srli	a4,a4,0x30
   18b58:	0307d793          	srli	a5,a5,0x30
   18b5c:	40f70533          	sub	a0,a4,a5
   18b60:	0ff57593          	andi	a1,a0,255
   18b64:	00059463          	bnez	a1,18b6c <strcmp+0xd4>
   18b68:	00008067          	ret
   18b6c:	0ff77713          	andi	a4,a4,255
   18b70:	0ff7f793          	andi	a5,a5,255
   18b74:	40f70533          	sub	a0,a4,a5
   18b78:	00008067          	ret
   18b7c:	00054603          	lbu	a2,0(a0)
   18b80:	0005c683          	lbu	a3,0(a1)
   18b84:	00150513          	addi	a0,a0,1
   18b88:	00158593          	addi	a1,a1,1
   18b8c:	00d61463          	bne	a2,a3,18b94 <strcmp+0xfc>
   18b90:	fe0616e3          	bnez	a2,18b7c <strcmp+0xe4>
   18b94:	40d60533          	sub	a0,a2,a3
   18b98:	00008067          	ret
   18b9c:	00850513          	addi	a0,a0,8
   18ba0:	00858593          	addi	a1,a1,8
   18ba4:	fcd61ce3          	bne	a2,a3,18b7c <strcmp+0xe4>
   18ba8:	00000513          	li	a0,0
   18bac:	00008067          	ret
   18bb0:	01050513          	addi	a0,a0,16
   18bb4:	01058593          	addi	a1,a1,16
   18bb8:	fcd612e3          	bne	a2,a3,18b7c <strcmp+0xe4>
   18bbc:	00000513          	li	a0,0
   18bc0:	00008067          	ret

0000000000018bc4 <strcpy>:
   18bc4:	00b567b3          	or	a5,a0,a1
   18bc8:	0077f793          	andi	a5,a5,7
   18bcc:	0a079863          	bnez	a5,18c7c <strcpy+0xb8>
   18bd0:	0000a797          	auipc	a5,0xa
   18bd4:	57878793          	addi	a5,a5,1400 # 23148 <mask>
   18bd8:	0007b683          	ld	a3,0(a5)
   18bdc:	0005b703          	ld	a4,0(a1)
   18be0:	fff00613          	li	a2,-1
   18be4:	00d777b3          	and	a5,a4,a3
   18be8:	00d787b3          	add	a5,a5,a3
   18bec:	00e7e7b3          	or	a5,a5,a4
   18bf0:	00d7e7b3          	or	a5,a5,a3
   18bf4:	0ac79263          	bne	a5,a2,18c98 <strcpy+0xd4>
   18bf8:	00050613          	mv	a2,a0
   18bfc:	fff00813          	li	a6,-1
   18c00:	00860613          	addi	a2,a2,8 # 3fe00008 <__BSS_END__+0x3fddce00>
   18c04:	00858593          	addi	a1,a1,8
   18c08:	fee63c23          	sd	a4,-8(a2)
   18c0c:	0005b703          	ld	a4,0(a1)
   18c10:	00d777b3          	and	a5,a4,a3
   18c14:	00d787b3          	add	a5,a5,a3
   18c18:	00e7e7b3          	or	a5,a5,a4
   18c1c:	00d7e7b3          	or	a5,a5,a3
   18c20:	ff0780e3          	beq	a5,a6,18c00 <strcpy+0x3c>
   18c24:	0005c783          	lbu	a5,0(a1)
   18c28:	0015c703          	lbu	a4,1(a1)
   18c2c:	0025c683          	lbu	a3,2(a1)
   18c30:	00f60023          	sb	a5,0(a2)
   18c34:	04078263          	beqz	a5,18c78 <strcpy+0xb4>
   18c38:	00e600a3          	sb	a4,1(a2)
   18c3c:	02070e63          	beqz	a4,18c78 <strcpy+0xb4>
   18c40:	0035c783          	lbu	a5,3(a1)
   18c44:	00d60123          	sb	a3,2(a2)
   18c48:	02068863          	beqz	a3,18c78 <strcpy+0xb4>
   18c4c:	0045c703          	lbu	a4,4(a1)
   18c50:	00f601a3          	sb	a5,3(a2)
   18c54:	02078263          	beqz	a5,18c78 <strcpy+0xb4>
   18c58:	0055c783          	lbu	a5,5(a1)
   18c5c:	00e60223          	sb	a4,4(a2)
   18c60:	00070c63          	beqz	a4,18c78 <strcpy+0xb4>
   18c64:	0065c703          	lbu	a4,6(a1)
   18c68:	00f602a3          	sb	a5,5(a2)
   18c6c:	00078663          	beqz	a5,18c78 <strcpy+0xb4>
   18c70:	00e60323          	sb	a4,6(a2)
   18c74:	02071663          	bnez	a4,18ca0 <strcpy+0xdc>
   18c78:	00008067          	ret
   18c7c:	00050793          	mv	a5,a0
   18c80:	0005c703          	lbu	a4,0(a1)
   18c84:	00178793          	addi	a5,a5,1
   18c88:	00158593          	addi	a1,a1,1
   18c8c:	fee78fa3          	sb	a4,-1(a5)
   18c90:	fe0718e3          	bnez	a4,18c80 <strcpy+0xbc>
   18c94:	00008067          	ret
   18c98:	00050613          	mv	a2,a0
   18c9c:	f89ff06f          	j	18c24 <strcpy+0x60>
   18ca0:	000603a3          	sb	zero,7(a2)
   18ca4:	00008067          	ret

0000000000018ca8 <strlen>:
   18ca8:	00757793          	andi	a5,a0,7
   18cac:	00050713          	mv	a4,a0
   18cb0:	06079e63          	bnez	a5,18d2c <strlen+0x84>
   18cb4:	0000a797          	auipc	a5,0xa
   18cb8:	49478793          	addi	a5,a5,1172 # 23148 <mask>
   18cbc:	0007b683          	ld	a3,0(a5)
   18cc0:	fff00593          	li	a1,-1
   18cc4:	00870713          	addi	a4,a4,8
   18cc8:	ff873603          	ld	a2,-8(a4)
   18ccc:	00d677b3          	and	a5,a2,a3
   18cd0:	00d787b3          	add	a5,a5,a3
   18cd4:	00c7e7b3          	or	a5,a5,a2
   18cd8:	00d7e7b3          	or	a5,a5,a3
   18cdc:	feb784e3          	beq	a5,a1,18cc4 <strlen+0x1c>
   18ce0:	ff874783          	lbu	a5,-8(a4)
   18ce4:	40a706b3          	sub	a3,a4,a0
   18ce8:	06078463          	beqz	a5,18d50 <strlen+0xa8>
   18cec:	ff974783          	lbu	a5,-7(a4)
   18cf0:	04078c63          	beqz	a5,18d48 <strlen+0xa0>
   18cf4:	ffa74783          	lbu	a5,-6(a4)
   18cf8:	06078463          	beqz	a5,18d60 <strlen+0xb8>
   18cfc:	ffb74783          	lbu	a5,-5(a4)
   18d00:	04078c63          	beqz	a5,18d58 <strlen+0xb0>
   18d04:	ffc74603          	lbu	a2,-4(a4)
   18d08:	ffd74583          	lbu	a1,-3(a4)
   18d0c:	ffe74783          	lbu	a5,-2(a4)
   18d10:	04060c63          	beqz	a2,18d68 <strlen+0xc0>
   18d14:	04058e63          	beqz	a1,18d70 <strlen+0xc8>
   18d18:	00f03533          	snez	a0,a5
   18d1c:	00d50533          	add	a0,a0,a3
   18d20:	ffe50513          	addi	a0,a0,-2
   18d24:	00008067          	ret
   18d28:	f80686e3          	beqz	a3,18cb4 <strlen+0xc>
   18d2c:	00074783          	lbu	a5,0(a4)
   18d30:	00170713          	addi	a4,a4,1
   18d34:	00777693          	andi	a3,a4,7
   18d38:	fe0798e3          	bnez	a5,18d28 <strlen+0x80>
   18d3c:	40a70733          	sub	a4,a4,a0
   18d40:	fff70513          	addi	a0,a4,-1
   18d44:	00008067          	ret
   18d48:	ff968513          	addi	a0,a3,-7
   18d4c:	00008067          	ret
   18d50:	ff868513          	addi	a0,a3,-8
   18d54:	00008067          	ret
   18d58:	ffb68513          	addi	a0,a3,-5
   18d5c:	00008067          	ret
   18d60:	ffa68513          	addi	a0,a3,-6
   18d64:	00008067          	ret
   18d68:	ffc68513          	addi	a0,a3,-4
   18d6c:	00008067          	ret
   18d70:	ffd68513          	addi	a0,a3,-3
   18d74:	00008067          	ret

0000000000018d78 <strncpy>:
   18d78:	00a5e7b3          	or	a5,a1,a0
   18d7c:	0077f793          	andi	a5,a5,7
   18d80:	0a079063          	bnez	a5,18e20 <strncpy+0xa8>
   18d84:	00700793          	li	a5,7
   18d88:	08c7fc63          	bgeu	a5,a2,18e20 <strncpy+0xa8>
   18d8c:	0000a797          	auipc	a5,0xa
   18d90:	39478793          	addi	a5,a5,916 # 23120 <__SDATA_BEGIN__>
   18d94:	0007b303          	ld	t1,0(a5)
   18d98:	0000a797          	auipc	a5,0xa
   18d9c:	39078793          	addi	a5,a5,912 # 23128 <__SDATA_BEGIN__+0x8>
   18da0:	0007b883          	ld	a7,0(a5)
   18da4:	00050713          	mv	a4,a0
   18da8:	00700e13          	li	t3,7
   18dac:	0005b683          	ld	a3,0(a1)
   18db0:	006687b3          	add	a5,a3,t1
   18db4:	fff6c813          	not	a6,a3
   18db8:	0107f7b3          	and	a5,a5,a6
   18dbc:	0117f7b3          	and	a5,a5,a7
   18dc0:	00079e63          	bnez	a5,18ddc <strncpy+0x64>
   18dc4:	00870713          	addi	a4,a4,8
   18dc8:	ff860613          	addi	a2,a2,-8
   18dcc:	fed73c23          	sd	a3,-8(a4)
   18dd0:	00858593          	addi	a1,a1,8
   18dd4:	fcce6ce3          	bltu	t3,a2,18dac <strncpy+0x34>
   18dd8:	06060463          	beqz	a2,18e40 <strncpy+0xc8>
   18ddc:	0005c803          	lbu	a6,0(a1)
   18de0:	fff60693          	addi	a3,a2,-1
   18de4:	00158593          	addi	a1,a1,1
   18de8:	01070023          	sb	a6,0(a4)
   18dec:	00170793          	addi	a5,a4,1
   18df0:	02080c63          	beqz	a6,18e28 <strncpy+0xb0>
   18df4:	00c70633          	add	a2,a4,a2
   18df8:	00d706b3          	add	a3,a4,a3
   18dfc:	0140006f          	j	18e10 <strncpy+0x98>
   18e00:	fff5c703          	lbu	a4,-1(a1)
   18e04:	00178793          	addi	a5,a5,1
   18e08:	fee78fa3          	sb	a4,-1(a5)
   18e0c:	02070063          	beqz	a4,18e2c <strncpy+0xb4>
   18e10:	00158593          	addi	a1,a1,1
   18e14:	40f68833          	sub	a6,a3,a5
   18e18:	fec794e3          	bne	a5,a2,18e00 <strncpy+0x88>
   18e1c:	00008067          	ret
   18e20:	00050713          	mv	a4,a0
   18e24:	fb5ff06f          	j	18dd8 <strncpy+0x60>
   18e28:	00068813          	mv	a6,a3
   18e2c:	01078733          	add	a4,a5,a6
   18e30:	00080a63          	beqz	a6,18e44 <strncpy+0xcc>
   18e34:	00178793          	addi	a5,a5,1
   18e38:	fe078fa3          	sb	zero,-1(a5)
   18e3c:	fee79ce3          	bne	a5,a4,18e34 <strncpy+0xbc>
   18e40:	00008067          	ret
   18e44:	00008067          	ret

0000000000018e48 <_svfprintf_r>:
   18e48:	d8010113          	addi	sp,sp,-640
   18e4c:	26113c23          	sd	ra,632(sp)
   18e50:	26813823          	sd	s0,624(sp)
   18e54:	25613023          	sd	s6,576(sp)
   18e58:	00058413          	mv	s0,a1
   18e5c:	00b13823          	sd	a1,16(sp)
   18e60:	00060b13          	mv	s6,a2
   18e64:	00d13c23          	sd	a3,24(sp)
   18e68:	26913423          	sd	s1,616(sp)
   18e6c:	27213023          	sd	s2,608(sp)
   18e70:	25313c23          	sd	s3,600(sp)
   18e74:	25413823          	sd	s4,592(sp)
   18e78:	25513423          	sd	s5,584(sp)
   18e7c:	23713c23          	sd	s7,568(sp)
   18e80:	23813823          	sd	s8,560(sp)
   18e84:	23913423          	sd	s9,552(sp)
   18e88:	23a13023          	sd	s10,544(sp)
   18e8c:	21b13c23          	sd	s11,536(sp)
   18e90:	04a13423          	sd	a0,72(sp)
   18e94:	addfd0ef          	jal	ra,16970 <_localeconv_r>
   18e98:	00053783          	ld	a5,0(a0)
   18e9c:	00078513          	mv	a0,a5
   18ea0:	06f13023          	sd	a5,96(sp)
   18ea4:	e05ff0ef          	jal	ra,18ca8 <strlen>
   18ea8:	01045783          	lhu	a5,16(s0)
   18eac:	04a13823          	sd	a0,80(sp)
   18eb0:	10013023          	sd	zero,256(sp)
   18eb4:	10013423          	sd	zero,264(sp)
   18eb8:	0807f793          	andi	a5,a5,128
   18ebc:	00078863          	beqz	a5,18ecc <_svfprintf_r+0x84>
   18ec0:	01843783          	ld	a5,24(s0)
   18ec4:	00079463          	bnez	a5,18ecc <_svfprintf_r+0x84>
   18ec8:	5f00106f          	j	1a4b8 <_svfprintf_r+0x1670>
   18ecc:	19010793          	addi	a5,sp,400
   18ed0:	000b0d93          	mv	s11,s6
   18ed4:	10f13823          	sd	a5,272(sp)
   18ed8:	00078313          	mv	t1,a5
   18edc:	000dc783          	lbu	a5,0(s11)
   18ee0:	12013023          	sd	zero,288(sp)
   18ee4:	10012c23          	sw	zero,280(sp)
   18ee8:	02013823          	sd	zero,48(sp)
   18eec:	04013c23          	sd	zero,88(sp)
   18ef0:	06013823          	sd	zero,112(sp)
   18ef4:	08013023          	sd	zero,128(sp)
   18ef8:	08013823          	sd	zero,144(sp)
   18efc:	06013c23          	sd	zero,120(sp)
   18f00:	00013423          	sd	zero,8(sp)
   18f04:	01000d13          	li	s10,16
   18f08:	00009c17          	auipc	s8,0x9
   18f0c:	a98c0c13          	addi	s8,s8,-1384 # 219a0 <zeroes.4524>
   18f10:	04813a83          	ld	s5,72(sp)
   18f14:	6c078863          	beqz	a5,195e4 <_svfprintf_r+0x79c>
   18f18:	02500693          	li	a3,37
   18f1c:	00d79463          	bne	a5,a3,18f24 <_svfprintf_r+0xdc>
   18f20:	48c0106f          	j	1a3ac <_svfprintf_r+0x1564>
   18f24:	000d8413          	mv	s0,s11
   18f28:	00c0006f          	j	18f34 <_svfprintf_r+0xec>
   18f2c:	0cd78663          	beq	a5,a3,18ff8 <_svfprintf_r+0x1b0>
   18f30:	00048413          	mv	s0,s1
   18f34:	00144783          	lbu	a5,1(s0)
   18f38:	00140493          	addi	s1,s0,1
   18f3c:	fe0798e3          	bnez	a5,18f2c <_svfprintf_r+0xe4>
   18f40:	41b4893b          	subw	s2,s1,s11
   18f44:	6a090063          	beqz	s2,195e4 <_svfprintf_r+0x79c>
   18f48:	12013683          	ld	a3,288(sp)
   18f4c:	11812783          	lw	a5,280(sp)
   18f50:	01b33023          	sd	s11,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdcdf8>
   18f54:	012686b3          	add	a3,a3,s2
   18f58:	0017879b          	addiw	a5,a5,1
   18f5c:	01233423          	sd	s2,8(t1)
   18f60:	12d13023          	sd	a3,288(sp)
   18f64:	10f12c23          	sw	a5,280(sp)
   18f68:	0007869b          	sext.w	a3,a5
   18f6c:	00700793          	li	a5,7
   18f70:	01030313          	addi	t1,t1,16
   18f74:	08d7c863          	blt	a5,a3,19004 <_svfprintf_r+0x1bc>
   18f78:	00813703          	ld	a4,8(sp)
   18f7c:	00144783          	lbu	a5,1(s0)
   18f80:	00e9073b          	addw	a4,s2,a4
   18f84:	00e13423          	sd	a4,8(sp)
   18f88:	64078e63          	beqz	a5,195e4 <_svfprintf_r+0x79c>
   18f8c:	00148913          	addi	s2,s1,1
   18f90:	0014c403          	lbu	s0,1(s1)
   18f94:	0c010fa3          	sb	zero,223(sp)
   18f98:	fff00b93          	li	s7,-1
   18f9c:	00000993          	li	s3,0
   18fa0:	00000493          	li	s1,0
   18fa4:	00900a13          	li	s4,9
   18fa8:	02a00b13          	li	s6,42
   18fac:	00030c93          	mv	s9,t1
   18fb0:	00190913          	addi	s2,s2,1
   18fb4:	0004041b          	sext.w	s0,s0
   18fb8:	05a00693          	li	a3,90
   18fbc:	fe04079b          	addiw	a5,s0,-32
   18fc0:	0007871b          	sext.w	a4,a5
   18fc4:	1ce6e263          	bltu	a3,a4,19188 <_svfprintf_r+0x340>
   18fc8:	02079793          	slli	a5,a5,0x20
   18fcc:	00009717          	auipc	a4,0x9
   18fd0:	85470713          	addi	a4,a4,-1964 # 21820 <__mprec_bigtens+0x28>
   18fd4:	01e7d793          	srli	a5,a5,0x1e
   18fd8:	00e787b3          	add	a5,a5,a4
   18fdc:	0007a783          	lw	a5,0(a5)
   18fe0:	00e787b3          	add	a5,a5,a4
   18fe4:	00078067          	jr	a5
   18fe8:	0104e493          	ori	s1,s1,16
   18fec:	0004849b          	sext.w	s1,s1
   18ff0:	00094403          	lbu	s0,0(s2)
   18ff4:	fbdff06f          	j	18fb0 <_svfprintf_r+0x168>
   18ff8:	41b4893b          	subw	s2,s1,s11
   18ffc:	f80908e3          	beqz	s2,18f8c <_svfprintf_r+0x144>
   19000:	f49ff06f          	j	18f48 <_svfprintf_r+0x100>
   19004:	01013583          	ld	a1,16(sp)
   19008:	11010613          	addi	a2,sp,272
   1900c:	000a8513          	mv	a0,s5
   19010:	57d040ef          	jal	ra,1dd8c <__ssprint_r>
   19014:	02051a63          	bnez	a0,19048 <_svfprintf_r+0x200>
   19018:	19010313          	addi	t1,sp,400
   1901c:	f5dff06f          	j	18f78 <_svfprintf_r+0x130>
   19020:	01013583          	ld	a1,16(sp)
   19024:	11010613          	addi	a2,sp,272
   19028:	000a8513          	mv	a0,s5
   1902c:	561040ef          	jal	ra,1dd8c <__ssprint_r>
   19030:	58050663          	beqz	a0,195bc <_svfprintf_r+0x774>
   19034:	02013783          	ld	a5,32(sp)
   19038:	00078863          	beqz	a5,19048 <_svfprintf_r+0x200>
   1903c:	02013583          	ld	a1,32(sp)
   19040:	04813503          	ld	a0,72(sp)
   19044:	86dfa0ef          	jal	ra,138b0 <_free_r>
   19048:	01013783          	ld	a5,16(sp)
   1904c:	0107d783          	lhu	a5,16(a5)
   19050:	0407f793          	andi	a5,a5,64
   19054:	00078463          	beqz	a5,1905c <_svfprintf_r+0x214>
   19058:	2c80206f          	j	1b320 <_svfprintf_r+0x24d8>
   1905c:	27813083          	ld	ra,632(sp)
   19060:	27013403          	ld	s0,624(sp)
   19064:	00813503          	ld	a0,8(sp)
   19068:	26813483          	ld	s1,616(sp)
   1906c:	26013903          	ld	s2,608(sp)
   19070:	25813983          	ld	s3,600(sp)
   19074:	25013a03          	ld	s4,592(sp)
   19078:	24813a83          	ld	s5,584(sp)
   1907c:	24013b03          	ld	s6,576(sp)
   19080:	23813b83          	ld	s7,568(sp)
   19084:	23013c03          	ld	s8,560(sp)
   19088:	22813c83          	ld	s9,552(sp)
   1908c:	22013d03          	ld	s10,544(sp)
   19090:	21813d83          	ld	s11,536(sp)
   19094:	28010113          	addi	sp,sp,640
   19098:	00008067          	ret
   1909c:	01813683          	ld	a3,24(sp)
   190a0:	00008797          	auipc	a5,0x8
   190a4:	36078793          	addi	a5,a5,864 # 21400 <zeroes.4539+0x60>
   190a8:	04f13c23          	sd	a5,88(sp)
   190ac:	0204f793          	andi	a5,s1,32
   190b0:	000c8313          	mv	t1,s9
   190b4:	00868713          	addi	a4,a3,8
   190b8:	10078863          	beqz	a5,191c8 <_svfprintf_r+0x380>
   190bc:	0006bb03          	ld	s6,0(a3)
   190c0:	0014f793          	andi	a5,s1,1
   190c4:	00078e63          	beqz	a5,190e0 <_svfprintf_r+0x298>
   190c8:	000b0c63          	beqz	s6,190e0 <_svfprintf_r+0x298>
   190cc:	0024e493          	ori	s1,s1,2
   190d0:	03000793          	li	a5,48
   190d4:	0ef10023          	sb	a5,224(sp)
   190d8:	0e8100a3          	sb	s0,225(sp)
   190dc:	0004849b          	sext.w	s1,s1
   190e0:	bff4f813          	andi	a6,s1,-1025
   190e4:	00080a1b          	sext.w	s4,a6
   190e8:	00e13c23          	sd	a4,24(sp)
   190ec:	00200793          	li	a5,2
   190f0:	0c010fa3          	sb	zero,223(sp)
   190f4:	fff00713          	li	a4,-1
   190f8:	32eb8263          	beq	s7,a4,1941c <_svfprintf_r+0x5d4>
   190fc:	f7fa7493          	andi	s1,s4,-129
   19100:	0004849b          	sext.w	s1,s1
   19104:	660b10e3          	bnez	s6,19f64 <_svfprintf_r+0x111c>
   19108:	000b8463          	beqz	s7,19110 <_svfprintf_r+0x2c8>
   1910c:	0500106f          	j	1a15c <_svfprintf_r+0x1314>
   19110:	2a079663          	bnez	a5,193bc <_svfprintf_r+0x574>
   19114:	001a7c93          	andi	s9,s4,1
   19118:	18c10d93          	addi	s11,sp,396
   1911c:	000c8463          	beqz	s9,19124 <_svfprintf_r+0x2dc>
   19120:	2e40106f          	j	1a404 <_svfprintf_r+0x15bc>
   19124:	000c8a1b          	sext.w	s4,s9
   19128:	017cd463          	bge	s9,s7,19130 <_svfprintf_r+0x2e8>
   1912c:	000b8a1b          	sext.w	s4,s7
   19130:	0df14783          	lbu	a5,223(sp)
   19134:	02013023          	sd	zero,32(sp)
   19138:	04013023          	sd	zero,64(sp)
   1913c:	02013c23          	sd	zero,56(sp)
   19140:	02013423          	sd	zero,40(sp)
   19144:	36078a63          	beqz	a5,194b8 <_svfprintf_r+0x670>
   19148:	001a0a1b          	addiw	s4,s4,1
   1914c:	36c0006f          	j	194b8 <_svfprintf_r+0x670>
   19150:	00000993          	li	s3,0
   19154:	00190913          	addi	s2,s2,1
   19158:	fff94703          	lbu	a4,-1(s2)
   1915c:	0029979b          	slliw	a5,s3,0x2
   19160:	013787bb          	addw	a5,a5,s3
   19164:	fd04041b          	addiw	s0,s0,-48
   19168:	0017979b          	slliw	a5,a5,0x1
   1916c:	fd07061b          	addiw	a2,a4,-48
   19170:	00f409bb          	addw	s3,s0,a5
   19174:	0007041b          	sext.w	s0,a4
   19178:	fcca7ee3          	bgeu	s4,a2,19154 <_svfprintf_r+0x30c>
   1917c:	fe04079b          	addiw	a5,s0,-32
   19180:	0007871b          	sext.w	a4,a5
   19184:	e4e6f2e3          	bgeu	a3,a4,18fc8 <_svfprintf_r+0x180>
   19188:	000c8313          	mv	t1,s9
   1918c:	44040c63          	beqz	s0,195e4 <_svfprintf_r+0x79c>
   19190:	12810423          	sb	s0,296(sp)
   19194:	0c010fa3          	sb	zero,223(sp)
   19198:	00100a13          	li	s4,1
   1919c:	00100c93          	li	s9,1
   191a0:	12810d93          	addi	s11,sp,296
   191a4:	3000006f          	j	194a4 <_svfprintf_r+0x65c>
   191a8:	01813683          	ld	a3,24(sp)
   191ac:	00008797          	auipc	a5,0x8
   191b0:	26c78793          	addi	a5,a5,620 # 21418 <zeroes.4539+0x78>
   191b4:	04f13c23          	sd	a5,88(sp)
   191b8:	0204f793          	andi	a5,s1,32
   191bc:	000c8313          	mv	t1,s9
   191c0:	00868713          	addi	a4,a3,8
   191c4:	ee079ce3          	bnez	a5,190bc <_svfprintf_r+0x274>
   191c8:	0104f793          	andi	a5,s1,16
   191cc:	00078463          	beqz	a5,191d4 <_svfprintf_r+0x38c>
   191d0:	2840106f          	j	1a454 <_svfprintf_r+0x160c>
   191d4:	01813683          	ld	a3,24(sp)
   191d8:	0404f793          	andi	a5,s1,64
   191dc:	0006ab03          	lw	s6,0(a3)
   191e0:	00079463          	bnez	a5,191e8 <_svfprintf_r+0x3a0>
   191e4:	0e50106f          	j	1aac8 <_svfprintf_r+0x1c80>
   191e8:	030b1b13          	slli	s6,s6,0x30
   191ec:	030b5b13          	srli	s6,s6,0x30
   191f0:	ed1ff06f          	j	190c0 <_svfprintf_r+0x278>
   191f4:	00094403          	lbu	s0,0(s2)
   191f8:	0044e493          	ori	s1,s1,4
   191fc:	0004849b          	sext.w	s1,s1
   19200:	db1ff06f          	j	18fb0 <_svfprintf_r+0x168>
   19204:	00094403          	lbu	s0,0(s2)
   19208:	00190793          	addi	a5,s2,1
   1920c:	01641463          	bne	s0,s6,19214 <_svfprintf_r+0x3cc>
   19210:	2e00206f          	j	1b4f0 <_svfprintf_r+0x26a8>
   19214:	fd04071b          	addiw	a4,s0,-48
   19218:	00078913          	mv	s2,a5
   1921c:	00000b93          	li	s7,0
   19220:	d8ea6ee3          	bltu	s4,a4,18fbc <_svfprintf_r+0x174>
   19224:	00190913          	addi	s2,s2,1
   19228:	002b979b          	slliw	a5,s7,0x2
   1922c:	fff94603          	lbu	a2,-1(s2)
   19230:	017787bb          	addw	a5,a5,s7
   19234:	0017979b          	slliw	a5,a5,0x1
   19238:	00e78bbb          	addw	s7,a5,a4
   1923c:	fd06071b          	addiw	a4,a2,-48
   19240:	feea72e3          	bgeu	s4,a4,19224 <_svfprintf_r+0x3dc>
   19244:	00060413          	mv	s0,a2
   19248:	d75ff06f          	j	18fbc <_svfprintf_r+0x174>
   1924c:	0804e493          	ori	s1,s1,128
   19250:	0004849b          	sext.w	s1,s1
   19254:	00094403          	lbu	s0,0(s2)
   19258:	d59ff06f          	j	18fb0 <_svfprintf_r+0x168>
   1925c:	01813783          	ld	a5,24(sp)
   19260:	0c010fa3          	sb	zero,223(sp)
   19264:	000c8313          	mv	t1,s9
   19268:	0007bd83          	ld	s11,0(a5)
   1926c:	00878b13          	addi	s6,a5,8
   19270:	000d9463          	bnez	s11,19278 <_svfprintf_r+0x430>
   19274:	2740106f          	j	1a4e8 <_svfprintf_r+0x16a0>
   19278:	fff00793          	li	a5,-1
   1927c:	00fb9463          	bne	s7,a5,19284 <_svfprintf_r+0x43c>
   19280:	7780106f          	j	1a9f8 <_svfprintf_r+0x1bb0>
   19284:	000b8613          	mv	a2,s7
   19288:	00000593          	li	a1,0
   1928c:	000d8513          	mv	a0,s11
   19290:	01913c23          	sd	s9,24(sp)
   19294:	a40fe0ef          	jal	ra,174d4 <memchr>
   19298:	02a13023          	sd	a0,32(sp)
   1929c:	01813303          	ld	t1,24(sp)
   192a0:	00051463          	bnez	a0,192a8 <_svfprintf_r+0x460>
   192a4:	3d10106f          	j	1ae74 <_svfprintf_r+0x202c>
   192a8:	02013783          	ld	a5,32(sp)
   192ac:	01613c23          	sd	s6,24(sp)
   192b0:	02013023          	sd	zero,32(sp)
   192b4:	41b78cbb          	subw	s9,a5,s11
   192b8:	fffcca13          	not	s4,s9
   192bc:	0df14783          	lbu	a5,223(sp)
   192c0:	43fa5a13          	srai	s4,s4,0x3f
   192c4:	014cfa33          	and	s4,s9,s4
   192c8:	04013023          	sd	zero,64(sp)
   192cc:	02013c23          	sd	zero,56(sp)
   192d0:	02013423          	sd	zero,40(sp)
   192d4:	000a0a1b          	sext.w	s4,s4
   192d8:	00000b93          	li	s7,0
   192dc:	e60796e3          	bnez	a5,19148 <_svfprintf_r+0x300>
   192e0:	1d80006f          	j	194b8 <_svfprintf_r+0x670>
   192e4:	01813703          	ld	a4,24(sp)
   192e8:	0104e813          	ori	a6,s1,16
   192ec:	000c8313          	mv	t1,s9
   192f0:	0008049b          	sext.w	s1,a6
   192f4:	00870713          	addi	a4,a4,8
   192f8:	01813783          	ld	a5,24(sp)
   192fc:	0007bb03          	ld	s6,0(a5)
   19300:	00e13c23          	sd	a4,24(sp)
   19304:	bff4f813          	andi	a6,s1,-1025
   19308:	00080a1b          	sext.w	s4,a6
   1930c:	00000793          	li	a5,0
   19310:	de1ff06f          	j	190f0 <_svfprintf_r+0x2a8>
   19314:	01813783          	ld	a5,24(sp)
   19318:	0104e813          	ori	a6,s1,16
   1931c:	000c8313          	mv	t1,s9
   19320:	00080a1b          	sext.w	s4,a6
   19324:	00878713          	addi	a4,a5,8
   19328:	01813783          	ld	a5,24(sp)
   1932c:	0007bb03          	ld	s6,0(a5)
   19330:	00100793          	li	a5,1
   19334:	00e13c23          	sd	a4,24(sp)
   19338:	db9ff06f          	j	190f0 <_svfprintf_r+0x2a8>
   1933c:	00094403          	lbu	s0,0(s2)
   19340:	06800793          	li	a5,104
   19344:	00f41463          	bne	s0,a5,1934c <_svfprintf_r+0x504>
   19348:	15c0106f          	j	1a4a4 <_svfprintf_r+0x165c>
   1934c:	0404e493          	ori	s1,s1,64
   19350:	0004849b          	sext.w	s1,s1
   19354:	c5dff06f          	j	18fb0 <_svfprintf_r+0x168>
   19358:	01813703          	ld	a4,24(sp)
   1935c:	0204f793          	andi	a5,s1,32
   19360:	000c8313          	mv	t1,s9
   19364:	00870713          	addi	a4,a4,8
   19368:	00078463          	beqz	a5,19370 <_svfprintf_r+0x528>
   1936c:	0a80106f          	j	1a414 <_svfprintf_r+0x15cc>
   19370:	0104f793          	andi	a5,s1,16
   19374:	00078463          	beqz	a5,1937c <_svfprintf_r+0x534>
   19378:	09c0106f          	j	1a414 <_svfprintf_r+0x15cc>
   1937c:	0404f793          	andi	a5,s1,64
   19380:	00079463          	bnez	a5,19388 <_svfprintf_r+0x540>
   19384:	7100106f          	j	1aa94 <_svfprintf_r+0x1c4c>
   19388:	01813783          	ld	a5,24(sp)
   1938c:	00048a13          	mv	s4,s1
   19390:	00e13c23          	sd	a4,24(sp)
   19394:	00079b03          	lh	s6,0(a5)
   19398:	000b0793          	mv	a5,s6
   1939c:	0607c463          	bltz	a5,19404 <_svfprintf_r+0x5bc>
   193a0:	fff00793          	li	a5,-1
   193a4:	06fb8ce3          	beq	s7,a5,19c1c <_svfprintf_r+0xdd4>
   193a8:	f7fa7813          	andi	a6,s4,-129
   193ac:	0008049b          	sext.w	s1,a6
   193b0:	060b14e3          	bnez	s6,19c18 <_svfprintf_r+0xdd0>
   193b4:	000b8463          	beqz	s7,193bc <_svfprintf_r+0x574>
   193b8:	0c50106f          	j	1ac7c <_svfprintf_r+0x1e34>
   193bc:	00000b93          	li	s7,0
   193c0:	00000c93          	li	s9,0
   193c4:	18c10d93          	addi	s11,sp,396
   193c8:	d5dff06f          	j	19124 <_svfprintf_r+0x2dc>
   193cc:	0084e493          	ori	s1,s1,8
   193d0:	0004849b          	sext.w	s1,s1
   193d4:	00094403          	lbu	s0,0(s2)
   193d8:	bd9ff06f          	j	18fb0 <_svfprintf_r+0x168>
   193dc:	01813783          	ld	a5,24(sp)
   193e0:	0104e813          	ori	a6,s1,16
   193e4:	000c8313          	mv	t1,s9
   193e8:	00080a1b          	sext.w	s4,a6
   193ec:	00878713          	addi	a4,a5,8
   193f0:	01813783          	ld	a5,24(sp)
   193f4:	0007b783          	ld	a5,0(a5)
   193f8:	00e13c23          	sd	a4,24(sp)
   193fc:	00078b13          	mv	s6,a5
   19400:	fa07d0e3          	bgez	a5,193a0 <_svfprintf_r+0x558>
   19404:	02d00793          	li	a5,45
   19408:	0cf10fa3          	sb	a5,223(sp)
   1940c:	fff00713          	li	a4,-1
   19410:	41600b33          	neg	s6,s6
   19414:	00100793          	li	a5,1
   19418:	ceeb92e3          	bne	s7,a4,190fc <_svfprintf_r+0x2b4>
   1941c:	00100713          	li	a4,1
   19420:	7ee78e63          	beq	a5,a4,19c1c <_svfprintf_r+0xdd4>
   19424:	00200713          	li	a4,2
   19428:	54e784e3          	beq	a5,a4,1a170 <_svfprintf_r+0x1328>
   1942c:	18c10c93          	addi	s9,sp,396
   19430:	000c8693          	mv	a3,s9
   19434:	0080006f          	j	1943c <_svfprintf_r+0x5f4>
   19438:	000d8693          	mv	a3,s11
   1943c:	007b7793          	andi	a5,s6,7
   19440:	03078793          	addi	a5,a5,48
   19444:	fef68fa3          	sb	a5,-1(a3)
   19448:	003b5b13          	srli	s6,s6,0x3
   1944c:	fff68d93          	addi	s11,a3,-1
   19450:	fe0b14e3          	bnez	s6,19438 <_svfprintf_r+0x5f0>
   19454:	001a7613          	andi	a2,s4,1
   19458:	00060ce3          	beqz	a2,19c70 <_svfprintf_r+0xe28>
   1945c:	03000613          	li	a2,48
   19460:	00c788e3          	beq	a5,a2,19c70 <_svfprintf_r+0xe28>
   19464:	ffe68693          	addi	a3,a3,-2
   19468:	fecd8fa3          	sb	a2,-1(s11)
   1946c:	40dc8cbb          	subw	s9,s9,a3
   19470:	000a0493          	mv	s1,s4
   19474:	00068d93          	mv	s11,a3
   19478:	cadff06f          	j	19124 <_svfprintf_r+0x2dc>
   1947c:	01813703          	ld	a4,24(sp)
   19480:	000c8313          	mv	t1,s9
   19484:	0c010fa3          	sb	zero,223(sp)
   19488:	00072783          	lw	a5,0(a4)
   1948c:	00870713          	addi	a4,a4,8
   19490:	00e13c23          	sd	a4,24(sp)
   19494:	12f10423          	sb	a5,296(sp)
   19498:	00100a13          	li	s4,1
   1949c:	00100c93          	li	s9,1
   194a0:	12810d93          	addi	s11,sp,296
   194a4:	02013023          	sd	zero,32(sp)
   194a8:	00000b93          	li	s7,0
   194ac:	04013023          	sd	zero,64(sp)
   194b0:	02013c23          	sd	zero,56(sp)
   194b4:	02013423          	sd	zero,40(sp)
   194b8:	0024fe93          	andi	t4,s1,2
   194bc:	000e8e9b          	sext.w	t4,t4
   194c0:	000e8463          	beqz	t4,194c8 <_svfprintf_r+0x680>
   194c4:	002a0a1b          	addiw	s4,s4,2
   194c8:	0844ff13          	andi	t5,s1,132
   194cc:	12013783          	ld	a5,288(sp)
   194d0:	000f1663          	bnez	t5,194dc <_svfprintf_r+0x694>
   194d4:	4149883b          	subw	a6,s3,s4
   194d8:	29004ae3          	bgtz	a6,19f6c <_svfprintf_r+0x1124>
   194dc:	0df14683          	lbu	a3,223(sp)
   194e0:	02068c63          	beqz	a3,19518 <_svfprintf_r+0x6d0>
   194e4:	11812683          	lw	a3,280(sp)
   194e8:	0df10613          	addi	a2,sp,223
   194ec:	00c33023          	sd	a2,0(t1)
   194f0:	0016869b          	addiw	a3,a3,1
   194f4:	00100613          	li	a2,1
   194f8:	00178793          	addi	a5,a5,1
   194fc:	00c33423          	sd	a2,8(t1)
   19500:	10d12c23          	sw	a3,280(sp)
   19504:	0006861b          	sext.w	a2,a3
   19508:	12f13023          	sd	a5,288(sp)
   1950c:	00700693          	li	a3,7
   19510:	01030313          	addi	t1,t1,16
   19514:	0ec6ca63          	blt	a3,a2,19608 <_svfprintf_r+0x7c0>
   19518:	020e8c63          	beqz	t4,19550 <_svfprintf_r+0x708>
   1951c:	11812683          	lw	a3,280(sp)
   19520:	0e010613          	addi	a2,sp,224
   19524:	00c33023          	sd	a2,0(t1)
   19528:	0016869b          	addiw	a3,a3,1
   1952c:	00200613          	li	a2,2
   19530:	00278793          	addi	a5,a5,2
   19534:	00c33423          	sd	a2,8(t1)
   19538:	10d12c23          	sw	a3,280(sp)
   1953c:	0006861b          	sext.w	a2,a3
   19540:	12f13023          	sd	a5,288(sp)
   19544:	00700693          	li	a3,7
   19548:	01030313          	addi	t1,t1,16
   1954c:	32c6cae3          	blt	a3,a2,1a080 <_svfprintf_r+0x1238>
   19550:	08000693          	li	a3,128
   19554:	04df08e3          	beq	t5,a3,19da4 <_svfprintf_r+0xf5c>
   19558:	419b8bbb          	subw	s7,s7,s9
   1955c:	137048e3          	bgtz	s7,19e8c <_svfprintf_r+0x1044>
   19560:	1004f693          	andi	a3,s1,256
   19564:	70069c63          	bnez	a3,19c7c <_svfprintf_r+0xe34>
   19568:	11812703          	lw	a4,280(sp)
   1956c:	019787b3          	add	a5,a5,s9
   19570:	01b33023          	sd	s11,0(t1)
   19574:	0017069b          	addiw	a3,a4,1
   19578:	01933423          	sd	s9,8(t1)
   1957c:	12f13023          	sd	a5,288(sp)
   19580:	10d12c23          	sw	a3,280(sp)
   19584:	00700713          	li	a4,7
   19588:	1ad74c63          	blt	a4,a3,19740 <_svfprintf_r+0x8f8>
   1958c:	01030313          	addi	t1,t1,16
   19590:	0044f493          	andi	s1,s1,4
   19594:	00048663          	beqz	s1,195a0 <_svfprintf_r+0x758>
   19598:	4149843b          	subw	s0,s3,s4
   1959c:	308048e3          	bgtz	s0,1a0ac <_svfprintf_r+0x1264>
   195a0:	00098713          	mv	a4,s3
   195a4:	0149d463          	bge	s3,s4,195ac <_svfprintf_r+0x764>
   195a8:	000a0713          	mv	a4,s4
   195ac:	00813683          	ld	a3,8(sp)
   195b0:	00d7073b          	addw	a4,a4,a3
   195b4:	00e13423          	sd	a4,8(sp)
   195b8:	a60794e3          	bnez	a5,19020 <_svfprintf_r+0x1d8>
   195bc:	02013783          	ld	a5,32(sp)
   195c0:	10012c23          	sw	zero,280(sp)
   195c4:	00078863          	beqz	a5,195d4 <_svfprintf_r+0x78c>
   195c8:	02013583          	ld	a1,32(sp)
   195cc:	000a8513          	mv	a0,s5
   195d0:	ae0fa0ef          	jal	ra,138b0 <_free_r>
   195d4:	19010313          	addi	t1,sp,400
   195d8:	00090d93          	mv	s11,s2
   195dc:	000dc783          	lbu	a5,0(s11)
   195e0:	92079ce3          	bnez	a5,18f18 <_svfprintf_r+0xd0>
   195e4:	12013783          	ld	a5,288(sp)
   195e8:	a60780e3          	beqz	a5,19048 <_svfprintf_r+0x200>
   195ec:	01013403          	ld	s0,16(sp)
   195f0:	04813503          	ld	a0,72(sp)
   195f4:	11010613          	addi	a2,sp,272
   195f8:	00040593          	mv	a1,s0
   195fc:	790040ef          	jal	ra,1dd8c <__ssprint_r>
   19600:	01045783          	lhu	a5,16(s0)
   19604:	a4dff06f          	j	19050 <_svfprintf_r+0x208>
   19608:	01013583          	ld	a1,16(sp)
   1960c:	11010613          	addi	a2,sp,272
   19610:	000a8513          	mv	a0,s5
   19614:	09e13423          	sd	t5,136(sp)
   19618:	07d13423          	sd	t4,104(sp)
   1961c:	770040ef          	jal	ra,1dd8c <__ssprint_r>
   19620:	a0051ae3          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19624:	12013783          	ld	a5,288(sp)
   19628:	19010313          	addi	t1,sp,400
   1962c:	08813f03          	ld	t5,136(sp)
   19630:	06813e83          	ld	t4,104(sp)
   19634:	ee5ff06f          	j	19518 <_svfprintf_r+0x6d0>
   19638:	11812583          	lw	a1,280(sp)
   1963c:	03013703          	ld	a4,48(sp)
   19640:	00178c93          	addi	s9,a5,1
   19644:	00100613          	li	a2,1
   19648:	0015879b          	addiw	a5,a1,1
   1964c:	01b33023          	sd	s11,0(t1)
   19650:	00078693          	mv	a3,a5
   19654:	01030413          	addi	s0,t1,16
   19658:	4ce650e3          	bge	a2,a4,1a318 <_svfprintf_r+0x14d0>
   1965c:	00100613          	li	a2,1
   19660:	10d12c23          	sw	a3,280(sp)
   19664:	00c33423          	sd	a2,8(t1)
   19668:	13913023          	sd	s9,288(sp)
   1966c:	00700693          	li	a3,7
   19670:	54f6c2e3          	blt	a3,a5,1a3b4 <_svfprintf_r+0x156c>
   19674:	0017869b          	addiw	a3,a5,1
   19678:	05013783          	ld	a5,80(sp)
   1967c:	06013703          	ld	a4,96(sp)
   19680:	10d12c23          	sw	a3,280(sp)
   19684:	00fc8cb3          	add	s9,s9,a5
   19688:	00f43423          	sd	a5,8(s0)
   1968c:	00e43023          	sd	a4,0(s0)
   19690:	0006879b          	sext.w	a5,a3
   19694:	13913023          	sd	s9,288(sp)
   19698:	00700693          	li	a3,7
   1969c:	01040413          	addi	s0,s0,16
   196a0:	52f6cee3          	blt	a3,a5,1a3dc <_svfprintf_r+0x1594>
   196a4:	0017889b          	addiw	a7,a5,1
   196a8:	04f13023          	sd	a5,64(sp)
   196ac:	10013503          	ld	a0,256(sp)
   196b0:	03013783          	ld	a5,48(sp)
   196b4:	10813583          	ld	a1,264(sp)
   196b8:	01040313          	addi	t1,s0,16
   196bc:	00000613          	li	a2,0
   196c0:	00000693          	li	a3,0
   196c4:	00088b1b          	sext.w	s6,a7
   196c8:	03113c23          	sd	a7,56(sp)
   196cc:	02613423          	sd	t1,40(sp)
   196d0:	fff78b9b          	addiw	s7,a5,-1
   196d4:	5c4060ef          	jal	ra,1fc98 <__eqtf2>
   196d8:	02813303          	ld	t1,40(sp)
   196dc:	03813883          	ld	a7,56(sp)
   196e0:	460500e3          	beqz	a0,1a340 <_svfprintf_r+0x14f8>
   196e4:	001d8713          	addi	a4,s11,1
   196e8:	017c8cb3          	add	s9,s9,s7
   196ec:	00e43023          	sd	a4,0(s0)
   196f0:	01743423          	sd	s7,8(s0)
   196f4:	13913023          	sd	s9,288(sp)
   196f8:	11112c23          	sw	a7,280(sp)
   196fc:	00700713          	li	a4,7
   19700:	01675463          	bge	a4,s6,19708 <_svfprintf_r+0x8c0>
   19704:	0000106f          	j	1a704 <_svfprintf_r+0x18bc>
   19708:	04013783          	ld	a5,64(sp)
   1970c:	02040713          	addi	a4,s0,32
   19710:	00030413          	mv	s0,t1
   19714:	00278b1b          	addiw	s6,a5,2
   19718:	00070313          	mv	t1,a4
   1971c:	07013683          	ld	a3,112(sp)
   19720:	0f010713          	addi	a4,sp,240
   19724:	00e43023          	sd	a4,0(s0)
   19728:	019687b3          	add	a5,a3,s9
   1972c:	00d43423          	sd	a3,8(s0)
   19730:	12f13023          	sd	a5,288(sp)
   19734:	11612c23          	sw	s6,280(sp)
   19738:	00700713          	li	a4,7
   1973c:	e5675ae3          	bge	a4,s6,19590 <_svfprintf_r+0x748>
   19740:	01013583          	ld	a1,16(sp)
   19744:	11010613          	addi	a2,sp,272
   19748:	000a8513          	mv	a0,s5
   1974c:	640040ef          	jal	ra,1dd8c <__ssprint_r>
   19750:	8e0512e3          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19754:	12013783          	ld	a5,288(sp)
   19758:	19010313          	addi	t1,sp,400
   1975c:	e35ff06f          	j	19590 <_svfprintf_r+0x748>
   19760:	0084f793          	andi	a5,s1,8
   19764:	000c8313          	mv	t1,s9
   19768:	4c0782e3          	beqz	a5,1a42c <_svfprintf_r+0x15e4>
   1976c:	01813783          	ld	a5,24(sp)
   19770:	00f78793          	addi	a5,a5,15
   19774:	ff07f793          	andi	a5,a5,-16
   19778:	0007b683          	ld	a3,0(a5)
   1977c:	0087b703          	ld	a4,8(a5)
   19780:	01078793          	addi	a5,a5,16
   19784:	00f13c23          	sd	a5,24(sp)
   19788:	10d13023          	sd	a3,256(sp)
   1978c:	10e13423          	sd	a4,264(sp)
   19790:	10010513          	addi	a0,sp,256
   19794:	02613023          	sd	t1,32(sp)
   19798:	97cfd0ef          	jal	ra,16914 <_ldcheck>
   1979c:	0ea12423          	sw	a0,232(sp)
   197a0:	00200793          	li	a5,2
   197a4:	02013303          	ld	t1,32(sp)
   197a8:	00f51463          	bne	a0,a5,197b0 <_svfprintf_r+0x968>
   197ac:	1500106f          	j	1a8fc <_svfprintf_r+0x1ab4>
   197b0:	00100793          	li	a5,1
   197b4:	00f51463          	bne	a0,a5,197bc <_svfprintf_r+0x974>
   197b8:	3200106f          	j	1aad8 <_svfprintf_r+0x1c90>
   197bc:	06100793          	li	a5,97
   197c0:	00f41463          	bne	s0,a5,197c8 <_svfprintf_r+0x980>
   197c4:	2710106f          	j	1b234 <_svfprintf_r+0x23ec>
   197c8:	04100793          	li	a5,65
   197cc:	00f41463          	bne	s0,a5,197d4 <_svfprintf_r+0x98c>
   197d0:	7600106f          	j	1af30 <_svfprintf_r+0x20e8>
   197d4:	fdf47713          	andi	a4,s0,-33
   197d8:	fff00793          	li	a5,-1
   197dc:	02e13c23          	sd	a4,56(sp)
   197e0:	00fb9463          	bne	s7,a5,197e8 <_svfprintf_r+0x9a0>
   197e4:	4900106f          	j	1ac74 <_svfprintf_r+0x1e2c>
   197e8:	04700793          	li	a5,71
   197ec:	00f71463          	bne	a4,a5,197f4 <_svfprintf_r+0x9ac>
   197f0:	2e90106f          	j	1b2d8 <_svfprintf_r+0x2490>
   197f4:	10813c83          	ld	s9,264(sp)
   197f8:	1004e793          	ori	a5,s1,256
   197fc:	04913023          	sd	s1,64(sp)
   19800:	0007879b          	sext.w	a5,a5
   19804:	10013e83          	ld	t4,256(sp)
   19808:	000cd463          	bgez	s9,19810 <_svfprintf_r+0x9c8>
   1980c:	1890106f          	j	1b194 <_svfprintf_r+0x234c>
   19810:	06013423          	sd	zero,104(sp)
   19814:	00078493          	mv	s1,a5
   19818:	02013023          	sd	zero,32(sp)
   1981c:	03813703          	ld	a4,56(sp)
   19820:	04600793          	li	a5,70
   19824:	00f71463          	bne	a4,a5,1982c <_svfprintf_r+0x9e4>
   19828:	5000106f          	j	1ad28 <_svfprintf_r+0x1ee0>
   1982c:	04500793          	li	a5,69
   19830:	02613823          	sd	t1,48(sp)
   19834:	00f71463          	bne	a4,a5,1983c <_svfprintf_r+0x9f4>
   19838:	20d0106f          	j	1b244 <_svfprintf_r+0x23fc>
   1983c:	0e810793          	addi	a5,sp,232
   19840:	000b8713          	mv	a4,s7
   19844:	000e8593          	mv	a1,t4
   19848:	0f810893          	addi	a7,sp,248
   1984c:	0ec10813          	addi	a6,sp,236
   19850:	00200693          	li	a3,2
   19854:	000c8613          	mv	a2,s9
   19858:	000a8513          	mv	a0,s5
   1985c:	03d13423          	sd	t4,40(sp)
   19860:	d95fb0ef          	jal	ra,155f4 <_ldtoa_r>
   19864:	03813703          	ld	a4,56(sp)
   19868:	04700793          	li	a5,71
   1986c:	00050d93          	mv	s11,a0
   19870:	02813e83          	ld	t4,40(sp)
   19874:	03013303          	ld	t1,48(sp)
   19878:	00f70463          	beq	a4,a5,19880 <_svfprintf_r+0xa38>
   1987c:	4990106f          	j	1b514 <_svfprintf_r+0x26cc>
   19880:	04013783          	ld	a5,64(sp)
   19884:	01750a33          	add	s4,a0,s7
   19888:	0017f793          	andi	a5,a5,1
   1988c:	00078463          	beqz	a5,19894 <_svfprintf_r+0xa4c>
   19890:	4e80106f          	j	1ad78 <_svfprintf_r+0x1f30>
   19894:	0f813783          	ld	a5,248(sp)
   19898:	41b787bb          	subw	a5,a5,s11
   1989c:	02f13823          	sd	a5,48(sp)
   198a0:	0e812703          	lw	a4,232(sp)
   198a4:	04700793          	li	a5,71
   198a8:	02e13423          	sd	a4,40(sp)
   198ac:	03813703          	ld	a4,56(sp)
   198b0:	00f71463          	bne	a4,a5,198b8 <_svfprintf_r+0xa70>
   198b4:	3fc0106f          	j	1acb0 <_svfprintf_r+0x1e68>
   198b8:	03813703          	ld	a4,56(sp)
   198bc:	04600793          	li	a5,70
   198c0:	00f71463          	bne	a4,a5,198c8 <_svfprintf_r+0xa80>
   198c4:	6440106f          	j	1af08 <_svfprintf_r+0x20c0>
   198c8:	02813783          	ld	a5,40(sp)
   198cc:	03813703          	ld	a4,56(sp)
   198d0:	04100613          	li	a2,65
   198d4:	fff78a1b          	addiw	s4,a5,-1
   198d8:	0f412423          	sw	s4,232(sp)
   198dc:	0ff47793          	andi	a5,s0,255
   198e0:	00000693          	li	a3,0
   198e4:	00c71863          	bne	a4,a2,198f4 <_svfprintf_r+0xaac>
   198e8:	00f7879b          	addiw	a5,a5,15
   198ec:	0ff7f793          	andi	a5,a5,255
   198f0:	00100693          	li	a3,1
   198f4:	0ef10823          	sb	a5,240(sp)
   198f8:	02b00793          	li	a5,43
   198fc:	000a5a63          	bgez	s4,19910 <_svfprintf_r+0xac8>
   19900:	02813783          	ld	a5,40(sp)
   19904:	00100a13          	li	s4,1
   19908:	40fa0a3b          	subw	s4,s4,a5
   1990c:	02d00793          	li	a5,45
   19910:	0ef108a3          	sb	a5,241(sp)
   19914:	00900793          	li	a5,9
   19918:	0147c463          	blt	a5,s4,19920 <_svfprintf_r+0xad8>
   1991c:	3190106f          	j	1b434 <_svfprintf_r+0x25ec>
   19920:	0ff10b13          	addi	s6,sp,255
   19924:	000b0c93          	mv	s9,s6
   19928:	06300493          	li	s1,99
   1992c:	00030b93          	mv	s7,t1
   19930:	00c0006f          	j	1993c <_svfprintf_r+0xaf4>
   19934:	00060c93          	mv	s9,a2
   19938:	00050a13          	mv	s4,a0
   1993c:	00a00593          	li	a1,10
   19940:	000a0513          	mv	a0,s4
   19944:	995f60ef          	jal	ra,102d8 <__moddi3>
   19948:	0305051b          	addiw	a0,a0,48
   1994c:	feac8fa3          	sb	a0,-1(s9)
   19950:	00a00593          	li	a1,10
   19954:	000a0513          	mv	a0,s4
   19958:	8fdf60ef          	jal	ra,10254 <__divdi3>
   1995c:	fffc8613          	addi	a2,s9,-1
   19960:	0005051b          	sext.w	a0,a0
   19964:	fd44c8e3          	blt	s1,s4,19934 <_svfprintf_r+0xaec>
   19968:	0305079b          	addiw	a5,a0,48
   1996c:	0ff7f793          	andi	a5,a5,255
   19970:	ffec8693          	addi	a3,s9,-2
   19974:	fef60fa3          	sb	a5,-1(a2)
   19978:	000b8313          	mv	t1,s7
   1997c:	0166e463          	bltu	a3,s6,19984 <_svfprintf_r+0xb3c>
   19980:	3a10106f          	j	1b520 <_svfprintf_r+0x26d8>
   19984:	0f210613          	addi	a2,sp,242
   19988:	0080006f          	j	19990 <_svfprintf_r+0xb48>
   1998c:	0006c783          	lbu	a5,0(a3)
   19990:	00160613          	addi	a2,a2,1
   19994:	00168693          	addi	a3,a3,1
   19998:	fef60fa3          	sb	a5,-1(a2)
   1999c:	ff6698e3          	bne	a3,s6,1998c <_svfprintf_r+0xb44>
   199a0:	10110793          	addi	a5,sp,257
   199a4:	419787b3          	sub	a5,a5,s9
   199a8:	0f210713          	addi	a4,sp,242
   199ac:	00f707b3          	add	a5,a4,a5
   199b0:	0f010693          	addi	a3,sp,240
   199b4:	40d787bb          	subw	a5,a5,a3
   199b8:	06f13823          	sd	a5,112(sp)
   199bc:	07013783          	ld	a5,112(sp)
   199c0:	03013703          	ld	a4,48(sp)
   199c4:	00100693          	li	a3,1
   199c8:	00f70cbb          	addw	s9,a4,a5
   199cc:	000c8793          	mv	a5,s9
   199d0:	00e6c463          	blt	a3,a4,199d8 <_svfprintf_r+0xb90>
   199d4:	2c50106f          	j	1b498 <_svfprintf_r+0x2650>
   199d8:	05013703          	ld	a4,80(sp)
   199dc:	00e78cbb          	addw	s9,a5,a4
   199e0:	04013783          	ld	a5,64(sp)
   199e4:	fffcca13          	not	s4,s9
   199e8:	43fa5a13          	srai	s4,s4,0x3f
   199ec:	bff7f493          	andi	s1,a5,-1025
   199f0:	0004849b          	sext.w	s1,s1
   199f4:	014cfa33          	and	s4,s9,s4
   199f8:	1004e493          	ori	s1,s1,256
   199fc:	000a0a1b          	sext.w	s4,s4
   19a00:	04013023          	sd	zero,64(sp)
   19a04:	02013c23          	sd	zero,56(sp)
   19a08:	02013423          	sd	zero,40(sp)
   19a0c:	06813783          	ld	a5,104(sp)
   19a10:	00079463          	bnez	a5,19a18 <_svfprintf_r+0xbd0>
   19a14:	3b40106f          	j	1adc8 <_svfprintf_r+0x1f80>
   19a18:	02d00793          	li	a5,45
   19a1c:	0cf10fa3          	sb	a5,223(sp)
   19a20:	00000b93          	li	s7,0
   19a24:	001a0a1b          	addiw	s4,s4,1
   19a28:	a91ff06f          	j	194b8 <_svfprintf_r+0x670>
   19a2c:	02b00793          	li	a5,43
   19a30:	0cf10fa3          	sb	a5,223(sp)
   19a34:	00094403          	lbu	s0,0(s2)
   19a38:	d78ff06f          	j	18fb0 <_svfprintf_r+0x168>
   19a3c:	01813783          	ld	a5,24(sp)
   19a40:	00094403          	lbu	s0,0(s2)
   19a44:	0007a983          	lw	s3,0(a5)
   19a48:	00878793          	addi	a5,a5,8
   19a4c:	00f13c23          	sd	a5,24(sp)
   19a50:	d609d063          	bgez	s3,18fb0 <_svfprintf_r+0x168>
   19a54:	413009bb          	negw	s3,s3
   19a58:	fa0ff06f          	j	191f8 <_svfprintf_r+0x3b0>
   19a5c:	000a8513          	mv	a0,s5
   19a60:	f11fc0ef          	jal	ra,16970 <_localeconv_r>
   19a64:	00853783          	ld	a5,8(a0)
   19a68:	00078513          	mv	a0,a5
   19a6c:	06f13c23          	sd	a5,120(sp)
   19a70:	a38ff0ef          	jal	ra,18ca8 <strlen>
   19a74:	08a13823          	sd	a0,144(sp)
   19a78:	00050413          	mv	s0,a0
   19a7c:	000a8513          	mv	a0,s5
   19a80:	ef1fc0ef          	jal	ra,16970 <_localeconv_r>
   19a84:	01053783          	ld	a5,16(a0)
   19a88:	08f13023          	sd	a5,128(sp)
   19a8c:	18040ce3          	beqz	s0,1a424 <_svfprintf_r+0x15dc>
   19a90:	00094403          	lbu	s0,0(s2)
   19a94:	d0078e63          	beqz	a5,18fb0 <_svfprintf_r+0x168>
   19a98:	0007c783          	lbu	a5,0(a5)
   19a9c:	d0078a63          	beqz	a5,18fb0 <_svfprintf_r+0x168>
   19aa0:	4004e493          	ori	s1,s1,1024
   19aa4:	0004849b          	sext.w	s1,s1
   19aa8:	d08ff06f          	j	18fb0 <_svfprintf_r+0x168>
   19aac:	0014e493          	ori	s1,s1,1
   19ab0:	0004849b          	sext.w	s1,s1
   19ab4:	00094403          	lbu	s0,0(s2)
   19ab8:	cf8ff06f          	j	18fb0 <_svfprintf_r+0x168>
   19abc:	0df14783          	lbu	a5,223(sp)
   19ac0:	00094403          	lbu	s0,0(s2)
   19ac4:	ce079663          	bnez	a5,18fb0 <_svfprintf_r+0x168>
   19ac8:	02000793          	li	a5,32
   19acc:	0cf10fa3          	sb	a5,223(sp)
   19ad0:	ce0ff06f          	j	18fb0 <_svfprintf_r+0x168>
   19ad4:	01813703          	ld	a4,24(sp)
   19ad8:	0204f793          	andi	a5,s1,32
   19adc:	000c8313          	mv	t1,s9
   19ae0:	00870713          	addi	a4,a4,8
   19ae4:	12079ce3          	bnez	a5,1a41c <_svfprintf_r+0x15d4>
   19ae8:	0104f793          	andi	a5,s1,16
   19aec:	120798e3          	bnez	a5,1a41c <_svfprintf_r+0x15d4>
   19af0:	01813683          	ld	a3,24(sp)
   19af4:	0404f793          	andi	a5,s1,64
   19af8:	0006ab03          	lw	s6,0(a3)
   19afc:	76078ee3          	beqz	a5,1aa78 <_svfprintf_r+0x1c30>
   19b00:	030b1b13          	slli	s6,s6,0x30
   19b04:	030b5b13          	srli	s6,s6,0x30
   19b08:	00e13c23          	sd	a4,24(sp)
   19b0c:	00048a13          	mv	s4,s1
   19b10:	00100793          	li	a5,1
   19b14:	ddcff06f          	j	190f0 <_svfprintf_r+0x2a8>
   19b18:	0204e493          	ori	s1,s1,32
   19b1c:	0004849b          	sext.w	s1,s1
   19b20:	00094403          	lbu	s0,0(s2)
   19b24:	c8cff06f          	j	18fb0 <_svfprintf_r+0x168>
   19b28:	01813703          	ld	a4,24(sp)
   19b2c:	ffff87b7          	lui	a5,0xffff8
   19b30:	8307c793          	xori	a5,a5,-2000
   19b34:	0ef11023          	sh	a5,224(sp)
   19b38:	00870793          	addi	a5,a4,8
   19b3c:	0024e813          	ori	a6,s1,2
   19b40:	00f13c23          	sd	a5,24(sp)
   19b44:	00008797          	auipc	a5,0x8
   19b48:	8bc78793          	addi	a5,a5,-1860 # 21400 <zeroes.4539+0x60>
   19b4c:	04f13c23          	sd	a5,88(sp)
   19b50:	000c8313          	mv	t1,s9
   19b54:	00073b03          	ld	s6,0(a4)
   19b58:	00080a1b          	sext.w	s4,a6
   19b5c:	00200793          	li	a5,2
   19b60:	07800413          	li	s0,120
   19b64:	d8cff06f          	j	190f0 <_svfprintf_r+0x2a8>
   19b68:	01813703          	ld	a4,24(sp)
   19b6c:	0204f793          	andi	a5,s1,32
   19b70:	000c8313          	mv	t1,s9
   19b74:	00870713          	addi	a4,a4,8
   19b78:	f8079063          	bnez	a5,192f8 <_svfprintf_r+0x4b0>
   19b7c:	0104f793          	andi	a5,s1,16
   19b80:	f6079c63          	bnez	a5,192f8 <_svfprintf_r+0x4b0>
   19b84:	01813683          	ld	a3,24(sp)
   19b88:	0404f793          	andi	a5,s1,64
   19b8c:	0006ab03          	lw	s6,0(a3)
   19b90:	720782e3          	beqz	a5,1aab4 <_svfprintf_r+0x1c6c>
   19b94:	030b1b13          	slli	s6,s6,0x30
   19b98:	030b5b13          	srli	s6,s6,0x30
   19b9c:	00e13c23          	sd	a4,24(sp)
   19ba0:	f64ff06f          	j	19304 <_svfprintf_r+0x4bc>
   19ba4:	01813683          	ld	a3,24(sp)
   19ba8:	0204f793          	andi	a5,s1,32
   19bac:	000c8313          	mv	t1,s9
   19bb0:	0006b703          	ld	a4,0(a3)
   19bb4:	00868693          	addi	a3,a3,8
   19bb8:	00d13c23          	sd	a3,24(sp)
   19bbc:	04079663          	bnez	a5,19c08 <_svfprintf_r+0xdc0>
   19bc0:	0104f793          	andi	a5,s1,16
   19bc4:	04079263          	bnez	a5,19c08 <_svfprintf_r+0xdc0>
   19bc8:	0404f793          	andi	a5,s1,64
   19bcc:	00078463          	beqz	a5,19bd4 <_svfprintf_r+0xd8c>
   19bd0:	00c0106f          	j	1abdc <_svfprintf_r+0x1d94>
   19bd4:	2004f493          	andi	s1,s1,512
   19bd8:	00813783          	ld	a5,8(sp)
   19bdc:	00049463          	bnez	s1,19be4 <_svfprintf_r+0xd9c>
   19be0:	6ec0106f          	j	1b2cc <_svfprintf_r+0x2484>
   19be4:	00f70023          	sb	a5,0(a4)
   19be8:	00090d93          	mv	s11,s2
   19bec:	9f1ff06f          	j	195dc <_svfprintf_r+0x794>
   19bf0:	00094403          	lbu	s0,0(s2)
   19bf4:	06c00793          	li	a5,108
   19bf8:	08f40ce3          	beq	s0,a5,1a490 <_svfprintf_r+0x1648>
   19bfc:	0104e493          	ori	s1,s1,16
   19c00:	0004849b          	sext.w	s1,s1
   19c04:	bacff06f          	j	18fb0 <_svfprintf_r+0x168>
   19c08:	00813783          	ld	a5,8(sp)
   19c0c:	00090d93          	mv	s11,s2
   19c10:	00f73023          	sd	a5,0(a4)
   19c14:	9c9ff06f          	j	195dc <_svfprintf_r+0x794>
   19c18:	00048a13          	mv	s4,s1
   19c1c:	00900793          	li	a5,9
   19c20:	3f67e4e3          	bltu	a5,s6,1a808 <_svfprintf_r+0x19c0>
   19c24:	030b0b1b          	addiw	s6,s6,48
   19c28:	196105a3          	sb	s6,395(sp)
   19c2c:	000a0493          	mv	s1,s4
   19c30:	00100c93          	li	s9,1
   19c34:	18b10d93          	addi	s11,sp,395
   19c38:	cecff06f          	j	19124 <_svfprintf_r+0x2dc>
   19c3c:	0ff00793          	li	a5,255
   19c40:	42f686e3          	beq	a3,a5,1a86c <_svfprintf_r+0x1a24>
   19c44:	00900793          	li	a5,9
   19c48:	7337e8e3          	bltu	a5,s3,1ab78 <_svfprintf_r+0x1d30>
   19c4c:	09213023          	sd	s2,128(sp)
   19c50:	000a8313          	mv	t1,s5
   19c54:	03813983          	ld	s3,56(sp)
   19c58:	000c8a93          	mv	s5,s9
   19c5c:	02013903          	ld	s2,32(sp)
   19c60:	000d8c93          	mv	s9,s11
   19c64:	00040d93          	mv	s11,s0
   19c68:	02813403          	ld	s0,40(sp)
   19c6c:	02913823          	sd	s1,48(sp)
   19c70:	41bc8cbb          	subw	s9,s9,s11
   19c74:	000a0493          	mv	s1,s4
   19c78:	cacff06f          	j	19124 <_svfprintf_r+0x2dc>
   19c7c:	06500693          	li	a3,101
   19c80:	9a86dce3          	bge	a3,s0,19638 <_svfprintf_r+0x7f0>
   19c84:	10013503          	ld	a0,256(sp)
   19c88:	10813583          	ld	a1,264(sp)
   19c8c:	00000613          	li	a2,0
   19c90:	00000693          	li	a3,0
   19c94:	08613423          	sd	t1,136(sp)
   19c98:	06f13423          	sd	a5,104(sp)
   19c9c:	7fd050ef          	jal	ra,1fc98 <__eqtf2>
   19ca0:	06813783          	ld	a5,104(sp)
   19ca4:	08813303          	ld	t1,136(sp)
   19ca8:	4e051e63          	bnez	a0,1a1a4 <_svfprintf_r+0x135c>
   19cac:	11812703          	lw	a4,280(sp)
   19cb0:	00007697          	auipc	a3,0x7
   19cb4:	78868693          	addi	a3,a3,1928 # 21438 <zeroes.4539+0x98>
   19cb8:	00178793          	addi	a5,a5,1
   19cbc:	0017071b          	addiw	a4,a4,1
   19cc0:	00d33023          	sd	a3,0(t1)
   19cc4:	00100693          	li	a3,1
   19cc8:	00d33423          	sd	a3,8(t1)
   19ccc:	12f13023          	sd	a5,288(sp)
   19cd0:	0007069b          	sext.w	a3,a4
   19cd4:	10e12c23          	sw	a4,280(sp)
   19cd8:	00700793          	li	a5,7
   19cdc:	01030313          	addi	t1,t1,16
   19ce0:	3ad7c4e3          	blt	a5,a3,1a888 <_svfprintf_r+0x1a40>
   19ce4:	0e812783          	lw	a5,232(sp)
   19ce8:	03013703          	ld	a4,48(sp)
   19cec:	00e7ca63          	blt	a5,a4,19d00 <_svfprintf_r+0xeb8>
   19cf0:	0014f793          	andi	a5,s1,1
   19cf4:	00079663          	bnez	a5,19d00 <_svfprintf_r+0xeb8>
   19cf8:	12013783          	ld	a5,288(sp)
   19cfc:	895ff06f          	j	19590 <_svfprintf_r+0x748>
   19d00:	06013783          	ld	a5,96(sp)
   19d04:	05013683          	ld	a3,80(sp)
   19d08:	11812703          	lw	a4,280(sp)
   19d0c:	00f33023          	sd	a5,0(t1)
   19d10:	12013783          	ld	a5,288(sp)
   19d14:	0017071b          	addiw	a4,a4,1
   19d18:	00d33423          	sd	a3,8(t1)
   19d1c:	00f687b3          	add	a5,a3,a5
   19d20:	10e12c23          	sw	a4,280(sp)
   19d24:	0007069b          	sext.w	a3,a4
   19d28:	12f13023          	sd	a5,288(sp)
   19d2c:	00700713          	li	a4,7
   19d30:	01030313          	addi	t1,t1,16
   19d34:	72d74c63          	blt	a4,a3,1a46c <_svfprintf_r+0x1624>
   19d38:	03013703          	ld	a4,48(sp)
   19d3c:	fff7041b          	addiw	s0,a4,-1
   19d40:	848058e3          	blez	s0,19590 <_svfprintf_r+0x748>
   19d44:	11812703          	lw	a4,280(sp)
   19d48:	368d50e3          	bge	s10,s0,1a8a8 <_svfprintf_r+0x1a60>
   19d4c:	00700c93          	li	s9,7
   19d50:	01013b03          	ld	s6,16(sp)
   19d54:	00c0006f          	j	19d60 <_svfprintf_r+0xf18>
   19d58:	ff04041b          	addiw	s0,s0,-16
   19d5c:	348d56e3          	bge	s10,s0,1a8a8 <_svfprintf_r+0x1a60>
   19d60:	0017071b          	addiw	a4,a4,1
   19d64:	01078793          	addi	a5,a5,16
   19d68:	01833023          	sd	s8,0(t1)
   19d6c:	01a33423          	sd	s10,8(t1)
   19d70:	12f13023          	sd	a5,288(sp)
   19d74:	10e12c23          	sw	a4,280(sp)
   19d78:	01030313          	addi	t1,t1,16
   19d7c:	fcecdee3          	bge	s9,a4,19d58 <_svfprintf_r+0xf10>
   19d80:	11010613          	addi	a2,sp,272
   19d84:	000b0593          	mv	a1,s6
   19d88:	000a8513          	mv	a0,s5
   19d8c:	000040ef          	jal	ra,1dd8c <__ssprint_r>
   19d90:	aa051263          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19d94:	12013783          	ld	a5,288(sp)
   19d98:	11812703          	lw	a4,280(sp)
   19d9c:	19010313          	addi	t1,sp,400
   19da0:	fb9ff06f          	j	19d58 <_svfprintf_r+0xf10>
   19da4:	41498b3b          	subw	s6,s3,s4
   19da8:	fb605863          	blez	s6,19558 <_svfprintf_r+0x710>
   19dac:	11812683          	lw	a3,280(sp)
   19db0:	096d5a63          	bge	s10,s6,19e44 <_svfprintf_r+0xffc>
   19db4:	000b0713          	mv	a4,s6
   19db8:	06813423          	sd	s0,104(sp)
   19dbc:	000a0b13          	mv	s6,s4
   19dc0:	00700893          	li	a7,7
   19dc4:	00098a13          	mv	s4,s3
   19dc8:	01013403          	ld	s0,16(sp)
   19dcc:	00048993          	mv	s3,s1
   19dd0:	00070493          	mv	s1,a4
   19dd4:	00c0006f          	j	19de0 <_svfprintf_r+0xf98>
   19dd8:	ff04849b          	addiw	s1,s1,-16
   19ddc:	049d5863          	bge	s10,s1,19e2c <_svfprintf_r+0xfe4>
   19de0:	0016869b          	addiw	a3,a3,1
   19de4:	01078793          	addi	a5,a5,16
   19de8:	01833023          	sd	s8,0(t1)
   19dec:	01a33423          	sd	s10,8(t1)
   19df0:	12f13023          	sd	a5,288(sp)
   19df4:	10d12c23          	sw	a3,280(sp)
   19df8:	01030313          	addi	t1,t1,16
   19dfc:	fcd8dee3          	bge	a7,a3,19dd8 <_svfprintf_r+0xf90>
   19e00:	11010613          	addi	a2,sp,272
   19e04:	00040593          	mv	a1,s0
   19e08:	000a8513          	mv	a0,s5
   19e0c:	781030ef          	jal	ra,1dd8c <__ssprint_r>
   19e10:	a2051263          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19e14:	ff04849b          	addiw	s1,s1,-16
   19e18:	12013783          	ld	a5,288(sp)
   19e1c:	11812683          	lw	a3,280(sp)
   19e20:	19010313          	addi	t1,sp,400
   19e24:	00700893          	li	a7,7
   19e28:	fa9d4ce3          	blt	s10,s1,19de0 <_svfprintf_r+0xf98>
   19e2c:	06813403          	ld	s0,104(sp)
   19e30:	00048713          	mv	a4,s1
   19e34:	00098493          	mv	s1,s3
   19e38:	000a0993          	mv	s3,s4
   19e3c:	000b0a13          	mv	s4,s6
   19e40:	00070b13          	mv	s6,a4
   19e44:	0016861b          	addiw	a2,a3,1
   19e48:	016787b3          	add	a5,a5,s6
   19e4c:	01833023          	sd	s8,0(t1)
   19e50:	01633423          	sd	s6,8(t1)
   19e54:	12f13023          	sd	a5,288(sp)
   19e58:	10c12c23          	sw	a2,280(sp)
   19e5c:	00700693          	li	a3,7
   19e60:	01030313          	addi	t1,t1,16
   19e64:	eec6da63          	bge	a3,a2,19558 <_svfprintf_r+0x710>
   19e68:	01013583          	ld	a1,16(sp)
   19e6c:	11010613          	addi	a2,sp,272
   19e70:	000a8513          	mv	a0,s5
   19e74:	719030ef          	jal	ra,1dd8c <__ssprint_r>
   19e78:	9a051e63          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19e7c:	419b8bbb          	subw	s7,s7,s9
   19e80:	12013783          	ld	a5,288(sp)
   19e84:	19010313          	addi	t1,sp,400
   19e88:	ed705c63          	blez	s7,19560 <_svfprintf_r+0x718>
   19e8c:	11812683          	lw	a3,280(sp)
   19e90:	097d5863          	bge	s10,s7,19f20 <_svfprintf_r+0x10d8>
   19e94:	000a0713          	mv	a4,s4
   19e98:	06813423          	sd	s0,104(sp)
   19e9c:	00098a13          	mv	s4,s3
   19ea0:	00700b13          	li	s6,7
   19ea4:	00048993          	mv	s3,s1
   19ea8:	01013403          	ld	s0,16(sp)
   19eac:	000b8493          	mv	s1,s7
   19eb0:	00070b93          	mv	s7,a4
   19eb4:	00c0006f          	j	19ec0 <_svfprintf_r+0x1078>
   19eb8:	ff04849b          	addiw	s1,s1,-16
   19ebc:	049d5663          	bge	s10,s1,19f08 <_svfprintf_r+0x10c0>
   19ec0:	0016869b          	addiw	a3,a3,1
   19ec4:	01078793          	addi	a5,a5,16
   19ec8:	01833023          	sd	s8,0(t1)
   19ecc:	01a33423          	sd	s10,8(t1)
   19ed0:	12f13023          	sd	a5,288(sp)
   19ed4:	10d12c23          	sw	a3,280(sp)
   19ed8:	01030313          	addi	t1,t1,16
   19edc:	fcdb5ee3          	bge	s6,a3,19eb8 <_svfprintf_r+0x1070>
   19ee0:	11010613          	addi	a2,sp,272
   19ee4:	00040593          	mv	a1,s0
   19ee8:	000a8513          	mv	a0,s5
   19eec:	6a1030ef          	jal	ra,1dd8c <__ssprint_r>
   19ef0:	94051263          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19ef4:	ff04849b          	addiw	s1,s1,-16
   19ef8:	12013783          	ld	a5,288(sp)
   19efc:	11812683          	lw	a3,280(sp)
   19f00:	19010313          	addi	t1,sp,400
   19f04:	fa9d4ee3          	blt	s10,s1,19ec0 <_svfprintf_r+0x1078>
   19f08:	06813403          	ld	s0,104(sp)
   19f0c:	000b8713          	mv	a4,s7
   19f10:	00048b93          	mv	s7,s1
   19f14:	00098493          	mv	s1,s3
   19f18:	000a0993          	mv	s3,s4
   19f1c:	00070a13          	mv	s4,a4
   19f20:	0016861b          	addiw	a2,a3,1
   19f24:	017787b3          	add	a5,a5,s7
   19f28:	01833023          	sd	s8,0(t1)
   19f2c:	01733423          	sd	s7,8(t1)
   19f30:	12f13023          	sd	a5,288(sp)
   19f34:	10c12c23          	sw	a2,280(sp)
   19f38:	00700693          	li	a3,7
   19f3c:	01030313          	addi	t1,t1,16
   19f40:	e2c6d063          	bge	a3,a2,19560 <_svfprintf_r+0x718>
   19f44:	01013583          	ld	a1,16(sp)
   19f48:	11010613          	addi	a2,sp,272
   19f4c:	000a8513          	mv	a0,s5
   19f50:	63d030ef          	jal	ra,1dd8c <__ssprint_r>
   19f54:	8e051063          	bnez	a0,19034 <_svfprintf_r+0x1ec>
   19f58:	12013783          	ld	a5,288(sp)
   19f5c:	19010313          	addi	t1,sp,400
   19f60:	e00ff06f          	j	19560 <_svfprintf_r+0x718>
   19f64:	00048a13          	mv	s4,s1
   19f68:	cb4ff06f          	j	1941c <_svfprintf_r+0x5d4>
   19f6c:	11812683          	lw	a3,280(sp)
   19f70:	00008b17          	auipc	s6,0x8
   19f74:	a20b0b13          	addi	s6,s6,-1504 # 21990 <blanks.4523>
   19f78:	0b0d5863          	bge	s10,a6,1a028 <_svfprintf_r+0x11e0>
   19f7c:	09213c23          	sd	s2,152(sp)
   19f80:	0a813023          	sd	s0,160(sp)
   19f84:	000b0913          	mv	s2,s6
   19f88:	00700f93          	li	t6,7
   19f8c:	000a0b13          	mv	s6,s4
   19f90:	07d13423          	sd	t4,104(sp)
   19f94:	00098a13          	mv	s4,s3
   19f98:	09e13423          	sd	t5,136(sp)
   19f9c:	00048993          	mv	s3,s1
   19fa0:	00080413          	mv	s0,a6
   19fa4:	01013483          	ld	s1,16(sp)
   19fa8:	00c0006f          	j	19fb4 <_svfprintf_r+0x116c>
   19fac:	ff04041b          	addiw	s0,s0,-16
   19fb0:	048d5a63          	bge	s10,s0,1a004 <_svfprintf_r+0x11bc>
   19fb4:	0016869b          	addiw	a3,a3,1
   19fb8:	01078793          	addi	a5,a5,16
   19fbc:	01233023          	sd	s2,0(t1)
   19fc0:	01a33423          	sd	s10,8(t1)
   19fc4:	12f13023          	sd	a5,288(sp)
   19fc8:	10d12c23          	sw	a3,280(sp)
   19fcc:	01030313          	addi	t1,t1,16
   19fd0:	fcdfdee3          	bge	t6,a3,19fac <_svfprintf_r+0x1164>
   19fd4:	11010613          	addi	a2,sp,272
   19fd8:	00048593          	mv	a1,s1
   19fdc:	000a8513          	mv	a0,s5
   19fe0:	5ad030ef          	jal	ra,1dd8c <__ssprint_r>
   19fe4:	00050463          	beqz	a0,19fec <_svfprintf_r+0x11a4>
   19fe8:	84cff06f          	j	19034 <_svfprintf_r+0x1ec>
   19fec:	ff04041b          	addiw	s0,s0,-16
   19ff0:	12013783          	ld	a5,288(sp)
   19ff4:	11812683          	lw	a3,280(sp)
   19ff8:	19010313          	addi	t1,sp,400
   19ffc:	00700f93          	li	t6,7
   1a000:	fa8d4ae3          	blt	s10,s0,19fb4 <_svfprintf_r+0x116c>
   1a004:	00098493          	mv	s1,s3
   1a008:	00040813          	mv	a6,s0
   1a00c:	000a0993          	mv	s3,s4
   1a010:	06813e83          	ld	t4,104(sp)
   1a014:	000b0a13          	mv	s4,s6
   1a018:	08813f03          	ld	t5,136(sp)
   1a01c:	00090b13          	mv	s6,s2
   1a020:	0a013403          	ld	s0,160(sp)
   1a024:	09813903          	ld	s2,152(sp)
   1a028:	0016861b          	addiw	a2,a3,1
   1a02c:	010787b3          	add	a5,a5,a6
   1a030:	01633023          	sd	s6,0(t1)
   1a034:	01033423          	sd	a6,8(t1)
   1a038:	12f13023          	sd	a5,288(sp)
   1a03c:	10c12c23          	sw	a2,280(sp)
   1a040:	00700693          	li	a3,7
   1a044:	01030313          	addi	t1,t1,16
   1a048:	c8c6da63          	bge	a3,a2,194dc <_svfprintf_r+0x694>
   1a04c:	01013583          	ld	a1,16(sp)
   1a050:	11010613          	addi	a2,sp,272
   1a054:	000a8513          	mv	a0,s5
   1a058:	09e13423          	sd	t5,136(sp)
   1a05c:	07d13423          	sd	t4,104(sp)
   1a060:	52d030ef          	jal	ra,1dd8c <__ssprint_r>
   1a064:	00050463          	beqz	a0,1a06c <_svfprintf_r+0x1224>
   1a068:	fcdfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a06c:	12013783          	ld	a5,288(sp)
   1a070:	19010313          	addi	t1,sp,400
   1a074:	08813f03          	ld	t5,136(sp)
   1a078:	06813e83          	ld	t4,104(sp)
   1a07c:	c60ff06f          	j	194dc <_svfprintf_r+0x694>
   1a080:	01013583          	ld	a1,16(sp)
   1a084:	11010613          	addi	a2,sp,272
   1a088:	000a8513          	mv	a0,s5
   1a08c:	07e13423          	sd	t5,104(sp)
   1a090:	4fd030ef          	jal	ra,1dd8c <__ssprint_r>
   1a094:	00050463          	beqz	a0,1a09c <_svfprintf_r+0x1254>
   1a098:	f9dfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a09c:	12013783          	ld	a5,288(sp)
   1a0a0:	19010313          	addi	t1,sp,400
   1a0a4:	06813f03          	ld	t5,104(sp)
   1a0a8:	ca8ff06f          	j	19550 <_svfprintf_r+0x708>
   1a0ac:	11812703          	lw	a4,280(sp)
   1a0b0:	00008b17          	auipc	s6,0x8
   1a0b4:	8e0b0b13          	addi	s6,s6,-1824 # 21990 <blanks.4523>
   1a0b8:	068d5263          	bge	s10,s0,1a11c <_svfprintf_r+0x12d4>
   1a0bc:	00700493          	li	s1,7
   1a0c0:	01013b83          	ld	s7,16(sp)
   1a0c4:	00c0006f          	j	1a0d0 <_svfprintf_r+0x1288>
   1a0c8:	ff04041b          	addiw	s0,s0,-16
   1a0cc:	048d5863          	bge	s10,s0,1a11c <_svfprintf_r+0x12d4>
   1a0d0:	0017071b          	addiw	a4,a4,1
   1a0d4:	01078793          	addi	a5,a5,16
   1a0d8:	01633023          	sd	s6,0(t1)
   1a0dc:	01a33423          	sd	s10,8(t1)
   1a0e0:	12f13023          	sd	a5,288(sp)
   1a0e4:	10e12c23          	sw	a4,280(sp)
   1a0e8:	01030313          	addi	t1,t1,16
   1a0ec:	fce4dee3          	bge	s1,a4,1a0c8 <_svfprintf_r+0x1280>
   1a0f0:	11010613          	addi	a2,sp,272
   1a0f4:	000b8593          	mv	a1,s7
   1a0f8:	000a8513          	mv	a0,s5
   1a0fc:	491030ef          	jal	ra,1dd8c <__ssprint_r>
   1a100:	00050463          	beqz	a0,1a108 <_svfprintf_r+0x12c0>
   1a104:	f31fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a108:	ff04041b          	addiw	s0,s0,-16
   1a10c:	12013783          	ld	a5,288(sp)
   1a110:	11812703          	lw	a4,280(sp)
   1a114:	19010313          	addi	t1,sp,400
   1a118:	fa8d4ce3          	blt	s10,s0,1a0d0 <_svfprintf_r+0x1288>
   1a11c:	0017069b          	addiw	a3,a4,1
   1a120:	008787b3          	add	a5,a5,s0
   1a124:	01633023          	sd	s6,0(t1)
   1a128:	00833423          	sd	s0,8(t1)
   1a12c:	12f13023          	sd	a5,288(sp)
   1a130:	10d12c23          	sw	a3,280(sp)
   1a134:	00700713          	li	a4,7
   1a138:	c6d75463          	bge	a4,a3,195a0 <_svfprintf_r+0x758>
   1a13c:	01013583          	ld	a1,16(sp)
   1a140:	11010613          	addi	a2,sp,272
   1a144:	000a8513          	mv	a0,s5
   1a148:	445030ef          	jal	ra,1dd8c <__ssprint_r>
   1a14c:	00050463          	beqz	a0,1a154 <_svfprintf_r+0x130c>
   1a150:	ee5fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a154:	12013783          	ld	a5,288(sp)
   1a158:	c48ff06f          	j	195a0 <_svfprintf_r+0x758>
   1a15c:	00100713          	li	a4,1
   1a160:	30e78ee3          	beq	a5,a4,1ac7c <_svfprintf_r+0x1e34>
   1a164:	00200713          	li	a4,2
   1a168:	00048a13          	mv	s4,s1
   1a16c:	ace79063          	bne	a5,a4,1942c <_svfprintf_r+0x5e4>
   1a170:	05813703          	ld	a4,88(sp)
   1a174:	18c10c93          	addi	s9,sp,396
   1a178:	000c8d93          	mv	s11,s9
   1a17c:	00fb7793          	andi	a5,s6,15
   1a180:	00f707b3          	add	a5,a4,a5
   1a184:	0007c783          	lbu	a5,0(a5)
   1a188:	fffd8d93          	addi	s11,s11,-1
   1a18c:	004b5b13          	srli	s6,s6,0x4
   1a190:	00fd8023          	sb	a5,0(s11)
   1a194:	fe0b14e3          	bnez	s6,1a17c <_svfprintf_r+0x1334>
   1a198:	41bc8cbb          	subw	s9,s9,s11
   1a19c:	000a0493          	mv	s1,s4
   1a1a0:	f85fe06f          	j	19124 <_svfprintf_r+0x2dc>
   1a1a4:	0e812583          	lw	a1,232(sp)
   1a1a8:	58b05663          	blez	a1,1a734 <_svfprintf_r+0x18ec>
   1a1ac:	03013703          	ld	a4,48(sp)
   1a1b0:	02813683          	ld	a3,40(sp)
   1a1b4:	0007041b          	sext.w	s0,a4
   1a1b8:	2ae6c463          	blt	a3,a4,1a460 <_svfprintf_r+0x1618>
   1a1bc:	02805663          	blez	s0,1a1e8 <_svfprintf_r+0x13a0>
   1a1c0:	11812683          	lw	a3,280(sp)
   1a1c4:	008787b3          	add	a5,a5,s0
   1a1c8:	01b33023          	sd	s11,0(t1)
   1a1cc:	0016861b          	addiw	a2,a3,1
   1a1d0:	00833423          	sd	s0,8(t1)
   1a1d4:	12f13023          	sd	a5,288(sp)
   1a1d8:	10c12c23          	sw	a2,280(sp)
   1a1dc:	00700693          	li	a3,7
   1a1e0:	01030313          	addi	t1,t1,16
   1a1e4:	16c6c8e3          	blt	a3,a2,1ab54 <_svfprintf_r+0x1d0c>
   1a1e8:	fff44693          	not	a3,s0
   1a1ec:	02813703          	ld	a4,40(sp)
   1a1f0:	43f6d693          	srai	a3,a3,0x3f
   1a1f4:	00d47433          	and	s0,s0,a3
   1a1f8:	4087043b          	subw	s0,a4,s0
   1a1fc:	30804a63          	bgtz	s0,1a510 <_svfprintf_r+0x16c8>
   1a200:	02813703          	ld	a4,40(sp)
   1a204:	4004f693          	andi	a3,s1,1024
   1a208:	00ed8bb3          	add	s7,s11,a4
   1a20c:	36069463          	bnez	a3,1a574 <_svfprintf_r+0x172c>
   1a210:	0e812683          	lw	a3,232(sp)
   1a214:	03013703          	ld	a4,48(sp)
   1a218:	00e6c663          	blt	a3,a4,1a224 <_svfprintf_r+0x13dc>
   1a21c:	0014f613          	andi	a2,s1,1
   1a220:	18060ee3          	beqz	a2,1abbc <_svfprintf_r+0x1d74>
   1a224:	06013603          	ld	a2,96(sp)
   1a228:	05013703          	ld	a4,80(sp)
   1a22c:	01030313          	addi	t1,t1,16
   1a230:	fec33823          	sd	a2,-16(t1)
   1a234:	11812603          	lw	a2,280(sp)
   1a238:	00e787b3          	add	a5,a5,a4
   1a23c:	fee33c23          	sd	a4,-8(t1)
   1a240:	0016059b          	addiw	a1,a2,1
   1a244:	12f13023          	sd	a5,288(sp)
   1a248:	10b12c23          	sw	a1,280(sp)
   1a24c:	00700613          	li	a2,7
   1a250:	3eb64ee3          	blt	a2,a1,1ae4c <_svfprintf_r+0x2004>
   1a254:	03013703          	ld	a4,48(sp)
   1a258:	40d7063b          	subw	a2,a4,a3
   1a25c:	00ed8733          	add	a4,s11,a4
   1a260:	4177073b          	subw	a4,a4,s7
   1a264:	00060693          	mv	a3,a2
   1a268:	00c75463          	bge	a4,a2,1a270 <_svfprintf_r+0x1428>
   1a26c:	00070693          	mv	a3,a4
   1a270:	0006841b          	sext.w	s0,a3
   1a274:	02805663          	blez	s0,1a2a0 <_svfprintf_r+0x1458>
   1a278:	11812703          	lw	a4,280(sp)
   1a27c:	008787b3          	add	a5,a5,s0
   1a280:	01733023          	sd	s7,0(t1)
   1a284:	0017069b          	addiw	a3,a4,1
   1a288:	00833423          	sd	s0,8(t1)
   1a28c:	12f13023          	sd	a5,288(sp)
   1a290:	10d12c23          	sw	a3,280(sp)
   1a294:	00700713          	li	a4,7
   1a298:	01030313          	addi	t1,t1,16
   1a29c:	40d742e3          	blt	a4,a3,1aea0 <_svfprintf_r+0x2058>
   1a2a0:	fff44713          	not	a4,s0
   1a2a4:	43f75713          	srai	a4,a4,0x3f
   1a2a8:	00e47433          	and	s0,s0,a4
   1a2ac:	4086043b          	subw	s0,a2,s0
   1a2b0:	ae805063          	blez	s0,19590 <_svfprintf_r+0x748>
   1a2b4:	11812703          	lw	a4,280(sp)
   1a2b8:	5e8d5863          	bge	s10,s0,1a8a8 <_svfprintf_r+0x1a60>
   1a2bc:	00700c93          	li	s9,7
   1a2c0:	01013b03          	ld	s6,16(sp)
   1a2c4:	00c0006f          	j	1a2d0 <_svfprintf_r+0x1488>
   1a2c8:	ff04041b          	addiw	s0,s0,-16
   1a2cc:	5c8d5e63          	bge	s10,s0,1a8a8 <_svfprintf_r+0x1a60>
   1a2d0:	0017071b          	addiw	a4,a4,1
   1a2d4:	01078793          	addi	a5,a5,16
   1a2d8:	01833023          	sd	s8,0(t1)
   1a2dc:	01a33423          	sd	s10,8(t1)
   1a2e0:	12f13023          	sd	a5,288(sp)
   1a2e4:	10e12c23          	sw	a4,280(sp)
   1a2e8:	01030313          	addi	t1,t1,16
   1a2ec:	fcecdee3          	bge	s9,a4,1a2c8 <_svfprintf_r+0x1480>
   1a2f0:	11010613          	addi	a2,sp,272
   1a2f4:	000b0593          	mv	a1,s6
   1a2f8:	000a8513          	mv	a0,s5
   1a2fc:	291030ef          	jal	ra,1dd8c <__ssprint_r>
   1a300:	00050463          	beqz	a0,1a308 <_svfprintf_r+0x14c0>
   1a304:	d31fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a308:	12013783          	ld	a5,288(sp)
   1a30c:	11812703          	lw	a4,280(sp)
   1a310:	19010313          	addi	t1,sp,400
   1a314:	fb5ff06f          	j	1a2c8 <_svfprintf_r+0x1480>
   1a318:	0014f513          	andi	a0,s1,1
   1a31c:	b4051063          	bnez	a0,1965c <_svfprintf_r+0x814>
   1a320:	00c33423          	sd	a2,8(t1)
   1a324:	13913023          	sd	s9,288(sp)
   1a328:	10f12c23          	sw	a5,280(sp)
   1a32c:	00700713          	li	a4,7
   1a330:	3cf74a63          	blt	a4,a5,1a704 <_svfprintf_r+0x18bc>
   1a334:	00258b1b          	addiw	s6,a1,2
   1a338:	02030313          	addi	t1,t1,32
   1a33c:	be0ff06f          	j	1971c <_svfprintf_r+0x8d4>
   1a340:	bd705e63          	blez	s7,1971c <_svfprintf_r+0x8d4>
   1a344:	017d4463          	blt	s10,s7,1a34c <_svfprintf_r+0x1504>
   1a348:	1a00106f          	j	1b4e8 <_svfprintf_r+0x26a0>
   1a34c:	00700b13          	li	s6,7
   1a350:	01013d83          	ld	s11,16(sp)
   1a354:	0100006f          	j	1a364 <_svfprintf_r+0x151c>
   1a358:	ff0b8b9b          	addiw	s7,s7,-16
   1a35c:	6f7d5463          	bge	s10,s7,1aa44 <_svfprintf_r+0x1bfc>
   1a360:	0017889b          	addiw	a7,a5,1
   1a364:	010c8c93          	addi	s9,s9,16
   1a368:	01843023          	sd	s8,0(s0)
   1a36c:	01a43423          	sd	s10,8(s0)
   1a370:	13913023          	sd	s9,288(sp)
   1a374:	0008879b          	sext.w	a5,a7
   1a378:	11112c23          	sw	a7,280(sp)
   1a37c:	01040413          	addi	s0,s0,16
   1a380:	fcfb5ce3          	bge	s6,a5,1a358 <_svfprintf_r+0x1510>
   1a384:	11010613          	addi	a2,sp,272
   1a388:	000d8593          	mv	a1,s11
   1a38c:	000a8513          	mv	a0,s5
   1a390:	1fd030ef          	jal	ra,1dd8c <__ssprint_r>
   1a394:	00050463          	beqz	a0,1a39c <_svfprintf_r+0x1554>
   1a398:	c9dfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a39c:	12013c83          	ld	s9,288(sp)
   1a3a0:	11812783          	lw	a5,280(sp)
   1a3a4:	19010413          	addi	s0,sp,400
   1a3a8:	fb1ff06f          	j	1a358 <_svfprintf_r+0x1510>
   1a3ac:	000d8493          	mv	s1,s11
   1a3b0:	bddfe06f          	j	18f8c <_svfprintf_r+0x144>
   1a3b4:	01013583          	ld	a1,16(sp)
   1a3b8:	11010613          	addi	a2,sp,272
   1a3bc:	000a8513          	mv	a0,s5
   1a3c0:	1cd030ef          	jal	ra,1dd8c <__ssprint_r>
   1a3c4:	00050463          	beqz	a0,1a3cc <_svfprintf_r+0x1584>
   1a3c8:	c6dfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a3cc:	12013c83          	ld	s9,288(sp)
   1a3d0:	11812783          	lw	a5,280(sp)
   1a3d4:	19010413          	addi	s0,sp,400
   1a3d8:	a9cff06f          	j	19674 <_svfprintf_r+0x82c>
   1a3dc:	01013583          	ld	a1,16(sp)
   1a3e0:	11010613          	addi	a2,sp,272
   1a3e4:	000a8513          	mv	a0,s5
   1a3e8:	1a5030ef          	jal	ra,1dd8c <__ssprint_r>
   1a3ec:	00050463          	beqz	a0,1a3f4 <_svfprintf_r+0x15ac>
   1a3f0:	c45fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a3f4:	12013c83          	ld	s9,288(sp)
   1a3f8:	11812783          	lw	a5,280(sp)
   1a3fc:	19010413          	addi	s0,sp,400
   1a400:	aa4ff06f          	j	196a4 <_svfprintf_r+0x85c>
   1a404:	03000793          	li	a5,48
   1a408:	18f105a3          	sb	a5,395(sp)
   1a40c:	18b10d93          	addi	s11,sp,395
   1a410:	d15fe06f          	j	19124 <_svfprintf_r+0x2dc>
   1a414:	00048a13          	mv	s4,s1
   1a418:	fd9fe06f          	j	193f0 <_svfprintf_r+0x5a8>
   1a41c:	00048a13          	mv	s4,s1
   1a420:	f09fe06f          	j	19328 <_svfprintf_r+0x4e0>
   1a424:	00094403          	lbu	s0,0(s2)
   1a428:	b89fe06f          	j	18fb0 <_svfprintf_r+0x168>
   1a42c:	01813783          	ld	a5,24(sp)
   1a430:	03913023          	sd	s9,32(sp)
   1a434:	0007b503          	ld	a0,0(a5)
   1a438:	00878793          	addi	a5,a5,8
   1a43c:	00f13c23          	sd	a5,24(sp)
   1a440:	28d060ef          	jal	ra,20ecc <__extenddftf2>
   1a444:	10a13023          	sd	a0,256(sp)
   1a448:	10b13423          	sd	a1,264(sp)
   1a44c:	02013303          	ld	t1,32(sp)
   1a450:	b40ff06f          	j	19790 <_svfprintf_r+0x948>
   1a454:	01813783          	ld	a5,24(sp)
   1a458:	0007bb03          	ld	s6,0(a5)
   1a45c:	c65fe06f          	j	190c0 <_svfprintf_r+0x278>
   1a460:	0006841b          	sext.w	s0,a3
   1a464:	d4804ee3          	bgtz	s0,1a1c0 <_svfprintf_r+0x1378>
   1a468:	d81ff06f          	j	1a1e8 <_svfprintf_r+0x13a0>
   1a46c:	01013583          	ld	a1,16(sp)
   1a470:	11010613          	addi	a2,sp,272
   1a474:	000a8513          	mv	a0,s5
   1a478:	115030ef          	jal	ra,1dd8c <__ssprint_r>
   1a47c:	00050463          	beqz	a0,1a484 <_svfprintf_r+0x163c>
   1a480:	bb5fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a484:	12013783          	ld	a5,288(sp)
   1a488:	19010313          	addi	t1,sp,400
   1a48c:	8adff06f          	j	19d38 <_svfprintf_r+0xef0>
   1a490:	0204e493          	ori	s1,s1,32
   1a494:	00194403          	lbu	s0,1(s2)
   1a498:	0004849b          	sext.w	s1,s1
   1a49c:	00190913          	addi	s2,s2,1
   1a4a0:	b11fe06f          	j	18fb0 <_svfprintf_r+0x168>
   1a4a4:	2004e493          	ori	s1,s1,512
   1a4a8:	00194403          	lbu	s0,1(s2)
   1a4ac:	0004849b          	sext.w	s1,s1
   1a4b0:	00190913          	addi	s2,s2,1
   1a4b4:	afdfe06f          	j	18fb0 <_svfprintf_r+0x168>
   1a4b8:	04813503          	ld	a0,72(sp)
   1a4bc:	04000593          	li	a1,64
   1a4c0:	f48fc0ef          	jal	ra,16c08 <_malloc_r>
   1a4c4:	01013783          	ld	a5,16(sp)
   1a4c8:	00a7b023          	sd	a0,0(a5)
   1a4cc:	00a7bc23          	sd	a0,24(a5)
   1a4d0:	00051463          	bnez	a0,1a4d8 <_svfprintf_r+0x1690>
   1a4d4:	0580106f          	j	1b52c <_svfprintf_r+0x26e4>
   1a4d8:	01013703          	ld	a4,16(sp)
   1a4dc:	04000793          	li	a5,64
   1a4e0:	02f72023          	sw	a5,32(a4)
   1a4e4:	9e9fe06f          	j	18ecc <_svfprintf_r+0x84>
   1a4e8:	000b871b          	sext.w	a4,s7
   1a4ec:	00600793          	li	a5,6
   1a4f0:	000b8e13          	mv	t3,s7
   1a4f4:	6ce7e063          	bltu	a5,a4,1abb4 <_svfprintf_r+0x1d6c>
   1a4f8:	000e0c9b          	sext.w	s9,t3
   1a4fc:	000c8a13          	mv	s4,s9
   1a500:	01613c23          	sd	s6,24(sp)
   1a504:	00007d97          	auipc	s11,0x7
   1a508:	f2cd8d93          	addi	s11,s11,-212 # 21430 <zeroes.4539+0x90>
   1a50c:	f99fe06f          	j	194a4 <_svfprintf_r+0x65c>
   1a510:	11812683          	lw	a3,280(sp)
   1a514:	5e8d5663          	bge	s10,s0,1ab00 <_svfprintf_r+0x1cb8>
   1a518:	00700c93          	li	s9,7
   1a51c:	01013b03          	ld	s6,16(sp)
   1a520:	00c0006f          	j	1a52c <_svfprintf_r+0x16e4>
   1a524:	ff04041b          	addiw	s0,s0,-16
   1a528:	5c8d5c63          	bge	s10,s0,1ab00 <_svfprintf_r+0x1cb8>
   1a52c:	0016869b          	addiw	a3,a3,1
   1a530:	01078793          	addi	a5,a5,16
   1a534:	01833023          	sd	s8,0(t1)
   1a538:	01a33423          	sd	s10,8(t1)
   1a53c:	12f13023          	sd	a5,288(sp)
   1a540:	10d12c23          	sw	a3,280(sp)
   1a544:	01030313          	addi	t1,t1,16
   1a548:	fcdcdee3          	bge	s9,a3,1a524 <_svfprintf_r+0x16dc>
   1a54c:	11010613          	addi	a2,sp,272
   1a550:	000b0593          	mv	a1,s6
   1a554:	000a8513          	mv	a0,s5
   1a558:	035030ef          	jal	ra,1dd8c <__ssprint_r>
   1a55c:	00050463          	beqz	a0,1a564 <_svfprintf_r+0x171c>
   1a560:	ad5fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a564:	12013783          	ld	a5,288(sp)
   1a568:	11812683          	lw	a3,280(sp)
   1a56c:	19010313          	addi	t1,sp,400
   1a570:	fb5ff06f          	j	1a524 <_svfprintf_r+0x16dc>
   1a574:	03013703          	ld	a4,48(sp)
   1a578:	03813c83          	ld	s9,56(sp)
   1a57c:	03213423          	sd	s2,40(sp)
   1a580:	06913423          	sd	s1,104(sp)
   1a584:	09313423          	sd	s3,136(sp)
   1a588:	04013903          	ld	s2,64(sp)
   1a58c:	03413c23          	sd	s4,56(sp)
   1a590:	05b13023          	sd	s11,64(sp)
   1a594:	00700b13          	li	s6,7
   1a598:	00ed8433          	add	s0,s11,a4
   1a59c:	09013983          	ld	s3,144(sp)
   1a5a0:	08013483          	ld	s1,128(sp)
   1a5a4:	01013a03          	ld	s4,16(sp)
   1a5a8:	0a0c8063          	beqz	s9,1a648 <_svfprintf_r+0x1800>
   1a5ac:	0a091063          	bnez	s2,1a64c <_svfprintf_r+0x1804>
   1a5b0:	fff48493          	addi	s1,s1,-1
   1a5b4:	fffc8c9b          	addiw	s9,s9,-1
   1a5b8:	07813703          	ld	a4,120(sp)
   1a5bc:	013787b3          	add	a5,a5,s3
   1a5c0:	01333423          	sd	s3,8(t1)
   1a5c4:	00e33023          	sd	a4,0(t1)
   1a5c8:	11812703          	lw	a4,280(sp)
   1a5cc:	12f13023          	sd	a5,288(sp)
   1a5d0:	01030313          	addi	t1,t1,16
   1a5d4:	0017069b          	addiw	a3,a4,1
   1a5d8:	10d12c23          	sw	a3,280(sp)
   1a5dc:	10db4263          	blt	s6,a3,1a6e0 <_svfprintf_r+0x1898>
   1a5e0:	0004c603          	lbu	a2,0(s1)
   1a5e4:	417405bb          	subw	a1,s0,s7
   1a5e8:	0006071b          	sext.w	a4,a2
   1a5ec:	00070693          	mv	a3,a4
   1a5f0:	00e5d463          	bge	a1,a4,1a5f8 <_svfprintf_r+0x17b0>
   1a5f4:	00058693          	mv	a3,a1
   1a5f8:	00068d9b          	sext.w	s11,a3
   1a5fc:	03b05863          	blez	s11,1a62c <_svfprintf_r+0x17e4>
   1a600:	11812703          	lw	a4,280(sp)
   1a604:	01b787b3          	add	a5,a5,s11
   1a608:	01733023          	sd	s7,0(t1)
   1a60c:	0017061b          	addiw	a2,a4,1
   1a610:	01b33423          	sd	s11,8(t1)
   1a614:	12f13023          	sd	a5,288(sp)
   1a618:	10c12c23          	sw	a2,280(sp)
   1a61c:	2acb4a63          	blt	s6,a2,1a8d0 <_svfprintf_r+0x1a88>
   1a620:	0004c603          	lbu	a2,0(s1)
   1a624:	01030313          	addi	t1,t1,16
   1a628:	0006071b          	sext.w	a4,a2
   1a62c:	fffdc593          	not	a1,s11
   1a630:	43f5d593          	srai	a1,a1,0x3f
   1a634:	00bdf6b3          	and	a3,s11,a1
   1a638:	40d70dbb          	subw	s11,a4,a3
   1a63c:	01b04c63          	bgtz	s11,1a654 <_svfprintf_r+0x180c>
   1a640:	00cb8bb3          	add	s7,s7,a2
   1a644:	f60c94e3          	bnez	s9,1a5ac <_svfprintf_r+0x1764>
   1a648:	62090e63          	beqz	s2,1ac84 <_svfprintf_r+0x1e3c>
   1a64c:	fff9091b          	addiw	s2,s2,-1
   1a650:	f69ff06f          	j	1a5b8 <_svfprintf_r+0x1770>
   1a654:	11812683          	lw	a3,280(sp)
   1a658:	01bd4863          	blt	s10,s11,1a668 <_svfprintf_r+0x1820>
   1a65c:	0580006f          	j	1a6b4 <_svfprintf_r+0x186c>
   1a660:	ff0d8d9b          	addiw	s11,s11,-16
   1a664:	05bd5863          	bge	s10,s11,1a6b4 <_svfprintf_r+0x186c>
   1a668:	0016869b          	addiw	a3,a3,1
   1a66c:	01078793          	addi	a5,a5,16
   1a670:	01833023          	sd	s8,0(t1)
   1a674:	01a33423          	sd	s10,8(t1)
   1a678:	12f13023          	sd	a5,288(sp)
   1a67c:	10d12c23          	sw	a3,280(sp)
   1a680:	01030313          	addi	t1,t1,16
   1a684:	fcdb5ee3          	bge	s6,a3,1a660 <_svfprintf_r+0x1818>
   1a688:	11010613          	addi	a2,sp,272
   1a68c:	000a0593          	mv	a1,s4
   1a690:	000a8513          	mv	a0,s5
   1a694:	6f8030ef          	jal	ra,1dd8c <__ssprint_r>
   1a698:	00050463          	beqz	a0,1a6a0 <_svfprintf_r+0x1858>
   1a69c:	999fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a6a0:	ff0d8d9b          	addiw	s11,s11,-16
   1a6a4:	12013783          	ld	a5,288(sp)
   1a6a8:	11812683          	lw	a3,280(sp)
   1a6ac:	19010313          	addi	t1,sp,400
   1a6b0:	fbbd4ce3          	blt	s10,s11,1a668 <_svfprintf_r+0x1820>
   1a6b4:	0016871b          	addiw	a4,a3,1
   1a6b8:	01b787b3          	add	a5,a5,s11
   1a6bc:	01833023          	sd	s8,0(t1)
   1a6c0:	01b33423          	sd	s11,8(t1)
   1a6c4:	12f13023          	sd	a5,288(sp)
   1a6c8:	10e12c23          	sw	a4,280(sp)
   1a6cc:	70eb4863          	blt	s6,a4,1addc <_svfprintf_r+0x1f94>
   1a6d0:	0004c603          	lbu	a2,0(s1)
   1a6d4:	01030313          	addi	t1,t1,16
   1a6d8:	00cb8bb3          	add	s7,s7,a2
   1a6dc:	f69ff06f          	j	1a644 <_svfprintf_r+0x17fc>
   1a6e0:	11010613          	addi	a2,sp,272
   1a6e4:	000a0593          	mv	a1,s4
   1a6e8:	000a8513          	mv	a0,s5
   1a6ec:	6a0030ef          	jal	ra,1dd8c <__ssprint_r>
   1a6f0:	00050463          	beqz	a0,1a6f8 <_svfprintf_r+0x18b0>
   1a6f4:	941fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a6f8:	12013783          	ld	a5,288(sp)
   1a6fc:	19010313          	addi	t1,sp,400
   1a700:	ee1ff06f          	j	1a5e0 <_svfprintf_r+0x1798>
   1a704:	01013583          	ld	a1,16(sp)
   1a708:	11010613          	addi	a2,sp,272
   1a70c:	000a8513          	mv	a0,s5
   1a710:	67c030ef          	jal	ra,1dd8c <__ssprint_r>
   1a714:	00050463          	beqz	a0,1a71c <_svfprintf_r+0x18d4>
   1a718:	91dfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a71c:	11812583          	lw	a1,280(sp)
   1a720:	12013c83          	ld	s9,288(sp)
   1a724:	1a010313          	addi	t1,sp,416
   1a728:	00158b1b          	addiw	s6,a1,1
   1a72c:	19010413          	addi	s0,sp,400
   1a730:	fedfe06f          	j	1971c <_svfprintf_r+0x8d4>
   1a734:	11812683          	lw	a3,280(sp)
   1a738:	00007617          	auipc	a2,0x7
   1a73c:	d0060613          	addi	a2,a2,-768 # 21438 <zeroes.4539+0x98>
   1a740:	00c33023          	sd	a2,0(t1)
   1a744:	0016869b          	addiw	a3,a3,1
   1a748:	00100613          	li	a2,1
   1a74c:	00178793          	addi	a5,a5,1
   1a750:	00c33423          	sd	a2,8(t1)
   1a754:	10d12c23          	sw	a3,280(sp)
   1a758:	0006861b          	sext.w	a2,a3
   1a75c:	12f13023          	sd	a5,288(sp)
   1a760:	00700693          	li	a3,7
   1a764:	01030313          	addi	t1,t1,16
   1a768:	06c6cc63          	blt	a3,a2,1a7e0 <_svfprintf_r+0x1998>
   1a76c:	1e059863          	bnez	a1,1a95c <_svfprintf_r+0x1b14>
   1a770:	03013703          	ld	a4,48(sp)
   1a774:	0014f693          	andi	a3,s1,1
   1a778:	00d766b3          	or	a3,a4,a3
   1a77c:	00069463          	bnez	a3,1a784 <_svfprintf_r+0x193c>
   1a780:	e11fe06f          	j	19590 <_svfprintf_r+0x748>
   1a784:	11812603          	lw	a2,280(sp)
   1a788:	05013703          	ld	a4,80(sp)
   1a78c:	06013683          	ld	a3,96(sp)
   1a790:	00e787b3          	add	a5,a5,a4
   1a794:	00d33023          	sd	a3,0(t1)
   1a798:	0016069b          	addiw	a3,a2,1
   1a79c:	00e33423          	sd	a4,8(t1)
   1a7a0:	12f13023          	sd	a5,288(sp)
   1a7a4:	10d12c23          	sw	a3,280(sp)
   1a7a8:	00700613          	li	a2,7
   1a7ac:	48d64c63          	blt	a2,a3,1ac44 <_svfprintf_r+0x1dfc>
   1a7b0:	01030313          	addi	t1,t1,16
   1a7b4:	03013703          	ld	a4,48(sp)
   1a7b8:	0016861b          	addiw	a2,a3,1
   1a7bc:	01b33023          	sd	s11,0(t1)
   1a7c0:	00f707b3          	add	a5,a4,a5
   1a7c4:	00e33423          	sd	a4,8(t1)
   1a7c8:	12f13023          	sd	a5,288(sp)
   1a7cc:	10c12c23          	sw	a2,280(sp)
   1a7d0:	00700713          	li	a4,7
   1a7d4:	00c74463          	blt	a4,a2,1a7dc <_svfprintf_r+0x1994>
   1a7d8:	db5fe06f          	j	1958c <_svfprintf_r+0x744>
   1a7dc:	f65fe06f          	j	19740 <_svfprintf_r+0x8f8>
   1a7e0:	01013583          	ld	a1,16(sp)
   1a7e4:	11010613          	addi	a2,sp,272
   1a7e8:	000a8513          	mv	a0,s5
   1a7ec:	5a0030ef          	jal	ra,1dd8c <__ssprint_r>
   1a7f0:	00050463          	beqz	a0,1a7f8 <_svfprintf_r+0x19b0>
   1a7f4:	841fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a7f8:	0e812583          	lw	a1,232(sp)
   1a7fc:	12013783          	ld	a5,288(sp)
   1a800:	19010313          	addi	t1,sp,400
   1a804:	f69ff06f          	j	1a76c <_svfprintf_r+0x1924>
   1a808:	400a7493          	andi	s1,s4,1024
   1a80c:	03213023          	sd	s2,32(sp)
   1a810:	08013903          	ld	s2,128(sp)
   1a814:	18c10c93          	addi	s9,sp,396
   1a818:	0004849b          	sext.w	s1,s1
   1a81c:	00000793          	li	a5,0
   1a820:	000c8d93          	mv	s11,s9
   1a824:	02813423          	sd	s0,40(sp)
   1a828:	03313c23          	sd	s3,56(sp)
   1a82c:	000c8413          	mv	s0,s9
   1a830:	000b0993          	mv	s3,s6
   1a834:	000a8c93          	mv	s9,s5
   1a838:	00048b13          	mv	s6,s1
   1a83c:	00030a93          	mv	s5,t1
   1a840:	00078493          	mv	s1,a5
   1a844:	00a00593          	li	a1,10
   1a848:	00098513          	mv	a0,s3
   1a84c:	a59f50ef          	jal	ra,102a4 <__umoddi3>
   1a850:	0305051b          	addiw	a0,a0,48
   1a854:	fea40fa3          	sb	a0,-1(s0)
   1a858:	0014849b          	addiw	s1,s1,1
   1a85c:	fff40413          	addi	s0,s0,-1
   1a860:	000b0663          	beqz	s6,1a86c <_svfprintf_r+0x1a24>
   1a864:	00094683          	lbu	a3,0(s2)
   1a868:	bcd48a63          	beq	s1,a3,19c3c <_svfprintf_r+0xdf4>
   1a86c:	00a00593          	li	a1,10
   1a870:	00098513          	mv	a0,s3
   1a874:	9e9f50ef          	jal	ra,1025c <__udivdi3>
   1a878:	00900793          	li	a5,9
   1a87c:	bd37f863          	bgeu	a5,s3,19c4c <_svfprintf_r+0xe04>
   1a880:	00050993          	mv	s3,a0
   1a884:	fc1ff06f          	j	1a844 <_svfprintf_r+0x19fc>
   1a888:	01013583          	ld	a1,16(sp)
   1a88c:	11010613          	addi	a2,sp,272
   1a890:	000a8513          	mv	a0,s5
   1a894:	4f8030ef          	jal	ra,1dd8c <__ssprint_r>
   1a898:	00050463          	beqz	a0,1a8a0 <_svfprintf_r+0x1a58>
   1a89c:	f98fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a8a0:	19010313          	addi	t1,sp,400
   1a8a4:	c40ff06f          	j	19ce4 <_svfprintf_r+0xe9c>
   1a8a8:	0017069b          	addiw	a3,a4,1
   1a8ac:	01833023          	sd	s8,0(t1)
   1a8b0:	00833423          	sd	s0,8(t1)
   1a8b4:	008787b3          	add	a5,a5,s0
   1a8b8:	12f13023          	sd	a5,288(sp)
   1a8bc:	10d12c23          	sw	a3,280(sp)
   1a8c0:	00700713          	li	a4,7
   1a8c4:	00d74463          	blt	a4,a3,1a8cc <_svfprintf_r+0x1a84>
   1a8c8:	cc5fe06f          	j	1958c <_svfprintf_r+0x744>
   1a8cc:	e75fe06f          	j	19740 <_svfprintf_r+0x8f8>
   1a8d0:	11010613          	addi	a2,sp,272
   1a8d4:	000a0593          	mv	a1,s4
   1a8d8:	000a8513          	mv	a0,s5
   1a8dc:	4b0030ef          	jal	ra,1dd8c <__ssprint_r>
   1a8e0:	00050463          	beqz	a0,1a8e8 <_svfprintf_r+0x1aa0>
   1a8e4:	f50fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a8e8:	0004c603          	lbu	a2,0(s1)
   1a8ec:	12013783          	ld	a5,288(sp)
   1a8f0:	19010313          	addi	t1,sp,400
   1a8f4:	0006071b          	sext.w	a4,a2
   1a8f8:	d35ff06f          	j	1a62c <_svfprintf_r+0x17e4>
   1a8fc:	10013503          	ld	a0,256(sp)
   1a900:	10813583          	ld	a1,264(sp)
   1a904:	00000613          	li	a2,0
   1a908:	00000693          	li	a3,0
   1a90c:	4f8050ef          	jal	ra,1fe04 <__letf2>
   1a910:	02013303          	ld	t1,32(sp)
   1a914:	52054663          	bltz	a0,1ae40 <_svfprintf_r+0x1ff8>
   1a918:	0df14783          	lbu	a5,223(sp)
   1a91c:	04700693          	li	a3,71
   1a920:	00007d97          	auipc	s11,0x7
   1a924:	ac0d8d93          	addi	s11,s11,-1344 # 213e0 <zeroes.4539+0x40>
   1a928:	2286c063          	blt	a3,s0,1ab48 <_svfprintf_r+0x1d00>
   1a92c:	f7f4f493          	andi	s1,s1,-129
   1a930:	02013023          	sd	zero,32(sp)
   1a934:	04013023          	sd	zero,64(sp)
   1a938:	02013c23          	sd	zero,56(sp)
   1a93c:	02013423          	sd	zero,40(sp)
   1a940:	0004849b          	sext.w	s1,s1
   1a944:	00300a13          	li	s4,3
   1a948:	00300c93          	li	s9,3
   1a94c:	00000b93          	li	s7,0
   1a950:	00078463          	beqz	a5,1a958 <_svfprintf_r+0x1b10>
   1a954:	ff4fe06f          	j	19148 <_svfprintf_r+0x300>
   1a958:	b61fe06f          	j	194b8 <_svfprintf_r+0x670>
   1a95c:	11812603          	lw	a2,280(sp)
   1a960:	05013703          	ld	a4,80(sp)
   1a964:	06013683          	ld	a3,96(sp)
   1a968:	01030313          	addi	t1,t1,16
   1a96c:	00e787b3          	add	a5,a5,a4
   1a970:	fed33823          	sd	a3,-16(t1)
   1a974:	0016069b          	addiw	a3,a2,1
   1a978:	fee33c23          	sd	a4,-8(t1)
   1a97c:	12f13023          	sd	a5,288(sp)
   1a980:	10d12c23          	sw	a3,280(sp)
   1a984:	00700613          	li	a2,7
   1a988:	2ad64e63          	blt	a2,a3,1ac44 <_svfprintf_r+0x1dfc>
   1a98c:	e205d4e3          	bgez	a1,1a7b4 <_svfprintf_r+0x196c>
   1a990:	ff000613          	li	a2,-16
   1a994:	40b0043b          	negw	s0,a1
   1a998:	0ec5d6e3          	bge	a1,a2,1b284 <_svfprintf_r+0x243c>
   1a99c:	00700c93          	li	s9,7
   1a9a0:	01013b03          	ld	s6,16(sp)
   1a9a4:	00c0006f          	j	1a9b0 <_svfprintf_r+0x1b68>
   1a9a8:	ff04041b          	addiw	s0,s0,-16
   1a9ac:	0c8d5ce3          	bge	s10,s0,1b284 <_svfprintf_r+0x243c>
   1a9b0:	0016869b          	addiw	a3,a3,1
   1a9b4:	01078793          	addi	a5,a5,16
   1a9b8:	01833023          	sd	s8,0(t1)
   1a9bc:	01a33423          	sd	s10,8(t1)
   1a9c0:	12f13023          	sd	a5,288(sp)
   1a9c4:	10d12c23          	sw	a3,280(sp)
   1a9c8:	01030313          	addi	t1,t1,16
   1a9cc:	fcdcdee3          	bge	s9,a3,1a9a8 <_svfprintf_r+0x1b60>
   1a9d0:	11010613          	addi	a2,sp,272
   1a9d4:	000b0593          	mv	a1,s6
   1a9d8:	000a8513          	mv	a0,s5
   1a9dc:	3b0030ef          	jal	ra,1dd8c <__ssprint_r>
   1a9e0:	00050463          	beqz	a0,1a9e8 <_svfprintf_r+0x1ba0>
   1a9e4:	e50fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1a9e8:	12013783          	ld	a5,288(sp)
   1a9ec:	11812683          	lw	a3,280(sp)
   1a9f0:	19010313          	addi	t1,sp,400
   1a9f4:	fb5ff06f          	j	1a9a8 <_svfprintf_r+0x1b60>
   1a9f8:	000d8513          	mv	a0,s11
   1a9fc:	07913423          	sd	s9,104(sp)
   1aa00:	aa8fe0ef          	jal	ra,18ca8 <strlen>
   1aa04:	00050c9b          	sext.w	s9,a0
   1aa08:	fffcca13          	not	s4,s9
   1aa0c:	0df14783          	lbu	a5,223(sp)
   1aa10:	43fa5a13          	srai	s4,s4,0x3f
   1aa14:	014cfa33          	and	s4,s9,s4
   1aa18:	01613c23          	sd	s6,24(sp)
   1aa1c:	02013023          	sd	zero,32(sp)
   1aa20:	04013023          	sd	zero,64(sp)
   1aa24:	02013c23          	sd	zero,56(sp)
   1aa28:	02013423          	sd	zero,40(sp)
   1aa2c:	000a0a1b          	sext.w	s4,s4
   1aa30:	00000b93          	li	s7,0
   1aa34:	06813303          	ld	t1,104(sp)
   1aa38:	00078463          	beqz	a5,1aa40 <_svfprintf_r+0x1bf8>
   1aa3c:	f0cfe06f          	j	19148 <_svfprintf_r+0x300>
   1aa40:	a79fe06f          	j	194b8 <_svfprintf_r+0x670>
   1aa44:	00178b1b          	addiw	s6,a5,1
   1aa48:	01040793          	addi	a5,s0,16
   1aa4c:	017c8cb3          	add	s9,s9,s7
   1aa50:	01843023          	sd	s8,0(s0)
   1aa54:	01743423          	sd	s7,8(s0)
   1aa58:	13913023          	sd	s9,288(sp)
   1aa5c:	11612c23          	sw	s6,280(sp)
   1aa60:	00700713          	li	a4,7
   1aa64:	cb6740e3          	blt	a4,s6,1a704 <_svfprintf_r+0x18bc>
   1aa68:	001b0b1b          	addiw	s6,s6,1
   1aa6c:	01078313          	addi	t1,a5,16
   1aa70:	00078413          	mv	s0,a5
   1aa74:	ca9fe06f          	j	1971c <_svfprintf_r+0x8d4>
   1aa78:	2004f793          	andi	a5,s1,512
   1aa7c:	1a078263          	beqz	a5,1ac20 <_svfprintf_r+0x1dd8>
   1aa80:	0ffb7b13          	andi	s6,s6,255
   1aa84:	00e13c23          	sd	a4,24(sp)
   1aa88:	00048a13          	mv	s4,s1
   1aa8c:	00100793          	li	a5,1
   1aa90:	e60fe06f          	j	190f0 <_svfprintf_r+0x2a8>
   1aa94:	2004f793          	andi	a5,s1,512
   1aa98:	16078863          	beqz	a5,1ac08 <_svfprintf_r+0x1dc0>
   1aa9c:	01813783          	ld	a5,24(sp)
   1aaa0:	00048a13          	mv	s4,s1
   1aaa4:	00e13c23          	sd	a4,24(sp)
   1aaa8:	00078b03          	lb	s6,0(a5)
   1aaac:	000b0793          	mv	a5,s6
   1aab0:	8edfe06f          	j	1939c <_svfprintf_r+0x554>
   1aab4:	2004f793          	andi	a5,s1,512
   1aab8:	14078063          	beqz	a5,1abf8 <_svfprintf_r+0x1db0>
   1aabc:	0ffb7b13          	andi	s6,s6,255
   1aac0:	00e13c23          	sd	a4,24(sp)
   1aac4:	841fe06f          	j	19304 <_svfprintf_r+0x4bc>
   1aac8:	2004f793          	andi	a5,s1,512
   1aacc:	12078063          	beqz	a5,1abec <_svfprintf_r+0x1da4>
   1aad0:	0ffb7b13          	andi	s6,s6,255
   1aad4:	decfe06f          	j	190c0 <_svfprintf_r+0x278>
   1aad8:	10813783          	ld	a5,264(sp)
   1aadc:	1407ce63          	bltz	a5,1ac38 <_svfprintf_r+0x1df0>
   1aae0:	0df14783          	lbu	a5,223(sp)
   1aae4:	04700693          	li	a3,71
   1aae8:	00007d97          	auipc	s11,0x7
   1aaec:	908d8d93          	addi	s11,s11,-1784 # 213f0 <zeroes.4539+0x50>
   1aaf0:	e286dee3          	bge	a3,s0,1a92c <_svfprintf_r+0x1ae4>
   1aaf4:	00007d97          	auipc	s11,0x7
   1aaf8:	904d8d93          	addi	s11,s11,-1788 # 213f8 <zeroes.4539+0x58>
   1aafc:	e31ff06f          	j	1a92c <_svfprintf_r+0x1ae4>
   1ab00:	0016861b          	addiw	a2,a3,1
   1ab04:	008787b3          	add	a5,a5,s0
   1ab08:	01833023          	sd	s8,0(t1)
   1ab0c:	00833423          	sd	s0,8(t1)
   1ab10:	12f13023          	sd	a5,288(sp)
   1ab14:	10c12c23          	sw	a2,280(sp)
   1ab18:	00700693          	li	a3,7
   1ab1c:	01030313          	addi	t1,t1,16
   1ab20:	eec6d063          	bge	a3,a2,1a200 <_svfprintf_r+0x13b8>
   1ab24:	01013583          	ld	a1,16(sp)
   1ab28:	11010613          	addi	a2,sp,272
   1ab2c:	000a8513          	mv	a0,s5
   1ab30:	25c030ef          	jal	ra,1dd8c <__ssprint_r>
   1ab34:	00050463          	beqz	a0,1ab3c <_svfprintf_r+0x1cf4>
   1ab38:	cfcfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1ab3c:	12013783          	ld	a5,288(sp)
   1ab40:	19010313          	addi	t1,sp,400
   1ab44:	ebcff06f          	j	1a200 <_svfprintf_r+0x13b8>
   1ab48:	00007d97          	auipc	s11,0x7
   1ab4c:	8a0d8d93          	addi	s11,s11,-1888 # 213e8 <zeroes.4539+0x48>
   1ab50:	dddff06f          	j	1a92c <_svfprintf_r+0x1ae4>
   1ab54:	01013583          	ld	a1,16(sp)
   1ab58:	11010613          	addi	a2,sp,272
   1ab5c:	000a8513          	mv	a0,s5
   1ab60:	22c030ef          	jal	ra,1dd8c <__ssprint_r>
   1ab64:	00050463          	beqz	a0,1ab6c <_svfprintf_r+0x1d24>
   1ab68:	cccfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1ab6c:	12013783          	ld	a5,288(sp)
   1ab70:	19010313          	addi	t1,sp,400
   1ab74:	e74ff06f          	j	1a1e8 <_svfprintf_r+0x13a0>
   1ab78:	09013783          	ld	a5,144(sp)
   1ab7c:	07813583          	ld	a1,120(sp)
   1ab80:	00000493          	li	s1,0
   1ab84:	40f40433          	sub	s0,s0,a5
   1ab88:	00078613          	mv	a2,a5
   1ab8c:	00040513          	mv	a0,s0
   1ab90:	9e8fe0ef          	jal	ra,18d78 <strncpy>
   1ab94:	00194683          	lbu	a3,1(s2)
   1ab98:	00098513          	mv	a0,s3
   1ab9c:	00a00593          	li	a1,10
   1aba0:	00d03733          	snez	a4,a3
   1aba4:	00e90933          	add	s2,s2,a4
   1aba8:	eb4f50ef          	jal	ra,1025c <__udivdi3>
   1abac:	00050993          	mv	s3,a0
   1abb0:	c95ff06f          	j	1a844 <_svfprintf_r+0x19fc>
   1abb4:	00600e13          	li	t3,6
   1abb8:	941ff06f          	j	1a4f8 <_svfprintf_r+0x16b0>
   1abbc:	03013703          	ld	a4,48(sp)
   1abc0:	40d7063b          	subw	a2,a4,a3
   1abc4:	00ed8733          	add	a4,s11,a4
   1abc8:	4177083b          	subw	a6,a4,s7
   1abcc:	00060413          	mv	s0,a2
   1abd0:	ecc85863          	bge	a6,a2,1a2a0 <_svfprintf_r+0x1458>
   1abd4:	0008041b          	sext.w	s0,a6
   1abd8:	ec8ff06f          	j	1a2a0 <_svfprintf_r+0x1458>
   1abdc:	00813783          	ld	a5,8(sp)
   1abe0:	00090d93          	mv	s11,s2
   1abe4:	00f71023          	sh	a5,0(a4)
   1abe8:	9f5fe06f          	j	195dc <_svfprintf_r+0x794>
   1abec:	020b1b13          	slli	s6,s6,0x20
   1abf0:	020b5b13          	srli	s6,s6,0x20
   1abf4:	cccfe06f          	j	190c0 <_svfprintf_r+0x278>
   1abf8:	020b1b13          	slli	s6,s6,0x20
   1abfc:	020b5b13          	srli	s6,s6,0x20
   1ac00:	00e13c23          	sd	a4,24(sp)
   1ac04:	f00fe06f          	j	19304 <_svfprintf_r+0x4bc>
   1ac08:	01813783          	ld	a5,24(sp)
   1ac0c:	00048a13          	mv	s4,s1
   1ac10:	00e13c23          	sd	a4,24(sp)
   1ac14:	0007ab03          	lw	s6,0(a5)
   1ac18:	000b0793          	mv	a5,s6
   1ac1c:	f80fe06f          	j	1939c <_svfprintf_r+0x554>
   1ac20:	020b1b13          	slli	s6,s6,0x20
   1ac24:	020b5b13          	srli	s6,s6,0x20
   1ac28:	00e13c23          	sd	a4,24(sp)
   1ac2c:	00048a13          	mv	s4,s1
   1ac30:	00100793          	li	a5,1
   1ac34:	cbcfe06f          	j	190f0 <_svfprintf_r+0x2a8>
   1ac38:	02d00793          	li	a5,45
   1ac3c:	0cf10fa3          	sb	a5,223(sp)
   1ac40:	ea5ff06f          	j	1aae4 <_svfprintf_r+0x1c9c>
   1ac44:	01013583          	ld	a1,16(sp)
   1ac48:	11010613          	addi	a2,sp,272
   1ac4c:	000a8513          	mv	a0,s5
   1ac50:	13c030ef          	jal	ra,1dd8c <__ssprint_r>
   1ac54:	00050463          	beqz	a0,1ac5c <_svfprintf_r+0x1e14>
   1ac58:	bdcfe06f          	j	19034 <_svfprintf_r+0x1ec>
   1ac5c:	0e812583          	lw	a1,232(sp)
   1ac60:	12013783          	ld	a5,288(sp)
   1ac64:	11812683          	lw	a3,280(sp)
   1ac68:	19010313          	addi	t1,sp,400
   1ac6c:	b405d4e3          	bgez	a1,1a7b4 <_svfprintf_r+0x196c>
   1ac70:	d21ff06f          	j	1a990 <_svfprintf_r+0x1b48>
   1ac74:	00600b93          	li	s7,6
   1ac78:	b7dfe06f          	j	197f4 <_svfprintf_r+0x9ac>
   1ac7c:	00048a13          	mv	s4,s1
   1ac80:	fa5fe06f          	j	19c24 <_svfprintf_r+0xddc>
   1ac84:	04013d83          	ld	s11,64(sp)
   1ac88:	03013703          	ld	a4,48(sp)
   1ac8c:	08913023          	sd	s1,128(sp)
   1ac90:	02813903          	ld	s2,40(sp)
   1ac94:	00ed86b3          	add	a3,s11,a4
   1ac98:	08813983          	ld	s3,136(sp)
   1ac9c:	06813483          	ld	s1,104(sp)
   1aca0:	03813a03          	ld	s4,56(sp)
   1aca4:	d776f663          	bgeu	a3,s7,1a210 <_svfprintf_r+0x13c8>
   1aca8:	00068b93          	mv	s7,a3
   1acac:	d64ff06f          	j	1a210 <_svfprintf_r+0x13c8>
   1acb0:	02813703          	ld	a4,40(sp)
   1acb4:	ffd00793          	li	a5,-3
   1acb8:	00f74463          	blt	a4,a5,1acc0 <_svfprintf_r+0x1e78>
   1acbc:	00ebda63          	bge	s7,a4,1acd0 <_svfprintf_r+0x1e88>
   1acc0:	ffe4041b          	addiw	s0,s0,-2
   1acc4:	fdf47793          	andi	a5,s0,-33
   1acc8:	02f13c23          	sd	a5,56(sp)
   1accc:	bfdfe06f          	j	198c8 <_svfprintf_r+0xa80>
   1acd0:	03013783          	ld	a5,48(sp)
   1acd4:	02813703          	ld	a4,40(sp)
   1acd8:	1ef74c63          	blt	a4,a5,1aed0 <_svfprintf_r+0x2088>
   1acdc:	04013783          	ld	a5,64(sp)
   1ace0:	00070c93          	mv	s9,a4
   1ace4:	0017f793          	andi	a5,a5,1
   1ace8:	00078663          	beqz	a5,1acf4 <_svfprintf_r+0x1eac>
   1acec:	05013783          	ld	a5,80(sp)
   1acf0:	00e78cbb          	addw	s9,a5,a4
   1acf4:	04013783          	ld	a5,64(sp)
   1acf8:	4007f793          	andi	a5,a5,1024
   1acfc:	00078663          	beqz	a5,1ad08 <_svfprintf_r+0x1ec0>
   1ad00:	02813783          	ld	a5,40(sp)
   1ad04:	68f04a63          	bgtz	a5,1b398 <_svfprintf_r+0x2550>
   1ad08:	fffcca13          	not	s4,s9
   1ad0c:	43fa5a13          	srai	s4,s4,0x3f
   1ad10:	014cfa33          	and	s4,s9,s4
   1ad14:	000a0a1b          	sext.w	s4,s4
   1ad18:	06700413          	li	s0,103
   1ad1c:	04013023          	sd	zero,64(sp)
   1ad20:	02013c23          	sd	zero,56(sp)
   1ad24:	ce9fe06f          	j	19a0c <_svfprintf_r+0xbc4>
   1ad28:	0e810793          	addi	a5,sp,232
   1ad2c:	00300693          	li	a3,3
   1ad30:	000e8593          	mv	a1,t4
   1ad34:	0f810893          	addi	a7,sp,248
   1ad38:	0ec10813          	addi	a6,sp,236
   1ad3c:	000b8713          	mv	a4,s7
   1ad40:	000c8613          	mv	a2,s9
   1ad44:	000a8513          	mv	a0,s5
   1ad48:	02613823          	sd	t1,48(sp)
   1ad4c:	03d13423          	sd	t4,40(sp)
   1ad50:	8a5fa0ef          	jal	ra,155f4 <_ldtoa_r>
   1ad54:	00054683          	lbu	a3,0(a0)
   1ad58:	03000793          	li	a5,48
   1ad5c:	00050d93          	mv	s11,a0
   1ad60:	02813e83          	ld	t4,40(sp)
   1ad64:	03013303          	ld	t1,48(sp)
   1ad68:	0af68063          	beq	a3,a5,1ae08 <_svfprintf_r+0x1fc0>
   1ad6c:	0e812783          	lw	a5,232(sp)
   1ad70:	017787b3          	add	a5,a5,s7
   1ad74:	00fd8a33          	add	s4,s11,a5
   1ad78:	00000613          	li	a2,0
   1ad7c:	00000693          	li	a3,0
   1ad80:	000e8513          	mv	a0,t4
   1ad84:	000c8593          	mv	a1,s9
   1ad88:	02613423          	sd	t1,40(sp)
   1ad8c:	70d040ef          	jal	ra,1fc98 <__eqtf2>
   1ad90:	000a0793          	mv	a5,s4
   1ad94:	02813303          	ld	t1,40(sp)
   1ad98:	00051463          	bnez	a0,1ada0 <_svfprintf_r+0x1f58>
   1ad9c:	afdfe06f          	j	19898 <_svfprintf_r+0xa50>
   1ada0:	0f813783          	ld	a5,248(sp)
   1ada4:	03000613          	li	a2,48
   1ada8:	0147e463          	bltu	a5,s4,1adb0 <_svfprintf_r+0x1f68>
   1adac:	aedfe06f          	j	19898 <_svfprintf_r+0xa50>
   1adb0:	00178713          	addi	a4,a5,1
   1adb4:	0ee13c23          	sd	a4,248(sp)
   1adb8:	00c78023          	sb	a2,0(a5)
   1adbc:	0f813783          	ld	a5,248(sp)
   1adc0:	ff47e8e3          	bltu	a5,s4,1adb0 <_svfprintf_r+0x1f68>
   1adc4:	ad5fe06f          	j	19898 <_svfprintf_r+0xa50>
   1adc8:	0df14783          	lbu	a5,223(sp)
   1adcc:	00000b93          	li	s7,0
   1add0:	00078463          	beqz	a5,1add8 <_svfprintf_r+0x1f90>
   1add4:	b74fe06f          	j	19148 <_svfprintf_r+0x300>
   1add8:	ee0fe06f          	j	194b8 <_svfprintf_r+0x670>
   1addc:	11010613          	addi	a2,sp,272
   1ade0:	000a0593          	mv	a1,s4
   1ade4:	000a8513          	mv	a0,s5
   1ade8:	7a5020ef          	jal	ra,1dd8c <__ssprint_r>
   1adec:	00050463          	beqz	a0,1adf4 <_svfprintf_r+0x1fac>
   1adf0:	a44fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1adf4:	0004c603          	lbu	a2,0(s1)
   1adf8:	12013783          	ld	a5,288(sp)
   1adfc:	19010313          	addi	t1,sp,400
   1ae00:	00cb8bb3          	add	s7,s7,a2
   1ae04:	841ff06f          	j	1a644 <_svfprintf_r+0x17fc>
   1ae08:	000e8513          	mv	a0,t4
   1ae0c:	00000613          	li	a2,0
   1ae10:	00000693          	li	a3,0
   1ae14:	000c8593          	mv	a1,s9
   1ae18:	02613823          	sd	t1,48(sp)
   1ae1c:	03d13423          	sd	t4,40(sp)
   1ae20:	679040ef          	jal	ra,1fc98 <__eqtf2>
   1ae24:	02813e83          	ld	t4,40(sp)
   1ae28:	03013303          	ld	t1,48(sp)
   1ae2c:	f40500e3          	beqz	a0,1ad6c <_svfprintf_r+0x1f24>
   1ae30:	00100693          	li	a3,1
   1ae34:	417687bb          	subw	a5,a3,s7
   1ae38:	0ef12423          	sw	a5,232(sp)
   1ae3c:	f35ff06f          	j	1ad70 <_svfprintf_r+0x1f28>
   1ae40:	02d00793          	li	a5,45
   1ae44:	0cf10fa3          	sb	a5,223(sp)
   1ae48:	ad5ff06f          	j	1a91c <_svfprintf_r+0x1ad4>
   1ae4c:	01013583          	ld	a1,16(sp)
   1ae50:	11010613          	addi	a2,sp,272
   1ae54:	000a8513          	mv	a0,s5
   1ae58:	735020ef          	jal	ra,1dd8c <__ssprint_r>
   1ae5c:	00050463          	beqz	a0,1ae64 <_svfprintf_r+0x201c>
   1ae60:	9d4fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1ae64:	0e812683          	lw	a3,232(sp)
   1ae68:	12013783          	ld	a5,288(sp)
   1ae6c:	19010313          	addi	t1,sp,400
   1ae70:	be4ff06f          	j	1a254 <_svfprintf_r+0x140c>
   1ae74:	0df14783          	lbu	a5,223(sp)
   1ae78:	01613c23          	sd	s6,24(sp)
   1ae7c:	04013023          	sd	zero,64(sp)
   1ae80:	02013c23          	sd	zero,56(sp)
   1ae84:	02013423          	sd	zero,40(sp)
   1ae88:	000b8a13          	mv	s4,s7
   1ae8c:	000b8c93          	mv	s9,s7
   1ae90:	00000b93          	li	s7,0
   1ae94:	00078463          	beqz	a5,1ae9c <_svfprintf_r+0x2054>
   1ae98:	ab0fe06f          	j	19148 <_svfprintf_r+0x300>
   1ae9c:	e1cfe06f          	j	194b8 <_svfprintf_r+0x670>
   1aea0:	01013583          	ld	a1,16(sp)
   1aea4:	11010613          	addi	a2,sp,272
   1aea8:	000a8513          	mv	a0,s5
   1aeac:	6e1020ef          	jal	ra,1dd8c <__ssprint_r>
   1aeb0:	00050463          	beqz	a0,1aeb8 <_svfprintf_r+0x2070>
   1aeb4:	980fe06f          	j	19034 <_svfprintf_r+0x1ec>
   1aeb8:	0e812603          	lw	a2,232(sp)
   1aebc:	03013703          	ld	a4,48(sp)
   1aec0:	12013783          	ld	a5,288(sp)
   1aec4:	19010313          	addi	t1,sp,400
   1aec8:	40c7063b          	subw	a2,a4,a2
   1aecc:	bd4ff06f          	j	1a2a0 <_svfprintf_r+0x1458>
   1aed0:	03013703          	ld	a4,48(sp)
   1aed4:	05013783          	ld	a5,80(sp)
   1aed8:	06700413          	li	s0,103
   1aedc:	00e78cbb          	addw	s9,a5,a4
   1aee0:	02813703          	ld	a4,40(sp)
   1aee4:	58e05a63          	blez	a4,1b478 <_svfprintf_r+0x2630>
   1aee8:	04013783          	ld	a5,64(sp)
   1aeec:	4007f793          	andi	a5,a5,1024
   1aef0:	4a079663          	bnez	a5,1b39c <_svfprintf_r+0x2554>
   1aef4:	fffcca13          	not	s4,s9
   1aef8:	43fa5a13          	srai	s4,s4,0x3f
   1aefc:	014cfa33          	and	s4,s9,s4
   1af00:	000a0a1b          	sext.w	s4,s4
   1af04:	e19ff06f          	j	1ad1c <_svfprintf_r+0x1ed4>
   1af08:	04013783          	ld	a5,64(sp)
   1af0c:	02813703          	ld	a4,40(sp)
   1af10:	0017f793          	andi	a5,a5,1
   1af14:	00fbe7b3          	or	a5,s7,a5
   1af18:	0007879b          	sext.w	a5,a5
   1af1c:	58e05863          	blez	a4,1b4ac <_svfprintf_r+0x2664>
   1af20:	54079263          	bnez	a5,1b464 <_svfprintf_r+0x261c>
   1af24:	02813c83          	ld	s9,40(sp)
   1af28:	06600413          	li	s0,102
   1af2c:	fbdff06f          	j	1aee8 <_svfprintf_r+0x20a0>
   1af30:	03000793          	li	a5,48
   1af34:	0ef10023          	sb	a5,224(sp)
   1af38:	05800713          	li	a4,88
   1af3c:	0024e793          	ori	a5,s1,2
   1af40:	0007879b          	sext.w	a5,a5
   1af44:	0ee100a3          	sb	a4,225(sp)
   1af48:	06300693          	li	a3,99
   1af4c:	04f13023          	sd	a5,64(sp)
   1af50:	02013023          	sd	zero,32(sp)
   1af54:	12810d93          	addi	s11,sp,296
   1af58:	2b76cc63          	blt	a3,s7,1b210 <_svfprintf_r+0x23c8>
   1af5c:	10813c83          	ld	s9,264(sp)
   1af60:	fdf47793          	andi	a5,s0,-33
   1af64:	1024e493          	ori	s1,s1,258
   1af68:	02f13c23          	sd	a5,56(sp)
   1af6c:	06013423          	sd	zero,104(sp)
   1af70:	0004849b          	sext.w	s1,s1
   1af74:	10013e83          	ld	t4,256(sp)
   1af78:	220cc263          	bltz	s9,1b19c <_svfprintf_r+0x2354>
   1af7c:	06100793          	li	a5,97
   1af80:	3af40663          	beq	s0,a5,1b32c <_svfprintf_r+0x24e4>
   1af84:	04100793          	li	a5,65
   1af88:	00f40463          	beq	s0,a5,1af90 <_svfprintf_r+0x2148>
   1af8c:	891fe06f          	j	1981c <_svfprintf_r+0x9d4>
   1af90:	000e8513          	mv	a0,t4
   1af94:	000c8593          	mv	a1,s9
   1af98:	08613423          	sd	t1,136(sp)
   1af9c:	024060ef          	jal	ra,20fc0 <__trunctfdf2>
   1afa0:	0e810593          	addi	a1,sp,232
   1afa4:	fecfd0ef          	jal	ra,18790 <frexp>
   1afa8:	725050ef          	jal	ra,20ecc <__extenddftf2>
   1afac:	00006797          	auipc	a5,0x6
   1afb0:	42478793          	addi	a5,a5,1060 # 213d0 <zeroes.4539+0x30>
   1afb4:	0087b683          	ld	a3,8(a5)
   1afb8:	00000613          	li	a2,0
   1afbc:	729040ef          	jal	ra,1fee4 <__multf3>
   1afc0:	00000613          	li	a2,0
   1afc4:	00000693          	li	a3,0
   1afc8:	02a13823          	sd	a0,48(sp)
   1afcc:	02b13423          	sd	a1,40(sp)
   1afd0:	4c9040ef          	jal	ra,1fc98 <__eqtf2>
   1afd4:	02813f03          	ld	t5,40(sp)
   1afd8:	03013e83          	ld	t4,48(sp)
   1afdc:	08813303          	ld	t1,136(sp)
   1afe0:	00051663          	bnez	a0,1afec <_svfprintf_r+0x21a4>
   1afe4:	00100793          	li	a5,1
   1afe8:	0ef12423          	sw	a5,232(sp)
   1afec:	00006797          	auipc	a5,0x6
   1aff0:	42c78793          	addi	a5,a5,1068 # 21418 <zeroes.4539+0x78>
   1aff4:	02f13423          	sd	a5,40(sp)
   1aff8:	000b879b          	sext.w	a5,s7
   1affc:	02079c93          	slli	s9,a5,0x20
   1b000:	00fd873b          	addw	a4,s11,a5
   1b004:	00006797          	auipc	a5,0x6
   1b008:	3ac78793          	addi	a5,a5,940 # 213b0 <zeroes.4539+0x10>
   1b00c:	0087b783          	ld	a5,8(a5)
   1b010:	020cdc93          	srli	s9,s9,0x20
   1b014:	001c8c93          	addi	s9,s9,1
   1b018:	0a913023          	sd	s1,160(sp)
   1b01c:	0b313423          	sd	s3,168(sp)
   1b020:	0d513023          	sd	s5,192(sp)
   1b024:	019d8cb3          	add	s9,s11,s9
   1b028:	000d8b13          	mv	s6,s11
   1b02c:	02f13823          	sd	a5,48(sp)
   1b030:	09213423          	sd	s2,136(sp)
   1b034:	08813c23          	sd	s0,152(sp)
   1b038:	0b713823          	sd	s7,176(sp)
   1b03c:	0a613c23          	sd	t1,184(sp)
   1b040:	0db13423          	sd	s11,200(sp)
   1b044:	000e8993          	mv	s3,t4
   1b048:	000f0a93          	mv	s5,t5
   1b04c:	00070493          	mv	s1,a4
   1b050:	0180006f          	j	1b068 <_svfprintf_r+0x2220>
   1b054:	00000613          	li	a2,0
   1b058:	00000693          	li	a3,0
   1b05c:	43d040ef          	jal	ra,1fc98 <__eqtf2>
   1b060:	28050463          	beqz	a0,1b2e8 <_svfprintf_r+0x24a0>
   1b064:	000b8b13          	mv	s6,s7
   1b068:	03013683          	ld	a3,48(sp)
   1b06c:	00000613          	li	a2,0
   1b070:	00098513          	mv	a0,s3
   1b074:	000a8593          	mv	a1,s5
   1b078:	66d040ef          	jal	ra,1fee4 <__multf3>
   1b07c:	00058913          	mv	s2,a1
   1b080:	00050413          	mv	s0,a0
   1b084:	551050ef          	jal	ra,20dd4 <__fixtfsi>
   1b088:	00050a1b          	sext.w	s4,a0
   1b08c:	000a0513          	mv	a0,s4
   1b090:	5ad050ef          	jal	ra,20e3c <__floatsitf>
   1b094:	00050613          	mv	a2,a0
   1b098:	00058693          	mv	a3,a1
   1b09c:	00040513          	mv	a0,s0
   1b0a0:	00090593          	mv	a1,s2
   1b0a4:	560050ef          	jal	ra,20604 <__subtf3>
   1b0a8:	02813783          	ld	a5,40(sp)
   1b0ac:	001b0b93          	addi	s7,s6,1
   1b0b0:	00050d93          	mv	s11,a0
   1b0b4:	014787b3          	add	a5,a5,s4
   1b0b8:	0007c703          	lbu	a4,0(a5)
   1b0bc:	00058413          	mv	s0,a1
   1b0c0:	00050993          	mv	s3,a0
   1b0c4:	feeb8fa3          	sb	a4,-1(s7)
   1b0c8:	00058a93          	mv	s5,a1
   1b0cc:	4174893b          	subw	s2,s1,s7
   1b0d0:	f97c92e3          	bne	s9,s7,1b054 <_svfprintf_r+0x220c>
   1b0d4:	08813903          	ld	s2,136(sp)
   1b0d8:	0a013483          	ld	s1,160(sp)
   1b0dc:	0a813983          	ld	s3,168(sp)
   1b0e0:	0b013b83          	ld	s7,176(sp)
   1b0e4:	0b813303          	ld	t1,184(sp)
   1b0e8:	0c013a83          	ld	s5,192(sp)
   1b0ec:	0c813d83          	ld	s11,200(sp)
   1b0f0:	09813403          	ld	s0,152(sp)
   1b0f4:	fff00793          	li	a5,-1
   1b0f8:	00050893          	mv	a7,a0
   1b0fc:	00058813          	mv	a6,a1
   1b100:	02f13823          	sd	a5,48(sp)
   1b104:	00006797          	auipc	a5,0x6
   1b108:	2bc78793          	addi	a5,a5,700 # 213c0 <zeroes.4539+0x20>
   1b10c:	0087b783          	ld	a5,8(a5)
   1b110:	00000613          	li	a2,0
   1b114:	00088513          	mv	a0,a7
   1b118:	00078693          	mv	a3,a5
   1b11c:	00080593          	mv	a1,a6
   1b120:	08613c23          	sd	t1,152(sp)
   1b124:	08f13423          	sd	a5,136(sp)
   1b128:	0b113423          	sd	a7,168(sp)
   1b12c:	0b013023          	sd	a6,160(sp)
   1b130:	3f5040ef          	jal	ra,1fd24 <__getf2>
   1b134:	09813303          	ld	t1,152(sp)
   1b138:	06a04e63          	bgtz	a0,1b1b4 <_svfprintf_r+0x236c>
   1b13c:	0a813883          	ld	a7,168(sp)
   1b140:	0a013803          	ld	a6,160(sp)
   1b144:	08813683          	ld	a3,136(sp)
   1b148:	00000613          	li	a2,0
   1b14c:	00088513          	mv	a0,a7
   1b150:	00080593          	mv	a1,a6
   1b154:	345040ef          	jal	ra,1fc98 <__eqtf2>
   1b158:	09813303          	ld	t1,152(sp)
   1b15c:	00051663          	bnez	a0,1b168 <_svfprintf_r+0x2320>
   1b160:	001a7a13          	andi	s4,s4,1
   1b164:	040a1863          	bnez	s4,1b1b4 <_svfprintf_r+0x236c>
   1b168:	03013703          	ld	a4,48(sp)
   1b16c:	03000693          	li	a3,48
   1b170:	00170793          	addi	a5,a4,1
   1b174:	00fc87b3          	add	a5,s9,a5
   1b178:	00074863          	bltz	a4,1b188 <_svfprintf_r+0x2340>
   1b17c:	001c8c93          	addi	s9,s9,1
   1b180:	fedc8fa3          	sb	a3,-1(s9)
   1b184:	ff979ce3          	bne	a5,s9,1b17c <_svfprintf_r+0x2334>
   1b188:	41bc87bb          	subw	a5,s9,s11
   1b18c:	02f13823          	sd	a5,48(sp)
   1b190:	f10fe06f          	j	198a0 <_svfprintf_r+0xa58>
   1b194:	02013023          	sd	zero,32(sp)
   1b198:	00078493          	mv	s1,a5
   1b19c:	fff00793          	li	a5,-1
   1b1a0:	03f79793          	slli	a5,a5,0x3f
   1b1a4:	00fcccb3          	xor	s9,s9,a5
   1b1a8:	02d00793          	li	a5,45
   1b1ac:	06f13423          	sd	a5,104(sp)
   1b1b0:	dcdff06f          	j	1af7c <_svfprintf_r+0x2134>
   1b1b4:	02813783          	ld	a5,40(sp)
   1b1b8:	0f613c23          	sd	s6,248(sp)
   1b1bc:	fffcc683          	lbu	a3,-1(s9)
   1b1c0:	00f7c603          	lbu	a2,15(a5)
   1b1c4:	000c8793          	mv	a5,s9
   1b1c8:	02d61063          	bne	a2,a3,1b1e8 <_svfprintf_r+0x23a0>
   1b1cc:	03000593          	li	a1,48
   1b1d0:	feb78fa3          	sb	a1,-1(a5)
   1b1d4:	0f813783          	ld	a5,248(sp)
   1b1d8:	fff78713          	addi	a4,a5,-1
   1b1dc:	0ee13c23          	sd	a4,248(sp)
   1b1e0:	fff7c683          	lbu	a3,-1(a5)
   1b1e4:	fed606e3          	beq	a2,a3,1b1d0 <_svfprintf_r+0x2388>
   1b1e8:	0016861b          	addiw	a2,a3,1
   1b1ec:	03900593          	li	a1,57
   1b1f0:	0ff67613          	andi	a2,a2,255
   1b1f4:	00b68663          	beq	a3,a1,1b200 <_svfprintf_r+0x23b8>
   1b1f8:	fec78fa3          	sb	a2,-1(a5)
   1b1fc:	f8dff06f          	j	1b188 <_svfprintf_r+0x2340>
   1b200:	02813703          	ld	a4,40(sp)
   1b204:	00a74603          	lbu	a2,10(a4)
   1b208:	fec78fa3          	sb	a2,-1(a5)
   1b20c:	f7dff06f          	j	1b188 <_svfprintf_r+0x2340>
   1b210:	001b859b          	addiw	a1,s7,1
   1b214:	000a8513          	mv	a0,s5
   1b218:	02613023          	sd	t1,32(sp)
   1b21c:	9edfb0ef          	jal	ra,16c08 <_malloc_r>
   1b220:	00050d93          	mv	s11,a0
   1b224:	02013303          	ld	t1,32(sp)
   1b228:	30050e63          	beqz	a0,1b544 <_svfprintf_r+0x26fc>
   1b22c:	02a13023          	sd	a0,32(sp)
   1b230:	d2dff06f          	j	1af5c <_svfprintf_r+0x2114>
   1b234:	03000793          	li	a5,48
   1b238:	0ef10023          	sb	a5,224(sp)
   1b23c:	07800713          	li	a4,120
   1b240:	cfdff06f          	j	1af3c <_svfprintf_r+0x20f4>
   1b244:	001b8a1b          	addiw	s4,s7,1
   1b248:	000a0713          	mv	a4,s4
   1b24c:	000e8593          	mv	a1,t4
   1b250:	0f810893          	addi	a7,sp,248
   1b254:	0ec10813          	addi	a6,sp,236
   1b258:	0e810793          	addi	a5,sp,232
   1b25c:	00200693          	li	a3,2
   1b260:	000c8613          	mv	a2,s9
   1b264:	000a8513          	mv	a0,s5
   1b268:	03d13423          	sd	t4,40(sp)
   1b26c:	b88fa0ef          	jal	ra,155f4 <_ldtoa_r>
   1b270:	00050d93          	mv	s11,a0
   1b274:	02813e83          	ld	t4,40(sp)
   1b278:	03013303          	ld	t1,48(sp)
   1b27c:	014d8a33          	add	s4,s11,s4
   1b280:	af9ff06f          	j	1ad78 <_svfprintf_r+0x1f30>
   1b284:	0016869b          	addiw	a3,a3,1
   1b288:	008787b3          	add	a5,a5,s0
   1b28c:	01833023          	sd	s8,0(t1)
   1b290:	00833423          	sd	s0,8(t1)
   1b294:	12f13023          	sd	a5,288(sp)
   1b298:	10d12c23          	sw	a3,280(sp)
   1b29c:	00700613          	li	a2,7
   1b2a0:	d0d65863          	bge	a2,a3,1a7b0 <_svfprintf_r+0x1968>
   1b2a4:	01013583          	ld	a1,16(sp)
   1b2a8:	11010613          	addi	a2,sp,272
   1b2ac:	000a8513          	mv	a0,s5
   1b2b0:	2dd020ef          	jal	ra,1dd8c <__ssprint_r>
   1b2b4:	00050463          	beqz	a0,1b2bc <_svfprintf_r+0x2474>
   1b2b8:	d7dfd06f          	j	19034 <_svfprintf_r+0x1ec>
   1b2bc:	12013783          	ld	a5,288(sp)
   1b2c0:	11812683          	lw	a3,280(sp)
   1b2c4:	19010313          	addi	t1,sp,400
   1b2c8:	cecff06f          	j	1a7b4 <_svfprintf_r+0x196c>
   1b2cc:	00f72023          	sw	a5,0(a4)
   1b2d0:	00090d93          	mv	s11,s2
   1b2d4:	b08fe06f          	j	195dc <_svfprintf_r+0x794>
   1b2d8:	000b8463          	beqz	s7,1b2e0 <_svfprintf_r+0x2498>
   1b2dc:	d18fe06f          	j	197f4 <_svfprintf_r+0x9ac>
   1b2e0:	00100b93          	li	s7,1
   1b2e4:	d10fe06f          	j	197f4 <_svfprintf_r+0x9ac>
   1b2e8:	000b8793          	mv	a5,s7
   1b2ec:	03213823          	sd	s2,48(sp)
   1b2f0:	000d8893          	mv	a7,s11
   1b2f4:	00040813          	mv	a6,s0
   1b2f8:	0a013483          	ld	s1,160(sp)
   1b2fc:	0a813983          	ld	s3,168(sp)
   1b300:	0b813303          	ld	t1,184(sp)
   1b304:	08813903          	ld	s2,136(sp)
   1b308:	0b013b83          	ld	s7,176(sp)
   1b30c:	0c013a83          	ld	s5,192(sp)
   1b310:	0c813d83          	ld	s11,200(sp)
   1b314:	09813403          	ld	s0,152(sp)
   1b318:	00078c93          	mv	s9,a5
   1b31c:	de9ff06f          	j	1b104 <_svfprintf_r+0x22bc>
   1b320:	fff00793          	li	a5,-1
   1b324:	00f13423          	sd	a5,8(sp)
   1b328:	d35fd06f          	j	1905c <_svfprintf_r+0x214>
   1b32c:	000e8513          	mv	a0,t4
   1b330:	000c8593          	mv	a1,s9
   1b334:	08613423          	sd	t1,136(sp)
   1b338:	489050ef          	jal	ra,20fc0 <__trunctfdf2>
   1b33c:	0e810593          	addi	a1,sp,232
   1b340:	c50fd0ef          	jal	ra,18790 <frexp>
   1b344:	389050ef          	jal	ra,20ecc <__extenddftf2>
   1b348:	00006797          	auipc	a5,0x6
   1b34c:	08878793          	addi	a5,a5,136 # 213d0 <zeroes.4539+0x30>
   1b350:	0087b683          	ld	a3,8(a5)
   1b354:	00000613          	li	a2,0
   1b358:	38d040ef          	jal	ra,1fee4 <__multf3>
   1b35c:	00000613          	li	a2,0
   1b360:	00000693          	li	a3,0
   1b364:	02a13823          	sd	a0,48(sp)
   1b368:	02b13423          	sd	a1,40(sp)
   1b36c:	12d040ef          	jal	ra,1fc98 <__eqtf2>
   1b370:	02813f03          	ld	t5,40(sp)
   1b374:	03013e83          	ld	t4,48(sp)
   1b378:	08813303          	ld	t1,136(sp)
   1b37c:	00051663          	bnez	a0,1b388 <_svfprintf_r+0x2540>
   1b380:	00100793          	li	a5,1
   1b384:	0ef12423          	sw	a5,232(sp)
   1b388:	00006797          	auipc	a5,0x6
   1b38c:	07878793          	addi	a5,a5,120 # 21400 <zeroes.4539+0x60>
   1b390:	02f13423          	sd	a5,40(sp)
   1b394:	c65ff06f          	j	1aff8 <_svfprintf_r+0x21b0>
   1b398:	06700413          	li	s0,103
   1b39c:	08013503          	ld	a0,128(sp)
   1b3a0:	02813703          	ld	a4,40(sp)
   1b3a4:	04013023          	sd	zero,64(sp)
   1b3a8:	00054783          	lbu	a5,0(a0)
   1b3ac:	02013c23          	sd	zero,56(sp)
   1b3b0:	0ff00593          	li	a1,255
   1b3b4:	04b78063          	beq	a5,a1,1b3f4 <_svfprintf_r+0x25ac>
   1b3b8:	0007869b          	sext.w	a3,a5
   1b3bc:	02e6dc63          	bge	a3,a4,1b3f4 <_svfprintf_r+0x25ac>
   1b3c0:	00154603          	lbu	a2,1(a0)
   1b3c4:	40d7073b          	subw	a4,a4,a3
   1b3c8:	00060e63          	beqz	a2,1b3e4 <_svfprintf_r+0x259c>
   1b3cc:	03813783          	ld	a5,56(sp)
   1b3d0:	00150513          	addi	a0,a0,1
   1b3d4:	0017879b          	addiw	a5,a5,1
   1b3d8:	02f13c23          	sd	a5,56(sp)
   1b3dc:	00060793          	mv	a5,a2
   1b3e0:	fd5ff06f          	j	1b3b4 <_svfprintf_r+0x256c>
   1b3e4:	04013683          	ld	a3,64(sp)
   1b3e8:	0016869b          	addiw	a3,a3,1
   1b3ec:	04d13023          	sd	a3,64(sp)
   1b3f0:	fc5ff06f          	j	1b3b4 <_svfprintf_r+0x256c>
   1b3f4:	02e13423          	sd	a4,40(sp)
   1b3f8:	03813783          	ld	a5,56(sp)
   1b3fc:	04013703          	ld	a4,64(sp)
   1b400:	09013583          	ld	a1,144(sp)
   1b404:	08a13023          	sd	a0,128(sp)
   1b408:	00e7853b          	addw	a0,a5,a4
   1b40c:	08613423          	sd	t1,136(sp)
   1b410:	569050ef          	jal	ra,21178 <__muldi3>
   1b414:	0195053b          	addw	a0,a0,s9
   1b418:	00050c9b          	sext.w	s9,a0
   1b41c:	fffcca13          	not	s4,s9
   1b420:	43fa5a13          	srai	s4,s4,0x3f
   1b424:	01457533          	and	a0,a0,s4
   1b428:	00050a1b          	sext.w	s4,a0
   1b42c:	08813303          	ld	t1,136(sp)
   1b430:	ddcfe06f          	j	19a0c <_svfprintf_r+0xbc4>
   1b434:	0f210793          	addi	a5,sp,242
   1b438:	00069863          	bnez	a3,1b448 <_svfprintf_r+0x2600>
   1b43c:	03000793          	li	a5,48
   1b440:	0ef10923          	sb	a5,242(sp)
   1b444:	0f310793          	addi	a5,sp,243
   1b448:	21010713          	addi	a4,sp,528
   1b44c:	030a0a1b          	addiw	s4,s4,48
   1b450:	40e786b3          	sub	a3,a5,a4
   1b454:	01478023          	sb	s4,0(a5)
   1b458:	1216879b          	addiw	a5,a3,289
   1b45c:	06f13823          	sd	a5,112(sp)
   1b460:	d5cfe06f          	j	199bc <_svfprintf_r+0xb74>
   1b464:	05013783          	ld	a5,80(sp)
   1b468:	06600413          	li	s0,102
   1b46c:	00e78cbb          	addw	s9,a5,a4
   1b470:	017c8cbb          	addw	s9,s9,s7
   1b474:	a75ff06f          	j	1aee8 <_svfprintf_r+0x20a0>
   1b478:	40ec87bb          	subw	a5,s9,a4
   1b47c:	0017879b          	addiw	a5,a5,1
   1b480:	00078c9b          	sext.w	s9,a5
   1b484:	fffcca13          	not	s4,s9
   1b488:	43fa5a13          	srai	s4,s4,0x3f
   1b48c:	0147f7b3          	and	a5,a5,s4
   1b490:	00078a1b          	sext.w	s4,a5
   1b494:	889ff06f          	j	1ad1c <_svfprintf_r+0x1ed4>
   1b498:	04013703          	ld	a4,64(sp)
   1b49c:	00177693          	andi	a3,a4,1
   1b4a0:	00069463          	bnez	a3,1b4a8 <_svfprintf_r+0x2660>
   1b4a4:	d3cfe06f          	j	199e0 <_svfprintf_r+0xb98>
   1b4a8:	d30fe06f          	j	199d8 <_svfprintf_r+0xb90>
   1b4ac:	00079a63          	bnez	a5,1b4c0 <_svfprintf_r+0x2678>
   1b4b0:	00100a13          	li	s4,1
   1b4b4:	06600413          	li	s0,102
   1b4b8:	00100c93          	li	s9,1
   1b4bc:	861ff06f          	j	1ad1c <_svfprintf_r+0x1ed4>
   1b4c0:	05013783          	ld	a5,80(sp)
   1b4c4:	06600413          	li	s0,102
   1b4c8:	0017879b          	addiw	a5,a5,1
   1b4cc:	01778e3b          	addw	t3,a5,s7
   1b4d0:	000e0c9b          	sext.w	s9,t3
   1b4d4:	fffcca13          	not	s4,s9
   1b4d8:	43fa5a13          	srai	s4,s4,0x3f
   1b4dc:	014e7e33          	and	t3,t3,s4
   1b4e0:	000e0a1b          	sext.w	s4,t3
   1b4e4:	839ff06f          	j	1ad1c <_svfprintf_r+0x1ed4>
   1b4e8:	00030793          	mv	a5,t1
   1b4ec:	d60ff06f          	j	1aa4c <_svfprintf_r+0x1c04>
   1b4f0:	01813703          	ld	a4,24(sp)
   1b4f4:	00072b83          	lw	s7,0(a4)
   1b4f8:	00870713          	addi	a4,a4,8
   1b4fc:	000bd463          	bgez	s7,1b504 <_svfprintf_r+0x26bc>
   1b500:	fff00b93          	li	s7,-1
   1b504:	00194403          	lbu	s0,1(s2)
   1b508:	00e13c23          	sd	a4,24(sp)
   1b50c:	00078913          	mv	s2,a5
   1b510:	aa1fd06f          	j	18fb0 <_svfprintf_r+0x168>
   1b514:	000b8a13          	mv	s4,s7
   1b518:	014d8a33          	add	s4,s11,s4
   1b51c:	85dff06f          	j	1ad78 <_svfprintf_r+0x1f30>
   1b520:	00200793          	li	a5,2
   1b524:	06f13823          	sd	a5,112(sp)
   1b528:	c94fe06f          	j	199bc <_svfprintf_r+0xb74>
   1b52c:	04813703          	ld	a4,72(sp)
   1b530:	00c00793          	li	a5,12
   1b534:	00f72023          	sw	a5,0(a4)
   1b538:	fff00793          	li	a5,-1
   1b53c:	00f13423          	sd	a5,8(sp)
   1b540:	b1dfd06f          	j	1905c <_svfprintf_r+0x214>
   1b544:	01013683          	ld	a3,16(sp)
   1b548:	0106d783          	lhu	a5,16(a3)
   1b54c:	0407e713          	ori	a4,a5,64
   1b550:	00070793          	mv	a5,a4
   1b554:	00e69823          	sh	a4,16(a3)
   1b558:	af9fd06f          	j	19050 <_svfprintf_r+0x208>

000000000001b55c <__sprint_r.part.0>:
   1b55c:	0ac5a783          	lw	a5,172(a1)
   1b560:	fb010113          	addi	sp,sp,-80
   1b564:	01513c23          	sd	s5,24(sp)
   1b568:	04113423          	sd	ra,72(sp)
   1b56c:	04813023          	sd	s0,64(sp)
   1b570:	02913c23          	sd	s1,56(sp)
   1b574:	03213823          	sd	s2,48(sp)
   1b578:	03313423          	sd	s3,40(sp)
   1b57c:	03413023          	sd	s4,32(sp)
   1b580:	01613823          	sd	s6,16(sp)
   1b584:	01713423          	sd	s7,8(sp)
   1b588:	03279713          	slli	a4,a5,0x32
   1b58c:	00060a93          	mv	s5,a2
   1b590:	0c075063          	bgez	a4,1b650 <__sprint_r.part.0+0xf4>
   1b594:	01063703          	ld	a4,16(a2)
   1b598:	00058913          	mv	s2,a1
   1b59c:	00050993          	mv	s3,a0
   1b5a0:	00063b03          	ld	s6,0(a2)
   1b5a4:	fff00a13          	li	s4,-1
   1b5a8:	0a070063          	beqz	a4,1b648 <__sprint_r.part.0+0xec>
   1b5ac:	008b3783          	ld	a5,8(s6)
   1b5b0:	000b3403          	ld	s0,0(s6)
   1b5b4:	0027d793          	srli	a5,a5,0x2
   1b5b8:	00078b9b          	sext.w	s7,a5
   1b5bc:	07705c63          	blez	s7,1b634 <__sprint_r.part.0+0xd8>
   1b5c0:	fff7849b          	addiw	s1,a5,-1
   1b5c4:	02049493          	slli	s1,s1,0x20
   1b5c8:	01e4d493          	srli	s1,s1,0x1e
   1b5cc:	00440793          	addi	a5,s0,4
   1b5d0:	00f484b3          	add	s1,s1,a5
   1b5d4:	0080006f          	j	1b5dc <__sprint_r.part.0+0x80>
   1b5d8:	04848c63          	beq	s1,s0,1b630 <__sprint_r.part.0+0xd4>
   1b5dc:	00042583          	lw	a1,0(s0)
   1b5e0:	00090613          	mv	a2,s2
   1b5e4:	00098513          	mv	a0,s3
   1b5e8:	78c010ef          	jal	ra,1cd74 <_fputwc_r>
   1b5ec:	0005051b          	sext.w	a0,a0
   1b5f0:	00440413          	addi	s0,s0,4
   1b5f4:	ff4512e3          	bne	a0,s4,1b5d8 <__sprint_r.part.0+0x7c>
   1b5f8:	fff00513          	li	a0,-1
   1b5fc:	04813083          	ld	ra,72(sp)
   1b600:	04013403          	ld	s0,64(sp)
   1b604:	000ab823          	sd	zero,16(s5)
   1b608:	000aa423          	sw	zero,8(s5)
   1b60c:	03813483          	ld	s1,56(sp)
   1b610:	03013903          	ld	s2,48(sp)
   1b614:	02813983          	ld	s3,40(sp)
   1b618:	02013a03          	ld	s4,32(sp)
   1b61c:	01813a83          	ld	s5,24(sp)
   1b620:	01013b03          	ld	s6,16(sp)
   1b624:	00813b83          	ld	s7,8(sp)
   1b628:	05010113          	addi	sp,sp,80
   1b62c:	00008067          	ret
   1b630:	010ab703          	ld	a4,16(s5)
   1b634:	002b9b93          	slli	s7,s7,0x2
   1b638:	41770733          	sub	a4,a4,s7
   1b63c:	00eab823          	sd	a4,16(s5)
   1b640:	010b0b13          	addi	s6,s6,16
   1b644:	f60714e3          	bnez	a4,1b5ac <__sprint_r.part.0+0x50>
   1b648:	00000513          	li	a0,0
   1b64c:	fb1ff06f          	j	1b5fc <__sprint_r.part.0+0xa0>
   1b650:	039010ef          	jal	ra,1ce88 <__sfvwrite_r>
   1b654:	fa9ff06f          	j	1b5fc <__sprint_r.part.0+0xa0>

000000000001b658 <__sprint_r>:
   1b658:	01063703          	ld	a4,16(a2)
   1b65c:	00070463          	beqz	a4,1b664 <__sprint_r+0xc>
   1b660:	efdff06f          	j	1b55c <__sprint_r.part.0>
   1b664:	00062423          	sw	zero,8(a2)
   1b668:	00000513          	li	a0,0
   1b66c:	00008067          	ret

000000000001b670 <_vfiprintf_r>:
   1b670:	e3010113          	addi	sp,sp,-464
   1b674:	1b213823          	sd	s2,432(sp)
   1b678:	1b313423          	sd	s3,424(sp)
   1b67c:	19713423          	sd	s7,392(sp)
   1b680:	1c113423          	sd	ra,456(sp)
   1b684:	1c813023          	sd	s0,448(sp)
   1b688:	1a913c23          	sd	s1,440(sp)
   1b68c:	1b413023          	sd	s4,416(sp)
   1b690:	19513c23          	sd	s5,408(sp)
   1b694:	19613823          	sd	s6,400(sp)
   1b698:	19813023          	sd	s8,384(sp)
   1b69c:	17913c23          	sd	s9,376(sp)
   1b6a0:	17a13823          	sd	s10,368(sp)
   1b6a4:	17b13423          	sd	s11,360(sp)
   1b6a8:	00d13823          	sd	a3,16(sp)
   1b6ac:	00050993          	mv	s3,a0
   1b6b0:	00058913          	mv	s2,a1
   1b6b4:	00060b93          	mv	s7,a2
   1b6b8:	00050663          	beqz	a0,1b6c4 <_vfiprintf_r+0x54>
   1b6bc:	05052783          	lw	a5,80(a0)
   1b6c0:	0e0780e3          	beqz	a5,1bfa0 <_vfiprintf_r+0x930>
   1b6c4:	01091703          	lh	a4,16(s2)
   1b6c8:	03071793          	slli	a5,a4,0x30
   1b6cc:	0307d793          	srli	a5,a5,0x30
   1b6d0:	03279693          	slli	a3,a5,0x32
   1b6d4:	0206c663          	bltz	a3,1b700 <_vfiprintf_r+0x90>
   1b6d8:	0ac92683          	lw	a3,172(s2)
   1b6dc:	000027b7          	lui	a5,0x2
   1b6e0:	00f767b3          	or	a5,a4,a5
   1b6e4:	ffffe737          	lui	a4,0xffffe
   1b6e8:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdadf7>
   1b6ec:	00e6f733          	and	a4,a3,a4
   1b6f0:	00f91823          	sh	a5,16(s2)
   1b6f4:	03079793          	slli	a5,a5,0x30
   1b6f8:	0ae92623          	sw	a4,172(s2)
   1b6fc:	0307d793          	srli	a5,a5,0x30
   1b700:	0087f713          	andi	a4,a5,8
   1b704:	14070463          	beqz	a4,1b84c <_vfiprintf_r+0x1dc>
   1b708:	01893703          	ld	a4,24(s2)
   1b70c:	14070063          	beqz	a4,1b84c <_vfiprintf_r+0x1dc>
   1b710:	01a7f793          	andi	a5,a5,26
   1b714:	00a00713          	li	a4,10
   1b718:	14e78c63          	beq	a5,a4,1b870 <_vfiprintf_r+0x200>
   1b71c:	ffff87b7          	lui	a5,0xffff8
   1b720:	0e010493          	addi	s1,sp,224
   1b724:	8307c793          	xori	a5,a5,-2000
   1b728:	000b8c13          	mv	s8,s7
   1b72c:	06913023          	sd	s1,96(sp)
   1b730:	06013823          	sd	zero,112(sp)
   1b734:	06012423          	sw	zero,104(sp)
   1b738:	00013c23          	sd	zero,24(sp)
   1b73c:	02013423          	sd	zero,40(sp)
   1b740:	02013c23          	sd	zero,56(sp)
   1b744:	02013823          	sd	zero,48(sp)
   1b748:	00013023          	sd	zero,0(sp)
   1b74c:	00006a17          	auipc	s4,0x6
   1b750:	264a0a13          	addi	s4,s4,612 # 219b0 <zeroes.4524+0x10>
   1b754:	04f13023          	sd	a5,64(sp)
   1b758:	00048b93          	mv	s7,s1
   1b75c:	000c4783          	lbu	a5,0(s8)
   1b760:	14078063          	beqz	a5,1b8a0 <_vfiprintf_r+0x230>
   1b764:	02500713          	li	a4,37
   1b768:	56e78ce3          	beq	a5,a4,1c4e0 <_vfiprintf_r+0xe70>
   1b76c:	000c0413          	mv	s0,s8
   1b770:	00c0006f          	j	1b77c <_vfiprintf_r+0x10c>
   1b774:	12e78063          	beq	a5,a4,1b894 <_vfiprintf_r+0x224>
   1b778:	000c8413          	mv	s0,s9
   1b77c:	00144783          	lbu	a5,1(s0)
   1b780:	00140c93          	addi	s9,s0,1
   1b784:	fe0798e3          	bnez	a5,1b774 <_vfiprintf_r+0x104>
   1b788:	418c8d3b          	subw	s10,s9,s8
   1b78c:	100d0a63          	beqz	s10,1b8a0 <_vfiprintf_r+0x230>
   1b790:	06812783          	lw	a5,104(sp)
   1b794:	07013703          	ld	a4,112(sp)
   1b798:	018bb023          	sd	s8,0(s7)
   1b79c:	0017869b          	addiw	a3,a5,1
   1b7a0:	00ed0733          	add	a4,s10,a4
   1b7a4:	01abb423          	sd	s10,8(s7)
   1b7a8:	06e13823          	sd	a4,112(sp)
   1b7ac:	06d12423          	sw	a3,104(sp)
   1b7b0:	00700793          	li	a5,7
   1b7b4:	010b8b93          	addi	s7,s7,16
   1b7b8:	02d7d063          	bge	a5,a3,1b7d8 <_vfiprintf_r+0x168>
   1b7bc:	4e0708e3          	beqz	a4,1c4ac <_vfiprintf_r+0xe3c>
   1b7c0:	06010613          	addi	a2,sp,96
   1b7c4:	00090593          	mv	a1,s2
   1b7c8:	00098513          	mv	a0,s3
   1b7cc:	d91ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1b7d0:	0e051463          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1b7d4:	00048b93          	mv	s7,s1
   1b7d8:	00013703          	ld	a4,0(sp)
   1b7dc:	00144783          	lbu	a5,1(s0)
   1b7e0:	01a7073b          	addw	a4,a4,s10
   1b7e4:	00e13023          	sd	a4,0(sp)
   1b7e8:	0a078c63          	beqz	a5,1b8a0 <_vfiprintf_r+0x230>
   1b7ec:	001c8c13          	addi	s8,s9,1
   1b7f0:	001cc703          	lbu	a4,1(s9)
   1b7f4:	04010ba3          	sb	zero,87(sp)
   1b7f8:	fff00a93          	li	s5,-1
   1b7fc:	00000413          	li	s0,0
   1b800:	00000b13          	li	s6,0
   1b804:	00900c93          	li	s9,9
   1b808:	02a00d13          	li	s10,42
   1b80c:	001c0c13          	addi	s8,s8,1
   1b810:	0007071b          	sext.w	a4,a4
   1b814:	05a00613          	li	a2,90
   1b818:	fe07079b          	addiw	a5,a4,-32
   1b81c:	0007869b          	sext.w	a3,a5
   1b820:	1cd66063          	bltu	a2,a3,1b9e0 <_vfiprintf_r+0x370>
   1b824:	02079793          	slli	a5,a5,0x20
   1b828:	01e7d793          	srli	a5,a5,0x1e
   1b82c:	014787b3          	add	a5,a5,s4
   1b830:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   1b834:	014787b3          	add	a5,a5,s4
   1b838:	00078067          	jr	a5
   1b83c:	010b6b13          	ori	s6,s6,16
   1b840:	000b0b1b          	sext.w	s6,s6
   1b844:	000c4703          	lbu	a4,0(s8)
   1b848:	fc5ff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1b84c:	00090593          	mv	a1,s2
   1b850:	00098513          	mv	a0,s3
   1b854:	da0f70ef          	jal	ra,12df4 <__swsetup_r>
   1b858:	00050463          	beqz	a0,1b860 <_vfiprintf_r+0x1f0>
   1b85c:	7dd0006f          	j	1c838 <_vfiprintf_r+0x11c8>
   1b860:	01095783          	lhu	a5,16(s2)
   1b864:	00a00713          	li	a4,10
   1b868:	01a7f793          	andi	a5,a5,26
   1b86c:	eae798e3          	bne	a5,a4,1b71c <_vfiprintf_r+0xac>
   1b870:	01291783          	lh	a5,18(s2)
   1b874:	ea07c4e3          	bltz	a5,1b71c <_vfiprintf_r+0xac>
   1b878:	01013683          	ld	a3,16(sp)
   1b87c:	000b8613          	mv	a2,s7
   1b880:	00090593          	mv	a1,s2
   1b884:	00098513          	mv	a0,s3
   1b888:	014010ef          	jal	ra,1c89c <__sbprintf>
   1b88c:	00a13023          	sd	a0,0(sp)
   1b890:	0340006f          	j	1b8c4 <_vfiprintf_r+0x254>
   1b894:	418c8d3b          	subw	s10,s9,s8
   1b898:	f40d0ae3          	beqz	s10,1b7ec <_vfiprintf_r+0x17c>
   1b89c:	ef5ff06f          	j	1b790 <_vfiprintf_r+0x120>
   1b8a0:	07013783          	ld	a5,112(sp)
   1b8a4:	00078a63          	beqz	a5,1b8b8 <_vfiprintf_r+0x248>
   1b8a8:	06010613          	addi	a2,sp,96
   1b8ac:	00090593          	mv	a1,s2
   1b8b0:	00098513          	mv	a0,s3
   1b8b4:	ca9ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1b8b8:	01095783          	lhu	a5,16(s2)
   1b8bc:	0407f793          	andi	a5,a5,64
   1b8c0:	76079ce3          	bnez	a5,1c838 <_vfiprintf_r+0x11c8>
   1b8c4:	1c813083          	ld	ra,456(sp)
   1b8c8:	1c013403          	ld	s0,448(sp)
   1b8cc:	00013503          	ld	a0,0(sp)
   1b8d0:	1b813483          	ld	s1,440(sp)
   1b8d4:	1b013903          	ld	s2,432(sp)
   1b8d8:	1a813983          	ld	s3,424(sp)
   1b8dc:	1a013a03          	ld	s4,416(sp)
   1b8e0:	19813a83          	ld	s5,408(sp)
   1b8e4:	19013b03          	ld	s6,400(sp)
   1b8e8:	18813b83          	ld	s7,392(sp)
   1b8ec:	18013c03          	ld	s8,384(sp)
   1b8f0:	17813c83          	ld	s9,376(sp)
   1b8f4:	17013d03          	ld	s10,368(sp)
   1b8f8:	16813d83          	ld	s11,360(sp)
   1b8fc:	1d010113          	addi	sp,sp,464
   1b900:	00008067          	ret
   1b904:	01013683          	ld	a3,16(sp)
   1b908:	00006797          	auipc	a5,0x6
   1b90c:	b1078793          	addi	a5,a5,-1264 # 21418 <zeroes.4539+0x78>
   1b910:	00f13c23          	sd	a5,24(sp)
   1b914:	020b7793          	andi	a5,s6,32
   1b918:	00868613          	addi	a2,a3,8
   1b91c:	66078063          	beqz	a5,1bf7c <_vfiprintf_r+0x90c>
   1b920:	0006bd83          	ld	s11,0(a3)
   1b924:	001b7793          	andi	a5,s6,1
   1b928:	00078e63          	beqz	a5,1b944 <_vfiprintf_r+0x2d4>
   1b92c:	000d8c63          	beqz	s11,1b944 <_vfiprintf_r+0x2d4>
   1b930:	002b6813          	ori	a6,s6,2
   1b934:	03000793          	li	a5,48
   1b938:	04f10c23          	sb	a5,88(sp)
   1b93c:	04e10ca3          	sb	a4,89(sp)
   1b940:	00080b1b          	sext.w	s6,a6
   1b944:	bffb7813          	andi	a6,s6,-1025
   1b948:	00080c9b          	sext.w	s9,a6
   1b94c:	00c13823          	sd	a2,16(sp)
   1b950:	00200793          	li	a5,2
   1b954:	04010ba3          	sb	zero,87(sp)
   1b958:	fff00713          	li	a4,-1
   1b95c:	5aea8063          	beq	s5,a4,1befc <_vfiprintf_r+0x88c>
   1b960:	f7fcf813          	andi	a6,s9,-129
   1b964:	00080b1b          	sext.w	s6,a6
   1b968:	100d90e3          	bnez	s11,1c268 <_vfiprintf_r+0xbf8>
   1b96c:	640a9463          	bnez	s5,1bfb4 <_vfiprintf_r+0x944>
   1b970:	340796e3          	bnez	a5,1c4bc <_vfiprintf_r+0xe4c>
   1b974:	001cf793          	andi	a5,s9,1
   1b978:	00f13423          	sd	a5,8(sp)
   1b97c:	0dc10d13          	addi	s10,sp,220
   1b980:	36079ee3          	bnez	a5,1c4fc <_vfiprintf_r+0xe8c>
   1b984:	00813703          	ld	a4,8(sp)
   1b988:	000a8793          	mv	a5,s5
   1b98c:	00ead463          	bge	s5,a4,1b994 <_vfiprintf_r+0x324>
   1b990:	00070793          	mv	a5,a4
   1b994:	05714703          	lbu	a4,87(sp)
   1b998:	00078c9b          	sext.w	s9,a5
   1b99c:	06070263          	beqz	a4,1ba00 <_vfiprintf_r+0x390>
   1b9a0:	00178c9b          	addiw	s9,a5,1
   1b9a4:	05c0006f          	j	1ba00 <_vfiprintf_r+0x390>
   1b9a8:	00000413          	li	s0,0
   1b9ac:	001c0c13          	addi	s8,s8,1
   1b9b0:	fffc4683          	lbu	a3,-1(s8)
   1b9b4:	0024179b          	slliw	a5,s0,0x2
   1b9b8:	0087843b          	addw	s0,a5,s0
   1b9bc:	fd07071b          	addiw	a4,a4,-48
   1b9c0:	0014141b          	slliw	s0,s0,0x1
   1b9c4:	fd06879b          	addiw	a5,a3,-48
   1b9c8:	0087043b          	addw	s0,a4,s0
   1b9cc:	0006871b          	sext.w	a4,a3
   1b9d0:	fcfcfee3          	bgeu	s9,a5,1b9ac <_vfiprintf_r+0x33c>
   1b9d4:	fe07079b          	addiw	a5,a4,-32
   1b9d8:	0007869b          	sext.w	a3,a5
   1b9dc:	e4d674e3          	bgeu	a2,a3,1b824 <_vfiprintf_r+0x1b4>
   1b9e0:	ec0700e3          	beqz	a4,1b8a0 <_vfiprintf_r+0x230>
   1b9e4:	00100793          	li	a5,1
   1b9e8:	06e10c23          	sb	a4,120(sp)
   1b9ec:	04010ba3          	sb	zero,87(sp)
   1b9f0:	00100c93          	li	s9,1
   1b9f4:	00f13423          	sd	a5,8(sp)
   1b9f8:	07810d13          	addi	s10,sp,120
   1b9fc:	00000a93          	li	s5,0
   1ba00:	002b7e93          	andi	t4,s6,2
   1ba04:	000e8e9b          	sext.w	t4,t4
   1ba08:	000e8463          	beqz	t4,1ba10 <_vfiprintf_r+0x3a0>
   1ba0c:	002c8c9b          	addiw	s9,s9,2
   1ba10:	06812703          	lw	a4,104(sp)
   1ba14:	084b7f13          	andi	t5,s6,132
   1ba18:	07013783          	ld	a5,112(sp)
   1ba1c:	0017061b          	addiw	a2,a4,1
   1ba20:	00060593          	mv	a1,a2
   1ba24:	000f1663          	bnez	t5,1ba30 <_vfiprintf_r+0x3c0>
   1ba28:	41940dbb          	subw	s11,s0,s9
   1ba2c:	05b042e3          	bgtz	s11,1c270 <_vfiprintf_r+0xc00>
   1ba30:	05714503          	lbu	a0,87(sp)
   1ba34:	010b8593          	addi	a1,s7,16
   1ba38:	02050c63          	beqz	a0,1ba70 <_vfiprintf_r+0x400>
   1ba3c:	05710713          	addi	a4,sp,87
   1ba40:	00178793          	addi	a5,a5,1
   1ba44:	00ebb023          	sd	a4,0(s7)
   1ba48:	00100713          	li	a4,1
   1ba4c:	00ebb423          	sd	a4,8(s7)
   1ba50:	06f13823          	sd	a5,112(sp)
   1ba54:	06c12423          	sw	a2,104(sp)
   1ba58:	00700713          	li	a4,7
   1ba5c:	78c74863          	blt	a4,a2,1c1ec <_vfiprintf_r+0xb7c>
   1ba60:	00060713          	mv	a4,a2
   1ba64:	00058b93          	mv	s7,a1
   1ba68:	0016061b          	addiw	a2,a2,1
   1ba6c:	01058593          	addi	a1,a1,16
   1ba70:	040e8e63          	beqz	t4,1bacc <_vfiprintf_r+0x45c>
   1ba74:	05810713          	addi	a4,sp,88
   1ba78:	00278793          	addi	a5,a5,2
   1ba7c:	00ebb023          	sd	a4,0(s7)
   1ba80:	00200713          	li	a4,2
   1ba84:	00ebb423          	sd	a4,8(s7)
   1ba88:	06f13823          	sd	a5,112(sp)
   1ba8c:	06c12423          	sw	a2,104(sp)
   1ba90:	00700713          	li	a4,7
   1ba94:	7cc75063          	bge	a4,a2,1c254 <_vfiprintf_r+0xbe4>
   1ba98:	22078ae3          	beqz	a5,1c4cc <_vfiprintf_r+0xe5c>
   1ba9c:	06010613          	addi	a2,sp,96
   1baa0:	00090593          	mv	a1,s2
   1baa4:	00098513          	mv	a0,s3
   1baa8:	03e13023          	sd	t5,32(sp)
   1baac:	ab1ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1bab0:	e00514e3          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1bab4:	06812703          	lw	a4,104(sp)
   1bab8:	07013783          	ld	a5,112(sp)
   1babc:	02013f03          	ld	t5,32(sp)
   1bac0:	0f010593          	addi	a1,sp,240
   1bac4:	0017061b          	addiw	a2,a4,1
   1bac8:	00048b93          	mv	s7,s1
   1bacc:	08000513          	li	a0,128
   1bad0:	52af0863          	beq	t5,a0,1c000 <_vfiprintf_r+0x990>
   1bad4:	00813683          	ld	a3,8(sp)
   1bad8:	40da8abb          	subw	s5,s5,a3
   1badc:	61504c63          	bgtz	s5,1c0f4 <_vfiprintf_r+0xa84>
   1bae0:	00813703          	ld	a4,8(sp)
   1bae4:	01abb023          	sd	s10,0(s7)
   1bae8:	06c12423          	sw	a2,104(sp)
   1baec:	00f707b3          	add	a5,a4,a5
   1baf0:	00ebb423          	sd	a4,8(s7)
   1baf4:	06f13823          	sd	a5,112(sp)
   1baf8:	00700713          	li	a4,7
   1bafc:	02c75263          	bge	a4,a2,1bb20 <_vfiprintf_r+0x4b0>
   1bb00:	06078ae3          	beqz	a5,1c374 <_vfiprintf_r+0xd04>
   1bb04:	06010613          	addi	a2,sp,96
   1bb08:	00090593          	mv	a1,s2
   1bb0c:	00098513          	mv	a0,s3
   1bb10:	a4dff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1bb14:	da0512e3          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1bb18:	07013783          	ld	a5,112(sp)
   1bb1c:	00048593          	mv	a1,s1
   1bb20:	004b7813          	andi	a6,s6,4
   1bb24:	00080663          	beqz	a6,1bb30 <_vfiprintf_r+0x4c0>
   1bb28:	41940bbb          	subw	s7,s0,s9
   1bb2c:	077040e3          	bgtz	s7,1c38c <_vfiprintf_r+0xd1c>
   1bb30:	00040713          	mv	a4,s0
   1bb34:	01945463          	bge	s0,s9,1bb3c <_vfiprintf_r+0x4cc>
   1bb38:	000c8713          	mv	a4,s9
   1bb3c:	00013683          	ld	a3,0(sp)
   1bb40:	00d7073b          	addw	a4,a4,a3
   1bb44:	00e13023          	sd	a4,0(sp)
   1bb48:	66079e63          	bnez	a5,1c1c4 <_vfiprintf_r+0xb54>
   1bb4c:	06012423          	sw	zero,104(sp)
   1bb50:	00048b93          	mv	s7,s1
   1bb54:	c09ff06f          	j	1b75c <_vfiprintf_r+0xec>
   1bb58:	01013703          	ld	a4,16(sp)
   1bb5c:	04010ba3          	sb	zero,87(sp)
   1bb60:	00100c93          	li	s9,1
   1bb64:	00072783          	lw	a5,0(a4)
   1bb68:	00870713          	addi	a4,a4,8
   1bb6c:	00e13823          	sd	a4,16(sp)
   1bb70:	06f10c23          	sb	a5,120(sp)
   1bb74:	00100793          	li	a5,1
   1bb78:	00f13423          	sd	a5,8(sp)
   1bb7c:	07810d13          	addi	s10,sp,120
   1bb80:	e7dff06f          	j	1b9fc <_vfiprintf_r+0x38c>
   1bb84:	01013703          	ld	a4,16(sp)
   1bb88:	020b7793          	andi	a5,s6,32
   1bb8c:	00870713          	addi	a4,a4,8
   1bb90:	1c0798e3          	bnez	a5,1c560 <_vfiprintf_r+0xef0>
   1bb94:	010b7793          	andi	a5,s6,16
   1bb98:	1c0794e3          	bnez	a5,1c560 <_vfiprintf_r+0xef0>
   1bb9c:	01013683          	ld	a3,16(sp)
   1bba0:	040b7793          	andi	a5,s6,64
   1bba4:	0006ae03          	lw	t3,0(a3)
   1bba8:	3a0784e3          	beqz	a5,1c750 <_vfiprintf_r+0x10e0>
   1bbac:	030e1d93          	slli	s11,t3,0x30
   1bbb0:	030ddd93          	srli	s11,s11,0x30
   1bbb4:	00e13823          	sd	a4,16(sp)
   1bbb8:	000b0c93          	mv	s9,s6
   1bbbc:	00100793          	li	a5,1
   1bbc0:	d95ff06f          	j	1b954 <_vfiprintf_r+0x2e4>
   1bbc4:	080b6b13          	ori	s6,s6,128
   1bbc8:	000b0b1b          	sext.w	s6,s6
   1bbcc:	000c4703          	lbu	a4,0(s8)
   1bbd0:	c3dff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bbd4:	000c4703          	lbu	a4,0(s8)
   1bbd8:	001c0793          	addi	a5,s8,1
   1bbdc:	49a702e3          	beq	a4,s10,1c860 <_vfiprintf_r+0x11f0>
   1bbe0:	fd07069b          	addiw	a3,a4,-48
   1bbe4:	00078c13          	mv	s8,a5
   1bbe8:	00000a93          	li	s5,0
   1bbec:	c2dce6e3          	bltu	s9,a3,1b818 <_vfiprintf_r+0x1a8>
   1bbf0:	001c0c13          	addi	s8,s8,1
   1bbf4:	002a979b          	slliw	a5,s5,0x2
   1bbf8:	fffc4703          	lbu	a4,-1(s8)
   1bbfc:	01578abb          	addw	s5,a5,s5
   1bc00:	001a9a9b          	slliw	s5,s5,0x1
   1bc04:	00da8abb          	addw	s5,s5,a3
   1bc08:	fd07069b          	addiw	a3,a4,-48
   1bc0c:	fedcf2e3          	bgeu	s9,a3,1bbf0 <_vfiprintf_r+0x580>
   1bc10:	c09ff06f          	j	1b818 <_vfiprintf_r+0x1a8>
   1bc14:	000c4703          	lbu	a4,0(s8)
   1bc18:	004b6b13          	ori	s6,s6,4
   1bc1c:	000b0b1b          	sext.w	s6,s6
   1bc20:	bedff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bc24:	02b00793          	li	a5,43
   1bc28:	04f10ba3          	sb	a5,87(sp)
   1bc2c:	000c4703          	lbu	a4,0(s8)
   1bc30:	bddff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bc34:	01013783          	ld	a5,16(sp)
   1bc38:	000c4703          	lbu	a4,0(s8)
   1bc3c:	0007a403          	lw	s0,0(a5)
   1bc40:	00878793          	addi	a5,a5,8
   1bc44:	00f13823          	sd	a5,16(sp)
   1bc48:	bc0452e3          	bgez	s0,1b80c <_vfiprintf_r+0x19c>
   1bc4c:	4080043b          	negw	s0,s0
   1bc50:	fc9ff06f          	j	1bc18 <_vfiprintf_r+0x5a8>
   1bc54:	00098513          	mv	a0,s3
   1bc58:	d19fa0ef          	jal	ra,16970 <_localeconv_r>
   1bc5c:	00853783          	ld	a5,8(a0)
   1bc60:	00078513          	mv	a0,a5
   1bc64:	02f13823          	sd	a5,48(sp)
   1bc68:	840fd0ef          	jal	ra,18ca8 <strlen>
   1bc6c:	02a13c23          	sd	a0,56(sp)
   1bc70:	00050d93          	mv	s11,a0
   1bc74:	00098513          	mv	a0,s3
   1bc78:	cf9fa0ef          	jal	ra,16970 <_localeconv_r>
   1bc7c:	01053783          	ld	a5,16(a0)
   1bc80:	000c4703          	lbu	a4,0(s8)
   1bc84:	02f13423          	sd	a5,40(sp)
   1bc88:	b80d82e3          	beqz	s11,1b80c <_vfiprintf_r+0x19c>
   1bc8c:	b80780e3          	beqz	a5,1b80c <_vfiprintf_r+0x19c>
   1bc90:	0007c783          	lbu	a5,0(a5)
   1bc94:	b6078ce3          	beqz	a5,1b80c <_vfiprintf_r+0x19c>
   1bc98:	400b6b13          	ori	s6,s6,1024
   1bc9c:	000b0b1b          	sext.w	s6,s6
   1bca0:	b6dff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bca4:	001b6b13          	ori	s6,s6,1
   1bca8:	000b0b1b          	sext.w	s6,s6
   1bcac:	000c4703          	lbu	a4,0(s8)
   1bcb0:	b5dff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bcb4:	05714783          	lbu	a5,87(sp)
   1bcb8:	000c4703          	lbu	a4,0(s8)
   1bcbc:	b40798e3          	bnez	a5,1b80c <_vfiprintf_r+0x19c>
   1bcc0:	02000793          	li	a5,32
   1bcc4:	04f10ba3          	sb	a5,87(sp)
   1bcc8:	b45ff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bccc:	010b6793          	ori	a5,s6,16
   1bcd0:	0007881b          	sext.w	a6,a5
   1bcd4:	01013783          	ld	a5,16(sp)
   1bcd8:	00878793          	addi	a5,a5,8
   1bcdc:	01013703          	ld	a4,16(sp)
   1bce0:	00073d83          	ld	s11,0(a4)
   1bce4:	00f13823          	sd	a5,16(sp)
   1bce8:	bff87813          	andi	a6,a6,-1025
   1bcec:	00080c9b          	sext.w	s9,a6
   1bcf0:	00000793          	li	a5,0
   1bcf4:	c61ff06f          	j	1b954 <_vfiprintf_r+0x2e4>
   1bcf8:	01013783          	ld	a5,16(sp)
   1bcfc:	010b6e93          	ori	t4,s6,16
   1bd00:	000e8c9b          	sext.w	s9,t4
   1bd04:	00878713          	addi	a4,a5,8
   1bd08:	01013783          	ld	a5,16(sp)
   1bd0c:	0007b783          	ld	a5,0(a5)
   1bd10:	00e13823          	sd	a4,16(sp)
   1bd14:	00078d93          	mv	s11,a5
   1bd18:	1c07c663          	bltz	a5,1bee4 <_vfiprintf_r+0x874>
   1bd1c:	fff00793          	li	a5,-1
   1bd20:	00fa8a63          	beq	s5,a5,1bd34 <_vfiprintf_r+0x6c4>
   1bd24:	f7fcf813          	andi	a6,s9,-129
   1bd28:	00080b1b          	sext.w	s6,a6
   1bd2c:	780d8663          	beqz	s11,1c4b8 <_vfiprintf_r+0xe48>
   1bd30:	000b0c93          	mv	s9,s6
   1bd34:	00900793          	li	a5,9
   1bd38:	09b7e0e3          	bltu	a5,s11,1c5b8 <_vfiprintf_r+0xf48>
   1bd3c:	030d8e1b          	addiw	t3,s11,48
   1bd40:	00100793          	li	a5,1
   1bd44:	0dc10da3          	sb	t3,219(sp)
   1bd48:	000c8b13          	mv	s6,s9
   1bd4c:	00f13423          	sd	a5,8(sp)
   1bd50:	0db10d13          	addi	s10,sp,219
   1bd54:	c31ff06f          	j	1b984 <_vfiprintf_r+0x314>
   1bd58:	01013783          	ld	a5,16(sp)
   1bd5c:	010b6e93          	ori	t4,s6,16
   1bd60:	000e8c9b          	sext.w	s9,t4
   1bd64:	00878713          	addi	a4,a5,8
   1bd68:	01013783          	ld	a5,16(sp)
   1bd6c:	0007bd83          	ld	s11,0(a5)
   1bd70:	00100793          	li	a5,1
   1bd74:	00e13823          	sd	a4,16(sp)
   1bd78:	bddff06f          	j	1b954 <_vfiprintf_r+0x2e4>
   1bd7c:	01013783          	ld	a5,16(sp)
   1bd80:	04010ba3          	sb	zero,87(sp)
   1bd84:	0007bd03          	ld	s10,0(a5)
   1bd88:	00878d93          	addi	s11,a5,8
   1bd8c:	140d04e3          	beqz	s10,1c6d4 <_vfiprintf_r+0x1064>
   1bd90:	fff00793          	li	a5,-1
   1bd94:	7efa8463          	beq	s5,a5,1c57c <_vfiprintf_r+0xf0c>
   1bd98:	000a8613          	mv	a2,s5
   1bd9c:	00000593          	li	a1,0
   1bda0:	000d0513          	mv	a0,s10
   1bda4:	f30fb0ef          	jal	ra,174d4 <memchr>
   1bda8:	260502e3          	beqz	a0,1c80c <_vfiprintf_r+0x119c>
   1bdac:	41a507bb          	subw	a5,a0,s10
   1bdb0:	00f13423          	sd	a5,8(sp)
   1bdb4:	01b13823          	sd	s11,16(sp)
   1bdb8:	00000a93          	li	s5,0
   1bdbc:	bc9ff06f          	j	1b984 <_vfiprintf_r+0x314>
   1bdc0:	020b6b13          	ori	s6,s6,32
   1bdc4:	000b0b1b          	sext.w	s6,s6
   1bdc8:	000c4703          	lbu	a4,0(s8)
   1bdcc:	a41ff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1bdd0:	01013783          	ld	a5,16(sp)
   1bdd4:	04013703          	ld	a4,64(sp)
   1bdd8:	002b6813          	ori	a6,s6,2
   1bddc:	0007bd83          	ld	s11,0(a5)
   1bde0:	00878793          	addi	a5,a5,8
   1bde4:	00f13823          	sd	a5,16(sp)
   1bde8:	00005797          	auipc	a5,0x5
   1bdec:	61878793          	addi	a5,a5,1560 # 21400 <zeroes.4539+0x60>
   1bdf0:	00f13c23          	sd	a5,24(sp)
   1bdf4:	00080c9b          	sext.w	s9,a6
   1bdf8:	04e11c23          	sh	a4,88(sp)
   1bdfc:	00200793          	li	a5,2
   1be00:	b55ff06f          	j	1b954 <_vfiprintf_r+0x2e4>
   1be04:	01013783          	ld	a5,16(sp)
   1be08:	020b7713          	andi	a4,s6,32
   1be0c:	00878793          	addi	a5,a5,8
   1be10:	74071463          	bnez	a4,1c558 <_vfiprintf_r+0xee8>
   1be14:	010b7713          	andi	a4,s6,16
   1be18:	74071063          	bnez	a4,1c558 <_vfiprintf_r+0xee8>
   1be1c:	01013683          	ld	a3,16(sp)
   1be20:	040b7713          	andi	a4,s6,64
   1be24:	0006ae03          	lw	t3,0(a3)
   1be28:	100708e3          	beqz	a4,1c738 <_vfiprintf_r+0x10c8>
   1be2c:	030e1d93          	slli	s11,t3,0x30
   1be30:	030ddd93          	srli	s11,s11,0x30
   1be34:	000b0813          	mv	a6,s6
   1be38:	00f13823          	sd	a5,16(sp)
   1be3c:	eadff06f          	j	1bce8 <_vfiprintf_r+0x678>
   1be40:	01013683          	ld	a3,16(sp)
   1be44:	020b7793          	andi	a5,s6,32
   1be48:	0006b703          	ld	a4,0(a3)
   1be4c:	00868693          	addi	a3,a3,8
   1be50:	00d13823          	sd	a3,16(sp)
   1be54:	14079a63          	bnez	a5,1bfa8 <_vfiprintf_r+0x938>
   1be58:	010b7793          	andi	a5,s6,16
   1be5c:	14079663          	bnez	a5,1bfa8 <_vfiprintf_r+0x938>
   1be60:	040b7793          	andi	a5,s6,64
   1be64:	140798e3          	bnez	a5,1c7b4 <_vfiprintf_r+0x1144>
   1be68:	200b7813          	andi	a6,s6,512
   1be6c:	00013783          	ld	a5,0(sp)
   1be70:	1e0804e3          	beqz	a6,1c858 <_vfiprintf_r+0x11e8>
   1be74:	00f70023          	sb	a5,0(a4)
   1be78:	8e5ff06f          	j	1b75c <_vfiprintf_r+0xec>
   1be7c:	000c4703          	lbu	a4,0(s8)
   1be80:	06c00793          	li	a5,108
   1be84:	02f70ee3          	beq	a4,a5,1c6c0 <_vfiprintf_r+0x1050>
   1be88:	010b6b13          	ori	s6,s6,16
   1be8c:	000b0b1b          	sext.w	s6,s6
   1be90:	97dff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1be94:	000c4703          	lbu	a4,0(s8)
   1be98:	06800793          	li	a5,104
   1be9c:	00f708e3          	beq	a4,a5,1c6ac <_vfiprintf_r+0x103c>
   1bea0:	040b6b13          	ori	s6,s6,64
   1bea4:	000b0b1b          	sext.w	s6,s6
   1bea8:	965ff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1beac:	01013703          	ld	a4,16(sp)
   1beb0:	020b7793          	andi	a5,s6,32
   1beb4:	00870713          	addi	a4,a4,8
   1beb8:	6a079e63          	bnez	a5,1c574 <_vfiprintf_r+0xf04>
   1bebc:	010b7793          	andi	a5,s6,16
   1bec0:	6a079a63          	bnez	a5,1c574 <_vfiprintf_r+0xf04>
   1bec4:	040b7793          	andi	a5,s6,64
   1bec8:	040788e3          	beqz	a5,1c718 <_vfiprintf_r+0x10a8>
   1becc:	01013783          	ld	a5,16(sp)
   1bed0:	00e13823          	sd	a4,16(sp)
   1bed4:	000b0c93          	mv	s9,s6
   1bed8:	00079d83          	lh	s11,0(a5)
   1bedc:	000d8793          	mv	a5,s11
   1bee0:	e207dee3          	bgez	a5,1bd1c <_vfiprintf_r+0x6ac>
   1bee4:	02d00793          	li	a5,45
   1bee8:	04f10ba3          	sb	a5,87(sp)
   1beec:	fff00713          	li	a4,-1
   1bef0:	41b00db3          	neg	s11,s11
   1bef4:	00100793          	li	a5,1
   1bef8:	a6ea94e3          	bne	s5,a4,1b960 <_vfiprintf_r+0x2f0>
   1befc:	00100713          	li	a4,1
   1bf00:	e2e78ae3          	beq	a5,a4,1bd34 <_vfiprintf_r+0x6c4>
   1bf04:	00200713          	li	a4,2
   1bf08:	0ce78063          	beq	a5,a4,1bfc8 <_vfiprintf_r+0x958>
   1bf0c:	0dc10713          	addi	a4,sp,220
   1bf10:	0080006f          	j	1bf18 <_vfiprintf_r+0x8a8>
   1bf14:	000d0713          	mv	a4,s10
   1bf18:	007df793          	andi	a5,s11,7
   1bf1c:	03078793          	addi	a5,a5,48
   1bf20:	fef70fa3          	sb	a5,-1(a4)
   1bf24:	003ddd93          	srli	s11,s11,0x3
   1bf28:	fff70d13          	addi	s10,a4,-1
   1bf2c:	fe0d94e3          	bnez	s11,1bf14 <_vfiprintf_r+0x8a4>
   1bf30:	001cf613          	andi	a2,s9,1
   1bf34:	0a060c63          	beqz	a2,1bfec <_vfiprintf_r+0x97c>
   1bf38:	03000613          	li	a2,48
   1bf3c:	0ac78863          	beq	a5,a2,1bfec <_vfiprintf_r+0x97c>
   1bf40:	ffe70713          	addi	a4,a4,-2
   1bf44:	0dc10793          	addi	a5,sp,220
   1bf48:	40e787bb          	subw	a5,a5,a4
   1bf4c:	fecd0fa3          	sb	a2,-1(s10)
   1bf50:	00f13423          	sd	a5,8(sp)
   1bf54:	000c8b13          	mv	s6,s9
   1bf58:	00070d13          	mv	s10,a4
   1bf5c:	a29ff06f          	j	1b984 <_vfiprintf_r+0x314>
   1bf60:	01013683          	ld	a3,16(sp)
   1bf64:	00005797          	auipc	a5,0x5
   1bf68:	49c78793          	addi	a5,a5,1180 # 21400 <zeroes.4539+0x60>
   1bf6c:	00f13c23          	sd	a5,24(sp)
   1bf70:	020b7793          	andi	a5,s6,32
   1bf74:	00868613          	addi	a2,a3,8
   1bf78:	9a0794e3          	bnez	a5,1b920 <_vfiprintf_r+0x2b0>
   1bf7c:	010b7793          	andi	a5,s6,16
   1bf80:	5e079463          	bnez	a5,1c568 <_vfiprintf_r+0xef8>
   1bf84:	01013683          	ld	a3,16(sp)
   1bf88:	040b7793          	andi	a5,s6,64
   1bf8c:	0006ae03          	lw	t3,0(a3)
   1bf90:	76078863          	beqz	a5,1c700 <_vfiprintf_r+0x1090>
   1bf94:	030e1d93          	slli	s11,t3,0x30
   1bf98:	030ddd93          	srli	s11,s11,0x30
   1bf9c:	989ff06f          	j	1b924 <_vfiprintf_r+0x2b4>
   1bfa0:	f90f70ef          	jal	ra,13730 <__sinit>
   1bfa4:	f20ff06f          	j	1b6c4 <_vfiprintf_r+0x54>
   1bfa8:	00013783          	ld	a5,0(sp)
   1bfac:	00f73023          	sd	a5,0(a4)
   1bfb0:	facff06f          	j	1b75c <_vfiprintf_r+0xec>
   1bfb4:	00100713          	li	a4,1
   1bfb8:	04e786e3          	beq	a5,a4,1c804 <_vfiprintf_r+0x1194>
   1bfbc:	00200713          	li	a4,2
   1bfc0:	000b0c93          	mv	s9,s6
   1bfc4:	f4e794e3          	bne	a5,a4,1bf0c <_vfiprintf_r+0x89c>
   1bfc8:	01813703          	ld	a4,24(sp)
   1bfcc:	0dc10d13          	addi	s10,sp,220
   1bfd0:	00fdf793          	andi	a5,s11,15
   1bfd4:	00f707b3          	add	a5,a4,a5
   1bfd8:	0007c783          	lbu	a5,0(a5)
   1bfdc:	fffd0d13          	addi	s10,s10,-1
   1bfe0:	004ddd93          	srli	s11,s11,0x4
   1bfe4:	00fd0023          	sb	a5,0(s10)
   1bfe8:	fe0d94e3          	bnez	s11,1bfd0 <_vfiprintf_r+0x960>
   1bfec:	0dc10793          	addi	a5,sp,220
   1bff0:	41a787bb          	subw	a5,a5,s10
   1bff4:	00f13423          	sd	a5,8(sp)
   1bff8:	000c8b13          	mv	s6,s9
   1bffc:	989ff06f          	j	1b984 <_vfiprintf_r+0x314>
   1c000:	41940dbb          	subw	s11,s0,s9
   1c004:	adb058e3          	blez	s11,1bad4 <_vfiprintf_r+0x464>
   1c008:	01000513          	li	a0,16
   1c00c:	03b55ce3          	bge	a0,s11,1c844 <_vfiprintf_r+0x11d4>
   1c010:	00006e17          	auipc	t3,0x6
   1c014:	b20e0e13          	addi	t3,t3,-1248 # 21b30 <zeroes.4515>
   1c018:	02813023          	sd	s0,32(sp)
   1c01c:	01000e93          	li	t4,16
   1c020:	00700f13          	li	t5,7
   1c024:	000e0413          	mv	s0,t3
   1c028:	0180006f          	j	1c040 <_vfiprintf_r+0x9d0>
   1c02c:	0027051b          	addiw	a0,a4,2
   1c030:	010b8b93          	addi	s7,s7,16
   1c034:	00060713          	mv	a4,a2
   1c038:	ff0d8d9b          	addiw	s11,s11,-16
   1c03c:	05bedc63          	bge	t4,s11,1c094 <_vfiprintf_r+0xa24>
   1c040:	0017061b          	addiw	a2,a4,1
   1c044:	01078793          	addi	a5,a5,16
   1c048:	008bb023          	sd	s0,0(s7)
   1c04c:	01dbb423          	sd	t4,8(s7)
   1c050:	06f13823          	sd	a5,112(sp)
   1c054:	06c12423          	sw	a2,104(sp)
   1c058:	fccf5ae3          	bge	t5,a2,1c02c <_vfiprintf_r+0x9bc>
   1c05c:	18078063          	beqz	a5,1c1dc <_vfiprintf_r+0xb6c>
   1c060:	06010613          	addi	a2,sp,96
   1c064:	00090593          	mv	a1,s2
   1c068:	00098513          	mv	a0,s3
   1c06c:	cf0ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c070:	840514e3          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c074:	06812703          	lw	a4,104(sp)
   1c078:	01000e93          	li	t4,16
   1c07c:	ff0d8d9b          	addiw	s11,s11,-16
   1c080:	07013783          	ld	a5,112(sp)
   1c084:	00048b93          	mv	s7,s1
   1c088:	0017051b          	addiw	a0,a4,1
   1c08c:	00700f13          	li	t5,7
   1c090:	fbbec8e3          	blt	t4,s11,1c040 <_vfiprintf_r+0x9d0>
   1c094:	00040e13          	mv	t3,s0
   1c098:	02013403          	ld	s0,32(sp)
   1c09c:	010b8e93          	addi	t4,s7,16
   1c0a0:	01b787b3          	add	a5,a5,s11
   1c0a4:	01cbb023          	sd	t3,0(s7)
   1c0a8:	01bbb423          	sd	s11,8(s7)
   1c0ac:	06f13823          	sd	a5,112(sp)
   1c0b0:	06a12423          	sw	a0,104(sp)
   1c0b4:	00700713          	li	a4,7
   1c0b8:	48a75663          	bge	a4,a0,1c544 <_vfiprintf_r+0xed4>
   1c0bc:	6c078063          	beqz	a5,1c77c <_vfiprintf_r+0x110c>
   1c0c0:	06010613          	addi	a2,sp,96
   1c0c4:	00090593          	mv	a1,s2
   1c0c8:	00098513          	mv	a0,s3
   1c0cc:	c90ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c0d0:	fe051463          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c0d4:	00813683          	ld	a3,8(sp)
   1c0d8:	06812703          	lw	a4,104(sp)
   1c0dc:	07013783          	ld	a5,112(sp)
   1c0e0:	40da8abb          	subw	s5,s5,a3
   1c0e4:	0f010593          	addi	a1,sp,240
   1c0e8:	0017061b          	addiw	a2,a4,1
   1c0ec:	00048b93          	mv	s7,s1
   1c0f0:	9f5058e3          	blez	s5,1bae0 <_vfiprintf_r+0x470>
   1c0f4:	01000513          	li	a0,16
   1c0f8:	67555a63          	bge	a0,s5,1c76c <_vfiprintf_r+0x10fc>
   1c0fc:	00006e17          	auipc	t3,0x6
   1c100:	a34e0e13          	addi	t3,t3,-1484 # 21b30 <zeroes.4515>
   1c104:	02813023          	sd	s0,32(sp)
   1c108:	01000893          	li	a7,16
   1c10c:	00700d93          	li	s11,7
   1c110:	000e0413          	mv	s0,t3
   1c114:	0180006f          	j	1c12c <_vfiprintf_r+0xabc>
   1c118:	0027061b          	addiw	a2,a4,2
   1c11c:	010b8b93          	addi	s7,s7,16
   1c120:	00058713          	mv	a4,a1
   1c124:	ff0a8a9b          	addiw	s5,s5,-16
   1c128:	0558da63          	bge	a7,s5,1c17c <_vfiprintf_r+0xb0c>
   1c12c:	0017059b          	addiw	a1,a4,1
   1c130:	01078793          	addi	a5,a5,16
   1c134:	008bb023          	sd	s0,0(s7)
   1c138:	011bb423          	sd	a7,8(s7)
   1c13c:	06f13823          	sd	a5,112(sp)
   1c140:	06b12423          	sw	a1,104(sp)
   1c144:	fcbddae3          	bge	s11,a1,1c118 <_vfiprintf_r+0xaa8>
   1c148:	06078663          	beqz	a5,1c1b4 <_vfiprintf_r+0xb44>
   1c14c:	06010613          	addi	a2,sp,96
   1c150:	00090593          	mv	a1,s2
   1c154:	00098513          	mv	a0,s3
   1c158:	c04ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c15c:	f4051e63          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c160:	06812703          	lw	a4,104(sp)
   1c164:	01000893          	li	a7,16
   1c168:	ff0a8a9b          	addiw	s5,s5,-16
   1c16c:	07013783          	ld	a5,112(sp)
   1c170:	00048b93          	mv	s7,s1
   1c174:	0017061b          	addiw	a2,a4,1
   1c178:	fb58cae3          	blt	a7,s5,1c12c <_vfiprintf_r+0xabc>
   1c17c:	00040e13          	mv	t3,s0
   1c180:	02013403          	ld	s0,32(sp)
   1c184:	010b8513          	addi	a0,s7,16
   1c188:	015787b3          	add	a5,a5,s5
   1c18c:	01cbb023          	sd	t3,0(s7)
   1c190:	015bb423          	sd	s5,8(s7)
   1c194:	06f13823          	sd	a5,112(sp)
   1c198:	06c12423          	sw	a2,104(sp)
   1c19c:	00700713          	li	a4,7
   1c1a0:	2cc74e63          	blt	a4,a2,1c47c <_vfiprintf_r+0xe0c>
   1c1a4:	0016061b          	addiw	a2,a2,1
   1c1a8:	01050593          	addi	a1,a0,16
   1c1ac:	00050b93          	mv	s7,a0
   1c1b0:	931ff06f          	j	1bae0 <_vfiprintf_r+0x470>
   1c1b4:	00100613          	li	a2,1
   1c1b8:	00000713          	li	a4,0
   1c1bc:	00048b93          	mv	s7,s1
   1c1c0:	f65ff06f          	j	1c124 <_vfiprintf_r+0xab4>
   1c1c4:	06010613          	addi	a2,sp,96
   1c1c8:	00090593          	mv	a1,s2
   1c1cc:	00098513          	mv	a0,s3
   1c1d0:	b8cff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c1d4:	96050ce3          	beqz	a0,1bb4c <_vfiprintf_r+0x4dc>
   1c1d8:	ee0ff06f          	j	1b8b8 <_vfiprintf_r+0x248>
   1c1dc:	00100513          	li	a0,1
   1c1e0:	00000713          	li	a4,0
   1c1e4:	00048b93          	mv	s7,s1
   1c1e8:	e51ff06f          	j	1c038 <_vfiprintf_r+0x9c8>
   1c1ec:	04078663          	beqz	a5,1c238 <_vfiprintf_r+0xbc8>
   1c1f0:	06010613          	addi	a2,sp,96
   1c1f4:	00090593          	mv	a1,s2
   1c1f8:	00098513          	mv	a0,s3
   1c1fc:	05e13423          	sd	t5,72(sp)
   1c200:	03d13023          	sd	t4,32(sp)
   1c204:	b58ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c208:	ea051863          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c20c:	06812703          	lw	a4,104(sp)
   1c210:	07013783          	ld	a5,112(sp)
   1c214:	0f010593          	addi	a1,sp,240
   1c218:	0017061b          	addiw	a2,a4,1
   1c21c:	00048b93          	mv	s7,s1
   1c220:	04813f03          	ld	t5,72(sp)
   1c224:	02013e83          	ld	t4,32(sp)
   1c228:	849ff06f          	j	1ba70 <_vfiprintf_r+0x400>
   1c22c:	2e079063          	bnez	a5,1c50c <_vfiprintf_r+0xe9c>
   1c230:	05714703          	lbu	a4,87(sp)
   1c234:	56071263          	bnez	a4,1c798 <_vfiprintf_r+0x1128>
   1c238:	2a0e8863          	beqz	t4,1c4e8 <_vfiprintf_r+0xe78>
   1c23c:	05810793          	addi	a5,sp,88
   1c240:	0ef13023          	sd	a5,224(sp)
   1c244:	00200793          	li	a5,2
   1c248:	0ef13423          	sd	a5,232(sp)
   1c24c:	00100613          	li	a2,1
   1c250:	0f010593          	addi	a1,sp,240
   1c254:	00060713          	mv	a4,a2
   1c258:	00058b93          	mv	s7,a1
   1c25c:	0016061b          	addiw	a2,a2,1
   1c260:	01058593          	addi	a1,a1,16
   1c264:	869ff06f          	j	1bacc <_vfiprintf_r+0x45c>
   1c268:	000b0c93          	mv	s9,s6
   1c26c:	c91ff06f          	j	1befc <_vfiprintf_r+0x88c>
   1c270:	01000513          	li	a0,16
   1c274:	5bb55463          	bge	a0,s11,1c81c <_vfiprintf_r+0x11ac>
   1c278:	00006e17          	auipc	t3,0x6
   1c27c:	8a8e0e13          	addi	t3,t3,-1880 # 21b20 <blanks.4514>
   1c280:	000b8693          	mv	a3,s7
   1c284:	01000f93          	li	t6,16
   1c288:	00040b93          	mv	s7,s0
   1c28c:	00700293          	li	t0,7
   1c290:	000d8413          	mv	s0,s11
   1c294:	03d13023          	sd	t4,32(sp)
   1c298:	000c0d93          	mv	s11,s8
   1c29c:	05e13423          	sd	t5,72(sp)
   1c2a0:	000a8c13          	mv	s8,s5
   1c2a4:	000e0a93          	mv	s5,t3
   1c2a8:	01c0006f          	j	1c2c4 <_vfiprintf_r+0xc54>
   1c2ac:	0027059b          	addiw	a1,a4,2
   1c2b0:	01068693          	addi	a3,a3,16
   1c2b4:	00060713          	mv	a4,a2
   1c2b8:	ff04041b          	addiw	s0,s0,-16
   1c2bc:	048fde63          	bge	t6,s0,1c318 <_vfiprintf_r+0xca8>
   1c2c0:	0017059b          	addiw	a1,a4,1
   1c2c4:	01078793          	addi	a5,a5,16
   1c2c8:	0156b023          	sd	s5,0(a3)
   1c2cc:	01f6b423          	sd	t6,8(a3)
   1c2d0:	06f13823          	sd	a5,112(sp)
   1c2d4:	0005861b          	sext.w	a2,a1
   1c2d8:	06b12423          	sw	a1,104(sp)
   1c2dc:	fcc2d8e3          	bge	t0,a2,1c2ac <_vfiprintf_r+0xc3c>
   1c2e0:	08078263          	beqz	a5,1c364 <_vfiprintf_r+0xcf4>
   1c2e4:	06010613          	addi	a2,sp,96
   1c2e8:	00090593          	mv	a1,s2
   1c2ec:	00098513          	mv	a0,s3
   1c2f0:	a6cff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c2f4:	dc051263          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c2f8:	06812703          	lw	a4,104(sp)
   1c2fc:	01000f93          	li	t6,16
   1c300:	ff04041b          	addiw	s0,s0,-16
   1c304:	07013783          	ld	a5,112(sp)
   1c308:	00048693          	mv	a3,s1
   1c30c:	0017059b          	addiw	a1,a4,1
   1c310:	00700293          	li	t0,7
   1c314:	fa8fc6e3          	blt	t6,s0,1c2c0 <_vfiprintf_r+0xc50>
   1c318:	02013e83          	ld	t4,32(sp)
   1c31c:	04813f03          	ld	t5,72(sp)
   1c320:	000a8e13          	mv	t3,s5
   1c324:	000c0a93          	mv	s5,s8
   1c328:	000d8c13          	mv	s8,s11
   1c32c:	00040d93          	mv	s11,s0
   1c330:	000b8413          	mv	s0,s7
   1c334:	00068b93          	mv	s7,a3
   1c338:	01b787b3          	add	a5,a5,s11
   1c33c:	01cbb023          	sd	t3,0(s7)
   1c340:	01bbb423          	sd	s11,8(s7)
   1c344:	06f13823          	sd	a5,112(sp)
   1c348:	06b12423          	sw	a1,104(sp)
   1c34c:	00700713          	li	a4,7
   1c350:	ecb74ee3          	blt	a4,a1,1c22c <_vfiprintf_r+0xbbc>
   1c354:	010b8b93          	addi	s7,s7,16
   1c358:	0015861b          	addiw	a2,a1,1
   1c35c:	00058713          	mv	a4,a1
   1c360:	ed0ff06f          	j	1ba30 <_vfiprintf_r+0x3c0>
   1c364:	00000713          	li	a4,0
   1c368:	00100593          	li	a1,1
   1c36c:	00048693          	mv	a3,s1
   1c370:	f49ff06f          	j	1c2b8 <_vfiprintf_r+0xc48>
   1c374:	06012423          	sw	zero,104(sp)
   1c378:	004b7813          	andi	a6,s6,4
   1c37c:	0e080263          	beqz	a6,1c460 <_vfiprintf_r+0xdf0>
   1c380:	41940bbb          	subw	s7,s0,s9
   1c384:	0d705e63          	blez	s7,1c460 <_vfiprintf_r+0xdf0>
   1c388:	00048593          	mv	a1,s1
   1c38c:	01000713          	li	a4,16
   1c390:	06812603          	lw	a2,104(sp)
   1c394:	49775a63          	bge	a4,s7,1c828 <_vfiprintf_r+0x11b8>
   1c398:	00005e17          	auipc	t3,0x5
   1c39c:	788e0e13          	addi	t3,t3,1928 # 21b20 <blanks.4514>
   1c3a0:	01000d13          	li	s10,16
   1c3a4:	00700d93          	li	s11,7
   1c3a8:	000e0a93          	mv	s5,t3
   1c3ac:	0180006f          	j	1c3c4 <_vfiprintf_r+0xd54>
   1c3b0:	0026071b          	addiw	a4,a2,2
   1c3b4:	01058593          	addi	a1,a1,16
   1c3b8:	00068613          	mv	a2,a3
   1c3bc:	ff0b8b9b          	addiw	s7,s7,-16
   1c3c0:	057d5863          	bge	s10,s7,1c410 <_vfiprintf_r+0xda0>
   1c3c4:	0016069b          	addiw	a3,a2,1
   1c3c8:	01078793          	addi	a5,a5,16
   1c3cc:	0155b023          	sd	s5,0(a1)
   1c3d0:	01a5b423          	sd	s10,8(a1)
   1c3d4:	06f13823          	sd	a5,112(sp)
   1c3d8:	06d12423          	sw	a3,104(sp)
   1c3dc:	fcdddae3          	bge	s11,a3,1c3b0 <_vfiprintf_r+0xd40>
   1c3e0:	06078863          	beqz	a5,1c450 <_vfiprintf_r+0xde0>
   1c3e4:	06010613          	addi	a2,sp,96
   1c3e8:	00090593          	mv	a1,s2
   1c3ec:	00098513          	mv	a0,s3
   1c3f0:	96cff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c3f4:	cc051263          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c3f8:	06812603          	lw	a2,104(sp)
   1c3fc:	ff0b8b9b          	addiw	s7,s7,-16
   1c400:	07013783          	ld	a5,112(sp)
   1c404:	00048593          	mv	a1,s1
   1c408:	0016071b          	addiw	a4,a2,1
   1c40c:	fb7d4ce3          	blt	s10,s7,1c3c4 <_vfiprintf_r+0xd54>
   1c410:	000a8e13          	mv	t3,s5
   1c414:	017787b3          	add	a5,a5,s7
   1c418:	01c5b023          	sd	t3,0(a1)
   1c41c:	0175b423          	sd	s7,8(a1)
   1c420:	06f13823          	sd	a5,112(sp)
   1c424:	06e12423          	sw	a4,104(sp)
   1c428:	00700613          	li	a2,7
   1c42c:	f0e65263          	bge	a2,a4,1bb30 <_vfiprintf_r+0x4c0>
   1c430:	02078863          	beqz	a5,1c460 <_vfiprintf_r+0xdf0>
   1c434:	06010613          	addi	a2,sp,96
   1c438:	00090593          	mv	a1,s2
   1c43c:	00098513          	mv	a0,s3
   1c440:	91cff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c444:	c6051a63          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c448:	07013783          	ld	a5,112(sp)
   1c44c:	ee4ff06f          	j	1bb30 <_vfiprintf_r+0x4c0>
   1c450:	00100713          	li	a4,1
   1c454:	00000613          	li	a2,0
   1c458:	00048593          	mv	a1,s1
   1c45c:	f61ff06f          	j	1c3bc <_vfiprintf_r+0xd4c>
   1c460:	00040793          	mv	a5,s0
   1c464:	01945463          	bge	s0,s9,1c46c <_vfiprintf_r+0xdfc>
   1c468:	000c8793          	mv	a5,s9
   1c46c:	00013703          	ld	a4,0(sp)
   1c470:	00e787bb          	addw	a5,a5,a4
   1c474:	00f13023          	sd	a5,0(sp)
   1c478:	ed4ff06f          	j	1bb4c <_vfiprintf_r+0x4dc>
   1c47c:	10078e63          	beqz	a5,1c598 <_vfiprintf_r+0xf28>
   1c480:	06010613          	addi	a2,sp,96
   1c484:	00090593          	mv	a1,s2
   1c488:	00098513          	mv	a0,s3
   1c48c:	8d0ff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c490:	c2051463          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c494:	06812603          	lw	a2,104(sp)
   1c498:	07013783          	ld	a5,112(sp)
   1c49c:	0f010593          	addi	a1,sp,240
   1c4a0:	0016061b          	addiw	a2,a2,1
   1c4a4:	00048b93          	mv	s7,s1
   1c4a8:	e38ff06f          	j	1bae0 <_vfiprintf_r+0x470>
   1c4ac:	06012423          	sw	zero,104(sp)
   1c4b0:	00048b93          	mv	s7,s1
   1c4b4:	b24ff06f          	j	1b7d8 <_vfiprintf_r+0x168>
   1c4b8:	340a9663          	bnez	s5,1c804 <_vfiprintf_r+0x1194>
   1c4bc:	00000a93          	li	s5,0
   1c4c0:	00013423          	sd	zero,8(sp)
   1c4c4:	0dc10d13          	addi	s10,sp,220
   1c4c8:	cbcff06f          	j	1b984 <_vfiprintf_r+0x314>
   1c4cc:	0f010593          	addi	a1,sp,240
   1c4d0:	00100613          	li	a2,1
   1c4d4:	00000713          	li	a4,0
   1c4d8:	00048b93          	mv	s7,s1
   1c4dc:	df0ff06f          	j	1bacc <_vfiprintf_r+0x45c>
   1c4e0:	000c0c93          	mv	s9,s8
   1c4e4:	b08ff06f          	j	1b7ec <_vfiprintf_r+0x17c>
   1c4e8:	00000713          	li	a4,0
   1c4ec:	0f010593          	addi	a1,sp,240
   1c4f0:	00100613          	li	a2,1
   1c4f4:	00048b93          	mv	s7,s1
   1c4f8:	dd4ff06f          	j	1bacc <_vfiprintf_r+0x45c>
   1c4fc:	03000793          	li	a5,48
   1c500:	0cf10da3          	sb	a5,219(sp)
   1c504:	0db10d13          	addi	s10,sp,219
   1c508:	c7cff06f          	j	1b984 <_vfiprintf_r+0x314>
   1c50c:	06010613          	addi	a2,sp,96
   1c510:	00090593          	mv	a1,s2
   1c514:	00098513          	mv	a0,s3
   1c518:	05e13423          	sd	t5,72(sp)
   1c51c:	03d13023          	sd	t4,32(sp)
   1c520:	83cff0ef          	jal	ra,1b55c <__sprint_r.part.0>
   1c524:	b8051a63          	bnez	a0,1b8b8 <_vfiprintf_r+0x248>
   1c528:	06812703          	lw	a4,104(sp)
   1c52c:	07013783          	ld	a5,112(sp)
   1c530:	00048b93          	mv	s7,s1
   1c534:	0017061b          	addiw	a2,a4,1
   1c538:	04813f03          	ld	t5,72(sp)
   1c53c:	02013e83          	ld	t4,32(sp)
   1c540:	cf0ff06f          	j	1ba30 <_vfiprintf_r+0x3c0>
   1c544:	0015061b          	addiw	a2,a0,1
   1c548:	010e8593          	addi	a1,t4,16
   1c54c:	00050713          	mv	a4,a0
   1c550:	000e8b93          	mv	s7,t4
   1c554:	d80ff06f          	j	1bad4 <_vfiprintf_r+0x464>
   1c558:	000b0813          	mv	a6,s6
   1c55c:	f80ff06f          	j	1bcdc <_vfiprintf_r+0x66c>
   1c560:	000b0c93          	mv	s9,s6
   1c564:	805ff06f          	j	1bd68 <_vfiprintf_r+0x6f8>
   1c568:	01013783          	ld	a5,16(sp)
   1c56c:	0007bd83          	ld	s11,0(a5)
   1c570:	bb4ff06f          	j	1b924 <_vfiprintf_r+0x2b4>
   1c574:	000b0c93          	mv	s9,s6
   1c578:	f90ff06f          	j	1bd08 <_vfiprintf_r+0x698>
   1c57c:	000d0513          	mv	a0,s10
   1c580:	f28fc0ef          	jal	ra,18ca8 <strlen>
   1c584:	0005079b          	sext.w	a5,a0
   1c588:	00f13423          	sd	a5,8(sp)
   1c58c:	01b13823          	sd	s11,16(sp)
   1c590:	00000a93          	li	s5,0
   1c594:	bf0ff06f          	j	1b984 <_vfiprintf_r+0x314>
   1c598:	00813783          	ld	a5,8(sp)
   1c59c:	00100713          	li	a4,1
   1c5a0:	0fa13023          	sd	s10,224(sp)
   1c5a4:	0ef13423          	sd	a5,232(sp)
   1c5a8:	06f13823          	sd	a5,112(sp)
   1c5ac:	06e12423          	sw	a4,104(sp)
   1c5b0:	0f010593          	addi	a1,sp,240
   1c5b4:	d6cff06f          	j	1bb20 <_vfiprintf_r+0x4b0>
   1c5b8:	400cfd13          	andi	s10,s9,1024
   1c5bc:	000d079b          	sext.w	a5,s10
   1c5c0:	00813423          	sd	s0,8(sp)
   1c5c4:	02813403          	ld	s0,40(sp)
   1c5c8:	0dc10d13          	addi	s10,sp,220
   1c5cc:	03313023          	sd	s3,32(sp)
   1c5d0:	000d8993          	mv	s3,s11
   1c5d4:	00078d93          	mv	s11,a5
   1c5d8:	000c0793          	mv	a5,s8
   1c5dc:	00000b13          	li	s6,0
   1c5e0:	00090c13          	mv	s8,s2
   1c5e4:	000d0913          	mv	s2,s10
   1c5e8:	00078d13          	mv	s10,a5
   1c5ec:	00a00593          	li	a1,10
   1c5f0:	00098513          	mv	a0,s3
   1c5f4:	cb1f30ef          	jal	ra,102a4 <__umoddi3>
   1c5f8:	0305051b          	addiw	a0,a0,48
   1c5fc:	fea90fa3          	sb	a0,-1(s2)
   1c600:	001b0b1b          	addiw	s6,s6,1
   1c604:	fff90913          	addi	s2,s2,-1
   1c608:	000d8663          	beqz	s11,1c614 <_vfiprintf_r+0xfa4>
   1c60c:	00044683          	lbu	a3,0(s0)
   1c610:	05668863          	beq	a3,s6,1c660 <_vfiprintf_r+0xff0>
   1c614:	00a00593          	li	a1,10
   1c618:	00098513          	mv	a0,s3
   1c61c:	c41f30ef          	jal	ra,1025c <__udivdi3>
   1c620:	00900793          	li	a5,9
   1c624:	0137f663          	bgeu	a5,s3,1c630 <_vfiprintf_r+0xfc0>
   1c628:	00050993          	mv	s3,a0
   1c62c:	fc1ff06f          	j	1c5ec <_vfiprintf_r+0xf7c>
   1c630:	000d0793          	mv	a5,s10
   1c634:	00090d13          	mv	s10,s2
   1c638:	000c0913          	mv	s2,s8
   1c63c:	00078c13          	mv	s8,a5
   1c640:	0dc10793          	addi	a5,sp,220
   1c644:	41a787bb          	subw	a5,a5,s10
   1c648:	02813423          	sd	s0,40(sp)
   1c64c:	02013983          	ld	s3,32(sp)
   1c650:	00813403          	ld	s0,8(sp)
   1c654:	000c8b13          	mv	s6,s9
   1c658:	00f13423          	sd	a5,8(sp)
   1c65c:	b28ff06f          	j	1b984 <_vfiprintf_r+0x314>
   1c660:	0ff00793          	li	a5,255
   1c664:	faf688e3          	beq	a3,a5,1c614 <_vfiprintf_r+0xfa4>
   1c668:	00900793          	li	a5,9
   1c66c:	fd37f2e3          	bgeu	a5,s3,1c630 <_vfiprintf_r+0xfc0>
   1c670:	03813783          	ld	a5,56(sp)
   1c674:	03013583          	ld	a1,48(sp)
   1c678:	00000b13          	li	s6,0
   1c67c:	40f90933          	sub	s2,s2,a5
   1c680:	00078613          	mv	a2,a5
   1c684:	00090513          	mv	a0,s2
   1c688:	ef0fc0ef          	jal	ra,18d78 <strncpy>
   1c68c:	00144683          	lbu	a3,1(s0)
   1c690:	00098513          	mv	a0,s3
   1c694:	00a00593          	li	a1,10
   1c698:	00d03733          	snez	a4,a3
   1c69c:	00e40433          	add	s0,s0,a4
   1c6a0:	bbdf30ef          	jal	ra,1025c <__udivdi3>
   1c6a4:	00050993          	mv	s3,a0
   1c6a8:	f45ff06f          	j	1c5ec <_vfiprintf_r+0xf7c>
   1c6ac:	200b6b13          	ori	s6,s6,512
   1c6b0:	001c4703          	lbu	a4,1(s8)
   1c6b4:	000b0b1b          	sext.w	s6,s6
   1c6b8:	001c0c13          	addi	s8,s8,1
   1c6bc:	950ff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1c6c0:	020b6b13          	ori	s6,s6,32
   1c6c4:	001c4703          	lbu	a4,1(s8)
   1c6c8:	000b0b1b          	sext.w	s6,s6
   1c6cc:	001c0c13          	addi	s8,s8,1
   1c6d0:	93cff06f          	j	1b80c <_vfiprintf_r+0x19c>
   1c6d4:	000a871b          	sext.w	a4,s5
   1c6d8:	00600793          	li	a5,6
   1c6dc:	000a8693          	mv	a3,s5
   1c6e0:	0ae7e863          	bltu	a5,a4,1c790 <_vfiprintf_r+0x1120>
   1c6e4:	0006879b          	sext.w	a5,a3
   1c6e8:	00f13423          	sd	a5,8(sp)
   1c6ec:	00078c93          	mv	s9,a5
   1c6f0:	01b13823          	sd	s11,16(sp)
   1c6f4:	00005d17          	auipc	s10,0x5
   1c6f8:	d3cd0d13          	addi	s10,s10,-708 # 21430 <zeroes.4539+0x90>
   1c6fc:	b00ff06f          	j	1b9fc <_vfiprintf_r+0x38c>
   1c700:	200b7793          	andi	a5,s6,512
   1c704:	0ffe7d93          	andi	s11,t3,255
   1c708:	a0079e63          	bnez	a5,1b924 <_vfiprintf_r+0x2b4>
   1c70c:	020e1d93          	slli	s11,t3,0x20
   1c710:	020ddd93          	srli	s11,s11,0x20
   1c714:	a10ff06f          	j	1b924 <_vfiprintf_r+0x2b4>
   1c718:	200b7793          	andi	a5,s6,512
   1c71c:	0c078863          	beqz	a5,1c7ec <_vfiprintf_r+0x117c>
   1c720:	01013783          	ld	a5,16(sp)
   1c724:	000b0c93          	mv	s9,s6
   1c728:	00e13823          	sd	a4,16(sp)
   1c72c:	00078d83          	lb	s11,0(a5)
   1c730:	000d8793          	mv	a5,s11
   1c734:	de4ff06f          	j	1bd18 <_vfiprintf_r+0x6a8>
   1c738:	200b7713          	andi	a4,s6,512
   1c73c:	08070e63          	beqz	a4,1c7d8 <_vfiprintf_r+0x1168>
   1c740:	0ffe7d93          	andi	s11,t3,255
   1c744:	000b0813          	mv	a6,s6
   1c748:	00f13823          	sd	a5,16(sp)
   1c74c:	d9cff06f          	j	1bce8 <_vfiprintf_r+0x678>
   1c750:	200b7793          	andi	a5,s6,512
   1c754:	06078663          	beqz	a5,1c7c0 <_vfiprintf_r+0x1150>
   1c758:	0ffe7d93          	andi	s11,t3,255
   1c75c:	00e13823          	sd	a4,16(sp)
   1c760:	000b0c93          	mv	s9,s6
   1c764:	00100793          	li	a5,1
   1c768:	9ecff06f          	j	1b954 <_vfiprintf_r+0x2e4>
   1c76c:	00058513          	mv	a0,a1
   1c770:	00005e17          	auipc	t3,0x5
   1c774:	3c0e0e13          	addi	t3,t3,960 # 21b30 <zeroes.4515>
   1c778:	a11ff06f          	j	1c188 <_vfiprintf_r+0xb18>
   1c77c:	0f010593          	addi	a1,sp,240
   1c780:	00100613          	li	a2,1
   1c784:	00000713          	li	a4,0
   1c788:	00048b93          	mv	s7,s1
   1c78c:	b48ff06f          	j	1bad4 <_vfiprintf_r+0x464>
   1c790:	00600693          	li	a3,6
   1c794:	f51ff06f          	j	1c6e4 <_vfiprintf_r+0x1074>
   1c798:	05710793          	addi	a5,sp,87
   1c79c:	0ef13023          	sd	a5,224(sp)
   1c7a0:	00100793          	li	a5,1
   1c7a4:	0ef13423          	sd	a5,232(sp)
   1c7a8:	00100613          	li	a2,1
   1c7ac:	0f010593          	addi	a1,sp,240
   1c7b0:	ab0ff06f          	j	1ba60 <_vfiprintf_r+0x3f0>
   1c7b4:	00013783          	ld	a5,0(sp)
   1c7b8:	00f71023          	sh	a5,0(a4)
   1c7bc:	fa1fe06f          	j	1b75c <_vfiprintf_r+0xec>
   1c7c0:	020e1d93          	slli	s11,t3,0x20
   1c7c4:	020ddd93          	srli	s11,s11,0x20
   1c7c8:	00e13823          	sd	a4,16(sp)
   1c7cc:	000b0c93          	mv	s9,s6
   1c7d0:	00100793          	li	a5,1
   1c7d4:	980ff06f          	j	1b954 <_vfiprintf_r+0x2e4>
   1c7d8:	020e1d93          	slli	s11,t3,0x20
   1c7dc:	020ddd93          	srli	s11,s11,0x20
   1c7e0:	000b0813          	mv	a6,s6
   1c7e4:	00f13823          	sd	a5,16(sp)
   1c7e8:	d00ff06f          	j	1bce8 <_vfiprintf_r+0x678>
   1c7ec:	01013783          	ld	a5,16(sp)
   1c7f0:	000b0c93          	mv	s9,s6
   1c7f4:	00e13823          	sd	a4,16(sp)
   1c7f8:	0007ad83          	lw	s11,0(a5)
   1c7fc:	000d8793          	mv	a5,s11
   1c800:	d18ff06f          	j	1bd18 <_vfiprintf_r+0x6a8>
   1c804:	000b0c93          	mv	s9,s6
   1c808:	d34ff06f          	j	1bd3c <_vfiprintf_r+0x6cc>
   1c80c:	01513423          	sd	s5,8(sp)
   1c810:	01b13823          	sd	s11,16(sp)
   1c814:	00000a93          	li	s5,0
   1c818:	96cff06f          	j	1b984 <_vfiprintf_r+0x314>
   1c81c:	00005e17          	auipc	t3,0x5
   1c820:	304e0e13          	addi	t3,t3,772 # 21b20 <blanks.4514>
   1c824:	b15ff06f          	j	1c338 <_vfiprintf_r+0xcc8>
   1c828:	0016071b          	addiw	a4,a2,1
   1c82c:	00005e17          	auipc	t3,0x5
   1c830:	2f4e0e13          	addi	t3,t3,756 # 21b20 <blanks.4514>
   1c834:	be1ff06f          	j	1c414 <_vfiprintf_r+0xda4>
   1c838:	fff00793          	li	a5,-1
   1c83c:	00f13023          	sd	a5,0(sp)
   1c840:	884ff06f          	j	1b8c4 <_vfiprintf_r+0x254>
   1c844:	00058e93          	mv	t4,a1
   1c848:	00060513          	mv	a0,a2
   1c84c:	00005e17          	auipc	t3,0x5
   1c850:	2e4e0e13          	addi	t3,t3,740 # 21b30 <zeroes.4515>
   1c854:	84dff06f          	j	1c0a0 <_vfiprintf_r+0xa30>
   1c858:	00f72023          	sw	a5,0(a4)
   1c85c:	f01fe06f          	j	1b75c <_vfiprintf_r+0xec>
   1c860:	01013703          	ld	a4,16(sp)
   1c864:	00072a83          	lw	s5,0(a4)
   1c868:	00870693          	addi	a3,a4,8
   1c86c:	000ad463          	bgez	s5,1c874 <_vfiprintf_r+0x1204>
   1c870:	fff00a93          	li	s5,-1
   1c874:	001c4703          	lbu	a4,1(s8)
   1c878:	00d13823          	sd	a3,16(sp)
   1c87c:	00078c13          	mv	s8,a5
   1c880:	f8dfe06f          	j	1b80c <_vfiprintf_r+0x19c>

000000000001c884 <vfiprintf>:
   1c884:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1c888:	00060693          	mv	a3,a2
   1c88c:	00058613          	mv	a2,a1
   1c890:	00050593          	mv	a1,a0
   1c894:	0007b503          	ld	a0,0(a5)
   1c898:	dd9fe06f          	j	1b670 <_vfiprintf_r>

000000000001c89c <__sbprintf>:
   1c89c:	0105d783          	lhu	a5,16(a1)
   1c8a0:	0ac5ae03          	lw	t3,172(a1)
   1c8a4:	0125d303          	lhu	t1,18(a1)
   1c8a8:	0305b883          	ld	a7,48(a1)
   1c8ac:	0405b803          	ld	a6,64(a1)
   1c8b0:	b3010113          	addi	sp,sp,-1232
   1c8b4:	ffd7f793          	andi	a5,a5,-3
   1c8b8:	40000713          	li	a4,1024
   1c8bc:	4c813023          	sd	s0,1216(sp)
   1c8c0:	00f11823          	sh	a5,16(sp)
   1c8c4:	00058413          	mv	s0,a1
   1c8c8:	0b010793          	addi	a5,sp,176
   1c8cc:	00010593          	mv	a1,sp
   1c8d0:	4a913c23          	sd	s1,1208(sp)
   1c8d4:	4b213823          	sd	s2,1200(sp)
   1c8d8:	4c113423          	sd	ra,1224(sp)
   1c8dc:	00050913          	mv	s2,a0
   1c8e0:	0bc12623          	sw	t3,172(sp)
   1c8e4:	00611923          	sh	t1,18(sp)
   1c8e8:	03113823          	sd	a7,48(sp)
   1c8ec:	05013023          	sd	a6,64(sp)
   1c8f0:	00f13023          	sd	a5,0(sp)
   1c8f4:	00f13c23          	sd	a5,24(sp)
   1c8f8:	00e12623          	sw	a4,12(sp)
   1c8fc:	02e12023          	sw	a4,32(sp)
   1c900:	02012423          	sw	zero,40(sp)
   1c904:	d6dfe0ef          	jal	ra,1b670 <_vfiprintf_r>
   1c908:	00050493          	mv	s1,a0
   1c90c:	02055c63          	bgez	a0,1c944 <__sbprintf+0xa8>
   1c910:	01015783          	lhu	a5,16(sp)
   1c914:	0407f793          	andi	a5,a5,64
   1c918:	00078863          	beqz	a5,1c928 <__sbprintf+0x8c>
   1c91c:	01045783          	lhu	a5,16(s0)
   1c920:	0407e793          	ori	a5,a5,64
   1c924:	00f41823          	sh	a5,16(s0)
   1c928:	4c813083          	ld	ra,1224(sp)
   1c92c:	4c013403          	ld	s0,1216(sp)
   1c930:	00048513          	mv	a0,s1
   1c934:	4b013903          	ld	s2,1200(sp)
   1c938:	4b813483          	ld	s1,1208(sp)
   1c93c:	4d010113          	addi	sp,sp,1232
   1c940:	00008067          	ret
   1c944:	00010593          	mv	a1,sp
   1c948:	00090513          	mv	a0,s2
   1c94c:	a3df60ef          	jal	ra,13388 <_fflush_r>
   1c950:	fc0500e3          	beqz	a0,1c910 <__sbprintf+0x74>
   1c954:	fff00493          	li	s1,-1
   1c958:	fb9ff06f          	j	1c910 <__sbprintf+0x74>

000000000001c95c <_wctomb_r>:
   1c95c:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1c960:	0e07b303          	ld	t1,224(a5)
   1c964:	00030067          	jr	t1

000000000001c968 <__ascii_wctomb>:
   1c968:	0006079b          	sext.w	a5,a2
   1c96c:	02058463          	beqz	a1,1c994 <__ascii_wctomb+0x2c>
   1c970:	0ff00713          	li	a4,255
   1c974:	00f76863          	bltu	a4,a5,1c984 <__ascii_wctomb+0x1c>
   1c978:	00c58023          	sb	a2,0(a1)
   1c97c:	00100513          	li	a0,1
   1c980:	00008067          	ret
   1c984:	08a00793          	li	a5,138
   1c988:	00f52023          	sw	a5,0(a0)
   1c98c:	fff00513          	li	a0,-1
   1c990:	00008067          	ret
   1c994:	00000513          	li	a0,0
   1c998:	00008067          	ret

000000000001c99c <_write_r>:
   1c99c:	00058793          	mv	a5,a1
   1c9a0:	ff010113          	addi	sp,sp,-16
   1c9a4:	00813023          	sd	s0,0(sp)
   1c9a8:	00060593          	mv	a1,a2
   1c9ac:	00050413          	mv	s0,a0
   1c9b0:	00068613          	mv	a2,a3
   1c9b4:	00078513          	mv	a0,a5
   1c9b8:	00113423          	sd	ra,8(sp)
   1c9bc:	00007797          	auipc	a5,0x7
   1c9c0:	8407a223          	sw	zero,-1980(a5) # 23200 <errno>
   1c9c4:	30d020ef          	jal	ra,1f4d0 <_write>
   1c9c8:	fff00793          	li	a5,-1
   1c9cc:	00f50a63          	beq	a0,a5,1c9e0 <_write_r+0x44>
   1c9d0:	00813083          	ld	ra,8(sp)
   1c9d4:	00013403          	ld	s0,0(sp)
   1c9d8:	01010113          	addi	sp,sp,16
   1c9dc:	00008067          	ret
   1c9e0:	00007797          	auipc	a5,0x7
   1c9e4:	82078793          	addi	a5,a5,-2016 # 23200 <errno>
   1c9e8:	0007a783          	lw	a5,0(a5)
   1c9ec:	fe0782e3          	beqz	a5,1c9d0 <_write_r+0x34>
   1c9f0:	00f42023          	sw	a5,0(s0)
   1c9f4:	00813083          	ld	ra,8(sp)
   1c9f8:	00013403          	ld	s0,0(sp)
   1c9fc:	01010113          	addi	sp,sp,16
   1ca00:	00008067          	ret

000000000001ca04 <_calloc_r>:
   1ca04:	ff010113          	addi	sp,sp,-16
   1ca08:	00058793          	mv	a5,a1
   1ca0c:	00813023          	sd	s0,0(sp)
   1ca10:	00060593          	mv	a1,a2
   1ca14:	00050413          	mv	s0,a0
   1ca18:	00078513          	mv	a0,a5
   1ca1c:	00113423          	sd	ra,8(sp)
   1ca20:	758040ef          	jal	ra,21178 <__muldi3>
   1ca24:	00050593          	mv	a1,a0
   1ca28:	00040513          	mv	a0,s0
   1ca2c:	9dcfa0ef          	jal	ra,16c08 <_malloc_r>
   1ca30:	00050413          	mv	s0,a0
   1ca34:	02050863          	beqz	a0,1ca64 <_calloc_r+0x60>
   1ca38:	ff853603          	ld	a2,-8(a0)
   1ca3c:	04800713          	li	a4,72
   1ca40:	ffc67613          	andi	a2,a2,-4
   1ca44:	ff860613          	addi	a2,a2,-8
   1ca48:	06c76063          	bltu	a4,a2,1caa8 <_calloc_r+0xa4>
   1ca4c:	02700693          	li	a3,39
   1ca50:	00050793          	mv	a5,a0
   1ca54:	02c6e263          	bltu	a3,a2,1ca78 <_calloc_r+0x74>
   1ca58:	0007b023          	sd	zero,0(a5)
   1ca5c:	0007b423          	sd	zero,8(a5)
   1ca60:	0007b823          	sd	zero,16(a5)
   1ca64:	00040513          	mv	a0,s0
   1ca68:	00813083          	ld	ra,8(sp)
   1ca6c:	00013403          	ld	s0,0(sp)
   1ca70:	01010113          	addi	sp,sp,16
   1ca74:	00008067          	ret
   1ca78:	00053023          	sd	zero,0(a0)
   1ca7c:	00053423          	sd	zero,8(a0)
   1ca80:	03700793          	li	a5,55
   1ca84:	04c7f063          	bgeu	a5,a2,1cac4 <_calloc_r+0xc0>
   1ca88:	00053823          	sd	zero,16(a0)
   1ca8c:	00053c23          	sd	zero,24(a0)
   1ca90:	02050793          	addi	a5,a0,32
   1ca94:	fce612e3          	bne	a2,a4,1ca58 <_calloc_r+0x54>
   1ca98:	02053023          	sd	zero,32(a0)
   1ca9c:	03050793          	addi	a5,a0,48
   1caa0:	02053423          	sd	zero,40(a0)
   1caa4:	fb5ff06f          	j	1ca58 <_calloc_r+0x54>
   1caa8:	00000593          	li	a1,0
   1caac:	9a1f30ef          	jal	ra,1044c <memset>
   1cab0:	00040513          	mv	a0,s0
   1cab4:	00813083          	ld	ra,8(sp)
   1cab8:	00013403          	ld	s0,0(sp)
   1cabc:	01010113          	addi	sp,sp,16
   1cac0:	00008067          	ret
   1cac4:	01050793          	addi	a5,a0,16
   1cac8:	f91ff06f          	j	1ca58 <_calloc_r+0x54>

000000000001cacc <_close_r>:
   1cacc:	ff010113          	addi	sp,sp,-16
   1cad0:	00813023          	sd	s0,0(sp)
   1cad4:	00050413          	mv	s0,a0
   1cad8:	00058513          	mv	a0,a1
   1cadc:	00006797          	auipc	a5,0x6
   1cae0:	7207a223          	sw	zero,1828(a5) # 23200 <errno>
   1cae4:	00113423          	sd	ra,8(sp)
   1cae8:	758020ef          	jal	ra,1f240 <_close>
   1caec:	fff00793          	li	a5,-1
   1caf0:	00f50a63          	beq	a0,a5,1cb04 <_close_r+0x38>
   1caf4:	00813083          	ld	ra,8(sp)
   1caf8:	00013403          	ld	s0,0(sp)
   1cafc:	01010113          	addi	sp,sp,16
   1cb00:	00008067          	ret
   1cb04:	00006797          	auipc	a5,0x6
   1cb08:	6fc78793          	addi	a5,a5,1788 # 23200 <errno>
   1cb0c:	0007a783          	lw	a5,0(a5)
   1cb10:	fe0782e3          	beqz	a5,1caf4 <_close_r+0x28>
   1cb14:	00f42023          	sw	a5,0(s0)
   1cb18:	00813083          	ld	ra,8(sp)
   1cb1c:	00013403          	ld	s0,0(sp)
   1cb20:	01010113          	addi	sp,sp,16
   1cb24:	00008067          	ret

000000000001cb28 <_fclose_r>:
   1cb28:	fe010113          	addi	sp,sp,-32
   1cb2c:	00113c23          	sd	ra,24(sp)
   1cb30:	00813823          	sd	s0,16(sp)
   1cb34:	00913423          	sd	s1,8(sp)
   1cb38:	01213023          	sd	s2,0(sp)
   1cb3c:	02058063          	beqz	a1,1cb5c <_fclose_r+0x34>
   1cb40:	00050493          	mv	s1,a0
   1cb44:	00058413          	mv	s0,a1
   1cb48:	00050663          	beqz	a0,1cb54 <_fclose_r+0x2c>
   1cb4c:	05052783          	lw	a5,80(a0)
   1cb50:	0a078c63          	beqz	a5,1cc08 <_fclose_r+0xe0>
   1cb54:	01041783          	lh	a5,16(s0)
   1cb58:	02079263          	bnez	a5,1cb7c <_fclose_r+0x54>
   1cb5c:	01813083          	ld	ra,24(sp)
   1cb60:	01013403          	ld	s0,16(sp)
   1cb64:	00000913          	li	s2,0
   1cb68:	00090513          	mv	a0,s2
   1cb6c:	00813483          	ld	s1,8(sp)
   1cb70:	00013903          	ld	s2,0(sp)
   1cb74:	02010113          	addi	sp,sp,32
   1cb78:	00008067          	ret
   1cb7c:	00040593          	mv	a1,s0
   1cb80:	00048513          	mv	a0,s1
   1cb84:	da8f60ef          	jal	ra,1312c <__sflush_r>
   1cb88:	05043783          	ld	a5,80(s0)
   1cb8c:	00050913          	mv	s2,a0
   1cb90:	00078a63          	beqz	a5,1cba4 <_fclose_r+0x7c>
   1cb94:	03043583          	ld	a1,48(s0)
   1cb98:	00048513          	mv	a0,s1
   1cb9c:	000780e7          	jalr	a5
   1cba0:	06054c63          	bltz	a0,1cc18 <_fclose_r+0xf0>
   1cba4:	01045783          	lhu	a5,16(s0)
   1cba8:	0807f793          	andi	a5,a5,128
   1cbac:	06079e63          	bnez	a5,1cc28 <_fclose_r+0x100>
   1cbb0:	05843583          	ld	a1,88(s0)
   1cbb4:	00058c63          	beqz	a1,1cbcc <_fclose_r+0xa4>
   1cbb8:	07440793          	addi	a5,s0,116
   1cbbc:	00f58663          	beq	a1,a5,1cbc8 <_fclose_r+0xa0>
   1cbc0:	00048513          	mv	a0,s1
   1cbc4:	cedf60ef          	jal	ra,138b0 <_free_r>
   1cbc8:	04043c23          	sd	zero,88(s0)
   1cbcc:	07843583          	ld	a1,120(s0)
   1cbd0:	00058863          	beqz	a1,1cbe0 <_fclose_r+0xb8>
   1cbd4:	00048513          	mv	a0,s1
   1cbd8:	cd9f60ef          	jal	ra,138b0 <_free_r>
   1cbdc:	06043c23          	sd	zero,120(s0)
   1cbe0:	b61f60ef          	jal	ra,13740 <__sfp_lock_acquire>
   1cbe4:	00041823          	sh	zero,16(s0)
   1cbe8:	b5df60ef          	jal	ra,13744 <__sfp_lock_release>
   1cbec:	01813083          	ld	ra,24(sp)
   1cbf0:	01013403          	ld	s0,16(sp)
   1cbf4:	00090513          	mv	a0,s2
   1cbf8:	00813483          	ld	s1,8(sp)
   1cbfc:	00013903          	ld	s2,0(sp)
   1cc00:	02010113          	addi	sp,sp,32
   1cc04:	00008067          	ret
   1cc08:	b29f60ef          	jal	ra,13730 <__sinit>
   1cc0c:	01041783          	lh	a5,16(s0)
   1cc10:	f40786e3          	beqz	a5,1cb5c <_fclose_r+0x34>
   1cc14:	f69ff06f          	j	1cb7c <_fclose_r+0x54>
   1cc18:	01045783          	lhu	a5,16(s0)
   1cc1c:	fff00913          	li	s2,-1
   1cc20:	0807f793          	andi	a5,a5,128
   1cc24:	f80786e3          	beqz	a5,1cbb0 <_fclose_r+0x88>
   1cc28:	01843583          	ld	a1,24(s0)
   1cc2c:	00048513          	mv	a0,s1
   1cc30:	c81f60ef          	jal	ra,138b0 <_free_r>
   1cc34:	f7dff06f          	j	1cbb0 <_fclose_r+0x88>

000000000001cc38 <fclose>:
   1cc38:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1cc3c:	00050593          	mv	a1,a0
   1cc40:	0007b503          	ld	a0,0(a5)
   1cc44:	ee5ff06f          	j	1cb28 <_fclose_r>

000000000001cc48 <__fputwc>:
   1cc48:	fb010113          	addi	sp,sp,-80
   1cc4c:	04813023          	sd	s0,64(sp)
   1cc50:	03213823          	sd	s2,48(sp)
   1cc54:	03313423          	sd	s3,40(sp)
   1cc58:	04113423          	sd	ra,72(sp)
   1cc5c:	02913c23          	sd	s1,56(sp)
   1cc60:	03413023          	sd	s4,32(sp)
   1cc64:	01513c23          	sd	s5,24(sp)
   1cc68:	01613823          	sd	s6,16(sp)
   1cc6c:	00050913          	mv	s2,a0
   1cc70:	00058993          	mv	s3,a1
   1cc74:	00060413          	mv	s0,a2
   1cc78:	d85f90ef          	jal	ra,169fc <__locale_mb_cur_max>
   1cc7c:	00100793          	li	a5,1
   1cc80:	02f51063          	bne	a0,a5,1cca0 <__fputwc+0x58>
   1cc84:	fff9879b          	addiw	a5,s3,-1
   1cc88:	0fe00713          	li	a4,254
   1cc8c:	00f76a63          	bltu	a4,a5,1cca0 <__fputwc+0x58>
   1cc90:	0ff9f713          	andi	a4,s3,255
   1cc94:	00e10423          	sb	a4,8(sp)
   1cc98:	00100a93          	li	s5,1
   1cc9c:	02c0006f          	j	1ccc8 <__fputwc+0x80>
   1cca0:	0a440693          	addi	a3,s0,164
   1cca4:	00098613          	mv	a2,s3
   1cca8:	00810593          	addi	a1,sp,8
   1ccac:	00090513          	mv	a0,s2
   1ccb0:	488020ef          	jal	ra,1f138 <_wcrtomb_r>
   1ccb4:	fff00793          	li	a5,-1
   1ccb8:	00050a93          	mv	s5,a0
   1ccbc:	0af50263          	beq	a0,a5,1cd60 <__fputwc+0x118>
   1ccc0:	08050c63          	beqz	a0,1cd58 <__fputwc+0x110>
   1ccc4:	00814703          	lbu	a4,8(sp)
   1ccc8:	00000493          	li	s1,0
   1cccc:	fff00a13          	li	s4,-1
   1ccd0:	00a00b13          	li	s6,10
   1ccd4:	0280006f          	j	1ccfc <__fputwc+0xb4>
   1ccd8:	00043783          	ld	a5,0(s0)
   1ccdc:	00178693          	addi	a3,a5,1
   1cce0:	00d43023          	sd	a3,0(s0)
   1cce4:	00e78023          	sb	a4,0(a5)
   1cce8:	00148493          	addi	s1,s1,1
   1ccec:	00810793          	addi	a5,sp,8
   1ccf0:	009787b3          	add	a5,a5,s1
   1ccf4:	0754f263          	bgeu	s1,s5,1cd58 <__fputwc+0x110>
   1ccf8:	0007c703          	lbu	a4,0(a5)
   1ccfc:	00c42783          	lw	a5,12(s0)
   1cd00:	fff7879b          	addiw	a5,a5,-1
   1cd04:	00f42623          	sw	a5,12(s0)
   1cd08:	fc07d8e3          	bgez	a5,1ccd8 <__fputwc+0x90>
   1cd0c:	02842683          	lw	a3,40(s0)
   1cd10:	00070593          	mv	a1,a4
   1cd14:	00040613          	mv	a2,s0
   1cd18:	00090513          	mv	a0,s2
   1cd1c:	00d7c463          	blt	a5,a3,1cd24 <__fputwc+0xdc>
   1cd20:	fb671ce3          	bne	a4,s6,1ccd8 <__fputwc+0x90>
   1cd24:	27c020ef          	jal	ra,1efa0 <__swbuf_r>
   1cd28:	fd4510e3          	bne	a0,s4,1cce8 <__fputwc+0xa0>
   1cd2c:	fff00513          	li	a0,-1
   1cd30:	04813083          	ld	ra,72(sp)
   1cd34:	04013403          	ld	s0,64(sp)
   1cd38:	03813483          	ld	s1,56(sp)
   1cd3c:	03013903          	ld	s2,48(sp)
   1cd40:	02813983          	ld	s3,40(sp)
   1cd44:	02013a03          	ld	s4,32(sp)
   1cd48:	01813a83          	ld	s5,24(sp)
   1cd4c:	01013b03          	ld	s6,16(sp)
   1cd50:	05010113          	addi	sp,sp,80
   1cd54:	00008067          	ret
   1cd58:	0009851b          	sext.w	a0,s3
   1cd5c:	fd5ff06f          	j	1cd30 <__fputwc+0xe8>
   1cd60:	01045783          	lhu	a5,16(s0)
   1cd64:	fff00513          	li	a0,-1
   1cd68:	0407e793          	ori	a5,a5,64
   1cd6c:	00f41823          	sh	a5,16(s0)
   1cd70:	fc1ff06f          	j	1cd30 <__fputwc+0xe8>

000000000001cd74 <_fputwc_r>:
   1cd74:	01061783          	lh	a5,16(a2)
   1cd78:	03279713          	slli	a4,a5,0x32
   1cd7c:	02074063          	bltz	a4,1cd9c <_fputwc_r+0x28>
   1cd80:	0ac62703          	lw	a4,172(a2)
   1cd84:	000026b7          	lui	a3,0x2
   1cd88:	00d7e7b3          	or	a5,a5,a3
   1cd8c:	000026b7          	lui	a3,0x2
   1cd90:	00d76733          	or	a4,a4,a3
   1cd94:	00f61823          	sh	a5,16(a2)
   1cd98:	0ae62623          	sw	a4,172(a2)
   1cd9c:	eadff06f          	j	1cc48 <__fputwc>

000000000001cda0 <fputwc>:
   1cda0:	fd010113          	addi	sp,sp,-48
   1cda4:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1cda8:	02813023          	sd	s0,32(sp)
   1cdac:	0007b403          	ld	s0,0(a5)
   1cdb0:	00913c23          	sd	s1,24(sp)
   1cdb4:	02113423          	sd	ra,40(sp)
   1cdb8:	00050493          	mv	s1,a0
   1cdbc:	00058613          	mv	a2,a1
   1cdc0:	00040663          	beqz	s0,1cdcc <fputwc+0x2c>
   1cdc4:	05042783          	lw	a5,80(s0)
   1cdc8:	04078463          	beqz	a5,1ce10 <fputwc+0x70>
   1cdcc:	01061783          	lh	a5,16(a2)
   1cdd0:	03279713          	slli	a4,a5,0x32
   1cdd4:	02074063          	bltz	a4,1cdf4 <fputwc+0x54>
   1cdd8:	0ac62703          	lw	a4,172(a2)
   1cddc:	000026b7          	lui	a3,0x2
   1cde0:	00d7e7b3          	or	a5,a5,a3
   1cde4:	000026b7          	lui	a3,0x2
   1cde8:	00d76733          	or	a4,a4,a3
   1cdec:	00f61823          	sh	a5,16(a2)
   1cdf0:	0ae62623          	sw	a4,172(a2)
   1cdf4:	00040513          	mv	a0,s0
   1cdf8:	02013403          	ld	s0,32(sp)
   1cdfc:	02813083          	ld	ra,40(sp)
   1ce00:	00048593          	mv	a1,s1
   1ce04:	01813483          	ld	s1,24(sp)
   1ce08:	03010113          	addi	sp,sp,48
   1ce0c:	e3dff06f          	j	1cc48 <__fputwc>
   1ce10:	00040513          	mv	a0,s0
   1ce14:	00b13423          	sd	a1,8(sp)
   1ce18:	919f60ef          	jal	ra,13730 <__sinit>
   1ce1c:	00813603          	ld	a2,8(sp)
   1ce20:	fadff06f          	j	1cdcc <fputwc+0x2c>

000000000001ce24 <_fstat_r>:
   1ce24:	00058793          	mv	a5,a1
   1ce28:	ff010113          	addi	sp,sp,-16
   1ce2c:	00813023          	sd	s0,0(sp)
   1ce30:	00060593          	mv	a1,a2
   1ce34:	00050413          	mv	s0,a0
   1ce38:	00078513          	mv	a0,a5
   1ce3c:	00113423          	sd	ra,8(sp)
   1ce40:	00006797          	auipc	a5,0x6
   1ce44:	3c07a023          	sw	zero,960(a5) # 23200 <errno>
   1ce48:	494020ef          	jal	ra,1f2dc <_fstat>
   1ce4c:	fff00793          	li	a5,-1
   1ce50:	00f50a63          	beq	a0,a5,1ce64 <_fstat_r+0x40>
   1ce54:	00813083          	ld	ra,8(sp)
   1ce58:	00013403          	ld	s0,0(sp)
   1ce5c:	01010113          	addi	sp,sp,16
   1ce60:	00008067          	ret
   1ce64:	00006797          	auipc	a5,0x6
   1ce68:	39c78793          	addi	a5,a5,924 # 23200 <errno>
   1ce6c:	0007a783          	lw	a5,0(a5)
   1ce70:	fe0782e3          	beqz	a5,1ce54 <_fstat_r+0x30>
   1ce74:	00f42023          	sw	a5,0(s0)
   1ce78:	00813083          	ld	ra,8(sp)
   1ce7c:	00013403          	ld	s0,0(sp)
   1ce80:	01010113          	addi	sp,sp,16
   1ce84:	00008067          	ret

000000000001ce88 <__sfvwrite_r>:
   1ce88:	01063783          	ld	a5,16(a2)
   1ce8c:	28078c63          	beqz	a5,1d124 <__sfvwrite_r+0x29c>
   1ce90:	0105d783          	lhu	a5,16(a1)
   1ce94:	fa010113          	addi	sp,sp,-96
   1ce98:	04813823          	sd	s0,80(sp)
   1ce9c:	03413823          	sd	s4,48(sp)
   1cea0:	03513423          	sd	s5,40(sp)
   1cea4:	04113c23          	sd	ra,88(sp)
   1cea8:	04913423          	sd	s1,72(sp)
   1ceac:	05213023          	sd	s2,64(sp)
   1ceb0:	03313c23          	sd	s3,56(sp)
   1ceb4:	03613023          	sd	s6,32(sp)
   1ceb8:	01713c23          	sd	s7,24(sp)
   1cebc:	01813823          	sd	s8,16(sp)
   1cec0:	01913423          	sd	s9,8(sp)
   1cec4:	01a13023          	sd	s10,0(sp)
   1cec8:	0087f713          	andi	a4,a5,8
   1cecc:	00058413          	mv	s0,a1
   1ced0:	00050a93          	mv	s5,a0
   1ced4:	00060a13          	mv	s4,a2
   1ced8:	08070c63          	beqz	a4,1cf70 <__sfvwrite_r+0xe8>
   1cedc:	0185b703          	ld	a4,24(a1)
   1cee0:	08070863          	beqz	a4,1cf70 <__sfvwrite_r+0xe8>
   1cee4:	0027f713          	andi	a4,a5,2
   1cee8:	000a3903          	ld	s2,0(s4)
   1ceec:	0a070263          	beqz	a4,1cf90 <__sfvwrite_r+0x108>
   1cef0:	04043703          	ld	a4,64(s0)
   1cef4:	03043783          	ld	a5,48(s0)
   1cef8:	80000b37          	lui	s6,0x80000
   1cefc:	00000993          	li	s3,0
   1cf00:	00000493          	li	s1,0
   1cf04:	c00b4b13          	xori	s6,s6,-1024
   1cf08:	00098613          	mv	a2,s3
   1cf0c:	00078593          	mv	a1,a5
   1cf10:	000a8513          	mv	a0,s5
   1cf14:	04048663          	beqz	s1,1cf60 <__sfvwrite_r+0xd8>
   1cf18:	00048693          	mv	a3,s1
   1cf1c:	009b7463          	bgeu	s6,s1,1cf24 <__sfvwrite_r+0x9c>
   1cf20:	000b0693          	mv	a3,s6
   1cf24:	0006869b          	sext.w	a3,a3
   1cf28:	000700e7          	jalr	a4
   1cf2c:	1ea05263          	blez	a0,1d110 <__sfvwrite_r+0x288>
   1cf30:	010a3783          	ld	a5,16(s4)
   1cf34:	00a989b3          	add	s3,s3,a0
   1cf38:	40a484b3          	sub	s1,s1,a0
   1cf3c:	40a78533          	sub	a0,a5,a0
   1cf40:	00aa3823          	sd	a0,16(s4)
   1cf44:	18050063          	beqz	a0,1d0c4 <__sfvwrite_r+0x23c>
   1cf48:	03043783          	ld	a5,48(s0)
   1cf4c:	04043703          	ld	a4,64(s0)
   1cf50:	00098613          	mv	a2,s3
   1cf54:	00078593          	mv	a1,a5
   1cf58:	000a8513          	mv	a0,s5
   1cf5c:	fa049ee3          	bnez	s1,1cf18 <__sfvwrite_r+0x90>
   1cf60:	00093983          	ld	s3,0(s2)
   1cf64:	00893483          	ld	s1,8(s2)
   1cf68:	01090913          	addi	s2,s2,16
   1cf6c:	f9dff06f          	j	1cf08 <__sfvwrite_r+0x80>
   1cf70:	00040593          	mv	a1,s0
   1cf74:	000a8513          	mv	a0,s5
   1cf78:	e7df50ef          	jal	ra,12df4 <__swsetup_r>
   1cf7c:	3c051663          	bnez	a0,1d348 <__sfvwrite_r+0x4c0>
   1cf80:	01045783          	lhu	a5,16(s0)
   1cf84:	000a3903          	ld	s2,0(s4)
   1cf88:	0027f713          	andi	a4,a5,2
   1cf8c:	f60712e3          	bnez	a4,1cef0 <__sfvwrite_r+0x68>
   1cf90:	0017f713          	andi	a4,a5,1
   1cf94:	0a071263          	bnez	a4,1d038 <__sfvwrite_r+0x1b0>
   1cf98:	00c42483          	lw	s1,12(s0)
   1cf9c:	00043503          	ld	a0,0(s0)
   1cfa0:	80000b37          	lui	s6,0x80000
   1cfa4:	ffeb4b93          	xori	s7,s6,-2
   1cfa8:	00000c13          	li	s8,0
   1cfac:	00000993          	li	s3,0
   1cfb0:	fffb4b13          	not	s6,s6
   1cfb4:	00048c93          	mv	s9,s1
   1cfb8:	06098863          	beqz	s3,1d028 <__sfvwrite_r+0x1a0>
   1cfbc:	2007f713          	andi	a4,a5,512
   1cfc0:	1c070863          	beqz	a4,1d190 <__sfvwrite_r+0x308>
   1cfc4:	00048d13          	mv	s10,s1
   1cfc8:	2699f663          	bgeu	s3,s1,1d234 <__sfvwrite_r+0x3ac>
   1cfcc:	00098c93          	mv	s9,s3
   1cfd0:	00098d13          	mv	s10,s3
   1cfd4:	000d0613          	mv	a2,s10
   1cfd8:	000c0593          	mv	a1,s8
   1cfdc:	554000ef          	jal	ra,1d530 <memmove>
   1cfe0:	00c42783          	lw	a5,12(s0)
   1cfe4:	00043603          	ld	a2,0(s0)
   1cfe8:	00098493          	mv	s1,s3
   1cfec:	41978cbb          	subw	s9,a5,s9
   1cff0:	01a60633          	add	a2,a2,s10
   1cff4:	01942623          	sw	s9,12(s0)
   1cff8:	00c43023          	sd	a2,0(s0)
   1cffc:	00000993          	li	s3,0
   1d000:	010a3783          	ld	a5,16(s4)
   1d004:	009c0c33          	add	s8,s8,s1
   1d008:	409784b3          	sub	s1,a5,s1
   1d00c:	009a3823          	sd	s1,16(s4)
   1d010:	0a048a63          	beqz	s1,1d0c4 <__sfvwrite_r+0x23c>
   1d014:	00c42483          	lw	s1,12(s0)
   1d018:	00043503          	ld	a0,0(s0)
   1d01c:	01045783          	lhu	a5,16(s0)
   1d020:	00048c93          	mv	s9,s1
   1d024:	f8099ce3          	bnez	s3,1cfbc <__sfvwrite_r+0x134>
   1d028:	00093c03          	ld	s8,0(s2)
   1d02c:	00893983          	ld	s3,8(s2)
   1d030:	01090913          	addi	s2,s2,16
   1d034:	f81ff06f          	j	1cfb4 <__sfvwrite_r+0x12c>
   1d038:	00000993          	li	s3,0
   1d03c:	00000513          	li	a0,0
   1d040:	00000c93          	li	s9,0
   1d044:	00000493          	li	s1,0
   1d048:	0e048263          	beqz	s1,1d12c <__sfvwrite_r+0x2a4>
   1d04c:	0e050863          	beqz	a0,1d13c <__sfvwrite_r+0x2b4>
   1d050:	00098c13          	mv	s8,s3
   1d054:	0134f463          	bgeu	s1,s3,1d05c <__sfvwrite_r+0x1d4>
   1d058:	00048c13          	mv	s8,s1
   1d05c:	00043503          	ld	a0,0(s0)
   1d060:	01843783          	ld	a5,24(s0)
   1d064:	000c0b13          	mv	s6,s8
   1d068:	02042683          	lw	a3,32(s0)
   1d06c:	00a7f863          	bgeu	a5,a0,1d07c <__sfvwrite_r+0x1f4>
   1d070:	00c42603          	lw	a2,12(s0)
   1d074:	00d60bbb          	addw	s7,a2,a3
   1d078:	0f8bc263          	blt	s7,s8,1d15c <__sfvwrite_r+0x2d4>
   1d07c:	24dc4a63          	blt	s8,a3,1d2d0 <__sfvwrite_r+0x448>
   1d080:	04043783          	ld	a5,64(s0)
   1d084:	03043583          	ld	a1,48(s0)
   1d088:	000c8613          	mv	a2,s9
   1d08c:	000a8513          	mv	a0,s5
   1d090:	000780e7          	jalr	a5
   1d094:	00050b13          	mv	s6,a0
   1d098:	06a05c63          	blez	a0,1d110 <__sfvwrite_r+0x288>
   1d09c:	0005061b          	sext.w	a2,a0
   1d0a0:	40c989bb          	subw	s3,s3,a2
   1d0a4:	00100513          	li	a0,1
   1d0a8:	04098c63          	beqz	s3,1d100 <__sfvwrite_r+0x278>
   1d0ac:	010a3783          	ld	a5,16(s4)
   1d0b0:	016c8cb3          	add	s9,s9,s6
   1d0b4:	416484b3          	sub	s1,s1,s6
   1d0b8:	41678b33          	sub	s6,a5,s6
   1d0bc:	016a3823          	sd	s6,16(s4)
   1d0c0:	f80b14e3          	bnez	s6,1d048 <__sfvwrite_r+0x1c0>
   1d0c4:	00000513          	li	a0,0
   1d0c8:	05813083          	ld	ra,88(sp)
   1d0cc:	05013403          	ld	s0,80(sp)
   1d0d0:	04813483          	ld	s1,72(sp)
   1d0d4:	04013903          	ld	s2,64(sp)
   1d0d8:	03813983          	ld	s3,56(sp)
   1d0dc:	03013a03          	ld	s4,48(sp)
   1d0e0:	02813a83          	ld	s5,40(sp)
   1d0e4:	02013b03          	ld	s6,32(sp)
   1d0e8:	01813b83          	ld	s7,24(sp)
   1d0ec:	01013c03          	ld	s8,16(sp)
   1d0f0:	00813c83          	ld	s9,8(sp)
   1d0f4:	00013d03          	ld	s10,0(sp)
   1d0f8:	06010113          	addi	sp,sp,96
   1d0fc:	00008067          	ret
   1d100:	00040593          	mv	a1,s0
   1d104:	000a8513          	mv	a0,s5
   1d108:	a80f60ef          	jal	ra,13388 <_fflush_r>
   1d10c:	fa0500e3          	beqz	a0,1d0ac <__sfvwrite_r+0x224>
   1d110:	01041783          	lh	a5,16(s0)
   1d114:	0407e793          	ori	a5,a5,64
   1d118:	00f41823          	sh	a5,16(s0)
   1d11c:	fff00513          	li	a0,-1
   1d120:	fa9ff06f          	j	1d0c8 <__sfvwrite_r+0x240>
   1d124:	00000513          	li	a0,0
   1d128:	00008067          	ret
   1d12c:	00893483          	ld	s1,8(s2)
   1d130:	00093c83          	ld	s9,0(s2)
   1d134:	01090913          	addi	s2,s2,16
   1d138:	fe048ae3          	beqz	s1,1d12c <__sfvwrite_r+0x2a4>
   1d13c:	00048613          	mv	a2,s1
   1d140:	00a00593          	li	a1,10
   1d144:	000c8513          	mv	a0,s9
   1d148:	b8cfa0ef          	jal	ra,174d4 <memchr>
   1d14c:	1e050263          	beqz	a0,1d330 <__sfvwrite_r+0x4a8>
   1d150:	00150513          	addi	a0,a0,1
   1d154:	419509bb          	subw	s3,a0,s9
   1d158:	ef9ff06f          	j	1d050 <__sfvwrite_r+0x1c8>
   1d15c:	000c8593          	mv	a1,s9
   1d160:	000b8613          	mv	a2,s7
   1d164:	3cc000ef          	jal	ra,1d530 <memmove>
   1d168:	00043783          	ld	a5,0(s0)
   1d16c:	00040593          	mv	a1,s0
   1d170:	000a8513          	mv	a0,s5
   1d174:	017787b3          	add	a5,a5,s7
   1d178:	00f43023          	sd	a5,0(s0)
   1d17c:	a0cf60ef          	jal	ra,13388 <_fflush_r>
   1d180:	f80518e3          	bnez	a0,1d110 <__sfvwrite_r+0x288>
   1d184:	000b8613          	mv	a2,s7
   1d188:	000b8b13          	mv	s6,s7
   1d18c:	f15ff06f          	j	1d0a0 <__sfvwrite_r+0x218>
   1d190:	01843783          	ld	a5,24(s0)
   1d194:	04a7ec63          	bltu	a5,a0,1d1ec <__sfvwrite_r+0x364>
   1d198:	02042c83          	lw	s9,32(s0)
   1d19c:	0599e863          	bltu	s3,s9,1d1ec <__sfvwrite_r+0x364>
   1d1a0:	00098513          	mv	a0,s3
   1d1a4:	013bf463          	bgeu	s7,s3,1d1ac <__sfvwrite_r+0x324>
   1d1a8:	000b0513          	mv	a0,s6
   1d1ac:	000c8593          	mv	a1,s9
   1d1b0:	0005051b          	sext.w	a0,a0
   1d1b4:	8a0f30ef          	jal	ra,10254 <__divdi3>
   1d1b8:	00050593          	mv	a1,a0
   1d1bc:	000c8513          	mv	a0,s9
   1d1c0:	7b9030ef          	jal	ra,21178 <__muldi3>
   1d1c4:	03043583          	ld	a1,48(s0)
   1d1c8:	04043783          	ld	a5,64(s0)
   1d1cc:	0005069b          	sext.w	a3,a0
   1d1d0:	000c0613          	mv	a2,s8
   1d1d4:	000a8513          	mv	a0,s5
   1d1d8:	000780e7          	jalr	a5
   1d1dc:	f2a05ae3          	blez	a0,1d110 <__sfvwrite_r+0x288>
   1d1e0:	00050493          	mv	s1,a0
   1d1e4:	409989b3          	sub	s3,s3,s1
   1d1e8:	e19ff06f          	j	1d000 <__sfvwrite_r+0x178>
   1d1ec:	0099f463          	bgeu	s3,s1,1d1f4 <__sfvwrite_r+0x36c>
   1d1f0:	00098493          	mv	s1,s3
   1d1f4:	00048613          	mv	a2,s1
   1d1f8:	000c0593          	mv	a1,s8
   1d1fc:	334000ef          	jal	ra,1d530 <memmove>
   1d200:	00c42783          	lw	a5,12(s0)
   1d204:	00043703          	ld	a4,0(s0)
   1d208:	409786bb          	subw	a3,a5,s1
   1d20c:	00970733          	add	a4,a4,s1
   1d210:	00d42623          	sw	a3,12(s0)
   1d214:	00e43023          	sd	a4,0(s0)
   1d218:	fc0696e3          	bnez	a3,1d1e4 <__sfvwrite_r+0x35c>
   1d21c:	00040593          	mv	a1,s0
   1d220:	000a8513          	mv	a0,s5
   1d224:	964f60ef          	jal	ra,13388 <_fflush_r>
   1d228:	ee0514e3          	bnez	a0,1d110 <__sfvwrite_r+0x288>
   1d22c:	409989b3          	sub	s3,s3,s1
   1d230:	dd1ff06f          	j	1d000 <__sfvwrite_r+0x178>
   1d234:	4807f713          	andi	a4,a5,1152
   1d238:	d8070ee3          	beqz	a4,1cfd4 <__sfvwrite_r+0x14c>
   1d23c:	02042683          	lw	a3,32(s0)
   1d240:	01843583          	ld	a1,24(s0)
   1d244:	00198713          	addi	a4,s3,1
   1d248:	0016949b          	slliw	s1,a3,0x1
   1d24c:	00d486bb          	addw	a3,s1,a3
   1d250:	40b50533          	sub	a0,a0,a1
   1d254:	01f6d49b          	srliw	s1,a3,0x1f
   1d258:	00050c9b          	sext.w	s9,a0
   1d25c:	00d484bb          	addw	s1,s1,a3
   1d260:	4014d49b          	sraiw	s1,s1,0x1
   1d264:	01970733          	add	a4,a4,s9
   1d268:	00e4f663          	bgeu	s1,a4,1d274 <__sfvwrite_r+0x3ec>
   1d26c:	0019849b          	addiw	s1,s3,1
   1d270:	00a484bb          	addw	s1,s1,a0
   1d274:	4007f793          	andi	a5,a5,1024
   1d278:	08078263          	beqz	a5,1d2fc <__sfvwrite_r+0x474>
   1d27c:	00048593          	mv	a1,s1
   1d280:	000a8513          	mv	a0,s5
   1d284:	985f90ef          	jal	ra,16c08 <_malloc_r>
   1d288:	00050d13          	mv	s10,a0
   1d28c:	0a050663          	beqz	a0,1d338 <__sfvwrite_r+0x4b0>
   1d290:	01843583          	ld	a1,24(s0)
   1d294:	000c8613          	mv	a2,s9
   1d298:	17c000ef          	jal	ra,1d414 <memcpy>
   1d29c:	01045783          	lhu	a5,16(s0)
   1d2a0:	b7f7f793          	andi	a5,a5,-1153
   1d2a4:	0807e793          	ori	a5,a5,128
   1d2a8:	00f41823          	sh	a5,16(s0)
   1d2ac:	019d0533          	add	a0,s10,s9
   1d2b0:	419487bb          	subw	a5,s1,s9
   1d2b4:	01a43c23          	sd	s10,24(s0)
   1d2b8:	00a43023          	sd	a0,0(s0)
   1d2bc:	02942023          	sw	s1,32(s0)
   1d2c0:	00098c93          	mv	s9,s3
   1d2c4:	00f42623          	sw	a5,12(s0)
   1d2c8:	00098d13          	mv	s10,s3
   1d2cc:	d09ff06f          	j	1cfd4 <__sfvwrite_r+0x14c>
   1d2d0:	000c0613          	mv	a2,s8
   1d2d4:	000c8593          	mv	a1,s9
   1d2d8:	258000ef          	jal	ra,1d530 <memmove>
   1d2dc:	00c42703          	lw	a4,12(s0)
   1d2e0:	00043783          	ld	a5,0(s0)
   1d2e4:	000c061b          	sext.w	a2,s8
   1d2e8:	40c7073b          	subw	a4,a4,a2
   1d2ec:	01878c33          	add	s8,a5,s8
   1d2f0:	00e42623          	sw	a4,12(s0)
   1d2f4:	01843023          	sd	s8,0(s0)
   1d2f8:	da9ff06f          	j	1d0a0 <__sfvwrite_r+0x218>
   1d2fc:	00048613          	mv	a2,s1
   1d300:	000a8513          	mv	a0,s5
   1d304:	3b4000ef          	jal	ra,1d6b8 <_realloc_r>
   1d308:	00050d13          	mv	s10,a0
   1d30c:	fa0510e3          	bnez	a0,1d2ac <__sfvwrite_r+0x424>
   1d310:	01843583          	ld	a1,24(s0)
   1d314:	000a8513          	mv	a0,s5
   1d318:	d98f60ef          	jal	ra,138b0 <_free_r>
   1d31c:	01041783          	lh	a5,16(s0)
   1d320:	00c00713          	li	a4,12
   1d324:	00eaa023          	sw	a4,0(s5)
   1d328:	f7f7f793          	andi	a5,a5,-129
   1d32c:	de9ff06f          	j	1d114 <__sfvwrite_r+0x28c>
   1d330:	0014899b          	addiw	s3,s1,1
   1d334:	d1dff06f          	j	1d050 <__sfvwrite_r+0x1c8>
   1d338:	00c00793          	li	a5,12
   1d33c:	00faa023          	sw	a5,0(s5)
   1d340:	01041783          	lh	a5,16(s0)
   1d344:	dd1ff06f          	j	1d114 <__sfvwrite_r+0x28c>
   1d348:	fff00513          	li	a0,-1
   1d34c:	d7dff06f          	j	1d0c8 <__sfvwrite_r+0x240>

000000000001d350 <_isatty_r>:
   1d350:	ff010113          	addi	sp,sp,-16
   1d354:	00813023          	sd	s0,0(sp)
   1d358:	00050413          	mv	s0,a0
   1d35c:	00058513          	mv	a0,a1
   1d360:	00006797          	auipc	a5,0x6
   1d364:	ea07a023          	sw	zero,-352(a5) # 23200 <errno>
   1d368:	00113423          	sd	ra,8(sp)
   1d36c:	7e5010ef          	jal	ra,1f350 <_isatty>
   1d370:	fff00793          	li	a5,-1
   1d374:	00f50a63          	beq	a0,a5,1d388 <_isatty_r+0x38>
   1d378:	00813083          	ld	ra,8(sp)
   1d37c:	00013403          	ld	s0,0(sp)
   1d380:	01010113          	addi	sp,sp,16
   1d384:	00008067          	ret
   1d388:	00006797          	auipc	a5,0x6
   1d38c:	e7878793          	addi	a5,a5,-392 # 23200 <errno>
   1d390:	0007a783          	lw	a5,0(a5)
   1d394:	fe0782e3          	beqz	a5,1d378 <_isatty_r+0x28>
   1d398:	00f42023          	sw	a5,0(s0)
   1d39c:	00813083          	ld	ra,8(sp)
   1d3a0:	00013403          	ld	s0,0(sp)
   1d3a4:	01010113          	addi	sp,sp,16
   1d3a8:	00008067          	ret

000000000001d3ac <_lseek_r>:
   1d3ac:	00058793          	mv	a5,a1
   1d3b0:	ff010113          	addi	sp,sp,-16
   1d3b4:	00813023          	sd	s0,0(sp)
   1d3b8:	00060593          	mv	a1,a2
   1d3bc:	00050413          	mv	s0,a0
   1d3c0:	00068613          	mv	a2,a3
   1d3c4:	00078513          	mv	a0,a5
   1d3c8:	00113423          	sd	ra,8(sp)
   1d3cc:	00006797          	auipc	a5,0x6
   1d3d0:	e207aa23          	sw	zero,-460(a5) # 23200 <errno>
   1d3d4:	7bd010ef          	jal	ra,1f390 <_lseek>
   1d3d8:	fff00793          	li	a5,-1
   1d3dc:	00f50a63          	beq	a0,a5,1d3f0 <_lseek_r+0x44>
   1d3e0:	00813083          	ld	ra,8(sp)
   1d3e4:	00013403          	ld	s0,0(sp)
   1d3e8:	01010113          	addi	sp,sp,16
   1d3ec:	00008067          	ret
   1d3f0:	00006797          	auipc	a5,0x6
   1d3f4:	e1078793          	addi	a5,a5,-496 # 23200 <errno>
   1d3f8:	0007a783          	lw	a5,0(a5)
   1d3fc:	fe0782e3          	beqz	a5,1d3e0 <_lseek_r+0x34>
   1d400:	00f42023          	sw	a5,0(s0)
   1d404:	00813083          	ld	ra,8(sp)
   1d408:	00013403          	ld	s0,0(sp)
   1d40c:	01010113          	addi	sp,sp,16
   1d410:	00008067          	ret

000000000001d414 <memcpy>:
   1d414:	00a5c7b3          	xor	a5,a1,a0
   1d418:	0077f793          	andi	a5,a5,7
   1d41c:	00c508b3          	add	a7,a0,a2
   1d420:	06079263          	bnez	a5,1d484 <memcpy+0x70>
   1d424:	00700793          	li	a5,7
   1d428:	04c7fe63          	bgeu	a5,a2,1d484 <memcpy+0x70>
   1d42c:	00757793          	andi	a5,a0,7
   1d430:	00050713          	mv	a4,a0
   1d434:	06079863          	bnez	a5,1d4a4 <memcpy+0x90>
   1d438:	ff88f613          	andi	a2,a7,-8
   1d43c:	fc060793          	addi	a5,a2,-64
   1d440:	08f76c63          	bltu	a4,a5,1d4d8 <memcpy+0xc4>
   1d444:	02c77c63          	bgeu	a4,a2,1d47c <memcpy+0x68>
   1d448:	00058693          	mv	a3,a1
   1d44c:	00070793          	mv	a5,a4
   1d450:	0006b803          	ld	a6,0(a3) # 2000 <main-0xe0b0>
   1d454:	00878793          	addi	a5,a5,8
   1d458:	00868693          	addi	a3,a3,8
   1d45c:	ff07bc23          	sd	a6,-8(a5)
   1d460:	fec7e8e3          	bltu	a5,a2,1d450 <memcpy+0x3c>
   1d464:	fff60793          	addi	a5,a2,-1
   1d468:	40e787b3          	sub	a5,a5,a4
   1d46c:	ff87f793          	andi	a5,a5,-8
   1d470:	00878793          	addi	a5,a5,8
   1d474:	00f70733          	add	a4,a4,a5
   1d478:	00f585b3          	add	a1,a1,a5
   1d47c:	01176863          	bltu	a4,a7,1d48c <memcpy+0x78>
   1d480:	00008067          	ret
   1d484:	00050713          	mv	a4,a0
   1d488:	ff157ce3          	bgeu	a0,a7,1d480 <memcpy+0x6c>
   1d48c:	0005c783          	lbu	a5,0(a1)
   1d490:	00170713          	addi	a4,a4,1
   1d494:	00158593          	addi	a1,a1,1
   1d498:	fef70fa3          	sb	a5,-1(a4)
   1d49c:	ff1768e3          	bltu	a4,a7,1d48c <memcpy+0x78>
   1d4a0:	00008067          	ret
   1d4a4:	0005c683          	lbu	a3,0(a1)
   1d4a8:	00170713          	addi	a4,a4,1
   1d4ac:	00777793          	andi	a5,a4,7
   1d4b0:	fed70fa3          	sb	a3,-1(a4)
   1d4b4:	00158593          	addi	a1,a1,1
   1d4b8:	f80780e3          	beqz	a5,1d438 <memcpy+0x24>
   1d4bc:	0005c683          	lbu	a3,0(a1)
   1d4c0:	00170713          	addi	a4,a4,1
   1d4c4:	00777793          	andi	a5,a4,7
   1d4c8:	fed70fa3          	sb	a3,-1(a4)
   1d4cc:	00158593          	addi	a1,a1,1
   1d4d0:	fc079ae3          	bnez	a5,1d4a4 <memcpy+0x90>
   1d4d4:	f65ff06f          	j	1d438 <memcpy+0x24>
   1d4d8:	0005b683          	ld	a3,0(a1)
   1d4dc:	0085b283          	ld	t0,8(a1)
   1d4e0:	0105bf83          	ld	t6,16(a1)
   1d4e4:	0185bf03          	ld	t5,24(a1)
   1d4e8:	0205be83          	ld	t4,32(a1)
   1d4ec:	0285be03          	ld	t3,40(a1)
   1d4f0:	0305b303          	ld	t1,48(a1)
   1d4f4:	0385b803          	ld	a6,56(a1)
   1d4f8:	04858593          	addi	a1,a1,72
   1d4fc:	00d73023          	sd	a3,0(a4)
   1d500:	ff85b683          	ld	a3,-8(a1)
   1d504:	00573423          	sd	t0,8(a4)
   1d508:	01f73823          	sd	t6,16(a4)
   1d50c:	01e73c23          	sd	t5,24(a4)
   1d510:	03d73023          	sd	t4,32(a4)
   1d514:	03c73423          	sd	t3,40(a4)
   1d518:	02673823          	sd	t1,48(a4)
   1d51c:	03073c23          	sd	a6,56(a4)
   1d520:	04870713          	addi	a4,a4,72
   1d524:	fed73c23          	sd	a3,-8(a4)
   1d528:	faf768e3          	bltu	a4,a5,1d4d8 <memcpy+0xc4>
   1d52c:	f19ff06f          	j	1d444 <memcpy+0x30>

000000000001d530 <memmove>:
   1d530:	02a5f663          	bgeu	a1,a0,1d55c <memmove+0x2c>
   1d534:	00c587b3          	add	a5,a1,a2
   1d538:	02f57263          	bgeu	a0,a5,1d55c <memmove+0x2c>
   1d53c:	00c50733          	add	a4,a0,a2
   1d540:	0e060a63          	beqz	a2,1d634 <memmove+0x104>
   1d544:	fff78793          	addi	a5,a5,-1
   1d548:	0007c683          	lbu	a3,0(a5)
   1d54c:	fff70713          	addi	a4,a4,-1
   1d550:	00d70023          	sb	a3,0(a4)
   1d554:	fef598e3          	bne	a1,a5,1d544 <memmove+0x14>
   1d558:	00008067          	ret
   1d55c:	01f00793          	li	a5,31
   1d560:	02c7e863          	bltu	a5,a2,1d590 <memmove+0x60>
   1d564:	00050793          	mv	a5,a0
   1d568:	fff60693          	addi	a3,a2,-1
   1d56c:	0c060c63          	beqz	a2,1d644 <memmove+0x114>
   1d570:	00168693          	addi	a3,a3,1
   1d574:	00d786b3          	add	a3,a5,a3
   1d578:	00158593          	addi	a1,a1,1
   1d57c:	fff5c703          	lbu	a4,-1(a1)
   1d580:	00178793          	addi	a5,a5,1
   1d584:	fee78fa3          	sb	a4,-1(a5)
   1d588:	fed798e3          	bne	a5,a3,1d578 <memmove+0x48>
   1d58c:	00008067          	ret
   1d590:	00a5e7b3          	or	a5,a1,a0
   1d594:	0077f793          	andi	a5,a5,7
   1d598:	0a079063          	bnez	a5,1d638 <memmove+0x108>
   1d59c:	fe060893          	addi	a7,a2,-32
   1d5a0:	fe08f893          	andi	a7,a7,-32
   1d5a4:	02088893          	addi	a7,a7,32
   1d5a8:	01150833          	add	a6,a0,a7
   1d5ac:	00058713          	mv	a4,a1
   1d5b0:	00050793          	mv	a5,a0
   1d5b4:	00073683          	ld	a3,0(a4)
   1d5b8:	02078793          	addi	a5,a5,32
   1d5bc:	02070713          	addi	a4,a4,32
   1d5c0:	fed7b023          	sd	a3,-32(a5)
   1d5c4:	fe873683          	ld	a3,-24(a4)
   1d5c8:	fed7b423          	sd	a3,-24(a5)
   1d5cc:	ff073683          	ld	a3,-16(a4)
   1d5d0:	fed7b823          	sd	a3,-16(a5)
   1d5d4:	ff873683          	ld	a3,-8(a4)
   1d5d8:	fed7bc23          	sd	a3,-8(a5)
   1d5dc:	fcf81ce3          	bne	a6,a5,1d5b4 <memmove+0x84>
   1d5e0:	01867713          	andi	a4,a2,24
   1d5e4:	011585b3          	add	a1,a1,a7
   1d5e8:	01f67813          	andi	a6,a2,31
   1d5ec:	04070e63          	beqz	a4,1d648 <memmove+0x118>
   1d5f0:	00058713          	mv	a4,a1
   1d5f4:	00078893          	mv	a7,a5
   1d5f8:	00700e13          	li	t3,7
   1d5fc:	00870713          	addi	a4,a4,8
   1d600:	ff873303          	ld	t1,-8(a4)
   1d604:	00888893          	addi	a7,a7,8
   1d608:	40e806b3          	sub	a3,a6,a4
   1d60c:	fe68bc23          	sd	t1,-8(a7)
   1d610:	00d586b3          	add	a3,a1,a3
   1d614:	fede64e3          	bltu	t3,a3,1d5fc <memmove+0xcc>
   1d618:	ff880713          	addi	a4,a6,-8
   1d61c:	ff877713          	andi	a4,a4,-8
   1d620:	00870713          	addi	a4,a4,8
   1d624:	00767613          	andi	a2,a2,7
   1d628:	00e787b3          	add	a5,a5,a4
   1d62c:	00e585b3          	add	a1,a1,a4
   1d630:	f39ff06f          	j	1d568 <memmove+0x38>
   1d634:	00008067          	ret
   1d638:	fff60693          	addi	a3,a2,-1
   1d63c:	00050793          	mv	a5,a0
   1d640:	f31ff06f          	j	1d570 <memmove+0x40>
   1d644:	00008067          	ret
   1d648:	00080613          	mv	a2,a6
   1d64c:	f1dff06f          	j	1d568 <memmove+0x38>

000000000001d650 <_read_r>:
   1d650:	00058793          	mv	a5,a1
   1d654:	ff010113          	addi	sp,sp,-16
   1d658:	00813023          	sd	s0,0(sp)
   1d65c:	00060593          	mv	a1,a2
   1d660:	00050413          	mv	s0,a0
   1d664:	00068613          	mv	a2,a3
   1d668:	00078513          	mv	a0,a5
   1d66c:	00113423          	sd	ra,8(sp)
   1d670:	00006797          	auipc	a5,0x6
   1d674:	b807a823          	sw	zero,-1136(a5) # 23200 <errno>
   1d678:	569010ef          	jal	ra,1f3e0 <_read>
   1d67c:	fff00793          	li	a5,-1
   1d680:	00f50a63          	beq	a0,a5,1d694 <_read_r+0x44>
   1d684:	00813083          	ld	ra,8(sp)
   1d688:	00013403          	ld	s0,0(sp)
   1d68c:	01010113          	addi	sp,sp,16
   1d690:	00008067          	ret
   1d694:	00006797          	auipc	a5,0x6
   1d698:	b6c78793          	addi	a5,a5,-1172 # 23200 <errno>
   1d69c:	0007a783          	lw	a5,0(a5)
   1d6a0:	fe0782e3          	beqz	a5,1d684 <_read_r+0x34>
   1d6a4:	00f42023          	sw	a5,0(s0)
   1d6a8:	00813083          	ld	ra,8(sp)
   1d6ac:	00013403          	ld	s0,0(sp)
   1d6b0:	01010113          	addi	sp,sp,16
   1d6b4:	00008067          	ret

000000000001d6b8 <_realloc_r>:
   1d6b8:	fb010113          	addi	sp,sp,-80
   1d6bc:	03213823          	sd	s2,48(sp)
   1d6c0:	04113423          	sd	ra,72(sp)
   1d6c4:	04813023          	sd	s0,64(sp)
   1d6c8:	02913c23          	sd	s1,56(sp)
   1d6cc:	03313423          	sd	s3,40(sp)
   1d6d0:	03413023          	sd	s4,32(sp)
   1d6d4:	01513c23          	sd	s5,24(sp)
   1d6d8:	01613823          	sd	s6,16(sp)
   1d6dc:	01713423          	sd	s7,8(sp)
   1d6e0:	01813023          	sd	s8,0(sp)
   1d6e4:	00060913          	mv	s2,a2
   1d6e8:	22058463          	beqz	a1,1d910 <_realloc_r+0x258>
   1d6ec:	00058a93          	mv	s5,a1
   1d6f0:	00050a13          	mv	s4,a0
   1d6f4:	ed1f90ef          	jal	ra,175c4 <__malloc_lock>
   1d6f8:	ff8ab783          	ld	a5,-8(s5)
   1d6fc:	01790413          	addi	s0,s2,23
   1d700:	02e00713          	li	a4,46
   1d704:	ff0a8b13          	addi	s6,s5,-16
   1d708:	ffc7f493          	andi	s1,a5,-4
   1d70c:	0e877a63          	bgeu	a4,s0,1d800 <_realloc_r+0x148>
   1d710:	80000737          	lui	a4,0x80000
   1d714:	ff047413          	andi	s0,s0,-16
   1d718:	fff74713          	not	a4,a4
   1d71c:	0e876663          	bltu	a4,s0,1d808 <_realloc_r+0x150>
   1d720:	0f246463          	bltu	s0,s2,1d808 <_realloc_r+0x150>
   1d724:	009b09b3          	add	s3,s6,s1
   1d728:	1884da63          	bge	s1,s0,1d8bc <_realloc_r+0x204>
   1d72c:	00005717          	auipc	a4,0x5
   1d730:	1e470713          	addi	a4,a4,484 # 22910 <__malloc_av_>
   1d734:	01073683          	ld	a3,16(a4)
   1d738:	0089b703          	ld	a4,8(s3)
   1d73c:	23368c63          	beq	a3,s3,1d974 <_realloc_r+0x2bc>
   1d740:	ffe77693          	andi	a3,a4,-2
   1d744:	00d986b3          	add	a3,s3,a3
   1d748:	0086b683          	ld	a3,8(a3)
   1d74c:	0016f693          	andi	a3,a3,1
   1d750:	1a069263          	bnez	a3,1d8f4 <_realloc_r+0x23c>
   1d754:	ffc77713          	andi	a4,a4,-4
   1d758:	00e486b3          	add	a3,s1,a4
   1d75c:	3486d063          	bge	a3,s0,1da9c <_realloc_r+0x3e4>
   1d760:	0017f793          	andi	a5,a5,1
   1d764:	02079463          	bnez	a5,1d78c <_realloc_r+0xd4>
   1d768:	ff0abc03          	ld	s8,-16(s5)
   1d76c:	418b0c33          	sub	s8,s6,s8
   1d770:	008c3783          	ld	a5,8(s8)
   1d774:	ffc7f793          	andi	a5,a5,-4
   1d778:	00e78733          	add	a4,a5,a4
   1d77c:	00970bb3          	add	s7,a4,s1
   1d780:	348bdc63          	bge	s7,s0,1dad8 <_realloc_r+0x420>
   1d784:	00f48bb3          	add	s7,s1,a5
   1d788:	0c8bd063          	bge	s7,s0,1d848 <_realloc_r+0x190>
   1d78c:	00090593          	mv	a1,s2
   1d790:	000a0513          	mv	a0,s4
   1d794:	c74f90ef          	jal	ra,16c08 <_malloc_r>
   1d798:	00050913          	mv	s2,a0
   1d79c:	04050c63          	beqz	a0,1d7f4 <_realloc_r+0x13c>
   1d7a0:	ff8ab783          	ld	a5,-8(s5)
   1d7a4:	ff050713          	addi	a4,a0,-16
   1d7a8:	ffe7f793          	andi	a5,a5,-2
   1d7ac:	00fb07b3          	add	a5,s6,a5
   1d7b0:	30e78463          	beq	a5,a4,1dab8 <_realloc_r+0x400>
   1d7b4:	ff848613          	addi	a2,s1,-8
   1d7b8:	04800793          	li	a5,72
   1d7bc:	30c7e863          	bltu	a5,a2,1dacc <_realloc_r+0x414>
   1d7c0:	02700713          	li	a4,39
   1d7c4:	000ab683          	ld	a3,0(s5)
   1d7c8:	26c76c63          	bltu	a4,a2,1da40 <_realloc_r+0x388>
   1d7cc:	00050793          	mv	a5,a0
   1d7d0:	000a8713          	mv	a4,s5
   1d7d4:	00d7b023          	sd	a3,0(a5)
   1d7d8:	00873683          	ld	a3,8(a4)
   1d7dc:	00d7b423          	sd	a3,8(a5)
   1d7e0:	01073703          	ld	a4,16(a4)
   1d7e4:	00e7b823          	sd	a4,16(a5)
   1d7e8:	000a8593          	mv	a1,s5
   1d7ec:	000a0513          	mv	a0,s4
   1d7f0:	8c0f60ef          	jal	ra,138b0 <_free_r>
   1d7f4:	000a0513          	mv	a0,s4
   1d7f8:	dd1f90ef          	jal	ra,175c8 <__malloc_unlock>
   1d7fc:	0180006f          	j	1d814 <_realloc_r+0x15c>
   1d800:	02000413          	li	s0,32
   1d804:	f32470e3          	bgeu	s0,s2,1d724 <_realloc_r+0x6c>
   1d808:	00c00793          	li	a5,12
   1d80c:	00fa2023          	sw	a5,0(s4)
   1d810:	00000913          	li	s2,0
   1d814:	04813083          	ld	ra,72(sp)
   1d818:	04013403          	ld	s0,64(sp)
   1d81c:	00090513          	mv	a0,s2
   1d820:	03813483          	ld	s1,56(sp)
   1d824:	03013903          	ld	s2,48(sp)
   1d828:	02813983          	ld	s3,40(sp)
   1d82c:	02013a03          	ld	s4,32(sp)
   1d830:	01813a83          	ld	s5,24(sp)
   1d834:	01013b03          	ld	s6,16(sp)
   1d838:	00813b83          	ld	s7,8(sp)
   1d83c:	00013c03          	ld	s8,0(sp)
   1d840:	05010113          	addi	sp,sp,80
   1d844:	00008067          	ret
   1d848:	018c3783          	ld	a5,24(s8)
   1d84c:	010c3703          	ld	a4,16(s8)
   1d850:	ff848613          	addi	a2,s1,-8
   1d854:	04800693          	li	a3,72
   1d858:	00f73c23          	sd	a5,24(a4)
   1d85c:	00e7b823          	sd	a4,16(a5)
   1d860:	010c0913          	addi	s2,s8,16
   1d864:	017c09b3          	add	s3,s8,s7
   1d868:	30c6e063          	bltu	a3,a2,1db68 <_realloc_r+0x4b0>
   1d86c:	02700593          	li	a1,39
   1d870:	000ab703          	ld	a4,0(s5)
   1d874:	00090793          	mv	a5,s2
   1d878:	02c5f263          	bgeu	a1,a2,1d89c <_realloc_r+0x1e4>
   1d87c:	00ec3823          	sd	a4,16(s8)
   1d880:	008ab703          	ld	a4,8(s5)
   1d884:	03700793          	li	a5,55
   1d888:	00ec3c23          	sd	a4,24(s8)
   1d88c:	32c7ee63          	bltu	a5,a2,1dbc8 <_realloc_r+0x510>
   1d890:	010ab703          	ld	a4,16(s5)
   1d894:	020c0793          	addi	a5,s8,32
   1d898:	010a8a93          	addi	s5,s5,16
   1d89c:	00e7b023          	sd	a4,0(a5)
   1d8a0:	008ab703          	ld	a4,8(s5)
   1d8a4:	000b8493          	mv	s1,s7
   1d8a8:	000c0b13          	mv	s6,s8
   1d8ac:	00e7b423          	sd	a4,8(a5)
   1d8b0:	010ab703          	ld	a4,16(s5)
   1d8b4:	00090a93          	mv	s5,s2
   1d8b8:	00e7b823          	sd	a4,16(a5)
   1d8bc:	008b3603          	ld	a2,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdce00>
   1d8c0:	408487b3          	sub	a5,s1,s0
   1d8c4:	01f00713          	li	a4,31
   1d8c8:	00167613          	andi	a2,a2,1
   1d8cc:	06f76c63          	bltu	a4,a5,1d944 <_realloc_r+0x28c>
   1d8d0:	00c4e633          	or	a2,s1,a2
   1d8d4:	00cb3423          	sd	a2,8(s6)
   1d8d8:	0089b783          	ld	a5,8(s3)
   1d8dc:	0017e793          	ori	a5,a5,1
   1d8e0:	00f9b423          	sd	a5,8(s3)
   1d8e4:	000a0513          	mv	a0,s4
   1d8e8:	ce1f90ef          	jal	ra,175c8 <__malloc_unlock>
   1d8ec:	000a8913          	mv	s2,s5
   1d8f0:	f25ff06f          	j	1d814 <_realloc_r+0x15c>
   1d8f4:	0017f793          	andi	a5,a5,1
   1d8f8:	e8079ae3          	bnez	a5,1d78c <_realloc_r+0xd4>
   1d8fc:	ff0abc03          	ld	s8,-16(s5)
   1d900:	418b0c33          	sub	s8,s6,s8
   1d904:	008c3783          	ld	a5,8(s8)
   1d908:	ffc7f793          	andi	a5,a5,-4
   1d90c:	e79ff06f          	j	1d784 <_realloc_r+0xcc>
   1d910:	04013403          	ld	s0,64(sp)
   1d914:	04813083          	ld	ra,72(sp)
   1d918:	03813483          	ld	s1,56(sp)
   1d91c:	03013903          	ld	s2,48(sp)
   1d920:	02813983          	ld	s3,40(sp)
   1d924:	02013a03          	ld	s4,32(sp)
   1d928:	01813a83          	ld	s5,24(sp)
   1d92c:	01013b03          	ld	s6,16(sp)
   1d930:	00813b83          	ld	s7,8(sp)
   1d934:	00013c03          	ld	s8,0(sp)
   1d938:	00060593          	mv	a1,a2
   1d93c:	05010113          	addi	sp,sp,80
   1d940:	ac8f906f          	j	16c08 <_malloc_r>
   1d944:	00c46633          	or	a2,s0,a2
   1d948:	00cb3423          	sd	a2,8(s6)
   1d94c:	008b05b3          	add	a1,s6,s0
   1d950:	0017e793          	ori	a5,a5,1
   1d954:	00f5b423          	sd	a5,8(a1)
   1d958:	0089b783          	ld	a5,8(s3)
   1d95c:	01058593          	addi	a1,a1,16
   1d960:	000a0513          	mv	a0,s4
   1d964:	0017e793          	ori	a5,a5,1
   1d968:	00f9b423          	sd	a5,8(s3)
   1d96c:	f45f50ef          	jal	ra,138b0 <_free_r>
   1d970:	f75ff06f          	j	1d8e4 <_realloc_r+0x22c>
   1d974:	ffc77713          	andi	a4,a4,-4
   1d978:	00e486b3          	add	a3,s1,a4
   1d97c:	02040613          	addi	a2,s0,32
   1d980:	0ec6d263          	bge	a3,a2,1da64 <_realloc_r+0x3ac>
   1d984:	0017f793          	andi	a5,a5,1
   1d988:	e00792e3          	bnez	a5,1d78c <_realloc_r+0xd4>
   1d98c:	ff0abc03          	ld	s8,-16(s5)
   1d990:	418b0c33          	sub	s8,s6,s8
   1d994:	008c3783          	ld	a5,8(s8)
   1d998:	ffc7f793          	andi	a5,a5,-4
   1d99c:	00e78733          	add	a4,a5,a4
   1d9a0:	009709b3          	add	s3,a4,s1
   1d9a4:	dec9c0e3          	blt	s3,a2,1d784 <_realloc_r+0xcc>
   1d9a8:	018c3783          	ld	a5,24(s8)
   1d9ac:	010c3703          	ld	a4,16(s8)
   1d9b0:	ff848613          	addi	a2,s1,-8
   1d9b4:	04800693          	li	a3,72
   1d9b8:	00f73c23          	sd	a5,24(a4)
   1d9bc:	00e7b823          	sd	a4,16(a5)
   1d9c0:	010c0913          	addi	s2,s8,16
   1d9c4:	22c6e463          	bltu	a3,a2,1dbec <_realloc_r+0x534>
   1d9c8:	02700593          	li	a1,39
   1d9cc:	000ab703          	ld	a4,0(s5)
   1d9d0:	00090793          	mv	a5,s2
   1d9d4:	02c5f263          	bgeu	a1,a2,1d9f8 <_realloc_r+0x340>
   1d9d8:	00ec3823          	sd	a4,16(s8)
   1d9dc:	008ab703          	ld	a4,8(s5)
   1d9e0:	03700793          	li	a5,55
   1d9e4:	00ec3c23          	sd	a4,24(s8)
   1d9e8:	20c7ea63          	bltu	a5,a2,1dbfc <_realloc_r+0x544>
   1d9ec:	010ab703          	ld	a4,16(s5)
   1d9f0:	020c0793          	addi	a5,s8,32
   1d9f4:	010a8a93          	addi	s5,s5,16
   1d9f8:	00e7b023          	sd	a4,0(a5)
   1d9fc:	008ab703          	ld	a4,8(s5)
   1da00:	00e7b423          	sd	a4,8(a5)
   1da04:	010ab703          	ld	a4,16(s5)
   1da08:	00e7b823          	sd	a4,16(a5)
   1da0c:	008c0733          	add	a4,s8,s0
   1da10:	408987b3          	sub	a5,s3,s0
   1da14:	00005697          	auipc	a3,0x5
   1da18:	f0e6b623          	sd	a4,-244(a3) # 22920 <__malloc_av_+0x10>
   1da1c:	0017e793          	ori	a5,a5,1
   1da20:	00f73423          	sd	a5,8(a4)
   1da24:	008c3783          	ld	a5,8(s8)
   1da28:	000a0513          	mv	a0,s4
   1da2c:	0017f793          	andi	a5,a5,1
   1da30:	0087e433          	or	s0,a5,s0
   1da34:	008c3423          	sd	s0,8(s8)
   1da38:	b91f90ef          	jal	ra,175c8 <__malloc_unlock>
   1da3c:	dd9ff06f          	j	1d814 <_realloc_r+0x15c>
   1da40:	00d53023          	sd	a3,0(a0)
   1da44:	008ab683          	ld	a3,8(s5)
   1da48:	03700713          	li	a4,55
   1da4c:	00d53423          	sd	a3,8(a0)
   1da50:	12c76a63          	bltu	a4,a2,1db84 <_realloc_r+0x4cc>
   1da54:	010a8713          	addi	a4,s5,16
   1da58:	01050793          	addi	a5,a0,16
   1da5c:	010ab683          	ld	a3,16(s5)
   1da60:	d75ff06f          	j	1d7d4 <_realloc_r+0x11c>
   1da64:	008b0b33          	add	s6,s6,s0
   1da68:	408687b3          	sub	a5,a3,s0
   1da6c:	00005717          	auipc	a4,0x5
   1da70:	eb673a23          	sd	s6,-332(a4) # 22920 <__malloc_av_+0x10>
   1da74:	0017e793          	ori	a5,a5,1
   1da78:	00fb3423          	sd	a5,8(s6)
   1da7c:	ff8ab783          	ld	a5,-8(s5)
   1da80:	000a0513          	mv	a0,s4
   1da84:	000a8913          	mv	s2,s5
   1da88:	0017f793          	andi	a5,a5,1
   1da8c:	0087e433          	or	s0,a5,s0
   1da90:	fe8abc23          	sd	s0,-8(s5)
   1da94:	b35f90ef          	jal	ra,175c8 <__malloc_unlock>
   1da98:	d7dff06f          	j	1d814 <_realloc_r+0x15c>
   1da9c:	0189b783          	ld	a5,24(s3)
   1daa0:	0109b703          	ld	a4,16(s3)
   1daa4:	00068493          	mv	s1,a3
   1daa8:	00db09b3          	add	s3,s6,a3
   1daac:	00f73c23          	sd	a5,24(a4)
   1dab0:	00e7b823          	sd	a4,16(a5)
   1dab4:	e09ff06f          	j	1d8bc <_realloc_r+0x204>
   1dab8:	ff853783          	ld	a5,-8(a0)
   1dabc:	ffc7f793          	andi	a5,a5,-4
   1dac0:	00f484b3          	add	s1,s1,a5
   1dac4:	009b09b3          	add	s3,s6,s1
   1dac8:	df5ff06f          	j	1d8bc <_realloc_r+0x204>
   1dacc:	000a8593          	mv	a1,s5
   1dad0:	a61ff0ef          	jal	ra,1d530 <memmove>
   1dad4:	d15ff06f          	j	1d7e8 <_realloc_r+0x130>
   1dad8:	0189b783          	ld	a5,24(s3)
   1dadc:	0109b703          	ld	a4,16(s3)
   1dae0:	ff848613          	addi	a2,s1,-8
   1dae4:	04800693          	li	a3,72
   1dae8:	00f73c23          	sd	a5,24(a4)
   1daec:	00e7b823          	sd	a4,16(a5)
   1daf0:	010c3703          	ld	a4,16(s8)
   1daf4:	018c3783          	ld	a5,24(s8)
   1daf8:	010c0913          	addi	s2,s8,16
   1dafc:	017c09b3          	add	s3,s8,s7
   1db00:	00f73c23          	sd	a5,24(a4)
   1db04:	00e7b823          	sd	a4,16(a5)
   1db08:	06c6e063          	bltu	a3,a2,1db68 <_realloc_r+0x4b0>
   1db0c:	02700693          	li	a3,39
   1db10:	000ab703          	ld	a4,0(s5)
   1db14:	00090793          	mv	a5,s2
   1db18:	d8c6f2e3          	bgeu	a3,a2,1d89c <_realloc_r+0x1e4>
   1db1c:	00ec3823          	sd	a4,16(s8)
   1db20:	008ab703          	ld	a4,8(s5)
   1db24:	03700793          	li	a5,55
   1db28:	00ec3c23          	sd	a4,24(s8)
   1db2c:	010ab703          	ld	a4,16(s5)
   1db30:	d6c7f2e3          	bgeu	a5,a2,1d894 <_realloc_r+0x1dc>
   1db34:	02ec3023          	sd	a4,32(s8)
   1db38:	018ab703          	ld	a4,24(s5)
   1db3c:	04800793          	li	a5,72
   1db40:	02ec3423          	sd	a4,40(s8)
   1db44:	020ab703          	ld	a4,32(s5)
   1db48:	08f61c63          	bne	a2,a5,1dbe0 <_realloc_r+0x528>
   1db4c:	02ec3823          	sd	a4,48(s8)
   1db50:	028ab703          	ld	a4,40(s5)
   1db54:	040c0793          	addi	a5,s8,64
   1db58:	030a8a93          	addi	s5,s5,48
   1db5c:	02ec3c23          	sd	a4,56(s8)
   1db60:	000ab703          	ld	a4,0(s5)
   1db64:	d39ff06f          	j	1d89c <_realloc_r+0x1e4>
   1db68:	000a8593          	mv	a1,s5
   1db6c:	00090513          	mv	a0,s2
   1db70:	9c1ff0ef          	jal	ra,1d530 <memmove>
   1db74:	00090a93          	mv	s5,s2
   1db78:	000b8493          	mv	s1,s7
   1db7c:	000c0b13          	mv	s6,s8
   1db80:	d3dff06f          	j	1d8bc <_realloc_r+0x204>
   1db84:	010ab703          	ld	a4,16(s5)
   1db88:	00e53823          	sd	a4,16(a0)
   1db8c:	018ab703          	ld	a4,24(s5)
   1db90:	00e53c23          	sd	a4,24(a0)
   1db94:	00f60a63          	beq	a2,a5,1dba8 <_realloc_r+0x4f0>
   1db98:	020a8713          	addi	a4,s5,32
   1db9c:	02050793          	addi	a5,a0,32
   1dba0:	020ab683          	ld	a3,32(s5)
   1dba4:	c31ff06f          	j	1d7d4 <_realloc_r+0x11c>
   1dba8:	020ab683          	ld	a3,32(s5)
   1dbac:	030a8713          	addi	a4,s5,48
   1dbb0:	03050793          	addi	a5,a0,48
   1dbb4:	02d53023          	sd	a3,32(a0)
   1dbb8:	028ab683          	ld	a3,40(s5)
   1dbbc:	02d53423          	sd	a3,40(a0)
   1dbc0:	030ab683          	ld	a3,48(s5)
   1dbc4:	c11ff06f          	j	1d7d4 <_realloc_r+0x11c>
   1dbc8:	010ab783          	ld	a5,16(s5)
   1dbcc:	02fc3023          	sd	a5,32(s8)
   1dbd0:	018ab783          	ld	a5,24(s5)
   1dbd4:	02fc3423          	sd	a5,40(s8)
   1dbd8:	020ab703          	ld	a4,32(s5)
   1dbdc:	f6d608e3          	beq	a2,a3,1db4c <_realloc_r+0x494>
   1dbe0:	030c0793          	addi	a5,s8,48
   1dbe4:	020a8a93          	addi	s5,s5,32
   1dbe8:	cb5ff06f          	j	1d89c <_realloc_r+0x1e4>
   1dbec:	000a8593          	mv	a1,s5
   1dbf0:	00090513          	mv	a0,s2
   1dbf4:	93dff0ef          	jal	ra,1d530 <memmove>
   1dbf8:	e15ff06f          	j	1da0c <_realloc_r+0x354>
   1dbfc:	010ab783          	ld	a5,16(s5)
   1dc00:	02fc3023          	sd	a5,32(s8)
   1dc04:	018ab783          	ld	a5,24(s5)
   1dc08:	02fc3423          	sd	a5,40(s8)
   1dc0c:	020ab703          	ld	a4,32(s5)
   1dc10:	00d60863          	beq	a2,a3,1dc20 <_realloc_r+0x568>
   1dc14:	030c0793          	addi	a5,s8,48
   1dc18:	020a8a93          	addi	s5,s5,32
   1dc1c:	dddff06f          	j	1d9f8 <_realloc_r+0x340>
   1dc20:	02ec3823          	sd	a4,48(s8)
   1dc24:	028ab703          	ld	a4,40(s5)
   1dc28:	040c0793          	addi	a5,s8,64
   1dc2c:	030a8a93          	addi	s5,s5,48
   1dc30:	02ec3c23          	sd	a4,56(s8)
   1dc34:	000ab703          	ld	a4,0(s5)
   1dc38:	dc1ff06f          	j	1d9f8 <_realloc_r+0x340>

000000000001dc3c <cleanup_glue>:
   1dc3c:	fe010113          	addi	sp,sp,-32
   1dc40:	00813823          	sd	s0,16(sp)
   1dc44:	00058413          	mv	s0,a1
   1dc48:	0005b583          	ld	a1,0(a1)
   1dc4c:	00913423          	sd	s1,8(sp)
   1dc50:	00113c23          	sd	ra,24(sp)
   1dc54:	00050493          	mv	s1,a0
   1dc58:	00058463          	beqz	a1,1dc60 <cleanup_glue+0x24>
   1dc5c:	fe1ff0ef          	jal	ra,1dc3c <cleanup_glue>
   1dc60:	00040593          	mv	a1,s0
   1dc64:	01013403          	ld	s0,16(sp)
   1dc68:	01813083          	ld	ra,24(sp)
   1dc6c:	00048513          	mv	a0,s1
   1dc70:	00813483          	ld	s1,8(sp)
   1dc74:	02010113          	addi	sp,sp,32
   1dc78:	c39f506f          	j	138b0 <_free_r>

000000000001dc7c <_reclaim_reent>:
   1dc7c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1dc80:	0007b783          	ld	a5,0(a5)
   1dc84:	10a78263          	beq	a5,a0,1dd88 <_reclaim_reent+0x10c>
   1dc88:	07853703          	ld	a4,120(a0)
   1dc8c:	fd010113          	addi	sp,sp,-48
   1dc90:	00913c23          	sd	s1,24(sp)
   1dc94:	02113423          	sd	ra,40(sp)
   1dc98:	02813023          	sd	s0,32(sp)
   1dc9c:	01213823          	sd	s2,16(sp)
   1dca0:	01313423          	sd	s3,8(sp)
   1dca4:	00050493          	mv	s1,a0
   1dca8:	04070263          	beqz	a4,1dcec <_reclaim_reent+0x70>
   1dcac:	00000913          	li	s2,0
   1dcb0:	20000993          	li	s3,512
   1dcb4:	012707b3          	add	a5,a4,s2
   1dcb8:	0007b583          	ld	a1,0(a5)
   1dcbc:	00058e63          	beqz	a1,1dcd8 <_reclaim_reent+0x5c>
   1dcc0:	0005b403          	ld	s0,0(a1)
   1dcc4:	00048513          	mv	a0,s1
   1dcc8:	be9f50ef          	jal	ra,138b0 <_free_r>
   1dccc:	00040593          	mv	a1,s0
   1dcd0:	fe0418e3          	bnez	s0,1dcc0 <_reclaim_reent+0x44>
   1dcd4:	0784b703          	ld	a4,120(s1)
   1dcd8:	00890913          	addi	s2,s2,8
   1dcdc:	fd391ce3          	bne	s2,s3,1dcb4 <_reclaim_reent+0x38>
   1dce0:	00070593          	mv	a1,a4
   1dce4:	00048513          	mv	a0,s1
   1dce8:	bc9f50ef          	jal	ra,138b0 <_free_r>
   1dcec:	0604b583          	ld	a1,96(s1)
   1dcf0:	00058663          	beqz	a1,1dcfc <_reclaim_reent+0x80>
   1dcf4:	00048513          	mv	a0,s1
   1dcf8:	bb9f50ef          	jal	ra,138b0 <_free_r>
   1dcfc:	1f84b583          	ld	a1,504(s1)
   1dd00:	02058063          	beqz	a1,1dd20 <_reclaim_reent+0xa4>
   1dd04:	20048913          	addi	s2,s1,512
   1dd08:	01258c63          	beq	a1,s2,1dd20 <_reclaim_reent+0xa4>
   1dd0c:	0005b403          	ld	s0,0(a1)
   1dd10:	00048513          	mv	a0,s1
   1dd14:	b9df50ef          	jal	ra,138b0 <_free_r>
   1dd18:	00040593          	mv	a1,s0
   1dd1c:	fe8918e3          	bne	s2,s0,1dd0c <_reclaim_reent+0x90>
   1dd20:	0884b583          	ld	a1,136(s1)
   1dd24:	00058663          	beqz	a1,1dd30 <_reclaim_reent+0xb4>
   1dd28:	00048513          	mv	a0,s1
   1dd2c:	b85f50ef          	jal	ra,138b0 <_free_r>
   1dd30:	0504a783          	lw	a5,80(s1)
   1dd34:	02078c63          	beqz	a5,1dd6c <_reclaim_reent+0xf0>
   1dd38:	0584b783          	ld	a5,88(s1)
   1dd3c:	00048513          	mv	a0,s1
   1dd40:	000780e7          	jalr	a5
   1dd44:	5204b583          	ld	a1,1312(s1)
   1dd48:	02058263          	beqz	a1,1dd6c <_reclaim_reent+0xf0>
   1dd4c:	02013403          	ld	s0,32(sp)
   1dd50:	02813083          	ld	ra,40(sp)
   1dd54:	01013903          	ld	s2,16(sp)
   1dd58:	00813983          	ld	s3,8(sp)
   1dd5c:	00048513          	mv	a0,s1
   1dd60:	01813483          	ld	s1,24(sp)
   1dd64:	03010113          	addi	sp,sp,48
   1dd68:	ed5ff06f          	j	1dc3c <cleanup_glue>
   1dd6c:	02813083          	ld	ra,40(sp)
   1dd70:	02013403          	ld	s0,32(sp)
   1dd74:	01813483          	ld	s1,24(sp)
   1dd78:	01013903          	ld	s2,16(sp)
   1dd7c:	00813983          	ld	s3,8(sp)
   1dd80:	03010113          	addi	sp,sp,48
   1dd84:	00008067          	ret
   1dd88:	00008067          	ret

000000000001dd8c <__ssprint_r>:
   1dd8c:	01063783          	ld	a5,16(a2)
   1dd90:	fb010113          	addi	sp,sp,-80
   1dd94:	03413023          	sd	s4,32(sp)
   1dd98:	04113423          	sd	ra,72(sp)
   1dd9c:	04813023          	sd	s0,64(sp)
   1dda0:	02913c23          	sd	s1,56(sp)
   1dda4:	03213823          	sd	s2,48(sp)
   1dda8:	03313423          	sd	s3,40(sp)
   1ddac:	01513c23          	sd	s5,24(sp)
   1ddb0:	01613823          	sd	s6,16(sp)
   1ddb4:	01713423          	sd	s7,8(sp)
   1ddb8:	01813023          	sd	s8,0(sp)
   1ddbc:	00060a13          	mv	s4,a2
   1ddc0:	10078c63          	beqz	a5,1ded8 <__ssprint_r+0x14c>
   1ddc4:	00050a93          	mv	s5,a0
   1ddc8:	00063983          	ld	s3,0(a2)
   1ddcc:	0005b503          	ld	a0,0(a1)
   1ddd0:	00c5a403          	lw	s0,12(a1)
   1ddd4:	00058913          	mv	s2,a1
   1ddd8:	00000b13          	li	s6,0
   1dddc:	00000493          	li	s1,0
   1dde0:	12048863          	beqz	s1,1df10 <__ssprint_r+0x184>
   1dde4:	00040c13          	mv	s8,s0
   1dde8:	0004879b          	sext.w	a5,s1
   1ddec:	1284ea63          	bltu	s1,s0,1df20 <__ssprint_r+0x194>
   1ddf0:	01095783          	lhu	a5,16(s2)
   1ddf4:	00048b9b          	sext.w	s7,s1
   1ddf8:	4807f713          	andi	a4,a5,1152
   1ddfc:	0a070063          	beqz	a4,1de9c <__ssprint_r+0x110>
   1de00:	02092683          	lw	a3,32(s2)
   1de04:	01893583          	ld	a1,24(s2)
   1de08:	00148713          	addi	a4,s1,1
   1de0c:	0016941b          	slliw	s0,a3,0x1
   1de10:	00d406bb          	addw	a3,s0,a3
   1de14:	40b50533          	sub	a0,a0,a1
   1de18:	01f6d41b          	srliw	s0,a3,0x1f
   1de1c:	00050b9b          	sext.w	s7,a0
   1de20:	00d4043b          	addw	s0,s0,a3
   1de24:	4014541b          	sraiw	s0,s0,0x1
   1de28:	01770733          	add	a4,a4,s7
   1de2c:	00e47663          	bgeu	s0,a4,1de38 <__ssprint_r+0xac>
   1de30:	0014841b          	addiw	s0,s1,1
   1de34:	00a4043b          	addw	s0,s0,a0
   1de38:	4007f793          	andi	a5,a5,1024
   1de3c:	0e078a63          	beqz	a5,1df30 <__ssprint_r+0x1a4>
   1de40:	00040593          	mv	a1,s0
   1de44:	000a8513          	mv	a0,s5
   1de48:	dc1f80ef          	jal	ra,16c08 <_malloc_r>
   1de4c:	00050c13          	mv	s8,a0
   1de50:	10050063          	beqz	a0,1df50 <__ssprint_r+0x1c4>
   1de54:	01893583          	ld	a1,24(s2)
   1de58:	000b8613          	mv	a2,s7
   1de5c:	db8ff0ef          	jal	ra,1d414 <memcpy>
   1de60:	01095783          	lhu	a5,16(s2)
   1de64:	b7f7f793          	andi	a5,a5,-1153
   1de68:	0807e793          	ori	a5,a5,128
   1de6c:	00f91823          	sh	a5,16(s2)
   1de70:	017c0533          	add	a0,s8,s7
   1de74:	41740bbb          	subw	s7,s0,s7
   1de78:	0004879b          	sext.w	a5,s1
   1de7c:	01893c23          	sd	s8,24(s2)
   1de80:	02892023          	sw	s0,32(s2)
   1de84:	01792623          	sw	s7,12(s2)
   1de88:	00a93023          	sd	a0,0(s2)
   1de8c:	00078413          	mv	s0,a5
   1de90:	00078c13          	mv	s8,a5
   1de94:	00078b93          	mv	s7,a5
   1de98:	08f4e463          	bltu	s1,a5,1df20 <__ssprint_r+0x194>
   1de9c:	00040613          	mv	a2,s0
   1dea0:	000b0593          	mv	a1,s6
   1dea4:	e8cff0ef          	jal	ra,1d530 <memmove>
   1dea8:	00c92703          	lw	a4,12(s2)
   1deac:	00093503          	ld	a0,0(s2)
   1deb0:	010a3783          	ld	a5,16(s4)
   1deb4:	4087043b          	subw	s0,a4,s0
   1deb8:	01850533          	add	a0,a0,s8
   1debc:	00892623          	sw	s0,12(s2)
   1dec0:	00a93023          	sd	a0,0(s2)
   1dec4:	417787b3          	sub	a5,a5,s7
   1dec8:	00fa3823          	sd	a5,16(s4)
   1decc:	017b0b33          	add	s6,s6,s7
   1ded0:	417484b3          	sub	s1,s1,s7
   1ded4:	f00796e3          	bnez	a5,1dde0 <__ssprint_r+0x54>
   1ded8:	000a2423          	sw	zero,8(s4)
   1dedc:	00000513          	li	a0,0
   1dee0:	04813083          	ld	ra,72(sp)
   1dee4:	04013403          	ld	s0,64(sp)
   1dee8:	03813483          	ld	s1,56(sp)
   1deec:	03013903          	ld	s2,48(sp)
   1def0:	02813983          	ld	s3,40(sp)
   1def4:	02013a03          	ld	s4,32(sp)
   1def8:	01813a83          	ld	s5,24(sp)
   1defc:	01013b03          	ld	s6,16(sp)
   1df00:	00813b83          	ld	s7,8(sp)
   1df04:	00013c03          	ld	s8,0(sp)
   1df08:	05010113          	addi	sp,sp,80
   1df0c:	00008067          	ret
   1df10:	0009bb03          	ld	s6,0(s3)
   1df14:	0089b483          	ld	s1,8(s3)
   1df18:	01098993          	addi	s3,s3,16
   1df1c:	ec5ff06f          	j	1dde0 <__ssprint_r+0x54>
   1df20:	00078413          	mv	s0,a5
   1df24:	00078c13          	mv	s8,a5
   1df28:	00078b93          	mv	s7,a5
   1df2c:	f71ff06f          	j	1de9c <__ssprint_r+0x110>
   1df30:	00040613          	mv	a2,s0
   1df34:	000a8513          	mv	a0,s5
   1df38:	f80ff0ef          	jal	ra,1d6b8 <_realloc_r>
   1df3c:	00050c13          	mv	s8,a0
   1df40:	f20518e3          	bnez	a0,1de70 <__ssprint_r+0xe4>
   1df44:	01893583          	ld	a1,24(s2)
   1df48:	000a8513          	mv	a0,s5
   1df4c:	965f50ef          	jal	ra,138b0 <_free_r>
   1df50:	00c00793          	li	a5,12
   1df54:	00faa023          	sw	a5,0(s5)
   1df58:	01095783          	lhu	a5,16(s2)
   1df5c:	fff00513          	li	a0,-1
   1df60:	0407e793          	ori	a5,a5,64
   1df64:	00f91823          	sh	a5,16(s2)
   1df68:	000a3823          	sd	zero,16(s4)
   1df6c:	000a2423          	sw	zero,8(s4)
   1df70:	f71ff06f          	j	1dee0 <__ssprint_r+0x154>

000000000001df74 <_svfiprintf_r>:
   1df74:	0105d783          	lhu	a5,16(a1)
   1df78:	e3010113          	addi	sp,sp,-464
   1df7c:	1b213823          	sd	s2,432(sp)
   1df80:	1b313423          	sd	s3,424(sp)
   1df84:	19713423          	sd	s7,392(sp)
   1df88:	1c113423          	sd	ra,456(sp)
   1df8c:	1c813023          	sd	s0,448(sp)
   1df90:	1a913c23          	sd	s1,440(sp)
   1df94:	1b413023          	sd	s4,416(sp)
   1df98:	19513c23          	sd	s5,408(sp)
   1df9c:	19613823          	sd	s6,400(sp)
   1dfa0:	19813023          	sd	s8,384(sp)
   1dfa4:	17913c23          	sd	s9,376(sp)
   1dfa8:	17a13823          	sd	s10,368(sp)
   1dfac:	17b13423          	sd	s11,360(sp)
   1dfb0:	0807f793          	andi	a5,a5,128
   1dfb4:	00d13823          	sd	a3,16(sp)
   1dfb8:	00058913          	mv	s2,a1
   1dfbc:	00050993          	mv	s3,a0
   1dfc0:	00060b93          	mv	s7,a2
   1dfc4:	00078663          	beqz	a5,1dfd0 <_svfiprintf_r+0x5c>
   1dfc8:	0185b783          	ld	a5,24(a1)
   1dfcc:	4e078ce3          	beqz	a5,1ecc4 <_svfiprintf_r+0xd50>
   1dfd0:	ffff87b7          	lui	a5,0xffff8
   1dfd4:	0e010493          	addi	s1,sp,224
   1dfd8:	8307c793          	xori	a5,a5,-2000
   1dfdc:	000b8c13          	mv	s8,s7
   1dfe0:	06913023          	sd	s1,96(sp)
   1dfe4:	06013823          	sd	zero,112(sp)
   1dfe8:	06012423          	sw	zero,104(sp)
   1dfec:	00013c23          	sd	zero,24(sp)
   1dff0:	02013423          	sd	zero,40(sp)
   1dff4:	02013c23          	sd	zero,56(sp)
   1dff8:	02013823          	sd	zero,48(sp)
   1dffc:	00013023          	sd	zero,0(sp)
   1e000:	00004a17          	auipc	s4,0x4
   1e004:	c48a0a13          	addi	s4,s4,-952 # 21c48 <_ctype_+0x108>
   1e008:	04f13023          	sd	a5,64(sp)
   1e00c:	00048b93          	mv	s7,s1
   1e010:	000c4783          	lbu	a5,0(s8)
   1e014:	0e078e63          	beqz	a5,1e110 <_svfiprintf_r+0x19c>
   1e018:	02500713          	li	a4,37
   1e01c:	46e780e3          	beq	a5,a4,1ec7c <_svfiprintf_r+0xd08>
   1e020:	000c0413          	mv	s0,s8
   1e024:	00c0006f          	j	1e030 <_svfiprintf_r+0xbc>
   1e028:	0ce78063          	beq	a5,a4,1e0e8 <_svfiprintf_r+0x174>
   1e02c:	000c8413          	mv	s0,s9
   1e030:	00144783          	lbu	a5,1(s0)
   1e034:	00140c93          	addi	s9,s0,1
   1e038:	fe0798e3          	bnez	a5,1e028 <_svfiprintf_r+0xb4>
   1e03c:	418c8d3b          	subw	s10,s9,s8
   1e040:	0c0d0863          	beqz	s10,1e110 <_svfiprintf_r+0x19c>
   1e044:	07013703          	ld	a4,112(sp)
   1e048:	06812783          	lw	a5,104(sp)
   1e04c:	018bb023          	sd	s8,0(s7)
   1e050:	01a70733          	add	a4,a4,s10
   1e054:	0017879b          	addiw	a5,a5,1
   1e058:	01abb423          	sd	s10,8(s7)
   1e05c:	06e13823          	sd	a4,112(sp)
   1e060:	06f12423          	sw	a5,104(sp)
   1e064:	0007871b          	sext.w	a4,a5
   1e068:	00700793          	li	a5,7
   1e06c:	010b8b93          	addi	s7,s7,16
   1e070:	08e7c263          	blt	a5,a4,1e0f4 <_svfiprintf_r+0x180>
   1e074:	00013703          	ld	a4,0(sp)
   1e078:	00144783          	lbu	a5,1(s0)
   1e07c:	00ed073b          	addw	a4,s10,a4
   1e080:	00e13023          	sd	a4,0(sp)
   1e084:	08078663          	beqz	a5,1e110 <_svfiprintf_r+0x19c>
   1e088:	001c8c13          	addi	s8,s9,1
   1e08c:	001cc703          	lbu	a4,1(s9)
   1e090:	04010ba3          	sb	zero,87(sp)
   1e094:	fff00a93          	li	s5,-1
   1e098:	00000413          	li	s0,0
   1e09c:	00000b13          	li	s6,0
   1e0a0:	00900c93          	li	s9,9
   1e0a4:	02a00d13          	li	s10,42
   1e0a8:	001c0c13          	addi	s8,s8,1
   1e0ac:	0007071b          	sext.w	a4,a4
   1e0b0:	05a00613          	li	a2,90
   1e0b4:	fe07079b          	addiw	a5,a4,-32
   1e0b8:	0007869b          	sext.w	a3,a5
   1e0bc:	1ad66063          	bltu	a2,a3,1e25c <_svfiprintf_r+0x2e8>
   1e0c0:	02079793          	slli	a5,a5,0x20
   1e0c4:	01e7d793          	srli	a5,a5,0x1e
   1e0c8:	014787b3          	add	a5,a5,s4
   1e0cc:	0007a783          	lw	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd4df8>
   1e0d0:	014787b3          	add	a5,a5,s4
   1e0d4:	00078067          	jr	a5
   1e0d8:	010b6b13          	ori	s6,s6,16
   1e0dc:	000b0b1b          	sext.w	s6,s6
   1e0e0:	000c4703          	lbu	a4,0(s8)
   1e0e4:	fc5ff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e0e8:	418c8d3b          	subw	s10,s9,s8
   1e0ec:	f80d0ee3          	beqz	s10,1e088 <_svfiprintf_r+0x114>
   1e0f0:	f55ff06f          	j	1e044 <_svfiprintf_r+0xd0>
   1e0f4:	06010613          	addi	a2,sp,96
   1e0f8:	00090593          	mv	a1,s2
   1e0fc:	00098513          	mv	a0,s3
   1e100:	c8dff0ef          	jal	ra,1dd8c <__ssprint_r>
   1e104:	02051263          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1e108:	00048b93          	mv	s7,s1
   1e10c:	f69ff06f          	j	1e074 <_svfiprintf_r+0x100>
   1e110:	07013783          	ld	a5,112(sp)
   1e114:	00078a63          	beqz	a5,1e128 <_svfiprintf_r+0x1b4>
   1e118:	06010613          	addi	a2,sp,96
   1e11c:	00090593          	mv	a1,s2
   1e120:	00098513          	mv	a0,s3
   1e124:	c69ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1e128:	01095783          	lhu	a5,16(s2)
   1e12c:	0407f793          	andi	a5,a5,64
   1e130:	620796e3          	bnez	a5,1ef5c <_svfiprintf_r+0xfe8>
   1e134:	1c813083          	ld	ra,456(sp)
   1e138:	1c013403          	ld	s0,448(sp)
   1e13c:	00013503          	ld	a0,0(sp)
   1e140:	1b813483          	ld	s1,440(sp)
   1e144:	1b013903          	ld	s2,432(sp)
   1e148:	1a813983          	ld	s3,424(sp)
   1e14c:	1a013a03          	ld	s4,416(sp)
   1e150:	19813a83          	ld	s5,408(sp)
   1e154:	19013b03          	ld	s6,400(sp)
   1e158:	18813b83          	ld	s7,392(sp)
   1e15c:	18013c03          	ld	s8,384(sp)
   1e160:	17813c83          	ld	s9,376(sp)
   1e164:	17013d03          	ld	s10,368(sp)
   1e168:	16813d83          	ld	s11,360(sp)
   1e16c:	1d010113          	addi	sp,sp,464
   1e170:	00008067          	ret
   1e174:	01013683          	ld	a3,16(sp)
   1e178:	00003797          	auipc	a5,0x3
   1e17c:	2a078793          	addi	a5,a5,672 # 21418 <zeroes.4539+0x78>
   1e180:	00f13c23          	sd	a5,24(sp)
   1e184:	020b7793          	andi	a5,s6,32
   1e188:	00868613          	addi	a2,a3,8
   1e18c:	4e078463          	beqz	a5,1e674 <_svfiprintf_r+0x700>
   1e190:	0006bd83          	ld	s11,0(a3)
   1e194:	001b7793          	andi	a5,s6,1
   1e198:	00078e63          	beqz	a5,1e1b4 <_svfiprintf_r+0x240>
   1e19c:	000d8c63          	beqz	s11,1e1b4 <_svfiprintf_r+0x240>
   1e1a0:	002b6893          	ori	a7,s6,2
   1e1a4:	03000793          	li	a5,48
   1e1a8:	04f10c23          	sb	a5,88(sp)
   1e1ac:	04e10ca3          	sb	a4,89(sp)
   1e1b0:	00088b1b          	sext.w	s6,a7
   1e1b4:	bffb7893          	andi	a7,s6,-1025
   1e1b8:	00088c9b          	sext.w	s9,a7
   1e1bc:	00c13823          	sd	a2,16(sp)
   1e1c0:	00200793          	li	a5,2
   1e1c4:	04010ba3          	sb	zero,87(sp)
   1e1c8:	fff00713          	li	a4,-1
   1e1cc:	52ea8a63          	beq	s5,a4,1e700 <_svfiprintf_r+0x78c>
   1e1d0:	f7fcf893          	andi	a7,s9,-129
   1e1d4:	00088b1b          	sext.w	s6,a7
   1e1d8:	020d96e3          	bnez	s11,1ea04 <_svfiprintf_r+0xa90>
   1e1dc:	600a9663          	bnez	s5,1e7e8 <_svfiprintf_r+0x874>
   1e1e0:	260790e3          	bnez	a5,1ec40 <_svfiprintf_r+0xccc>
   1e1e4:	001cf793          	andi	a5,s9,1
   1e1e8:	00f13423          	sd	a5,8(sp)
   1e1ec:	0dc10d13          	addi	s10,sp,220
   1e1f0:	00078863          	beqz	a5,1e200 <_svfiprintf_r+0x28c>
   1e1f4:	03000793          	li	a5,48
   1e1f8:	0cf10da3          	sb	a5,219(sp)
   1e1fc:	0db10d13          	addi	s10,sp,219
   1e200:	00813703          	ld	a4,8(sp)
   1e204:	000a8793          	mv	a5,s5
   1e208:	00ead463          	bge	s5,a4,1e210 <_svfiprintf_r+0x29c>
   1e20c:	00070793          	mv	a5,a4
   1e210:	05714703          	lbu	a4,87(sp)
   1e214:	00078c9b          	sext.w	s9,a5
   1e218:	06070263          	beqz	a4,1e27c <_svfiprintf_r+0x308>
   1e21c:	00178c9b          	addiw	s9,a5,1
   1e220:	05c0006f          	j	1e27c <_svfiprintf_r+0x308>
   1e224:	00000413          	li	s0,0
   1e228:	001c0c13          	addi	s8,s8,1
   1e22c:	fffc4683          	lbu	a3,-1(s8)
   1e230:	0024179b          	slliw	a5,s0,0x2
   1e234:	0087843b          	addw	s0,a5,s0
   1e238:	fd07071b          	addiw	a4,a4,-48
   1e23c:	0014141b          	slliw	s0,s0,0x1
   1e240:	fd06879b          	addiw	a5,a3,-48
   1e244:	0087043b          	addw	s0,a4,s0
   1e248:	0006871b          	sext.w	a4,a3
   1e24c:	fcfcfee3          	bgeu	s9,a5,1e228 <_svfiprintf_r+0x2b4>
   1e250:	fe07079b          	addiw	a5,a4,-32
   1e254:	0007869b          	sext.w	a3,a5
   1e258:	e6d674e3          	bgeu	a2,a3,1e0c0 <_svfiprintf_r+0x14c>
   1e25c:	ea070ae3          	beqz	a4,1e110 <_svfiprintf_r+0x19c>
   1e260:	00100793          	li	a5,1
   1e264:	06e10c23          	sb	a4,120(sp)
   1e268:	04010ba3          	sb	zero,87(sp)
   1e26c:	00100c93          	li	s9,1
   1e270:	00f13423          	sd	a5,8(sp)
   1e274:	07810d13          	addi	s10,sp,120
   1e278:	00000a93          	li	s5,0
   1e27c:	002b7e93          	andi	t4,s6,2
   1e280:	000e8e9b          	sext.w	t4,t4
   1e284:	000e8463          	beqz	t4,1e28c <_svfiprintf_r+0x318>
   1e288:	002c8c9b          	addiw	s9,s9,2
   1e28c:	084b7f13          	andi	t5,s6,132
   1e290:	07013783          	ld	a5,112(sp)
   1e294:	06812603          	lw	a2,104(sp)
   1e298:	000f1663          	bnez	t5,1e2a4 <_svfiprintf_r+0x330>
   1e29c:	41940dbb          	subw	s11,s0,s9
   1e2a0:	77b04663          	bgtz	s11,1ea0c <_svfiprintf_r+0xa98>
   1e2a4:	05714e03          	lbu	t3,87(sp)
   1e2a8:	0016059b          	addiw	a1,a2,1
   1e2ac:	010b8713          	addi	a4,s7,16
   1e2b0:	040e0063          	beqz	t3,1e2f0 <_svfiprintf_r+0x37c>
   1e2b4:	05710e13          	addi	t3,sp,87
   1e2b8:	00178793          	addi	a5,a5,1
   1e2bc:	01cbb023          	sd	t3,0(s7)
   1e2c0:	00100e13          	li	t3,1
   1e2c4:	01cbb423          	sd	t3,8(s7)
   1e2c8:	06f13823          	sd	a5,112(sp)
   1e2cc:	06b12423          	sw	a1,104(sp)
   1e2d0:	00700513          	li	a0,7
   1e2d4:	04b542e3          	blt	a0,a1,1eb18 <_svfiprintf_r+0xba4>
   1e2d8:	00260e1b          	addiw	t3,a2,2
   1e2dc:	020b8513          	addi	a0,s7,32
   1e2e0:	00058613          	mv	a2,a1
   1e2e4:	00070b93          	mv	s7,a4
   1e2e8:	000e0593          	mv	a1,t3
   1e2ec:	00050713          	mv	a4,a0
   1e2f0:	020e8c63          	beqz	t4,1e328 <_svfiprintf_r+0x3b4>
   1e2f4:	05810613          	addi	a2,sp,88
   1e2f8:	00278793          	addi	a5,a5,2
   1e2fc:	00cbb023          	sd	a2,0(s7)
   1e300:	00200613          	li	a2,2
   1e304:	00cbb423          	sd	a2,8(s7)
   1e308:	06f13823          	sd	a5,112(sp)
   1e30c:	06b12423          	sw	a1,104(sp)
   1e310:	00700613          	li	a2,7
   1e314:	04b640e3          	blt	a2,a1,1eb54 <_svfiprintf_r+0xbe0>
   1e318:	00058613          	mv	a2,a1
   1e31c:	00070b93          	mv	s7,a4
   1e320:	0015859b          	addiw	a1,a1,1
   1e324:	01070713          	addi	a4,a4,16
   1e328:	08000513          	li	a0,128
   1e32c:	50af0463          	beq	t5,a0,1e834 <_svfiprintf_r+0x8c0>
   1e330:	00813683          	ld	a3,8(sp)
   1e334:	40da8abb          	subw	s5,s5,a3
   1e338:	5d504263          	bgtz	s5,1e8fc <_svfiprintf_r+0x988>
   1e33c:	00813683          	ld	a3,8(sp)
   1e340:	01abb023          	sd	s10,0(s7)
   1e344:	06b12423          	sw	a1,104(sp)
   1e348:	00f687b3          	add	a5,a3,a5
   1e34c:	00dbb423          	sd	a3,8(s7)
   1e350:	06f13823          	sd	a5,112(sp)
   1e354:	00700613          	li	a2,7
   1e358:	66b64a63          	blt	a2,a1,1e9cc <_svfiprintf_r+0xa58>
   1e35c:	004b7893          	andi	a7,s6,4
   1e360:	00088663          	beqz	a7,1e36c <_svfiprintf_r+0x3f8>
   1e364:	41940bbb          	subw	s7,s0,s9
   1e368:	037040e3          	bgtz	s7,1eb88 <_svfiprintf_r+0xc14>
   1e36c:	00040713          	mv	a4,s0
   1e370:	01945463          	bge	s0,s9,1e378 <_svfiprintf_r+0x404>
   1e374:	000c8713          	mv	a4,s9
   1e378:	00013683          	ld	a3,0(sp)
   1e37c:	00d7073b          	addw	a4,a4,a3
   1e380:	00e13023          	sd	a4,0(sp)
   1e384:	66079463          	bnez	a5,1e9ec <_svfiprintf_r+0xa78>
   1e388:	06012423          	sw	zero,104(sp)
   1e38c:	00048b93          	mv	s7,s1
   1e390:	c81ff06f          	j	1e010 <_svfiprintf_r+0x9c>
   1e394:	01013703          	ld	a4,16(sp)
   1e398:	04010ba3          	sb	zero,87(sp)
   1e39c:	00100c93          	li	s9,1
   1e3a0:	00072783          	lw	a5,0(a4)
   1e3a4:	00870713          	addi	a4,a4,8
   1e3a8:	00e13823          	sd	a4,16(sp)
   1e3ac:	06f10c23          	sb	a5,120(sp)
   1e3b0:	00100793          	li	a5,1
   1e3b4:	00f13423          	sd	a5,8(sp)
   1e3b8:	07810d13          	addi	s10,sp,120
   1e3bc:	ebdff06f          	j	1e278 <_svfiprintf_r+0x304>
   1e3c0:	001b6b13          	ori	s6,s6,1
   1e3c4:	000b0b1b          	sext.w	s6,s6
   1e3c8:	000c4703          	lbu	a4,0(s8)
   1e3cc:	cddff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e3d0:	000c4703          	lbu	a4,0(s8)
   1e3d4:	004b6b13          	ori	s6,s6,4
   1e3d8:	000b0b1b          	sext.w	s6,s6
   1e3dc:	ccdff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e3e0:	02b00793          	li	a5,43
   1e3e4:	04f10ba3          	sb	a5,87(sp)
   1e3e8:	000c4703          	lbu	a4,0(s8)
   1e3ec:	cbdff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e3f0:	01013783          	ld	a5,16(sp)
   1e3f4:	000c4703          	lbu	a4,0(s8)
   1e3f8:	0007a403          	lw	s0,0(a5)
   1e3fc:	00878793          	addi	a5,a5,8
   1e400:	00f13823          	sd	a5,16(sp)
   1e404:	ca0452e3          	bgez	s0,1e0a8 <_svfiprintf_r+0x134>
   1e408:	4080043b          	negw	s0,s0
   1e40c:	fc9ff06f          	j	1e3d4 <_svfiprintf_r+0x460>
   1e410:	00098513          	mv	a0,s3
   1e414:	d5cf80ef          	jal	ra,16970 <_localeconv_r>
   1e418:	00853783          	ld	a5,8(a0)
   1e41c:	00078513          	mv	a0,a5
   1e420:	02f13823          	sd	a5,48(sp)
   1e424:	885fa0ef          	jal	ra,18ca8 <strlen>
   1e428:	02a13c23          	sd	a0,56(sp)
   1e42c:	00050d93          	mv	s11,a0
   1e430:	00098513          	mv	a0,s3
   1e434:	d3cf80ef          	jal	ra,16970 <_localeconv_r>
   1e438:	01053783          	ld	a5,16(a0)
   1e43c:	000c4703          	lbu	a4,0(s8)
   1e440:	02f13423          	sd	a5,40(sp)
   1e444:	c60d82e3          	beqz	s11,1e0a8 <_svfiprintf_r+0x134>
   1e448:	c60780e3          	beqz	a5,1e0a8 <_svfiprintf_r+0x134>
   1e44c:	0007c783          	lbu	a5,0(a5)
   1e450:	c4078ce3          	beqz	a5,1e0a8 <_svfiprintf_r+0x134>
   1e454:	400b6b13          	ori	s6,s6,1024
   1e458:	000b0b1b          	sext.w	s6,s6
   1e45c:	c4dff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e460:	080b6b13          	ori	s6,s6,128
   1e464:	000b0b1b          	sext.w	s6,s6
   1e468:	000c4703          	lbu	a4,0(s8)
   1e46c:	c3dff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e470:	000c4703          	lbu	a4,0(s8)
   1e474:	001c0793          	addi	a5,s8,1
   1e478:	2fa708e3          	beq	a4,s10,1ef68 <_svfiprintf_r+0xff4>
   1e47c:	fd07069b          	addiw	a3,a4,-48
   1e480:	00078c13          	mv	s8,a5
   1e484:	00000a93          	li	s5,0
   1e488:	c2dce6e3          	bltu	s9,a3,1e0b4 <_svfiprintf_r+0x140>
   1e48c:	001c0c13          	addi	s8,s8,1
   1e490:	002a979b          	slliw	a5,s5,0x2
   1e494:	fffc4703          	lbu	a4,-1(s8)
   1e498:	01578abb          	addw	s5,a5,s5
   1e49c:	001a9a9b          	slliw	s5,s5,0x1
   1e4a0:	00da8abb          	addw	s5,s5,a3
   1e4a4:	fd07069b          	addiw	a3,a4,-48
   1e4a8:	fedcf2e3          	bgeu	s9,a3,1e48c <_svfiprintf_r+0x518>
   1e4ac:	c09ff06f          	j	1e0b4 <_svfiprintf_r+0x140>
   1e4b0:	01013783          	ld	a5,16(sp)
   1e4b4:	010b6e93          	ori	t4,s6,16
   1e4b8:	000e8c9b          	sext.w	s9,t4
   1e4bc:	00878713          	addi	a4,a5,8
   1e4c0:	01013783          	ld	a5,16(sp)
   1e4c4:	0007bd83          	ld	s11,0(a5)
   1e4c8:	00100793          	li	a5,1
   1e4cc:	00e13823          	sd	a4,16(sp)
   1e4d0:	cf5ff06f          	j	1e1c4 <_svfiprintf_r+0x250>
   1e4d4:	01013783          	ld	a5,16(sp)
   1e4d8:	04010ba3          	sb	zero,87(sp)
   1e4dc:	0007bd03          	ld	s10,0(a5)
   1e4e0:	00878d93          	addi	s11,a5,8
   1e4e4:	140d04e3          	beqz	s10,1ee2c <_svfiprintf_r+0xeb8>
   1e4e8:	fff00793          	li	a5,-1
   1e4ec:	7afa8e63          	beq	s5,a5,1eca8 <_svfiprintf_r+0xd34>
   1e4f0:	000a8613          	mv	a2,s5
   1e4f4:	00000593          	li	a1,0
   1e4f8:	000d0513          	mv	a0,s10
   1e4fc:	fd9f80ef          	jal	ra,174d4 <memchr>
   1e500:	220508e3          	beqz	a0,1ef30 <_svfiprintf_r+0xfbc>
   1e504:	41a507bb          	subw	a5,a0,s10
   1e508:	00f13423          	sd	a5,8(sp)
   1e50c:	01b13823          	sd	s11,16(sp)
   1e510:	00000a93          	li	s5,0
   1e514:	cedff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1e518:	010b6793          	ori	a5,s6,16
   1e51c:	0007889b          	sext.w	a7,a5
   1e520:	01013783          	ld	a5,16(sp)
   1e524:	00878793          	addi	a5,a5,8
   1e528:	01013703          	ld	a4,16(sp)
   1e52c:	00073d83          	ld	s11,0(a4)
   1e530:	00f13823          	sd	a5,16(sp)
   1e534:	bff8f893          	andi	a7,a7,-1025
   1e538:	00088c9b          	sext.w	s9,a7
   1e53c:	00000793          	li	a5,0
   1e540:	c85ff06f          	j	1e1c4 <_svfiprintf_r+0x250>
   1e544:	01013783          	ld	a5,16(sp)
   1e548:	010b6e93          	ori	t4,s6,16
   1e54c:	000e8c9b          	sext.w	s9,t4
   1e550:	00878713          	addi	a4,a5,8
   1e554:	01013783          	ld	a5,16(sp)
   1e558:	0007b783          	ld	a5,0(a5)
   1e55c:	00e13823          	sd	a4,16(sp)
   1e560:	00078d93          	mv	s11,a5
   1e564:	1807c263          	bltz	a5,1e6e8 <_svfiprintf_r+0x774>
   1e568:	fff00793          	li	a5,-1
   1e56c:	00fa8a63          	beq	s5,a5,1e580 <_svfiprintf_r+0x60c>
   1e570:	f7fcf893          	andi	a7,s9,-129
   1e574:	00088b1b          	sext.w	s6,a7
   1e578:	6c0d8263          	beqz	s11,1ec3c <_svfiprintf_r+0xcc8>
   1e57c:	000b0c93          	mv	s9,s6
   1e580:	00900793          	li	a5,9
   1e584:	77b7e063          	bltu	a5,s11,1ece4 <_svfiprintf_r+0xd70>
   1e588:	030d8e1b          	addiw	t3,s11,48
   1e58c:	00100793          	li	a5,1
   1e590:	0dc10da3          	sb	t3,219(sp)
   1e594:	000c8b13          	mv	s6,s9
   1e598:	00f13423          	sd	a5,8(sp)
   1e59c:	0db10d13          	addi	s10,sp,219
   1e5a0:	c61ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1e5a4:	020b6b13          	ori	s6,s6,32
   1e5a8:	000b0b1b          	sext.w	s6,s6
   1e5ac:	000c4703          	lbu	a4,0(s8)
   1e5b0:	af9ff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e5b4:	01013783          	ld	a5,16(sp)
   1e5b8:	04013703          	ld	a4,64(sp)
   1e5bc:	002b6893          	ori	a7,s6,2
   1e5c0:	0007bd83          	ld	s11,0(a5)
   1e5c4:	00878793          	addi	a5,a5,8
   1e5c8:	00f13823          	sd	a5,16(sp)
   1e5cc:	00003797          	auipc	a5,0x3
   1e5d0:	e3478793          	addi	a5,a5,-460 # 21400 <zeroes.4539+0x60>
   1e5d4:	00f13c23          	sd	a5,24(sp)
   1e5d8:	00088c9b          	sext.w	s9,a7
   1e5dc:	04e11c23          	sh	a4,88(sp)
   1e5e0:	00200793          	li	a5,2
   1e5e4:	be1ff06f          	j	1e1c4 <_svfiprintf_r+0x250>
   1e5e8:	01013703          	ld	a4,16(sp)
   1e5ec:	020b7793          	andi	a5,s6,32
   1e5f0:	00870713          	addi	a4,a4,8
   1e5f4:	6a079063          	bnez	a5,1ec94 <_svfiprintf_r+0xd20>
   1e5f8:	010b7793          	andi	a5,s6,16
   1e5fc:	68079c63          	bnez	a5,1ec94 <_svfiprintf_r+0xd20>
   1e600:	01013683          	ld	a3,16(sp)
   1e604:	040b7793          	andi	a5,s6,64
   1e608:	0006ae03          	lw	t3,0(a3)
   1e60c:	040788e3          	beqz	a5,1ee5c <_svfiprintf_r+0xee8>
   1e610:	030e1d93          	slli	s11,t3,0x30
   1e614:	030ddd93          	srli	s11,s11,0x30
   1e618:	00e13823          	sd	a4,16(sp)
   1e61c:	000b0c93          	mv	s9,s6
   1e620:	00100793          	li	a5,1
   1e624:	ba1ff06f          	j	1e1c4 <_svfiprintf_r+0x250>
   1e628:	05714783          	lbu	a5,87(sp)
   1e62c:	000c4703          	lbu	a4,0(s8)
   1e630:	a6079ce3          	bnez	a5,1e0a8 <_svfiprintf_r+0x134>
   1e634:	02000793          	li	a5,32
   1e638:	04f10ba3          	sb	a5,87(sp)
   1e63c:	a6dff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e640:	000c4703          	lbu	a4,0(s8)
   1e644:	06c00793          	li	a5,108
   1e648:	7af70263          	beq	a4,a5,1edec <_svfiprintf_r+0xe78>
   1e64c:	010b6b13          	ori	s6,s6,16
   1e650:	000b0b1b          	sext.w	s6,s6
   1e654:	a55ff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e658:	01013683          	ld	a3,16(sp)
   1e65c:	00003797          	auipc	a5,0x3
   1e660:	da478793          	addi	a5,a5,-604 # 21400 <zeroes.4539+0x60>
   1e664:	00f13c23          	sd	a5,24(sp)
   1e668:	020b7793          	andi	a5,s6,32
   1e66c:	00868613          	addi	a2,a3,8
   1e670:	b20790e3          	bnez	a5,1e190 <_svfiprintf_r+0x21c>
   1e674:	010b7793          	andi	a5,s6,16
   1e678:	62079263          	bnez	a5,1ec9c <_svfiprintf_r+0xd28>
   1e67c:	01013683          	ld	a3,16(sp)
   1e680:	040b7793          	andi	a5,s6,64
   1e684:	0006ae03          	lw	t3,0(a3)
   1e688:	7e078863          	beqz	a5,1ee78 <_svfiprintf_r+0xf04>
   1e68c:	030e1d93          	slli	s11,t3,0x30
   1e690:	030ddd93          	srli	s11,s11,0x30
   1e694:	b01ff06f          	j	1e194 <_svfiprintf_r+0x220>
   1e698:	000c4703          	lbu	a4,0(s8)
   1e69c:	06800793          	li	a5,104
   1e6a0:	72f70c63          	beq	a4,a5,1edd8 <_svfiprintf_r+0xe64>
   1e6a4:	040b6b13          	ori	s6,s6,64
   1e6a8:	000b0b1b          	sext.w	s6,s6
   1e6ac:	9fdff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1e6b0:	01013703          	ld	a4,16(sp)
   1e6b4:	020b7793          	andi	a5,s6,32
   1e6b8:	00870713          	addi	a4,a4,8
   1e6bc:	5c079863          	bnez	a5,1ec8c <_svfiprintf_r+0xd18>
   1e6c0:	010b7793          	andi	a5,s6,16
   1e6c4:	5c079463          	bnez	a5,1ec8c <_svfiprintf_r+0xd18>
   1e6c8:	040b7793          	andi	a5,s6,64
   1e6cc:	7c078e63          	beqz	a5,1eea8 <_svfiprintf_r+0xf34>
   1e6d0:	01013783          	ld	a5,16(sp)
   1e6d4:	00e13823          	sd	a4,16(sp)
   1e6d8:	000b0c93          	mv	s9,s6
   1e6dc:	00079d83          	lh	s11,0(a5)
   1e6e0:	000d8793          	mv	a5,s11
   1e6e4:	e807d2e3          	bgez	a5,1e568 <_svfiprintf_r+0x5f4>
   1e6e8:	02d00793          	li	a5,45
   1e6ec:	04f10ba3          	sb	a5,87(sp)
   1e6f0:	fff00713          	li	a4,-1
   1e6f4:	41b00db3          	neg	s11,s11
   1e6f8:	00100793          	li	a5,1
   1e6fc:	acea9ae3          	bne	s5,a4,1e1d0 <_svfiprintf_r+0x25c>
   1e700:	00100713          	li	a4,1
   1e704:	e6e78ee3          	beq	a5,a4,1e580 <_svfiprintf_r+0x60c>
   1e708:	00200713          	li	a4,2
   1e70c:	0ee78863          	beq	a5,a4,1e7fc <_svfiprintf_r+0x888>
   1e710:	0dc10713          	addi	a4,sp,220
   1e714:	0080006f          	j	1e71c <_svfiprintf_r+0x7a8>
   1e718:	000d0713          	mv	a4,s10
   1e71c:	007df793          	andi	a5,s11,7
   1e720:	03078793          	addi	a5,a5,48
   1e724:	fef70fa3          	sb	a5,-1(a4)
   1e728:	003ddd93          	srli	s11,s11,0x3
   1e72c:	fff70d13          	addi	s10,a4,-1
   1e730:	fe0d94e3          	bnez	s11,1e718 <_svfiprintf_r+0x7a4>
   1e734:	001cf613          	andi	a2,s9,1
   1e738:	0e060463          	beqz	a2,1e820 <_svfiprintf_r+0x8ac>
   1e73c:	03000613          	li	a2,48
   1e740:	0ec78063          	beq	a5,a2,1e820 <_svfiprintf_r+0x8ac>
   1e744:	ffe70713          	addi	a4,a4,-2
   1e748:	0dc10793          	addi	a5,sp,220
   1e74c:	40e787bb          	subw	a5,a5,a4
   1e750:	fecd0fa3          	sb	a2,-1(s10)
   1e754:	00f13423          	sd	a5,8(sp)
   1e758:	000c8b13          	mv	s6,s9
   1e75c:	00070d13          	mv	s10,a4
   1e760:	aa1ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1e764:	01013783          	ld	a5,16(sp)
   1e768:	020b7713          	andi	a4,s6,32
   1e76c:	00878793          	addi	a5,a5,8
   1e770:	50071a63          	bnez	a4,1ec84 <_svfiprintf_r+0xd10>
   1e774:	010b7713          	andi	a4,s6,16
   1e778:	50071663          	bnez	a4,1ec84 <_svfiprintf_r+0xd10>
   1e77c:	01013683          	ld	a3,16(sp)
   1e780:	040b7713          	andi	a4,s6,64
   1e784:	0006ae03          	lw	t3,0(a3)
   1e788:	70070463          	beqz	a4,1ee90 <_svfiprintf_r+0xf1c>
   1e78c:	030e1d93          	slli	s11,t3,0x30
   1e790:	030ddd93          	srli	s11,s11,0x30
   1e794:	000b0893          	mv	a7,s6
   1e798:	00f13823          	sd	a5,16(sp)
   1e79c:	d99ff06f          	j	1e534 <_svfiprintf_r+0x5c0>
   1e7a0:	01013683          	ld	a3,16(sp)
   1e7a4:	020b7793          	andi	a5,s6,32
   1e7a8:	0006b703          	ld	a4,0(a3)
   1e7ac:	00868693          	addi	a3,a3,8
   1e7b0:	00d13823          	sd	a3,16(sp)
   1e7b4:	02079463          	bnez	a5,1e7dc <_svfiprintf_r+0x868>
   1e7b8:	010b7793          	andi	a5,s6,16
   1e7bc:	02079063          	bnez	a5,1e7dc <_svfiprintf_r+0x868>
   1e7c0:	040b7793          	andi	a5,s6,64
   1e7c4:	74079c63          	bnez	a5,1ef1c <_svfiprintf_r+0xfa8>
   1e7c8:	200b7893          	andi	a7,s6,512
   1e7cc:	00013783          	ld	a5,0(sp)
   1e7d0:	78088263          	beqz	a7,1ef54 <_svfiprintf_r+0xfe0>
   1e7d4:	00f70023          	sb	a5,0(a4)
   1e7d8:	839ff06f          	j	1e010 <_svfiprintf_r+0x9c>
   1e7dc:	00013783          	ld	a5,0(sp)
   1e7e0:	00f73023          	sd	a5,0(a4)
   1e7e4:	82dff06f          	j	1e010 <_svfiprintf_r+0x9c>
   1e7e8:	00100713          	li	a4,1
   1e7ec:	72e78e63          	beq	a5,a4,1ef28 <_svfiprintf_r+0xfb4>
   1e7f0:	00200713          	li	a4,2
   1e7f4:	000b0c93          	mv	s9,s6
   1e7f8:	f0e79ce3          	bne	a5,a4,1e710 <_svfiprintf_r+0x79c>
   1e7fc:	01813703          	ld	a4,24(sp)
   1e800:	0dc10d13          	addi	s10,sp,220
   1e804:	00fdf793          	andi	a5,s11,15
   1e808:	00f707b3          	add	a5,a4,a5
   1e80c:	0007c783          	lbu	a5,0(a5)
   1e810:	fffd0d13          	addi	s10,s10,-1
   1e814:	004ddd93          	srli	s11,s11,0x4
   1e818:	00fd0023          	sb	a5,0(s10)
   1e81c:	fe0d94e3          	bnez	s11,1e804 <_svfiprintf_r+0x890>
   1e820:	0dc10793          	addi	a5,sp,220
   1e824:	41a787bb          	subw	a5,a5,s10
   1e828:	00f13423          	sd	a5,8(sp)
   1e82c:	000c8b13          	mv	s6,s9
   1e830:	9d1ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1e834:	41940dbb          	subw	s11,s0,s9
   1e838:	afb05ce3          	blez	s11,1e330 <_svfiprintf_r+0x3bc>
   1e83c:	01000513          	li	a0,16
   1e840:	71b55063          	bge	a0,s11,1ef40 <_svfiprintf_r+0xfcc>
   1e844:	00003e17          	auipc	t3,0x3
   1e848:	584e0e13          	addi	t3,t3,1412 # 21dc8 <zeroes.4501>
   1e84c:	02813023          	sd	s0,32(sp)
   1e850:	01000e93          	li	t4,16
   1e854:	00700f13          	li	t5,7
   1e858:	000e0413          	mv	s0,t3
   1e85c:	00c0006f          	j	1e868 <_svfiprintf_r+0x8f4>
   1e860:	ff0d8d9b          	addiw	s11,s11,-16
   1e864:	05beda63          	bge	t4,s11,1e8b8 <_svfiprintf_r+0x944>
   1e868:	0016061b          	addiw	a2,a2,1
   1e86c:	01078793          	addi	a5,a5,16
   1e870:	008bb023          	sd	s0,0(s7)
   1e874:	01dbb423          	sd	t4,8(s7)
   1e878:	06f13823          	sd	a5,112(sp)
   1e87c:	06c12423          	sw	a2,104(sp)
   1e880:	010b8b93          	addi	s7,s7,16
   1e884:	fccf5ee3          	bge	t5,a2,1e860 <_svfiprintf_r+0x8ec>
   1e888:	06010613          	addi	a2,sp,96
   1e88c:	00090593          	mv	a1,s2
   1e890:	00098513          	mv	a0,s3
   1e894:	cf8ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1e898:	880518e3          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1e89c:	01000e93          	li	t4,16
   1e8a0:	ff0d8d9b          	addiw	s11,s11,-16
   1e8a4:	07013783          	ld	a5,112(sp)
   1e8a8:	06812603          	lw	a2,104(sp)
   1e8ac:	00048b93          	mv	s7,s1
   1e8b0:	00700f13          	li	t5,7
   1e8b4:	fbbecae3          	blt	t4,s11,1e868 <_svfiprintf_r+0x8f4>
   1e8b8:	00040e13          	mv	t3,s0
   1e8bc:	02013403          	ld	s0,32(sp)
   1e8c0:	0016061b          	addiw	a2,a2,1
   1e8c4:	010b8513          	addi	a0,s7,16
   1e8c8:	01b787b3          	add	a5,a5,s11
   1e8cc:	01cbb023          	sd	t3,0(s7)
   1e8d0:	01bbb423          	sd	s11,8(s7)
   1e8d4:	06f13823          	sd	a5,112(sp)
   1e8d8:	06c12423          	sw	a2,104(sp)
   1e8dc:	00700713          	li	a4,7
   1e8e0:	52c74063          	blt	a4,a2,1ee00 <_svfiprintf_r+0xe8c>
   1e8e4:	00813683          	ld	a3,8(sp)
   1e8e8:	0016059b          	addiw	a1,a2,1
   1e8ec:	01050713          	addi	a4,a0,16
   1e8f0:	40da8abb          	subw	s5,s5,a3
   1e8f4:	00050b93          	mv	s7,a0
   1e8f8:	a55052e3          	blez	s5,1e33c <_svfiprintf_r+0x3c8>
   1e8fc:	01000513          	li	a0,16
   1e900:	5d555463          	bge	a0,s5,1eec8 <_svfiprintf_r+0xf54>
   1e904:	00003e17          	auipc	t3,0x3
   1e908:	4c4e0e13          	addi	t3,t3,1220 # 21dc8 <zeroes.4501>
   1e90c:	02813023          	sd	s0,32(sp)
   1e910:	01000813          	li	a6,16
   1e914:	00700d93          	li	s11,7
   1e918:	000e0413          	mv	s0,t3
   1e91c:	00c0006f          	j	1e928 <_svfiprintf_r+0x9b4>
   1e920:	ff0a8a9b          	addiw	s5,s5,-16
   1e924:	05585863          	bge	a6,s5,1e974 <_svfiprintf_r+0xa00>
   1e928:	0016061b          	addiw	a2,a2,1
   1e92c:	01078793          	addi	a5,a5,16
   1e930:	008bb023          	sd	s0,0(s7)
   1e934:	010bb423          	sd	a6,8(s7)
   1e938:	06f13823          	sd	a5,112(sp)
   1e93c:	06c12423          	sw	a2,104(sp)
   1e940:	010b8b93          	addi	s7,s7,16
   1e944:	fccddee3          	bge	s11,a2,1e920 <_svfiprintf_r+0x9ac>
   1e948:	06010613          	addi	a2,sp,96
   1e94c:	00090593          	mv	a1,s2
   1e950:	00098513          	mv	a0,s3
   1e954:	c38ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1e958:	fc051863          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1e95c:	01000813          	li	a6,16
   1e960:	ff0a8a9b          	addiw	s5,s5,-16
   1e964:	07013783          	ld	a5,112(sp)
   1e968:	06812603          	lw	a2,104(sp)
   1e96c:	00048b93          	mv	s7,s1
   1e970:	fb584ce3          	blt	a6,s5,1e928 <_svfiprintf_r+0x9b4>
   1e974:	00040e13          	mv	t3,s0
   1e978:	02013403          	ld	s0,32(sp)
   1e97c:	0016059b          	addiw	a1,a2,1
   1e980:	010b8613          	addi	a2,s7,16
   1e984:	015787b3          	add	a5,a5,s5
   1e988:	01cbb023          	sd	t3,0(s7)
   1e98c:	015bb423          	sd	s5,8(s7)
   1e990:	06f13823          	sd	a5,112(sp)
   1e994:	06b12423          	sw	a1,104(sp)
   1e998:	00700713          	li	a4,7
   1e99c:	2ab74a63          	blt	a4,a1,1ec50 <_svfiprintf_r+0xcdc>
   1e9a0:	00813683          	ld	a3,8(sp)
   1e9a4:	00060b93          	mv	s7,a2
   1e9a8:	0015859b          	addiw	a1,a1,1
   1e9ac:	00f687b3          	add	a5,a3,a5
   1e9b0:	01060713          	addi	a4,a2,16
   1e9b4:	01abb023          	sd	s10,0(s7)
   1e9b8:	00dbb423          	sd	a3,8(s7)
   1e9bc:	06f13823          	sd	a5,112(sp)
   1e9c0:	06b12423          	sw	a1,104(sp)
   1e9c4:	00700613          	li	a2,7
   1e9c8:	98b65ae3          	bge	a2,a1,1e35c <_svfiprintf_r+0x3e8>
   1e9cc:	06010613          	addi	a2,sp,96
   1e9d0:	00090593          	mv	a1,s2
   1e9d4:	00098513          	mv	a0,s3
   1e9d8:	bb4ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1e9dc:	f4051663          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1e9e0:	07013783          	ld	a5,112(sp)
   1e9e4:	00048713          	mv	a4,s1
   1e9e8:	975ff06f          	j	1e35c <_svfiprintf_r+0x3e8>
   1e9ec:	06010613          	addi	a2,sp,96
   1e9f0:	00090593          	mv	a1,s2
   1e9f4:	00098513          	mv	a0,s3
   1e9f8:	b94ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1e9fc:	980506e3          	beqz	a0,1e388 <_svfiprintf_r+0x414>
   1ea00:	f28ff06f          	j	1e128 <_svfiprintf_r+0x1b4>
   1ea04:	000b0c93          	mv	s9,s6
   1ea08:	cf9ff06f          	j	1e700 <_svfiprintf_r+0x78c>
   1ea0c:	01000713          	li	a4,16
   1ea10:	00003e17          	auipc	t3,0x3
   1ea14:	3a8e0e13          	addi	t3,t3,936 # 21db8 <blanks.4500>
   1ea18:	0bb75463          	bge	a4,s11,1eac0 <_svfiprintf_r+0xb4c>
   1ea1c:	000b8713          	mv	a4,s7
   1ea20:	01000f93          	li	t6,16
   1ea24:	00040b93          	mv	s7,s0
   1ea28:	00700293          	li	t0,7
   1ea2c:	000d8413          	mv	s0,s11
   1ea30:	03d13023          	sd	t4,32(sp)
   1ea34:	000c0d93          	mv	s11,s8
   1ea38:	05e13423          	sd	t5,72(sp)
   1ea3c:	000a8c13          	mv	s8,s5
   1ea40:	000e0a93          	mv	s5,t3
   1ea44:	00c0006f          	j	1ea50 <_svfiprintf_r+0xadc>
   1ea48:	ff04041b          	addiw	s0,s0,-16
   1ea4c:	048fda63          	bge	t6,s0,1eaa0 <_svfiprintf_r+0xb2c>
   1ea50:	0016061b          	addiw	a2,a2,1
   1ea54:	01078793          	addi	a5,a5,16
   1ea58:	01573023          	sd	s5,0(a4)
   1ea5c:	01f73423          	sd	t6,8(a4)
   1ea60:	06f13823          	sd	a5,112(sp)
   1ea64:	06c12423          	sw	a2,104(sp)
   1ea68:	01070713          	addi	a4,a4,16
   1ea6c:	fcc2dee3          	bge	t0,a2,1ea48 <_svfiprintf_r+0xad4>
   1ea70:	06010613          	addi	a2,sp,96
   1ea74:	00090593          	mv	a1,s2
   1ea78:	00098513          	mv	a0,s3
   1ea7c:	b10ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1ea80:	ea051463          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1ea84:	01000f93          	li	t6,16
   1ea88:	ff04041b          	addiw	s0,s0,-16
   1ea8c:	07013783          	ld	a5,112(sp)
   1ea90:	06812603          	lw	a2,104(sp)
   1ea94:	00048713          	mv	a4,s1
   1ea98:	00700293          	li	t0,7
   1ea9c:	fa8fcae3          	blt	t6,s0,1ea50 <_svfiprintf_r+0xadc>
   1eaa0:	02013e83          	ld	t4,32(sp)
   1eaa4:	04813f03          	ld	t5,72(sp)
   1eaa8:	000a8e13          	mv	t3,s5
   1eaac:	000c0a93          	mv	s5,s8
   1eab0:	000d8c13          	mv	s8,s11
   1eab4:	00040d93          	mv	s11,s0
   1eab8:	000b8413          	mv	s0,s7
   1eabc:	00070b93          	mv	s7,a4
   1eac0:	0016061b          	addiw	a2,a2,1
   1eac4:	01b787b3          	add	a5,a5,s11
   1eac8:	01cbb023          	sd	t3,0(s7)
   1eacc:	01bbb423          	sd	s11,8(s7)
   1ead0:	06f13823          	sd	a5,112(sp)
   1ead4:	06c12423          	sw	a2,104(sp)
   1ead8:	00700713          	li	a4,7
   1eadc:	010b8b93          	addi	s7,s7,16
   1eae0:	fcc75263          	bge	a4,a2,1e2a4 <_svfiprintf_r+0x330>
   1eae4:	06010613          	addi	a2,sp,96
   1eae8:	00090593          	mv	a1,s2
   1eaec:	00098513          	mv	a0,s3
   1eaf0:	05e13423          	sd	t5,72(sp)
   1eaf4:	03d13023          	sd	t4,32(sp)
   1eaf8:	a94ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1eafc:	e2051663          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1eb00:	07013783          	ld	a5,112(sp)
   1eb04:	06812603          	lw	a2,104(sp)
   1eb08:	00048b93          	mv	s7,s1
   1eb0c:	04813f03          	ld	t5,72(sp)
   1eb10:	02013e83          	ld	t4,32(sp)
   1eb14:	f90ff06f          	j	1e2a4 <_svfiprintf_r+0x330>
   1eb18:	06010613          	addi	a2,sp,96
   1eb1c:	00090593          	mv	a1,s2
   1eb20:	00098513          	mv	a0,s3
   1eb24:	05e13423          	sd	t5,72(sp)
   1eb28:	03d13023          	sd	t4,32(sp)
   1eb2c:	a60ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1eb30:	de051c63          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1eb34:	06812603          	lw	a2,104(sp)
   1eb38:	07013783          	ld	a5,112(sp)
   1eb3c:	0f010713          	addi	a4,sp,240
   1eb40:	0016059b          	addiw	a1,a2,1
   1eb44:	00048b93          	mv	s7,s1
   1eb48:	04813f03          	ld	t5,72(sp)
   1eb4c:	02013e83          	ld	t4,32(sp)
   1eb50:	fa0ff06f          	j	1e2f0 <_svfiprintf_r+0x37c>
   1eb54:	06010613          	addi	a2,sp,96
   1eb58:	00090593          	mv	a1,s2
   1eb5c:	00098513          	mv	a0,s3
   1eb60:	03e13023          	sd	t5,32(sp)
   1eb64:	a28ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1eb68:	dc051063          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1eb6c:	06812603          	lw	a2,104(sp)
   1eb70:	07013783          	ld	a5,112(sp)
   1eb74:	0f010713          	addi	a4,sp,240
   1eb78:	0016059b          	addiw	a1,a2,1
   1eb7c:	00048b93          	mv	s7,s1
   1eb80:	02013f03          	ld	t5,32(sp)
   1eb84:	fa4ff06f          	j	1e328 <_svfiprintf_r+0x3b4>
   1eb88:	00003e17          	auipc	t3,0x3
   1eb8c:	230e0e13          	addi	t3,t3,560 # 21db8 <blanks.4500>
   1eb90:	01000593          	li	a1,16
   1eb94:	06812603          	lw	a2,104(sp)
   1eb98:	01000d13          	li	s10,16
   1eb9c:	00700d93          	li	s11,7
   1eba0:	000e0a93          	mv	s5,t3
   1eba4:	0175c863          	blt	a1,s7,1ebb4 <_svfiprintf_r+0xc40>
   1eba8:	0580006f          	j	1ec00 <_svfiprintf_r+0xc8c>
   1ebac:	ff0b8b9b          	addiw	s7,s7,-16
   1ebb0:	057d5663          	bge	s10,s7,1ebfc <_svfiprintf_r+0xc88>
   1ebb4:	0016061b          	addiw	a2,a2,1
   1ebb8:	01078793          	addi	a5,a5,16
   1ebbc:	01573023          	sd	s5,0(a4)
   1ebc0:	01a73423          	sd	s10,8(a4)
   1ebc4:	06f13823          	sd	a5,112(sp)
   1ebc8:	06c12423          	sw	a2,104(sp)
   1ebcc:	01070713          	addi	a4,a4,16
   1ebd0:	fccddee3          	bge	s11,a2,1ebac <_svfiprintf_r+0xc38>
   1ebd4:	06010613          	addi	a2,sp,96
   1ebd8:	00090593          	mv	a1,s2
   1ebdc:	00098513          	mv	a0,s3
   1ebe0:	9acff0ef          	jal	ra,1dd8c <__ssprint_r>
   1ebe4:	d4051263          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1ebe8:	ff0b8b9b          	addiw	s7,s7,-16
   1ebec:	07013783          	ld	a5,112(sp)
   1ebf0:	06812603          	lw	a2,104(sp)
   1ebf4:	00048713          	mv	a4,s1
   1ebf8:	fb7d4ee3          	blt	s10,s7,1ebb4 <_svfiprintf_r+0xc40>
   1ebfc:	000a8e13          	mv	t3,s5
   1ec00:	0016059b          	addiw	a1,a2,1
   1ec04:	017787b3          	add	a5,a5,s7
   1ec08:	01c73023          	sd	t3,0(a4)
   1ec0c:	01773423          	sd	s7,8(a4)
   1ec10:	06f13823          	sd	a5,112(sp)
   1ec14:	06b12423          	sw	a1,104(sp)
   1ec18:	00700713          	li	a4,7
   1ec1c:	f4b75863          	bge	a4,a1,1e36c <_svfiprintf_r+0x3f8>
   1ec20:	06010613          	addi	a2,sp,96
   1ec24:	00090593          	mv	a1,s2
   1ec28:	00098513          	mv	a0,s3
   1ec2c:	960ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1ec30:	ce051c63          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1ec34:	07013783          	ld	a5,112(sp)
   1ec38:	f34ff06f          	j	1e36c <_svfiprintf_r+0x3f8>
   1ec3c:	2e0a9663          	bnez	s5,1ef28 <_svfiprintf_r+0xfb4>
   1ec40:	00000a93          	li	s5,0
   1ec44:	00013423          	sd	zero,8(sp)
   1ec48:	0dc10d13          	addi	s10,sp,220
   1ec4c:	db4ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1ec50:	06010613          	addi	a2,sp,96
   1ec54:	00090593          	mv	a1,s2
   1ec58:	00098513          	mv	a0,s3
   1ec5c:	930ff0ef          	jal	ra,1dd8c <__ssprint_r>
   1ec60:	cc051463          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1ec64:	06812583          	lw	a1,104(sp)
   1ec68:	07013783          	ld	a5,112(sp)
   1ec6c:	0f010713          	addi	a4,sp,240
   1ec70:	0015859b          	addiw	a1,a1,1
   1ec74:	00048b93          	mv	s7,s1
   1ec78:	ec4ff06f          	j	1e33c <_svfiprintf_r+0x3c8>
   1ec7c:	000c0c93          	mv	s9,s8
   1ec80:	c08ff06f          	j	1e088 <_svfiprintf_r+0x114>
   1ec84:	000b0893          	mv	a7,s6
   1ec88:	8a1ff06f          	j	1e528 <_svfiprintf_r+0x5b4>
   1ec8c:	000b0c93          	mv	s9,s6
   1ec90:	8c5ff06f          	j	1e554 <_svfiprintf_r+0x5e0>
   1ec94:	000b0c93          	mv	s9,s6
   1ec98:	829ff06f          	j	1e4c0 <_svfiprintf_r+0x54c>
   1ec9c:	01013783          	ld	a5,16(sp)
   1eca0:	0007bd83          	ld	s11,0(a5)
   1eca4:	cf0ff06f          	j	1e194 <_svfiprintf_r+0x220>
   1eca8:	000d0513          	mv	a0,s10
   1ecac:	ffdf90ef          	jal	ra,18ca8 <strlen>
   1ecb0:	0005079b          	sext.w	a5,a0
   1ecb4:	00f13423          	sd	a5,8(sp)
   1ecb8:	01b13823          	sd	s11,16(sp)
   1ecbc:	00000a93          	li	s5,0
   1ecc0:	d40ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1ecc4:	04000593          	li	a1,64
   1ecc8:	f41f70ef          	jal	ra,16c08 <_malloc_r>
   1eccc:	00a93023          	sd	a0,0(s2)
   1ecd0:	00a93c23          	sd	a0,24(s2)
   1ecd4:	2a050c63          	beqz	a0,1ef8c <_svfiprintf_r+0x1018>
   1ecd8:	04000793          	li	a5,64
   1ecdc:	02f92023          	sw	a5,32(s2)
   1ece0:	af0ff06f          	j	1dfd0 <_svfiprintf_r+0x5c>
   1ece4:	400cfd13          	andi	s10,s9,1024
   1ece8:	000d079b          	sext.w	a5,s10
   1ecec:	00813423          	sd	s0,8(sp)
   1ecf0:	02813403          	ld	s0,40(sp)
   1ecf4:	0dc10d13          	addi	s10,sp,220
   1ecf8:	03313023          	sd	s3,32(sp)
   1ecfc:	000d8993          	mv	s3,s11
   1ed00:	00078d93          	mv	s11,a5
   1ed04:	000c0793          	mv	a5,s8
   1ed08:	00000b13          	li	s6,0
   1ed0c:	00090c13          	mv	s8,s2
   1ed10:	000d0913          	mv	s2,s10
   1ed14:	00078d13          	mv	s10,a5
   1ed18:	00a00593          	li	a1,10
   1ed1c:	00098513          	mv	a0,s3
   1ed20:	d84f10ef          	jal	ra,102a4 <__umoddi3>
   1ed24:	0305051b          	addiw	a0,a0,48
   1ed28:	fea90fa3          	sb	a0,-1(s2)
   1ed2c:	001b0b1b          	addiw	s6,s6,1
   1ed30:	fff90913          	addi	s2,s2,-1
   1ed34:	000d8663          	beqz	s11,1ed40 <_svfiprintf_r+0xdcc>
   1ed38:	00044683          	lbu	a3,0(s0)
   1ed3c:	05668863          	beq	a3,s6,1ed8c <_svfiprintf_r+0xe18>
   1ed40:	00a00593          	li	a1,10
   1ed44:	00098513          	mv	a0,s3
   1ed48:	d14f10ef          	jal	ra,1025c <__udivdi3>
   1ed4c:	00900793          	li	a5,9
   1ed50:	0137f663          	bgeu	a5,s3,1ed5c <_svfiprintf_r+0xde8>
   1ed54:	00050993          	mv	s3,a0
   1ed58:	fc1ff06f          	j	1ed18 <_svfiprintf_r+0xda4>
   1ed5c:	000d0793          	mv	a5,s10
   1ed60:	00090d13          	mv	s10,s2
   1ed64:	000c0913          	mv	s2,s8
   1ed68:	00078c13          	mv	s8,a5
   1ed6c:	0dc10793          	addi	a5,sp,220
   1ed70:	41a787bb          	subw	a5,a5,s10
   1ed74:	02813423          	sd	s0,40(sp)
   1ed78:	02013983          	ld	s3,32(sp)
   1ed7c:	00813403          	ld	s0,8(sp)
   1ed80:	000c8b13          	mv	s6,s9
   1ed84:	00f13423          	sd	a5,8(sp)
   1ed88:	c78ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1ed8c:	0ff00793          	li	a5,255
   1ed90:	faf688e3          	beq	a3,a5,1ed40 <_svfiprintf_r+0xdcc>
   1ed94:	00900793          	li	a5,9
   1ed98:	fd37f2e3          	bgeu	a5,s3,1ed5c <_svfiprintf_r+0xde8>
   1ed9c:	03813783          	ld	a5,56(sp)
   1eda0:	03013583          	ld	a1,48(sp)
   1eda4:	00000b13          	li	s6,0
   1eda8:	40f90933          	sub	s2,s2,a5
   1edac:	00078613          	mv	a2,a5
   1edb0:	00090513          	mv	a0,s2
   1edb4:	fc5f90ef          	jal	ra,18d78 <strncpy>
   1edb8:	00144683          	lbu	a3,1(s0)
   1edbc:	00098513          	mv	a0,s3
   1edc0:	00a00593          	li	a1,10
   1edc4:	00d03733          	snez	a4,a3
   1edc8:	00e40433          	add	s0,s0,a4
   1edcc:	c90f10ef          	jal	ra,1025c <__udivdi3>
   1edd0:	00050993          	mv	s3,a0
   1edd4:	f45ff06f          	j	1ed18 <_svfiprintf_r+0xda4>
   1edd8:	200b6b13          	ori	s6,s6,512
   1eddc:	001c4703          	lbu	a4,1(s8)
   1ede0:	000b0b1b          	sext.w	s6,s6
   1ede4:	001c0c13          	addi	s8,s8,1
   1ede8:	ac0ff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1edec:	020b6b13          	ori	s6,s6,32
   1edf0:	001c4703          	lbu	a4,1(s8)
   1edf4:	000b0b1b          	sext.w	s6,s6
   1edf8:	001c0c13          	addi	s8,s8,1
   1edfc:	aacff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1ee00:	06010613          	addi	a2,sp,96
   1ee04:	00090593          	mv	a1,s2
   1ee08:	00098513          	mv	a0,s3
   1ee0c:	f81fe0ef          	jal	ra,1dd8c <__ssprint_r>
   1ee10:	b0051c63          	bnez	a0,1e128 <_svfiprintf_r+0x1b4>
   1ee14:	06812603          	lw	a2,104(sp)
   1ee18:	07013783          	ld	a5,112(sp)
   1ee1c:	0f010713          	addi	a4,sp,240
   1ee20:	0016059b          	addiw	a1,a2,1
   1ee24:	00048b93          	mv	s7,s1
   1ee28:	d08ff06f          	j	1e330 <_svfiprintf_r+0x3bc>
   1ee2c:	000a871b          	sext.w	a4,s5
   1ee30:	00600793          	li	a5,6
   1ee34:	000a8693          	mv	a3,s5
   1ee38:	00e7f463          	bgeu	a5,a4,1ee40 <_svfiprintf_r+0xecc>
   1ee3c:	00600693          	li	a3,6
   1ee40:	0006879b          	sext.w	a5,a3
   1ee44:	00f13423          	sd	a5,8(sp)
   1ee48:	00078c93          	mv	s9,a5
   1ee4c:	01b13823          	sd	s11,16(sp)
   1ee50:	00002d17          	auipc	s10,0x2
   1ee54:	5e0d0d13          	addi	s10,s10,1504 # 21430 <zeroes.4539+0x90>
   1ee58:	c20ff06f          	j	1e278 <_svfiprintf_r+0x304>
   1ee5c:	200b7793          	andi	a5,s6,512
   1ee60:	0a078263          	beqz	a5,1ef04 <_svfiprintf_r+0xf90>
   1ee64:	0ffe7d93          	andi	s11,t3,255
   1ee68:	00e13823          	sd	a4,16(sp)
   1ee6c:	000b0c93          	mv	s9,s6
   1ee70:	00100793          	li	a5,1
   1ee74:	b50ff06f          	j	1e1c4 <_svfiprintf_r+0x250>
   1ee78:	200b7793          	andi	a5,s6,512
   1ee7c:	0ffe7d93          	andi	s11,t3,255
   1ee80:	b0079a63          	bnez	a5,1e194 <_svfiprintf_r+0x220>
   1ee84:	020e1d93          	slli	s11,t3,0x20
   1ee88:	020ddd93          	srli	s11,s11,0x20
   1ee8c:	b08ff06f          	j	1e194 <_svfiprintf_r+0x220>
   1ee90:	200b7713          	andi	a4,s6,512
   1ee94:	04070e63          	beqz	a4,1eef0 <_svfiprintf_r+0xf7c>
   1ee98:	0ffe7d93          	andi	s11,t3,255
   1ee9c:	000b0893          	mv	a7,s6
   1eea0:	00f13823          	sd	a5,16(sp)
   1eea4:	e90ff06f          	j	1e534 <_svfiprintf_r+0x5c0>
   1eea8:	200b7793          	andi	a5,s6,512
   1eeac:	02078663          	beqz	a5,1eed8 <_svfiprintf_r+0xf64>
   1eeb0:	01013783          	ld	a5,16(sp)
   1eeb4:	000b0c93          	mv	s9,s6
   1eeb8:	00e13823          	sd	a4,16(sp)
   1eebc:	00078d83          	lb	s11,0(a5)
   1eec0:	000d8793          	mv	a5,s11
   1eec4:	ea0ff06f          	j	1e564 <_svfiprintf_r+0x5f0>
   1eec8:	00070613          	mv	a2,a4
   1eecc:	00003e17          	auipc	t3,0x3
   1eed0:	efce0e13          	addi	t3,t3,-260 # 21dc8 <zeroes.4501>
   1eed4:	ab1ff06f          	j	1e984 <_svfiprintf_r+0xa10>
   1eed8:	01013783          	ld	a5,16(sp)
   1eedc:	000b0c93          	mv	s9,s6
   1eee0:	00e13823          	sd	a4,16(sp)
   1eee4:	0007ad83          	lw	s11,0(a5)
   1eee8:	000d8793          	mv	a5,s11
   1eeec:	e78ff06f          	j	1e564 <_svfiprintf_r+0x5f0>
   1eef0:	020e1d93          	slli	s11,t3,0x20
   1eef4:	020ddd93          	srli	s11,s11,0x20
   1eef8:	000b0893          	mv	a7,s6
   1eefc:	00f13823          	sd	a5,16(sp)
   1ef00:	e34ff06f          	j	1e534 <_svfiprintf_r+0x5c0>
   1ef04:	020e1d93          	slli	s11,t3,0x20
   1ef08:	020ddd93          	srli	s11,s11,0x20
   1ef0c:	00e13823          	sd	a4,16(sp)
   1ef10:	000b0c93          	mv	s9,s6
   1ef14:	00100793          	li	a5,1
   1ef18:	aacff06f          	j	1e1c4 <_svfiprintf_r+0x250>
   1ef1c:	00013783          	ld	a5,0(sp)
   1ef20:	00f71023          	sh	a5,0(a4)
   1ef24:	8ecff06f          	j	1e010 <_svfiprintf_r+0x9c>
   1ef28:	000b0c93          	mv	s9,s6
   1ef2c:	e5cff06f          	j	1e588 <_svfiprintf_r+0x614>
   1ef30:	01513423          	sd	s5,8(sp)
   1ef34:	01b13823          	sd	s11,16(sp)
   1ef38:	00000a93          	li	s5,0
   1ef3c:	ac4ff06f          	j	1e200 <_svfiprintf_r+0x28c>
   1ef40:	00070513          	mv	a0,a4
   1ef44:	00058613          	mv	a2,a1
   1ef48:	00003e17          	auipc	t3,0x3
   1ef4c:	e80e0e13          	addi	t3,t3,-384 # 21dc8 <zeroes.4501>
   1ef50:	979ff06f          	j	1e8c8 <_svfiprintf_r+0x954>
   1ef54:	00f72023          	sw	a5,0(a4)
   1ef58:	8b8ff06f          	j	1e010 <_svfiprintf_r+0x9c>
   1ef5c:	fff00793          	li	a5,-1
   1ef60:	00f13023          	sd	a5,0(sp)
   1ef64:	9d0ff06f          	j	1e134 <_svfiprintf_r+0x1c0>
   1ef68:	01013703          	ld	a4,16(sp)
   1ef6c:	00072a83          	lw	s5,0(a4)
   1ef70:	00870693          	addi	a3,a4,8
   1ef74:	000ad463          	bgez	s5,1ef7c <_svfiprintf_r+0x1008>
   1ef78:	fff00a93          	li	s5,-1
   1ef7c:	001c4703          	lbu	a4,1(s8)
   1ef80:	00d13823          	sd	a3,16(sp)
   1ef84:	00078c13          	mv	s8,a5
   1ef88:	920ff06f          	j	1e0a8 <_svfiprintf_r+0x134>
   1ef8c:	00c00793          	li	a5,12
   1ef90:	00f9a023          	sw	a5,0(s3)
   1ef94:	fff00793          	li	a5,-1
   1ef98:	00f13023          	sd	a5,0(sp)
   1ef9c:	998ff06f          	j	1e134 <_svfiprintf_r+0x1c0>

000000000001efa0 <__swbuf_r>:
   1efa0:	fd010113          	addi	sp,sp,-48
   1efa4:	02813023          	sd	s0,32(sp)
   1efa8:	00913c23          	sd	s1,24(sp)
   1efac:	01213823          	sd	s2,16(sp)
   1efb0:	02113423          	sd	ra,40(sp)
   1efb4:	01313423          	sd	s3,8(sp)
   1efb8:	00050913          	mv	s2,a0
   1efbc:	00058493          	mv	s1,a1
   1efc0:	00060413          	mv	s0,a2
   1efc4:	00050663          	beqz	a0,1efd0 <__swbuf_r+0x30>
   1efc8:	05052783          	lw	a5,80(a0)
   1efcc:	14078863          	beqz	a5,1f11c <__swbuf_r+0x17c>
   1efd0:	01041703          	lh	a4,16(s0)
   1efd4:	02842783          	lw	a5,40(s0)
   1efd8:	03071693          	slli	a3,a4,0x30
   1efdc:	0306d693          	srli	a3,a3,0x30
   1efe0:	00f42623          	sw	a5,12(s0)
   1efe4:	0086f793          	andi	a5,a3,8
   1efe8:	08078263          	beqz	a5,1f06c <__swbuf_r+0xcc>
   1efec:	01843783          	ld	a5,24(s0)
   1eff0:	06078e63          	beqz	a5,1f06c <__swbuf_r+0xcc>
   1eff4:	0ff4f993          	andi	s3,s1,255
   1eff8:	03269613          	slli	a2,a3,0x32
   1effc:	00098493          	mv	s1,s3
   1f000:	08065e63          	bgez	a2,1f09c <__swbuf_r+0xfc>
   1f004:	00043703          	ld	a4,0(s0)
   1f008:	02042683          	lw	a3,32(s0)
   1f00c:	40f707bb          	subw	a5,a4,a5
   1f010:	0ad7de63          	bge	a5,a3,1f0cc <__swbuf_r+0x12c>
   1f014:	00c42683          	lw	a3,12(s0)
   1f018:	00170613          	addi	a2,a4,1
   1f01c:	00c43023          	sd	a2,0(s0)
   1f020:	fff6869b          	addiw	a3,a3,-1
   1f024:	00d42623          	sw	a3,12(s0)
   1f028:	01370023          	sb	s3,0(a4)
   1f02c:	02042703          	lw	a4,32(s0)
   1f030:	0017879b          	addiw	a5,a5,1
   1f034:	0cf70863          	beq	a4,a5,1f104 <__swbuf_r+0x164>
   1f038:	01045783          	lhu	a5,16(s0)
   1f03c:	0017f793          	andi	a5,a5,1
   1f040:	00078663          	beqz	a5,1f04c <__swbuf_r+0xac>
   1f044:	00a00793          	li	a5,10
   1f048:	0af48e63          	beq	s1,a5,1f104 <__swbuf_r+0x164>
   1f04c:	02813083          	ld	ra,40(sp)
   1f050:	02013403          	ld	s0,32(sp)
   1f054:	00048513          	mv	a0,s1
   1f058:	01013903          	ld	s2,16(sp)
   1f05c:	01813483          	ld	s1,24(sp)
   1f060:	00813983          	ld	s3,8(sp)
   1f064:	03010113          	addi	sp,sp,48
   1f068:	00008067          	ret
   1f06c:	00040593          	mv	a1,s0
   1f070:	00090513          	mv	a0,s2
   1f074:	d81f30ef          	jal	ra,12df4 <__swsetup_r>
   1f078:	08051e63          	bnez	a0,1f114 <__swbuf_r+0x174>
   1f07c:	01041703          	lh	a4,16(s0)
   1f080:	0ff4f993          	andi	s3,s1,255
   1f084:	01843783          	ld	a5,24(s0)
   1f088:	03071693          	slli	a3,a4,0x30
   1f08c:	0306d693          	srli	a3,a3,0x30
   1f090:	03269613          	slli	a2,a3,0x32
   1f094:	00098493          	mv	s1,s3
   1f098:	f60646e3          	bltz	a2,1f004 <__swbuf_r+0x64>
   1f09c:	0ac42683          	lw	a3,172(s0)
   1f0a0:	00002637          	lui	a2,0x2
   1f0a4:	00c76733          	or	a4,a4,a2
   1f0a8:	ffffe637          	lui	a2,0xffffe
   1f0ac:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdadf7>
   1f0b0:	00c6f6b3          	and	a3,a3,a2
   1f0b4:	00e41823          	sh	a4,16(s0)
   1f0b8:	00043703          	ld	a4,0(s0)
   1f0bc:	0ad42623          	sw	a3,172(s0)
   1f0c0:	02042683          	lw	a3,32(s0)
   1f0c4:	40f707bb          	subw	a5,a4,a5
   1f0c8:	f4d7c6e3          	blt	a5,a3,1f014 <__swbuf_r+0x74>
   1f0cc:	00040593          	mv	a1,s0
   1f0d0:	00090513          	mv	a0,s2
   1f0d4:	ab4f40ef          	jal	ra,13388 <_fflush_r>
   1f0d8:	02051e63          	bnez	a0,1f114 <__swbuf_r+0x174>
   1f0dc:	00043703          	ld	a4,0(s0)
   1f0e0:	00c42683          	lw	a3,12(s0)
   1f0e4:	00100793          	li	a5,1
   1f0e8:	00170613          	addi	a2,a4,1
   1f0ec:	fff6869b          	addiw	a3,a3,-1
   1f0f0:	00c43023          	sd	a2,0(s0)
   1f0f4:	00d42623          	sw	a3,12(s0)
   1f0f8:	01370023          	sb	s3,0(a4)
   1f0fc:	02042703          	lw	a4,32(s0)
   1f100:	f2f71ce3          	bne	a4,a5,1f038 <__swbuf_r+0x98>
   1f104:	00040593          	mv	a1,s0
   1f108:	00090513          	mv	a0,s2
   1f10c:	a7cf40ef          	jal	ra,13388 <_fflush_r>
   1f110:	f2050ee3          	beqz	a0,1f04c <__swbuf_r+0xac>
   1f114:	fff00493          	li	s1,-1
   1f118:	f35ff06f          	j	1f04c <__swbuf_r+0xac>
   1f11c:	e14f40ef          	jal	ra,13730 <__sinit>
   1f120:	eb1ff06f          	j	1efd0 <__swbuf_r+0x30>

000000000001f124 <__swbuf>:
   1f124:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1f128:	00058613          	mv	a2,a1
   1f12c:	00050593          	mv	a1,a0
   1f130:	0007b503          	ld	a0,0(a5)
   1f134:	e6dff06f          	j	1efa0 <__swbuf_r>

000000000001f138 <_wcrtomb_r>:
   1f138:	fd010113          	addi	sp,sp,-48
   1f13c:	02813023          	sd	s0,32(sp)
   1f140:	00913c23          	sd	s1,24(sp)
   1f144:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1f148:	02113423          	sd	ra,40(sp)
   1f14c:	00050413          	mv	s0,a0
   1f150:	00068493          	mv	s1,a3
   1f154:	0e07b783          	ld	a5,224(a5)
   1f158:	02058263          	beqz	a1,1f17c <_wcrtomb_r+0x44>
   1f15c:	000780e7          	jalr	a5
   1f160:	fff00793          	li	a5,-1
   1f164:	02f50663          	beq	a0,a5,1f190 <_wcrtomb_r+0x58>
   1f168:	02813083          	ld	ra,40(sp)
   1f16c:	02013403          	ld	s0,32(sp)
   1f170:	01813483          	ld	s1,24(sp)
   1f174:	03010113          	addi	sp,sp,48
   1f178:	00008067          	ret
   1f17c:	00000613          	li	a2,0
   1f180:	00010593          	mv	a1,sp
   1f184:	000780e7          	jalr	a5
   1f188:	fff00793          	li	a5,-1
   1f18c:	fcf51ee3          	bne	a0,a5,1f168 <_wcrtomb_r+0x30>
   1f190:	0004a023          	sw	zero,0(s1)
   1f194:	08a00793          	li	a5,138
   1f198:	00f42023          	sw	a5,0(s0)
   1f19c:	02813083          	ld	ra,40(sp)
   1f1a0:	02013403          	ld	s0,32(sp)
   1f1a4:	01813483          	ld	s1,24(sp)
   1f1a8:	03010113          	addi	sp,sp,48
   1f1ac:	00008067          	ret

000000000001f1b0 <wcrtomb>:
   1f1b0:	fd010113          	addi	sp,sp,-48
   1f1b4:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1f1b8:	02813023          	sd	s0,32(sp)
   1f1bc:	00913c23          	sd	s1,24(sp)
   1f1c0:	0007b403          	ld	s0,0(a5)
   1f1c4:	02113423          	sd	ra,40(sp)
   1f1c8:	d6018793          	addi	a5,gp,-672 # 22768 <__global_locale>
   1f1cc:	00060493          	mv	s1,a2
   1f1d0:	0e07b783          	ld	a5,224(a5)
   1f1d4:	00060693          	mv	a3,a2
   1f1d8:	02050863          	beqz	a0,1f208 <wcrtomb+0x58>
   1f1dc:	00058613          	mv	a2,a1
   1f1e0:	00050593          	mv	a1,a0
   1f1e4:	00040513          	mv	a0,s0
   1f1e8:	000780e7          	jalr	a5
   1f1ec:	fff00793          	li	a5,-1
   1f1f0:	02f50863          	beq	a0,a5,1f220 <wcrtomb+0x70>
   1f1f4:	02813083          	ld	ra,40(sp)
   1f1f8:	02013403          	ld	s0,32(sp)
   1f1fc:	01813483          	ld	s1,24(sp)
   1f200:	03010113          	addi	sp,sp,48
   1f204:	00008067          	ret
   1f208:	00000613          	li	a2,0
   1f20c:	00010593          	mv	a1,sp
   1f210:	00040513          	mv	a0,s0
   1f214:	000780e7          	jalr	a5
   1f218:	fff00793          	li	a5,-1
   1f21c:	fcf51ce3          	bne	a0,a5,1f1f4 <wcrtomb+0x44>
   1f220:	0004a023          	sw	zero,0(s1)
   1f224:	08a00793          	li	a5,138
   1f228:	00f42023          	sw	a5,0(s0)
   1f22c:	02813083          	ld	ra,40(sp)
   1f230:	02013403          	ld	s0,32(sp)
   1f234:	01813483          	ld	s1,24(sp)
   1f238:	03010113          	addi	sp,sp,48
   1f23c:	00008067          	ret

000000000001f240 <_close>:
   1f240:	00000593          	li	a1,0
   1f244:	00000613          	li	a2,0
   1f248:	00000693          	li	a3,0
   1f24c:	00000713          	li	a4,0
   1f250:	00000793          	li	a5,0
   1f254:	03900893          	li	a7,57
   1f258:	00000073          	ecall
   1f25c:	00054663          	bltz	a0,1f268 <_close+0x28>
   1f260:	0005051b          	sext.w	a0,a0
   1f264:	00008067          	ret
   1f268:	ff010113          	addi	sp,sp,-16
   1f26c:	00813023          	sd	s0,0(sp)
   1f270:	00113423          	sd	ra,8(sp)
   1f274:	00050413          	mv	s0,a0
   1f278:	314000ef          	jal	ra,1f58c <__errno>
   1f27c:	408007bb          	negw	a5,s0
   1f280:	00813083          	ld	ra,8(sp)
   1f284:	00013403          	ld	s0,0(sp)
   1f288:	00f52023          	sw	a5,0(a0)
   1f28c:	fff00513          	li	a0,-1
   1f290:	01010113          	addi	sp,sp,16
   1f294:	00008067          	ret

000000000001f298 <_exit>:
   1f298:	00000593          	li	a1,0
   1f29c:	00000613          	li	a2,0
   1f2a0:	00000693          	li	a3,0
   1f2a4:	00000713          	li	a4,0
   1f2a8:	00000793          	li	a5,0
   1f2ac:	05d00893          	li	a7,93
   1f2b0:	00000073          	ecall
   1f2b4:	00054463          	bltz	a0,1f2bc <_exit+0x24>
   1f2b8:	0000006f          	j	1f2b8 <_exit+0x20>
   1f2bc:	ff010113          	addi	sp,sp,-16
   1f2c0:	00813023          	sd	s0,0(sp)
   1f2c4:	00050413          	mv	s0,a0
   1f2c8:	00113423          	sd	ra,8(sp)
   1f2cc:	4080043b          	negw	s0,s0
   1f2d0:	2bc000ef          	jal	ra,1f58c <__errno>
   1f2d4:	00852023          	sw	s0,0(a0)
   1f2d8:	0000006f          	j	1f2d8 <_exit+0x40>

000000000001f2dc <_fstat>:
   1f2dc:	f6010113          	addi	sp,sp,-160
   1f2e0:	08913423          	sd	s1,136(sp)
   1f2e4:	08113c23          	sd	ra,152(sp)
   1f2e8:	00058493          	mv	s1,a1
   1f2ec:	08813823          	sd	s0,144(sp)
   1f2f0:	00000613          	li	a2,0
   1f2f4:	00010593          	mv	a1,sp
   1f2f8:	00000693          	li	a3,0
   1f2fc:	00000713          	li	a4,0
   1f300:	00000793          	li	a5,0
   1f304:	05000893          	li	a7,80
   1f308:	00000073          	ecall
   1f30c:	00050413          	mv	s0,a0
   1f310:	02054663          	bltz	a0,1f33c <_fstat+0x60>
   1f314:	0005041b          	sext.w	s0,a0
   1f318:	00048513          	mv	a0,s1
   1f31c:	00010593          	mv	a1,sp
   1f320:	200000ef          	jal	ra,1f520 <_conv_stat>
   1f324:	00040513          	mv	a0,s0
   1f328:	09813083          	ld	ra,152(sp)
   1f32c:	09013403          	ld	s0,144(sp)
   1f330:	08813483          	ld	s1,136(sp)
   1f334:	0a010113          	addi	sp,sp,160
   1f338:	00008067          	ret
   1f33c:	4080043b          	negw	s0,s0
   1f340:	24c000ef          	jal	ra,1f58c <__errno>
   1f344:	00852023          	sw	s0,0(a0)
   1f348:	fff00413          	li	s0,-1
   1f34c:	fcdff06f          	j	1f318 <_fstat+0x3c>

000000000001f350 <_isatty>:
   1f350:	f8010113          	addi	sp,sp,-128
   1f354:	00810593          	addi	a1,sp,8
   1f358:	06113c23          	sd	ra,120(sp)
   1f35c:	f81ff0ef          	jal	ra,1f2dc <_fstat>
   1f360:	fff00793          	li	a5,-1
   1f364:	00f50e63          	beq	a0,a5,1f380 <_isatty+0x30>
   1f368:	00c12503          	lw	a0,12(sp)
   1f36c:	07813083          	ld	ra,120(sp)
   1f370:	40d5551b          	sraiw	a0,a0,0xd
   1f374:	00157513          	andi	a0,a0,1
   1f378:	08010113          	addi	sp,sp,128
   1f37c:	00008067          	ret
   1f380:	07813083          	ld	ra,120(sp)
   1f384:	00000513          	li	a0,0
   1f388:	08010113          	addi	sp,sp,128
   1f38c:	00008067          	ret

000000000001f390 <_lseek>:
   1f390:	ff010113          	addi	sp,sp,-16
   1f394:	00113423          	sd	ra,8(sp)
   1f398:	00813023          	sd	s0,0(sp)
   1f39c:	00000693          	li	a3,0
   1f3a0:	00000713          	li	a4,0
   1f3a4:	00000793          	li	a5,0
   1f3a8:	03e00893          	li	a7,62
   1f3ac:	00000073          	ecall
   1f3b0:	00050413          	mv	s0,a0
   1f3b4:	00054c63          	bltz	a0,1f3cc <_lseek+0x3c>
   1f3b8:	00040513          	mv	a0,s0
   1f3bc:	00813083          	ld	ra,8(sp)
   1f3c0:	00013403          	ld	s0,0(sp)
   1f3c4:	01010113          	addi	sp,sp,16
   1f3c8:	00008067          	ret
   1f3cc:	4080043b          	negw	s0,s0
   1f3d0:	1bc000ef          	jal	ra,1f58c <__errno>
   1f3d4:	00852023          	sw	s0,0(a0)
   1f3d8:	fff00413          	li	s0,-1
   1f3dc:	fddff06f          	j	1f3b8 <_lseek+0x28>

000000000001f3e0 <_read>:
   1f3e0:	ff010113          	addi	sp,sp,-16
   1f3e4:	00113423          	sd	ra,8(sp)
   1f3e8:	00813023          	sd	s0,0(sp)
   1f3ec:	00000693          	li	a3,0
   1f3f0:	00000713          	li	a4,0
   1f3f4:	00000793          	li	a5,0
   1f3f8:	03f00893          	li	a7,63
   1f3fc:	00000073          	ecall
   1f400:	00050413          	mv	s0,a0
   1f404:	00054c63          	bltz	a0,1f41c <_read+0x3c>
   1f408:	00040513          	mv	a0,s0
   1f40c:	00813083          	ld	ra,8(sp)
   1f410:	00013403          	ld	s0,0(sp)
   1f414:	01010113          	addi	sp,sp,16
   1f418:	00008067          	ret
   1f41c:	4080043b          	negw	s0,s0
   1f420:	16c000ef          	jal	ra,1f58c <__errno>
   1f424:	00852023          	sw	s0,0(a0)
   1f428:	fff00413          	li	s0,-1
   1f42c:	fddff06f          	j	1f408 <_read+0x28>

000000000001f430 <_sbrk>:
   1f430:	79018313          	addi	t1,gp,1936 # 23198 <heap_end.1898>
   1f434:	00033783          	ld	a5,0(t1)
   1f438:	ff010113          	addi	sp,sp,-16
   1f43c:	00113423          	sd	ra,8(sp)
   1f440:	00050813          	mv	a6,a0
   1f444:	02079863          	bnez	a5,1f474 <_sbrk+0x44>
   1f448:	00000513          	li	a0,0
   1f44c:	00000593          	li	a1,0
   1f450:	00000613          	li	a2,0
   1f454:	00000693          	li	a3,0
   1f458:	00000713          	li	a4,0
   1f45c:	0d600893          	li	a7,214
   1f460:	00000073          	ecall
   1f464:	fff00793          	li	a5,-1
   1f468:	04f50663          	beq	a0,a5,1f4b4 <_sbrk+0x84>
   1f46c:	00050793          	mv	a5,a0
   1f470:	78a1b823          	sd	a0,1936(gp) # 23198 <heap_end.1898>
   1f474:	00f80533          	add	a0,a6,a5
   1f478:	00000593          	li	a1,0
   1f47c:	00000613          	li	a2,0
   1f480:	00000693          	li	a3,0
   1f484:	00000713          	li	a4,0
   1f488:	00000793          	li	a5,0
   1f48c:	0d600893          	li	a7,214
   1f490:	00000073          	ecall
   1f494:	00033783          	ld	a5,0(t1)
   1f498:	00f80833          	add	a6,a6,a5
   1f49c:	01051c63          	bne	a0,a6,1f4b4 <_sbrk+0x84>
   1f4a0:	00813083          	ld	ra,8(sp)
   1f4a4:	78a1b823          	sd	a0,1936(gp) # 23198 <heap_end.1898>
   1f4a8:	00078513          	mv	a0,a5
   1f4ac:	01010113          	addi	sp,sp,16
   1f4b0:	00008067          	ret
   1f4b4:	0d8000ef          	jal	ra,1f58c <__errno>
   1f4b8:	00813083          	ld	ra,8(sp)
   1f4bc:	00c00793          	li	a5,12
   1f4c0:	00f52023          	sw	a5,0(a0)
   1f4c4:	fff00513          	li	a0,-1
   1f4c8:	01010113          	addi	sp,sp,16
   1f4cc:	00008067          	ret

000000000001f4d0 <_write>:
   1f4d0:	ff010113          	addi	sp,sp,-16
   1f4d4:	00113423          	sd	ra,8(sp)
   1f4d8:	00813023          	sd	s0,0(sp)
   1f4dc:	00000693          	li	a3,0
   1f4e0:	00000713          	li	a4,0
   1f4e4:	00000793          	li	a5,0
   1f4e8:	04000893          	li	a7,64
   1f4ec:	00000073          	ecall
   1f4f0:	00050413          	mv	s0,a0
   1f4f4:	00054c63          	bltz	a0,1f50c <_write+0x3c>
   1f4f8:	00040513          	mv	a0,s0
   1f4fc:	00813083          	ld	ra,8(sp)
   1f500:	00013403          	ld	s0,0(sp)
   1f504:	01010113          	addi	sp,sp,16
   1f508:	00008067          	ret
   1f50c:	4080043b          	negw	s0,s0
   1f510:	07c000ef          	jal	ra,1f58c <__errno>
   1f514:	00852023          	sw	s0,0(a0)
   1f518:	fff00413          	li	s0,-1
   1f51c:	fddff06f          	j	1f4f8 <_write+0x28>

000000000001f520 <_conv_stat>:
   1f520:	0005b383          	ld	t2,0(a1)
   1f524:	0085b283          	ld	t0,8(a1)
   1f528:	0105af83          	lw	t6,16(a1)
   1f52c:	0145af03          	lw	t5,20(a1)
   1f530:	0185ae83          	lw	t4,24(a1)
   1f534:	01c5ae03          	lw	t3,28(a1)
   1f538:	0205b303          	ld	t1,32(a1)
   1f53c:	0305b883          	ld	a7,48(a1)
   1f540:	0405b803          	ld	a6,64(a1)
   1f544:	0385a603          	lw	a2,56(a1)
   1f548:	0485b683          	ld	a3,72(a1)
   1f54c:	0585b703          	ld	a4,88(a1)
   1f550:	0685b783          	ld	a5,104(a1)
   1f554:	00751023          	sh	t2,0(a0)
   1f558:	00551123          	sh	t0,2(a0)
   1f55c:	01f52223          	sw	t6,4(a0)
   1f560:	01e51423          	sh	t5,8(a0)
   1f564:	01d51523          	sh	t4,10(a0)
   1f568:	01c51623          	sh	t3,12(a0)
   1f56c:	00651723          	sh	t1,14(a0)
   1f570:	01153823          	sd	a7,16(a0)
   1f574:	05053823          	sd	a6,80(a0)
   1f578:	04c53423          	sd	a2,72(a0)
   1f57c:	00d53c23          	sd	a3,24(a0)
   1f580:	02e53423          	sd	a4,40(a0)
   1f584:	02f53c23          	sd	a5,56(a0)
   1f588:	00008067          	ret

000000000001f58c <__errno>:
   1f58c:	75818793          	addi	a5,gp,1880 # 23160 <_impure_ptr>
   1f590:	0007b503          	ld	a0,0(a5)
   1f594:	00008067          	ret

000000000001f598 <__divdf3>:
   1f598:	fa010113          	addi	sp,sp,-96
   1f59c:	05213023          	sd	s2,64(sp)
   1f5a0:	03455913          	srli	s2,a0,0x34
   1f5a4:	04913423          	sd	s1,72(sp)
   1f5a8:	03313c23          	sd	s3,56(sp)
   1f5ac:	03513423          	sd	s5,40(sp)
   1f5b0:	00c51493          	slli	s1,a0,0xc
   1f5b4:	04113c23          	sd	ra,88(sp)
   1f5b8:	04813823          	sd	s0,80(sp)
   1f5bc:	03413823          	sd	s4,48(sp)
   1f5c0:	03613023          	sd	s6,32(sp)
   1f5c4:	01713c23          	sd	s7,24(sp)
   1f5c8:	01813823          	sd	s8,16(sp)
   1f5cc:	01913423          	sd	s9,8(sp)
   1f5d0:	7ff97913          	andi	s2,s2,2047
   1f5d4:	00058a93          	mv	s5,a1
   1f5d8:	00c4d493          	srli	s1,s1,0xc
   1f5dc:	03f55993          	srli	s3,a0,0x3f
   1f5e0:	08090a63          	beqz	s2,1f674 <__divdf3+0xdc>
   1f5e4:	7ff00793          	li	a5,2047
   1f5e8:	0af90863          	beq	s2,a5,1f698 <__divdf3+0x100>
   1f5ec:	00100793          	li	a5,1
   1f5f0:	00349493          	slli	s1,s1,0x3
   1f5f4:	03779793          	slli	a5,a5,0x37
   1f5f8:	00f4e4b3          	or	s1,s1,a5
   1f5fc:	c0190913          	addi	s2,s2,-1023
   1f600:	00000b13          	li	s6,0
   1f604:	034ad513          	srli	a0,s5,0x34
   1f608:	00ca9413          	slli	s0,s5,0xc
   1f60c:	7ff57513          	andi	a0,a0,2047
   1f610:	00c45413          	srli	s0,s0,0xc
   1f614:	03fada93          	srli	s5,s5,0x3f
   1f618:	0a050063          	beqz	a0,1f6b8 <__divdf3+0x120>
   1f61c:	7ff00793          	li	a5,2047
   1f620:	0af50e63          	beq	a0,a5,1f6dc <__divdf3+0x144>
   1f624:	00100793          	li	a5,1
   1f628:	00341413          	slli	s0,s0,0x3
   1f62c:	03779793          	slli	a5,a5,0x37
   1f630:	00f46433          	or	s0,s0,a5
   1f634:	c0150513          	addi	a0,a0,-1023
   1f638:	00000793          	li	a5,0
   1f63c:	002b1713          	slli	a4,s6,0x2
   1f640:	00f76733          	or	a4,a4,a5
   1f644:	fff70713          	addi	a4,a4,-1
   1f648:	00e00693          	li	a3,14
   1f64c:	0159ca33          	xor	s4,s3,s5
   1f650:	40a90933          	sub	s2,s2,a0
   1f654:	0ae6e463          	bltu	a3,a4,1f6fc <__divdf3+0x164>
   1f658:	00002697          	auipc	a3,0x2
   1f65c:	78068693          	addi	a3,a3,1920 # 21dd8 <zeroes.4501+0x10>
   1f660:	00271713          	slli	a4,a4,0x2
   1f664:	00d70733          	add	a4,a4,a3
   1f668:	00072703          	lw	a4,0(a4)
   1f66c:	00d70733          	add	a4,a4,a3
   1f670:	00070067          	jr	a4
   1f674:	02048c63          	beqz	s1,1f6ac <__divdf3+0x114>
   1f678:	00048513          	mv	a0,s1
   1f67c:	321010ef          	jal	ra,2119c <__clzdi2>
   1f680:	0005051b          	sext.w	a0,a0
   1f684:	ff85079b          	addiw	a5,a0,-8
   1f688:	c0d00913          	li	s2,-1011
   1f68c:	00f494b3          	sll	s1,s1,a5
   1f690:	40a90933          	sub	s2,s2,a0
   1f694:	f6dff06f          	j	1f600 <__divdf3+0x68>
   1f698:	7ff00913          	li	s2,2047
   1f69c:	00200b13          	li	s6,2
   1f6a0:	f60482e3          	beqz	s1,1f604 <__divdf3+0x6c>
   1f6a4:	00300b13          	li	s6,3
   1f6a8:	f5dff06f          	j	1f604 <__divdf3+0x6c>
   1f6ac:	00000913          	li	s2,0
   1f6b0:	00100b13          	li	s6,1
   1f6b4:	f51ff06f          	j	1f604 <__divdf3+0x6c>
   1f6b8:	02040c63          	beqz	s0,1f6f0 <__divdf3+0x158>
   1f6bc:	00040513          	mv	a0,s0
   1f6c0:	2dd010ef          	jal	ra,2119c <__clzdi2>
   1f6c4:	0005051b          	sext.w	a0,a0
   1f6c8:	ff85079b          	addiw	a5,a0,-8
   1f6cc:	00f41433          	sll	s0,s0,a5
   1f6d0:	c0d00793          	li	a5,-1011
   1f6d4:	40a78533          	sub	a0,a5,a0
   1f6d8:	f61ff06f          	j	1f638 <__divdf3+0xa0>
   1f6dc:	7ff00513          	li	a0,2047
   1f6e0:	00200793          	li	a5,2
   1f6e4:	f4040ce3          	beqz	s0,1f63c <__divdf3+0xa4>
   1f6e8:	00300793          	li	a5,3
   1f6ec:	f51ff06f          	j	1f63c <__divdf3+0xa4>
   1f6f0:	00000513          	li	a0,0
   1f6f4:	00100793          	li	a5,1
   1f6f8:	f45ff06f          	j	1f63c <__divdf3+0xa4>
   1f6fc:	00841a93          	slli	s5,s0,0x8
   1f700:	1284f863          	bgeu	s1,s0,1f830 <__divdf3+0x298>
   1f704:	fff90913          	addi	s2,s2,-1
   1f708:	00000413          	li	s0,0
   1f70c:	020adb93          	srli	s7,s5,0x20
   1f710:	fff00b13          	li	s6,-1
   1f714:	000b8593          	mv	a1,s7
   1f718:	020b5b13          	srli	s6,s6,0x20
   1f71c:	00048513          	mv	a0,s1
   1f720:	b3df00ef          	jal	ra,1025c <__udivdi3>
   1f724:	016afb33          	and	s6,s5,s6
   1f728:	00050593          	mv	a1,a0
   1f72c:	00050c93          	mv	s9,a0
   1f730:	000b0513          	mv	a0,s6
   1f734:	245010ef          	jal	ra,21178 <__muldi3>
   1f738:	00050c13          	mv	s8,a0
   1f73c:	000b8593          	mv	a1,s7
   1f740:	00048513          	mv	a0,s1
   1f744:	b61f00ef          	jal	ra,102a4 <__umoddi3>
   1f748:	02051513          	slli	a0,a0,0x20
   1f74c:	02045413          	srli	s0,s0,0x20
   1f750:	00a46533          	or	a0,s0,a0
   1f754:	000c8993          	mv	s3,s9
   1f758:	01857e63          	bgeu	a0,s8,1f774 <__divdf3+0x1dc>
   1f75c:	01550533          	add	a0,a0,s5
   1f760:	fffc8993          	addi	s3,s9,-1
   1f764:	01556863          	bltu	a0,s5,1f774 <__divdf3+0x1dc>
   1f768:	01857663          	bgeu	a0,s8,1f774 <__divdf3+0x1dc>
   1f76c:	ffec8993          	addi	s3,s9,-2
   1f770:	01550533          	add	a0,a0,s5
   1f774:	41850c33          	sub	s8,a0,s8
   1f778:	000b8593          	mv	a1,s7
   1f77c:	000c0513          	mv	a0,s8
   1f780:	addf00ef          	jal	ra,1025c <__udivdi3>
   1f784:	00050593          	mv	a1,a0
   1f788:	00050413          	mv	s0,a0
   1f78c:	000b0513          	mv	a0,s6
   1f790:	1e9010ef          	jal	ra,21178 <__muldi3>
   1f794:	00050b13          	mv	s6,a0
   1f798:	000b8593          	mv	a1,s7
   1f79c:	000c0513          	mv	a0,s8
   1f7a0:	b05f00ef          	jal	ra,102a4 <__umoddi3>
   1f7a4:	02051513          	slli	a0,a0,0x20
   1f7a8:	00040793          	mv	a5,s0
   1f7ac:	01657e63          	bgeu	a0,s6,1f7c8 <__divdf3+0x230>
   1f7b0:	01550533          	add	a0,a0,s5
   1f7b4:	fff40793          	addi	a5,s0,-1
   1f7b8:	01556863          	bltu	a0,s5,1f7c8 <__divdf3+0x230>
   1f7bc:	01657663          	bgeu	a0,s6,1f7c8 <__divdf3+0x230>
   1f7c0:	ffe40793          	addi	a5,s0,-2
   1f7c4:	01550533          	add	a0,a0,s5
   1f7c8:	02099413          	slli	s0,s3,0x20
   1f7cc:	41650533          	sub	a0,a0,s6
   1f7d0:	00f46433          	or	s0,s0,a5
   1f7d4:	00a03533          	snez	a0,a0
   1f7d8:	00a46433          	or	s0,s0,a0
   1f7dc:	3ff90793          	addi	a5,s2,1023
   1f7e0:	0ef05a63          	blez	a5,1f8d4 <__divdf3+0x33c>
   1f7e4:	00747713          	andi	a4,s0,7
   1f7e8:	00070a63          	beqz	a4,1f7fc <__divdf3+0x264>
   1f7ec:	00f47713          	andi	a4,s0,15
   1f7f0:	00400693          	li	a3,4
   1f7f4:	00d70463          	beq	a4,a3,1f7fc <__divdf3+0x264>
   1f7f8:	00440413          	addi	s0,s0,4
   1f7fc:	00741713          	slli	a4,s0,0x7
   1f800:	00075c63          	bgez	a4,1f818 <__divdf3+0x280>
   1f804:	fff00793          	li	a5,-1
   1f808:	03879793          	slli	a5,a5,0x38
   1f80c:	fff78793          	addi	a5,a5,-1
   1f810:	00f47433          	and	s0,s0,a5
   1f814:	40090793          	addi	a5,s2,1024
   1f818:	7fe00713          	li	a4,2046
   1f81c:	00345413          	srli	s0,s0,0x3
   1f820:	04f75463          	bge	a4,a5,1f868 <__divdf3+0x2d0>
   1f824:	00000413          	li	s0,0
   1f828:	7ff00793          	li	a5,2047
   1f82c:	03c0006f          	j	1f868 <__divdf3+0x2d0>
   1f830:	03f49413          	slli	s0,s1,0x3f
   1f834:	0014d493          	srli	s1,s1,0x1
   1f838:	ed5ff06f          	j	1f70c <__divdf3+0x174>
   1f83c:	00098a13          	mv	s4,s3
   1f840:	00048413          	mv	s0,s1
   1f844:	000b0793          	mv	a5,s6
   1f848:	00200713          	li	a4,2
   1f84c:	fce78ce3          	beq	a5,a4,1f824 <__divdf3+0x28c>
   1f850:	00300713          	li	a4,3
   1f854:	0ce78e63          	beq	a5,a4,1f930 <__divdf3+0x398>
   1f858:	00100713          	li	a4,1
   1f85c:	f8e790e3          	bne	a5,a4,1f7dc <__divdf3+0x244>
   1f860:	00000413          	li	s0,0
   1f864:	00000793          	li	a5,0
   1f868:	00c41413          	slli	s0,s0,0xc
   1f86c:	7ff7f793          	andi	a5,a5,2047
   1f870:	03479793          	slli	a5,a5,0x34
   1f874:	00c45413          	srli	s0,s0,0xc
   1f878:	03fa1513          	slli	a0,s4,0x3f
   1f87c:	00f46433          	or	s0,s0,a5
   1f880:	00a46533          	or	a0,s0,a0
   1f884:	05813083          	ld	ra,88(sp)
   1f888:	05013403          	ld	s0,80(sp)
   1f88c:	04813483          	ld	s1,72(sp)
   1f890:	04013903          	ld	s2,64(sp)
   1f894:	03813983          	ld	s3,56(sp)
   1f898:	03013a03          	ld	s4,48(sp)
   1f89c:	02813a83          	ld	s5,40(sp)
   1f8a0:	02013b03          	ld	s6,32(sp)
   1f8a4:	01813b83          	ld	s7,24(sp)
   1f8a8:	01013c03          	ld	s8,16(sp)
   1f8ac:	00813c83          	ld	s9,8(sp)
   1f8b0:	06010113          	addi	sp,sp,96
   1f8b4:	00008067          	ret
   1f8b8:	000a8a13          	mv	s4,s5
   1f8bc:	f8dff06f          	j	1f848 <__divdf3+0x2b0>
   1f8c0:	00100413          	li	s0,1
   1f8c4:	03341413          	slli	s0,s0,0x33
   1f8c8:	00000a13          	li	s4,0
   1f8cc:	00300793          	li	a5,3
   1f8d0:	f79ff06f          	j	1f848 <__divdf3+0x2b0>
   1f8d4:	00100713          	li	a4,1
   1f8d8:	40f707b3          	sub	a5,a4,a5
   1f8dc:	03800713          	li	a4,56
   1f8e0:	f8f740e3          	blt	a4,a5,1f860 <__divdf3+0x2c8>
   1f8e4:	0007871b          	sext.w	a4,a5
   1f8e8:	04000693          	li	a3,64
   1f8ec:	00e457b3          	srl	a5,s0,a4
   1f8f0:	40e6873b          	subw	a4,a3,a4
   1f8f4:	00e41433          	sll	s0,s0,a4
   1f8f8:	00803433          	snez	s0,s0
   1f8fc:	0087e433          	or	s0,a5,s0
   1f900:	00747793          	andi	a5,s0,7
   1f904:	00078a63          	beqz	a5,1f918 <__divdf3+0x380>
   1f908:	00f47793          	andi	a5,s0,15
   1f90c:	00400713          	li	a4,4
   1f910:	00e78463          	beq	a5,a4,1f918 <__divdf3+0x380>
   1f914:	00440413          	addi	s0,s0,4
   1f918:	00841793          	slli	a5,s0,0x8
   1f91c:	00345413          	srli	s0,s0,0x3
   1f920:	f407d2e3          	bgez	a5,1f864 <__divdf3+0x2cc>
   1f924:	00000413          	li	s0,0
   1f928:	00100793          	li	a5,1
   1f92c:	f3dff06f          	j	1f868 <__divdf3+0x2d0>
   1f930:	00100413          	li	s0,1
   1f934:	03341413          	slli	s0,s0,0x33
   1f938:	7ff00793          	li	a5,2047
   1f93c:	00000a13          	li	s4,0
   1f940:	f29ff06f          	j	1f868 <__divdf3+0x2d0>

000000000001f944 <__muldf3>:
   1f944:	fc010113          	addi	sp,sp,-64
   1f948:	03213023          	sd	s2,32(sp)
   1f94c:	03455913          	srli	s2,a0,0x34
   1f950:	02913423          	sd	s1,40(sp)
   1f954:	01313c23          	sd	s3,24(sp)
   1f958:	01513423          	sd	s5,8(sp)
   1f95c:	00c51493          	slli	s1,a0,0xc
   1f960:	02113c23          	sd	ra,56(sp)
   1f964:	02813823          	sd	s0,48(sp)
   1f968:	01413823          	sd	s4,16(sp)
   1f96c:	7ff97913          	andi	s2,s2,2047
   1f970:	00058a93          	mv	s5,a1
   1f974:	00c4d493          	srli	s1,s1,0xc
   1f978:	03f55993          	srli	s3,a0,0x3f
   1f97c:	08090c63          	beqz	s2,1fa14 <__muldf3+0xd0>
   1f980:	7ff00793          	li	a5,2047
   1f984:	0af90a63          	beq	s2,a5,1fa38 <__muldf3+0xf4>
   1f988:	00100793          	li	a5,1
   1f98c:	00349493          	slli	s1,s1,0x3
   1f990:	03779793          	slli	a5,a5,0x37
   1f994:	00f4e4b3          	or	s1,s1,a5
   1f998:	c0190913          	addi	s2,s2,-1023
   1f99c:	00000a13          	li	s4,0
   1f9a0:	034ad513          	srli	a0,s5,0x34
   1f9a4:	00ca9413          	slli	s0,s5,0xc
   1f9a8:	7ff57513          	andi	a0,a0,2047
   1f9ac:	00c45413          	srli	s0,s0,0xc
   1f9b0:	03fada93          	srli	s5,s5,0x3f
   1f9b4:	0a050263          	beqz	a0,1fa58 <__muldf3+0x114>
   1f9b8:	7ff00793          	li	a5,2047
   1f9bc:	0cf50063          	beq	a0,a5,1fa7c <__muldf3+0x138>
   1f9c0:	00100793          	li	a5,1
   1f9c4:	00341413          	slli	s0,s0,0x3
   1f9c8:	03779793          	slli	a5,a5,0x37
   1f9cc:	00f46433          	or	s0,s0,a5
   1f9d0:	c0150513          	addi	a0,a0,-1023
   1f9d4:	00000793          	li	a5,0
   1f9d8:	002a1713          	slli	a4,s4,0x2
   1f9dc:	00f76733          	or	a4,a4,a5
   1f9e0:	00a90933          	add	s2,s2,a0
   1f9e4:	fff70713          	addi	a4,a4,-1
   1f9e8:	00e00693          	li	a3,14
   1f9ec:	0159c833          	xor	a6,s3,s5
   1f9f0:	00190893          	addi	a7,s2,1
   1f9f4:	0ae6e463          	bltu	a3,a4,1fa9c <__muldf3+0x158>
   1f9f8:	00002697          	auipc	a3,0x2
   1f9fc:	41c68693          	addi	a3,a3,1052 # 21e14 <zeroes.4501+0x4c>
   1fa00:	00271713          	slli	a4,a4,0x2
   1fa04:	00d70733          	add	a4,a4,a3
   1fa08:	00072703          	lw	a4,0(a4)
   1fa0c:	00d70733          	add	a4,a4,a3
   1fa10:	00070067          	jr	a4
   1fa14:	02048c63          	beqz	s1,1fa4c <__muldf3+0x108>
   1fa18:	00048513          	mv	a0,s1
   1fa1c:	780010ef          	jal	ra,2119c <__clzdi2>
   1fa20:	0005051b          	sext.w	a0,a0
   1fa24:	ff85079b          	addiw	a5,a0,-8
   1fa28:	c0d00913          	li	s2,-1011
   1fa2c:	00f494b3          	sll	s1,s1,a5
   1fa30:	40a90933          	sub	s2,s2,a0
   1fa34:	f69ff06f          	j	1f99c <__muldf3+0x58>
   1fa38:	7ff00913          	li	s2,2047
   1fa3c:	00200a13          	li	s4,2
   1fa40:	f60480e3          	beqz	s1,1f9a0 <__muldf3+0x5c>
   1fa44:	00300a13          	li	s4,3
   1fa48:	f59ff06f          	j	1f9a0 <__muldf3+0x5c>
   1fa4c:	00000913          	li	s2,0
   1fa50:	00100a13          	li	s4,1
   1fa54:	f4dff06f          	j	1f9a0 <__muldf3+0x5c>
   1fa58:	02040c63          	beqz	s0,1fa90 <__muldf3+0x14c>
   1fa5c:	00040513          	mv	a0,s0
   1fa60:	73c010ef          	jal	ra,2119c <__clzdi2>
   1fa64:	0005051b          	sext.w	a0,a0
   1fa68:	ff85079b          	addiw	a5,a0,-8
   1fa6c:	00f41433          	sll	s0,s0,a5
   1fa70:	c0d00793          	li	a5,-1011
   1fa74:	40a78533          	sub	a0,a5,a0
   1fa78:	f5dff06f          	j	1f9d4 <__muldf3+0x90>
   1fa7c:	7ff00513          	li	a0,2047
   1fa80:	00200793          	li	a5,2
   1fa84:	f4040ae3          	beqz	s0,1f9d8 <__muldf3+0x94>
   1fa88:	00300793          	li	a5,3
   1fa8c:	f4dff06f          	j	1f9d8 <__muldf3+0x94>
   1fa90:	00000513          	li	a0,0
   1fa94:	00100793          	li	a5,1
   1fa98:	f41ff06f          	j	1f9d8 <__muldf3+0x94>
   1fa9c:	fff00793          	li	a5,-1
   1faa0:	0207d793          	srli	a5,a5,0x20
   1faa4:	0204df13          	srli	t5,s1,0x20
   1faa8:	02045e93          	srli	t4,s0,0x20
   1faac:	00f4f4b3          	and	s1,s1,a5
   1fab0:	00f47433          	and	s0,s0,a5
   1fab4:	00048513          	mv	a0,s1
   1fab8:	00040593          	mv	a1,s0
   1fabc:	6bc010ef          	jal	ra,21178 <__muldi3>
   1fac0:	00050313          	mv	t1,a0
   1fac4:	000e8593          	mv	a1,t4
   1fac8:	00048513          	mv	a0,s1
   1facc:	6ac010ef          	jal	ra,21178 <__muldi3>
   1fad0:	00050713          	mv	a4,a0
   1fad4:	00040593          	mv	a1,s0
   1fad8:	000f0513          	mv	a0,t5
   1fadc:	69c010ef          	jal	ra,21178 <__muldi3>
   1fae0:	00050e13          	mv	t3,a0
   1fae4:	000e8593          	mv	a1,t4
   1fae8:	000f0513          	mv	a0,t5
   1faec:	68c010ef          	jal	ra,21178 <__muldi3>
   1faf0:	02035793          	srli	a5,t1,0x20
   1faf4:	01c70733          	add	a4,a4,t3
   1faf8:	00e787b3          	add	a5,a5,a4
   1fafc:	01c7f863          	bgeu	a5,t3,1fb0c <__muldf3+0x1c8>
   1fb00:	00100713          	li	a4,1
   1fb04:	02071713          	slli	a4,a4,0x20
   1fb08:	00e50533          	add	a0,a0,a4
   1fb0c:	fff00693          	li	a3,-1
   1fb10:	0206d693          	srli	a3,a3,0x20
   1fb14:	00d7f733          	and	a4,a5,a3
   1fb18:	02071713          	slli	a4,a4,0x20
   1fb1c:	00d37333          	and	t1,t1,a3
   1fb20:	00670733          	add	a4,a4,t1
   1fb24:	00971413          	slli	s0,a4,0x9
   1fb28:	0207d793          	srli	a5,a5,0x20
   1fb2c:	00803433          	snez	s0,s0
   1fb30:	00a787b3          	add	a5,a5,a0
   1fb34:	03775713          	srli	a4,a4,0x37
   1fb38:	00e46733          	or	a4,s0,a4
   1fb3c:	00979413          	slli	s0,a5,0x9
   1fb40:	00e46433          	or	s0,s0,a4
   1fb44:	00741793          	slli	a5,s0,0x7
   1fb48:	0807de63          	bgez	a5,1fbe4 <__muldf3+0x2a0>
   1fb4c:	00145793          	srli	a5,s0,0x1
   1fb50:	00147413          	andi	s0,s0,1
   1fb54:	0087e433          	or	s0,a5,s0
   1fb58:	3ff88793          	addi	a5,a7,1023
   1fb5c:	08f05863          	blez	a5,1fbec <__muldf3+0x2a8>
   1fb60:	00747713          	andi	a4,s0,7
   1fb64:	00070a63          	beqz	a4,1fb78 <__muldf3+0x234>
   1fb68:	00f47713          	andi	a4,s0,15
   1fb6c:	00400693          	li	a3,4
   1fb70:	00d70463          	beq	a4,a3,1fb78 <__muldf3+0x234>
   1fb74:	00440413          	addi	s0,s0,4
   1fb78:	00741713          	slli	a4,s0,0x7
   1fb7c:	00075c63          	bgez	a4,1fb94 <__muldf3+0x250>
   1fb80:	fff00793          	li	a5,-1
   1fb84:	03879793          	slli	a5,a5,0x38
   1fb88:	fff78793          	addi	a5,a5,-1
   1fb8c:	00f47433          	and	s0,s0,a5
   1fb90:	40088793          	addi	a5,a7,1024
   1fb94:	7fe00713          	li	a4,2046
   1fb98:	00345413          	srli	s0,s0,0x3
   1fb9c:	0af75e63          	bge	a4,a5,1fc58 <__muldf3+0x314>
   1fba0:	00000413          	li	s0,0
   1fba4:	7ff00793          	li	a5,2047
   1fba8:	0b00006f          	j	1fc58 <__muldf3+0x314>
   1fbac:	00098813          	mv	a6,s3
   1fbb0:	00048413          	mv	s0,s1
   1fbb4:	000a0793          	mv	a5,s4
   1fbb8:	00200713          	li	a4,2
   1fbbc:	fee782e3          	beq	a5,a4,1fba0 <__muldf3+0x25c>
   1fbc0:	00300713          	li	a4,3
   1fbc4:	08e78263          	beq	a5,a4,1fc48 <__muldf3+0x304>
   1fbc8:	00100713          	li	a4,1
   1fbcc:	f8e796e3          	bne	a5,a4,1fb58 <__muldf3+0x214>
   1fbd0:	00000413          	li	s0,0
   1fbd4:	00000793          	li	a5,0
   1fbd8:	0800006f          	j	1fc58 <__muldf3+0x314>
   1fbdc:	000a8813          	mv	a6,s5
   1fbe0:	fd9ff06f          	j	1fbb8 <__muldf3+0x274>
   1fbe4:	00090893          	mv	a7,s2
   1fbe8:	f71ff06f          	j	1fb58 <__muldf3+0x214>
   1fbec:	00100713          	li	a4,1
   1fbf0:	40f707b3          	sub	a5,a4,a5
   1fbf4:	03800713          	li	a4,56
   1fbf8:	fcf74ce3          	blt	a4,a5,1fbd0 <__muldf3+0x28c>
   1fbfc:	0007871b          	sext.w	a4,a5
   1fc00:	04000693          	li	a3,64
   1fc04:	00e457b3          	srl	a5,s0,a4
   1fc08:	40e6873b          	subw	a4,a3,a4
   1fc0c:	00e41433          	sll	s0,s0,a4
   1fc10:	00803433          	snez	s0,s0
   1fc14:	0087e433          	or	s0,a5,s0
   1fc18:	00747793          	andi	a5,s0,7
   1fc1c:	00078a63          	beqz	a5,1fc30 <__muldf3+0x2ec>
   1fc20:	00f47793          	andi	a5,s0,15
   1fc24:	00400713          	li	a4,4
   1fc28:	00e78463          	beq	a5,a4,1fc30 <__muldf3+0x2ec>
   1fc2c:	00440413          	addi	s0,s0,4
   1fc30:	00841793          	slli	a5,s0,0x8
   1fc34:	00345413          	srli	s0,s0,0x3
   1fc38:	f807dee3          	bgez	a5,1fbd4 <__muldf3+0x290>
   1fc3c:	00000413          	li	s0,0
   1fc40:	00100793          	li	a5,1
   1fc44:	0140006f          	j	1fc58 <__muldf3+0x314>
   1fc48:	00100413          	li	s0,1
   1fc4c:	03341413          	slli	s0,s0,0x33
   1fc50:	7ff00793          	li	a5,2047
   1fc54:	00000813          	li	a6,0
   1fc58:	00c41413          	slli	s0,s0,0xc
   1fc5c:	7ff7f793          	andi	a5,a5,2047
   1fc60:	03479793          	slli	a5,a5,0x34
   1fc64:	00c45413          	srli	s0,s0,0xc
   1fc68:	00f46433          	or	s0,s0,a5
   1fc6c:	03f81513          	slli	a0,a6,0x3f
   1fc70:	00a46533          	or	a0,s0,a0
   1fc74:	03813083          	ld	ra,56(sp)
   1fc78:	03013403          	ld	s0,48(sp)
   1fc7c:	02813483          	ld	s1,40(sp)
   1fc80:	02013903          	ld	s2,32(sp)
   1fc84:	01813983          	ld	s3,24(sp)
   1fc88:	01013a03          	ld	s4,16(sp)
   1fc8c:	00813a83          	ld	s5,8(sp)
   1fc90:	04010113          	addi	sp,sp,64
   1fc94:	00008067          	ret

000000000001fc98 <__eqtf2>:
   1fc98:	000088b7          	lui	a7,0x8
   1fc9c:	0305d813          	srli	a6,a1,0x30
   1fca0:	fff88893          	addi	a7,a7,-1 # 7fff <main-0x80b1>
   1fca4:	fff00713          	li	a4,-1
   1fca8:	01075713          	srli	a4,a4,0x10
   1fcac:	0306d313          	srli	t1,a3,0x30
   1fcb0:	01187833          	and	a6,a6,a7
   1fcb4:	00e5fe33          	and	t3,a1,a4
   1fcb8:	01137333          	and	t1,t1,a7
   1fcbc:	00e6f733          	and	a4,a3,a4
   1fcc0:	03f5d593          	srli	a1,a1,0x3f
   1fcc4:	03f6d693          	srli	a3,a3,0x3f
   1fcc8:	01181e63          	bne	a6,a7,1fce4 <__eqtf2+0x4c>
   1fccc:	00ae68b3          	or	a7,t3,a0
   1fcd0:	00100793          	li	a5,1
   1fcd4:	04089063          	bnez	a7,1fd14 <__eqtf2+0x7c>
   1fcd8:	01030863          	beq	t1,a6,1fce8 <__eqtf2+0x50>
   1fcdc:	00100793          	li	a5,1
   1fce0:	0340006f          	j	1fd14 <__eqtf2+0x7c>
   1fce4:	01131863          	bne	t1,a7,1fcf4 <__eqtf2+0x5c>
   1fce8:	00c768b3          	or	a7,a4,a2
   1fcec:	00100793          	li	a5,1
   1fcf0:	02089263          	bnez	a7,1fd14 <__eqtf2+0x7c>
   1fcf4:	00100793          	li	a5,1
   1fcf8:	00681e63          	bne	a6,t1,1fd14 <__eqtf2+0x7c>
   1fcfc:	00ee1c63          	bne	t3,a4,1fd14 <__eqtf2+0x7c>
   1fd00:	00c51a63          	bne	a0,a2,1fd14 <__eqtf2+0x7c>
   1fd04:	00d58c63          	beq	a1,a3,1fd1c <__eqtf2+0x84>
   1fd08:	00081663          	bnez	a6,1fd14 <__eqtf2+0x7c>
   1fd0c:	00ae67b3          	or	a5,t3,a0
   1fd10:	00f037b3          	snez	a5,a5
   1fd14:	00078513          	mv	a0,a5
   1fd18:	00008067          	ret
   1fd1c:	00000793          	li	a5,0
   1fd20:	ff5ff06f          	j	1fd14 <__eqtf2+0x7c>

000000000001fd24 <__getf2>:
   1fd24:	000088b7          	lui	a7,0x8
   1fd28:	0305d813          	srli	a6,a1,0x30
   1fd2c:	fff88893          	addi	a7,a7,-1 # 7fff <main-0x80b1>
   1fd30:	fff00793          	li	a5,-1
   1fd34:	0107d793          	srli	a5,a5,0x10
   1fd38:	0306d713          	srli	a4,a3,0x30
   1fd3c:	01187833          	and	a6,a6,a7
   1fd40:	00f5f333          	and	t1,a1,a5
   1fd44:	01177733          	and	a4,a4,a7
   1fd48:	00f6f7b3          	and	a5,a3,a5
   1fd4c:	03f5d593          	srli	a1,a1,0x3f
   1fd50:	03f6d693          	srli	a3,a3,0x3f
   1fd54:	01181a63          	bne	a6,a7,1fd68 <__getf2+0x44>
   1fd58:	00a368b3          	or	a7,t1,a0
   1fd5c:	08088c63          	beqz	a7,1fdf4 <__getf2+0xd0>
   1fd60:	ffe00593          	li	a1,-2
   1fd64:	0480006f          	j	1fdac <__getf2+0x88>
   1fd68:	01171663          	bne	a4,a7,1fd74 <__getf2+0x50>
   1fd6c:	00c7e8b3          	or	a7,a5,a2
   1fd70:	fe0898e3          	bnez	a7,1fd60 <__getf2+0x3c>
   1fd74:	08081263          	bnez	a6,1fdf8 <__getf2+0xd4>
   1fd78:	00a368b3          	or	a7,t1,a0
   1fd7c:	0018b893          	seqz	a7,a7
   1fd80:	00071663          	bnez	a4,1fd8c <__getf2+0x68>
   1fd84:	00c7ee33          	or	t3,a5,a2
   1fd88:	040e0e63          	beqz	t3,1fde4 <__getf2+0xc0>
   1fd8c:	00089a63          	bnez	a7,1fda0 <__getf2+0x7c>
   1fd90:	02d58263          	beq	a1,a3,1fdb4 <__getf2+0x90>
   1fd94:	04058463          	beqz	a1,1fddc <__getf2+0xb8>
   1fd98:	fff00593          	li	a1,-1
   1fd9c:	0100006f          	j	1fdac <__getf2+0x88>
   1fda0:	fff00593          	li	a1,-1
   1fda4:	00068463          	beqz	a3,1fdac <__getf2+0x88>
   1fda8:	00068593          	mv	a1,a3
   1fdac:	00058513          	mv	a0,a1
   1fdb0:	00008067          	ret
   1fdb4:	ff0740e3          	blt	a4,a6,1fd94 <__getf2+0x70>
   1fdb8:	00e85663          	bge	a6,a4,1fdc4 <__getf2+0xa0>
   1fdbc:	fe0598e3          	bnez	a1,1fdac <__getf2+0x88>
   1fdc0:	fd9ff06f          	j	1fd98 <__getf2+0x74>
   1fdc4:	fc67e8e3          	bltu	a5,t1,1fd94 <__getf2+0x70>
   1fdc8:	02f31263          	bne	t1,a5,1fdec <__getf2+0xc8>
   1fdcc:	fca664e3          	bltu	a2,a0,1fd94 <__getf2+0x70>
   1fdd0:	fec566e3          	bltu	a0,a2,1fdbc <__getf2+0x98>
   1fdd4:	00000593          	li	a1,0
   1fdd8:	fd5ff06f          	j	1fdac <__getf2+0x88>
   1fddc:	00100593          	li	a1,1
   1fde0:	fcdff06f          	j	1fdac <__getf2+0x88>
   1fde4:	fe0898e3          	bnez	a7,1fdd4 <__getf2+0xb0>
   1fde8:	fadff06f          	j	1fd94 <__getf2+0x70>
   1fdec:	fcf368e3          	bltu	t1,a5,1fdbc <__getf2+0x98>
   1fdf0:	fe5ff06f          	j	1fdd4 <__getf2+0xb0>
   1fdf4:	f7070ce3          	beq	a4,a6,1fd6c <__getf2+0x48>
   1fdf8:	f8071ce3          	bnez	a4,1fd90 <__getf2+0x6c>
   1fdfc:	00000893          	li	a7,0
   1fe00:	f85ff06f          	j	1fd84 <__getf2+0x60>

000000000001fe04 <__letf2>:
   1fe04:	000088b7          	lui	a7,0x8
   1fe08:	0305d813          	srli	a6,a1,0x30
   1fe0c:	fff88893          	addi	a7,a7,-1 # 7fff <main-0x80b1>
   1fe10:	fff00793          	li	a5,-1
   1fe14:	0107d793          	srli	a5,a5,0x10
   1fe18:	0306d713          	srli	a4,a3,0x30
   1fe1c:	01187833          	and	a6,a6,a7
   1fe20:	00f5f333          	and	t1,a1,a5
   1fe24:	01177733          	and	a4,a4,a7
   1fe28:	00f6f7b3          	and	a5,a3,a5
   1fe2c:	03f5d593          	srli	a1,a1,0x3f
   1fe30:	03f6d693          	srli	a3,a3,0x3f
   1fe34:	01181a63          	bne	a6,a7,1fe48 <__letf2+0x44>
   1fe38:	00a368b3          	or	a7,t1,a0
   1fe3c:	08088c63          	beqz	a7,1fed4 <__letf2+0xd0>
   1fe40:	00200593          	li	a1,2
   1fe44:	0480006f          	j	1fe8c <__letf2+0x88>
   1fe48:	01171663          	bne	a4,a7,1fe54 <__letf2+0x50>
   1fe4c:	00c7e8b3          	or	a7,a5,a2
   1fe50:	fe0898e3          	bnez	a7,1fe40 <__letf2+0x3c>
   1fe54:	08081263          	bnez	a6,1fed8 <__letf2+0xd4>
   1fe58:	00a368b3          	or	a7,t1,a0
   1fe5c:	0018b893          	seqz	a7,a7
   1fe60:	00071663          	bnez	a4,1fe6c <__letf2+0x68>
   1fe64:	00c7ee33          	or	t3,a5,a2
   1fe68:	040e0e63          	beqz	t3,1fec4 <__letf2+0xc0>
   1fe6c:	00089a63          	bnez	a7,1fe80 <__letf2+0x7c>
   1fe70:	02d58263          	beq	a1,a3,1fe94 <__letf2+0x90>
   1fe74:	04058463          	beqz	a1,1febc <__letf2+0xb8>
   1fe78:	fff00593          	li	a1,-1
   1fe7c:	0100006f          	j	1fe8c <__letf2+0x88>
   1fe80:	fff00593          	li	a1,-1
   1fe84:	00068463          	beqz	a3,1fe8c <__letf2+0x88>
   1fe88:	00068593          	mv	a1,a3
   1fe8c:	00058513          	mv	a0,a1
   1fe90:	00008067          	ret
   1fe94:	ff0740e3          	blt	a4,a6,1fe74 <__letf2+0x70>
   1fe98:	00e85663          	bge	a6,a4,1fea4 <__letf2+0xa0>
   1fe9c:	fe0598e3          	bnez	a1,1fe8c <__letf2+0x88>
   1fea0:	fd9ff06f          	j	1fe78 <__letf2+0x74>
   1fea4:	fc67e8e3          	bltu	a5,t1,1fe74 <__letf2+0x70>
   1fea8:	02f31263          	bne	t1,a5,1fecc <__letf2+0xc8>
   1feac:	fca664e3          	bltu	a2,a0,1fe74 <__letf2+0x70>
   1feb0:	fec566e3          	bltu	a0,a2,1fe9c <__letf2+0x98>
   1feb4:	00000593          	li	a1,0
   1feb8:	fd5ff06f          	j	1fe8c <__letf2+0x88>
   1febc:	00100593          	li	a1,1
   1fec0:	fcdff06f          	j	1fe8c <__letf2+0x88>
   1fec4:	fe0898e3          	bnez	a7,1feb4 <__letf2+0xb0>
   1fec8:	fadff06f          	j	1fe74 <__letf2+0x70>
   1fecc:	fcf368e3          	bltu	t1,a5,1fe9c <__letf2+0x98>
   1fed0:	fe5ff06f          	j	1feb4 <__letf2+0xb0>
   1fed4:	f7070ce3          	beq	a4,a6,1fe4c <__letf2+0x48>
   1fed8:	f8071ce3          	bnez	a4,1fe70 <__letf2+0x6c>
   1fedc:	00000893          	li	a7,0
   1fee0:	f85ff06f          	j	1fe64 <__letf2+0x60>

000000000001fee4 <__multf3>:
   1fee4:	fa010113          	addi	sp,sp,-96
   1fee8:	00008737          	lui	a4,0x8
   1feec:	03313c23          	sd	s3,56(sp)
   1fef0:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   1fef4:	0305d993          	srli	s3,a1,0x30
   1fef8:	04813823          	sd	s0,80(sp)
   1fefc:	04913423          	sd	s1,72(sp)
   1ff00:	03413823          	sd	s4,48(sp)
   1ff04:	03513423          	sd	s5,40(sp)
   1ff08:	03613023          	sd	s6,32(sp)
   1ff0c:	01059493          	slli	s1,a1,0x10
   1ff10:	04113c23          	sd	ra,88(sp)
   1ff14:	05213023          	sd	s2,64(sp)
   1ff18:	01713c23          	sd	s7,24(sp)
   1ff1c:	01813823          	sd	s8,16(sp)
   1ff20:	01913423          	sd	s9,8(sp)
   1ff24:	00e9f7b3          	and	a5,s3,a4
   1ff28:	00050413          	mv	s0,a0
   1ff2c:	00060b13          	mv	s6,a2
   1ff30:	00068a13          	mv	s4,a3
   1ff34:	0104d493          	srli	s1,s1,0x10
   1ff38:	03f5da93          	srli	s5,a1,0x3f
   1ff3c:	0c078463          	beqz	a5,20004 <__multf3+0x120>
   1ff40:	0007899b          	sext.w	s3,a5
   1ff44:	12e98a63          	beq	s3,a4,20078 <__multf3+0x194>
   1ff48:	00349493          	slli	s1,s1,0x3
   1ff4c:	03d55713          	srli	a4,a0,0x3d
   1ff50:	00976733          	or	a4,a4,s1
   1ff54:	ffffc9b7          	lui	s3,0xffffc
   1ff58:	00100493          	li	s1,1
   1ff5c:	03349493          	slli	s1,s1,0x33
   1ff60:	00198993          	addi	s3,s3,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd8df9>
   1ff64:	009764b3          	or	s1,a4,s1
   1ff68:	00351913          	slli	s2,a0,0x3
   1ff6c:	013789b3          	add	s3,a5,s3
   1ff70:	00000b93          	li	s7,0
   1ff74:	000087b7          	lui	a5,0x8
   1ff78:	030a5513          	srli	a0,s4,0x30
   1ff7c:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   1ff80:	010a1413          	slli	s0,s4,0x10
   1ff84:	00f57733          	and	a4,a0,a5
   1ff88:	01045413          	srli	s0,s0,0x10
   1ff8c:	03fa5a13          	srli	s4,s4,0x3f
   1ff90:	10070c63          	beqz	a4,200a8 <__multf3+0x1c4>
   1ff94:	0007051b          	sext.w	a0,a4
   1ff98:	18f50463          	beq	a0,a5,20120 <__multf3+0x23c>
   1ff9c:	00341413          	slli	s0,s0,0x3
   1ffa0:	03db5593          	srli	a1,s6,0x3d
   1ffa4:	0085e5b3          	or	a1,a1,s0
   1ffa8:	ffffc537          	lui	a0,0xffffc
   1ffac:	00100413          	li	s0,1
   1ffb0:	03341413          	slli	s0,s0,0x33
   1ffb4:	00150513          	addi	a0,a0,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd8df9>
   1ffb8:	0085e433          	or	s0,a1,s0
   1ffbc:	003b1793          	slli	a5,s6,0x3
   1ffc0:	00a70533          	add	a0,a4,a0
   1ffc4:	00000713          	li	a4,0
   1ffc8:	002b9693          	slli	a3,s7,0x2
   1ffcc:	00e6e6b3          	or	a3,a3,a4
   1ffd0:	013509b3          	add	s3,a0,s3
   1ffd4:	fff68693          	addi	a3,a3,-1
   1ffd8:	00e00613          	li	a2,14
   1ffdc:	014ac833          	xor	a6,s5,s4
   1ffe0:	00198893          	addi	a7,s3,1
   1ffe4:	16d66663          	bltu	a2,a3,20150 <__multf3+0x26c>
   1ffe8:	00002617          	auipc	a2,0x2
   1ffec:	e6860613          	addi	a2,a2,-408 # 21e50 <zeroes.4501+0x88>
   1fff0:	00269693          	slli	a3,a3,0x2
   1fff4:	00c686b3          	add	a3,a3,a2
   1fff8:	0006a683          	lw	a3,0(a3)
   1fffc:	00c686b3          	add	a3,a3,a2
   20000:	00068067          	jr	a3
   20004:	00956933          	or	s2,a0,s1
   20008:	08090263          	beqz	s2,2008c <__multf3+0x1a8>
   2000c:	04048663          	beqz	s1,20058 <__multf3+0x174>
   20010:	00048513          	mv	a0,s1
   20014:	188010ef          	jal	ra,2119c <__clzdi2>
   20018:	0005051b          	sext.w	a0,a0
   2001c:	ff150713          	addi	a4,a0,-15
   20020:	03c00693          	li	a3,60
   20024:	0007079b          	sext.w	a5,a4
   20028:	04e6c063          	blt	a3,a4,20068 <__multf3+0x184>
   2002c:	03d00713          	li	a4,61
   20030:	0037891b          	addiw	s2,a5,3
   20034:	40f707bb          	subw	a5,a4,a5
   20038:	012494b3          	sll	s1,s1,s2
   2003c:	00f457b3          	srl	a5,s0,a5
   20040:	0097e4b3          	or	s1,a5,s1
   20044:	01241933          	sll	s2,s0,s2
   20048:	ffffc9b7          	lui	s3,0xffffc
   2004c:	01198993          	addi	s3,s3,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd8e09>
   20050:	40a989b3          	sub	s3,s3,a0
   20054:	f1dff06f          	j	1ff70 <__multf3+0x8c>
   20058:	144010ef          	jal	ra,2119c <__clzdi2>
   2005c:	0005051b          	sext.w	a0,a0
   20060:	04050513          	addi	a0,a0,64
   20064:	fb9ff06f          	j	2001c <__multf3+0x138>
   20068:	fc37849b          	addiw	s1,a5,-61
   2006c:	009414b3          	sll	s1,s0,s1
   20070:	00000913          	li	s2,0
   20074:	fd5ff06f          	j	20048 <__multf3+0x164>
   20078:	00956933          	or	s2,a0,s1
   2007c:	02090063          	beqz	s2,2009c <__multf3+0x1b8>
   20080:	00050913          	mv	s2,a0
   20084:	00300b93          	li	s7,3
   20088:	eedff06f          	j	1ff74 <__multf3+0x90>
   2008c:	00000493          	li	s1,0
   20090:	00000993          	li	s3,0
   20094:	00100b93          	li	s7,1
   20098:	eddff06f          	j	1ff74 <__multf3+0x90>
   2009c:	00000493          	li	s1,0
   200a0:	00200b93          	li	s7,2
   200a4:	ed1ff06f          	j	1ff74 <__multf3+0x90>
   200a8:	008b67b3          	or	a5,s6,s0
   200ac:	08078463          	beqz	a5,20134 <__multf3+0x250>
   200b0:	04040663          	beqz	s0,200fc <__multf3+0x218>
   200b4:	00040513          	mv	a0,s0
   200b8:	0e4010ef          	jal	ra,2119c <__clzdi2>
   200bc:	0005051b          	sext.w	a0,a0
   200c0:	ff150793          	addi	a5,a0,-15
   200c4:	03c00693          	li	a3,60
   200c8:	0007871b          	sext.w	a4,a5
   200cc:	04f6c263          	blt	a3,a5,20110 <__multf3+0x22c>
   200d0:	03d00693          	li	a3,61
   200d4:	0037079b          	addiw	a5,a4,3
   200d8:	40e6873b          	subw	a4,a3,a4
   200dc:	00f41433          	sll	s0,s0,a5
   200e0:	00eb5733          	srl	a4,s6,a4
   200e4:	00876433          	or	s0,a4,s0
   200e8:	00fb17b3          	sll	a5,s6,a5
   200ec:	ffffc737          	lui	a4,0xffffc
   200f0:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd8e09>
   200f4:	40a70533          	sub	a0,a4,a0
   200f8:	ecdff06f          	j	1ffc4 <__multf3+0xe0>
   200fc:	000b0513          	mv	a0,s6
   20100:	09c010ef          	jal	ra,2119c <__clzdi2>
   20104:	0005051b          	sext.w	a0,a0
   20108:	04050513          	addi	a0,a0,64
   2010c:	fb5ff06f          	j	200c0 <__multf3+0x1dc>
   20110:	fc37041b          	addiw	s0,a4,-61
   20114:	008b1433          	sll	s0,s6,s0
   20118:	00000793          	li	a5,0
   2011c:	fd1ff06f          	j	200ec <__multf3+0x208>
   20120:	008b67b3          	or	a5,s6,s0
   20124:	02078063          	beqz	a5,20144 <__multf3+0x260>
   20128:	000b0793          	mv	a5,s6
   2012c:	00300713          	li	a4,3
   20130:	e99ff06f          	j	1ffc8 <__multf3+0xe4>
   20134:	00000413          	li	s0,0
   20138:	00000513          	li	a0,0
   2013c:	00100713          	li	a4,1
   20140:	e89ff06f          	j	1ffc8 <__multf3+0xe4>
   20144:	00000413          	li	s0,0
   20148:	00200713          	li	a4,2
   2014c:	e7dff06f          	j	1ffc8 <__multf3+0xe4>
   20150:	fff00713          	li	a4,-1
   20154:	01248ab3          	add	s5,s1,s2
   20158:	00878a33          	add	s4,a5,s0
   2015c:	02075713          	srli	a4,a4,0x20
   20160:	012ab2b3          	sltu	t0,s5,s2
   20164:	00fa33b3          	sltu	t2,s4,a5
   20168:	02095b13          	srli	s6,s2,0x20
   2016c:	0207df93          	srli	t6,a5,0x20
   20170:	00e97933          	and	s2,s2,a4
   20174:	00e7f7b3          	and	a5,a5,a4
   20178:	00028f1b          	sext.w	t5,t0
   2017c:	00038e1b          	sext.w	t3,t2
   20180:	00090513          	mv	a0,s2
   20184:	00078593          	mv	a1,a5
   20188:	7f1000ef          	jal	ra,21178 <__muldi3>
   2018c:	00050e93          	mv	t4,a0
   20190:	000f8593          	mv	a1,t6
   20194:	00090513          	mv	a0,s2
   20198:	7e1000ef          	jal	ra,21178 <__muldi3>
   2019c:	00050313          	mv	t1,a0
   201a0:	00078593          	mv	a1,a5
   201a4:	000b0513          	mv	a0,s6
   201a8:	7d1000ef          	jal	ra,21178 <__muldi3>
   201ac:	00050713          	mv	a4,a0
   201b0:	000f8593          	mv	a1,t6
   201b4:	000b0513          	mv	a0,s6
   201b8:	7c1000ef          	jal	ra,21178 <__muldi3>
   201bc:	020ed793          	srli	a5,t4,0x20
   201c0:	00e30333          	add	t1,t1,a4
   201c4:	006787b3          	add	a5,a5,t1
   201c8:	00e7f863          	bgeu	a5,a4,201d8 <__multf3+0x2f4>
   201cc:	00100713          	li	a4,1
   201d0:	02071713          	slli	a4,a4,0x20
   201d4:	00e50533          	add	a0,a0,a4
   201d8:	fff00713          	li	a4,-1
   201dc:	02075713          	srli	a4,a4,0x20
   201e0:	00e7f333          	and	t1,a5,a4
   201e4:	00eefeb3          	and	t4,t4,a4
   201e8:	00eafb33          	and	s6,s5,a4
   201ec:	0207df93          	srli	t6,a5,0x20
   201f0:	00ea7733          	and	a4,s4,a4
   201f4:	02031313          	slli	t1,t1,0x20
   201f8:	00af8fb3          	add	t6,t6,a0
   201fc:	01d30333          	add	t1,t1,t4
   20200:	020ad913          	srli	s2,s5,0x20
   20204:	020a5793          	srli	a5,s4,0x20
   20208:	000b0513          	mv	a0,s6
   2020c:	00070593          	mv	a1,a4
   20210:	769000ef          	jal	ra,21178 <__muldi3>
   20214:	00050e93          	mv	t4,a0
   20218:	00078593          	mv	a1,a5
   2021c:	000b0513          	mv	a0,s6
   20220:	759000ef          	jal	ra,21178 <__muldi3>
   20224:	00050b93          	mv	s7,a0
   20228:	00070593          	mv	a1,a4
   2022c:	00090513          	mv	a0,s2
   20230:	749000ef          	jal	ra,21178 <__muldi3>
   20234:	00050713          	mv	a4,a0
   20238:	00078593          	mv	a1,a5
   2023c:	00090513          	mv	a0,s2
   20240:	739000ef          	jal	ra,21178 <__muldi3>
   20244:	020ed693          	srli	a3,t4,0x20
   20248:	00eb8bb3          	add	s7,s7,a4
   2024c:	017686b3          	add	a3,a3,s7
   20250:	00050b13          	mv	s6,a0
   20254:	00e6f863          	bgeu	a3,a4,20264 <__multf3+0x380>
   20258:	00100793          	li	a5,1
   2025c:	02079793          	slli	a5,a5,0x20
   20260:	00f50b33          	add	s6,a0,a5
   20264:	fff00593          	li	a1,-1
   20268:	0205d593          	srli	a1,a1,0x20
   2026c:	0206d913          	srli	s2,a3,0x20
   20270:	00b6f6b3          	and	a3,a3,a1
   20274:	02069693          	slli	a3,a3,0x20
   20278:	00befeb3          	and	t4,t4,a1
   2027c:	0204dc93          	srli	s9,s1,0x20
   20280:	02045c13          	srli	s8,s0,0x20
   20284:	00b4f4b3          	and	s1,s1,a1
   20288:	00b47433          	and	s0,s0,a1
   2028c:	01d68eb3          	add	t4,a3,t4
   20290:	00048513          	mv	a0,s1
   20294:	00040593          	mv	a1,s0
   20298:	6e1000ef          	jal	ra,21178 <__muldi3>
   2029c:	00050b93          	mv	s7,a0
   202a0:	000c0593          	mv	a1,s8
   202a4:	00048513          	mv	a0,s1
   202a8:	6d1000ef          	jal	ra,21178 <__muldi3>
   202ac:	00050713          	mv	a4,a0
   202b0:	00040593          	mv	a1,s0
   202b4:	000c8513          	mv	a0,s9
   202b8:	6c1000ef          	jal	ra,21178 <__muldi3>
   202bc:	00050793          	mv	a5,a0
   202c0:	000c0593          	mv	a1,s8
   202c4:	000c8513          	mv	a0,s9
   202c8:	6b1000ef          	jal	ra,21178 <__muldi3>
   202cc:	020bd613          	srli	a2,s7,0x20
   202d0:	00f70733          	add	a4,a4,a5
   202d4:	00e60633          	add	a2,a2,a4
   202d8:	00f67863          	bgeu	a2,a5,202e8 <__multf3+0x404>
   202dc:	00100793          	li	a5,1
   202e0:	02079793          	slli	a5,a5,0x20
   202e4:	00f50533          	add	a0,a0,a5
   202e8:	02065693          	srli	a3,a2,0x20
   202ec:	00a687b3          	add	a5,a3,a0
   202f0:	fff00693          	li	a3,-1
   202f4:	0206d693          	srli	a3,a3,0x20
   202f8:	00d67733          	and	a4,a2,a3
   202fc:	00dbfbb3          	and	s7,s7,a3
   20300:	01fe86b3          	add	a3,t4,t6
   20304:	01f6b633          	sltu	a2,a3,t6
   20308:	00c90533          	add	a0,s2,a2
   2030c:	41c005b3          	neg	a1,t3
   20310:	01650533          	add	a0,a0,s6
   20314:	0155f5b3          	and	a1,a1,s5
   20318:	41e00e33          	neg	t3,t5
   2031c:	00a585b3          	add	a1,a1,a0
   20320:	00c53633          	sltu	a2,a0,a2
   20324:	014e7e33          	and	t3,t3,s4
   20328:	0072f433          	and	s0,t0,t2
   2032c:	00be0e33          	add	t3,t3,a1
   20330:	00a5b533          	sltu	a0,a1,a0
   20334:	00860433          	add	s0,a2,s0
   20338:	40668eb3          	sub	t4,a3,t1
   2033c:	00a40433          	add	s0,s0,a0
   20340:	00be35b3          	sltu	a1,t3,a1
   20344:	41fe0633          	sub	a2,t3,t6
   20348:	01d6b533          	sltu	a0,a3,t4
   2034c:	02071713          	slli	a4,a4,0x20
   20350:	00b40433          	add	s0,s0,a1
   20354:	01770733          	add	a4,a4,s7
   20358:	00ce35b3          	sltu	a1,t3,a2
   2035c:	40a60633          	sub	a2,a2,a0
   20360:	00000513          	li	a0,0
   20364:	01d6f663          	bgeu	a3,t4,20370 <__multf3+0x48c>
   20368:	41cf8e33          	sub	t3,t6,t3
   2036c:	001e3513          	seqz	a0,t3
   20370:	00b56e33          	or	t3,a0,a1
   20374:	40ee85b3          	sub	a1,t4,a4
   20378:	40f606b3          	sub	a3,a2,a5
   2037c:	00f40433          	add	s0,s0,a5
   20380:	00beb7b3          	sltu	a5,t4,a1
   20384:	00d63633          	sltu	a2,a2,a3
   20388:	40f707b3          	sub	a5,a4,a5
   2038c:	00000513          	li	a0,0
   20390:	00bef463          	bgeu	t4,a1,20398 <__multf3+0x4b4>
   20394:	0016b513          	seqz	a0,a3
   20398:	00f686b3          	add	a3,a3,a5
   2039c:	00e6b733          	sltu	a4,a3,a4
   203a0:	00870433          	add	s0,a4,s0
   203a4:	41c40433          	sub	s0,s0,t3
   203a8:	00c56633          	or	a2,a0,a2
   203ac:	40c40433          	sub	s0,s0,a2
   203b0:	0336d793          	srli	a5,a3,0x33
   203b4:	00d41413          	slli	s0,s0,0xd
   203b8:	00f46433          	or	s0,s0,a5
   203bc:	00d59793          	slli	a5,a1,0xd
   203c0:	0067e7b3          	or	a5,a5,t1
   203c4:	00f037b3          	snez	a5,a5
   203c8:	0335d593          	srli	a1,a1,0x33
   203cc:	00b7e7b3          	or	a5,a5,a1
   203d0:	00d69693          	slli	a3,a3,0xd
   203d4:	00b41713          	slli	a4,s0,0xb
   203d8:	00d7e7b3          	or	a5,a5,a3
   203dc:	10075c63          	bgez	a4,204f4 <__multf3+0x610>
   203e0:	0017d713          	srli	a4,a5,0x1
   203e4:	0017f793          	andi	a5,a5,1
   203e8:	03f41513          	slli	a0,s0,0x3f
   203ec:	00f767b3          	or	a5,a4,a5
   203f0:	00a7e7b3          	or	a5,a5,a0
   203f4:	00145413          	srli	s0,s0,0x1
   203f8:	00004737          	lui	a4,0x4
   203fc:	fff70713          	addi	a4,a4,-1 # 3fff <main-0xc0b1>
   20400:	00e88733          	add	a4,a7,a4
   20404:	0ee05c63          	blez	a4,204fc <__multf3+0x618>
   20408:	0077f693          	andi	a3,a5,7
   2040c:	02068063          	beqz	a3,2042c <__multf3+0x548>
   20410:	00f7f693          	andi	a3,a5,15
   20414:	00400613          	li	a2,4
   20418:	00c68a63          	beq	a3,a2,2042c <__multf3+0x548>
   2041c:	00478693          	addi	a3,a5,4
   20420:	00f6b7b3          	sltu	a5,a3,a5
   20424:	00f40433          	add	s0,s0,a5
   20428:	00068793          	mv	a5,a3
   2042c:	00b41693          	slli	a3,s0,0xb
   20430:	0006de63          	bgez	a3,2044c <__multf3+0x568>
   20434:	fff00713          	li	a4,-1
   20438:	03471713          	slli	a4,a4,0x34
   2043c:	fff70713          	addi	a4,a4,-1
   20440:	00e47433          	and	s0,s0,a4
   20444:	00004737          	lui	a4,0x4
   20448:	00e88733          	add	a4,a7,a4
   2044c:	000086b7          	lui	a3,0x8
   20450:	ffe68613          	addi	a2,a3,-2 # 7ffe <main-0x80b2>
   20454:	18e64863          	blt	a2,a4,205e4 <__multf3+0x700>
   20458:	03d41513          	slli	a0,s0,0x3d
   2045c:	0037d793          	srli	a5,a5,0x3
   20460:	00f56533          	or	a0,a0,a5
   20464:	00345413          	srli	s0,s0,0x3
   20468:	01041413          	slli	s0,s0,0x10
   2046c:	03171713          	slli	a4,a4,0x31
   20470:	00175713          	srli	a4,a4,0x1
   20474:	01045413          	srli	s0,s0,0x10
   20478:	00e46433          	or	s0,s0,a4
   2047c:	03f81593          	slli	a1,a6,0x3f
   20480:	00b465b3          	or	a1,s0,a1
   20484:	05813083          	ld	ra,88(sp)
   20488:	05013403          	ld	s0,80(sp)
   2048c:	04813483          	ld	s1,72(sp)
   20490:	04013903          	ld	s2,64(sp)
   20494:	03813983          	ld	s3,56(sp)
   20498:	03013a03          	ld	s4,48(sp)
   2049c:	02813a83          	ld	s5,40(sp)
   204a0:	02013b03          	ld	s6,32(sp)
   204a4:	01813b83          	ld	s7,24(sp)
   204a8:	01013c03          	ld	s8,16(sp)
   204ac:	00813c83          	ld	s9,8(sp)
   204b0:	06010113          	addi	sp,sp,96
   204b4:	00008067          	ret
   204b8:	000a8813          	mv	a6,s5
   204bc:	00048413          	mv	s0,s1
   204c0:	00090793          	mv	a5,s2
   204c4:	000b8713          	mv	a4,s7
   204c8:	00200693          	li	a3,2
   204cc:	0ed70463          	beq	a4,a3,205b4 <__multf3+0x6d0>
   204d0:	00300693          	li	a3,3
   204d4:	0ed70a63          	beq	a4,a3,205c8 <__multf3+0x6e4>
   204d8:	00100693          	li	a3,1
   204dc:	f0d71ee3          	bne	a4,a3,203f8 <__multf3+0x514>
   204e0:	00000413          	li	s0,0
   204e4:	00000513          	li	a0,0
   204e8:	0900006f          	j	20578 <__multf3+0x694>
   204ec:	000a0813          	mv	a6,s4
   204f0:	fd9ff06f          	j	204c8 <__multf3+0x5e4>
   204f4:	00098893          	mv	a7,s3
   204f8:	f01ff06f          	j	203f8 <__multf3+0x514>
   204fc:	00100693          	li	a3,1
   20500:	40e68733          	sub	a4,a3,a4
   20504:	07400693          	li	a3,116
   20508:	fce6cce3          	blt	a3,a4,204e0 <__multf3+0x5fc>
   2050c:	03f00693          	li	a3,63
   20510:	0007059b          	sext.w	a1,a4
   20514:	06e6c663          	blt	a3,a4,20580 <__multf3+0x69c>
   20518:	04000713          	li	a4,64
   2051c:	40b7073b          	subw	a4,a4,a1
   20520:	00e41533          	sll	a0,s0,a4
   20524:	00b7d6b3          	srl	a3,a5,a1
   20528:	00e797b3          	sll	a5,a5,a4
   2052c:	00d56533          	or	a0,a0,a3
   20530:	00f037b3          	snez	a5,a5
   20534:	00f567b3          	or	a5,a0,a5
   20538:	00b45433          	srl	s0,s0,a1
   2053c:	0077f713          	andi	a4,a5,7
   20540:	02070063          	beqz	a4,20560 <__multf3+0x67c>
   20544:	00f7f713          	andi	a4,a5,15
   20548:	00400693          	li	a3,4
   2054c:	00d70a63          	beq	a4,a3,20560 <__multf3+0x67c>
   20550:	00478713          	addi	a4,a5,4
   20554:	00f737b3          	sltu	a5,a4,a5
   20558:	00f40433          	add	s0,s0,a5
   2055c:	00070793          	mv	a5,a4
   20560:	00c41713          	slli	a4,s0,0xc
   20564:	08074863          	bltz	a4,205f4 <__multf3+0x710>
   20568:	03d41513          	slli	a0,s0,0x3d
   2056c:	0037d793          	srli	a5,a5,0x3
   20570:	00f56533          	or	a0,a0,a5
   20574:	00345413          	srli	s0,s0,0x3
   20578:	00000713          	li	a4,0
   2057c:	eedff06f          	j	20468 <__multf3+0x584>
   20580:	fc05851b          	addiw	a0,a1,-64
   20584:	04000613          	li	a2,64
   20588:	00a45533          	srl	a0,s0,a0
   2058c:	00000693          	li	a3,0
   20590:	00c70863          	beq	a4,a2,205a0 <__multf3+0x6bc>
   20594:	08000693          	li	a3,128
   20598:	40b686bb          	subw	a3,a3,a1
   2059c:	00d416b3          	sll	a3,s0,a3
   205a0:	00f6e7b3          	or	a5,a3,a5
   205a4:	00f037b3          	snez	a5,a5
   205a8:	00f567b3          	or	a5,a0,a5
   205ac:	00000413          	li	s0,0
   205b0:	f8dff06f          	j	2053c <__multf3+0x658>
   205b4:	00008737          	lui	a4,0x8
   205b8:	00000413          	li	s0,0
   205bc:	00000513          	li	a0,0
   205c0:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   205c4:	ea5ff06f          	j	20468 <__multf3+0x584>
   205c8:	00100413          	li	s0,1
   205cc:	00008737          	lui	a4,0x8
   205d0:	02f41413          	slli	s0,s0,0x2f
   205d4:	00000513          	li	a0,0
   205d8:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   205dc:	00000813          	li	a6,0
   205e0:	e89ff06f          	j	20468 <__multf3+0x584>
   205e4:	00000413          	li	s0,0
   205e8:	00000513          	li	a0,0
   205ec:	fff68713          	addi	a4,a3,-1
   205f0:	e79ff06f          	j	20468 <__multf3+0x584>
   205f4:	00000413          	li	s0,0
   205f8:	00000513          	li	a0,0
   205fc:	00100713          	li	a4,1
   20600:	e69ff06f          	j	20468 <__multf3+0x584>

0000000000020604 <__subtf3>:
   20604:	fff00313          	li	t1,-1
   20608:	fd010113          	addi	sp,sp,-48
   2060c:	01035313          	srli	t1,t1,0x10
   20610:	00008837          	lui	a6,0x8
   20614:	0305de93          	srli	t4,a1,0x30
   20618:	fff80813          	addi	a6,a6,-1 # 7fff <main-0x80b1>
   2061c:	0306d893          	srli	a7,a3,0x30
   20620:	00913c23          	sd	s1,24(sp)
   20624:	03f6de13          	srli	t3,a3,0x3f
   20628:	03f5d493          	srli	s1,a1,0x3f
   2062c:	0066f6b3          	and	a3,a3,t1
   20630:	0065f5b3          	and	a1,a1,t1
   20634:	03d55793          	srli	a5,a0,0x3d
   20638:	03d65713          	srli	a4,a2,0x3d
   2063c:	02813023          	sd	s0,32(sp)
   20640:	010efeb3          	and	t4,t4,a6
   20644:	00359593          	slli	a1,a1,0x3
   20648:	00369693          	slli	a3,a3,0x3
   2064c:	02113423          	sd	ra,40(sp)
   20650:	01213823          	sd	s2,16(sp)
   20654:	01313423          	sd	s3,8(sp)
   20658:	0108f8b3          	and	a7,a7,a6
   2065c:	000e8413          	mv	s0,t4
   20660:	00b7e7b3          	or	a5,a5,a1
   20664:	00351513          	slli	a0,a0,0x3
   20668:	00d766b3          	or	a3,a4,a3
   2066c:	00361613          	slli	a2,a2,0x3
   20670:	01089663          	bne	a7,a6,2067c <__subtf3+0x78>
   20674:	00c6e733          	or	a4,a3,a2
   20678:	00071463          	bnez	a4,20680 <__subtf3+0x7c>
   2067c:	001e4e13          	xori	t3,t3,1
   20680:	411e873b          	subw	a4,t4,a7
   20684:	000085b7          	lui	a1,0x8
   20688:	0007081b          	sext.w	a6,a4
   2068c:	fff58313          	addi	t1,a1,-1 # 7fff <main-0x80b1>
   20690:	2a9e1a63          	bne	t3,s1,20944 <__subtf3+0x340>
   20694:	13005a63          	blez	a6,207c8 <__subtf3+0x1c4>
   20698:	08089c63          	bnez	a7,20730 <__subtf3+0x12c>
   2069c:	00c6e5b3          	or	a1,a3,a2
   206a0:	06058463          	beqz	a1,20708 <__subtf3+0x104>
   206a4:	fff7081b          	addiw	a6,a4,-1
   206a8:	04081e63          	bnez	a6,20704 <__subtf3+0x100>
   206ac:	00c50633          	add	a2,a0,a2
   206b0:	00d787b3          	add	a5,a5,a3
   206b4:	00a63533          	sltu	a0,a2,a0
   206b8:	00a787b3          	add	a5,a5,a0
   206bc:	00060513          	mv	a0,a2
   206c0:	00c79713          	slli	a4,a5,0xc
   206c4:	04075263          	bgez	a4,20708 <__subtf3+0x104>
   206c8:	00008737          	lui	a4,0x8
   206cc:	00140413          	addi	s0,s0,1
   206d0:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   206d4:	60e40c63          	beq	s0,a4,20cec <__subtf3+0x6e8>
   206d8:	fff00593          	li	a1,-1
   206dc:	03359593          	slli	a1,a1,0x33
   206e0:	fff58593          	addi	a1,a1,-1
   206e4:	00b7f5b3          	and	a1,a5,a1
   206e8:	00155813          	srli	a6,a0,0x1
   206ec:	00157513          	andi	a0,a0,1
   206f0:	03f59793          	slli	a5,a1,0x3f
   206f4:	00a86533          	or	a0,a6,a0
   206f8:	00a7e533          	or	a0,a5,a0
   206fc:	0015d793          	srli	a5,a1,0x1
   20700:	0080006f          	j	20708 <__subtf3+0x104>
   20704:	026e9e63          	bne	t4,t1,20740 <__subtf3+0x13c>
   20708:	00757713          	andi	a4,a0,7
   2070c:	5e070463          	beqz	a4,20cf4 <__subtf3+0x6f0>
   20710:	00f57713          	andi	a4,a0,15
   20714:	00400693          	li	a3,4
   20718:	5cd70e63          	beq	a4,a3,20cf4 <__subtf3+0x6f0>
   2071c:	00450593          	addi	a1,a0,4
   20720:	00a5b533          	sltu	a0,a1,a0
   20724:	00a787b3          	add	a5,a5,a0
   20728:	00058513          	mv	a0,a1
   2072c:	5c80006f          	j	20cf4 <__subtf3+0x6f0>
   20730:	fc6e8ce3          	beq	t4,t1,20708 <__subtf3+0x104>
   20734:	00100713          	li	a4,1
   20738:	03371713          	slli	a4,a4,0x33
   2073c:	00e6e6b3          	or	a3,a3,a4
   20740:	07400713          	li	a4,116
   20744:	07074c63          	blt	a4,a6,207bc <__subtf3+0x1b8>
   20748:	03f00713          	li	a4,63
   2074c:	03074e63          	blt	a4,a6,20788 <__subtf3+0x184>
   20750:	04000593          	li	a1,64
   20754:	410585bb          	subw	a1,a1,a6
   20758:	00b69733          	sll	a4,a3,a1
   2075c:	010658b3          	srl	a7,a2,a6
   20760:	00b61633          	sll	a2,a2,a1
   20764:	01176733          	or	a4,a4,a7
   20768:	00c03633          	snez	a2,a2
   2076c:	00c76633          	or	a2,a4,a2
   20770:	0106d6b3          	srl	a3,a3,a6
   20774:	00a60633          	add	a2,a2,a0
   20778:	00f686b3          	add	a3,a3,a5
   2077c:	00a637b3          	sltu	a5,a2,a0
   20780:	00f687b3          	add	a5,a3,a5
   20784:	f39ff06f          	j	206bc <__subtf3+0xb8>
   20788:	fc08071b          	addiw	a4,a6,-64
   2078c:	04000893          	li	a7,64
   20790:	00e6d733          	srl	a4,a3,a4
   20794:	00000593          	li	a1,0
   20798:	01180863          	beq	a6,a7,207a8 <__subtf3+0x1a4>
   2079c:	08000593          	li	a1,128
   207a0:	4105883b          	subw	a6,a1,a6
   207a4:	010695b3          	sll	a1,a3,a6
   207a8:	00c5e633          	or	a2,a1,a2
   207ac:	00c03633          	snez	a2,a2
   207b0:	00c76633          	or	a2,a4,a2
   207b4:	00000693          	li	a3,0
   207b8:	fbdff06f          	j	20774 <__subtf3+0x170>
   207bc:	00c6e633          	or	a2,a3,a2
   207c0:	00c03633          	snez	a2,a2
   207c4:	ff1ff06f          	j	207b4 <__subtf3+0x1b0>
   207c8:	0c080a63          	beqz	a6,2089c <__subtf3+0x298>
   207cc:	060e9c63          	bnez	t4,20844 <__subtf3+0x240>
   207d0:	00a7e5b3          	or	a1,a5,a0
   207d4:	4e058663          	beqz	a1,20cc0 <__subtf3+0x6bc>
   207d8:	fff00593          	li	a1,-1
   207dc:	00b81e63          	bne	a6,a1,207f8 <__subtf3+0x1f4>
   207e0:	00c50533          	add	a0,a0,a2
   207e4:	00d787b3          	add	a5,a5,a3
   207e8:	00c53633          	sltu	a2,a0,a2
   207ec:	00c787b3          	add	a5,a5,a2
   207f0:	00088413          	mv	s0,a7
   207f4:	ecdff06f          	j	206c0 <__subtf3+0xbc>
   207f8:	4c688463          	beq	a7,t1,20cc0 <__subtf3+0x6bc>
   207fc:	fff74713          	not	a4,a4
   20800:	0007071b          	sext.w	a4,a4
   20804:	07400593          	li	a1,116
   20808:	08e5c463          	blt	a1,a4,20890 <__subtf3+0x28c>
   2080c:	03f00593          	li	a1,63
   20810:	04e5c663          	blt	a1,a4,2085c <__subtf3+0x258>
   20814:	04000813          	li	a6,64
   20818:	40e8083b          	subw	a6,a6,a4
   2081c:	00e55333          	srl	t1,a0,a4
   20820:	010795b3          	sll	a1,a5,a6
   20824:	01051533          	sll	a0,a0,a6
   20828:	0065e5b3          	or	a1,a1,t1
   2082c:	00a03533          	snez	a0,a0
   20830:	00a5e533          	or	a0,a1,a0
   20834:	00e7d733          	srl	a4,a5,a4
   20838:	00c50533          	add	a0,a0,a2
   2083c:	00d707b3          	add	a5,a4,a3
   20840:	fa9ff06f          	j	207e8 <__subtf3+0x1e4>
   20844:	46688e63          	beq	a7,t1,20cc0 <__subtf3+0x6bc>
   20848:	00100593          	li	a1,1
   2084c:	03359593          	slli	a1,a1,0x33
   20850:	40e0073b          	negw	a4,a4
   20854:	00b7e7b3          	or	a5,a5,a1
   20858:	fadff06f          	j	20804 <__subtf3+0x200>
   2085c:	fc07059b          	addiw	a1,a4,-64
   20860:	04000313          	li	t1,64
   20864:	00b7d5b3          	srl	a1,a5,a1
   20868:	00000813          	li	a6,0
   2086c:	00670863          	beq	a4,t1,2087c <__subtf3+0x278>
   20870:	08000813          	li	a6,128
   20874:	40e8073b          	subw	a4,a6,a4
   20878:	00e79833          	sll	a6,a5,a4
   2087c:	00a86533          	or	a0,a6,a0
   20880:	00a03533          	snez	a0,a0
   20884:	00a5e533          	or	a0,a1,a0
   20888:	00000713          	li	a4,0
   2088c:	fadff06f          	j	20838 <__subtf3+0x234>
   20890:	00a7e533          	or	a0,a5,a0
   20894:	00a03533          	snez	a0,a0
   20898:	ff1ff06f          	j	20888 <__subtf3+0x284>
   2089c:	001e8813          	addi	a6,t4,1
   208a0:	ffe58593          	addi	a1,a1,-2
   208a4:	00b875b3          	and	a1,a6,a1
   208a8:	06059863          	bnez	a1,20918 <__subtf3+0x314>
   208ac:	00a7e733          	or	a4,a5,a0
   208b0:	040e9263          	bnez	t4,208f4 <__subtf3+0x2f0>
   208b4:	40070e63          	beqz	a4,20cd0 <__subtf3+0x6cc>
   208b8:	00c6e733          	or	a4,a3,a2
   208bc:	e40706e3          	beqz	a4,20708 <__subtf3+0x104>
   208c0:	00c50633          	add	a2,a0,a2
   208c4:	00a63533          	sltu	a0,a2,a0
   208c8:	00d787b3          	add	a5,a5,a3
   208cc:	00a787b3          	add	a5,a5,a0
   208d0:	00c79713          	slli	a4,a5,0xc
   208d4:	00060513          	mv	a0,a2
   208d8:	e20758e3          	bgez	a4,20708 <__subtf3+0x104>
   208dc:	fff00713          	li	a4,-1
   208e0:	03371713          	slli	a4,a4,0x33
   208e4:	fff70713          	addi	a4,a4,-1
   208e8:	00e7f7b3          	and	a5,a5,a4
   208ec:	00100413          	li	s0,1
   208f0:	e19ff06f          	j	20708 <__subtf3+0x104>
   208f4:	3e070463          	beqz	a4,20cdc <__subtf3+0x6d8>
   208f8:	00c6e633          	or	a2,a3,a2
   208fc:	28060863          	beqz	a2,20b8c <__subtf3+0x588>
   20900:	00100793          	li	a5,1
   20904:	00000493          	li	s1,0
   20908:	03279793          	slli	a5,a5,0x32
   2090c:	00000513          	li	a0,0
   20910:	00030413          	mv	s0,t1
   20914:	3e00006f          	j	20cf4 <__subtf3+0x6f0>
   20918:	3c680863          	beq	a6,t1,20ce8 <__subtf3+0x6e4>
   2091c:	00c50633          	add	a2,a0,a2
   20920:	00d786b3          	add	a3,a5,a3
   20924:	00a637b3          	sltu	a5,a2,a0
   20928:	00f686b3          	add	a3,a3,a5
   2092c:	03f69513          	slli	a0,a3,0x3f
   20930:	00165613          	srli	a2,a2,0x1
   20934:	00c56533          	or	a0,a0,a2
   20938:	0016d793          	srli	a5,a3,0x1
   2093c:	00080413          	mv	s0,a6
   20940:	dc9ff06f          	j	20708 <__subtf3+0x104>
   20944:	0f005263          	blez	a6,20a28 <__subtf3+0x424>
   20948:	08089663          	bnez	a7,209d4 <__subtf3+0x3d0>
   2094c:	00c6e5b3          	or	a1,a3,a2
   20950:	da058ce3          	beqz	a1,20708 <__subtf3+0x104>
   20954:	fff7081b          	addiw	a6,a4,-1
   20958:	02081863          	bnez	a6,20988 <__subtf3+0x384>
   2095c:	40c50633          	sub	a2,a0,a2
   20960:	40d787b3          	sub	a5,a5,a3
   20964:	00c53533          	sltu	a0,a0,a2
   20968:	40a787b3          	sub	a5,a5,a0
   2096c:	00060513          	mv	a0,a2
   20970:	00c79713          	slli	a4,a5,0xc
   20974:	d8075ae3          	bgez	a4,20708 <__subtf3+0x104>
   20978:	00d79913          	slli	s2,a5,0xd
   2097c:	00d95913          	srli	s2,s2,0xd
   20980:	00050993          	mv	s3,a0
   20984:	2440006f          	j	20bc8 <__subtf3+0x5c4>
   20988:	d86e80e3          	beq	t4,t1,20708 <__subtf3+0x104>
   2098c:	07400713          	li	a4,116
   20990:	09074663          	blt	a4,a6,20a1c <__subtf3+0x418>
   20994:	03f00713          	li	a4,63
   20998:	05074863          	blt	a4,a6,209e8 <__subtf3+0x3e4>
   2099c:	04000593          	li	a1,64
   209a0:	410585bb          	subw	a1,a1,a6
   209a4:	00b69733          	sll	a4,a3,a1
   209a8:	010658b3          	srl	a7,a2,a6
   209ac:	00b61633          	sll	a2,a2,a1
   209b0:	01176733          	or	a4,a4,a7
   209b4:	00c03633          	snez	a2,a2
   209b8:	00c76633          	or	a2,a4,a2
   209bc:	0106d6b3          	srl	a3,a3,a6
   209c0:	40c50633          	sub	a2,a0,a2
   209c4:	40d786b3          	sub	a3,a5,a3
   209c8:	00c537b3          	sltu	a5,a0,a2
   209cc:	40f687b3          	sub	a5,a3,a5
   209d0:	f9dff06f          	j	2096c <__subtf3+0x368>
   209d4:	d26e8ae3          	beq	t4,t1,20708 <__subtf3+0x104>
   209d8:	00100713          	li	a4,1
   209dc:	03371713          	slli	a4,a4,0x33
   209e0:	00e6e6b3          	or	a3,a3,a4
   209e4:	fa9ff06f          	j	2098c <__subtf3+0x388>
   209e8:	fc08071b          	addiw	a4,a6,-64
   209ec:	04000893          	li	a7,64
   209f0:	00e6d733          	srl	a4,a3,a4
   209f4:	00000593          	li	a1,0
   209f8:	01180863          	beq	a6,a7,20a08 <__subtf3+0x404>
   209fc:	08000593          	li	a1,128
   20a00:	4105883b          	subw	a6,a1,a6
   20a04:	010695b3          	sll	a1,a3,a6
   20a08:	00c5e633          	or	a2,a1,a2
   20a0c:	00c03633          	snez	a2,a2
   20a10:	00c76633          	or	a2,a4,a2
   20a14:	00000693          	li	a3,0
   20a18:	fa9ff06f          	j	209c0 <__subtf3+0x3bc>
   20a1c:	00c6e633          	or	a2,a3,a2
   20a20:	00c03633          	snez	a2,a2
   20a24:	ff1ff06f          	j	20a14 <__subtf3+0x410>
   20a28:	0c080c63          	beqz	a6,20b00 <__subtf3+0x4fc>
   20a2c:	060e9e63          	bnez	t4,20aa8 <__subtf3+0x4a4>
   20a30:	00a7e5b3          	or	a1,a5,a0
   20a34:	34058c63          	beqz	a1,20d8c <__subtf3+0x788>
   20a38:	fff00593          	li	a1,-1
   20a3c:	02b81063          	bne	a6,a1,20a5c <__subtf3+0x458>
   20a40:	40a60533          	sub	a0,a2,a0
   20a44:	40f687b3          	sub	a5,a3,a5
   20a48:	00a63633          	sltu	a2,a2,a0
   20a4c:	40c787b3          	sub	a5,a5,a2
   20a50:	00088413          	mv	s0,a7
   20a54:	000e0493          	mv	s1,t3
   20a58:	f19ff06f          	j	20970 <__subtf3+0x36c>
   20a5c:	32688863          	beq	a7,t1,20d8c <__subtf3+0x788>
   20a60:	fff74713          	not	a4,a4
   20a64:	0007071b          	sext.w	a4,a4
   20a68:	07400593          	li	a1,116
   20a6c:	08e5c463          	blt	a1,a4,20af4 <__subtf3+0x4f0>
   20a70:	03f00593          	li	a1,63
   20a74:	04e5c663          	blt	a1,a4,20ac0 <__subtf3+0x4bc>
   20a78:	04000813          	li	a6,64
   20a7c:	40e8083b          	subw	a6,a6,a4
   20a80:	00e55333          	srl	t1,a0,a4
   20a84:	010795b3          	sll	a1,a5,a6
   20a88:	01051533          	sll	a0,a0,a6
   20a8c:	0065e5b3          	or	a1,a1,t1
   20a90:	00a03533          	snez	a0,a0
   20a94:	00a5e533          	or	a0,a1,a0
   20a98:	00e7d733          	srl	a4,a5,a4
   20a9c:	40a60533          	sub	a0,a2,a0
   20aa0:	40e687b3          	sub	a5,a3,a4
   20aa4:	fa5ff06f          	j	20a48 <__subtf3+0x444>
   20aa8:	2e688263          	beq	a7,t1,20d8c <__subtf3+0x788>
   20aac:	00100593          	li	a1,1
   20ab0:	03359593          	slli	a1,a1,0x33
   20ab4:	40e0073b          	negw	a4,a4
   20ab8:	00b7e7b3          	or	a5,a5,a1
   20abc:	fadff06f          	j	20a68 <__subtf3+0x464>
   20ac0:	fc07059b          	addiw	a1,a4,-64
   20ac4:	04000313          	li	t1,64
   20ac8:	00b7d5b3          	srl	a1,a5,a1
   20acc:	00000813          	li	a6,0
   20ad0:	00670863          	beq	a4,t1,20ae0 <__subtf3+0x4dc>
   20ad4:	08000813          	li	a6,128
   20ad8:	40e8073b          	subw	a4,a6,a4
   20adc:	00e79833          	sll	a6,a5,a4
   20ae0:	00a86533          	or	a0,a6,a0
   20ae4:	00a03533          	snez	a0,a0
   20ae8:	00a5e533          	or	a0,a1,a0
   20aec:	00000713          	li	a4,0
   20af0:	fadff06f          	j	20a9c <__subtf3+0x498>
   20af4:	00a7e533          	or	a0,a5,a0
   20af8:	00a03533          	snez	a0,a0
   20afc:	ff1ff06f          	j	20aec <__subtf3+0x4e8>
   20b00:	001e8713          	addi	a4,t4,1
   20b04:	ffe58593          	addi	a1,a1,-2
   20b08:	00b775b3          	and	a1,a4,a1
   20b0c:	08059863          	bnez	a1,20b9c <__subtf3+0x598>
   20b10:	00a7e5b3          	or	a1,a5,a0
   20b14:	00c6e733          	or	a4,a3,a2
   20b18:	060e9063          	bnez	t4,20b78 <__subtf3+0x574>
   20b1c:	00059c63          	bnez	a1,20b34 <__subtf3+0x530>
   20b20:	26070e63          	beqz	a4,20d9c <__subtf3+0x798>
   20b24:	00068793          	mv	a5,a3
   20b28:	00060513          	mv	a0,a2
   20b2c:	000e0493          	mv	s1,t3
   20b30:	bd9ff06f          	j	20708 <__subtf3+0x104>
   20b34:	bc070ae3          	beqz	a4,20708 <__subtf3+0x104>
   20b38:	40c505b3          	sub	a1,a0,a2
   20b3c:	00b53833          	sltu	a6,a0,a1
   20b40:	40d78733          	sub	a4,a5,a3
   20b44:	41070733          	sub	a4,a4,a6
   20b48:	00c71813          	slli	a6,a4,0xc
   20b4c:	00085c63          	bgez	a6,20b64 <__subtf3+0x560>
   20b50:	40a60533          	sub	a0,a2,a0
   20b54:	40f687b3          	sub	a5,a3,a5
   20b58:	00a63633          	sltu	a2,a2,a0
   20b5c:	40c787b3          	sub	a5,a5,a2
   20b60:	fcdff06f          	j	20b2c <__subtf3+0x528>
   20b64:	00e5e533          	or	a0,a1,a4
   20b68:	24050263          	beqz	a0,20dac <__subtf3+0x7a8>
   20b6c:	00070793          	mv	a5,a4
   20b70:	00058513          	mv	a0,a1
   20b74:	b95ff06f          	j	20708 <__subtf3+0x104>
   20b78:	00059e63          	bnez	a1,20b94 <__subtf3+0x590>
   20b7c:	22070c63          	beqz	a4,20db4 <__subtf3+0x7b0>
   20b80:	00068793          	mv	a5,a3
   20b84:	00060513          	mv	a0,a2
   20b88:	000e0493          	mv	s1,t3
   20b8c:	00030413          	mv	s0,t1
   20b90:	b79ff06f          	j	20708 <__subtf3+0x104>
   20b94:	fe070ce3          	beqz	a4,20b8c <__subtf3+0x588>
   20b98:	d69ff06f          	j	20900 <__subtf3+0x2fc>
   20b9c:	40c509b3          	sub	s3,a0,a2
   20ba0:	01353733          	sltu	a4,a0,s3
   20ba4:	40d78933          	sub	s2,a5,a3
   20ba8:	40e90933          	sub	s2,s2,a4
   20bac:	00c91713          	slli	a4,s2,0xc
   20bb0:	08075863          	bgez	a4,20c40 <__subtf3+0x63c>
   20bb4:	40a609b3          	sub	s3,a2,a0
   20bb8:	40f687b3          	sub	a5,a3,a5
   20bbc:	01363633          	sltu	a2,a2,s3
   20bc0:	40c78933          	sub	s2,a5,a2
   20bc4:	000e0493          	mv	s1,t3
   20bc8:	08090663          	beqz	s2,20c54 <__subtf3+0x650>
   20bcc:	00090513          	mv	a0,s2
   20bd0:	5cc000ef          	jal	ra,2119c <__clzdi2>
   20bd4:	0005051b          	sext.w	a0,a0
   20bd8:	ff45069b          	addiw	a3,a0,-12
   20bdc:	03f00793          	li	a5,63
   20be0:	00068713          	mv	a4,a3
   20be4:	08d7c063          	blt	a5,a3,20c64 <__subtf3+0x660>
   20be8:	04000613          	li	a2,64
   20bec:	40d6063b          	subw	a2,a2,a3
   20bf0:	00d917b3          	sll	a5,s2,a3
   20bf4:	00c9d633          	srl	a2,s3,a2
   20bf8:	00f66633          	or	a2,a2,a5
   20bfc:	00d99533          	sll	a0,s3,a3
   20c00:	0a86c463          	blt	a3,s0,20ca8 <__subtf3+0x6a4>
   20c04:	4087073b          	subw	a4,a4,s0
   20c08:	0017079b          	addiw	a5,a4,1
   20c0c:	03f00693          	li	a3,63
   20c10:	06f6c263          	blt	a3,a5,20c74 <__subtf3+0x670>
   20c14:	04000693          	li	a3,64
   20c18:	40f686bb          	subw	a3,a3,a5
   20c1c:	00f555b3          	srl	a1,a0,a5
   20c20:	00d61733          	sll	a4,a2,a3
   20c24:	00d51533          	sll	a0,a0,a3
   20c28:	00b76733          	or	a4,a4,a1
   20c2c:	00a03533          	snez	a0,a0
   20c30:	00a76533          	or	a0,a4,a0
   20c34:	00f657b3          	srl	a5,a2,a5
   20c38:	00000413          	li	s0,0
   20c3c:	acdff06f          	j	20708 <__subtf3+0x104>
   20c40:	0129e533          	or	a0,s3,s2
   20c44:	f80512e3          	bnez	a0,20bc8 <__subtf3+0x5c4>
   20c48:	00000793          	li	a5,0
   20c4c:	00000413          	li	s0,0
   20c50:	1540006f          	j	20da4 <__subtf3+0x7a0>
   20c54:	00098513          	mv	a0,s3
   20c58:	544000ef          	jal	ra,2119c <__clzdi2>
   20c5c:	0405051b          	addiw	a0,a0,64
   20c60:	f79ff06f          	j	20bd8 <__subtf3+0x5d4>
   20c64:	fb45051b          	addiw	a0,a0,-76
   20c68:	00a99633          	sll	a2,s3,a0
   20c6c:	00000513          	li	a0,0
   20c70:	f91ff06f          	j	20c00 <__subtf3+0x5fc>
   20c74:	fc17071b          	addiw	a4,a4,-63
   20c78:	04000813          	li	a6,64
   20c7c:	00e65733          	srl	a4,a2,a4
   20c80:	00000693          	li	a3,0
   20c84:	01078863          	beq	a5,a6,20c94 <__subtf3+0x690>
   20c88:	08000693          	li	a3,128
   20c8c:	40f686bb          	subw	a3,a3,a5
   20c90:	00d616b3          	sll	a3,a2,a3
   20c94:	00d56533          	or	a0,a0,a3
   20c98:	00a03533          	snez	a0,a0
   20c9c:	00a76533          	or	a0,a4,a0
   20ca0:	00000793          	li	a5,0
   20ca4:	f95ff06f          	j	20c38 <__subtf3+0x634>
   20ca8:	fff00793          	li	a5,-1
   20cac:	03379793          	slli	a5,a5,0x33
   20cb0:	fff78793          	addi	a5,a5,-1
   20cb4:	40d40433          	sub	s0,s0,a3
   20cb8:	00f677b3          	and	a5,a2,a5
   20cbc:	a4dff06f          	j	20708 <__subtf3+0x104>
   20cc0:	00068793          	mv	a5,a3
   20cc4:	00060513          	mv	a0,a2
   20cc8:	00088413          	mv	s0,a7
   20ccc:	a3dff06f          	j	20708 <__subtf3+0x104>
   20cd0:	00068793          	mv	a5,a3
   20cd4:	00060513          	mv	a0,a2
   20cd8:	a31ff06f          	j	20708 <__subtf3+0x104>
   20cdc:	00068793          	mv	a5,a3
   20ce0:	00060513          	mv	a0,a2
   20ce4:	ea9ff06f          	j	20b8c <__subtf3+0x588>
   20ce8:	00080413          	mv	s0,a6
   20cec:	00000793          	li	a5,0
   20cf0:	00000513          	li	a0,0
   20cf4:	00c79713          	slli	a4,a5,0xc
   20cf8:	02075263          	bgez	a4,20d1c <__subtf3+0x718>
   20cfc:	00008737          	lui	a4,0x8
   20d00:	00140413          	addi	s0,s0,1
   20d04:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   20d08:	0ce40063          	beq	s0,a4,20dc8 <__subtf3+0x7c4>
   20d0c:	fff00713          	li	a4,-1
   20d10:	03371713          	slli	a4,a4,0x33
   20d14:	fff70713          	addi	a4,a4,-1
   20d18:	00e7f7b3          	and	a5,a5,a4
   20d1c:	03d79713          	slli	a4,a5,0x3d
   20d20:	00355513          	srli	a0,a0,0x3
   20d24:	00a76533          	or	a0,a4,a0
   20d28:	00008737          	lui	a4,0x8
   20d2c:	fff70713          	addi	a4,a4,-1 # 7fff <main-0x80b1>
   20d30:	0037d793          	srli	a5,a5,0x3
   20d34:	02e41063          	bne	s0,a4,20d54 <__subtf3+0x750>
   20d38:	00f56533          	or	a0,a0,a5
   20d3c:	00000793          	li	a5,0
   20d40:	00050a63          	beqz	a0,20d54 <__subtf3+0x750>
   20d44:	00100793          	li	a5,1
   20d48:	02f79793          	slli	a5,a5,0x2f
   20d4c:	00000513          	li	a0,0
   20d50:	00000493          	li	s1,0
   20d54:	03141713          	slli	a4,s0,0x31
   20d58:	02813083          	ld	ra,40(sp)
   20d5c:	02013403          	ld	s0,32(sp)
   20d60:	01079793          	slli	a5,a5,0x10
   20d64:	00175713          	srli	a4,a4,0x1
   20d68:	0107d793          	srli	a5,a5,0x10
   20d6c:	03f49593          	slli	a1,s1,0x3f
   20d70:	00e7e7b3          	or	a5,a5,a4
   20d74:	01813483          	ld	s1,24(sp)
   20d78:	01013903          	ld	s2,16(sp)
   20d7c:	00813983          	ld	s3,8(sp)
   20d80:	00b7e5b3          	or	a1,a5,a1
   20d84:	03010113          	addi	sp,sp,48
   20d88:	00008067          	ret
   20d8c:	00068793          	mv	a5,a3
   20d90:	00060513          	mv	a0,a2
   20d94:	00088413          	mv	s0,a7
   20d98:	d95ff06f          	j	20b2c <__subtf3+0x528>
   20d9c:	00000793          	li	a5,0
   20da0:	00000513          	li	a0,0
   20da4:	00000493          	li	s1,0
   20da8:	f4dff06f          	j	20cf4 <__subtf3+0x6f0>
   20dac:	00000793          	li	a5,0
   20db0:	ff5ff06f          	j	20da4 <__subtf3+0x7a0>
   20db4:	00100793          	li	a5,1
   20db8:	00000513          	li	a0,0
   20dbc:	00000493          	li	s1,0
   20dc0:	03279793          	slli	a5,a5,0x32
   20dc4:	b4dff06f          	j	20910 <__subtf3+0x30c>
   20dc8:	00000793          	li	a5,0
   20dcc:	00000513          	li	a0,0
   20dd0:	f4dff06f          	j	20d1c <__subtf3+0x718>

0000000000020dd4 <__fixtfsi>:
   20dd4:	00159513          	slli	a0,a1,0x1
   20dd8:	00004737          	lui	a4,0x4
   20ddc:	03155793          	srli	a5,a0,0x31
   20de0:	ffe70613          	addi	a2,a4,-2 # 3ffe <main-0xc0b2>
   20de4:	03f5d693          	srli	a3,a1,0x3f
   20de8:	00000513          	li	a0,0
   20dec:	04f65663          	bge	a2,a5,20e38 <__fixtfsi+0x64>
   20df0:	01d70713          	addi	a4,a4,29
   20df4:	00f75a63          	bge	a4,a5,20e08 <__fixtfsi+0x34>
   20df8:	800005b7          	lui	a1,0x80000
   20dfc:	fff5c593          	not	a1,a1
   20e00:	00d5853b          	addw	a0,a1,a3
   20e04:	00008067          	ret
   20e08:	01059593          	slli	a1,a1,0x10
   20e0c:	00100513          	li	a0,1
   20e10:	03051513          	slli	a0,a0,0x30
   20e14:	0105d593          	srli	a1,a1,0x10
   20e18:	00a5e5b3          	or	a1,a1,a0
   20e1c:	00004537          	lui	a0,0x4
   20e20:	02f5051b          	addiw	a0,a0,47
   20e24:	40f5053b          	subw	a0,a0,a5
   20e28:	00a5d5b3          	srl	a1,a1,a0
   20e2c:	0005851b          	sext.w	a0,a1
   20e30:	00068463          	beqz	a3,20e38 <__fixtfsi+0x64>
   20e34:	40a0053b          	negw	a0,a0
   20e38:	00008067          	ret

0000000000020e3c <__floatsitf>:
   20e3c:	fe010113          	addi	sp,sp,-32
   20e40:	00113c23          	sd	ra,24(sp)
   20e44:	00813823          	sd	s0,16(sp)
   20e48:	00913423          	sd	s1,8(sp)
   20e4c:	06050863          	beqz	a0,20ebc <__floatsitf+0x80>
   20e50:	0005079b          	sext.w	a5,a0
   20e54:	03f55493          	srli	s1,a0,0x3f
   20e58:	00055463          	bgez	a0,20e60 <__floatsitf+0x24>
   20e5c:	40f007bb          	negw	a5,a5
   20e60:	02079413          	slli	s0,a5,0x20
   20e64:	02045413          	srli	s0,s0,0x20
   20e68:	00040513          	mv	a0,s0
   20e6c:	330000ef          	jal	ra,2119c <__clzdi2>
   20e70:	00004737          	lui	a4,0x4
   20e74:	03e7079b          	addiw	a5,a4,62
   20e78:	40a785bb          	subw	a1,a5,a0
   20e7c:	02f7071b          	addiw	a4,a4,47
   20e80:	40b7053b          	subw	a0,a4,a1
   20e84:	00a41533          	sll	a0,s0,a0
   20e88:	01813083          	ld	ra,24(sp)
   20e8c:	01013403          	ld	s0,16(sp)
   20e90:	01051513          	slli	a0,a0,0x10
   20e94:	03159593          	slli	a1,a1,0x31
   20e98:	01055513          	srli	a0,a0,0x10
   20e9c:	0015d593          	srli	a1,a1,0x1
   20ea0:	03f49493          	slli	s1,s1,0x3f
   20ea4:	00b565b3          	or	a1,a0,a1
   20ea8:	0095e5b3          	or	a1,a1,s1
   20eac:	00000513          	li	a0,0
   20eb0:	00813483          	ld	s1,8(sp)
   20eb4:	02010113          	addi	sp,sp,32
   20eb8:	00008067          	ret
   20ebc:	00000513          	li	a0,0
   20ec0:	00000593          	li	a1,0
   20ec4:	00000493          	li	s1,0
   20ec8:	fc1ff06f          	j	20e88 <__floatsitf+0x4c>

0000000000020ecc <__extenddftf2>:
   20ecc:	03455793          	srli	a5,a0,0x34
   20ed0:	7ff7f793          	andi	a5,a5,2047
   20ed4:	fe010113          	addi	sp,sp,-32
   20ed8:	00178713          	addi	a4,a5,1
   20edc:	00813823          	sd	s0,16(sp)
   20ee0:	00913423          	sd	s1,8(sp)
   20ee4:	00c51413          	slli	s0,a0,0xc
   20ee8:	00113c23          	sd	ra,24(sp)
   20eec:	7fe77713          	andi	a4,a4,2046
   20ef0:	00c45413          	srli	s0,s0,0xc
   20ef4:	03f55493          	srli	s1,a0,0x3f
   20ef8:	04070663          	beqz	a4,20f44 <__extenddftf2+0x78>
   20efc:	00004737          	lui	a4,0x4
   20f00:	c0070713          	addi	a4,a4,-1024 # 3c00 <main-0xc4b0>
   20f04:	00e787b3          	add	a5,a5,a4
   20f08:	00445713          	srli	a4,s0,0x4
   20f0c:	03c41413          	slli	s0,s0,0x3c
   20f10:	00040513          	mv	a0,s0
   20f14:	01813083          	ld	ra,24(sp)
   20f18:	01013403          	ld	s0,16(sp)
   20f1c:	01071713          	slli	a4,a4,0x10
   20f20:	03179793          	slli	a5,a5,0x31
   20f24:	0017d793          	srli	a5,a5,0x1
   20f28:	01075713          	srli	a4,a4,0x10
   20f2c:	03f49593          	slli	a1,s1,0x3f
   20f30:	00f767b3          	or	a5,a4,a5
   20f34:	00813483          	ld	s1,8(sp)
   20f38:	00b7e5b3          	or	a1,a5,a1
   20f3c:	02010113          	addi	sp,sp,32
   20f40:	00008067          	ret
   20f44:	04079a63          	bnez	a5,20f98 <__extenddftf2+0xcc>
   20f48:	00000713          	li	a4,0
   20f4c:	fc0402e3          	beqz	s0,20f10 <__extenddftf2+0x44>
   20f50:	00040513          	mv	a0,s0
   20f54:	248000ef          	jal	ra,2119c <__clzdi2>
   20f58:	0005071b          	sext.w	a4,a0
   20f5c:	00e00793          	li	a5,14
   20f60:	02e7c463          	blt	a5,a4,20f88 <__extenddftf2+0xbc>
   20f64:	00f00713          	li	a4,15
   20f68:	40a7073b          	subw	a4,a4,a0
   20f6c:	0315079b          	addiw	a5,a0,49
   20f70:	00e45733          	srl	a4,s0,a4
   20f74:	00f41433          	sll	s0,s0,a5
   20f78:	000047b7          	lui	a5,0x4
   20f7c:	c0c7879b          	addiw	a5,a5,-1012
   20f80:	40a787bb          	subw	a5,a5,a0
   20f84:	f8dff06f          	j	20f10 <__extenddftf2+0x44>
   20f88:	ff15071b          	addiw	a4,a0,-15
   20f8c:	00e41733          	sll	a4,s0,a4
   20f90:	00000413          	li	s0,0
   20f94:	fe5ff06f          	j	20f78 <__extenddftf2+0xac>
   20f98:	00000713          	li	a4,0
   20f9c:	00040c63          	beqz	s0,20fb4 <__extenddftf2+0xe8>
   20fa0:	00100793          	li	a5,1
   20fa4:	00445713          	srli	a4,s0,0x4
   20fa8:	02f79793          	slli	a5,a5,0x2f
   20fac:	00f76733          	or	a4,a4,a5
   20fb0:	03c41413          	slli	s0,s0,0x3c
   20fb4:	000087b7          	lui	a5,0x8
   20fb8:	fff78793          	addi	a5,a5,-1 # 7fff <main-0x80b1>
   20fbc:	f55ff06f          	j	20f10 <__extenddftf2+0x44>

0000000000020fc0 <__trunctfdf2>:
   20fc0:	00008837          	lui	a6,0x8
   20fc4:	fff80793          	addi	a5,a6,-1 # 7fff <main-0x80b1>
   20fc8:	0305d713          	srli	a4,a1,0x30
   20fcc:	03f5d693          	srli	a3,a1,0x3f
   20fd0:	01059593          	slli	a1,a1,0x10
   20fd4:	00f77733          	and	a4,a4,a5
   20fd8:	00d5d793          	srli	a5,a1,0xd
   20fdc:	03d55593          	srli	a1,a0,0x3d
   20fe0:	00f5e5b3          	or	a1,a1,a5
   20fe4:	ffe80813          	addi	a6,a6,-2
   20fe8:	00170793          	addi	a5,a4,1
   20fec:	0107f833          	and	a6,a5,a6
   20ff0:	00351613          	slli	a2,a0,0x3
   20ff4:	0c080263          	beqz	a6,210b8 <__trunctfdf2+0xf8>
   20ff8:	ffffc7b7          	lui	a5,0xffffc
   20ffc:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd91f8>
   21000:	00f70733          	add	a4,a4,a5
   21004:	7fe00793          	li	a5,2046
   21008:	0ee7c263          	blt	a5,a4,210ec <__trunctfdf2+0x12c>
   2100c:	08e04863          	bgtz	a4,2109c <__trunctfdf2+0xdc>
   21010:	fcc00793          	li	a5,-52
   21014:	14f74063          	blt	a4,a5,21154 <__trunctfdf2+0x194>
   21018:	00100793          	li	a5,1
   2101c:	03379793          	slli	a5,a5,0x33
   21020:	00f5e5b3          	or	a1,a1,a5
   21024:	03d00793          	li	a5,61
   21028:	40e787b3          	sub	a5,a5,a4
   2102c:	0007051b          	sext.w	a0,a4
   21030:	03f00713          	li	a4,63
   21034:	02f74c63          	blt	a4,a5,2106c <__trunctfdf2+0xac>
   21038:	03d00793          	li	a5,61
   2103c:	0035071b          	addiw	a4,a0,3
   21040:	40a787bb          	subw	a5,a5,a0
   21044:	00f657b3          	srl	a5,a2,a5
   21048:	00e61633          	sll	a2,a2,a4
   2104c:	00c03633          	snez	a2,a2
   21050:	00c7e7b3          	or	a5,a5,a2
   21054:	00e595b3          	sll	a1,a1,a4
   21058:	00f5e7b3          	or	a5,a1,a5
   2105c:	00000713          	li	a4,0
   21060:	0077f613          	andi	a2,a5,7
   21064:	08060863          	beqz	a2,210f4 <__trunctfdf2+0x134>
   21068:	0f40006f          	j	2115c <__trunctfdf2+0x19c>
   2106c:	ffd00713          	li	a4,-3
   21070:	40a7073b          	subw	a4,a4,a0
   21074:	04000893          	li	a7,64
   21078:	00e5d733          	srl	a4,a1,a4
   2107c:	00000813          	li	a6,0
   21080:	01178663          	beq	a5,a7,2108c <__trunctfdf2+0xcc>
   21084:	0435079b          	addiw	a5,a0,67
   21088:	00f59833          	sll	a6,a1,a5
   2108c:	00c867b3          	or	a5,a6,a2
   21090:	00f037b3          	snez	a5,a5
   21094:	00f767b3          	or	a5,a4,a5
   21098:	fc5ff06f          	j	2105c <__trunctfdf2+0x9c>
   2109c:	00751793          	slli	a5,a0,0x7
   210a0:	00f037b3          	snez	a5,a5
   210a4:	03c65613          	srli	a2,a2,0x3c
   210a8:	00c7e7b3          	or	a5,a5,a2
   210ac:	00459593          	slli	a1,a1,0x4
   210b0:	00f5e7b3          	or	a5,a1,a5
   210b4:	fadff06f          	j	21060 <__trunctfdf2+0xa0>
   210b8:	00c5e7b3          	or	a5,a1,a2
   210bc:	00071663          	bnez	a4,210c8 <__trunctfdf2+0x108>
   210c0:	00f037b3          	snez	a5,a5
   210c4:	f9dff06f          	j	21060 <__trunctfdf2+0xa0>
   210c8:	7ff00713          	li	a4,2047
   210cc:	02078463          	beqz	a5,210f4 <__trunctfdf2+0x134>
   210d0:	03c65613          	srli	a2,a2,0x3c
   210d4:	00459593          	slli	a1,a1,0x4
   210d8:	00c5e5b3          	or	a1,a1,a2
   210dc:	00100793          	li	a5,1
   210e0:	ff85f593          	andi	a1,a1,-8
   210e4:	03679793          	slli	a5,a5,0x36
   210e8:	fc9ff06f          	j	210b0 <__trunctfdf2+0xf0>
   210ec:	00000793          	li	a5,0
   210f0:	7ff00713          	li	a4,2047
   210f4:	00879613          	slli	a2,a5,0x8
   210f8:	02065063          	bgez	a2,21118 <__trunctfdf2+0x158>
   210fc:	00170713          	addi	a4,a4,1
   21100:	7ff00613          	li	a2,2047
   21104:	06c70663          	beq	a4,a2,21170 <__trunctfdf2+0x1b0>
   21108:	fff00613          	li	a2,-1
   2110c:	03761613          	slli	a2,a2,0x37
   21110:	fff60613          	addi	a2,a2,-1
   21114:	00c7f7b3          	and	a5,a5,a2
   21118:	7ff00613          	li	a2,2047
   2111c:	0037d793          	srli	a5,a5,0x3
   21120:	00c71a63          	bne	a4,a2,21134 <__trunctfdf2+0x174>
   21124:	00078863          	beqz	a5,21134 <__trunctfdf2+0x174>
   21128:	00100793          	li	a5,1
   2112c:	03379793          	slli	a5,a5,0x33
   21130:	00000693          	li	a3,0
   21134:	00c79793          	slli	a5,a5,0xc
   21138:	7ff77713          	andi	a4,a4,2047
   2113c:	03471713          	slli	a4,a4,0x34
   21140:	00c7d793          	srli	a5,a5,0xc
   21144:	03f69513          	slli	a0,a3,0x3f
   21148:	00e7e7b3          	or	a5,a5,a4
   2114c:	00a7e533          	or	a0,a5,a0
   21150:	00008067          	ret
   21154:	00100793          	li	a5,1
   21158:	00000713          	li	a4,0
   2115c:	00f7f613          	andi	a2,a5,15
   21160:	00400593          	li	a1,4
   21164:	f8b608e3          	beq	a2,a1,210f4 <__trunctfdf2+0x134>
   21168:	00478793          	addi	a5,a5,4
   2116c:	f89ff06f          	j	210f4 <__trunctfdf2+0x134>
   21170:	00000793          	li	a5,0
   21174:	fa5ff06f          	j	21118 <__trunctfdf2+0x158>

0000000000021178 <__muldi3>:
   21178:	00050613          	mv	a2,a0
   2117c:	00000513          	li	a0,0
   21180:	0015f693          	andi	a3,a1,1
   21184:	00068463          	beqz	a3,2118c <__muldi3+0x14>
   21188:	00c50533          	add	a0,a0,a2
   2118c:	0015d593          	srli	a1,a1,0x1
   21190:	00161613          	slli	a2,a2,0x1
   21194:	fe0596e3          	bnez	a1,21180 <__muldi3+0x8>
   21198:	00008067          	ret

000000000002119c <__clzdi2>:
   2119c:	03800793          	li	a5,56
   211a0:	00f55733          	srl	a4,a0,a5
   211a4:	0ff77713          	andi	a4,a4,255
   211a8:	00071663          	bnez	a4,211b4 <__clzdi2+0x18>
   211ac:	ff878793          	addi	a5,a5,-8
   211b0:	fe0798e3          	bnez	a5,211a0 <__clzdi2+0x4>
   211b4:	04000713          	li	a4,64
   211b8:	40f70733          	sub	a4,a4,a5
   211bc:	00f557b3          	srl	a5,a0,a5
   211c0:	00001517          	auipc	a0,0x1
   211c4:	cd050513          	addi	a0,a0,-816 # 21e90 <__clz_tab>
   211c8:	00f507b3          	add	a5,a0,a5
   211cc:	0007c503          	lbu	a0,0(a5)
   211d0:	40a7053b          	subw	a0,a4,a0
   211d4:	00008067          	ret
