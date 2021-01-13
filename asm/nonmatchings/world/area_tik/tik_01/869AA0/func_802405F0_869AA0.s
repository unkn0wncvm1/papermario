.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802405F0_869AA0
/* 869AA0 802405F0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 869AA4 802405F4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 869AA8 802405F8 0080982D */  daddu     $s3, $a0, $zero
/* 869AAC 802405FC AFBF0020 */  sw        $ra, 0x20($sp)
/* 869AB0 80240600 AFB20018 */  sw        $s2, 0x18($sp)
/* 869AB4 80240604 AFB10014 */  sw        $s1, 0x14($sp)
/* 869AB8 80240608 AFB00010 */  sw        $s0, 0x10($sp)
/* 869ABC 8024060C F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 869AC0 80240610 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 869AC4 80240614 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 869AC8 80240618 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 869ACC 8024061C 8E62000C */  lw        $v0, 0xc($s3)
/* 869AD0 80240620 0C0B1EAF */  jal       get_variable
/* 869AD4 80240624 8C450000 */   lw       $a1, ($v0)
/* 869AD8 80240628 2404FFFC */  addiu     $a0, $zero, -4
/* 869ADC 8024062C 0C00EABB */  jal       get_npc_unsafe
/* 869AE0 80240630 0040802D */   daddu    $s0, $v0, $zero
/* 869AE4 80240634 0200202D */  daddu     $a0, $s0, $zero
/* 869AE8 80240638 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 869AEC 8024063C 0040802D */   daddu    $s0, $v0, $zero
/* 869AF0 80240640 0C046B4C */  jal       get_model_from_list_index
/* 869AF4 80240644 0040202D */   daddu    $a0, $v0, $zero
/* 869AF8 80240648 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 869AFC 8024064C 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 869B00 80240650 0040902D */  daddu     $s2, $v0, $zero
/* 869B04 80240654 AE60008C */  sw        $zero, 0x8c($s3)
/* 869B08 80240658 C4620028 */  lwc1      $f2, 0x28($v1)
/* 869B0C 8024065C C6400098 */  lwc1      $f0, 0x98($s2)
/* 869B10 80240660 46001081 */  sub.s     $f2, $f2, $f0
/* 869B14 80240664 46021182 */  mul.s     $f6, $f2, $f2
/* 869B18 80240668 00000000 */  nop
/* 869B1C 8024066C C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 869B20 80240670 C4620030 */  lwc1      $f2, 0x30($v1)
/* 869B24 80240674 46001081 */  sub.s     $f2, $f2, $f0
/* 869B28 80240678 46021102 */  mul.s     $f4, $f2, $f2
/* 869B2C 8024067C 00000000 */  nop
/* 869B30 80240680 846200B0 */  lh        $v0, 0xb0($v1)
/* 869B34 80240684 C462002C */  lwc1      $f2, 0x2c($v1)
/* 869B38 80240688 44820000 */  mtc1      $v0, $f0
/* 869B3C 8024068C 00000000 */  nop
/* 869B40 80240690 46800020 */  cvt.s.w   $f0, $f0
/* 869B44 80240694 46001080 */  add.s     $f2, $f2, $f0
/* 869B48 80240698 3C013FC0 */  lui       $at, 0x3fc0
/* 869B4C 8024069C 44810000 */  mtc1      $at, $f0
/* 869B50 802406A0 00000000 */  nop
/* 869B54 802406A4 46001081 */  sub.s     $f2, $f2, $f0
/* 869B58 802406A8 46043300 */  add.s     $f12, $f6, $f4
/* 869B5C 802406AC C640009C */  lwc1      $f0, 0x9c($s2)
/* 869B60 802406B0 46001501 */  sub.s     $f20, $f2, $f0
/* 869B64 802406B4 46006084 */  sqrt.s    $f2, $f12
/* 869B68 802406B8 46021032 */  c.eq.s    $f2, $f2
/* 869B6C 802406BC 00000000 */  nop
/* 869B70 802406C0 45010004 */  bc1t      .L802406D4
/* 869B74 802406C4 0060882D */   daddu    $s1, $v1, $zero
/* 869B78 802406C8 0C0187BC */  jal       sqrtf
/* 869B7C 802406CC 00000000 */   nop
/* 869B80 802406D0 46000086 */  mov.s     $f2, $f0
.L802406D4:
/* 869B84 802406D4 44800000 */  mtc1      $zero, $f0
/* 869B88 802406D8 00000000 */  nop
/* 869B8C 802406DC 4614003C */  c.lt.s    $f0, $f20
/* 869B90 802406E0 00000000 */  nop
/* 869B94 802406E4 45000016 */  bc1f      .L80240740
/* 869B98 802406E8 46001106 */   mov.s    $f4, $f2
/* 869B9C 802406EC 862200B0 */  lh        $v0, 0xb0($s1)
/* 869BA0 802406F0 44820000 */  mtc1      $v0, $f0
/* 869BA4 802406F4 00000000 */  nop
/* 869BA8 802406F8 46800020 */  cvt.s.w   $f0, $f0
/* 869BAC 802406FC 4600A03C */  c.lt.s    $f20, $f0
/* 869BB0 80240700 00000000 */  nop
/* 869BB4 80240704 4500000E */  bc1f      .L80240740
/* 869BB8 80240708 00000000 */   nop
/* 869BBC 8024070C 862200B2 */  lh        $v0, 0xb2($s1)
/* 869BC0 80240710 3C013F00 */  lui       $at, 0x3f00
/* 869BC4 80240714 44811000 */  mtc1      $at, $f2
/* 869BC8 80240718 44820000 */  mtc1      $v0, $f0
/* 869BCC 8024071C 00000000 */  nop
/* 869BD0 80240720 46800020 */  cvt.s.w   $f0, $f0
/* 869BD4 80240724 46020002 */  mul.s     $f0, $f0, $f2
/* 869BD8 80240728 00000000 */  nop
/* 869BDC 8024072C 4600203C */  c.lt.s    $f4, $f0
/* 869BE0 80240730 00000000 */  nop
/* 869BE4 80240734 45000002 */  bc1f      .L80240740
/* 869BE8 80240738 24020001 */   addiu    $v0, $zero, 1
/* 869BEC 8024073C AE62008C */  sw        $v0, 0x8c($s3)
.L80240740:
/* 869BF0 80240740 C6020038 */  lwc1      $f2, 0x38($s0)
/* 869BF4 80240744 C6400098 */  lwc1      $f0, 0x98($s2)
/* 869BF8 80240748 46001081 */  sub.s     $f2, $f2, $f0
/* 869BFC 8024074C 46021182 */  mul.s     $f6, $f2, $f2
/* 869C00 80240750 00000000 */  nop
/* 869C04 80240754 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 869C08 80240758 C6020040 */  lwc1      $f2, 0x40($s0)
/* 869C0C 8024075C 46001081 */  sub.s     $f2, $f2, $f0
/* 869C10 80240760 46021102 */  mul.s     $f4, $f2, $f2
/* 869C14 80240764 00000000 */  nop
/* 869C18 80240768 860200A8 */  lh        $v0, 0xa8($s0)
/* 869C1C 8024076C C602003C */  lwc1      $f2, 0x3c($s0)
/* 869C20 80240770 44820000 */  mtc1      $v0, $f0
/* 869C24 80240774 00000000 */  nop
/* 869C28 80240778 46800020 */  cvt.s.w   $f0, $f0
/* 869C2C 8024077C 46001080 */  add.s     $f2, $f2, $f0
/* 869C30 80240780 3C013FC0 */  lui       $at, 0x3fc0
/* 869C34 80240784 44810000 */  mtc1      $at, $f0
/* 869C38 80240788 00000000 */  nop
/* 869C3C 8024078C 46001081 */  sub.s     $f2, $f2, $f0
/* 869C40 80240790 46043300 */  add.s     $f12, $f6, $f4
/* 869C44 80240794 C640009C */  lwc1      $f0, 0x9c($s2)
/* 869C48 80240798 46001501 */  sub.s     $f20, $f2, $f0
/* 869C4C 8024079C 46006084 */  sqrt.s    $f2, $f12
/* 869C50 802407A0 46021032 */  c.eq.s    $f2, $f2
/* 869C54 802407A4 00000000 */  nop
/* 869C58 802407A8 45010004 */  bc1t      .L802407BC
/* 869C5C 802407AC 00000000 */   nop
/* 869C60 802407B0 0C0187BC */  jal       sqrtf
/* 869C64 802407B4 00000000 */   nop
/* 869C68 802407B8 46000086 */  mov.s     $f2, $f0
.L802407BC:
/* 869C6C 802407BC 44800000 */  mtc1      $zero, $f0
/* 869C70 802407C0 00000000 */  nop
/* 869C74 802407C4 4614003C */  c.lt.s    $f0, $f20
/* 869C78 802407C8 00000000 */  nop
/* 869C7C 802407CC 45000016 */  bc1f      .L80240828
/* 869C80 802407D0 46001106 */   mov.s    $f4, $f2
/* 869C84 802407D4 860200A8 */  lh        $v0, 0xa8($s0)
/* 869C88 802407D8 44820000 */  mtc1      $v0, $f0
/* 869C8C 802407DC 00000000 */  nop
/* 869C90 802407E0 46800020 */  cvt.s.w   $f0, $f0
/* 869C94 802407E4 4600A03C */  c.lt.s    $f20, $f0
/* 869C98 802407E8 00000000 */  nop
/* 869C9C 802407EC 4500000F */  bc1f      .L8024082C
/* 869CA0 802407F0 0000882D */   daddu    $s1, $zero, $zero
/* 869CA4 802407F4 860200A6 */  lh        $v0, 0xa6($s0)
/* 869CA8 802407F8 3C013F00 */  lui       $at, 0x3f00
/* 869CAC 802407FC 44811000 */  mtc1      $at, $f2
/* 869CB0 80240800 44820000 */  mtc1      $v0, $f0
/* 869CB4 80240804 00000000 */  nop
/* 869CB8 80240808 46800020 */  cvt.s.w   $f0, $f0
/* 869CBC 8024080C 46020002 */  mul.s     $f0, $f0, $f2
/* 869CC0 80240810 00000000 */  nop
/* 869CC4 80240814 4600203C */  c.lt.s    $f4, $f0
/* 869CC8 80240818 00000000 */  nop
/* 869CCC 8024081C 45000003 */  bc1f      .L8024082C
/* 869CD0 80240820 24020001 */   addiu    $v0, $zero, 1
/* 869CD4 80240824 AE62008C */  sw        $v0, 0x8c($s3)
.L80240828:
/* 869CD8 80240828 0000882D */  daddu     $s1, $zero, $zero
.L8024082C:
/* 869CDC 8024082C 3C013FC0 */  lui       $at, 0x3fc0
/* 869CE0 80240830 4481D000 */  mtc1      $at, $f26
/* 869CE4 80240834 4480C000 */  mtc1      $zero, $f24
/* 869CE8 80240838 3C013F00 */  lui       $at, 0x3f00
/* 869CEC 8024083C 4481B000 */  mtc1      $at, $f22
.L80240840:
/* 869CF0 80240840 0C00EAD2 */  jal       get_npc_safe
/* 869CF4 80240844 0220202D */   daddu    $a0, $s1, $zero
/* 869CF8 80240848 0040802D */  daddu     $s0, $v0, $zero
/* 869CFC 8024084C 52000035 */  beql      $s0, $zero, .L80240924
/* 869D00 80240850 26310001 */   addiu    $s1, $s1, 1
/* 869D04 80240854 C6020038 */  lwc1      $f2, 0x38($s0)
/* 869D08 80240858 C6400098 */  lwc1      $f0, 0x98($s2)
/* 869D0C 8024085C 46001081 */  sub.s     $f2, $f2, $f0
/* 869D10 80240860 46021182 */  mul.s     $f6, $f2, $f2
/* 869D14 80240864 00000000 */  nop
/* 869D18 80240868 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 869D1C 8024086C C6020040 */  lwc1      $f2, 0x40($s0)
/* 869D20 80240870 46001081 */  sub.s     $f2, $f2, $f0
/* 869D24 80240874 46021102 */  mul.s     $f4, $f2, $f2
/* 869D28 80240878 00000000 */  nop
/* 869D2C 8024087C 860200A8 */  lh        $v0, 0xa8($s0)
/* 869D30 80240880 C602003C */  lwc1      $f2, 0x3c($s0)
/* 869D34 80240884 44820000 */  mtc1      $v0, $f0
/* 869D38 80240888 00000000 */  nop
/* 869D3C 8024088C 46800020 */  cvt.s.w   $f0, $f0
/* 869D40 80240890 46001080 */  add.s     $f2, $f2, $f0
/* 869D44 80240894 461A1081 */  sub.s     $f2, $f2, $f26
/* 869D48 80240898 46043300 */  add.s     $f12, $f6, $f4
/* 869D4C 8024089C C640009C */  lwc1      $f0, 0x9c($s2)
/* 869D50 802408A0 46001501 */  sub.s     $f20, $f2, $f0
/* 869D54 802408A4 46006004 */  sqrt.s    $f0, $f12
/* 869D58 802408A8 46000032 */  c.eq.s    $f0, $f0
/* 869D5C 802408AC 00000000 */  nop
/* 869D60 802408B0 45010003 */  bc1t      .L802408C0
/* 869D64 802408B4 00000000 */   nop
/* 869D68 802408B8 0C0187BC */  jal       sqrtf
/* 869D6C 802408BC 00000000 */   nop
.L802408C0:
/* 869D70 802408C0 4614C03C */  c.lt.s    $f24, $f20
/* 869D74 802408C4 00000000 */  nop
/* 869D78 802408C8 45000015 */  bc1f      .L80240920
/* 869D7C 802408CC 46000106 */   mov.s    $f4, $f0
/* 869D80 802408D0 860200A8 */  lh        $v0, 0xa8($s0)
/* 869D84 802408D4 44820000 */  mtc1      $v0, $f0
/* 869D88 802408D8 00000000 */  nop
/* 869D8C 802408DC 46800020 */  cvt.s.w   $f0, $f0
/* 869D90 802408E0 4600A03C */  c.lt.s    $f20, $f0
/* 869D94 802408E4 00000000 */  nop
/* 869D98 802408E8 4500000E */  bc1f      .L80240924
/* 869D9C 802408EC 26310001 */   addiu    $s1, $s1, 1
/* 869DA0 802408F0 860200A6 */  lh        $v0, 0xa6($s0)
/* 869DA4 802408F4 44820000 */  mtc1      $v0, $f0
/* 869DA8 802408F8 00000000 */  nop
/* 869DAC 802408FC 46800020 */  cvt.s.w   $f0, $f0
/* 869DB0 80240900 46160002 */  mul.s     $f0, $f0, $f22
/* 869DB4 80240904 00000000 */  nop
/* 869DB8 80240908 4600203C */  c.lt.s    $f4, $f0
/* 869DBC 8024090C 00000000 */  nop
/* 869DC0 80240910 45000004 */  bc1f      .L80240924
/* 869DC4 80240914 24020001 */   addiu    $v0, $zero, 1
/* 869DC8 80240918 0809024C */  j         .L80240930
/* 869DCC 8024091C AE62008C */   sw       $v0, 0x8c($s3)
.L80240920:
/* 869DD0 80240920 26310001 */  addiu     $s1, $s1, 1
.L80240924:
/* 869DD4 80240924 2A220040 */  slti      $v0, $s1, 0x40
/* 869DD8 80240928 1440FFC5 */  bnez      $v0, .L80240840
/* 869DDC 8024092C 00000000 */   nop
.L80240930:
/* 869DE0 80240930 8FBF0020 */  lw        $ra, 0x20($sp)
/* 869DE4 80240934 8FB3001C */  lw        $s3, 0x1c($sp)
/* 869DE8 80240938 8FB20018 */  lw        $s2, 0x18($sp)
/* 869DEC 8024093C 8FB10014 */  lw        $s1, 0x14($sp)
/* 869DF0 80240940 8FB00010 */  lw        $s0, 0x10($sp)
/* 869DF4 80240944 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 869DF8 80240948 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 869DFC 8024094C D7B60030 */  ldc1      $f22, 0x30($sp)
/* 869E00 80240950 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 869E04 80240954 24020002 */  addiu     $v0, $zero, 2
/* 869E08 80240958 03E00008 */  jr        $ra
/* 869E0C 8024095C 27BD0048 */   addiu    $sp, $sp, 0x48
