.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242478_CD42A8
/* CD42A8 80242478 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* CD42AC 8024247C AFB3004C */  sw        $s3, 0x4c($sp)
/* CD42B0 80242480 0080982D */  daddu     $s3, $a0, $zero
/* CD42B4 80242484 AFBF0050 */  sw        $ra, 0x50($sp)
/* CD42B8 80242488 AFB20048 */  sw        $s2, 0x48($sp)
/* CD42BC 8024248C AFB10044 */  sw        $s1, 0x44($sp)
/* CD42C0 80242490 AFB00040 */  sw        $s0, 0x40($sp)
/* CD42C4 80242494 8E720148 */  lw        $s2, 0x148($s3)
/* CD42C8 80242498 00A0882D */  daddu     $s1, $a1, $zero
/* CD42CC 8024249C 86440008 */  lh        $a0, 8($s2)
/* CD42D0 802424A0 0C00EABB */  jal       get_npc_unsafe
/* CD42D4 802424A4 00C0802D */   daddu    $s0, $a2, $zero
/* CD42D8 802424A8 0200202D */  daddu     $a0, $s0, $zero
/* CD42DC 802424AC 0240282D */  daddu     $a1, $s2, $zero
/* CD42E0 802424B0 24030001 */  addiu     $v1, $zero, 1
/* CD42E4 802424B4 AFA30010 */  sw        $v1, 0x10($sp)
/* CD42E8 802424B8 8E260024 */  lw        $a2, 0x24($s1)
/* CD42EC 802424BC 8E270028 */  lw        $a3, 0x28($s1)
/* CD42F0 802424C0 0C01242D */  jal       func_800490B4
/* CD42F4 802424C4 0040802D */   daddu    $s0, $v0, $zero
/* CD42F8 802424C8 14400020 */  bnez      $v0, .L8024254C
/* CD42FC 802424CC 24040002 */   addiu    $a0, $zero, 2
/* CD4300 802424D0 0200282D */  daddu     $a1, $s0, $zero
/* CD4304 802424D4 0000302D */  daddu     $a2, $zero, $zero
/* CD4308 802424D8 860300A8 */  lh        $v1, 0xa8($s0)
/* CD430C 802424DC 3C013F80 */  lui       $at, 0x3f80
/* CD4310 802424E0 44810000 */  mtc1      $at, $f0
/* CD4314 802424E4 3C014000 */  lui       $at, 0x4000
/* CD4318 802424E8 44811000 */  mtc1      $at, $f2
/* CD431C 802424EC 3C01C1A0 */  lui       $at, 0xc1a0
/* CD4320 802424F0 44812000 */  mtc1      $at, $f4
/* CD4324 802424F4 2402000F */  addiu     $v0, $zero, 0xf
/* CD4328 802424F8 AFA2001C */  sw        $v0, 0x1c($sp)
/* CD432C 802424FC 44834000 */  mtc1      $v1, $f8
/* CD4330 80242500 00000000 */  nop
/* CD4334 80242504 46804220 */  cvt.s.w   $f8, $f8
/* CD4338 80242508 44074000 */  mfc1      $a3, $f8
/* CD433C 8024250C 27A20028 */  addiu     $v0, $sp, 0x28
/* CD4340 80242510 AFA20020 */  sw        $v0, 0x20($sp)
/* CD4344 80242514 E7A00010 */  swc1      $f0, 0x10($sp)
/* CD4348 80242518 E7A20014 */  swc1      $f2, 0x14($sp)
/* CD434C 8024251C 0C01BFA4 */  jal       fx_emote
/* CD4350 80242520 E7A40018 */   swc1     $f4, 0x18($sp)
/* CD4354 80242524 8E4200CC */  lw        $v0, 0xcc($s2)
/* CD4358 80242528 8C430000 */  lw        $v1, ($v0)
/* CD435C 8024252C 2402001E */  addiu     $v0, $zero, 0x1e
/* CD4360 80242530 A602008E */  sh        $v0, 0x8e($s0)
/* CD4364 80242534 24020014 */  addiu     $v0, $zero, 0x14
/* CD4368 80242538 AE030028 */  sw        $v1, 0x28($s0)
/* CD436C 8024253C AE620070 */  sw        $v0, 0x70($s3)
/* CD4370 80242540 2402001E */  addiu     $v0, $zero, 0x1e
/* CD4374 80242544 080909B7 */  j         .L802426DC
/* CD4378 80242548 AE420090 */   sw       $v0, 0x90($s2)
.L8024254C:
/* CD437C 8024254C 8E050018 */  lw        $a1, 0x18($s0)
/* CD4380 80242550 8E06000C */  lw        $a2, 0xc($s0)
/* CD4384 80242554 0C00EA95 */  jal       npc_move_heading
/* CD4388 80242558 0200202D */   daddu    $a0, $s0, $zero
/* CD438C 8024255C 8E020000 */  lw        $v0, ($s0)
/* CD4390 80242560 30420008 */  andi      $v0, $v0, 8
/* CD4394 80242564 14400028 */  bnez      $v0, .L80242608
/* CD4398 80242568 0000882D */   daddu    $s1, $zero, $zero
/* CD439C 8024256C 27A5002C */  addiu     $a1, $sp, 0x2c
/* CD43A0 80242570 27A60030 */  addiu     $a2, $sp, 0x30
/* CD43A4 80242574 860200A8 */  lh        $v0, 0xa8($s0)
/* CD43A8 80242578 C6000038 */  lwc1      $f0, 0x38($s0)
/* CD43AC 8024257C 44821000 */  mtc1      $v0, $f2
/* CD43B0 80242580 00000000 */  nop
/* CD43B4 80242584 468010A0 */  cvt.s.w   $f2, $f2
/* CD43B8 80242588 E7A0002C */  swc1      $f0, 0x2c($sp)
/* CD43BC 8024258C 860200A8 */  lh        $v0, 0xa8($s0)
/* CD43C0 80242590 C604003C */  lwc1      $f4, 0x3c($s0)
/* CD43C4 80242594 C6060040 */  lwc1      $f6, 0x40($s0)
/* CD43C8 80242598 44820000 */  mtc1      $v0, $f0
/* CD43CC 8024259C 00000000 */  nop
/* CD43D0 802425A0 46800021 */  cvt.d.w   $f0, $f0
/* CD43D4 802425A4 46022100 */  add.s     $f4, $f4, $f2
/* CD43D8 802425A8 3C014008 */  lui       $at, 0x4008
/* CD43DC 802425AC 44811800 */  mtc1      $at, $f3
/* CD43E0 802425B0 44801000 */  mtc1      $zero, $f2
/* CD43E4 802425B4 27A20038 */  addiu     $v0, $sp, 0x38
/* CD43E8 802425B8 46220000 */  add.d     $f0, $f0, $f2
/* CD43EC 802425BC E7A60034 */  swc1      $f6, 0x34($sp)
/* CD43F0 802425C0 E7A40030 */  swc1      $f4, 0x30($sp)
/* CD43F4 802425C4 46200020 */  cvt.s.d   $f0, $f0
/* CD43F8 802425C8 E7A00038 */  swc1      $f0, 0x38($sp)
/* CD43FC 802425CC AFA20010 */  sw        $v0, 0x10($sp)
/* CD4400 802425D0 8E040080 */  lw        $a0, 0x80($s0)
/* CD4404 802425D4 0C0372DF */  jal       func_800DCB7C
/* CD4408 802425D8 27A70034 */   addiu    $a3, $sp, 0x34
/* CD440C 802425DC 1040000A */  beqz      $v0, .L80242608
/* CD4410 802425E0 00000000 */   nop
/* CD4414 802425E4 860200A8 */  lh        $v0, 0xa8($s0)
/* CD4418 802425E8 C7A20038 */  lwc1      $f2, 0x38($sp)
/* CD441C 802425EC 44820000 */  mtc1      $v0, $f0
/* CD4420 802425F0 00000000 */  nop
/* CD4424 802425F4 46800020 */  cvt.s.w   $f0, $f0
/* CD4428 802425F8 4600103C */  c.lt.s    $f2, $f0
/* CD442C 802425FC 00000000 */  nop
/* CD4430 80242600 45030001 */  bc1tl     .L80242608
/* CD4434 80242604 24110001 */   addiu    $s1, $zero, 1
.L80242608:
/* CD4438 80242608 12200008 */  beqz      $s1, .L8024262C
/* CD443C 8024260C 00000000 */   nop
/* CD4440 80242610 C7A00030 */  lwc1      $f0, 0x30($sp)
/* CD4444 80242614 3C013FF0 */  lui       $at, 0x3ff0
/* CD4448 80242618 44811800 */  mtc1      $at, $f3
/* CD444C 8024261C 44801000 */  mtc1      $zero, $f2
/* CD4450 80242620 46000021 */  cvt.d.s   $f0, $f0
/* CD4454 80242624 080909AD */  j         .L802426B4
/* CD4458 80242628 46220000 */   add.d    $f0, $f0, $f2
.L8024262C:
/* CD445C 8024262C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* CD4460 80242630 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* CD4464 80242634 3C014018 */  lui       $at, 0x4018
/* CD4468 80242638 44811800 */  mtc1      $at, $f3
/* CD446C 8024263C 44801000 */  mtc1      $zero, $f2
/* CD4470 80242640 C440002C */  lwc1      $f0, 0x2c($v0)
/* CD4474 80242644 C604003C */  lwc1      $f4, 0x3c($s0)
/* CD4478 80242648 46000021 */  cvt.d.s   $f0, $f0
/* CD447C 8024264C 46220000 */  add.d     $f0, $f0, $f2
/* CD4480 80242650 46002121 */  cvt.d.s   $f4, $f4
/* CD4484 80242654 46202001 */  sub.d     $f0, $f4, $f0
/* CD4488 80242658 462001A0 */  cvt.s.d   $f6, $f0
/* CD448C 8024265C 44800000 */  mtc1      $zero, $f0
/* CD4490 80242660 44800800 */  mtc1      $zero, $f1
/* CD4494 80242664 460030A1 */  cvt.d.s   $f2, $f6
/* CD4498 80242668 4620103C */  c.lt.d    $f2, $f0
/* CD449C 8024266C 00000000 */  nop
/* CD44A0 80242670 45010009 */  bc1t      .L80242698
/* CD44A4 80242674 00000000 */   nop
/* CD44A8 80242678 3C014010 */  lui       $at, 0x4010
/* CD44AC 8024267C 44810800 */  mtc1      $at, $f1
/* CD44B0 80242680 44800000 */  mtc1      $zero, $f0
/* CD44B4 80242684 00000000 */  nop
/* CD44B8 80242688 4622003C */  c.lt.d    $f0, $f2
/* CD44BC 8024268C 00000000 */  nop
/* CD44C0 80242690 4500000A */  bc1f      .L802426BC
/* CD44C4 80242694 00000000 */   nop
.L80242698:
/* CD44C8 80242698 3C018024 */  lui       $at, %hi(D_80245448)
/* CD44CC 8024269C D4225448 */  ldc1      $f2, %lo(D_80245448)($at)
/* CD44D0 802426A0 46003187 */  neg.s     $f6, $f6
/* CD44D4 802426A4 46003021 */  cvt.d.s   $f0, $f6
/* CD44D8 802426A8 46220002 */  mul.d     $f0, $f0, $f2
/* CD44DC 802426AC 00000000 */  nop
/* CD44E0 802426B0 46202000 */  add.d     $f0, $f4, $f0
.L802426B4:
/* CD44E4 802426B4 46200020 */  cvt.s.d   $f0, $f0
/* CD44E8 802426B8 E600003C */  swc1      $f0, 0x3c($s0)
.L802426BC:
/* CD44EC 802426BC 8602008E */  lh        $v0, 0x8e($s0)
/* CD44F0 802426C0 9603008E */  lhu       $v1, 0x8e($s0)
/* CD44F4 802426C4 18400003 */  blez      $v0, .L802426D4
/* CD44F8 802426C8 2462FFFF */   addiu    $v0, $v1, -1
/* CD44FC 802426CC 080909B7 */  j         .L802426DC
/* CD4500 802426D0 A602008E */   sh       $v0, 0x8e($s0)
.L802426D4:
/* CD4504 802426D4 2402000C */  addiu     $v0, $zero, 0xc
/* CD4508 802426D8 AE620070 */  sw        $v0, 0x70($s3)
.L802426DC:
/* CD450C 802426DC 8FBF0050 */  lw        $ra, 0x50($sp)
/* CD4510 802426E0 8FB3004C */  lw        $s3, 0x4c($sp)
/* CD4514 802426E4 8FB20048 */  lw        $s2, 0x48($sp)
/* CD4518 802426E8 8FB10044 */  lw        $s1, 0x44($sp)
/* CD451C 802426EC 8FB00040 */  lw        $s0, 0x40($sp)
/* CD4520 802426F0 03E00008 */  jr        $ra
/* CD4524 802426F4 27BD0058 */   addiu    $sp, $sp, 0x58
