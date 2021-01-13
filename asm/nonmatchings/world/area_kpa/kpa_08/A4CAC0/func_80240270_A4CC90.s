.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240270_A4CC90
/* A4CC90 80240270 27BDFC78 */  addiu     $sp, $sp, -0x388
/* A4CC94 80240274 AFB60378 */  sw        $s6, 0x378($sp)
/* A4CC98 80240278 0080B02D */  daddu     $s6, $a0, $zero
/* A4CC9C 8024027C AFBF037C */  sw        $ra, 0x37c($sp)
/* A4CCA0 80240280 AFB50374 */  sw        $s5, 0x374($sp)
/* A4CCA4 80240284 AFB40370 */  sw        $s4, 0x370($sp)
/* A4CCA8 80240288 AFB3036C */  sw        $s3, 0x36c($sp)
/* A4CCAC 8024028C AFB20368 */  sw        $s2, 0x368($sp)
/* A4CCB0 80240290 AFB10364 */  sw        $s1, 0x364($sp)
/* A4CCB4 80240294 AFB00360 */  sw        $s0, 0x360($sp)
/* A4CCB8 80240298 F7B40380 */  sdc1      $f20, 0x380($sp)
/* A4CCBC 8024029C 8ED20148 */  lw        $s2, 0x148($s6)
/* A4CCC0 802402A0 86440008 */  lh        $a0, 8($s2)
/* A4CCC4 802402A4 0C00EABB */  jal       get_npc_unsafe
/* A4CCC8 802402A8 00A0802D */   daddu    $s0, $a1, $zero
/* A4CCCC 802402AC 86440008 */  lh        $a0, 8($s2)
/* A4CCD0 802402B0 0040882D */  daddu     $s1, $v0, $zero
/* A4CCD4 802402B4 0C00FB3A */  jal       get_enemy
/* A4CCD8 802402B8 2484FFFF */   addiu    $a0, $a0, -1
/* A4CCDC 802402BC 84440008 */  lh        $a0, 8($v0)
/* A4CCE0 802402C0 0C00EABB */  jal       get_npc_unsafe
/* A4CCE4 802402C4 0000A82D */   daddu    $s5, $zero, $zero
/* A4CCE8 802402C8 27B30020 */  addiu     $s3, $sp, 0x20
/* A4CCEC 802402CC 16000005 */  bnez      $s0, .L802402E4
/* A4CCF0 802402D0 0040A02D */   daddu    $s4, $v0, $zero
/* A4CCF4 802402D4 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A4CCF8 802402D8 30420004 */  andi      $v0, $v0, 4
/* A4CCFC 802402DC 10400018 */  beqz      $v0, .L80240340
/* A4CD00 802402E0 00000000 */   nop
.L802402E4:
/* A4CD04 802402E4 3C030024 */  lui       $v1, 0x24
/* A4CD08 802402E8 34630102 */  ori       $v1, $v1, 0x102
/* A4CD0C 802402EC 3C041620 */  lui       $a0, 0x1620
/* A4CD10 802402F0 AEC00070 */  sw        $zero, 0x70($s6)
/* A4CD14 802402F4 8E220000 */  lw        $v0, ($s1)
/* A4CD18 802402F8 34840040 */  ori       $a0, $a0, 0x40
/* A4CD1C 802402FC A620008E */  sh        $zero, 0x8e($s1)
/* A4CD20 80240300 00431025 */  or        $v0, $v0, $v1
/* A4CD24 80240304 AE220000 */  sw        $v0, ($s1)
/* A4CD28 80240308 8E420000 */  lw        $v0, ($s2)
/* A4CD2C 8024030C 3C013ECC */  lui       $at, 0x3ecc
/* A4CD30 80240310 3421CCCD */  ori       $at, $at, 0xcccd
/* A4CD34 80240314 44810000 */  mtc1      $at, $f0
/* A4CD38 80240318 00441025 */  or        $v0, $v0, $a0
/* A4CD3C 8024031C AE420000 */  sw        $v0, ($s2)
/* A4CD40 80240320 E6200054 */  swc1      $f0, 0x54($s1)
/* A4CD44 80240324 E6200058 */  swc1      $f0, 0x58($s1)
/* A4CD48 80240328 8E4300B0 */  lw        $v1, 0xb0($s2)
/* A4CD4C 8024032C 30620004 */  andi      $v0, $v1, 4
/* A4CD50 80240330 10400003 */  beqz      $v0, .L80240340
/* A4CD54 80240334 2402FFFB */   addiu    $v0, $zero, -5
/* A4CD58 80240338 00621024 */  and       $v0, $v1, $v0
/* A4CD5C 8024033C AE4200B0 */  sw        $v0, 0xb0($s2)
.L80240340:
/* A4CD60 80240340 8EC30070 */  lw        $v1, 0x70($s6)
/* A4CD64 80240344 2C620005 */  sltiu     $v0, $v1, 5
/* A4CD68 80240348 10400101 */  beqz      $v0, .L80240750
/* A4CD6C 8024034C 00031080 */   sll      $v0, $v1, 2
/* A4CD70 80240350 3C018024 */  lui       $at, %hi(jtbl_80242540_A4EF60)
/* A4CD74 80240354 00220821 */  addu      $at, $at, $v0
/* A4CD78 80240358 8C222540 */  lw        $v0, %lo(jtbl_80242540_A4EF60)($at)
/* A4CD7C 8024035C 00400008 */  jr        $v0
/* A4CD80 80240360 00000000 */   nop
glabel L80240364_A4CD84
/* A4CD84 80240364 3C01C47A */  lui       $at, 0xc47a
/* A4CD88 80240368 44810000 */  mtc1      $at, $f0
/* A4CD8C 8024036C 24020014 */  addiu     $v0, $zero, 0x14
/* A4CD90 80240370 AE400078 */  sw        $zero, 0x78($s2)
/* A4CD94 80240374 A62200A6 */  sh        $v0, 0xa6($s1)
/* A4CD98 80240378 A62200A8 */  sh        $v0, 0xa8($s1)
/* A4CD9C 8024037C 24020001 */  addiu     $v0, $zero, 1
/* A4CDA0 80240380 AE200038 */  sw        $zero, 0x38($s1)
/* A4CDA4 80240384 AE200040 */  sw        $zero, 0x40($s1)
/* A4CDA8 80240388 E620003C */  swc1      $f0, 0x3c($s1)
/* A4CDAC 8024038C AE40006C */  sw        $zero, 0x6c($s2)
/* A4CDB0 80240390 AEC20070 */  sw        $v0, 0x70($s6)
glabel L80240394_A4CDB4
/* A4CDB4 80240394 8E50006C */  lw        $s0, 0x6c($s2)
/* A4CDB8 80240398 24020001 */  addiu     $v0, $zero, 1
/* A4CDBC 8024039C 160200EC */  bne       $s0, $v0, .L80240750
/* A4CDC0 802403A0 24150002 */   addiu    $s5, $zero, 2
/* A4CDC4 802403A4 AE55006C */  sw        $s5, 0x6c($s2)
/* A4CDC8 802403A8 C6800038 */  lwc1      $f0, 0x38($s4)
/* A4CDCC 802403AC E6600038 */  swc1      $f0, 0x38($s3)
/* A4CDD0 802403B0 C680003C */  lwc1      $f0, 0x3c($s4)
/* A4CDD4 802403B4 E660003C */  swc1      $f0, 0x3c($s3)
/* A4CDD8 802403B8 C6800040 */  lwc1      $f0, 0x40($s4)
/* A4CDDC 802403BC E6600040 */  swc1      $f0, 0x40($s3)
/* A4CDE0 802403C0 C6820034 */  lwc1      $f2, 0x34($s4)
/* A4CDE4 802403C4 3C014387 */  lui       $at, 0x4387
/* A4CDE8 802403C8 44810000 */  mtc1      $at, $f0
/* A4CDEC 802403CC 00000000 */  nop
/* A4CDF0 802403D0 46020001 */  sub.s     $f0, $f0, $f2
/* A4CDF4 802403D4 C6480074 */  lwc1      $f8, 0x74($s2)
/* A4CDF8 802403D8 46804220 */  cvt.s.w   $f8, $f8
/* A4CDFC 802403DC 44054000 */  mfc1      $a1, $f8
/* A4CE00 802403E0 44060000 */  mfc1      $a2, $f0
/* A4CE04 802403E4 0C00EA95 */  jal       npc_move_heading
/* A4CE08 802403E8 0260202D */   daddu    $a0, $s3, $zero
/* A4CE0C 802403EC C6600038 */  lwc1      $f0, 0x38($s3)
/* A4CE10 802403F0 E6200038 */  swc1      $f0, 0x38($s1)
/* A4CE14 802403F4 C680003C */  lwc1      $f0, 0x3c($s4)
/* A4CE18 802403F8 C6420070 */  lwc1      $f2, 0x70($s2)
/* A4CE1C 802403FC 468010A0 */  cvt.s.w   $f2, $f2
/* A4CE20 80240400 46020000 */  add.s     $f0, $f0, $f2
/* A4CE24 80240404 3C014024 */  lui       $at, 0x4024
/* A4CE28 80240408 4481A800 */  mtc1      $at, $f21
/* A4CE2C 8024040C 4480A000 */  mtc1      $zero, $f20
/* A4CE30 80240410 E620003C */  swc1      $f0, 0x3c($s1)
/* A4CE34 80240414 C6600040 */  lwc1      $f0, 0x40($s3)
/* A4CE38 80240418 E6200040 */  swc1      $f0, 0x40($s1)
/* A4CE3C 8024041C A2500007 */  sb        $s0, 7($s2)
/* A4CE40 80240420 C6200038 */  lwc1      $f0, 0x38($s1)
/* A4CE44 80240424 3C014066 */  lui       $at, 0x4066
/* A4CE48 80240428 34216666 */  ori       $at, $at, 0x6666
/* A4CE4C 8024042C 44811000 */  mtc1      $at, $f2
/* A4CE50 80240430 4600020D */  trunc.w.s $f8, $f0
/* A4CE54 80240434 44024000 */  mfc1      $v0, $f8
/* A4CE58 80240438 00000000 */  nop
/* A4CE5C 8024043C A6420010 */  sh        $v0, 0x10($s2)
/* A4CE60 80240440 C620003C */  lwc1      $f0, 0x3c($s1)
/* A4CE64 80240444 3C13800F */  lui       $s3, %hi(gPlayerStatusPtr)
/* A4CE68 80240448 26737B30 */  addiu     $s3, $s3, %lo(gPlayerStatusPtr)
/* A4CE6C 8024044C 4600020D */  trunc.w.s $f8, $f0
/* A4CE70 80240450 44024000 */  mfc1      $v0, $f8
/* A4CE74 80240454 00000000 */  nop
/* A4CE78 80240458 A6420012 */  sh        $v0, 0x12($s2)
/* A4CE7C 8024045C C6200040 */  lwc1      $f0, 0x40($s1)
/* A4CE80 80240460 8E630000 */  lw        $v1, ($s3)
/* A4CE84 80240464 4600020D */  trunc.w.s $f8, $f0
/* A4CE88 80240468 44024000 */  mfc1      $v0, $f8
/* A4CE8C 8024046C 00000000 */  nop
/* A4CE90 80240470 A6420014 */  sh        $v0, 0x14($s2)
/* A4CE94 80240474 E6220018 */  swc1      $f2, 0x18($s1)
/* A4CE98 80240478 C460002C */  lwc1      $f0, 0x2c($v1)
/* A4CE9C 8024047C C6220038 */  lwc1      $f2, 0x38($s1)
/* A4CEA0 80240480 46000021 */  cvt.d.s   $f0, $f0
/* A4CEA4 80240484 46340000 */  add.d     $f0, $f0, $f20
/* A4CEA8 80240488 C4640028 */  lwc1      $f4, 0x28($v1)
/* A4CEAC 8024048C 44806000 */  mtc1      $zero, $f12
/* A4CEB0 80240490 46041081 */  sub.s     $f2, $f2, $f4
/* A4CEB4 80240494 C62E003C */  lwc1      $f14, 0x3c($s1)
/* A4CEB8 80240498 46200020 */  cvt.s.d   $f0, $f0
/* A4CEBC 8024049C 46001085 */  abs.s     $f2, $f2
/* A4CEC0 802404A0 44070000 */  mfc1      $a3, $f0
/* A4CEC4 802404A4 44061000 */  mfc1      $a2, $f2
/* A4CEC8 802404A8 0C00A720 */  jal       atan2
/* A4CECC 802404AC 00000000 */   nop
/* A4CED0 802404B0 3C018024 */  lui       $at, %hi(func_80242558_A1D658)
/* A4CED4 802404B4 D4222558 */  ldc1      $f2, %lo(func_80242558_A1D658)($at)
/* A4CED8 802404B8 46000021 */  cvt.d.s   $f0, $f0
/* A4CEDC 802404BC 46220001 */  sub.d     $f0, $f0, $f2
/* A4CEE0 802404C0 46200020 */  cvt.s.d   $f0, $f0
/* A4CEE4 802404C4 4600020D */  trunc.w.s $f8, $f0
/* A4CEE8 802404C8 44044000 */  mfc1      $a0, $f8
/* A4CEEC 802404CC 00000000 */  nop
/* A4CEF0 802404D0 00042400 */  sll       $a0, $a0, 0x10
/* A4CEF4 802404D4 0C00A4F5 */  jal       cosine
/* A4CEF8 802404D8 00042403 */   sra      $a0, $a0, 0x10
/* A4CEFC 802404DC C6220018 */  lwc1      $f2, 0x18($s1)
/* A4CF00 802404E0 46020002 */  mul.s     $f0, $f0, $f2
/* A4CF04 802404E4 00000000 */  nop
/* A4CF08 802404E8 C62C0038 */  lwc1      $f12, 0x38($s1)
/* A4CF0C 802404EC C62E0040 */  lwc1      $f14, 0x40($s1)
/* A4CF10 802404F0 8E620000 */  lw        $v0, ($s3)
/* A4CF14 802404F4 E620001C */  swc1      $f0, 0x1c($s1)
/* A4CF18 802404F8 8C460028 */  lw        $a2, 0x28($v0)
/* A4CF1C 802404FC 0C00A720 */  jal       atan2
/* A4CF20 80240500 8C470030 */   lw       $a3, 0x30($v0)
/* A4CF24 80240504 8E620000 */  lw        $v0, ($s3)
/* A4CF28 80240508 E620000C */  swc1      $f0, 0xc($s1)
/* A4CF2C 8024050C C440002C */  lwc1      $f0, 0x2c($v0)
/* A4CF30 80240510 46000021 */  cvt.d.s   $f0, $f0
/* A4CF34 80240514 46340000 */  add.d     $f0, $f0, $f20
/* A4CF38 80240518 46200020 */  cvt.s.d   $f0, $f0
/* A4CF3C 8024051C E7A00010 */  swc1      $f0, 0x10($sp)
/* A4CF40 80240520 C4400030 */  lwc1      $f0, 0x30($v0)
/* A4CF44 80240524 E7A00014 */  swc1      $f0, 0x14($sp)
/* A4CF48 80240528 C62C0038 */  lwc1      $f12, 0x38($s1)
/* A4CF4C 8024052C C62E003C */  lwc1      $f14, 0x3c($s1)
/* A4CF50 80240530 8E260040 */  lw        $a2, 0x40($s1)
/* A4CF54 80240534 0C00A7CB */  jal       dist3D
/* A4CF58 80240538 8C470028 */   lw       $a3, 0x28($v0)
/* A4CF5C 8024053C C6220018 */  lwc1      $f2, 0x18($s1)
/* A4CF60 80240540 46020003 */  div.s     $f0, $f0, $f2
/* A4CF64 80240544 4600020D */  trunc.w.s $f8, $f0
/* A4CF68 80240548 44104000 */  mfc1      $s0, $f8
/* A4CF6C 8024054C 00000000 */  nop
/* A4CF70 80240550 5A000001 */  blezl     $s0, .L80240558
/* A4CF74 80240554 24100001 */   addiu    $s0, $zero, 1
.L80240558:
/* A4CF78 80240558 8E620000 */  lw        $v0, ($s3)
/* A4CF7C 8024055C C624003C */  lwc1      $f4, 0x3c($s1)
/* A4CF80 80240560 3C014120 */  lui       $at, 0x4120
/* A4CF84 80240564 44811000 */  mtc1      $at, $f2
/* A4CF88 80240568 C4400028 */  lwc1      $f0, 0x28($v0)
/* A4CF8C 8024056C E7A00010 */  swc1      $f0, 0x10($sp)
/* A4CF90 80240570 C440002C */  lwc1      $f0, 0x2c($v0)
/* A4CF94 80240574 46020000 */  add.s     $f0, $f0, $f2
/* A4CF98 80240578 3C014160 */  lui       $at, 0x4160
/* A4CF9C 8024057C 44811000 */  mtc1      $at, $f2
/* A4CFA0 80240580 00000000 */  nop
/* A4CFA4 80240584 46022100 */  add.s     $f4, $f4, $f2
/* A4CFA8 80240588 46020000 */  add.s     $f0, $f0, $f2
/* A4CFAC 8024058C 44062000 */  mfc1      $a2, $f4
/* A4CFB0 80240590 E7A00014 */  swc1      $f0, 0x14($sp)
/* A4CFB4 80240594 C4400030 */  lwc1      $f0, 0x30($v0)
/* A4CFB8 80240598 AFB0001C */  sw        $s0, 0x1c($sp)
/* A4CFBC 8024059C E7A00018 */  swc1      $f0, 0x18($sp)
/* A4CFC0 802405A0 8E250038 */  lw        $a1, 0x38($s1)
/* A4CFC4 802405A4 8E270040 */  lw        $a3, 0x40($s1)
/* A4CFC8 802405A8 0C01BFD4 */  jal       func_8006FF50
/* A4CFCC 802405AC 0000202D */   daddu    $a0, $zero, $zero
/* A4CFD0 802405B0 AE420078 */  sw        $v0, 0x78($s2)
/* A4CFD4 802405B4 A630008E */  sh        $s0, 0x8e($s1)
/* A4CFD8 802405B8 080901D4 */  j         .L80240750
/* A4CFDC 802405BC AED50070 */   sw       $s5, 0x70($s6)
glabel L802405C0_A4CFE0
/* A4CFE0 802405C0 9622008E */  lhu       $v0, 0x8e($s1)
/* A4CFE4 802405C4 2442FFFF */  addiu     $v0, $v0, -1
/* A4CFE8 802405C8 A622008E */  sh        $v0, 0x8e($s1)
/* A4CFEC 802405CC 00021400 */  sll       $v0, $v0, 0x10
/* A4CFF0 802405D0 58400001 */  blezl     $v0, .L802405D8
/* A4CFF4 802405D4 24150014 */   addiu    $s5, $zero, 0x14
.L802405D8:
/* A4CFF8 802405D8 16A0000A */  bnez      $s5, .L80240604
/* A4CFFC 802405DC 00000000 */   nop
/* A4D000 802405E0 8E250018 */  lw        $a1, 0x18($s1)
/* A4D004 802405E4 8E26000C */  lw        $a2, 0xc($s1)
/* A4D008 802405E8 0C00EA95 */  jal       npc_move_heading
/* A4D00C 802405EC 0220202D */   daddu    $a0, $s1, $zero
/* A4D010 802405F0 C620003C */  lwc1      $f0, 0x3c($s1)
/* A4D014 802405F4 C622001C */  lwc1      $f2, 0x1c($s1)
/* A4D018 802405F8 46020000 */  add.s     $f0, $f0, $f2
/* A4D01C 802405FC 080901D4 */  j         .L80240750
/* A4D020 80240600 E620003C */   swc1     $f0, 0x3c($s1)
.L80240604:
glabel L80240604_A4D024
/* A4D024 80240604 862200A8 */  lh        $v0, 0xa8($s1)
/* A4D028 80240608 3C013FE0 */  lui       $at, 0x3fe0
/* A4D02C 8024060C 44810800 */  mtc1      $at, $f1
/* A4D030 80240610 44800000 */  mtc1      $zero, $f0
/* A4D034 80240614 44821000 */  mtc1      $v0, $f2
/* A4D038 80240618 00000000 */  nop
/* A4D03C 8024061C 468010A1 */  cvt.d.w   $f2, $f2
/* A4D040 80240620 46201082 */  mul.d     $f2, $f2, $f0
/* A4D044 80240624 00000000 */  nop
/* A4D048 80240628 C620003C */  lwc1      $f0, 0x3c($s1)
/* A4D04C 8024062C AE20001C */  sw        $zero, 0x1c($s1)
/* A4D050 80240630 46000021 */  cvt.d.s   $f0, $f0
/* A4D054 80240634 46220001 */  sub.d     $f0, $f0, $f2
/* A4D058 80240638 AE200018 */  sw        $zero, 0x18($s1)
/* A4D05C 8024063C 24020003 */  addiu     $v0, $zero, 3
/* A4D060 80240640 46200020 */  cvt.s.d   $f0, $f0
/* A4D064 80240644 E620003C */  swc1      $f0, 0x3c($s1)
/* A4D068 80240648 AE42006C */  sw        $v0, 0x6c($s2)
/* A4D06C 8024064C 24020004 */  addiu     $v0, $zero, 4
/* A4D070 80240650 A620008E */  sh        $zero, 0x8e($s1)
/* A4D074 80240654 080901D4 */  j         .L80240750
/* A4D078 80240658 AEC20070 */   sw       $v0, 0x70($s6)
glabel L8024065C_A4D07C
/* A4D07C 8024065C 9622008E */  lhu       $v0, 0x8e($s1)
/* A4D080 80240660 24420001 */  addiu     $v0, $v0, 1
/* A4D084 80240664 A622008E */  sh        $v0, 0x8e($s1)
/* A4D088 80240668 00021400 */  sll       $v0, $v0, 0x10
/* A4D08C 8024066C 00021C03 */  sra       $v1, $v0, 0x10
/* A4D090 80240670 28620007 */  slti      $v0, $v1, 7
/* A4D094 80240674 10400027 */  beqz      $v0, .L80240714
/* A4D098 80240678 24020007 */   addiu    $v0, $zero, 7
/* A4D09C 8024067C 8622008E */  lh        $v0, 0x8e($s1)
/* A4D0A0 80240680 3C01401C */  lui       $at, 0x401c
/* A4D0A4 80240684 44810800 */  mtc1      $at, $f1
/* A4D0A8 80240688 44800000 */  mtc1      $zero, $f0
/* A4D0AC 8024068C 44822000 */  mtc1      $v0, $f4
/* A4D0B0 80240690 00000000 */  nop
/* A4D0B4 80240694 46802120 */  cvt.s.w   $f4, $f4
/* A4D0B8 80240698 46002121 */  cvt.d.s   $f4, $f4
/* A4D0BC 8024069C 46202102 */  mul.d     $f4, $f4, $f0
/* A4D0C0 802406A0 00000000 */  nop
/* A4D0C4 802406A4 44821000 */  mtc1      $v0, $f2
/* A4D0C8 802406A8 00000000 */  nop
/* A4D0CC 802406AC 468010A0 */  cvt.s.w   $f2, $f2
/* A4D0D0 802406B0 460010A1 */  cvt.d.s   $f2, $f2
/* A4D0D4 802406B4 46201082 */  mul.d     $f2, $f2, $f0
/* A4D0D8 802406B8 00000000 */  nop
/* A4D0DC 802406BC C620003C */  lwc1      $f0, 0x3c($s1)
/* A4D0E0 802406C0 3C01400C */  lui       $at, 0x400c
/* A4D0E4 802406C4 44813800 */  mtc1      $at, $f7
/* A4D0E8 802406C8 44803000 */  mtc1      $zero, $f6
/* A4D0EC 802406CC 46000021 */  cvt.d.s   $f0, $f0
/* A4D0F0 802406D0 46260001 */  sub.d     $f0, $f0, $f6
/* A4D0F4 802406D4 3C014034 */  lui       $at, 0x4034
/* A4D0F8 802406D8 44813800 */  mtc1      $at, $f7
/* A4D0FC 802406DC 44803000 */  mtc1      $zero, $f6
/* A4D100 802406E0 00000000 */  nop
/* A4D104 802406E4 46262100 */  add.d     $f4, $f4, $f6
/* A4D108 802406E8 46200020 */  cvt.s.d   $f0, $f0
/* A4D10C 802406EC E620003C */  swc1      $f0, 0x3c($s1)
/* A4D110 802406F0 46261080 */  add.d     $f2, $f2, $f6
/* A4D114 802406F4 4620220D */  trunc.w.d $f8, $f4
/* A4D118 802406F8 44024000 */  mfc1      $v0, $f8
/* A4D11C 802406FC 00000000 */  nop
/* A4D120 80240700 A62200A6 */  sh        $v0, 0xa6($s1)
/* A4D124 80240704 4620120D */  trunc.w.d $f8, $f2
/* A4D128 80240708 44024000 */  mfc1      $v0, $f8
/* A4D12C 8024070C 080901D4 */  j         .L80240750
/* A4D130 80240710 A62200A8 */   sh       $v0, 0xa8($s1)
.L80240714:
/* A4D134 80240714 1462000A */  bne       $v1, $v0, .L80240740
/* A4D138 80240718 28620010 */   slti     $v0, $v1, 0x10
/* A4D13C 8024071C 3C01C47A */  lui       $at, 0xc47a
/* A4D140 80240720 44810000 */  mtc1      $at, $f0
/* A4D144 80240724 24020014 */  addiu     $v0, $zero, 0x14
/* A4D148 80240728 AE200038 */  sw        $zero, 0x38($s1)
/* A4D14C 8024072C AE200040 */  sw        $zero, 0x40($s1)
/* A4D150 80240730 A62200A6 */  sh        $v0, 0xa6($s1)
/* A4D154 80240734 A62200A8 */  sh        $v0, 0xa8($s1)
/* A4D158 80240738 080901D4 */  j         .L80240750
/* A4D15C 8024073C E620003C */   swc1     $f0, 0x3c($s1)
.L80240740:
/* A4D160 80240740 14400003 */  bnez      $v0, .L80240750
/* A4D164 80240744 00000000 */   nop
/* A4D168 80240748 AE40006C */  sw        $zero, 0x6c($s2)
/* A4D16C 8024074C AEC00070 */  sw        $zero, 0x70($s6)
.L80240750:
/* A4D170 80240750 8FBF037C */  lw        $ra, 0x37c($sp)
/* A4D174 80240754 8FB60378 */  lw        $s6, 0x378($sp)
/* A4D178 80240758 8FB50374 */  lw        $s5, 0x374($sp)
/* A4D17C 8024075C 8FB40370 */  lw        $s4, 0x370($sp)
/* A4D180 80240760 8FB3036C */  lw        $s3, 0x36c($sp)
/* A4D184 80240764 8FB20368 */  lw        $s2, 0x368($sp)
/* A4D188 80240768 8FB10364 */  lw        $s1, 0x364($sp)
/* A4D18C 8024076C 8FB00360 */  lw        $s0, 0x360($sp)
/* A4D190 80240770 D7B40380 */  ldc1      $f20, 0x380($sp)
/* A4D194 80240774 0000102D */  daddu     $v0, $zero, $zero
/* A4D198 80240778 03E00008 */  jr        $ra
/* A4D19C 8024077C 27BD0388 */   addiu    $sp, $sp, 0x388
