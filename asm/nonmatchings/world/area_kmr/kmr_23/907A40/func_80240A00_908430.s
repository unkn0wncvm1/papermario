.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240A00_908430
/* 908430 80240A00 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 908434 80240A04 AFB20020 */  sw        $s2, 0x20($sp)
/* 908438 80240A08 0080902D */  daddu     $s2, $a0, $zero
/* 90843C 80240A0C AFB00018 */  sw        $s0, 0x18($sp)
/* 908440 80240A10 00A0802D */  daddu     $s0, $a1, $zero
/* 908444 80240A14 3C05FD05 */  lui       $a1, 0xfd05
/* 908448 80240A18 AFBF0028 */  sw        $ra, 0x28($sp)
/* 90844C 80240A1C AFB30024 */  sw        $s3, 0x24($sp)
/* 908450 80240A20 AFB1001C */  sw        $s1, 0x1c($sp)
/* 908454 80240A24 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 908458 80240A28 8E51000C */  lw        $s1, 0xc($s2)
/* 90845C 80240A2C 0C0B1EAF */  jal       get_variable
/* 908460 80240A30 34A50F80 */   ori      $a1, $a1, 0xf80
/* 908464 80240A34 12000015 */  beqz      $s0, .L80240A8C
/* 908468 80240A38 0040982D */   daddu    $s3, $v0, $zero
/* 90846C 80240A3C AE400070 */  sw        $zero, 0x70($s2)
/* 908470 80240A40 8E250000 */  lw        $a1, ($s1)
/* 908474 80240A44 26310004 */  addiu     $s1, $s1, 4
/* 908478 80240A48 0C0B1EAF */  jal       get_variable
/* 90847C 80240A4C 0240202D */   daddu    $a0, $s2, $zero
/* 908480 80240A50 AE420084 */  sw        $v0, 0x84($s2)
/* 908484 80240A54 8E250000 */  lw        $a1, ($s1)
/* 908488 80240A58 26310004 */  addiu     $s1, $s1, 4
/* 90848C 80240A5C 0C0B1EAF */  jal       get_variable
/* 908490 80240A60 0240202D */   daddu    $a0, $s2, $zero
/* 908494 80240A64 AE420074 */  sw        $v0, 0x74($s2)
/* 908498 80240A68 8E250000 */  lw        $a1, ($s1)
/* 90849C 80240A6C 26310004 */  addiu     $s1, $s1, 4
/* 9084A0 80240A70 0C0B1EAF */  jal       get_variable
/* 9084A4 80240A74 0240202D */   daddu    $a0, $s2, $zero
/* 9084A8 80240A78 AE420078 */  sw        $v0, 0x78($s2)
/* 9084AC 80240A7C 8E250000 */  lw        $a1, ($s1)
/* 9084B0 80240A80 0C0B1EAF */  jal       get_variable
/* 9084B4 80240A84 0240202D */   daddu    $a0, $s2, $zero
/* 9084B8 80240A88 AE42007C */  sw        $v0, 0x7c($s2)
.L80240A8C:
/* 9084BC 80240A8C 8E43007C */  lw        $v1, 0x7c($s2)
/* 9084C0 80240A90 4480A000 */  mtc1      $zero, $f20
/* 9084C4 80240A94 8E420078 */  lw        $v0, 0x78($s2)
/* 9084C8 80240A98 AFA30010 */  sw        $v1, 0x10($sp)
/* 9084CC 80240A9C 00021FC2 */  srl       $v1, $v0, 0x1f
/* 9084D0 80240AA0 00431021 */  addu      $v0, $v0, $v1
/* 9084D4 80240AA4 00021043 */  sra       $v0, $v0, 1
/* 9084D8 80240AA8 24420008 */  addiu     $v0, $v0, 8
/* 9084DC 80240AAC 44822000 */  mtc1      $v0, $f4
/* 9084E0 80240AB0 00000000 */  nop
/* 9084E4 80240AB4 46802120 */  cvt.s.w   $f4, $f4
/* 9084E8 80240AB8 4405A000 */  mfc1      $a1, $f20
/* 9084EC 80240ABC 8E470070 */  lw        $a3, 0x70($s2)
/* 9084F0 80240AC0 44062000 */  mfc1      $a2, $f4
/* 9084F4 80240AC4 0C00A8ED */  jal       update_lerp
/* 9084F8 80240AC8 0000202D */   daddu    $a0, $zero, $zero
/* 9084FC 80240ACC 8E420078 */  lw        $v0, 0x78($s2)
/* 908500 80240AD0 4405A000 */  mfc1      $a1, $f20
/* 908504 80240AD4 00021FC2 */  srl       $v1, $v0, 0x1f
/* 908508 80240AD8 00431021 */  addu      $v0, $v0, $v1
/* 90850C 80240ADC 00021043 */  sra       $v0, $v0, 1
/* 908510 80240AE0 44822000 */  mtc1      $v0, $f4
/* 908514 80240AE4 00000000 */  nop
/* 908518 80240AE8 46802120 */  cvt.s.w   $f4, $f4
/* 90851C 80240AEC 8E43007C */  lw        $v1, 0x7c($s2)
/* 908520 80240AF0 44062000 */  mfc1      $a2, $f4
/* 908524 80240AF4 AFA30010 */  sw        $v1, 0x10($sp)
/* 908528 80240AF8 8E470070 */  lw        $a3, 0x70($s2)
/* 90852C 80240AFC 4600010D */  trunc.w.s $f4, $f0
/* 908530 80240B00 44102000 */  mfc1      $s0, $f4
/* 908534 80240B04 0C00A8ED */  jal       update_lerp
/* 908538 80240B08 0000202D */   daddu    $a0, $zero, $zero
/* 90853C 80240B0C 8E420084 */  lw        $v0, 0x84($s2)
/* 908540 80240B10 8E63002C */  lw        $v1, 0x2c($s3)
/* 908544 80240B14 00501023 */  subu      $v0, $v0, $s0
/* 908548 80240B18 8C63000C */  lw        $v1, 0xc($v1)
/* 90854C 80240B1C 44821000 */  mtc1      $v0, $f2
/* 908550 80240B20 00000000 */  nop
/* 908554 80240B24 468010A0 */  cvt.s.w   $f2, $f2
/* 908558 80240B28 E4620004 */  swc1      $f2, 4($v1)
/* 90855C 80240B2C 8E62002C */  lw        $v0, 0x2c($s3)
/* 908560 80240B30 4600010D */  trunc.w.s $f4, $f0
/* 908564 80240B34 44042000 */  mfc1      $a0, $f4
/* 908568 80240B38 8C42000C */  lw        $v0, 0xc($v0)
/* 90856C 80240B3C C6420074 */  lwc1      $f2, 0x74($s2)
/* 908570 80240B40 468010A0 */  cvt.s.w   $f2, $f2
/* 908574 80240B44 E4420008 */  swc1      $f2, 8($v0)
/* 908578 80240B48 8E420084 */  lw        $v0, 0x84($s2)
/* 90857C 80240B4C 8E63002C */  lw        $v1, 0x2c($s3)
/* 908580 80240B50 00441021 */  addu      $v0, $v0, $a0
/* 908584 80240B54 8C63000C */  lw        $v1, 0xc($v1)
/* 908588 80240B58 44820000 */  mtc1      $v0, $f0
/* 90858C 80240B5C 00000000 */  nop
/* 908590 80240B60 46800020 */  cvt.s.w   $f0, $f0
/* 908594 80240B64 E4600010 */  swc1      $f0, 0x10($v1)
/* 908598 80240B68 8E62002C */  lw        $v0, 0x2c($s3)
/* 90859C 80240B6C 8C42000C */  lw        $v0, 0xc($v0)
/* 9085A0 80240B70 C6400074 */  lwc1      $f0, 0x74($s2)
/* 9085A4 80240B74 46800020 */  cvt.s.w   $f0, $f0
/* 9085A8 80240B78 E4400014 */  swc1      $f0, 0x14($v0)
/* 9085AC 80240B7C 8E430070 */  lw        $v1, 0x70($s2)
/* 9085B0 80240B80 8E42007C */  lw        $v0, 0x7c($s2)
/* 9085B4 80240B84 24630001 */  addiu     $v1, $v1, 1
/* 9085B8 80240B88 0062102A */  slt       $v0, $v1, $v0
/* 9085BC 80240B8C AE430070 */  sw        $v1, 0x70($s2)
/* 9085C0 80240B90 8FBF0028 */  lw        $ra, 0x28($sp)
/* 9085C4 80240B94 8FB30024 */  lw        $s3, 0x24($sp)
/* 9085C8 80240B98 8FB20020 */  lw        $s2, 0x20($sp)
/* 9085CC 80240B9C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 9085D0 80240BA0 8FB00018 */  lw        $s0, 0x18($sp)
/* 9085D4 80240BA4 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 9085D8 80240BA8 38420001 */  xori      $v0, $v0, 1
/* 9085DC 80240BAC 03E00008 */  jr        $ra
/* 9085E0 80240BB0 27BD0038 */   addiu    $sp, $sp, 0x38
