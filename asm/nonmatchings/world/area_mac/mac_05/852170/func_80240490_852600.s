.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240490_852600
/* 852600 80240490 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 852604 80240494 AFB50024 */  sw        $s5, 0x24($sp)
/* 852608 80240498 0080A82D */  daddu     $s5, $a0, $zero
/* 85260C 8024049C AFBF002C */  sw        $ra, 0x2c($sp)
/* 852610 802404A0 AFB60028 */  sw        $s6, 0x28($sp)
/* 852614 802404A4 AFB40020 */  sw        $s4, 0x20($sp)
/* 852618 802404A8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 85261C 802404AC AFB20018 */  sw        $s2, 0x18($sp)
/* 852620 802404B0 AFB10014 */  sw        $s1, 0x14($sp)
/* 852624 802404B4 AFB00010 */  sw        $s0, 0x10($sp)
/* 852628 802404B8 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 85262C 802404BC F7B60038 */  sdc1      $f22, 0x38($sp)
/* 852630 802404C0 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 852634 802404C4 8EB30148 */  lw        $s3, 0x148($s5)
/* 852638 802404C8 86640008 */  lh        $a0, 8($s3)
/* 85263C 802404CC 0C00EABB */  jal       get_npc_unsafe
/* 852640 802404D0 00A0B02D */   daddu    $s6, $a1, $zero
/* 852644 802404D4 0040A02D */  daddu     $s4, $v0, $zero
/* 852648 802404D8 AEA00074 */  sw        $zero, 0x74($s5)
/* 85264C 802404DC C6980038 */  lwc1      $f24, 0x38($s4)
/* 852650 802404E0 C6960040 */  lwc1      $f22, 0x40($s4)
/* 852654 802404E4 0000902D */  daddu     $s2, $zero, $zero
/* 852658 802404E8 AEA00078 */  sw        $zero, 0x78($s5)
/* 85265C 802404EC 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 852660 802404F0 8C620000 */  lw        $v0, ($v1)
/* 852664 802404F4 3C0146FF */  lui       $at, 0x46ff
/* 852668 802404F8 3421FE00 */  ori       $at, $at, 0xfe00
/* 85266C 802404FC 4481A000 */  mtc1      $at, $f20
/* 852670 80240500 18400018 */  blez      $v0, .L80240564
/* 852674 80240504 0240802D */   daddu    $s0, $s2, $zero
/* 852678 80240508 0240882D */  daddu     $s1, $s2, $zero
.L8024050C:
/* 85267C 8024050C 02231021 */  addu      $v0, $s1, $v1
/* 852680 80240510 4600C306 */  mov.s     $f12, $f24
/* 852684 80240514 C4440004 */  lwc1      $f4, 4($v0)
/* 852688 80240518 46802120 */  cvt.s.w   $f4, $f4
/* 85268C 8024051C 44062000 */  mfc1      $a2, $f4
/* 852690 80240520 C444000C */  lwc1      $f4, 0xc($v0)
/* 852694 80240524 46802120 */  cvt.s.w   $f4, $f4
/* 852698 80240528 44072000 */  mfc1      $a3, $f4
/* 85269C 8024052C 0C00A7B5 */  jal       dist2D
/* 8526A0 80240530 4600B386 */   mov.s    $f14, $f22
/* 8526A4 80240534 4614003C */  c.lt.s    $f0, $f20
/* 8526A8 80240538 00000000 */  nop
/* 8526AC 8024053C 45000003 */  bc1f      .L8024054C
/* 8526B0 80240540 2631000C */   addiu    $s1, $s1, 0xc
/* 8526B4 80240544 46000506 */  mov.s     $f20, $f0
/* 8526B8 80240548 AEB20078 */  sw        $s2, 0x78($s5)
.L8024054C:
/* 8526BC 8024054C 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 8526C0 80240550 26100001 */  addiu     $s0, $s0, 1
/* 8526C4 80240554 8C620000 */  lw        $v0, ($v1)
/* 8526C8 80240558 0202102A */  slt       $v0, $s0, $v0
/* 8526CC 8024055C 1440FFEB */  bnez      $v0, .L8024050C
/* 8526D0 80240560 26520001 */   addiu    $s2, $s2, 1
.L80240564:
/* 8526D4 80240564 8E6200CC */  lw        $v0, 0xcc($s3)
/* 8526D8 80240568 8C420004 */  lw        $v0, 4($v0)
/* 8526DC 8024056C AE820028 */  sw        $v0, 0x28($s4)
/* 8526E0 80240570 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 8526E4 80240574 8C42007C */  lw        $v0, 0x7c($v0)
/* 8526E8 80240578 04410004 */  bgez      $v0, .L8024058C
/* 8526EC 8024057C 00000000 */   nop
/* 8526F0 80240580 C6C00000 */  lwc1      $f0, ($s6)
/* 8526F4 80240584 0809016B */  j         .L802405AC
/* 8526F8 80240588 E6800018 */   swc1     $f0, 0x18($s4)
.L8024058C:
/* 8526FC 8024058C 3C018025 */  lui       $at, %hi(D_802527B0)
/* 852700 80240590 D42227B0 */  ldc1      $f2, %lo(D_802527B0)($at)
/* 852704 80240594 44820000 */  mtc1      $v0, $f0
/* 852708 80240598 00000000 */  nop
/* 85270C 8024059C 46800021 */  cvt.d.w   $f0, $f0
/* 852710 802405A0 46220003 */  div.d     $f0, $f0, $f2
/* 852714 802405A4 46200020 */  cvt.s.d   $f0, $f0
/* 852718 802405A8 E6800018 */  swc1      $f0, 0x18($s4)
.L802405AC:
/* 85271C 802405AC 24020001 */  addiu     $v0, $zero, 1
/* 852720 802405B0 AEA20070 */  sw        $v0, 0x70($s5)
/* 852724 802405B4 8FBF002C */  lw        $ra, 0x2c($sp)
/* 852728 802405B8 8FB60028 */  lw        $s6, 0x28($sp)
/* 85272C 802405BC 8FB50024 */  lw        $s5, 0x24($sp)
/* 852730 802405C0 8FB40020 */  lw        $s4, 0x20($sp)
/* 852734 802405C4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 852738 802405C8 8FB20018 */  lw        $s2, 0x18($sp)
/* 85273C 802405CC 8FB10014 */  lw        $s1, 0x14($sp)
/* 852740 802405D0 8FB00010 */  lw        $s0, 0x10($sp)
/* 852744 802405D4 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 852748 802405D8 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 85274C 802405DC D7B40030 */  ldc1      $f20, 0x30($sp)
/* 852750 802405E0 03E00008 */  jr        $ra
/* 852754 802405E4 27BD0048 */   addiu    $sp, $sp, 0x48
