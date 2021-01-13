.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802552EC
/* 183BCC 802552EC 27BDFC68 */  addiu     $sp, $sp, -0x398
/* 183BD0 802552F0 F7B60370 */  sdc1      $f22, 0x370($sp)
/* 183BD4 802552F4 4480B000 */  mtc1      $zero, $f22
/* 183BD8 802552F8 F7B80378 */  sdc1      $f24, 0x378($sp)
/* 183BDC 802552FC 3C013F80 */  lui       $at, 0x3f80
/* 183BE0 80255300 4481C000 */  mtc1      $at, $f24
/* 183BE4 80255304 00A0402D */  daddu     $t0, $a1, $zero
/* 183BE8 80255308 AFBF0364 */  sw        $ra, 0x364($sp)
/* 183BEC 8025530C AFBE0360 */  sw        $fp, 0x360($sp)
/* 183BF0 80255310 AFB7035C */  sw        $s7, 0x35c($sp)
/* 183BF4 80255314 AFB60358 */  sw        $s6, 0x358($sp)
/* 183BF8 80255318 AFB50354 */  sw        $s5, 0x354($sp)
/* 183BFC 8025531C AFB40350 */  sw        $s4, 0x350($sp)
/* 183C00 80255320 AFB3034C */  sw        $s3, 0x34c($sp)
/* 183C04 80255324 AFB20348 */  sw        $s2, 0x348($sp)
/* 183C08 80255328 AFB10344 */  sw        $s1, 0x344($sp)
/* 183C0C 8025532C AFB00340 */  sw        $s0, 0x340($sp)
/* 183C10 80255330 F7BE0390 */  sdc1      $f30, 0x390($sp)
/* 183C14 80255334 F7BC0388 */  sdc1      $f28, 0x388($sp)
/* 183C18 80255338 F7BA0380 */  sdc1      $f26, 0x380($sp)
/* 183C1C 8025533C F7B40368 */  sdc1      $f20, 0x368($sp)
/* 183C20 80255340 AFA40398 */  sw        $a0, 0x398($sp)
/* 183C24 80255344 AFA5039C */  sw        $a1, 0x39c($sp)
/* 183C28 80255348 E7B60010 */  swc1      $f22, 0x10($sp)
/* 183C2C 8025534C 8D05015C */  lw        $a1, 0x15c($t0)
/* 183C30 80255350 4406C000 */  mfc1      $a2, $f24
/* 183C34 80255354 4407B000 */  mfc1      $a3, $f22
/* 183C38 80255358 0C019EC8 */  jal       guRotateF
/* 183C3C 8025535C 27A40018 */   addiu    $a0, $sp, 0x18
/* 183C40 80255360 8FA9039C */  lw        $t1, 0x39c($sp)
/* 183C44 80255364 4406B000 */  mfc1      $a2, $f22
/* 183C48 80255368 4407C000 */  mfc1      $a3, $f24
/* 183C4C 8025536C 27B50058 */  addiu     $s5, $sp, 0x58
/* 183C50 80255370 E7B60010 */  swc1      $f22, 0x10($sp)
/* 183C54 80255374 8D250160 */  lw        $a1, 0x160($t1)
/* 183C58 80255378 0C019EC8 */  jal       guRotateF
/* 183C5C 8025537C 02A0202D */   daddu    $a0, $s5, $zero
/* 183C60 80255380 8FA8039C */  lw        $t0, 0x39c($sp)
/* 183C64 80255384 4406B000 */  mfc1      $a2, $f22
/* 183C68 80255388 4407B000 */  mfc1      $a3, $f22
/* 183C6C 8025538C 27B40098 */  addiu     $s4, $sp, 0x98
/* 183C70 80255390 E7B80010 */  swc1      $f24, 0x10($sp)
/* 183C74 80255394 8D050164 */  lw        $a1, 0x164($t0)
/* 183C78 80255398 0C019EC8 */  jal       guRotateF
/* 183C7C 8025539C 0280202D */   daddu    $a0, $s4, $zero
/* 183C80 802553A0 27A40018 */  addiu     $a0, $sp, 0x18
/* 183C84 802553A4 02A0282D */  daddu     $a1, $s5, $zero
/* 183C88 802553A8 27B30198 */  addiu     $s3, $sp, 0x198
/* 183C8C 802553AC 0C019D80 */  jal       guMtxCatF
/* 183C90 802553B0 0260302D */   daddu    $a2, $s3, $zero
/* 183C94 802553B4 0260202D */  daddu     $a0, $s3, $zero
/* 183C98 802553B8 0280282D */  daddu     $a1, $s4, $zero
/* 183C9C 802553BC 27B100D8 */  addiu     $s1, $sp, 0xd8
/* 183CA0 802553C0 0C019D80 */  jal       guMtxCatF
/* 183CA4 802553C4 0220302D */   daddu    $a2, $s1, $zero
/* 183CA8 802553C8 8FA9039C */  lw        $t1, 0x39c($sp)
/* 183CAC 802553CC C5240170 */  lwc1      $f4, 0x170($t1)
/* 183CB0 802553D0 3C01802A */  lui       $at, %hi(D_8029D358)
/* 183CB4 802553D4 D434D358 */  ldc1      $f20, %lo(D_8029D358)($at)
/* 183CB8 802553D8 46002121 */  cvt.d.s   $f4, $f4
/* 183CBC 802553DC 46342102 */  mul.d     $f4, $f4, $f20
/* 183CC0 802553E0 00000000 */  nop
/* 183CC4 802553E4 C5200174 */  lwc1      $f0, 0x174($t1)
/* 183CC8 802553E8 46000021 */  cvt.d.s   $f0, $f0
/* 183CCC 802553EC 46340002 */  mul.d     $f0, $f0, $f20
/* 183CD0 802553F0 00000000 */  nop
/* 183CD4 802553F4 C5220178 */  lwc1      $f2, 0x178($t1)
/* 183CD8 802553F8 460010A1 */  cvt.d.s   $f2, $f2
/* 183CDC 802553FC 46341082 */  mul.d     $f2, $f2, $f20
/* 183CE0 80255400 00000000 */  nop
/* 183CE4 80255404 C5260188 */  lwc1      $f6, 0x188($t1)
/* 183CE8 80255408 460031A1 */  cvt.d.s   $f6, $f6
/* 183CEC 8025540C 46262102 */  mul.d     $f4, $f4, $f6
/* 183CF0 80255410 00000000 */  nop
/* 183CF4 80255414 46260002 */  mul.d     $f0, $f0, $f6
/* 183CF8 80255418 00000000 */  nop
/* 183CFC 8025541C 27B00118 */  addiu     $s0, $sp, 0x118
/* 183D00 80255420 462010A0 */  cvt.s.d   $f2, $f2
/* 183D04 80255424 44071000 */  mfc1      $a3, $f2
/* 183D08 80255428 46202120 */  cvt.s.d   $f4, $f4
/* 183D0C 8025542C 46200020 */  cvt.s.d   $f0, $f0
/* 183D10 80255430 44052000 */  mfc1      $a1, $f4
/* 183D14 80255434 44060000 */  mfc1      $a2, $f0
/* 183D18 80255438 0200202D */  daddu     $a0, $s0, $zero
/* 183D1C 8025543C 0C019DF0 */  jal       guScaleF
/* 183D20 80255440 AFA0031C */   sw       $zero, 0x31c($sp)
/* 183D24 80255444 0200202D */  daddu     $a0, $s0, $zero
/* 183D28 80255448 0220282D */  daddu     $a1, $s1, $zero
/* 183D2C 8025544C 0C019D80 */  jal       guMtxCatF
/* 183D30 80255450 27A60298 */   addiu    $a2, $sp, 0x298
/* 183D34 80255454 8FA8039C */  lw        $t0, 0x39c($sp)
/* 183D38 80255458 8FA9039C */  lw        $t1, 0x39c($sp)
/* 183D3C 8025545C 810801F3 */  lb        $t0, 0x1f3($t0)
/* 183D40 80255460 AFA80318 */  sw        $t0, 0x318($sp)
/* 183D44 80255464 8D3201F4 */  lw        $s2, 0x1f4($t1)
/* 183D48 80255468 19000122 */  blez      $t0, .L802558F4
/* 183D4C 8025546C 4600B506 */   mov.s    $f20, $f22
/* 183D50 80255470 0260B82D */  daddu     $s7, $s3, $zero
/* 183D54 80255474 AFB50330 */  sw        $s5, 0x330($sp)
/* 183D58 80255478 AFB40334 */  sw        $s4, 0x334($sp)
.L8025547C:
/* 183D5C 8025547C 8E420094 */  lw        $v0, 0x94($s2)
/* 183D60 80255480 10400013 */  beqz      $v0, .L802554D0
/* 183D64 80255484 00000000 */   nop
/* 183D68 80255488 8E420000 */  lw        $v0, ($s2)
/* 183D6C 8025548C 30420002 */  andi      $v0, $v0, 2
/* 183D70 80255490 1440000F */  bnez      $v0, .L802554D0
/* 183D74 80255494 00000000 */   nop
/* 183D78 80255498 8E5500C0 */  lw        $s5, 0xc0($s2)
/* 183D7C 8025549C 82A208AC */  lb        $v0, 0x8ac($s5)
/* 183D80 802554A0 92A308AC */  lbu       $v1, 0x8ac($s5)
/* 183D84 802554A4 1040000C */  beqz      $v0, .L802554D8
/* 183D88 802554A8 2462FFFF */   addiu    $v0, $v1, -1
/* 183D8C 802554AC A2A208AC */  sb        $v0, 0x8ac($s5)
/* 183D90 802554B0 00021600 */  sll       $v0, $v0, 0x18
/* 183D94 802554B4 14400008 */  bnez      $v0, .L802554D8
/* 183D98 802554B8 3C03EFFF */   lui      $v1, 0xefff
/* 183D9C 802554BC 8FA8039C */  lw        $t0, 0x39c($sp)
/* 183DA0 802554C0 8D020000 */  lw        $v0, ($t0)
/* 183DA4 802554C4 3463FFFF */  ori       $v1, $v1, 0xffff
/* 183DA8 802554C8 00431024 */  and       $v0, $v0, $v1
/* 183DAC 802554CC AD020000 */  sw        $v0, ($t0)
.L802554D0:
/* 183DB0 802554D0 08095637 */  j         .L802558DC
/* 183DB4 802554D4 8E52000C */   lw       $s2, 0xc($s2)
.L802554D8:
/* 183DB8 802554D8 8E430000 */  lw        $v1, ($s2)
/* 183DBC 802554DC 30620001 */  andi      $v0, $v1, 1
/* 183DC0 802554E0 1440FFFB */  bnez      $v0, .L802554D0
/* 183DC4 802554E4 3C020010 */   lui      $v0, 0x10
/* 183DC8 802554E8 00621024 */  and       $v0, $v1, $v0
/* 183DCC 802554EC 10400019 */  beqz      $v0, .L80255554
/* 183DD0 802554F0 27A800D8 */   addiu    $t0, $sp, 0xd8
/* 183DD4 802554F4 8FA9039C */  lw        $t1, 0x39c($sp)
/* 183DD8 802554F8 C5240170 */  lwc1      $f4, 0x170($t1)
/* 183DDC 802554FC 3C01802A */  lui       $at, %hi(D_8029D360)
/* 183DE0 80255500 D428D360 */  ldc1      $f8, %lo(D_8029D360)($at)
/* 183DE4 80255504 46002121 */  cvt.d.s   $f4, $f4
/* 183DE8 80255508 46282102 */  mul.d     $f4, $f4, $f8
/* 183DEC 8025550C 00000000 */  nop
/* 183DF0 80255510 C5220174 */  lwc1      $f2, 0x174($t1)
/* 183DF4 80255514 460010A1 */  cvt.d.s   $f2, $f2
/* 183DF8 80255518 46281082 */  mul.d     $f2, $f2, $f8
/* 183DFC 8025551C 00000000 */  nop
/* 183E00 80255520 C5200178 */  lwc1      $f0, 0x178($t1)
/* 183E04 80255524 46000021 */  cvt.d.s   $f0, $f0
/* 183E08 80255528 46280002 */  mul.d     $f0, $f0, $f8
/* 183E0C 8025552C 00000000 */  nop
/* 183E10 80255530 46202120 */  cvt.s.d   $f4, $f4
/* 183E14 80255534 462010A0 */  cvt.s.d   $f2, $f2
/* 183E18 80255538 46200020 */  cvt.s.d   $f0, $f0
/* 183E1C 8025553C 44052000 */  mfc1      $a1, $f4
/* 183E20 80255540 44061000 */  mfc1      $a2, $f2
/* 183E24 80255544 44070000 */  mfc1      $a3, $f0
/* 183E28 80255548 0C019DF0 */  jal       guScaleF
/* 183E2C 8025554C 27A402D8 */   addiu    $a0, $sp, 0x2d8
/* 183E30 80255550 27A800D8 */  addiu     $t0, $sp, 0xd8
.L80255554:
/* 183E34 80255554 27A90118 */  addiu     $t1, $sp, 0x118
/* 183E38 80255558 82B407D9 */  lb        $s4, 0x7d9($s5)
/* 183E3C 8025555C 27B301D8 */  addiu     $s3, $sp, 0x1d8
/* 183E40 80255560 AFA00320 */  sw        $zero, 0x320($sp)
/* 183E44 80255564 AFA00324 */  sw        $zero, 0x324($sp)
/* 183E48 80255568 AFA80338 */  sw        $t0, 0x338($sp)
/* 183E4C 8025556C AFA9033C */  sw        $t1, 0x33c($sp)
.L80255570:
/* 183E50 80255570 8FA80320 */  lw        $t0, 0x320($sp)
/* 183E54 80255574 2694FFFF */  addiu     $s4, $s4, -1
/* 183E58 80255578 25080001 */  addiu     $t0, $t0, 1
/* 183E5C 8025557C 06810002 */  bgez      $s4, .L80255588
/* 183E60 80255580 AFA80320 */   sw       $t0, 0x320($sp)
/* 183E64 80255584 2414000F */  addiu     $s4, $zero, 0xf
.L80255588:
/* 183E68 80255588 82A207D9 */  lb        $v0, 0x7d9($s5)
/* 183E6C 8025558C 128200D3 */  beq       $s4, $v0, .L802558DC
/* 183E70 80255590 00000000 */   nop
/* 183E74 80255594 8FA90320 */  lw        $t1, 0x320($sp)
/* 183E78 80255598 29220003 */  slti      $v0, $t1, 3
/* 183E7C 8025559C 1440FFF4 */  bnez      $v0, .L80255570
/* 183E80 802555A0 00000000 */   nop
/* 183E84 802555A4 8FA80324 */  lw        $t0, 0x324($sp)
/* 183E88 802555A8 AFA00320 */  sw        $zero, 0x320($sp)
/* 183E8C 802555AC 82A207DA */  lb        $v0, 0x7da($s5)
/* 183E90 802555B0 25080001 */  addiu     $t0, $t0, 1
/* 183E94 802555B4 0048102A */  slt       $v0, $v0, $t0
/* 183E98 802555B8 144000C8 */  bnez      $v0, .L802558DC
/* 183E9C 802555BC AFA80324 */   sw       $t0, 0x324($sp)
/* 183EA0 802555C0 241E0078 */  addiu     $fp, $zero, 0x78
/* 183EA4 802555C4 00142840 */  sll       $a1, $s4, 1
/* 183EA8 802555C8 02A52821 */  addu      $a1, $s5, $a1
/* 183EAC 802555CC 02B42021 */  addu      $a0, $s5, $s4
/* 183EB0 802555D0 84A207FC */  lh        $v0, 0x7fc($a1)
/* 183EB4 802555D4 84A3081C */  lh        $v1, 0x81c($a1)
/* 183EB8 802555D8 4482D000 */  mtc1      $v0, $f26
/* 183EBC 802555DC 00000000 */  nop
/* 183EC0 802555E0 4680D6A0 */  cvt.s.w   $f26, $f26
/* 183EC4 802555E4 4483E000 */  mtc1      $v1, $f28
/* 183EC8 802555E8 00000000 */  nop
/* 183ECC 802555EC 4680E720 */  cvt.s.w   $f28, $f28
/* 183ED0 802555F0 84A3083C */  lh        $v1, 0x83c($a1)
/* 183ED4 802555F4 9082087C */  lbu       $v0, 0x87c($a0)
/* 183ED8 802555F8 4483B000 */  mtc1      $v1, $f22
/* 183EDC 802555FC 00000000 */  nop
/* 183EE0 80255600 4680B5A0 */  cvt.s.w   $f22, $f22
/* 183EE4 80255604 00021040 */  sll       $v0, $v0, 1
/* 183EE8 80255608 4482C000 */  mtc1      $v0, $f24
/* 183EEC 8025560C 00000000 */  nop
/* 183EF0 80255610 4680C620 */  cvt.s.w   $f24, $f24
/* 183EF4 80255614 9083088C */  lbu       $v1, 0x88c($a0)
/* 183EF8 80255618 9082089C */  lbu       $v0, 0x89c($a0)
/* 183EFC 8025561C 00031840 */  sll       $v1, $v1, 1
/* 183F00 80255620 4483F000 */  mtc1      $v1, $f30
/* 183F04 80255624 00000000 */  nop
/* 183F08 80255628 4680F7A0 */  cvt.s.w   $f30, $f30
/* 183F0C 8025562C 00021040 */  sll       $v0, $v0, 1
/* 183F10 80255630 86430098 */  lh        $v1, 0x98($s2)
/* 183F14 80255634 44824000 */  mtc1      $v0, $f8
/* 183F18 80255638 00000000 */  nop
/* 183F1C 8025563C 46804220 */  cvt.s.w   $f8, $f8
/* 183F20 80255640 E7A80328 */  swc1      $f8, 0x328($sp)
/* 183F24 80255644 84A507DC */  lh        $a1, 0x7dc($a1)
/* 183F28 80255648 28620032 */  slti      $v0, $v1, 0x32
/* 183F2C 8025564C AFA5032C */  sw        $a1, 0x32c($sp)
/* 183F30 80255650 8090085C */  lb        $s0, 0x85c($a0)
/* 183F34 80255654 8091086C */  lb        $s1, 0x86c($a0)
/* 183F38 80255658 10400004 */  beqz      $v0, .L8025566C
/* 183F3C 8025565C 24160014 */   addiu    $s6, $zero, 0x14
/* 183F40 80255660 241E0032 */  addiu     $fp, $zero, 0x32
/* 183F44 80255664 080955A5 */  j         .L80255694
/* 183F48 80255668 24160008 */   addiu    $s6, $zero, 8
.L8025566C:
/* 183F4C 8025566C 28620064 */  slti      $v0, $v1, 0x64
/* 183F50 80255670 10400004 */  beqz      $v0, .L80255684
/* 183F54 80255674 28620096 */   slti     $v0, $v1, 0x96
/* 183F58 80255678 241E0046 */  addiu     $fp, $zero, 0x46
/* 183F5C 8025567C 080955A5 */  j         .L80255694
/* 183F60 80255680 2416000A */   addiu    $s6, $zero, 0xa
.L80255684:
/* 183F64 80255684 10400003 */  beqz      $v0, .L80255694
/* 183F68 80255688 00000000 */   nop
/* 183F6C 8025568C 241E0064 */  addiu     $fp, $zero, 0x64
/* 183F70 80255690 2416000F */  addiu     $s6, $zero, 0xf
.L80255694:
/* 183F74 80255694 8FA8039C */  lw        $t0, 0x39c($sp)
/* 183F78 80255698 8D020000 */  lw        $v0, ($t0)
/* 183F7C 8025569C 30420800 */  andi      $v0, $v0, 0x800
/* 183F80 802556A0 14400015 */  bnez      $v0, .L802556F8
/* 183F84 802556A4 00101023 */   negu     $v0, $s0
/* 183F88 802556A8 44824000 */  mtc1      $v0, $f8
/* 183F8C 802556AC 00000000 */  nop
/* 183F90 802556B0 46804220 */  cvt.s.w   $f8, $f8
/* 183F94 802556B4 00111023 */  negu      $v0, $s1
/* 183F98 802556B8 44054000 */  mfc1      $a1, $f8
/* 183F9C 802556BC 44824000 */  mtc1      $v0, $f8
/* 183FA0 802556C0 00000000 */  nop
/* 183FA4 802556C4 46804220 */  cvt.s.w   $f8, $f8
/* 183FA8 802556C8 4407A000 */  mfc1      $a3, $f20
/* 183FAC 802556CC 44064000 */  mfc1      $a2, $f8
/* 183FB0 802556D0 0C019E40 */  jal       guTranslateF
/* 183FB4 802556D4 27A40218 */   addiu    $a0, $sp, 0x218
/* 183FB8 802556D8 44904000 */  mtc1      $s0, $f8
/* 183FBC 802556DC 00000000 */  nop
/* 183FC0 802556E0 46804220 */  cvt.s.w   $f8, $f8
/* 183FC4 802556E4 44054000 */  mfc1      $a1, $f8
/* 183FC8 802556E8 44914000 */  mtc1      $s1, $f8
/* 183FCC 802556EC 00000000 */  nop
/* 183FD0 802556F0 080955D1 */  j         .L80255744
/* 183FD4 802556F4 46804220 */   cvt.s.w  $f8, $f8
.L802556F8:
/* 183FD8 802556F8 44824000 */  mtc1      $v0, $f8
/* 183FDC 802556FC 00000000 */  nop
/* 183FE0 80255700 46804220 */  cvt.s.w   $f8, $f8
/* 183FE4 80255704 44054000 */  mfc1      $a1, $f8
/* 183FE8 80255708 44914000 */  mtc1      $s1, $f8
/* 183FEC 8025570C 00000000 */  nop
/* 183FF0 80255710 46804220 */  cvt.s.w   $f8, $f8
/* 183FF4 80255714 4407A000 */  mfc1      $a3, $f20
/* 183FF8 80255718 44064000 */  mfc1      $a2, $f8
/* 183FFC 8025571C 0C019E40 */  jal       guTranslateF
/* 184000 80255720 27A40218 */   addiu    $a0, $sp, 0x218
/* 184004 80255724 44904000 */  mtc1      $s0, $f8
/* 184008 80255728 00000000 */  nop
/* 18400C 8025572C 46804220 */  cvt.s.w   $f8, $f8
/* 184010 80255730 00111023 */  negu      $v0, $s1
/* 184014 80255734 44054000 */  mfc1      $a1, $f8
/* 184018 80255738 44824000 */  mtc1      $v0, $f8
/* 18401C 8025573C 00000000 */  nop
/* 184020 80255740 46804220 */  cvt.s.w   $f8, $f8
.L80255744:
/* 184024 80255744 4407A000 */  mfc1      $a3, $f20
/* 184028 80255748 44064000 */  mfc1      $a2, $f8
/* 18402C 8025574C 0C019E40 */  jal       guTranslateF
/* 184030 80255750 27A40258 */   addiu    $a0, $sp, 0x258
/* 184034 80255754 4405D000 */  mfc1      $a1, $f26
/* 184038 80255758 4406E000 */  mfc1      $a2, $f28
/* 18403C 8025575C 4407B000 */  mfc1      $a3, $f22
/* 184040 80255760 0C019E40 */  jal       guTranslateF
/* 184044 80255764 27A40158 */   addiu    $a0, $sp, 0x158
/* 184048 80255768 4405C000 */  mfc1      $a1, $f24
/* 18404C 8025576C 3C063F80 */  lui       $a2, 0x3f80
/* 184050 80255770 4407A000 */  mfc1      $a3, $f20
/* 184054 80255774 27A40018 */  addiu     $a0, $sp, 0x18
/* 184058 80255778 0C019EC8 */  jal       guRotateF
/* 18405C 8025577C E7B40010 */   swc1     $f20, 0x10($sp)
/* 184060 80255780 4405F000 */  mfc1      $a1, $f30
/* 184064 80255784 4406A000 */  mfc1      $a2, $f20
/* 184068 80255788 3C073F80 */  lui       $a3, 0x3f80
/* 18406C 8025578C 8FA40330 */  lw        $a0, 0x330($sp)
/* 184070 80255790 0C019EC8 */  jal       guRotateF
/* 184074 80255794 E7B40010 */   swc1     $f20, 0x10($sp)
/* 184078 80255798 3C013F80 */  lui       $at, 0x3f80
/* 18407C 8025579C 44814000 */  mtc1      $at, $f8
/* 184080 802557A0 8FA50328 */  lw        $a1, 0x328($sp)
/* 184084 802557A4 4406A000 */  mfc1      $a2, $f20
/* 184088 802557A8 4407A000 */  mfc1      $a3, $f20
/* 18408C 802557AC 8FA40334 */  lw        $a0, 0x334($sp)
/* 184090 802557B0 0C019EC8 */  jal       guRotateF
/* 184094 802557B4 E7A80010 */   swc1     $f8, 0x10($sp)
/* 184098 802557B8 27A50018 */  addiu     $a1, $sp, 0x18
/* 18409C 802557BC 8FA40330 */  lw        $a0, 0x330($sp)
/* 1840A0 802557C0 0C019D80 */  jal       guMtxCatF
/* 1840A4 802557C4 02E0302D */   daddu    $a2, $s7, $zero
/* 1840A8 802557C8 8FA50334 */  lw        $a1, 0x334($sp)
/* 1840AC 802557CC 8FA60338 */  lw        $a2, 0x338($sp)
/* 1840B0 802557D0 0C019D80 */  jal       guMtxCatF
/* 1840B4 802557D4 02E0202D */   daddu    $a0, $s7, $zero
/* 1840B8 802557D8 82420074 */  lb        $v0, 0x74($s2)
/* 1840BC 802557DC C6420050 */  lwc1      $f2, 0x50($s2)
/* 1840C0 802557E0 44820000 */  mtc1      $v0, $f0
/* 1840C4 802557E4 00000000 */  nop
/* 1840C8 802557E8 46800020 */  cvt.s.w   $f0, $f0
/* 1840CC 802557EC 46001082 */  mul.s     $f2, $f2, $f0
/* 1840D0 802557F0 00000000 */  nop
/* 1840D4 802557F4 8E45004C */  lw        $a1, 0x4c($s2)
/* 1840D8 802557F8 8E470054 */  lw        $a3, 0x54($s2)
/* 1840DC 802557FC 8FA4033C */  lw        $a0, 0x33c($sp)
/* 1840E0 80255800 44061000 */  mfc1      $a2, $f2
/* 1840E4 80255804 0C019DF0 */  jal       guScaleF
/* 1840E8 80255808 00000000 */   nop
/* 1840EC 8025580C 27A50218 */  addiu     $a1, $sp, 0x218
/* 1840F0 80255810 8FA4033C */  lw        $a0, 0x33c($sp)
/* 1840F4 80255814 0C019D80 */  jal       guMtxCatF
/* 1840F8 80255818 0260302D */   daddu    $a2, $s3, $zero
/* 1840FC 8025581C 0260202D */  daddu     $a0, $s3, $zero
/* 184100 80255820 8FA50338 */  lw        $a1, 0x338($sp)
/* 184104 80255824 0C019D80 */  jal       guMtxCatF
/* 184108 80255828 02E0302D */   daddu    $a2, $s7, $zero
/* 18410C 8025582C 02E0202D */  daddu     $a0, $s7, $zero
/* 184110 80255830 27A50258 */  addiu     $a1, $sp, 0x258
/* 184114 80255834 0C019D80 */  jal       guMtxCatF
/* 184118 80255838 0260302D */   daddu    $a2, $s3, $zero
/* 18411C 8025583C 8E420000 */  lw        $v0, ($s2)
/* 184120 80255840 3C030010 */  lui       $v1, 0x10
/* 184124 80255844 00431024 */  and       $v0, $v0, $v1
/* 184128 80255848 14400003 */  bnez      $v0, .L80255858
/* 18412C 8025584C 0260202D */   daddu    $a0, $s3, $zero
/* 184130 80255850 08095617 */  j         .L8025585C
/* 184134 80255854 27A50298 */   addiu    $a1, $sp, 0x298
.L80255858:
/* 184138 80255858 27A502D8 */  addiu     $a1, $sp, 0x2d8
.L8025585C:
/* 18413C 8025585C 0C019D80 */  jal       guMtxCatF
/* 184140 80255860 02E0302D */   daddu    $a2, $s7, $zero
/* 184144 80255864 27A40198 */  addiu     $a0, $sp, 0x198
/* 184148 80255868 27A50158 */  addiu     $a1, $sp, 0x158
/* 18414C 8025586C 0C019D80 */  jal       guMtxCatF
/* 184150 80255870 0260302D */   daddu    $a2, $s3, $zero
/* 184154 80255874 8FA80324 */  lw        $t0, 0x324($sp)
/* 184158 80255878 01160018 */  mult      $t0, $s6
/* 18415C 8025587C 3C118000 */  lui       $s1, 0x8000
/* 184160 80255880 8FA80398 */  lw        $t0, 0x398($sp)
/* 184164 80255884 00004812 */  mflo      $t1
/* 184168 80255888 15000004 */  bnez      $t0, .L8025589C
/* 18416C 8025588C 03C98023 */   subu     $s0, $fp, $t1
/* 184170 80255890 8FA5032C */  lw        $a1, 0x32c($sp)
/* 184174 80255894 08095630 */  j         .L802558C0
/* 184178 80255898 0200302D */   daddu    $a2, $s0, $zero
.L8025589C:
/* 18417C 8025589C 8FA9032C */  lw        $t1, 0x32c($sp)
/* 184180 802558A0 252200B4 */  addiu     $v0, $t1, 0xb4
/* 184184 802558A4 44826000 */  mtc1      $v0, $f12
/* 184188 802558A8 00000000 */  nop
/* 18418C 802558AC 0C00A6C9 */  jal       clamp_angle
/* 184190 802558B0 46806320 */   cvt.s.w  $f12, $f12
/* 184194 802558B4 4600020D */  trunc.w.s $f8, $f0
/* 184198 802558B8 44054000 */  mfc1      $a1, $f8
/* 18419C 802558BC 0200302D */  daddu     $a2, $s0, $zero
.L802558C0:
/* 1841A0 802558C0 8E440084 */  lw        $a0, 0x84($s2)
/* 1841A4 802558C4 0000382D */  daddu     $a3, $zero, $zero
/* 1841A8 802558C8 AFB30010 */  sw        $s3, 0x10($sp)
/* 1841AC 802558CC 0C0B78F6 */  jal       func_802DE3D8
/* 1841B0 802558D0 00912025 */   or       $a0, $a0, $s1
/* 1841B4 802558D4 0809555C */  j         .L80255570
/* 1841B8 802558D8 00000000 */   nop
.L802558DC:
/* 1841BC 802558DC 8FA9031C */  lw        $t1, 0x31c($sp)
/* 1841C0 802558E0 8FA80318 */  lw        $t0, 0x318($sp)
/* 1841C4 802558E4 25290001 */  addiu     $t1, $t1, 1
/* 1841C8 802558E8 0128102A */  slt       $v0, $t1, $t0
/* 1841CC 802558EC 1440FEE3 */  bnez      $v0, .L8025547C
/* 1841D0 802558F0 AFA9031C */   sw       $t1, 0x31c($sp)
.L802558F4:
/* 1841D4 802558F4 8FBF0364 */  lw        $ra, 0x364($sp)
/* 1841D8 802558F8 8FBE0360 */  lw        $fp, 0x360($sp)
/* 1841DC 802558FC 8FB7035C */  lw        $s7, 0x35c($sp)
/* 1841E0 80255900 8FB60358 */  lw        $s6, 0x358($sp)
/* 1841E4 80255904 8FB50354 */  lw        $s5, 0x354($sp)
/* 1841E8 80255908 8FB40350 */  lw        $s4, 0x350($sp)
/* 1841EC 8025590C 8FB3034C */  lw        $s3, 0x34c($sp)
/* 1841F0 80255910 8FB20348 */  lw        $s2, 0x348($sp)
/* 1841F4 80255914 8FB10344 */  lw        $s1, 0x344($sp)
/* 1841F8 80255918 8FB00340 */  lw        $s0, 0x340($sp)
/* 1841FC 8025591C D7BE0390 */  ldc1      $f30, 0x390($sp)
/* 184200 80255920 D7BC0388 */  ldc1      $f28, 0x388($sp)
/* 184204 80255924 D7BA0380 */  ldc1      $f26, 0x380($sp)
/* 184208 80255928 D7B80378 */  ldc1      $f24, 0x378($sp)
/* 18420C 8025592C D7B60370 */  ldc1      $f22, 0x370($sp)
/* 184210 80255930 D7B40368 */  ldc1      $f20, 0x368($sp)
/* 184214 80255934 03E00008 */  jr        $ra
/* 184218 80255938 27BD0398 */   addiu    $sp, $sp, 0x398
