.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802184F8_584E38
/* 584E38 802184F8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 584E3C 802184FC AFB10014 */  sw        $s1, 0x14($sp)
/* 584E40 80218500 0080882D */  daddu     $s1, $a0, $zero
/* 584E44 80218504 AFBF0018 */  sw        $ra, 0x18($sp)
/* 584E48 80218508 AFB00010 */  sw        $s0, 0x10($sp)
/* 584E4C 8021850C 8E30000C */  lw        $s0, 0xc($s1)
/* 584E50 80218510 8E050000 */  lw        $a1, ($s0)
/* 584E54 80218514 0C0B1EAF */  jal       get_variable
/* 584E58 80218518 26100004 */   addiu    $s0, $s0, 4
/* 584E5C 8021851C 0040202D */  daddu     $a0, $v0, $zero
/* 584E60 80218520 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 584E64 80218524 14820002 */  bne       $a0, $v0, .L80218530
/* 584E68 80218528 00000000 */   nop
/* 584E6C 8021852C 8E240148 */  lw        $a0, 0x148($s1)
.L80218530:
/* 584E70 80218530 0C09A75B */  jal       get_actor
/* 584E74 80218534 00000000 */   nop
/* 584E78 80218538 0040202D */  daddu     $a0, $v0, $zero
/* 584E7C 8021853C 90830136 */  lbu       $v1, 0x136($a0)
/* 584E80 80218540 24020047 */  addiu     $v0, $zero, 0x47
/* 584E84 80218544 1062000B */  beq       $v1, $v0, .L80218574
/* 584E88 80218548 0062102A */   slt      $v0, $v1, $v0
/* 584E8C 8021854C 54400011 */  bnel      $v0, $zero, .L80218594
/* 584E90 80218550 0220202D */   daddu    $a0, $s1, $zero
/* 584E94 80218554 28620065 */  slti      $v0, $v1, 0x65
/* 584E98 80218558 1040000D */  beqz      $v0, .L80218590
/* 584E9C 8021855C 2862004D */   slti     $v0, $v1, 0x4d
/* 584EA0 80218560 1440000C */  bnez      $v0, .L80218594
/* 584EA4 80218564 0220202D */   daddu    $a0, $s1, $zero
/* 584EA8 80218568 8E050000 */  lw        $a1, ($s0)
/* 584EAC 8021856C 08086167 */  j         .L8021859C
/* 584EB0 80218570 2406FFFF */   addiu    $a2, $zero, -1
.L80218574:
/* 584EB4 80218574 8C8300A8 */  lw        $v1, 0xa8($a0)
/* 584EB8 80218578 24020001 */  addiu     $v0, $zero, 1
/* 584EBC 8021857C 14620005 */  bne       $v1, $v0, .L80218594
/* 584EC0 80218580 0220202D */   daddu    $a0, $s1, $zero
/* 584EC4 80218584 8E050000 */  lw        $a1, ($s0)
/* 584EC8 80218588 08086167 */  j         .L8021859C
/* 584ECC 8021858C 2406FFFF */   addiu    $a2, $zero, -1
.L80218590:
/* 584ED0 80218590 0220202D */  daddu     $a0, $s1, $zero
.L80218594:
/* 584ED4 80218594 8E050000 */  lw        $a1, ($s0)
/* 584ED8 80218598 0000302D */  daddu     $a2, $zero, $zero
.L8021859C:
/* 584EDC 8021859C 0C0B2026 */  jal       set_variable
/* 584EE0 802185A0 00000000 */   nop
/* 584EE4 802185A4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 584EE8 802185A8 8FB10014 */  lw        $s1, 0x14($sp)
/* 584EEC 802185AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 584EF0 802185B0 24020002 */  addiu     $v0, $zero, 2
/* 584EF4 802185B4 03E00008 */  jr        $ra
/* 584EF8 802185B8 27BD0020 */   addiu    $sp, $sp, 0x20
