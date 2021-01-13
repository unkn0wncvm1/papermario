.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240158_B842D8
/* B842D8 80240158 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* B842DC 8024015C AFB20038 */  sw        $s2, 0x38($sp)
/* B842E0 80240160 0080902D */  daddu     $s2, $a0, $zero
/* B842E4 80240164 AFBF0044 */  sw        $ra, 0x44($sp)
/* B842E8 80240168 AFB40040 */  sw        $s4, 0x40($sp)
/* B842EC 8024016C AFB3003C */  sw        $s3, 0x3c($sp)
/* B842F0 80240170 AFB10034 */  sw        $s1, 0x34($sp)
/* B842F4 80240174 AFB00030 */  sw        $s0, 0x30($sp)
/* B842F8 80240178 F7B60050 */  sdc1      $f22, 0x50($sp)
/* B842FC 8024017C F7B40048 */  sdc1      $f20, 0x48($sp)
/* B84300 80240180 8E510148 */  lw        $s1, 0x148($s2)
/* B84304 80240184 00A0982D */  daddu     $s3, $a1, $zero
/* B84308 80240188 86240008 */  lh        $a0, 8($s1)
/* B8430C 8024018C 0C00EABB */  jal       get_npc_unsafe
/* B84310 80240190 00C0A02D */   daddu    $s4, $a2, $zero
/* B84314 80240194 8E630014 */  lw        $v1, 0x14($s3)
/* B84318 80240198 04600030 */  bltz      $v1, .L8024025C
/* B8431C 8024019C 0040802D */   daddu    $s0, $v0, $zero
/* B84320 802401A0 8E420074 */  lw        $v0, 0x74($s2)
/* B84324 802401A4 1C40002C */  bgtz      $v0, .L80240258
/* B84328 802401A8 2442FFFF */   addiu    $v0, $v0, -1
/* B8432C 802401AC 0280202D */  daddu     $a0, $s4, $zero
/* B84330 802401B0 AE430074 */  sw        $v1, 0x74($s2)
/* B84334 802401B4 AFA00010 */  sw        $zero, 0x10($sp)
/* B84338 802401B8 8E66000C */  lw        $a2, 0xc($s3)
/* B8433C 802401BC 8E670010 */  lw        $a3, 0x10($s3)
/* B84340 802401C0 0C01242D */  jal       func_800490B4
/* B84344 802401C4 0220282D */   daddu    $a1, $s1, $zero
/* B84348 802401C8 10400021 */  beqz      $v0, .L80240250
/* B8434C 802401CC 0000202D */   daddu    $a0, $zero, $zero
/* B84350 802401D0 0200282D */  daddu     $a1, $s0, $zero
/* B84354 802401D4 0000302D */  daddu     $a2, $zero, $zero
/* B84358 802401D8 860300A8 */  lh        $v1, 0xa8($s0)
/* B8435C 802401DC 3C013F80 */  lui       $at, 0x3f80
/* B84360 802401E0 44810000 */  mtc1      $at, $f0
/* B84364 802401E4 3C014000 */  lui       $at, 0x4000
/* B84368 802401E8 44811000 */  mtc1      $at, $f2
/* B8436C 802401EC 3C01C1A0 */  lui       $at, 0xc1a0
/* B84370 802401F0 44812000 */  mtc1      $at, $f4
/* B84374 802401F4 2402000F */  addiu     $v0, $zero, 0xf
/* B84378 802401F8 AFA2001C */  sw        $v0, 0x1c($sp)
/* B8437C 802401FC 44833000 */  mtc1      $v1, $f6
/* B84380 80240200 00000000 */  nop
/* B84384 80240204 468031A0 */  cvt.s.w   $f6, $f6
/* B84388 80240208 44073000 */  mfc1      $a3, $f6
/* B8438C 8024020C 27A20028 */  addiu     $v0, $sp, 0x28
/* B84390 80240210 AFA20020 */  sw        $v0, 0x20($sp)
/* B84394 80240214 E7A00010 */  swc1      $f0, 0x10($sp)
/* B84398 80240218 E7A20014 */  swc1      $f2, 0x14($sp)
/* B8439C 8024021C 0C01BFA4 */  jal       fx_emote
/* B843A0 80240220 E7A40018 */   swc1     $f4, 0x18($sp)
/* B843A4 80240224 0200202D */  daddu     $a0, $s0, $zero
/* B843A8 80240228 240502F4 */  addiu     $a1, $zero, 0x2f4
/* B843AC 8024022C 0C012530 */  jal       func_800494C0
/* B843B0 80240230 3C060020 */   lui      $a2, 0x20
/* B843B4 80240234 8E220018 */  lw        $v0, 0x18($s1)
/* B843B8 80240238 9442002A */  lhu       $v0, 0x2a($v0)
/* B843BC 8024023C 30420001 */  andi      $v0, $v0, 1
/* B843C0 80240240 14400064 */  bnez      $v0, .L802403D4
/* B843C4 80240244 2402000A */   addiu    $v0, $zero, 0xa
/* B843C8 80240248 080900F5 */  j         .L802403D4
/* B843CC 8024024C 2402000C */   addiu    $v0, $zero, 0xc
.L80240250:
/* B843D0 80240250 8E420074 */  lw        $v0, 0x74($s2)
/* B843D4 80240254 2442FFFF */  addiu     $v0, $v0, -1
.L80240258:
/* B843D8 80240258 AE420074 */  sw        $v0, 0x74($s2)
.L8024025C:
/* B843DC 8024025C 8602008C */  lh        $v0, 0x8c($s0)
/* B843E0 80240260 1440005D */  bnez      $v0, .L802403D8
/* B843E4 80240264 00000000 */   nop
/* B843E8 80240268 C6000018 */  lwc1      $f0, 0x18($s0)
/* B843EC 8024026C 3C014010 */  lui       $at, 0x4010
/* B843F0 80240270 44811800 */  mtc1      $at, $f3
/* B843F4 80240274 44801000 */  mtc1      $zero, $f2
/* B843F8 80240278 46000021 */  cvt.d.s   $f0, $f0
/* B843FC 8024027C 4622003C */  c.lt.d    $f0, $f2
/* B84400 80240280 00000000 */  nop
/* B84404 80240284 45000003 */  bc1f      .L80240294
/* B84408 80240288 0200202D */   daddu    $a0, $s0, $zero
/* B8440C 8024028C 080900A6 */  j         .L80240298
/* B84410 80240290 0000282D */   daddu    $a1, $zero, $zero
.L80240294:
/* B84414 80240294 24050001 */  addiu     $a1, $zero, 1
.L80240298:
/* B84418 80240298 0C00F598 */  jal       func_8003D660
/* B8441C 8024029C 00000000 */   nop
/* B84420 802402A0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* B84424 802402A4 8E430078 */  lw        $v1, 0x78($s2)
/* B84428 802402A8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* B8442C 802402AC 00031040 */  sll       $v0, $v1, 1
/* B84430 802402B0 00431021 */  addu      $v0, $v0, $v1
/* B84434 802402B4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B84438 802402B8 00021080 */  sll       $v0, $v0, 2
/* B8443C 802402BC 00431021 */  addu      $v0, $v0, $v1
/* B84440 802402C0 C4560004 */  lwc1      $f22, 4($v0)
/* B84444 802402C4 4680B5A0 */  cvt.s.w   $f22, $f22
/* B84448 802402C8 C454000C */  lwc1      $f20, 0xc($v0)
/* B8444C 802402CC 4680A520 */  cvt.s.w   $f20, $f20
/* B84450 802402D0 4406B000 */  mfc1      $a2, $f22
/* B84454 802402D4 4407A000 */  mfc1      $a3, $f20
/* B84458 802402D8 0C00A720 */  jal       atan2
/* B8445C 802402DC 00000000 */   nop
/* B84460 802402E0 8E050018 */  lw        $a1, 0x18($s0)
/* B84464 802402E4 44060000 */  mfc1      $a2, $f0
/* B84468 802402E8 0200202D */  daddu     $a0, $s0, $zero
/* B8446C 802402EC 0C00EA95 */  jal       npc_move_heading
/* B84470 802402F0 AE06000C */   sw       $a2, 0xc($s0)
/* B84474 802402F4 C60C0038 */  lwc1      $f12, 0x38($s0)
/* B84478 802402F8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* B8447C 802402FC 4406B000 */  mfc1      $a2, $f22
/* B84480 80240300 4407A000 */  mfc1      $a3, $f20
/* B84484 80240304 0C00A7B5 */  jal       dist2D
/* B84488 80240308 00000000 */   nop
/* B8448C 8024030C C6020018 */  lwc1      $f2, 0x18($s0)
/* B84490 80240310 4602003E */  c.le.s    $f0, $f2
/* B84494 80240314 00000000 */  nop
/* B84498 80240318 4500002F */  bc1f      .L802403D8
/* B8449C 8024031C 240403E8 */   addiu    $a0, $zero, 0x3e8
/* B844A0 80240320 24020002 */  addiu     $v0, $zero, 2
/* B844A4 80240324 0C00A67F */  jal       rand_int
/* B844A8 80240328 AE420070 */   sw       $v0, 0x70($s2)
/* B844AC 8024032C 3C035555 */  lui       $v1, 0x5555
/* B844B0 80240330 34635556 */  ori       $v1, $v1, 0x5556
/* B844B4 80240334 00430018 */  mult      $v0, $v1
/* B844B8 80240338 000227C3 */  sra       $a0, $v0, 0x1f
/* B844BC 8024033C 00004010 */  mfhi      $t0
/* B844C0 80240340 01042023 */  subu      $a0, $t0, $a0
/* B844C4 80240344 00041840 */  sll       $v1, $a0, 1
/* B844C8 80240348 00641821 */  addu      $v1, $v1, $a0
/* B844CC 8024034C 00431023 */  subu      $v0, $v0, $v1
/* B844D0 80240350 24430002 */  addiu     $v1, $v0, 2
/* B844D4 80240354 AE430074 */  sw        $v1, 0x74($s2)
/* B844D8 80240358 8E62002C */  lw        $v0, 0x2c($s3)
/* B844DC 8024035C 18400009 */  blez      $v0, .L80240384
/* B844E0 80240360 24020004 */   addiu    $v0, $zero, 4
/* B844E4 80240364 8E620004 */  lw        $v0, 4($s3)
/* B844E8 80240368 18400006 */  blez      $v0, .L80240384
/* B844EC 8024036C 24020004 */   addiu    $v0, $zero, 4
/* B844F0 80240370 8E620008 */  lw        $v0, 8($s3)
/* B844F4 80240374 18400003 */  blez      $v0, .L80240384
/* B844F8 80240378 24020004 */   addiu    $v0, $zero, 4
/* B844FC 8024037C 14600002 */  bnez      $v1, .L80240388
/* B84500 80240380 00000000 */   nop
.L80240384:
/* B84504 80240384 AE420070 */  sw        $v0, 0x70($s2)
.L80240388:
/* B84508 80240388 0C00A67F */  jal       rand_int
/* B8450C 8024038C 24042710 */   addiu    $a0, $zero, 0x2710
/* B84510 80240390 3C0351EB */  lui       $v1, 0x51eb
/* B84514 80240394 3463851F */  ori       $v1, $v1, 0x851f
/* B84518 80240398 00430018 */  mult      $v0, $v1
/* B8451C 8024039C 00021FC3 */  sra       $v1, $v0, 0x1f
/* B84520 802403A0 00004010 */  mfhi      $t0
/* B84524 802403A4 00082143 */  sra       $a0, $t0, 5
/* B84528 802403A8 00832023 */  subu      $a0, $a0, $v1
/* B8452C 802403AC 00041840 */  sll       $v1, $a0, 1
/* B84530 802403B0 00641821 */  addu      $v1, $v1, $a0
/* B84534 802403B4 000318C0 */  sll       $v1, $v1, 3
/* B84538 802403B8 00641821 */  addu      $v1, $v1, $a0
/* B8453C 802403BC 00031880 */  sll       $v1, $v1, 2
/* B84540 802403C0 8E640004 */  lw        $a0, 4($s3)
/* B84544 802403C4 00431023 */  subu      $v0, $v0, $v1
/* B84548 802403C8 0044102A */  slt       $v0, $v0, $a0
/* B8454C 802403CC 10400002 */  beqz      $v0, .L802403D8
/* B84550 802403D0 24020004 */   addiu    $v0, $zero, 4
.L802403D4:
/* B84554 802403D4 AE420070 */  sw        $v0, 0x70($s2)
.L802403D8:
/* B84558 802403D8 8FBF0044 */  lw        $ra, 0x44($sp)
/* B8455C 802403DC 8FB40040 */  lw        $s4, 0x40($sp)
/* B84560 802403E0 8FB3003C */  lw        $s3, 0x3c($sp)
/* B84564 802403E4 8FB20038 */  lw        $s2, 0x38($sp)
/* B84568 802403E8 8FB10034 */  lw        $s1, 0x34($sp)
/* B8456C 802403EC 8FB00030 */  lw        $s0, 0x30($sp)
/* B84570 802403F0 D7B60050 */  ldc1      $f22, 0x50($sp)
/* B84574 802403F4 D7B40048 */  ldc1      $f20, 0x48($sp)
/* B84578 802403F8 03E00008 */  jr        $ra
/* B8457C 802403FC 27BD0058 */   addiu    $sp, $sp, 0x58
