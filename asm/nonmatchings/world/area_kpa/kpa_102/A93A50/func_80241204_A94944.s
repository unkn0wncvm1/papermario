.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241204_A94944
/* A94944 80241204 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* A94948 80241208 AFB3003C */  sw        $s3, 0x3c($sp)
/* A9494C 8024120C 0080982D */  daddu     $s3, $a0, $zero
/* A94950 80241210 AFBF0048 */  sw        $ra, 0x48($sp)
/* A94954 80241214 AFB50044 */  sw        $s5, 0x44($sp)
/* A94958 80241218 AFB40040 */  sw        $s4, 0x40($sp)
/* A9495C 8024121C AFB20038 */  sw        $s2, 0x38($sp)
/* A94960 80241220 AFB10034 */  sw        $s1, 0x34($sp)
/* A94964 80241224 AFB00030 */  sw        $s0, 0x30($sp)
/* A94968 80241228 8E720148 */  lw        $s2, 0x148($s3)
/* A9496C 8024122C 86440008 */  lh        $a0, 8($s2)
/* A94970 80241230 8E70000C */  lw        $s0, 0xc($s3)
/* A94974 80241234 0C00EABB */  jal       get_npc_unsafe
/* A94978 80241238 00A0882D */   daddu    $s1, $a1, $zero
/* A9497C 8024123C 0260202D */  daddu     $a0, $s3, $zero
/* A94980 80241240 8E050000 */  lw        $a1, ($s0)
/* A94984 80241244 0C0B1EAF */  jal       get_variable
/* A94988 80241248 0040A02D */   daddu    $s4, $v0, $zero
/* A9498C 8024124C AFA00010 */  sw        $zero, 0x10($sp)
/* A94990 80241250 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A94994 80241254 8C630030 */  lw        $v1, 0x30($v1)
/* A94998 80241258 AFA30014 */  sw        $v1, 0x14($sp)
/* A9499C 8024125C 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A949A0 80241260 8C63001C */  lw        $v1, 0x1c($v1)
/* A949A4 80241264 AFA30018 */  sw        $v1, 0x18($sp)
/* A949A8 80241268 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A949AC 8024126C 8C630024 */  lw        $v1, 0x24($v1)
/* A949B0 80241270 AFA3001C */  sw        $v1, 0x1c($sp)
/* A949B4 80241274 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A949B8 80241278 8C630028 */  lw        $v1, 0x28($v1)
/* A949BC 8024127C 27B50010 */  addiu     $s5, $sp, 0x10
/* A949C0 80241280 AFA30020 */  sw        $v1, 0x20($sp)
/* A949C4 80241284 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A949C8 80241288 3C014220 */  lui       $at, 0x4220
/* A949CC 8024128C 44810000 */  mtc1      $at, $f0
/* A949D0 80241290 8C63002C */  lw        $v1, 0x2c($v1)
/* A949D4 80241294 0040802D */  daddu     $s0, $v0, $zero
/* A949D8 80241298 E7A00028 */  swc1      $f0, 0x28($sp)
/* A949DC 8024129C A7A0002C */  sh        $zero, 0x2c($sp)
/* A949E0 802412A0 16200005 */  bnez      $s1, .L802412B8
/* A949E4 802412A4 AFA30024 */   sw       $v1, 0x24($sp)
/* A949E8 802412A8 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A949EC 802412AC 30420004 */  andi      $v0, $v0, 4
/* A949F0 802412B0 1040002F */  beqz      $v0, .L80241370
/* A949F4 802412B4 00000000 */   nop
.L802412B8:
/* A949F8 802412B8 2404F7FF */  addiu     $a0, $zero, -0x801
/* A949FC 802412BC AE600070 */  sw        $zero, 0x70($s3)
/* A94A00 802412C0 A680008E */  sh        $zero, 0x8e($s4)
/* A94A04 802412C4 8E4200CC */  lw        $v0, 0xcc($s2)
/* A94A08 802412C8 8E830000 */  lw        $v1, ($s4)
/* A94A0C 802412CC 8C420000 */  lw        $v0, ($v0)
/* A94A10 802412D0 00641824 */  and       $v1, $v1, $a0
/* A94A14 802412D4 AE830000 */  sw        $v1, ($s4)
/* A94A18 802412D8 AE820028 */  sw        $v0, 0x28($s4)
/* A94A1C 802412DC 8E4200D0 */  lw        $v0, 0xd0($s2)
/* A94A20 802412E0 8C420034 */  lw        $v0, 0x34($v0)
/* A94A24 802412E4 54400005 */  bnel      $v0, $zero, .L802412FC
/* A94A28 802412E8 2402FDFF */   addiu    $v0, $zero, -0x201
/* A94A2C 802412EC 34620200 */  ori       $v0, $v1, 0x200
/* A94A30 802412F0 2403FFF7 */  addiu     $v1, $zero, -9
/* A94A34 802412F4 080904C1 */  j         .L80241304
/* A94A38 802412F8 00431024 */   and      $v0, $v0, $v1
.L802412FC:
/* A94A3C 802412FC 00621024 */  and       $v0, $v1, $v0
/* A94A40 80241300 34420008 */  ori       $v0, $v0, 8
.L80241304:
/* A94A44 80241304 AE820000 */  sw        $v0, ($s4)
/* A94A48 80241308 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A94A4C 8024130C 30420004 */  andi      $v0, $v0, 4
/* A94A50 80241310 10400008 */  beqz      $v0, .L80241334
/* A94A54 80241314 24020063 */   addiu    $v0, $zero, 0x63
/* A94A58 80241318 AE620070 */  sw        $v0, 0x70($s3)
/* A94A5C 8024131C AE600074 */  sw        $zero, 0x74($s3)
/* A94A60 80241320 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A94A64 80241324 2403FFFB */  addiu     $v1, $zero, -5
/* A94A68 80241328 00431024 */  and       $v0, $v0, $v1
/* A94A6C 8024132C 080904D3 */  j         .L8024134C
/* A94A70 80241330 AE4200B0 */   sw       $v0, 0xb0($s2)
.L80241334:
/* A94A74 80241334 8E420000 */  lw        $v0, ($s2)
/* A94A78 80241338 3C034000 */  lui       $v1, 0x4000
/* A94A7C 8024133C 00431024 */  and       $v0, $v0, $v1
/* A94A80 80241340 10400002 */  beqz      $v0, .L8024134C
/* A94A84 80241344 2402000C */   addiu    $v0, $zero, 0xc
/* A94A88 80241348 AE620070 */  sw        $v0, 0x70($s3)
.L8024134C:
/* A94A8C 8024134C 3C05BFFF */  lui       $a1, 0xbfff
/* A94A90 80241350 34A5FFFF */  ori       $a1, $a1, 0xffff
/* A94A94 80241354 2404FFFB */  addiu     $a0, $zero, -5
/* A94A98 80241358 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A94A9C 8024135C 8E430000 */  lw        $v1, ($s2)
/* A94AA0 80241360 00441024 */  and       $v0, $v0, $a0
/* A94AA4 80241364 00651824 */  and       $v1, $v1, $a1
/* A94AA8 80241368 AE4200B0 */  sw        $v0, 0xb0($s2)
/* A94AAC 8024136C AE430000 */  sw        $v1, ($s2)
.L80241370:
/* A94AB0 80241370 8E630070 */  lw        $v1, 0x70($s3)
/* A94AB4 80241374 2C620064 */  sltiu     $v0, $v1, 0x64
/* A94AB8 80241378 10400060 */  beqz      $v0, .L802414FC
/* A94ABC 8024137C 00031080 */   sll      $v0, $v1, 2
/* A94AC0 80241380 3C018024 */  lui       $at, %hi(jtbl_80245B48_A99288)
/* A94AC4 80241384 00220821 */  addu      $at, $at, $v0
/* A94AC8 80241388 8C225B48 */  lw        $v0, %lo(jtbl_80245B48_A99288)($at)
/* A94ACC 8024138C 00400008 */  jr        $v0
/* A94AD0 80241390 00000000 */   nop
glabel L80241394_A94AD4
/* A94AD4 80241394 0260202D */  daddu     $a0, $s3, $zero
/* A94AD8 80241398 0200282D */  daddu     $a1, $s0, $zero
/* A94ADC 8024139C 0C012568 */  jal       func_800495A0
/* A94AE0 802413A0 02A0302D */   daddu    $a2, $s5, $zero
glabel L802413A4_A94AE4
/* A94AE4 802413A4 0260202D */  daddu     $a0, $s3, $zero
/* A94AE8 802413A8 0200282D */  daddu     $a1, $s0, $zero
/* A94AEC 802413AC 0C0125AE */  jal       func_800496B8
/* A94AF0 802413B0 02A0302D */   daddu    $a2, $s5, $zero
/* A94AF4 802413B4 0809053F */  j         .L802414FC
/* A94AF8 802413B8 00000000 */   nop
glabel L802413BC_A94AFC
/* A94AFC 802413BC 0260202D */  daddu     $a0, $s3, $zero
/* A94B00 802413C0 0200282D */  daddu     $a1, $s0, $zero
/* A94B04 802413C4 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* A94B08 802413C8 02A0302D */   daddu    $a2, $s5, $zero
glabel L802413CC_A94B0C
/* A94B0C 802413CC 0260202D */  daddu     $a0, $s3, $zero
/* A94B10 802413D0 0200282D */  daddu     $a1, $s0, $zero
/* A94B14 802413D4 0C012701 */  jal       func_80049C04
/* A94B18 802413D8 02A0302D */   daddu    $a2, $s5, $zero
/* A94B1C 802413DC 0809053F */  j         .L802414FC
/* A94B20 802413E0 00000000 */   nop
glabel L802413E4_A94B24
/* A94B24 802413E4 0260202D */  daddu     $a0, $s3, $zero
/* A94B28 802413E8 0200282D */  daddu     $a1, $s0, $zero
/* A94B2C 802413EC 0C01278F */  jal       func_80049E3C
/* A94B30 802413F0 02A0302D */   daddu    $a2, $s5, $zero
glabel L802413F4_A94B34
/* A94B34 802413F4 0260202D */  daddu     $a0, $s3, $zero
/* A94B38 802413F8 0200282D */  daddu     $a1, $s0, $zero
/* A94B3C 802413FC 0C0127B3 */  jal       func_80049ECC
/* A94B40 80241400 02A0302D */   daddu    $a2, $s5, $zero
/* A94B44 80241404 0809053F */  j         .L802414FC
/* A94B48 80241408 00000000 */   nop
glabel L8024140C_A94B4C
/* A94B4C 8024140C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A94B50 80241410 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A94B54 80241414 C68C0038 */  lwc1      $f12, 0x38($s4)
/* A94B58 80241418 C68E0040 */  lwc1      $f14, 0x40($s4)
/* A94B5C 8024141C 8C460028 */  lw        $a2, 0x28($v0)
/* A94B60 80241420 0C00A7B5 */  jal       dist2D
/* A94B64 80241424 8C470030 */   lw       $a3, 0x30($v0)
/* A94B68 80241428 8E42006C */  lw        $v0, 0x6c($s2)
/* A94B6C 8024142C 10400008 */  beqz      $v0, .L80241450
/* A94B70 80241430 46000086 */   mov.s    $f2, $f0
/* A94B74 80241434 44820000 */  mtc1      $v0, $f0
/* A94B78 80241438 00000000 */  nop
/* A94B7C 8024143C 46800020 */  cvt.s.w   $f0, $f0
/* A94B80 80241440 4602003C */  c.lt.s    $f0, $f2
/* A94B84 80241444 00000000 */  nop
/* A94B88 80241448 4500000B */  bc1f      .L80241478
/* A94B8C 8024144C 0260202D */   daddu    $a0, $s3, $zero
.L80241450:
/* A94B90 80241450 0260202D */  daddu     $a0, $s3, $zero
/* A94B94 80241454 8E050024 */  lw        $a1, 0x24($s0)
/* A94B98 80241458 8E060028 */  lw        $a2, 0x28($s0)
/* A94B9C 8024145C 0C090140 */  jal       func_80240500_A93C40
/* A94BA0 80241460 02A0382D */   daddu    $a3, $s5, $zero
/* A94BA4 80241464 8E630070 */  lw        $v1, 0x70($s3)
/* A94BA8 80241468 2402000C */  addiu     $v0, $zero, 0xc
/* A94BAC 8024146C 14620023 */  bne       $v1, $v0, .L802414FC
/* A94BB0 80241470 00000000 */   nop
/* A94BB4 80241474 0260202D */  daddu     $a0, $s3, $zero
.L80241478:
/* A94BB8 80241478 0200282D */  daddu     $a1, $s0, $zero
/* A94BBC 8024147C 0C0127DF */  jal       func_80049F7C
/* A94BC0 80241480 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241484_A94BC4
/* A94BC4 80241484 0260202D */  daddu     $a0, $s3, $zero
/* A94BC8 80241488 0200282D */  daddu     $a1, $s0, $zero
/* A94BCC 8024148C 0C012849 */  jal       func_8004A124
/* A94BD0 80241490 02A0302D */   daddu    $a2, $s5, $zero
/* A94BD4 80241494 0809053F */  j         .L802414FC
/* A94BD8 80241498 00000000 */   nop
glabel L8024149C_A94BDC
/* A94BDC 8024149C 0260202D */  daddu     $a0, $s3, $zero
/* A94BE0 802414A0 0200282D */  daddu     $a1, $s0, $zero
/* A94BE4 802414A4 0C0128FA */  jal       func_8004A3E8
/* A94BE8 802414A8 02A0302D */   daddu    $a2, $s5, $zero
/* A94BEC 802414AC 0809053F */  j         .L802414FC
/* A94BF0 802414B0 00000000 */   nop
glabel L802414B4_A94BF4
/* A94BF4 802414B4 0C090191 */  jal       func_80240644_A93D84
/* A94BF8 802414B8 0260202D */   daddu    $a0, $s3, $zero
/* A94BFC 802414BC 0809053F */  j         .L802414FC
/* A94C00 802414C0 00000000 */   nop
glabel L802414C4_A94C04
/* A94C04 802414C4 0C0901D1 */  jal       kpa_102_UnkSetDurationFunc
/* A94C08 802414C8 0260202D */   daddu    $a0, $s3, $zero
/* A94C0C 802414CC 0809053F */  j         .L802414FC
/* A94C10 802414D0 00000000 */   nop
glabel L802414D4_A94C14
/* A94C14 802414D4 0C0901E2 */  jal       kpa_102_UnkNpcAIFunc9
/* A94C18 802414D8 0260202D */   daddu    $a0, $s3, $zero
/* A94C1C 802414DC 0809053F */  j         .L802414FC
/* A94C20 802414E0 00000000 */   nop
glabel L802414E4_A94C24
/* A94C24 802414E4 0C09020A */  jal       kpa_102_UnkDurationCheck
/* A94C28 802414E8 0260202D */   daddu    $a0, $s3, $zero
/* A94C2C 802414EC 0809053F */  j         .L802414FC
/* A94C30 802414F0 00000000 */   nop
glabel L802414F4_A94C34
/* A94C34 802414F4 0C0129CF */  jal       func_8004A73C
/* A94C38 802414F8 0260202D */   daddu    $a0, $s3, $zero
.L802414FC:
glabel L802414FC_A94C3C
/* A94C3C 802414FC 8FBF0048 */  lw        $ra, 0x48($sp)
/* A94C40 80241500 8FB50044 */  lw        $s5, 0x44($sp)
/* A94C44 80241504 8FB40040 */  lw        $s4, 0x40($sp)
/* A94C48 80241508 8FB3003C */  lw        $s3, 0x3c($sp)
/* A94C4C 8024150C 8FB20038 */  lw        $s2, 0x38($sp)
/* A94C50 80241510 8FB10034 */  lw        $s1, 0x34($sp)
/* A94C54 80241514 8FB00030 */  lw        $s0, 0x30($sp)
/* A94C58 80241518 0000102D */  daddu     $v0, $zero, $zero
/* A94C5C 8024151C 03E00008 */  jr        $ra
/* A94C60 80241520 27BD0050 */   addiu    $sp, $sp, 0x50
