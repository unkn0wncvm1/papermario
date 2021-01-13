.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240FA8_BA5728
/* BA5728 80240FA8 27BDFF80 */  addiu     $sp, $sp, -0x80
/* BA572C 80240FAC AFBF0064 */  sw        $ra, 0x64($sp)
/* BA5730 80240FB0 AFBE0060 */  sw        $fp, 0x60($sp)
/* BA5734 80240FB4 AFB7005C */  sw        $s7, 0x5c($sp)
/* BA5738 80240FB8 AFB60058 */  sw        $s6, 0x58($sp)
/* BA573C 80240FBC AFB50054 */  sw        $s5, 0x54($sp)
/* BA5740 80240FC0 AFB40050 */  sw        $s4, 0x50($sp)
/* BA5744 80240FC4 AFB3004C */  sw        $s3, 0x4c($sp)
/* BA5748 80240FC8 AFB20048 */  sw        $s2, 0x48($sp)
/* BA574C 80240FCC AFB10044 */  sw        $s1, 0x44($sp)
/* BA5750 80240FD0 AFB00040 */  sw        $s0, 0x40($sp)
/* BA5754 80240FD4 F7B80078 */  sdc1      $f24, 0x78($sp)
/* BA5758 80240FD8 F7B60070 */  sdc1      $f22, 0x70($sp)
/* BA575C 80240FDC F7B40068 */  sdc1      $f20, 0x68($sp)
/* BA5760 80240FE0 AFA40080 */  sw        $a0, 0x80($sp)
/* BA5764 80240FE4 8C960148 */  lw        $s6, 0x148($a0)
/* BA5768 80240FE8 00C0902D */  daddu     $s2, $a2, $zero
/* BA576C 80240FEC 86C40008 */  lh        $a0, 8($s6)
/* BA5770 80240FF0 0C00EABB */  jal       get_npc_unsafe
/* BA5774 80240FF4 0000B82D */   daddu    $s7, $zero, $zero
/* BA5778 80240FF8 0040882D */  daddu     $s1, $v0, $zero
/* BA577C 80240FFC 9622008E */  lhu       $v0, 0x8e($s1)
/* BA5780 80241000 2442FFFF */  addiu     $v0, $v0, -1
/* BA5784 80241004 A622008E */  sh        $v0, 0x8e($s1)
/* BA5788 80241008 00021400 */  sll       $v0, $v0, 0x10
/* BA578C 8024100C 8EC30090 */  lw        $v1, 0x90($s6)
/* BA5790 80241010 00021403 */  sra       $v0, $v0, 0x10
/* BA5794 80241014 0062182A */  slt       $v1, $v1, $v0
/* BA5798 80241018 14600005 */  bnez      $v1, .L80241030
/* BA579C 8024101C 02E0F02D */   daddu    $fp, $s7, $zero
/* BA57A0 80241020 8EC20000 */  lw        $v0, ($s6)
/* BA57A4 80241024 3C031F10 */  lui       $v1, 0x1f10
/* BA57A8 80241028 00431025 */  or        $v0, $v0, $v1
/* BA57AC 8024102C AEC20000 */  sw        $v0, ($s6)
.L80241030:
/* BA57B0 80241030 8622008E */  lh        $v0, 0x8e($s1)
/* BA57B4 80241034 1440025D */  bnez      $v0, .L802419AC
/* BA57B8 80241038 00000000 */   nop
/* BA57BC 8024103C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* BA57C0 80241040 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* BA57C4 80241044 0C00A6C9 */  jal       clamp_angle
/* BA57C8 80241048 C44C00A8 */   lwc1     $f12, 0xa8($v0)
/* BA57CC 8024104C 3C014334 */  lui       $at, 0x4334
/* BA57D0 80241050 44811000 */  mtc1      $at, $f2
/* BA57D4 80241054 00000000 */  nop
/* BA57D8 80241058 4602003C */  c.lt.s    $f0, $f2
/* BA57DC 8024105C 00000000 */  nop
/* BA57E0 80241060 45000011 */  bc1f      .L802410A8
/* BA57E4 80241064 00000000 */   nop
/* BA57E8 80241068 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* BA57EC 8024106C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* BA57F0 80241070 3C0142B4 */  lui       $at, 0x42b4
/* BA57F4 80241074 44816000 */  mtc1      $at, $f12
/* BA57F8 80241078 00031080 */  sll       $v0, $v1, 2
/* BA57FC 8024107C 00431021 */  addu      $v0, $v0, $v1
/* BA5800 80241080 00021080 */  sll       $v0, $v0, 2
/* BA5804 80241084 00431023 */  subu      $v0, $v0, $v1
/* BA5808 80241088 000218C0 */  sll       $v1, $v0, 3
/* BA580C 8024108C 00431021 */  addu      $v0, $v0, $v1
/* BA5810 80241090 000210C0 */  sll       $v0, $v0, 3
/* BA5814 80241094 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* BA5818 80241098 00220821 */  addu      $at, $at, $v0
/* BA581C 8024109C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* BA5820 802410A0 08090439 */  j         .L802410E4
/* BA5824 802410A4 460C0301 */   sub.s    $f12, $f0, $f12
.L802410A8:
/* BA5828 802410A8 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* BA582C 802410AC 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* BA5830 802410B0 3C0142B4 */  lui       $at, 0x42b4
/* BA5834 802410B4 44816000 */  mtc1      $at, $f12
/* BA5838 802410B8 00031080 */  sll       $v0, $v1, 2
/* BA583C 802410BC 00431021 */  addu      $v0, $v0, $v1
/* BA5840 802410C0 00021080 */  sll       $v0, $v0, 2
/* BA5844 802410C4 00431023 */  subu      $v0, $v0, $v1
/* BA5848 802410C8 000218C0 */  sll       $v1, $v0, 3
/* BA584C 802410CC 00431021 */  addu      $v0, $v0, $v1
/* BA5850 802410D0 000210C0 */  sll       $v0, $v0, 3
/* BA5854 802410D4 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* BA5858 802410D8 00220821 */  addu      $at, $at, $v0
/* BA585C 802410DC C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* BA5860 802410E0 460C0300 */  add.s     $f12, $f0, $f12
.L802410E4:
/* BA5864 802410E4 0C00A6C9 */  jal       clamp_angle
/* BA5868 802410E8 00000000 */   nop
/* BA586C 802410EC 46000586 */  mov.s     $f22, $f0
/* BA5870 802410F0 3C014334 */  lui       $at, 0x4334
/* BA5874 802410F4 44816000 */  mtc1      $at, $f12
/* BA5878 802410F8 0C00A6C9 */  jal       clamp_angle
/* BA587C 802410FC 460CB300 */   add.s    $f12, $f22, $f12
/* BA5880 80241100 8EC20088 */  lw        $v0, 0x88($s6)
/* BA5884 80241104 14400010 */  bnez      $v0, .L80241148
/* BA5888 80241108 46000606 */   mov.s    $f24, $f0
/* BA588C 8024110C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* BA5890 80241110 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* BA5894 80241114 804300B4 */  lb        $v1, 0xb4($v0)
/* BA5898 80241118 3C014200 */  lui       $at, 0x4200
/* BA589C 8024111C 4481A000 */  mtc1      $at, $f20
/* BA58A0 80241120 10600016 */  beqz      $v1, .L8024117C
/* BA58A4 80241124 24020001 */   addiu    $v0, $zero, 1
/* BA58A8 80241128 3C0142C8 */  lui       $at, 0x42c8
/* BA58AC 8024112C 4481A000 */  mtc1      $at, $f20
/* BA58B0 80241130 14620013 */  bne       $v1, $v0, .L80241180
/* BA58B4 80241134 26300038 */   addiu    $s0, $s1, 0x38
/* BA58B8 80241138 3C0142B4 */  lui       $at, 0x42b4
/* BA58BC 8024113C 4481A000 */  mtc1      $at, $f20
/* BA58C0 80241140 08090461 */  j         .L80241184
/* BA58C4 80241144 0200202D */   daddu    $a0, $s0, $zero
.L80241148:
/* BA58C8 80241148 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* BA58CC 8024114C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* BA58D0 80241150 804300B4 */  lb        $v1, 0xb4($v0)
/* BA58D4 80241154 3C014218 */  lui       $at, 0x4218
/* BA58D8 80241158 4481A000 */  mtc1      $at, $f20
/* BA58DC 8024115C 10600007 */  beqz      $v1, .L8024117C
/* BA58E0 80241160 24020001 */   addiu    $v0, $zero, 1
/* BA58E4 80241164 3C0142B4 */  lui       $at, 0x42b4
/* BA58E8 80241168 4481A000 */  mtc1      $at, $f20
/* BA58EC 8024116C 14620004 */  bne       $v1, $v0, .L80241180
/* BA58F0 80241170 26300038 */   addiu    $s0, $s1, 0x38
/* BA58F4 80241174 3C014296 */  lui       $at, 0x4296
/* BA58F8 80241178 4481A000 */  mtc1      $at, $f20
.L8024117C:
/* BA58FC 8024117C 26300038 */  addiu     $s0, $s1, 0x38
.L80241180:
/* BA5900 80241180 0200202D */  daddu     $a0, $s0, $zero
.L80241184:
/* BA5904 80241184 3C15800F */  lui       $s5, %hi(gPlayerStatusPtr)
/* BA5908 80241188 26B57B30 */  addiu     $s5, $s5, %lo(gPlayerStatusPtr)
/* BA590C 8024118C 4407C000 */  mfc1      $a3, $f24
/* BA5910 80241190 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5914 80241194 8EA30000 */  lw        $v1, ($s5)
/* BA5918 80241198 44824000 */  mtc1      $v0, $f8
/* BA591C 8024119C 00000000 */  nop
/* BA5920 802411A0 46804220 */  cvt.s.w   $f8, $f8
/* BA5924 802411A4 C4600028 */  lwc1      $f0, 0x28($v1)
/* BA5928 802411A8 44064000 */  mfc1      $a2, $f8
/* BA592C 802411AC 26330040 */  addiu     $s3, $s1, 0x40
/* BA5930 802411B0 E6200038 */  swc1      $f0, 0x38($s1)
/* BA5934 802411B4 C4600030 */  lwc1      $f0, 0x30($v1)
/* BA5938 802411B8 0260282D */  daddu     $a1, $s3, $zero
/* BA593C 802411BC 0C00A7E7 */  jal       add_vec2D_polar
/* BA5940 802411C0 E6200040 */   swc1     $f0, 0x40($s1)
/* BA5944 802411C4 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5948 802411C8 44820000 */  mtc1      $v0, $f0
/* BA594C 802411CC 00000000 */  nop
/* BA5950 802411D0 46800020 */  cvt.s.w   $f0, $f0
/* BA5954 802411D4 4600A000 */  add.s     $f0, $f20, $f0
/* BA5958 802411D8 4406B000 */  mfc1      $a2, $f22
/* BA595C 802411DC 44050000 */  mfc1      $a1, $f0
/* BA5960 802411E0 0C00EA95 */  jal       npc_move_heading
/* BA5964 802411E4 0220202D */   daddu    $a0, $s1, $zero
/* BA5968 802411E8 8EC20088 */  lw        $v0, 0x88($s6)
/* BA596C 802411EC 1440005D */  bnez      $v0, .L80241364
/* BA5970 802411F0 00000000 */   nop
/* BA5974 802411F4 C6200038 */  lwc1      $f0, 0x38($s1)
/* BA5978 802411F8 3C018024 */  lui       $at, %hi(D_80245948)
/* BA597C 802411FC D4245948 */  ldc1      $f4, %lo(D_80245948)($at)
/* BA5980 80241200 46000021 */  cvt.d.s   $f0, $f0
/* BA5984 80241204 4620203C */  c.lt.d    $f4, $f0
/* BA5988 80241208 00000000 */  nop
/* BA598C 8024120C 45000005 */  bc1f      .L80241224
/* BA5990 80241210 00000000 */   nop
/* BA5994 80241214 3C0143BE */  lui       $at, 0x43be
/* BA5998 80241218 44810000 */  mtc1      $at, $f0
/* BA599C 8024121C 00000000 */  nop
/* BA59A0 80241220 E6200038 */  swc1      $f0, 0x38($s1)
.L80241224:
/* BA59A4 80241224 C6200038 */  lwc1      $f0, 0x38($s1)
/* BA59A8 80241228 3C018024 */  lui       $at, %hi(func_80245950_8061D0)
/* BA59AC 8024122C D4225950 */  ldc1      $f2, %lo(func_80245950_8061D0)($at)
/* BA59B0 80241230 46000021 */  cvt.d.s   $f0, $f0
/* BA59B4 80241234 4622003C */  c.lt.d    $f0, $f2
/* BA59B8 80241238 00000000 */  nop
/* BA59BC 8024123C 45000005 */  bc1f      .L80241254
/* BA59C0 80241240 00000000 */   nop
/* BA59C4 80241244 3C01C3BE */  lui       $at, 0xc3be
/* BA59C8 80241248 44810000 */  mtc1      $at, $f0
/* BA59CC 8024124C 00000000 */  nop
/* BA59D0 80241250 E6200038 */  swc1      $f0, 0x38($s1)
.L80241254:
/* BA59D4 80241254 C6200040 */  lwc1      $f0, 0x40($s1)
/* BA59D8 80241258 46000021 */  cvt.d.s   $f0, $f0
/* BA59DC 8024125C 4620203C */  c.lt.d    $f4, $f0
/* BA59E0 80241260 00000000 */  nop
/* BA59E4 80241264 45000005 */  bc1f      .L8024127C
/* BA59E8 80241268 00000000 */   nop
/* BA59EC 8024126C 3C0143BE */  lui       $at, 0x43be
/* BA59F0 80241270 44810000 */  mtc1      $at, $f0
/* BA59F4 80241274 00000000 */  nop
/* BA59F8 80241278 E6200040 */  swc1      $f0, 0x40($s1)
.L8024127C:
/* BA59FC 8024127C C6200040 */  lwc1      $f0, 0x40($s1)
/* BA5A00 80241280 46000021 */  cvt.d.s   $f0, $f0
/* BA5A04 80241284 4622003C */  c.lt.d    $f0, $f2
/* BA5A08 80241288 00000000 */  nop
/* BA5A0C 8024128C 45000005 */  bc1f      .L802412A4
/* BA5A10 80241290 00000000 */   nop
/* BA5A14 80241294 3C01C3BE */  lui       $at, 0xc3be
/* BA5A18 80241298 44810000 */  mtc1      $at, $f0
/* BA5A1C 8024129C 00000000 */  nop
/* BA5A20 802412A0 E6200040 */  swc1      $f0, 0x40($s1)
.L802412A4:
/* BA5A24 802412A4 C6220038 */  lwc1      $f2, 0x38($s1)
/* BA5A28 802412A8 46021082 */  mul.s     $f2, $f2, $f2
/* BA5A2C 802412AC 00000000 */  nop
/* BA5A30 802412B0 C6200040 */  lwc1      $f0, 0x40($s1)
/* BA5A34 802412B4 46000002 */  mul.s     $f0, $f0, $f0
/* BA5A38 802412B8 00000000 */  nop
/* BA5A3C 802412BC 46001300 */  add.s     $f12, $f2, $f0
/* BA5A40 802412C0 46006004 */  sqrt.s    $f0, $f12
/* BA5A44 802412C4 46000032 */  c.eq.s    $f0, $f0
/* BA5A48 802412C8 00000000 */  nop
/* BA5A4C 802412CC 45010003 */  bc1t      .L802412DC
/* BA5A50 802412D0 00000000 */   nop
/* BA5A54 802412D4 0C0187BC */  jal       sqrtf
/* BA5A58 802412D8 00000000 */   nop
.L802412DC:
/* BA5A5C 802412DC 8E260038 */  lw        $a2, 0x38($s1)
/* BA5A60 802412E0 8E270040 */  lw        $a3, 0x40($s1)
/* BA5A64 802412E4 4480A000 */  mtc1      $zero, $f20
/* BA5A68 802412E8 E7A00038 */  swc1      $f0, 0x38($sp)
/* BA5A6C 802412EC 4600A306 */  mov.s     $f12, $f20
/* BA5A70 802412F0 0C00A720 */  jal       atan2
/* BA5A74 802412F4 4600A386 */   mov.s    $f14, $f20
/* BA5A78 802412F8 46000586 */  mov.s     $f22, $f0
/* BA5A7C 802412FC C7A20038 */  lwc1      $f2, 0x38($sp)
/* BA5A80 80241300 3C018024 */  lui       $at, %hi(D_80245958)
/* BA5A84 80241304 D4205958 */  ldc1      $f0, %lo(D_80245958)($at)
/* BA5A88 80241308 460010A1 */  cvt.d.s   $f2, $f2
/* BA5A8C 8024130C 4620103C */  c.lt.d    $f2, $f0
/* BA5A90 80241310 00000000 */  nop
/* BA5A94 80241314 45000004 */  bc1f      .L80241328
/* BA5A98 80241318 0200202D */   daddu    $a0, $s0, $zero
/* BA5A9C 8024131C 3C064398 */  lui       $a2, 0x4398
/* BA5AA0 80241320 080904D2 */  j         .L80241348
/* BA5AA4 80241324 34C68000 */   ori      $a2, $a2, 0x8000
.L80241328:
/* BA5AA8 80241328 3C018024 */  lui       $at, %hi(D_80245960)
/* BA5AAC 8024132C D4205960 */  ldc1      $f0, %lo(D_80245960)($at)
/* BA5AB0 80241330 4622003C */  c.lt.d    $f0, $f2
/* BA5AB4 80241334 00000000 */  nop
/* BA5AB8 80241338 450000FA */  bc1f      .L80241724
/* BA5ABC 8024133C 00000000 */   nop
/* BA5AC0 80241340 3C0643BB */  lui       $a2, 0x43bb
/* BA5AC4 80241344 34C68000 */  ori       $a2, $a2, 0x8000
.L80241348:
/* BA5AC8 80241348 4407B000 */  mfc1      $a3, $f22
/* BA5ACC 8024134C 0260282D */  daddu     $a1, $s3, $zero
/* BA5AD0 80241350 E6340038 */  swc1      $f20, 0x38($s1)
/* BA5AD4 80241354 0C00A7E7 */  jal       add_vec2D_polar
/* BA5AD8 80241358 E6340040 */   swc1     $f20, 0x40($s1)
/* BA5ADC 8024135C 080905C9 */  j         .L80241724
/* BA5AE0 80241360 00000000 */   nop
.L80241364:
/* BA5AE4 80241364 8E220000 */  lw        $v0, ($s1)
/* BA5AE8 80241368 30420040 */  andi      $v0, $v0, 0x40
/* BA5AEC 8024136C 144000B0 */  bnez      $v0, .L80241630
/* BA5AF0 80241370 27A50020 */   addiu    $a1, $sp, 0x20
/* BA5AF4 80241374 27B40020 */  addiu     $s4, $sp, 0x20
/* BA5AF8 80241378 0280282D */  daddu     $a1, $s4, $zero
/* BA5AFC 8024137C 27B30024 */  addiu     $s3, $sp, 0x24
/* BA5B00 80241380 8EA20000 */  lw        $v0, ($s5)
/* BA5B04 80241384 3C014032 */  lui       $at, 0x4032
/* BA5B08 80241388 44811800 */  mtc1      $at, $f3
/* BA5B0C 8024138C 44801000 */  mtc1      $zero, $f2
/* BA5B10 80241390 C440002C */  lwc1      $f0, 0x2c($v0)
/* BA5B14 80241394 C4460028 */  lwc1      $f6, 0x28($v0)
/* BA5B18 80241398 C4440030 */  lwc1      $f4, 0x30($v0)
/* BA5B1C 8024139C 46000021 */  cvt.d.s   $f0, $f0
/* BA5B20 802413A0 46220000 */  add.d     $f0, $f0, $f2
/* BA5B24 802413A4 E7A60020 */  swc1      $f6, 0x20($sp)
/* BA5B28 802413A8 E7A40028 */  swc1      $f4, 0x28($sp)
/* BA5B2C 802413AC 46200020 */  cvt.s.d   $f0, $f0
/* BA5B30 802413B0 E7A00024 */  swc1      $f0, 0x24($sp)
/* BA5B34 802413B4 E7B40010 */  swc1      $f20, 0x10($sp)
/* BA5B38 802413B8 E7B60014 */  swc1      $f22, 0x14($sp)
/* BA5B3C 802413BC 862200A8 */  lh        $v0, 0xa8($s1)
/* BA5B40 802413C0 0260302D */  daddu     $a2, $s3, $zero
/* BA5B44 802413C4 44820000 */  mtc1      $v0, $f0
/* BA5B48 802413C8 00000000 */  nop
/* BA5B4C 802413CC 46800020 */  cvt.s.w   $f0, $f0
/* BA5B50 802413D0 E7A00018 */  swc1      $f0, 0x18($sp)
/* BA5B54 802413D4 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5B58 802413D8 27B00028 */  addiu     $s0, $sp, 0x28
/* BA5B5C 802413DC 44820000 */  mtc1      $v0, $f0
/* BA5B60 802413E0 00000000 */  nop
/* BA5B64 802413E4 46800020 */  cvt.s.w   $f0, $f0
/* BA5B68 802413E8 E7A0001C */  swc1      $f0, 0x1c($sp)
/* BA5B6C 802413EC 8E240080 */  lw        $a0, 0x80($s1)
/* BA5B70 802413F0 0C037711 */  jal       func_800DDC44
/* BA5B74 802413F4 0200382D */   daddu    $a3, $s0, $zero
/* BA5B78 802413F8 104000CA */  beqz      $v0, .L80241724
/* BA5B7C 802413FC 0280282D */   daddu    $a1, $s4, $zero
/* BA5B80 80241400 8EA20000 */  lw        $v0, ($s5)
/* BA5B84 80241404 3C018024 */  lui       $at, %hi(D_80245968)
/* BA5B88 80241408 D4225968 */  ldc1      $f2, %lo(D_80245968)($at)
/* BA5B8C 8024140C C440002C */  lwc1      $f0, 0x2c($v0)
/* BA5B90 80241410 C4460028 */  lwc1      $f6, 0x28($v0)
/* BA5B94 80241414 C4440030 */  lwc1      $f4, 0x30($v0)
/* BA5B98 80241418 46000021 */  cvt.d.s   $f0, $f0
/* BA5B9C 8024141C 46220000 */  add.d     $f0, $f0, $f2
/* BA5BA0 80241420 E7A60020 */  swc1      $f6, 0x20($sp)
/* BA5BA4 80241424 E7A40028 */  swc1      $f4, 0x28($sp)
/* BA5BA8 80241428 46200020 */  cvt.s.d   $f0, $f0
/* BA5BAC 8024142C E7A00024 */  swc1      $f0, 0x24($sp)
/* BA5BB0 80241430 E7B40010 */  swc1      $f20, 0x10($sp)
/* BA5BB4 80241434 E7B60014 */  swc1      $f22, 0x14($sp)
/* BA5BB8 80241438 862200A8 */  lh        $v0, 0xa8($s1)
/* BA5BBC 8024143C 44820000 */  mtc1      $v0, $f0
/* BA5BC0 80241440 00000000 */  nop
/* BA5BC4 80241444 46800020 */  cvt.s.w   $f0, $f0
/* BA5BC8 80241448 E7A00018 */  swc1      $f0, 0x18($sp)
/* BA5BCC 8024144C 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5BD0 80241450 0260302D */  daddu     $a2, $s3, $zero
/* BA5BD4 80241454 44820000 */  mtc1      $v0, $f0
/* BA5BD8 80241458 00000000 */  nop
/* BA5BDC 8024145C 46800020 */  cvt.s.w   $f0, $f0
/* BA5BE0 80241460 E7A0001C */  swc1      $f0, 0x1c($sp)
/* BA5BE4 80241464 8E240080 */  lw        $a0, 0x80($s1)
/* BA5BE8 80241468 0C037711 */  jal       func_800DDC44
/* BA5BEC 8024146C 0200382D */   daddu    $a3, $s0, $zero
/* BA5BF0 80241470 27A5002C */  addiu     $a1, $sp, 0x2c
/* BA5BF4 80241474 27A60030 */  addiu     $a2, $sp, 0x30
/* BA5BF8 80241478 27A70034 */  addiu     $a3, $sp, 0x34
/* BA5BFC 8024147C 27A30038 */  addiu     $v1, $sp, 0x38
/* BA5C00 80241480 C6220038 */  lwc1      $f2, 0x38($s1)
/* BA5C04 80241484 C620003C */  lwc1      $f0, 0x3c($s1)
/* BA5C08 80241488 3C014348 */  lui       $at, 0x4348
/* BA5C0C 8024148C 44813000 */  mtc1      $at, $f6
/* BA5C10 80241490 46000021 */  cvt.d.s   $f0, $f0
/* BA5C14 80241494 E7A2002C */  swc1      $f2, 0x2c($sp)
/* BA5C18 80241498 3C014059 */  lui       $at, 0x4059
/* BA5C1C 8024149C 44811800 */  mtc1      $at, $f3
/* BA5C20 802414A0 44801000 */  mtc1      $zero, $f2
/* BA5C24 802414A4 C6240040 */  lwc1      $f4, 0x40($s1)
/* BA5C28 802414A8 46220000 */  add.d     $f0, $f0, $f2
/* BA5C2C 802414AC E7A60038 */  swc1      $f6, 0x38($sp)
/* BA5C30 802414B0 E7A40034 */  swc1      $f4, 0x34($sp)
/* BA5C34 802414B4 46200020 */  cvt.s.d   $f0, $f0
/* BA5C38 802414B8 E7A00030 */  swc1      $f0, 0x30($sp)
/* BA5C3C 802414BC AFA30010 */  sw        $v1, 0x10($sp)
/* BA5C40 802414C0 8E240080 */  lw        $a0, 0x80($s1)
/* BA5C44 802414C4 0C0372DF */  jal       func_800DCB7C
/* BA5C48 802414C8 0040802D */   daddu    $s0, $v0, $zero
/* BA5C4C 802414CC 1600001C */  bnez      $s0, .L80241540
/* BA5C50 802414D0 00000000 */   nop
/* BA5C54 802414D4 1040001A */  beqz      $v0, .L80241540
/* BA5C58 802414D8 00000000 */   nop
/* BA5C5C 802414DC C7A20038 */  lwc1      $f2, 0x38($sp)
/* BA5C60 802414E0 3C014054 */  lui       $at, 0x4054
/* BA5C64 802414E4 44810800 */  mtc1      $at, $f1
/* BA5C68 802414E8 44800000 */  mtc1      $zero, $f0
/* BA5C6C 802414EC 460010A1 */  cvt.d.s   $f2, $f2
/* BA5C70 802414F0 4622003C */  c.lt.d    $f0, $f2
/* BA5C74 802414F4 00000000 */  nop
/* BA5C78 802414F8 45000011 */  bc1f      .L80241540
/* BA5C7C 802414FC 00000000 */   nop
/* BA5C80 80241500 3C01405E */  lui       $at, 0x405e
/* BA5C84 80241504 44810800 */  mtc1      $at, $f1
/* BA5C88 80241508 44800000 */  mtc1      $zero, $f0
/* BA5C8C 8024150C 00000000 */  nop
/* BA5C90 80241510 4620103C */  c.lt.d    $f2, $f0
/* BA5C94 80241514 00000000 */  nop
/* BA5C98 80241518 45000009 */  bc1f      .L80241540
/* BA5C9C 8024151C 00000000 */   nop
/* BA5CA0 80241520 C622003C */  lwc1      $f2, 0x3c($s1)
/* BA5CA4 80241524 C7A00030 */  lwc1      $f0, 0x30($sp)
/* BA5CA8 80241528 46001032 */  c.eq.s    $f2, $f0
/* BA5CAC 8024152C 00000000 */  nop
/* BA5CB0 80241530 45010003 */  bc1t      .L80241540
/* BA5CB4 80241534 00000000 */   nop
/* BA5CB8 80241538 080905C9 */  j         .L80241724
/* BA5CBC 8024153C 241E0001 */   addiu    $fp, $zero, 1
.L80241540:
/* BA5CC0 80241540 3C10800F */  lui       $s0, %hi(gPlayerStatusPtr)
/* BA5CC4 80241544 26107B30 */  addiu     $s0, $s0, %lo(gPlayerStatusPtr)
/* BA5CC8 80241548 8E020000 */  lw        $v0, ($s0)
/* BA5CCC 8024154C 3C014024 */  lui       $at, 0x4024
/* BA5CD0 80241550 44811800 */  mtc1      $at, $f3
/* BA5CD4 80241554 44801000 */  mtc1      $zero, $f2
/* BA5CD8 80241558 C440002C */  lwc1      $f0, 0x2c($v0)
/* BA5CDC 8024155C C4460028 */  lwc1      $f6, 0x28($v0)
/* BA5CE0 80241560 C4440030 */  lwc1      $f4, 0x30($v0)
/* BA5CE4 80241564 46000021 */  cvt.d.s   $f0, $f0
/* BA5CE8 80241568 46220000 */  add.d     $f0, $f0, $f2
/* BA5CEC 8024156C E7A60020 */  swc1      $f6, 0x20($sp)
/* BA5CF0 80241570 E7A40028 */  swc1      $f4, 0x28($sp)
/* BA5CF4 80241574 46200020 */  cvt.s.d   $f0, $f0
/* BA5CF8 80241578 E7A00024 */  swc1      $f0, 0x24($sp)
/* BA5CFC 8024157C E7B40010 */  swc1      $f20, 0x10($sp)
/* BA5D00 80241580 E7B60014 */  swc1      $f22, 0x14($sp)
/* BA5D04 80241584 862200A8 */  lh        $v0, 0xa8($s1)
/* BA5D08 80241588 27A50020 */  addiu     $a1, $sp, 0x20
/* BA5D0C 8024158C 44820000 */  mtc1      $v0, $f0
/* BA5D10 80241590 00000000 */  nop
/* BA5D14 80241594 46800020 */  cvt.s.w   $f0, $f0
/* BA5D18 80241598 E7A00018 */  swc1      $f0, 0x18($sp)
/* BA5D1C 8024159C 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5D20 802415A0 27A60024 */  addiu     $a2, $sp, 0x24
/* BA5D24 802415A4 44820000 */  mtc1      $v0, $f0
/* BA5D28 802415A8 00000000 */  nop
/* BA5D2C 802415AC 46800020 */  cvt.s.w   $f0, $f0
/* BA5D30 802415B0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* BA5D34 802415B4 8E240080 */  lw        $a0, 0x80($s1)
/* BA5D38 802415B8 0C037711 */  jal       func_800DDC44
/* BA5D3C 802415BC 27A70028 */   addiu    $a3, $sp, 0x28
/* BA5D40 802415C0 8FA60020 */  lw        $a2, 0x20($sp)
/* BA5D44 802415C4 8E020000 */  lw        $v0, ($s0)
/* BA5D48 802415C8 8FA70028 */  lw        $a3, 0x28($sp)
/* BA5D4C 802415CC C44C0028 */  lwc1      $f12, 0x28($v0)
/* BA5D50 802415D0 C44E0030 */  lwc1      $f14, 0x30($v0)
/* BA5D54 802415D4 0C00A7B5 */  jal       dist2D
/* BA5D58 802415D8 24170001 */   addiu    $s7, $zero, 1
/* BA5D5C 802415DC 46000506 */  mov.s     $f20, $f0
/* BA5D60 802415E0 8E030000 */  lw        $v1, ($s0)
/* BA5D64 802415E4 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5D68 802415E8 4407C000 */  mfc1      $a3, $f24
/* BA5D6C 802415EC 44824000 */  mtc1      $v0, $f8
/* BA5D70 802415F0 00000000 */  nop
/* BA5D74 802415F4 46804220 */  cvt.s.w   $f8, $f8
/* BA5D78 802415F8 C4600028 */  lwc1      $f0, 0x28($v1)
/* BA5D7C 802415FC 44064000 */  mfc1      $a2, $f8
/* BA5D80 80241600 26240038 */  addiu     $a0, $s1, 0x38
/* BA5D84 80241604 E6200038 */  swc1      $f0, 0x38($s1)
/* BA5D88 80241608 C4600030 */  lwc1      $f0, 0x30($v1)
/* BA5D8C 8024160C 26250040 */  addiu     $a1, $s1, 0x40
/* BA5D90 80241610 0C00A7E7 */  jal       add_vec2D_polar
/* BA5D94 80241614 E6200040 */   swc1     $f0, 0x40($s1)
/* BA5D98 80241618 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5D9C 8024161C 44820000 */  mtc1      $v0, $f0
/* BA5DA0 80241620 00000000 */  nop
/* BA5DA4 80241624 46800020 */  cvt.s.w   $f0, $f0
/* BA5DA8 80241628 080905C5 */  j         .L80241714
/* BA5DAC 8024162C 4600A500 */   add.s    $f20, $f20, $f0
.L80241630:
/* BA5DB0 80241630 8EA20000 */  lw        $v0, ($s5)
/* BA5DB4 80241634 3C014032 */  lui       $at, 0x4032
/* BA5DB8 80241638 44811800 */  mtc1      $at, $f3
/* BA5DBC 8024163C 44801000 */  mtc1      $zero, $f2
/* BA5DC0 80241640 C440002C */  lwc1      $f0, 0x2c($v0)
/* BA5DC4 80241644 C4460028 */  lwc1      $f6, 0x28($v0)
/* BA5DC8 80241648 C4440030 */  lwc1      $f4, 0x30($v0)
/* BA5DCC 8024164C 46000021 */  cvt.d.s   $f0, $f0
/* BA5DD0 80241650 46220000 */  add.d     $f0, $f0, $f2
/* BA5DD4 80241654 E7A60020 */  swc1      $f6, 0x20($sp)
/* BA5DD8 80241658 E7A40028 */  swc1      $f4, 0x28($sp)
/* BA5DDC 8024165C 46200020 */  cvt.s.d   $f0, $f0
/* BA5DE0 80241660 E7A00024 */  swc1      $f0, 0x24($sp)
/* BA5DE4 80241664 E7B40010 */  swc1      $f20, 0x10($sp)
/* BA5DE8 80241668 E7B60014 */  swc1      $f22, 0x14($sp)
/* BA5DEC 8024166C 862200A8 */  lh        $v0, 0xa8($s1)
/* BA5DF0 80241670 44820000 */  mtc1      $v0, $f0
/* BA5DF4 80241674 00000000 */  nop
/* BA5DF8 80241678 46800020 */  cvt.s.w   $f0, $f0
/* BA5DFC 8024167C E7A00018 */  swc1      $f0, 0x18($sp)
/* BA5E00 80241680 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5E04 80241684 27A60024 */  addiu     $a2, $sp, 0x24
/* BA5E08 80241688 44820000 */  mtc1      $v0, $f0
/* BA5E0C 8024168C 00000000 */  nop
/* BA5E10 80241690 46800020 */  cvt.s.w   $f0, $f0
/* BA5E14 80241694 E7A0001C */  swc1      $f0, 0x1c($sp)
/* BA5E18 80241698 8E240080 */  lw        $a0, 0x80($s1)
/* BA5E1C 8024169C 0C037711 */  jal       func_800DDC44
/* BA5E20 802416A0 27A70028 */   addiu    $a3, $sp, 0x28
/* BA5E24 802416A4 1040001F */  beqz      $v0, .L80241724
/* BA5E28 802416A8 00000000 */   nop
/* BA5E2C 802416AC 8FA60020 */  lw        $a2, 0x20($sp)
/* BA5E30 802416B0 8EA20000 */  lw        $v0, ($s5)
/* BA5E34 802416B4 8FA70028 */  lw        $a3, 0x28($sp)
/* BA5E38 802416B8 C44C0028 */  lwc1      $f12, 0x28($v0)
/* BA5E3C 802416BC 0C00A7B5 */  jal       dist2D
/* BA5E40 802416C0 C44E0030 */   lwc1     $f14, 0x30($v0)
/* BA5E44 802416C4 46000506 */  mov.s     $f20, $f0
/* BA5E48 802416C8 8EA30000 */  lw        $v1, ($s5)
/* BA5E4C 802416CC 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5E50 802416D0 4407C000 */  mfc1      $a3, $f24
/* BA5E54 802416D4 44824000 */  mtc1      $v0, $f8
/* BA5E58 802416D8 00000000 */  nop
/* BA5E5C 802416DC 46804220 */  cvt.s.w   $f8, $f8
/* BA5E60 802416E0 C4600028 */  lwc1      $f0, 0x28($v1)
/* BA5E64 802416E4 44064000 */  mfc1      $a2, $f8
/* BA5E68 802416E8 0200202D */  daddu     $a0, $s0, $zero
/* BA5E6C 802416EC E6200038 */  swc1      $f0, 0x38($s1)
/* BA5E70 802416F0 C4600030 */  lwc1      $f0, 0x30($v1)
/* BA5E74 802416F4 0260282D */  daddu     $a1, $s3, $zero
/* BA5E78 802416F8 0C00A7E7 */  jal       add_vec2D_polar
/* BA5E7C 802416FC E6200040 */   swc1     $f0, 0x40($s1)
/* BA5E80 80241700 862200A6 */  lh        $v0, 0xa6($s1)
/* BA5E84 80241704 44820000 */  mtc1      $v0, $f0
/* BA5E88 80241708 00000000 */  nop
/* BA5E8C 8024170C 46800020 */  cvt.s.w   $f0, $f0
/* BA5E90 80241710 4600A500 */  add.s     $f20, $f20, $f0
.L80241714:
/* BA5E94 80241714 4406B000 */  mfc1      $a2, $f22
/* BA5E98 80241718 4405A000 */  mfc1      $a1, $f20
/* BA5E9C 8024171C 0C00EA95 */  jal       npc_move_heading
/* BA5EA0 80241720 0220202D */   daddu    $a0, $s1, $zero
.L80241724:
/* BA5EA4 80241724 C6400008 */  lwc1      $f0, 8($s2)
/* BA5EA8 80241728 46800020 */  cvt.s.w   $f0, $f0
/* BA5EAC 8024172C 44050000 */  mfc1      $a1, $f0
/* BA5EB0 80241730 C640000C */  lwc1      $f0, 0xc($s2)
/* BA5EB4 80241734 46800020 */  cvt.s.w   $f0, $f0
/* BA5EB8 80241738 44060000 */  mfc1      $a2, $f0
/* BA5EBC 8024173C C6200040 */  lwc1      $f0, 0x40($s1)
/* BA5EC0 80241740 26300038 */  addiu     $s0, $s1, 0x38
/* BA5EC4 80241744 E7A00010 */  swc1      $f0, 0x10($sp)
/* BA5EC8 80241748 C6400010 */  lwc1      $f0, 0x10($s2)
/* BA5ECC 8024174C 46800020 */  cvt.s.w   $f0, $f0
/* BA5ED0 80241750 E7A00014 */  swc1      $f0, 0x14($sp)
/* BA5ED4 80241754 C6400014 */  lwc1      $f0, 0x14($s2)
/* BA5ED8 80241758 46800020 */  cvt.s.w   $f0, $f0
/* BA5EDC 8024175C E7A00018 */  swc1      $f0, 0x18($sp)
/* BA5EE0 80241760 8E440004 */  lw        $a0, 4($s2)
/* BA5EE4 80241764 8E270038 */  lw        $a3, 0x38($s1)
/* BA5EE8 80241768 0C0123F5 */  jal       is_point_within_region
/* BA5EEC 8024176C 26330040 */   addiu    $s3, $s1, 0x40
/* BA5EF0 80241770 1040005A */  beqz      $v0, .L802418DC
/* BA5EF4 80241774 00000000 */   nop
/* BA5EF8 80241778 8E430004 */  lw        $v1, 4($s2)
/* BA5EFC 8024177C 10600005 */  beqz      $v1, .L80241794
/* BA5F00 80241780 24020001 */   addiu    $v0, $zero, 1
/* BA5F04 80241784 10620029 */  beq       $v1, $v0, .L8024182C
/* BA5F08 80241788 00000000 */   nop
/* BA5F0C 8024178C 08090637 */  j         .L802418DC
/* BA5F10 80241790 00000000 */   nop
.L80241794:
/* BA5F14 80241794 C6480008 */  lwc1      $f8, 8($s2)
/* BA5F18 80241798 46804220 */  cvt.s.w   $f8, $f8
/* BA5F1C 8024179C 44064000 */  mfc1      $a2, $f8
/* BA5F20 802417A0 C648000C */  lwc1      $f8, 0xc($s2)
/* BA5F24 802417A4 46804220 */  cvt.s.w   $f8, $f8
/* BA5F28 802417A8 C62C0038 */  lwc1      $f12, 0x38($s1)
/* BA5F2C 802417AC C62E0040 */  lwc1      $f14, 0x40($s1)
/* BA5F30 802417B0 44074000 */  mfc1      $a3, $f8
/* BA5F34 802417B4 0C00A7B5 */  jal       dist2D
/* BA5F38 802417B8 00000000 */   nop
/* BA5F3C 802417BC C6420010 */  lwc1      $f2, 0x10($s2)
/* BA5F40 802417C0 468010A0 */  cvt.s.w   $f2, $f2
/* BA5F44 802417C4 4600103C */  c.lt.s    $f2, $f0
/* BA5F48 802417C8 00000000 */  nop
/* BA5F4C 802417CC 45000043 */  bc1f      .L802418DC
/* BA5F50 802417D0 E7A00038 */   swc1     $f0, 0x38($sp)
/* BA5F54 802417D4 C64C0008 */  lwc1      $f12, 8($s2)
/* BA5F58 802417D8 46806320 */  cvt.s.w   $f12, $f12
/* BA5F5C 802417DC 8E260038 */  lw        $a2, 0x38($s1)
/* BA5F60 802417E0 8E270040 */  lw        $a3, 0x40($s1)
/* BA5F64 802417E4 C64E000C */  lwc1      $f14, 0xc($s2)
/* BA5F68 802417E8 0C00A720 */  jal       atan2
/* BA5F6C 802417EC 468073A0 */   cvt.s.w  $f14, $f14
/* BA5F70 802417F0 0200202D */  daddu     $a0, $s0, $zero
/* BA5F74 802417F4 44070000 */  mfc1      $a3, $f0
/* BA5F78 802417F8 C6400008 */  lwc1      $f0, 8($s2)
/* BA5F7C 802417FC 46800020 */  cvt.s.w   $f0, $f0
/* BA5F80 80241800 E6200038 */  swc1      $f0, 0x38($s1)
/* BA5F84 80241804 C640000C */  lwc1      $f0, 0xc($s2)
/* BA5F88 80241808 46800020 */  cvt.s.w   $f0, $f0
/* BA5F8C 8024180C E6200040 */  swc1      $f0, 0x40($s1)
/* BA5F90 80241810 C6480010 */  lwc1      $f8, 0x10($s2)
/* BA5F94 80241814 46804220 */  cvt.s.w   $f8, $f8
/* BA5F98 80241818 44064000 */  mfc1      $a2, $f8
/* BA5F9C 8024181C 0C00A7E7 */  jal       add_vec2D_polar
/* BA5FA0 80241820 0260282D */   daddu    $a1, $s3, $zero
/* BA5FA4 80241824 08090637 */  j         .L802418DC
/* BA5FA8 80241828 00000000 */   nop
.L8024182C:
/* BA5FAC 8024182C 8E420008 */  lw        $v0, 8($s2)
/* BA5FB0 80241830 8E430010 */  lw        $v1, 0x10($s2)
/* BA5FB4 80241834 C6200038 */  lwc1      $f0, 0x38($s1)
/* BA5FB8 80241838 00431021 */  addu      $v0, $v0, $v1
/* BA5FBC 8024183C 44821000 */  mtc1      $v0, $f2
/* BA5FC0 80241840 00000000 */  nop
/* BA5FC4 80241844 468010A0 */  cvt.s.w   $f2, $f2
/* BA5FC8 80241848 4600103C */  c.lt.s    $f2, $f0
/* BA5FCC 8024184C 00000000 */  nop
/* BA5FD0 80241850 45030001 */  bc1tl     .L80241858
/* BA5FD4 80241854 E6220038 */   swc1     $f2, 0x38($s1)
.L80241858:
/* BA5FD8 80241858 8E420008 */  lw        $v0, 8($s2)
/* BA5FDC 8024185C 8E430010 */  lw        $v1, 0x10($s2)
/* BA5FE0 80241860 C6200038 */  lwc1      $f0, 0x38($s1)
/* BA5FE4 80241864 00431023 */  subu      $v0, $v0, $v1
/* BA5FE8 80241868 44821000 */  mtc1      $v0, $f2
/* BA5FEC 8024186C 00000000 */  nop
/* BA5FF0 80241870 468010A0 */  cvt.s.w   $f2, $f2
/* BA5FF4 80241874 4602003C */  c.lt.s    $f0, $f2
/* BA5FF8 80241878 00000000 */  nop
/* BA5FFC 8024187C 45030001 */  bc1tl     .L80241884
/* BA6000 80241880 E6220038 */   swc1     $f2, 0x38($s1)
.L80241884:
/* BA6004 80241884 8E42000C */  lw        $v0, 0xc($s2)
/* BA6008 80241888 8E430014 */  lw        $v1, 0x14($s2)
/* BA600C 8024188C C6200040 */  lwc1      $f0, 0x40($s1)
/* BA6010 80241890 00431021 */  addu      $v0, $v0, $v1
/* BA6014 80241894 44821000 */  mtc1      $v0, $f2
/* BA6018 80241898 00000000 */  nop
/* BA601C 8024189C 468010A0 */  cvt.s.w   $f2, $f2
/* BA6020 802418A0 4600103C */  c.lt.s    $f2, $f0
/* BA6024 802418A4 00000000 */  nop
/* BA6028 802418A8 45030001 */  bc1tl     .L802418B0
/* BA602C 802418AC E6220040 */   swc1     $f2, 0x40($s1)
.L802418B0:
/* BA6030 802418B0 8E42000C */  lw        $v0, 0xc($s2)
/* BA6034 802418B4 8E430014 */  lw        $v1, 0x14($s2)
/* BA6038 802418B8 C6200040 */  lwc1      $f0, 0x40($s1)
/* BA603C 802418BC 00431023 */  subu      $v0, $v0, $v1
/* BA6040 802418C0 44821000 */  mtc1      $v0, $f2
/* BA6044 802418C4 00000000 */  nop
/* BA6048 802418C8 468010A0 */  cvt.s.w   $f2, $f2
/* BA604C 802418CC 4602003C */  c.lt.s    $f0, $f2
/* BA6050 802418D0 00000000 */  nop
/* BA6054 802418D4 45030001 */  bc1tl     .L802418DC
/* BA6058 802418D8 E6220040 */   swc1     $f2, 0x40($s1)
.L802418DC:
/* BA605C 802418DC 16E0001F */  bnez      $s7, .L8024195C
/* BA6060 802418E0 00000000 */   nop
/* BA6064 802418E4 8E220000 */  lw        $v0, ($s1)
/* BA6068 802418E8 30420008 */  andi      $v0, $v0, 8
/* BA606C 802418EC 10400003 */  beqz      $v0, .L802418FC
/* BA6070 802418F0 27A50020 */   addiu    $a1, $sp, 0x20
/* BA6074 802418F4 13C00019 */  beqz      $fp, .L8024195C
/* BA6078 802418F8 00000000 */   nop
.L802418FC:
/* BA607C 802418FC 27A60024 */  addiu     $a2, $sp, 0x24
/* BA6080 80241900 27A20038 */  addiu     $v0, $sp, 0x38
/* BA6084 80241904 C6220038 */  lwc1      $f2, 0x38($s1)
/* BA6088 80241908 C620003C */  lwc1      $f0, 0x3c($s1)
/* BA608C 8024190C 3C0143C8 */  lui       $at, 0x43c8
/* BA6090 80241910 44813000 */  mtc1      $at, $f6
/* BA6094 80241914 46000021 */  cvt.d.s   $f0, $f0
/* BA6098 80241918 E7A20020 */  swc1      $f2, 0x20($sp)
/* BA609C 8024191C 3C018024 */  lui       $at, %hi(D_80245970)
/* BA60A0 80241920 D4225970 */  ldc1      $f2, %lo(D_80245970)($at)
/* BA60A4 80241924 C6240040 */  lwc1      $f4, 0x40($s1)
/* BA60A8 80241928 46220000 */  add.d     $f0, $f0, $f2
/* BA60AC 8024192C E7A60038 */  swc1      $f6, 0x38($sp)
/* BA60B0 80241930 E7A40028 */  swc1      $f4, 0x28($sp)
/* BA60B4 80241934 46200020 */  cvt.s.d   $f0, $f0
/* BA60B8 80241938 E7A00024 */  swc1      $f0, 0x24($sp)
/* BA60BC 8024193C AFA20010 */  sw        $v0, 0x10($sp)
/* BA60C0 80241940 8E240080 */  lw        $a0, 0x80($s1)
/* BA60C4 80241944 0C0372DF */  jal       func_800DCB7C
/* BA60C8 80241948 27A70028 */   addiu    $a3, $sp, 0x28
/* BA60CC 8024194C 10400003 */  beqz      $v0, .L8024195C
/* BA60D0 80241950 00000000 */   nop
/* BA60D4 80241954 C7A00024 */  lwc1      $f0, 0x24($sp)
/* BA60D8 80241958 E620003C */  swc1      $f0, 0x3c($s1)
.L8024195C:
/* BA60DC 8024195C C62C0038 */  lwc1      $f12, 0x38($s1)
/* BA60E0 80241960 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* BA60E4 80241964 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* BA60E8 80241968 C62E0040 */  lwc1      $f14, 0x40($s1)
/* BA60EC 8024196C 8C460028 */  lw        $a2, 0x28($v0)
/* BA60F0 80241970 0C00A720 */  jal       atan2
/* BA60F4 80241974 8C470030 */   lw       $a3, 0x30($v0)
/* BA60F8 80241978 0220202D */  daddu     $a0, $s1, $zero
/* BA60FC 8024197C 24050321 */  addiu     $a1, $zero, 0x321
/* BA6100 80241980 0000302D */  daddu     $a2, $zero, $zero
/* BA6104 80241984 0C012530 */  jal       func_800494C0
/* BA6108 80241988 E620000C */   swc1     $f0, 0xc($s1)
/* BA610C 8024198C 8EC200CC */  lw        $v0, 0xcc($s6)
/* BA6110 80241990 8C420024 */  lw        $v0, 0x24($v0)
/* BA6114 80241994 AE220028 */  sw        $v0, 0x28($s1)
/* BA6118 80241998 96C20096 */  lhu       $v0, 0x96($s6)
/* BA611C 8024199C A622008E */  sh        $v0, 0x8e($s1)
/* BA6120 802419A0 8FA80080 */  lw        $t0, 0x80($sp)
/* BA6124 802419A4 2402000B */  addiu     $v0, $zero, 0xb
/* BA6128 802419A8 AD020070 */  sw        $v0, 0x70($t0)
.L802419AC:
/* BA612C 802419AC 8FBF0064 */  lw        $ra, 0x64($sp)
/* BA6130 802419B0 8FBE0060 */  lw        $fp, 0x60($sp)
/* BA6134 802419B4 8FB7005C */  lw        $s7, 0x5c($sp)
/* BA6138 802419B8 8FB60058 */  lw        $s6, 0x58($sp)
/* BA613C 802419BC 8FB50054 */  lw        $s5, 0x54($sp)
/* BA6140 802419C0 8FB40050 */  lw        $s4, 0x50($sp)
/* BA6144 802419C4 8FB3004C */  lw        $s3, 0x4c($sp)
/* BA6148 802419C8 8FB20048 */  lw        $s2, 0x48($sp)
/* BA614C 802419CC 8FB10044 */  lw        $s1, 0x44($sp)
/* BA6150 802419D0 8FB00040 */  lw        $s0, 0x40($sp)
/* BA6154 802419D4 D7B80078 */  ldc1      $f24, 0x78($sp)
/* BA6158 802419D8 D7B60070 */  ldc1      $f22, 0x70($sp)
/* BA615C 802419DC D7B40068 */  ldc1      $f20, 0x68($sp)
/* BA6160 802419E0 03E00008 */  jr        $ra
/* BA6164 802419E4 27BD0080 */   addiu    $sp, $sp, 0x80
