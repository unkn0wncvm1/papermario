.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024043C_9695FC
/* 9695FC 8024043C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 969600 80240440 AFB10024 */  sw        $s1, 0x24($sp)
/* 969604 80240444 0080882D */  daddu     $s1, $a0, $zero
/* 969608 80240448 3C05F840 */  lui       $a1, 0xf840
/* 96960C 8024044C AFBF0044 */  sw        $ra, 0x44($sp)
/* 969610 80240450 AFBE0040 */  sw        $fp, 0x40($sp)
/* 969614 80240454 AFB7003C */  sw        $s7, 0x3c($sp)
/* 969618 80240458 AFB60038 */  sw        $s6, 0x38($sp)
/* 96961C 8024045C AFB50034 */  sw        $s5, 0x34($sp)
/* 969620 80240460 AFB40030 */  sw        $s4, 0x30($sp)
/* 969624 80240464 AFB3002C */  sw        $s3, 0x2c($sp)
/* 969628 80240468 AFB20028 */  sw        $s2, 0x28($sp)
/* 96962C 8024046C AFB00020 */  sw        $s0, 0x20($sp)
/* 969630 80240470 8E3E0148 */  lw        $fp, 0x148($s1)
/* 969634 80240474 0C0B1EAF */  jal       get_variable
/* 969638 80240478 34A56268 */   ori      $a1, $a1, 0x6268
/* 96963C 8024047C 0040802D */  daddu     $s0, $v0, $zero
/* 969640 80240480 0220202D */  daddu     $a0, $s1, $zero
/* 969644 80240484 3C05F840 */  lui       $a1, 0xf840
/* 969648 80240488 0C0B1EAF */  jal       get_variable
/* 96964C 8024048C 34A56269 */   ori      $a1, $a1, 0x6269
/* 969650 80240490 0040B82D */  daddu     $s7, $v0, $zero
/* 969654 80240494 0220202D */  daddu     $a0, $s1, $zero
/* 969658 80240498 3C05F5DE */  lui       $a1, 0xf5de
/* 96965C 8024049C 0C0B1EAF */  jal       get_variable
/* 969660 802404A0 34A502DE */   ori      $a1, $a1, 0x2de
/* 969664 802404A4 0040B02D */  daddu     $s6, $v0, $zero
/* 969668 802404A8 0220202D */  daddu     $a0, $s1, $zero
/* 96966C 802404AC 3C05F5DE */  lui       $a1, 0xf5de
/* 969670 802404B0 0C0B1EAF */  jal       get_variable
/* 969674 802404B4 34A502DF */   ori      $a1, $a1, 0x2df
/* 969678 802404B8 0040A82D */  daddu     $s5, $v0, $zero
/* 96967C 802404BC 93D3006D */  lbu       $s3, 0x6d($fp)
/* 969680 802404C0 32C2FFFF */  andi      $v0, $s6, 0xffff
/* 969684 802404C4 A7B30010 */  sh        $s3, 0x10($sp)
/* 969688 802404C8 93D2006E */  lbu       $s2, 0x6e($fp)
/* 96968C 802404CC 93C7006F */  lbu       $a3, 0x6f($fp)
/* 969690 802404D0 3274FFFF */  andi      $s4, $s3, 0xffff
/* 969694 802404D4 12820003 */  beq       $s4, $v0, .L802404E4
/* 969698 802404D8 A7A7001E */   sh       $a3, 0x1e($sp)
/* 96969C 802404DC 0000B82D */  daddu     $s7, $zero, $zero
/* 9696A0 802404E0 02E0802D */  daddu     $s0, $s7, $zero
.L802404E4:
/* 9696A4 802404E4 3202FFFF */  andi      $v0, $s0, 0xffff
/* 9696A8 802404E8 14400016 */  bnez      $v0, .L80240544
/* 9696AC 802404EC 0220202D */   daddu    $a0, $s1, $zero
/* 9696B0 802404F0 0C00A67F */  jal       rand_int
/* 9696B4 802404F4 24040064 */   addiu    $a0, $zero, 0x64
/* 9696B8 802404F8 2842001E */  slti      $v0, $v0, 0x1e
/* 9696BC 802404FC 10400011 */  beqz      $v0, .L80240544
/* 9696C0 80240500 0220202D */   daddu    $a0, $s1, $zero
/* 9696C4 80240504 0C00A67F */  jal       rand_int
/* 9696C8 80240508 2644FFFF */   addiu    $a0, $s2, -1
/* 9696CC 8024050C 0040A82D */  daddu     $s5, $v0, $zero
/* 9696D0 80240510 0260B02D */  daddu     $s6, $s3, $zero
/* 9696D4 80240514 0220202D */  daddu     $a0, $s1, $zero
/* 9696D8 80240518 3C05F5DE */  lui       $a1, 0xf5de
/* 9696DC 8024051C 34A502DE */  ori       $a1, $a1, 0x2de
/* 9696E0 80240520 0C0B2026 */  jal       set_variable
/* 9696E4 80240524 0280302D */   daddu    $a2, $s4, $zero
/* 9696E8 80240528 0220202D */  daddu     $a0, $s1, $zero
/* 9696EC 8024052C 3C05F5DE */  lui       $a1, 0xf5de
/* 9696F0 80240530 34A502DF */  ori       $a1, $a1, 0x2df
/* 9696F4 80240534 0C0B2026 */  jal       set_variable
/* 9696F8 80240538 32A6FFFF */   andi     $a2, $s5, 0xffff
/* 9696FC 8024053C 24100001 */  addiu     $s0, $zero, 1
/* 969700 80240540 0220202D */  daddu     $a0, $s1, $zero
.L80240544:
/* 969704 80240544 3C05F840 */  lui       $a1, 0xf840
/* 969708 80240548 34A56268 */  ori       $a1, $a1, 0x6268
/* 96970C 8024054C 0C0B2026 */  jal       set_variable
/* 969710 80240550 3206FFFF */   andi     $a2, $s0, 0xffff
/* 969714 80240554 0220202D */  daddu     $a0, $s1, $zero
/* 969718 80240558 3C05F840 */  lui       $a1, 0xf840
/* 96971C 8024055C 34A56269 */  ori       $a1, $a1, 0x6269
/* 969720 80240560 0C0B2026 */  jal       set_variable
/* 969724 80240564 32E6FFFF */   andi     $a2, $s7, 0xffff
/* 969728 80240568 0000202D */  daddu     $a0, $zero, $zero
/* 96972C 8024056C 3C05F5DE */  lui       $a1, 0xf5de
/* 969730 80240570 0C0B1EAF */  jal       get_variable
/* 969734 80240574 34A502E0 */   ori      $a1, $a1, 0x2e0
/* 969738 80240578 0000202D */  daddu     $a0, $zero, $zero
/* 96973C 8024057C 3C05F5DE */  lui       $a1, 0xf5de
/* 969740 80240580 34A50180 */  ori       $a1, $a1, 0x180
/* 969744 80240584 0C0B1EAF */  jal       get_variable
/* 969748 80240588 0040802D */   daddu    $s0, $v0, $zero
/* 96974C 8024058C 0040282D */  daddu     $a1, $v0, $zero
/* 969750 80240590 0000182D */  daddu     $v1, $zero, $zero
/* 969754 80240594 3C068024 */  lui       $a2, %hi(D_80244E84)
/* 969758 80240598 24C64E84 */  addiu     $a2, $a2, %lo(D_80244E84)
/* 96975C 8024059C 00C0202D */  daddu     $a0, $a2, $zero
.L802405A0:
/* 969760 802405A0 8C820000 */  lw        $v0, ($a0)
/* 969764 802405A4 00A2102A */  slt       $v0, $a1, $v0
/* 969768 802405A8 14400006 */  bnez      $v0, .L802405C4
/* 96976C 802405AC 000310C0 */   sll      $v0, $v1, 3
/* 969770 802405B0 24630001 */  addiu     $v1, $v1, 1
/* 969774 802405B4 28620008 */  slti      $v0, $v1, 8
/* 969778 802405B8 1440FFF9 */  bnez      $v0, .L802405A0
/* 96977C 802405BC 24840008 */   addiu    $a0, $a0, 8
/* 969780 802405C0 000310C0 */  sll       $v0, $v1, 3
.L802405C4:
/* 969784 802405C4 00461021 */  addu      $v0, $v0, $a2
/* 969788 802405C8 8C420004 */  lw        $v0, 4($v0)
/* 96978C 802405CC 97A30010 */  lhu       $v1, 0x10($sp)
/* 969790 802405D0 0202202A */  slt       $a0, $s0, $v0
/* 969794 802405D4 32C2FFFF */  andi      $v0, $s6, 0xffff
/* 969798 802405D8 14620008 */  bne       $v1, $v0, .L802405FC
/* 96979C 802405DC 32A2FFFF */   andi     $v0, $s5, 0xffff
/* 9697A0 802405E0 97A7001E */  lhu       $a3, 0x1e($sp)
/* 9697A4 802405E4 14E20005 */  bne       $a3, $v0, .L802405FC
/* 9697A8 802405E8 32E2FFFF */   andi     $v0, $s7, 0xffff
/* 9697AC 802405EC 14400003 */  bnez      $v0, .L802405FC
/* 9697B0 802405F0 00000000 */   nop
/* 9697B4 802405F4 14800008 */  bnez      $a0, .L80240618
/* 9697B8 802405F8 24020001 */   addiu    $v0, $zero, 1
.L802405FC:
/* 9697BC 802405FC 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 9697C0 80240600 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 9697C4 80240604 80420075 */  lb        $v0, 0x75($v0)
/* 9697C8 80240608 10400005 */  beqz      $v0, .L80240620
/* 9697CC 8024060C 00000000 */   nop
/* 9697D0 80240610 10800003 */  beqz      $a0, .L80240620
/* 9697D4 80240614 24020001 */   addiu    $v0, $zero, 1
.L80240618:
/* 9697D8 80240618 0809018B */  j         .L8024062C
/* 9697DC 8024061C AE220084 */   sw       $v0, 0x84($s1)
.L80240620:
/* 9697E0 80240620 0C00F9EB */  jal       kill_enemy
/* 9697E4 80240624 03C0202D */   daddu    $a0, $fp, $zero
/* 9697E8 80240628 AE200084 */  sw        $zero, 0x84($s1)
.L8024062C:
/* 9697EC 8024062C 8FBF0044 */  lw        $ra, 0x44($sp)
/* 9697F0 80240630 8FBE0040 */  lw        $fp, 0x40($sp)
/* 9697F4 80240634 8FB7003C */  lw        $s7, 0x3c($sp)
/* 9697F8 80240638 8FB60038 */  lw        $s6, 0x38($sp)
/* 9697FC 8024063C 8FB50034 */  lw        $s5, 0x34($sp)
/* 969800 80240640 8FB40030 */  lw        $s4, 0x30($sp)
/* 969804 80240644 8FB3002C */  lw        $s3, 0x2c($sp)
/* 969808 80240648 8FB20028 */  lw        $s2, 0x28($sp)
/* 96980C 8024064C 8FB10024 */  lw        $s1, 0x24($sp)
/* 969810 80240650 8FB00020 */  lw        $s0, 0x20($sp)
/* 969814 80240654 24020002 */  addiu     $v0, $zero, 2
/* 969818 80240658 03E00008 */  jr        $ra
/* 96981C 8024065C 27BD0048 */   addiu    $sp, $sp, 0x48
