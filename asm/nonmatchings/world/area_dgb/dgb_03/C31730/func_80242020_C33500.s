.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242020_C33500
/* C33500 80242020 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C33504 80242024 AFB10014 */  sw        $s1, 0x14($sp)
/* C33508 80242028 0080882D */  daddu     $s1, $a0, $zero
/* C3350C 8024202C AFBF001C */  sw        $ra, 0x1c($sp)
/* C33510 80242030 AFB20018 */  sw        $s2, 0x18($sp)
/* C33514 80242034 AFB00010 */  sw        $s0, 0x10($sp)
/* C33518 80242038 8E320148 */  lw        $s2, 0x148($s1)
/* C3351C 8024203C 0C00EABB */  jal       get_npc_unsafe
/* C33520 80242040 86440008 */   lh       $a0, 8($s2)
/* C33524 80242044 240400B4 */  addiu     $a0, $zero, 0xb4
/* C33528 80242048 0C00A67F */  jal       rand_int
/* C3352C 8024204C 0040802D */   daddu    $s0, $v0, $zero
/* C33530 80242050 C60C000C */  lwc1      $f12, 0xc($s0)
/* C33534 80242054 44820000 */  mtc1      $v0, $f0
/* C33538 80242058 00000000 */  nop
/* C3353C 8024205C 46800020 */  cvt.s.w   $f0, $f0
/* C33540 80242060 46006300 */  add.s     $f12, $f12, $f0
/* C33544 80242064 3C0142B4 */  lui       $at, 0x42b4
/* C33548 80242068 44810000 */  mtc1      $at, $f0
/* C3354C 8024206C 0C00A6C9 */  jal       clamp_angle
/* C33550 80242070 46006301 */   sub.s    $f12, $f12, $f0
/* C33554 80242074 E600000C */  swc1      $f0, 0xc($s0)
/* C33558 80242078 8E4200CC */  lw        $v0, 0xcc($s2)
/* C3355C 8024207C 8C420000 */  lw        $v0, ($v0)
/* C33560 80242080 240403E8 */  addiu     $a0, $zero, 0x3e8
/* C33564 80242084 0C00A67F */  jal       rand_int
/* C33568 80242088 AE020028 */   sw       $v0, 0x28($s0)
/* C3356C 8024208C 00021FC2 */  srl       $v1, $v0, 0x1f
/* C33570 80242090 00431821 */  addu      $v1, $v0, $v1
/* C33574 80242094 00031843 */  sra       $v1, $v1, 1
/* C33578 80242098 00031840 */  sll       $v1, $v1, 1
/* C3357C 8024209C 00431023 */  subu      $v0, $v0, $v1
/* C33580 802420A0 24420002 */  addiu     $v0, $v0, 2
/* C33584 802420A4 AE220074 */  sw        $v0, 0x74($s1)
/* C33588 802420A8 24020004 */  addiu     $v0, $zero, 4
/* C3358C 802420AC AE220070 */  sw        $v0, 0x70($s1)
/* C33590 802420B0 8FBF001C */  lw        $ra, 0x1c($sp)
/* C33594 802420B4 8FB20018 */  lw        $s2, 0x18($sp)
/* C33598 802420B8 8FB10014 */  lw        $s1, 0x14($sp)
/* C3359C 802420BC 8FB00010 */  lw        $s0, 0x10($sp)
/* C335A0 802420C0 03E00008 */  jr        $ra
/* C335A4 802420C4 27BD0020 */   addiu    $sp, $sp, 0x20
