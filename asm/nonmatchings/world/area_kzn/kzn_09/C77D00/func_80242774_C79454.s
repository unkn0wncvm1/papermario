.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242774_C79454
/* C79454 80242774 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* C79458 80242778 AFB20038 */  sw        $s2, 0x38($sp)
/* C7945C 8024277C 0080902D */  daddu     $s2, $a0, $zero
/* C79460 80242780 AFBF0048 */  sw        $ra, 0x48($sp)
/* C79464 80242784 AFB50044 */  sw        $s5, 0x44($sp)
/* C79468 80242788 AFB40040 */  sw        $s4, 0x40($sp)
/* C7946C 8024278C AFB3003C */  sw        $s3, 0x3c($sp)
/* C79470 80242790 AFB10034 */  sw        $s1, 0x34($sp)
/* C79474 80242794 AFB00030 */  sw        $s0, 0x30($sp)
/* C79478 80242798 8E510148 */  lw        $s1, 0x148($s2)
/* C7947C 8024279C 86240008 */  lh        $a0, 8($s1)
/* C79480 802427A0 0C00EABB */  jal       get_npc_unsafe
/* C79484 802427A4 00A0802D */   daddu    $s0, $a1, $zero
/* C79488 802427A8 8E43000C */  lw        $v1, 0xc($s2)
/* C7948C 802427AC 0240202D */  daddu     $a0, $s2, $zero
/* C79490 802427B0 8C650000 */  lw        $a1, ($v1)
/* C79494 802427B4 0C0B1EAF */  jal       get_variable
/* C79498 802427B8 0040A82D */   daddu    $s5, $v0, $zero
/* C7949C 802427BC AFA00010 */  sw        $zero, 0x10($sp)
/* C794A0 802427C0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C794A4 802427C4 8C630030 */  lw        $v1, 0x30($v1)
/* C794A8 802427C8 AFA30014 */  sw        $v1, 0x14($sp)
/* C794AC 802427CC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C794B0 802427D0 8C63001C */  lw        $v1, 0x1c($v1)
/* C794B4 802427D4 AFA30018 */  sw        $v1, 0x18($sp)
/* C794B8 802427D8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C794BC 802427DC 8C630024 */  lw        $v1, 0x24($v1)
/* C794C0 802427E0 AFA3001C */  sw        $v1, 0x1c($sp)
/* C794C4 802427E4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C794C8 802427E8 8C630028 */  lw        $v1, 0x28($v1)
/* C794CC 802427EC 27B40010 */  addiu     $s4, $sp, 0x10
/* C794D0 802427F0 AFA30020 */  sw        $v1, 0x20($sp)
/* C794D4 802427F4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C794D8 802427F8 3C014348 */  lui       $at, 0x4348
/* C794DC 802427FC 44810000 */  mtc1      $at, $f0
/* C794E0 80242800 8C63002C */  lw        $v1, 0x2c($v1)
/* C794E4 80242804 0040982D */  daddu     $s3, $v0, $zero
/* C794E8 80242808 E7A00028 */  swc1      $f0, 0x28($sp)
/* C794EC 8024280C A7A0002C */  sh        $zero, 0x2c($sp)
/* C794F0 80242810 16000005 */  bnez      $s0, .L80242828
/* C794F4 80242814 AFA30024 */   sw       $v1, 0x24($sp)
/* C794F8 80242818 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C794FC 8024281C 30420004 */  andi      $v0, $v0, 4
/* C79500 80242820 10400011 */  beqz      $v0, .L80242868
/* C79504 80242824 00000000 */   nop
.L80242828:
/* C79508 80242828 AE400070 */  sw        $zero, 0x70($s2)
/* C7950C 8024282C A6A0008E */  sh        $zero, 0x8e($s5)
/* C79510 80242830 8E2200CC */  lw        $v0, 0xcc($s1)
/* C79514 80242834 8C420000 */  lw        $v0, ($v0)
/* C79518 80242838 AEA20028 */  sw        $v0, 0x28($s5)
/* C7951C 8024283C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C79520 80242840 30420004 */  andi      $v0, $v0, 4
/* C79524 80242844 10400008 */  beqz      $v0, .L80242868
/* C79528 80242848 AE20006C */   sw       $zero, 0x6c($s1)
/* C7952C 8024284C 24020063 */  addiu     $v0, $zero, 0x63
/* C79530 80242850 AE420070 */  sw        $v0, 0x70($s2)
/* C79534 80242854 AE400074 */  sw        $zero, 0x74($s2)
/* C79538 80242858 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C7953C 8024285C 2403FFFB */  addiu     $v1, $zero, -5
/* C79540 80242860 00431024 */  and       $v0, $v0, $v1
/* C79544 80242864 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80242868:
/* C79548 80242868 8E430070 */  lw        $v1, 0x70($s2)
/* C7954C 8024286C 2410000B */  addiu     $s0, $zero, 0xb
/* C79550 80242870 1070002A */  beq       $v1, $s0, .L8024291C
/* C79554 80242874 2862000C */   slti     $v0, $v1, 0xc
/* C79558 80242878 1040000D */  beqz      $v0, .L802428B0
/* C7955C 8024287C 24020001 */   addiu    $v0, $zero, 1
/* C79560 80242880 1062001A */  beq       $v1, $v0, .L802428EC
/* C79564 80242884 28620002 */   slti     $v0, $v1, 2
/* C79568 80242888 10400005 */  beqz      $v0, .L802428A0
/* C7956C 8024288C 2402000A */   addiu    $v0, $zero, 0xa
/* C79570 80242890 10600013 */  beqz      $v1, .L802428E0
/* C79574 80242894 0240202D */   daddu    $a0, $s2, $zero
/* C79578 80242898 08090A67 */  j         .L8024299C
/* C7957C 8024289C 00000000 */   nop
.L802428A0:
/* C79580 802428A0 10620018 */  beq       $v1, $v0, .L80242904
/* C79584 802428A4 0240202D */   daddu    $a0, $s2, $zero
/* C79588 802428A8 08090A67 */  j         .L8024299C
/* C7958C 802428AC 00000000 */   nop
.L802428B0:
/* C79590 802428B0 2402000D */  addiu     $v0, $zero, 0xd
/* C79594 802428B4 10620029 */  beq       $v1, $v0, .L8024295C
/* C79598 802428B8 0062102A */   slt      $v0, $v1, $v0
/* C7959C 802428BC 14400020 */  bnez      $v0, .L80242940
/* C795A0 802428C0 0240202D */   daddu    $a0, $s2, $zero
/* C795A4 802428C4 2402000E */  addiu     $v0, $zero, 0xe
/* C795A8 802428C8 1062002D */  beq       $v1, $v0, .L80242980
/* C795AC 802428CC 24020063 */   addiu    $v0, $zero, 0x63
/* C795B0 802428D0 10620030 */  beq       $v1, $v0, .L80242994
/* C795B4 802428D4 00000000 */   nop
/* C795B8 802428D8 08090A67 */  j         .L8024299C
/* C795BC 802428DC 00000000 */   nop
.L802428E0:
/* C795C0 802428E0 0260282D */  daddu     $a1, $s3, $zero
/* C795C4 802428E4 0C09063C */  jal       func_802418F0_C785D0
/* C795C8 802428E8 0280302D */   daddu    $a2, $s4, $zero
.L802428EC:
/* C795CC 802428EC 0240202D */  daddu     $a0, $s2, $zero
/* C795D0 802428F0 0260282D */  daddu     $a1, $s3, $zero
/* C795D4 802428F4 0C090657 */  jal       func_8024195C_C7863C
/* C795D8 802428F8 0280302D */   daddu    $a2, $s4, $zero
/* C795DC 802428FC 08090A67 */  j         .L8024299C
/* C795E0 80242900 00000000 */   nop
.L80242904:
/* C795E4 80242904 0260282D */  daddu     $a1, $s3, $zero
/* C795E8 80242908 0C090696 */  jal       func_80241A58_C78738
/* C795EC 8024290C 0280302D */   daddu    $a2, $s4, $zero
/* C795F0 80242910 8E420070 */  lw        $v0, 0x70($s2)
/* C795F4 80242914 14500021 */  bne       $v0, $s0, .L8024299C
/* C795F8 80242918 00000000 */   nop
.L8024291C:
/* C795FC 8024291C 0240202D */  daddu     $a0, $s2, $zero
/* C79600 80242920 0260282D */  daddu     $a1, $s3, $zero
/* C79604 80242924 0C090926 */  jal       func_80242498_C79178
/* C79608 80242928 0280302D */   daddu    $a2, $s4, $zero
/* C7960C 8024292C 8E430070 */  lw        $v1, 0x70($s2)
/* C79610 80242930 2402000C */  addiu     $v0, $zero, 0xc
/* C79614 80242934 14620019 */  bne       $v1, $v0, .L8024299C
/* C79618 80242938 00000000 */   nop
/* C7961C 8024293C 0240202D */  daddu     $a0, $s2, $zero
.L80242940:
/* C79620 80242940 0260282D */  daddu     $a1, $s3, $zero
/* C79624 80242944 0C09094A */  jal       func_80242528_C79208
/* C79628 80242948 0280302D */   daddu    $a2, $s4, $zero
/* C7962C 8024294C 8E430070 */  lw        $v1, 0x70($s2)
/* C79630 80242950 2402000D */  addiu     $v0, $zero, 0xd
/* C79634 80242954 14620011 */  bne       $v1, $v0, .L8024299C
/* C79638 80242958 00000000 */   nop
.L8024295C:
/* C7963C 8024295C 0240202D */  daddu     $a0, $s2, $zero
/* C79640 80242960 0260282D */  daddu     $a1, $s3, $zero
/* C79644 80242964 0C09098A */  jal       func_80242628_C79308
/* C79648 80242968 0280302D */   daddu    $a2, $s4, $zero
/* C7964C 8024296C 8E430070 */  lw        $v1, 0x70($s2)
/* C79650 80242970 2402000E */  addiu     $v0, $zero, 0xe
/* C79654 80242974 14620009 */  bne       $v1, $v0, .L8024299C
/* C79658 80242978 00000000 */   nop
/* C7965C 8024297C 0240202D */  daddu     $a0, $s2, $zero
.L80242980:
/* C79660 80242980 0260282D */  daddu     $a1, $s3, $zero
/* C79664 80242984 0C0909A2 */  jal       func_80242688_C79368
/* C79668 80242988 0280302D */   daddu    $a2, $s4, $zero
/* C7966C 8024298C 08090A67 */  j         .L8024299C
/* C79670 80242990 00000000 */   nop
.L80242994:
/* C79674 80242994 0C0129CF */  jal       func_8004A73C
/* C79678 80242998 0240202D */   daddu    $a0, $s2, $zero
.L8024299C:
/* C7967C 8024299C 8FBF0048 */  lw        $ra, 0x48($sp)
/* C79680 802429A0 8FB50044 */  lw        $s5, 0x44($sp)
/* C79684 802429A4 8FB40040 */  lw        $s4, 0x40($sp)
/* C79688 802429A8 8FB3003C */  lw        $s3, 0x3c($sp)
/* C7968C 802429AC 8FB20038 */  lw        $s2, 0x38($sp)
/* C79690 802429B0 8FB10034 */  lw        $s1, 0x34($sp)
/* C79694 802429B4 8FB00030 */  lw        $s0, 0x30($sp)
/* C79698 802429B8 0000102D */  daddu     $v0, $zero, $zero
/* C7969C 802429BC 03E00008 */  jr        $ra
/* C796A0 802429C0 27BD0050 */   addiu    $sp, $sp, 0x50
