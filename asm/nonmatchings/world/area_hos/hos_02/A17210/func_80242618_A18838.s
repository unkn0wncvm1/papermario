.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242618_A18838
/* A18838 80242618 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* A1883C 8024261C AFB3004C */  sw        $s3, 0x4c($sp)
/* A18840 80242620 0080982D */  daddu     $s3, $a0, $zero
/* A18844 80242624 AFBF0050 */  sw        $ra, 0x50($sp)
/* A18848 80242628 AFB20048 */  sw        $s2, 0x48($sp)
/* A1884C 8024262C AFB10044 */  sw        $s1, 0x44($sp)
/* A18850 80242630 AFB00040 */  sw        $s0, 0x40($sp)
/* A18854 80242634 8E720148 */  lw        $s2, 0x148($s3)
/* A18858 80242638 00A0882D */  daddu     $s1, $a1, $zero
/* A1885C 8024263C 86440008 */  lh        $a0, 8($s2)
/* A18860 80242640 0C00EABB */  jal       get_npc_unsafe
/* A18864 80242644 00C0802D */   daddu    $s0, $a2, $zero
/* A18868 80242648 0200202D */  daddu     $a0, $s0, $zero
/* A1886C 8024264C 0240282D */  daddu     $a1, $s2, $zero
/* A18870 80242650 24030001 */  addiu     $v1, $zero, 1
/* A18874 80242654 AFA30010 */  sw        $v1, 0x10($sp)
/* A18878 80242658 8E260024 */  lw        $a2, 0x24($s1)
/* A1887C 8024265C 8E270028 */  lw        $a3, 0x28($s1)
/* A18880 80242660 0C01242D */  jal       func_800490B4
/* A18884 80242664 0040802D */   daddu    $s0, $v0, $zero
/* A18888 80242668 14400020 */  bnez      $v0, .L802426EC
/* A1888C 8024266C 24040002 */   addiu    $a0, $zero, 2
/* A18890 80242670 0200282D */  daddu     $a1, $s0, $zero
/* A18894 80242674 0000302D */  daddu     $a2, $zero, $zero
/* A18898 80242678 860300A8 */  lh        $v1, 0xa8($s0)
/* A1889C 8024267C 3C013F80 */  lui       $at, 0x3f80
/* A188A0 80242680 44810000 */  mtc1      $at, $f0
/* A188A4 80242684 3C014000 */  lui       $at, 0x4000
/* A188A8 80242688 44811000 */  mtc1      $at, $f2
/* A188AC 8024268C 3C01C1A0 */  lui       $at, 0xc1a0
/* A188B0 80242690 44812000 */  mtc1      $at, $f4
/* A188B4 80242694 2402000F */  addiu     $v0, $zero, 0xf
/* A188B8 80242698 AFA2001C */  sw        $v0, 0x1c($sp)
/* A188BC 8024269C 44834000 */  mtc1      $v1, $f8
/* A188C0 802426A0 00000000 */  nop
/* A188C4 802426A4 46804220 */  cvt.s.w   $f8, $f8
/* A188C8 802426A8 44074000 */  mfc1      $a3, $f8
/* A188CC 802426AC 27A20028 */  addiu     $v0, $sp, 0x28
/* A188D0 802426B0 AFA20020 */  sw        $v0, 0x20($sp)
/* A188D4 802426B4 E7A00010 */  swc1      $f0, 0x10($sp)
/* A188D8 802426B8 E7A20014 */  swc1      $f2, 0x14($sp)
/* A188DC 802426BC 0C01BFA4 */  jal       fx_emote
/* A188E0 802426C0 E7A40018 */   swc1     $f4, 0x18($sp)
/* A188E4 802426C4 8E4200CC */  lw        $v0, 0xcc($s2)
/* A188E8 802426C8 8C430000 */  lw        $v1, ($v0)
/* A188EC 802426CC 2402001E */  addiu     $v0, $zero, 0x1e
/* A188F0 802426D0 A602008E */  sh        $v0, 0x8e($s0)
/* A188F4 802426D4 24020014 */  addiu     $v0, $zero, 0x14
/* A188F8 802426D8 AE030028 */  sw        $v1, 0x28($s0)
/* A188FC 802426DC AE620070 */  sw        $v0, 0x70($s3)
/* A18900 802426E0 2402001E */  addiu     $v0, $zero, 0x1e
/* A18904 802426E4 08090A1F */  j         .L8024287C
/* A18908 802426E8 AE420090 */   sw       $v0, 0x90($s2)
.L802426EC:
/* A1890C 802426EC 8E050018 */  lw        $a1, 0x18($s0)
/* A18910 802426F0 8E06000C */  lw        $a2, 0xc($s0)
/* A18914 802426F4 0C00EA95 */  jal       npc_move_heading
/* A18918 802426F8 0200202D */   daddu    $a0, $s0, $zero
/* A1891C 802426FC 8E020000 */  lw        $v0, ($s0)
/* A18920 80242700 30420008 */  andi      $v0, $v0, 8
/* A18924 80242704 14400028 */  bnez      $v0, .L802427A8
/* A18928 80242708 0000882D */   daddu    $s1, $zero, $zero
/* A1892C 8024270C 27A5002C */  addiu     $a1, $sp, 0x2c
/* A18930 80242710 27A60030 */  addiu     $a2, $sp, 0x30
/* A18934 80242714 860200A8 */  lh        $v0, 0xa8($s0)
/* A18938 80242718 C6000038 */  lwc1      $f0, 0x38($s0)
/* A1893C 8024271C 44821000 */  mtc1      $v0, $f2
/* A18940 80242720 00000000 */  nop
/* A18944 80242724 468010A0 */  cvt.s.w   $f2, $f2
/* A18948 80242728 E7A0002C */  swc1      $f0, 0x2c($sp)
/* A1894C 8024272C 860200A8 */  lh        $v0, 0xa8($s0)
/* A18950 80242730 C604003C */  lwc1      $f4, 0x3c($s0)
/* A18954 80242734 C6060040 */  lwc1      $f6, 0x40($s0)
/* A18958 80242738 44820000 */  mtc1      $v0, $f0
/* A1895C 8024273C 00000000 */  nop
/* A18960 80242740 46800021 */  cvt.d.w   $f0, $f0
/* A18964 80242744 46022100 */  add.s     $f4, $f4, $f2
/* A18968 80242748 3C014008 */  lui       $at, 0x4008
/* A1896C 8024274C 44811800 */  mtc1      $at, $f3
/* A18970 80242750 44801000 */  mtc1      $zero, $f2
/* A18974 80242754 27A20038 */  addiu     $v0, $sp, 0x38
/* A18978 80242758 46220000 */  add.d     $f0, $f0, $f2
/* A1897C 8024275C E7A60034 */  swc1      $f6, 0x34($sp)
/* A18980 80242760 E7A40030 */  swc1      $f4, 0x30($sp)
/* A18984 80242764 46200020 */  cvt.s.d   $f0, $f0
/* A18988 80242768 E7A00038 */  swc1      $f0, 0x38($sp)
/* A1898C 8024276C AFA20010 */  sw        $v0, 0x10($sp)
/* A18990 80242770 8E040080 */  lw        $a0, 0x80($s0)
/* A18994 80242774 0C0372DF */  jal       func_800DCB7C
/* A18998 80242778 27A70034 */   addiu    $a3, $sp, 0x34
/* A1899C 8024277C 1040000A */  beqz      $v0, .L802427A8
/* A189A0 80242780 00000000 */   nop
/* A189A4 80242784 860200A8 */  lh        $v0, 0xa8($s0)
/* A189A8 80242788 C7A20038 */  lwc1      $f2, 0x38($sp)
/* A189AC 8024278C 44820000 */  mtc1      $v0, $f0
/* A189B0 80242790 00000000 */  nop
/* A189B4 80242794 46800020 */  cvt.s.w   $f0, $f0
/* A189B8 80242798 4600103C */  c.lt.s    $f2, $f0
/* A189BC 8024279C 00000000 */  nop
/* A189C0 802427A0 45030001 */  bc1tl     .L802427A8
/* A189C4 802427A4 24110001 */   addiu    $s1, $zero, 1
.L802427A8:
/* A189C8 802427A8 12200008 */  beqz      $s1, .L802427CC
/* A189CC 802427AC 00000000 */   nop
/* A189D0 802427B0 C7A00030 */  lwc1      $f0, 0x30($sp)
/* A189D4 802427B4 3C013FF0 */  lui       $at, 0x3ff0
/* A189D8 802427B8 44811800 */  mtc1      $at, $f3
/* A189DC 802427BC 44801000 */  mtc1      $zero, $f2
/* A189E0 802427C0 46000021 */  cvt.d.s   $f0, $f0
/* A189E4 802427C4 08090A15 */  j         .L80242854
/* A189E8 802427C8 46220000 */   add.d    $f0, $f0, $f2
.L802427CC:
/* A189EC 802427CC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A189F0 802427D0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A189F4 802427D4 3C014018 */  lui       $at, 0x4018
/* A189F8 802427D8 44811800 */  mtc1      $at, $f3
/* A189FC 802427DC 44801000 */  mtc1      $zero, $f2
/* A18A00 802427E0 C440002C */  lwc1      $f0, 0x2c($v0)
/* A18A04 802427E4 C604003C */  lwc1      $f4, 0x3c($s0)
/* A18A08 802427E8 46000021 */  cvt.d.s   $f0, $f0
/* A18A0C 802427EC 46220000 */  add.d     $f0, $f0, $f2
/* A18A10 802427F0 46002121 */  cvt.d.s   $f4, $f4
/* A18A14 802427F4 46202001 */  sub.d     $f0, $f4, $f0
/* A18A18 802427F8 462001A0 */  cvt.s.d   $f6, $f0
/* A18A1C 802427FC 44800000 */  mtc1      $zero, $f0
/* A18A20 80242800 44800800 */  mtc1      $zero, $f1
/* A18A24 80242804 460030A1 */  cvt.d.s   $f2, $f6
/* A18A28 80242808 4620103C */  c.lt.d    $f2, $f0
/* A18A2C 8024280C 00000000 */  nop
/* A18A30 80242810 45010009 */  bc1t      .L80242838
/* A18A34 80242814 00000000 */   nop
/* A18A38 80242818 3C014010 */  lui       $at, 0x4010
/* A18A3C 8024281C 44810800 */  mtc1      $at, $f1
/* A18A40 80242820 44800000 */  mtc1      $zero, $f0
/* A18A44 80242824 00000000 */  nop
/* A18A48 80242828 4622003C */  c.lt.d    $f0, $f2
/* A18A4C 8024282C 00000000 */  nop
/* A18A50 80242830 4500000A */  bc1f      .L8024285C
/* A18A54 80242834 00000000 */   nop
.L80242838:
/* A18A58 80242838 3C018024 */  lui       $at, %hi(D_80244E78)
/* A18A5C 8024283C D4224E78 */  ldc1      $f2, %lo(D_80244E78)($at)
/* A18A60 80242840 46003187 */  neg.s     $f6, $f6
/* A18A64 80242844 46003021 */  cvt.d.s   $f0, $f6
/* A18A68 80242848 46220002 */  mul.d     $f0, $f0, $f2
/* A18A6C 8024284C 00000000 */  nop
/* A18A70 80242850 46202000 */  add.d     $f0, $f4, $f0
.L80242854:
/* A18A74 80242854 46200020 */  cvt.s.d   $f0, $f0
/* A18A78 80242858 E600003C */  swc1      $f0, 0x3c($s0)
.L8024285C:
/* A18A7C 8024285C 8602008E */  lh        $v0, 0x8e($s0)
/* A18A80 80242860 9603008E */  lhu       $v1, 0x8e($s0)
/* A18A84 80242864 18400003 */  blez      $v0, .L80242874
/* A18A88 80242868 2462FFFF */   addiu    $v0, $v1, -1
/* A18A8C 8024286C 08090A1F */  j         .L8024287C
/* A18A90 80242870 A602008E */   sh       $v0, 0x8e($s0)
.L80242874:
/* A18A94 80242874 2402000C */  addiu     $v0, $zero, 0xc
/* A18A98 80242878 AE620070 */  sw        $v0, 0x70($s3)
.L8024287C:
/* A18A9C 8024287C 8FBF0050 */  lw        $ra, 0x50($sp)
/* A18AA0 80242880 8FB3004C */  lw        $s3, 0x4c($sp)
/* A18AA4 80242884 8FB20048 */  lw        $s2, 0x48($sp)
/* A18AA8 80242888 8FB10044 */  lw        $s1, 0x44($sp)
/* A18AAC 8024288C 8FB00040 */  lw        $s0, 0x40($sp)
/* A18AB0 80242890 03E00008 */  jr        $ra
/* A18AB4 80242894 27BD0058 */   addiu    $sp, $sp, 0x58
