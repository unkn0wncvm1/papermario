.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241EF8_9916D8
/* 9916D8 80241EF8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 9916DC 80241EFC AFB10014 */  sw        $s1, 0x14($sp)
/* 9916E0 80241F00 0080882D */  daddu     $s1, $a0, $zero
/* 9916E4 80241F04 3C05FD05 */  lui       $a1, 0xfd05
/* 9916E8 80241F08 AFBF001C */  sw        $ra, 0x1c($sp)
/* 9916EC 80241F0C AFB20018 */  sw        $s2, 0x18($sp)
/* 9916F0 80241F10 AFB00010 */  sw        $s0, 0x10($sp)
/* 9916F4 80241F14 F7B80030 */  sdc1      $f24, 0x30($sp)
/* 9916F8 80241F18 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 9916FC 80241F1C F7B40020 */  sdc1      $f20, 0x20($sp)
/* 991700 80241F20 8E30000C */  lw        $s0, 0xc($s1)
/* 991704 80241F24 0C0B1EAF */  jal       get_variable
/* 991708 80241F28 34A50F8A */   ori      $a1, $a1, 0xf8a
/* 99170C 80241F2C 0220202D */  daddu     $a0, $s1, $zero
/* 991710 80241F30 0040902D */  daddu     $s2, $v0, $zero
/* 991714 80241F34 8E050000 */  lw        $a1, ($s0)
/* 991718 80241F38 0C0B210B */  jal       get_float_variable
/* 99171C 80241F3C 26100004 */   addiu    $s0, $s0, 4
/* 991720 80241F40 46000606 */  mov.s     $f24, $f0
/* 991724 80241F44 8E050000 */  lw        $a1, ($s0)
/* 991728 80241F48 26100004 */  addiu     $s0, $s0, 4
/* 99172C 80241F4C 0C0B210B */  jal       get_float_variable
/* 991730 80241F50 0220202D */   daddu    $a0, $s1, $zero
/* 991734 80241F54 46000586 */  mov.s     $f22, $f0
/* 991738 80241F58 8E050000 */  lw        $a1, ($s0)
/* 99173C 80241F5C 26100004 */  addiu     $s0, $s0, 4
/* 991740 80241F60 0C0B210B */  jal       get_float_variable
/* 991744 80241F64 0220202D */   daddu    $a0, $s1, $zero
/* 991748 80241F68 46000506 */  mov.s     $f20, $f0
/* 99174C 80241F6C 8E050000 */  lw        $a1, ($s0)
/* 991750 80241F70 0C0B210B */  jal       get_float_variable
/* 991754 80241F74 0220202D */   daddu    $a0, $s1, $zero
/* 991758 80241F78 44801000 */  mtc1      $zero, $f2
/* 99175C 80241F7C 00000000 */  nop
/* 991760 80241F80 4602C03C */  c.lt.s    $f24, $f2
/* 991764 80241F84 00000000 */  nop
/* 991768 80241F88 45030001 */  bc1tl     .L80241F90
/* 99176C 80241F8C 46001606 */   mov.s    $f24, $f2
.L80241F90:
/* 991770 80241F90 4602B03C */  c.lt.s    $f22, $f2
/* 991774 80241F94 00000000 */  nop
/* 991778 80241F98 45030001 */  bc1tl     .L80241FA0
/* 99177C 80241F9C 46001586 */   mov.s    $f22, $f2
.L80241FA0:
/* 991780 80241FA0 4602A03C */  c.lt.s    $f20, $f2
/* 991784 80241FA4 00000000 */  nop
/* 991788 80241FA8 45030001 */  bc1tl     .L80241FB0
/* 99178C 80241FAC 46001506 */   mov.s    $f20, $f2
.L80241FB0:
/* 991790 80241FB0 4602003C */  c.lt.s    $f0, $f2
/* 991794 80241FB4 00000000 */  nop
/* 991798 80241FB8 45030001 */  bc1tl     .L80241FC0
/* 99179C 80241FBC 46001006 */   mov.s    $f0, $f2
.L80241FC0:
/* 9917A0 80241FC0 3C01437F */  lui       $at, 0x437f
/* 9917A4 80241FC4 44811000 */  mtc1      $at, $f2
/* 9917A8 80241FC8 00000000 */  nop
/* 9917AC 80241FCC 4618103C */  c.lt.s    $f2, $f24
/* 9917B0 80241FD0 00000000 */  nop
/* 9917B4 80241FD4 45030001 */  bc1tl     .L80241FDC
/* 9917B8 80241FD8 46001606 */   mov.s    $f24, $f2
.L80241FDC:
/* 9917BC 80241FDC 4616103C */  c.lt.s    $f2, $f22
/* 9917C0 80241FE0 00000000 */  nop
/* 9917C4 80241FE4 45030001 */  bc1tl     .L80241FEC
/* 9917C8 80241FE8 46001586 */   mov.s    $f22, $f2
.L80241FEC:
/* 9917CC 80241FEC 4614103C */  c.lt.s    $f2, $f20
/* 9917D0 80241FF0 00000000 */  nop
/* 9917D4 80241FF4 45030001 */  bc1tl     .L80241FFC
/* 9917D8 80241FF8 46001506 */   mov.s    $f20, $f2
.L80241FFC:
/* 9917DC 80241FFC 4600103C */  c.lt.s    $f2, $f0
/* 9917E0 80242000 00000000 */  nop
/* 9917E4 80242004 45030001 */  bc1tl     .L8024200C
/* 9917E8 80242008 46001006 */   mov.s    $f0, $f2
.L8024200C:
/* 9917EC 8024200C E658003C */  swc1      $f24, 0x3c($s2)
/* 9917F0 80242010 E6560040 */  swc1      $f22, 0x40($s2)
/* 9917F4 80242014 E6540044 */  swc1      $f20, 0x44($s2)
/* 9917F8 80242018 E6400048 */  swc1      $f0, 0x48($s2)
/* 9917FC 8024201C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 991800 80242020 8FB20018 */  lw        $s2, 0x18($sp)
/* 991804 80242024 8FB10014 */  lw        $s1, 0x14($sp)
/* 991808 80242028 8FB00010 */  lw        $s0, 0x10($sp)
/* 99180C 8024202C D7B80030 */  ldc1      $f24, 0x30($sp)
/* 991810 80242030 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 991814 80242034 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 991818 80242038 24020002 */  addiu     $v0, $zero, 2
/* 99181C 8024203C 03E00008 */  jr        $ra
/* 991820 80242040 27BD0038 */   addiu    $sp, $sp, 0x38
