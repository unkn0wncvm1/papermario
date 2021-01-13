.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024007C_984EAC
/* 984EAC 8024007C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 984EB0 80240080 AFB3001C */  sw        $s3, 0x1c($sp)
/* 984EB4 80240084 0080982D */  daddu     $s3, $a0, $zero
/* 984EB8 80240088 AFBF0020 */  sw        $ra, 0x20($sp)
/* 984EBC 8024008C AFB20018 */  sw        $s2, 0x18($sp)
/* 984EC0 80240090 AFB10014 */  sw        $s1, 0x14($sp)
/* 984EC4 80240094 AFB00010 */  sw        $s0, 0x10($sp)
/* 984EC8 80240098 8E710148 */  lw        $s1, 0x148($s3)
/* 984ECC 8024009C 86240008 */  lh        $a0, 8($s1)
/* 984ED0 802400A0 0C00EABB */  jal       get_npc_unsafe
/* 984ED4 802400A4 00A0902D */   daddu    $s2, $a1, $zero
/* 984ED8 802400A8 0040802D */  daddu     $s0, $v0, $zero
/* 984EDC 802400AC 8602008E */  lh        $v0, 0x8e($s0)
/* 984EE0 802400B0 9603008E */  lhu       $v1, 0x8e($s0)
/* 984EE4 802400B4 18400005 */  blez      $v0, .L802400CC
/* 984EE8 802400B8 2462FFFF */   addiu    $v0, $v1, -1
/* 984EEC 802400BC A602008E */  sh        $v0, 0x8e($s0)
/* 984EF0 802400C0 00021400 */  sll       $v0, $v0, 0x10
/* 984EF4 802400C4 1C400033 */  bgtz      $v0, .L80240194
/* 984EF8 802400C8 00000000 */   nop
.L802400CC:
/* 984EFC 802400CC 8602008C */  lh        $v0, 0x8c($s0)
/* 984F00 802400D0 14400030 */  bnez      $v0, .L80240194
/* 984F04 802400D4 00000000 */   nop
/* 984F08 802400D8 8E2200CC */  lw        $v0, 0xcc($s1)
/* 984F0C 802400DC 8C420024 */  lw        $v0, 0x24($v0)
/* 984F10 802400E0 AE020028 */  sw        $v0, 0x28($s0)
/* 984F14 802400E4 C6400018 */  lwc1      $f0, 0x18($s2)
/* 984F18 802400E8 E6000018 */  swc1      $f0, 0x18($s0)
/* 984F1C 802400EC 8E230088 */  lw        $v1, 0x88($s1)
/* 984F20 802400F0 24020005 */  addiu     $v0, $zero, 5
/* 984F24 802400F4 10620005 */  beq       $v1, $v0, .L8024010C
/* 984F28 802400F8 00000000 */   nop
/* 984F2C 802400FC 10600003 */  beqz      $v1, .L8024010C
/* 984F30 80240100 24020001 */   addiu    $v0, $zero, 1
/* 984F34 80240104 14620006 */  bne       $v1, $v0, .L80240120
/* 984F38 80240108 00000000 */   nop
.L8024010C:
/* 984F3C 8024010C 8E220084 */  lw        $v0, 0x84($s1)
/* 984F40 80240110 00021FC2 */  srl       $v1, $v0, 0x1f
/* 984F44 80240114 00431021 */  addu      $v0, $v0, $v1
/* 984F48 80240118 00021043 */  sra       $v0, $v0, 1
/* 984F4C 8024011C A60200A8 */  sh        $v0, 0xa8($s0)
.L80240120:
/* 984F50 80240120 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 984F54 80240124 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 984F58 80240128 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 984F5C 8024012C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 984F60 80240130 8C460028 */  lw        $a2, 0x28($v0)
/* 984F64 80240134 0C00A7B5 */  jal       dist2D
/* 984F68 80240138 8C470030 */   lw       $a3, 0x30($v0)
/* 984F6C 8024013C C6020018 */  lwc1      $f2, 0x18($s0)
/* 984F70 80240140 46020003 */  div.s     $f0, $f0, $f2
/* 984F74 80240144 3C018024 */  lui       $at, %hi(D_80241650)
/* 984F78 80240148 D4221650 */  ldc1      $f2, %lo(D_80241650)($at)
/* 984F7C 8024014C 46000021 */  cvt.d.s   $f0, $f0
/* 984F80 80240150 46220000 */  add.d     $f0, $f0, $f2
/* 984F84 80240154 4620010D */  trunc.w.d $f4, $f0
/* 984F88 80240158 44022000 */  mfc1      $v0, $f4
/* 984F8C 8024015C 00000000 */  nop
/* 984F90 80240160 A602008E */  sh        $v0, 0x8e($s0)
/* 984F94 80240164 00021400 */  sll       $v0, $v0, 0x10
/* 984F98 80240168 8E230078 */  lw        $v1, 0x78($s1)
/* 984F9C 8024016C 00021403 */  sra       $v0, $v0, 0x10
/* 984FA0 80240170 0043102A */  slt       $v0, $v0, $v1
/* 984FA4 80240174 10400003 */  beqz      $v0, .L80240184
/* 984FA8 80240178 00000000 */   nop
/* 984FAC 8024017C 9622007A */  lhu       $v0, 0x7a($s1)
/* 984FB0 80240180 A602008E */  sh        $v0, 0x8e($s0)
.L80240184:
/* 984FB4 80240184 8602008E */  lh        $v0, 0x8e($s0)
/* 984FB8 80240188 AE22007C */  sw        $v0, 0x7c($s1)
/* 984FBC 8024018C 2402000E */  addiu     $v0, $zero, 0xe
/* 984FC0 80240190 AE620070 */  sw        $v0, 0x70($s3)
.L80240194:
/* 984FC4 80240194 8FBF0020 */  lw        $ra, 0x20($sp)
/* 984FC8 80240198 8FB3001C */  lw        $s3, 0x1c($sp)
/* 984FCC 8024019C 8FB20018 */  lw        $s2, 0x18($sp)
/* 984FD0 802401A0 8FB10014 */  lw        $s1, 0x14($sp)
/* 984FD4 802401A4 8FB00010 */  lw        $s0, 0x10($sp)
/* 984FD8 802401A8 03E00008 */  jr        $ra
/* 984FDC 802401AC 27BD0028 */   addiu    $sp, $sp, 0x28
