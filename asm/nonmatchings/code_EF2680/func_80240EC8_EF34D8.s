.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240EC8_EF34D8
/* EF34D8 80240EC8 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* EF34DC 80240ECC AFB20030 */  sw        $s2, 0x30($sp)
/* EF34E0 80240ED0 0080902D */  daddu     $s2, $a0, $zero
/* EF34E4 80240ED4 AFBF0038 */  sw        $ra, 0x38($sp)
/* EF34E8 80240ED8 AFB30034 */  sw        $s3, 0x34($sp)
/* EF34EC 80240EDC AFB1002C */  sw        $s1, 0x2c($sp)
/* EF34F0 80240EE0 AFB00028 */  sw        $s0, 0x28($sp)
/* EF34F4 80240EE4 F7B60048 */  sdc1      $f22, 0x48($sp)
/* EF34F8 80240EE8 F7B40040 */  sdc1      $f20, 0x40($sp)
/* EF34FC 80240EEC 8E510148 */  lw        $s1, 0x148($s2)
/* EF3500 80240EF0 86240008 */  lh        $a0, 8($s1)
/* EF3504 80240EF4 0C00F92F */  jal       func_8003E4BC
/* EF3508 80240EF8 00A0982D */   daddu    $s3, $a1, $zero
/* EF350C 80240EFC 0040802D */  daddu     $s0, $v0, $zero
/* EF3510 80240F00 0200202D */  daddu     $a0, $s0, $zero
/* EF3514 80240F04 C6220088 */  lwc1      $f2, 0x88($s1)
/* EF3518 80240F08 468010A0 */  cvt.s.w   $f2, $f2
/* EF351C 80240F0C 460010A1 */  cvt.d.s   $f2, $f2
/* EF3520 80240F10 C604001C */  lwc1      $f4, 0x1c($s0)
/* EF3524 80240F14 C6000014 */  lwc1      $f0, 0x14($s0)
/* EF3528 80240F18 8E050018 */  lw        $a1, 0x18($s0)
/* EF352C 80240F1C 46002100 */  add.s     $f4, $f4, $f0
/* EF3530 80240F20 8E06000C */  lw        $a2, 0xc($s0)
/* EF3534 80240F24 C6200078 */  lwc1      $f0, 0x78($s1)
/* EF3538 80240F28 46800020 */  cvt.s.w   $f0, $f0
/* EF353C 80240F2C E604001C */  swc1      $f4, 0x1c($s0)
/* EF3540 80240F30 3C014059 */  lui       $at, 0x4059
/* EF3544 80240F34 44812800 */  mtc1      $at, $f5
/* EF3548 80240F38 44802000 */  mtc1      $zero, $f4
/* EF354C 80240F3C 46000021 */  cvt.d.s   $f0, $f0
/* EF3550 80240F40 46240003 */  div.d     $f0, $f0, $f4
/* EF3554 80240F44 46200520 */  cvt.s.d   $f20, $f0
/* EF3558 80240F48 46241083 */  div.d     $f2, $f2, $f4
/* EF355C 80240F4C 0C00F909 */  jal       func_8003E424
/* EF3560 80240F50 462015A0 */   cvt.s.d  $f22, $f2
/* EF3564 80240F54 C604001C */  lwc1      $f4, 0x1c($s0)
/* EF3568 80240F58 44801000 */  mtc1      $zero, $f2
/* EF356C 80240F5C 44801800 */  mtc1      $zero, $f3
/* EF3570 80240F60 46002021 */  cvt.d.s   $f0, $f4
/* EF3574 80240F64 4620103E */  c.le.d    $f2, $f0
/* EF3578 80240F68 00000000 */  nop
/* EF357C 80240F6C 45000030 */  bc1f      .L80241030
/* EF3580 80240F70 00000000 */   nop
/* EF3584 80240F74 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF3588 80240F78 46040000 */  add.s     $f0, $f0, $f4
/* EF358C 80240F7C E600003C */  swc1      $f0, 0x3c($s0)
/* EF3590 80240F80 8E2200CC */  lw        $v0, 0xcc($s1)
/* EF3594 80240F84 8C420024 */  lw        $v0, 0x24($v0)
/* EF3598 80240F88 AE020028 */  sw        $v0, 0x28($s0)
/* EF359C 80240F8C A2200007 */  sb        $zero, 7($s1)
/* EF35A0 80240F90 8E020000 */  lw        $v0, ($s0)
/* EF35A4 80240F94 30420008 */  andi      $v0, $v0, 8
/* EF35A8 80240F98 14400011 */  bnez      $v0, .L80240FE0
/* EF35AC 80240F9C 0000102D */   daddu    $v0, $zero, $zero
/* EF35B0 80240FA0 27A50018 */  addiu     $a1, $sp, 0x18
/* EF35B4 80240FA4 27A6001C */  addiu     $a2, $sp, 0x1c
/* EF35B8 80240FA8 C6000038 */  lwc1      $f0, 0x38($s0)
/* EF35BC 80240FAC C602003C */  lwc1      $f2, 0x3c($s0)
/* EF35C0 80240FB0 C6040040 */  lwc1      $f4, 0x40($s0)
/* EF35C4 80240FB4 3C01447A */  lui       $at, 0x447a
/* EF35C8 80240FB8 44813000 */  mtc1      $at, $f6
/* EF35CC 80240FBC 27A20024 */  addiu     $v0, $sp, 0x24
/* EF35D0 80240FC0 E7A00018 */  swc1      $f0, 0x18($sp)
/* EF35D4 80240FC4 E7A2001C */  swc1      $f2, 0x1c($sp)
/* EF35D8 80240FC8 E7A40020 */  swc1      $f4, 0x20($sp)
/* EF35DC 80240FCC E7A60024 */  swc1      $f6, 0x24($sp)
/* EF35E0 80240FD0 AFA20010 */  sw        $v0, 0x10($sp)
/* EF35E4 80240FD4 8E040080 */  lw        $a0, 0x80($s0)
/* EF35E8 80240FD8 0C03908F */  jal       func_800E423C
/* EF35EC 80240FDC 27A70020 */   addiu    $a3, $sp, 0x20
.L80240FE0:
/* EF35F0 80240FE0 1040000B */  beqz      $v0, .L80241010
/* EF35F4 80240FE4 00000000 */   nop
/* EF35F8 80240FE8 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* EF35FC 80240FEC 46140080 */  add.s     $f2, $f0, $f20
/* EF3600 80240FF0 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF3604 80240FF4 4600103E */  c.le.s    $f2, $f0
/* EF3608 80240FF8 00000000 */  nop
/* EF360C 80240FFC 4500008D */  bc1f      .L80241234
/* EF3610 80241000 00000000 */   nop
/* EF3614 80241004 E602003C */  swc1      $f2, 0x3c($s0)
/* EF3618 80241008 0809048D */  j         .L80241234
/* EF361C 8024100C AE400070 */   sw       $zero, 0x70($s2)
.L80241010:
/* EF3620 80241010 C602003C */  lwc1      $f2, 0x3c($s0)
/* EF3624 80241014 C6000064 */  lwc1      $f0, 0x64($s0)
/* EF3628 80241018 4602003E */  c.le.s    $f0, $f2
/* EF362C 8024101C 00000000 */  nop
/* EF3630 80241020 45030084 */  bc1tl     .L80241234
/* EF3634 80241024 AE400070 */   sw       $zero, 0x70($s2)
/* EF3638 80241028 0809048D */  j         .L80241234
/* EF363C 8024102C 00000000 */   nop
.L80241030:
/* EF3640 80241030 4622003C */  c.lt.d    $f0, $f2
/* EF3644 80241034 00000000 */  nop
/* EF3648 80241038 4500007E */  bc1f      .L80241234
/* EF364C 8024103C 00000000 */   nop
/* EF3650 80241040 9602008E */  lhu       $v0, 0x8e($s0)
/* EF3654 80241044 24420001 */  addiu     $v0, $v0, 1
/* EF3658 80241048 A602008E */  sh        $v0, 0x8e($s0)
/* EF365C 8024104C 00021400 */  sll       $v0, $v0, 0x10
/* EF3660 80241050 8E630020 */  lw        $v1, 0x20($s3)
/* EF3664 80241054 00021403 */  sra       $v0, $v0, 0x10
/* EF3668 80241058 0043102A */  slt       $v0, $v0, $v1
/* EF366C 8024105C 14400026 */  bnez      $v0, .L802410F8
/* EF3670 80241060 00000000 */   nop
/* EF3674 80241064 C60C0038 */  lwc1      $f12, 0x38($s0)
/* EF3678 80241068 C60E0040 */  lwc1      $f14, 0x40($s0)
/* EF367C 8024106C 3C028010 */  lui       $v0, %hi(D_800FFC90)
/* EF3680 80241070 8C42FC90 */  lw        $v0, %lo(D_800FFC90)($v0)
/* EF3684 80241074 A600008E */  sh        $zero, 0x8e($s0)
/* EF3688 80241078 8C460028 */  lw        $a2, 0x28($v0)
/* EF368C 8024107C 0C00ABDC */  jal       fio_validate_header_checksums
/* EF3690 80241080 8C470030 */   lw       $a3, 0x30($v0)
/* EF3694 80241084 46000506 */  mov.s     $f20, $f0
/* EF3698 80241088 C60C000C */  lwc1      $f12, 0xc($s0)
/* EF369C 8024108C 0C00ABC6 */  jal       func_8002AF18
/* EF36A0 80241090 4600A386 */   mov.s    $f14, $f20
/* EF36A4 80241094 46000086 */  mov.s     $f2, $f0
/* EF36A8 80241098 8E62001C */  lw        $v0, 0x1c($s3)
/* EF36AC 8024109C 46001005 */  abs.s     $f0, $f2
/* EF36B0 802410A0 44822000 */  mtc1      $v0, $f4
/* EF36B4 802410A4 00000000 */  nop
/* EF36B8 802410A8 46802120 */  cvt.s.w   $f4, $f4
/* EF36BC 802410AC 4600203C */  c.lt.s    $f4, $f0
/* EF36C0 802410B0 00000000 */  nop
/* EF36C4 802410B4 4500000D */  bc1f      .L802410EC
/* EF36C8 802410B8 00000000 */   nop
/* EF36CC 802410BC 44800000 */  mtc1      $zero, $f0
/* EF36D0 802410C0 C614000C */  lwc1      $f20, 0xc($s0)
/* EF36D4 802410C4 4600103C */  c.lt.s    $f2, $f0
/* EF36D8 802410C8 00000000 */  nop
/* EF36DC 802410CC 45000006 */  bc1f      .L802410E8
/* EF36E0 802410D0 00021023 */   negu     $v0, $v0
/* EF36E4 802410D4 44820000 */  mtc1      $v0, $f0
/* EF36E8 802410D8 00000000 */  nop
/* EF36EC 802410DC 46800020 */  cvt.s.w   $f0, $f0
/* EF36F0 802410E0 0809043B */  j         .L802410EC
/* EF36F4 802410E4 4600A500 */   add.s    $f20, $f20, $f0
.L802410E8:
/* EF36F8 802410E8 4604A500 */  add.s     $f20, $f20, $f4
.L802410EC:
/* EF36FC 802410EC 0C00AB85 */  jal       func_8002AE14
/* EF3700 802410F0 4600A306 */   mov.s    $f12, $f20
/* EF3704 802410F4 E600000C */  swc1      $f0, 0xc($s0)
.L802410F8:
/* EF3708 802410F8 8E020000 */  lw        $v0, ($s0)
/* EF370C 802410FC 30420008 */  andi      $v0, $v0, 8
/* EF3710 80241100 1040000A */  beqz      $v0, .L8024112C
/* EF3714 80241104 27A50018 */   addiu    $a1, $sp, 0x18
/* EF3718 80241108 C602003C */  lwc1      $f2, 0x3c($s0)
/* EF371C 8024110C C600001C */  lwc1      $f0, 0x1c($s0)
/* EF3720 80241110 46001080 */  add.s     $f2, $f2, $f0
/* EF3724 80241114 4616103C */  c.lt.s    $f2, $f22
/* EF3728 80241118 00000000 */  nop
/* EF372C 8024111C 45020045 */  bc1fl     .L80241234
/* EF3730 80241120 E602003C */   swc1     $f2, 0x3c($s0)
/* EF3734 80241124 0809048C */  j         .L80241230
/* EF3738 80241128 E616003C */   swc1     $f22, 0x3c($s0)
.L8024112C:
/* EF373C 8024112C C6000038 */  lwc1      $f0, 0x38($s0)
/* EF3740 80241130 27A6001C */  addiu     $a2, $sp, 0x1c
/* EF3744 80241134 E7A00018 */  swc1      $f0, 0x18($sp)
/* EF3748 80241138 860200A8 */  lh        $v0, 0xa8($s0)
/* EF374C 8024113C C600001C */  lwc1      $f0, 0x1c($s0)
/* EF3750 80241140 C604003C */  lwc1      $f4, 0x3c($s0)
/* EF3754 80241144 44821000 */  mtc1      $v0, $f2
/* EF3758 80241148 00000000 */  nop
/* EF375C 8024114C 468010A0 */  cvt.s.w   $f2, $f2
/* EF3760 80241150 46000005 */  abs.s     $f0, $f0
/* EF3764 80241154 46020000 */  add.s     $f0, $f0, $f2
/* EF3768 80241158 C6060040 */  lwc1      $f6, 0x40($s0)
/* EF376C 8024115C 27A20024 */  addiu     $v0, $sp, 0x24
/* EF3770 80241160 46022100 */  add.s     $f4, $f4, $f2
/* EF3774 80241164 3C014024 */  lui       $at, 0x4024
/* EF3778 80241168 44811800 */  mtc1      $at, $f3
/* EF377C 8024116C 44801000 */  mtc1      $zero, $f2
/* EF3780 80241170 46000021 */  cvt.d.s   $f0, $f0
/* EF3784 80241174 46220000 */  add.d     $f0, $f0, $f2
/* EF3788 80241178 E7A60020 */  swc1      $f6, 0x20($sp)
/* EF378C 8024117C E7A4001C */  swc1      $f4, 0x1c($sp)
/* EF3790 80241180 46200020 */  cvt.s.d   $f0, $f0
/* EF3794 80241184 E7A00024 */  swc1      $f0, 0x24($sp)
/* EF3798 80241188 AFA20010 */  sw        $v0, 0x10($sp)
/* EF379C 8024118C 8E040080 */  lw        $a0, 0x80($s0)
/* EF37A0 80241190 0C03908F */  jal       func_800E423C
/* EF37A4 80241194 27A70020 */   addiu    $a3, $sp, 0x20
/* EF37A8 80241198 10400015 */  beqz      $v0, .L802411F0
/* EF37AC 8024119C 00000000 */   nop
/* EF37B0 802411A0 860200A8 */  lh        $v0, 0xa8($s0)
/* EF37B4 802411A4 C604001C */  lwc1      $f4, 0x1c($s0)
/* EF37B8 802411A8 44820000 */  mtc1      $v0, $f0
/* EF37BC 802411AC 00000000 */  nop
/* EF37C0 802411B0 46800020 */  cvt.s.w   $f0, $f0
/* EF37C4 802411B4 46002085 */  abs.s     $f2, $f4
/* EF37C8 802411B8 46020000 */  add.s     $f0, $f0, $f2
/* EF37CC 802411BC C7A20024 */  lwc1      $f2, 0x24($sp)
/* EF37D0 802411C0 4600103E */  c.le.s    $f2, $f0
/* EF37D4 802411C4 00000000 */  nop
/* EF37D8 802411C8 45000005 */  bc1f      .L802411E0
/* EF37DC 802411CC 00000000 */   nop
/* EF37E0 802411D0 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* EF37E4 802411D4 AE00001C */  sw        $zero, 0x1c($s0)
/* EF37E8 802411D8 0809048D */  j         .L80241234
/* EF37EC 802411DC E600003C */   swc1     $f0, 0x3c($s0)
.L802411E0:
/* EF37F0 802411E0 C600003C */  lwc1      $f0, 0x3c($s0)
/* EF37F4 802411E4 46040000 */  add.s     $f0, $f0, $f4
/* EF37F8 802411E8 0809048D */  j         .L80241234
/* EF37FC 802411EC E600003C */   swc1     $f0, 0x3c($s0)
.L802411F0:
/* EF3800 802411F0 C606003C */  lwc1      $f6, 0x3c($s0)
/* EF3804 802411F4 860200A8 */  lh        $v0, 0xa8($s0)
/* EF3808 802411F8 46163081 */  sub.s     $f2, $f6, $f22
/* EF380C 802411FC 44820000 */  mtc1      $v0, $f0
/* EF3810 80241200 00000000 */  nop
/* EF3814 80241204 46800020 */  cvt.s.w   $f0, $f0
/* EF3818 80241208 46001080 */  add.s     $f2, $f2, $f0
/* EF381C 8024120C C604001C */  lwc1      $f4, 0x1c($s0)
/* EF3820 80241210 46002005 */  abs.s     $f0, $f4
/* EF3824 80241214 4602003C */  c.lt.s    $f0, $f2
/* EF3828 80241218 00000000 */  nop
/* EF382C 8024121C 45020005 */  bc1fl     .L80241234
/* EF3830 80241220 AE00001C */   sw       $zero, 0x1c($s0)
/* EF3834 80241224 46043000 */  add.s     $f0, $f6, $f4
/* EF3838 80241228 0809048D */  j         .L80241234
/* EF383C 8024122C E600003C */   swc1     $f0, 0x3c($s0)
.L80241230:
/* EF3840 80241230 AE00001C */  sw        $zero, 0x1c($s0)
.L80241234:
/* EF3844 80241234 8FBF0038 */  lw        $ra, 0x38($sp)
/* EF3848 80241238 8FB30034 */  lw        $s3, 0x34($sp)
/* EF384C 8024123C 8FB20030 */  lw        $s2, 0x30($sp)
/* EF3850 80241240 8FB1002C */  lw        $s1, 0x2c($sp)
/* EF3854 80241244 8FB00028 */  lw        $s0, 0x28($sp)
/* EF3858 80241248 D7B60048 */  ldc1      $f22, 0x48($sp)
/* EF385C 8024124C D7B40040 */  ldc1      $f20, 0x40($sp)
/* EF3860 80241250 03E00008 */  jr        $ra
/* EF3864 80241254 27BD0050 */   addiu    $sp, $sp, 0x50
