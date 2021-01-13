.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802194C0_5ED950
/* 5ED950 802194C0 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 5ED954 802194C4 AFB40020 */  sw        $s4, 0x20($sp)
/* 5ED958 802194C8 0080A02D */  daddu     $s4, $a0, $zero
/* 5ED95C 802194CC AFBF0028 */  sw        $ra, 0x28($sp)
/* 5ED960 802194D0 AFB50024 */  sw        $s5, 0x24($sp)
/* 5ED964 802194D4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 5ED968 802194D8 AFB20018 */  sw        $s2, 0x18($sp)
/* 5ED96C 802194DC AFB10014 */  sw        $s1, 0x14($sp)
/* 5ED970 802194E0 AFB00010 */  sw        $s0, 0x10($sp)
/* 5ED974 802194E4 F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 5ED978 802194E8 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 5ED97C 802194EC F7B60038 */  sdc1      $f22, 0x38($sp)
/* 5ED980 802194F0 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 5ED984 802194F4 8E82000C */  lw        $v0, 0xc($s4)
/* 5ED988 802194F8 0C0B1EAF */  jal       get_variable
/* 5ED98C 802194FC 8C450000 */   lw       $a1, ($v0)
/* 5ED990 80219500 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 5ED994 80219504 0040202D */   daddu    $a0, $v0, $zero
/* 5ED998 80219508 0C046B4C */  jal       get_model_from_list_index
/* 5ED99C 8021950C 0040202D */   daddu    $a0, $v0, $zero
/* 5ED9A0 80219510 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 5ED9A4 80219514 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 5ED9A8 80219518 AE80008C */  sw        $zero, 0x8c($s4)
/* 5ED9AC 8021951C 8E5000D8 */  lw        $s0, 0xd8($s2)
/* 5ED9B0 80219520 1200003C */  beqz      $s0, .L80219614
/* 5ED9B4 80219524 0040882D */   daddu    $s1, $v0, $zero
/* 5ED9B8 80219528 C6020144 */  lwc1      $f2, 0x144($s0)
/* 5ED9BC 8021952C C6200098 */  lwc1      $f0, 0x98($s1)
/* 5ED9C0 80219530 46001081 */  sub.s     $f2, $f2, $f0
/* 5ED9C4 80219534 46021182 */  mul.s     $f6, $f2, $f2
/* 5ED9C8 80219538 00000000 */  nop
/* 5ED9CC 8021953C C62000A0 */  lwc1      $f0, 0xa0($s1)
/* 5ED9D0 80219540 C602014C */  lwc1      $f2, 0x14c($s0)
/* 5ED9D4 80219544 46001081 */  sub.s     $f2, $f2, $f0
/* 5ED9D8 80219548 46021102 */  mul.s     $f4, $f2, $f2
/* 5ED9DC 8021954C 00000000 */  nop
/* 5ED9E0 80219550 92020191 */  lbu       $v0, 0x191($s0)
/* 5ED9E4 80219554 C6020148 */  lwc1      $f2, 0x148($s0)
/* 5ED9E8 80219558 44820000 */  mtc1      $v0, $f0
/* 5ED9EC 8021955C 00000000 */  nop
/* 5ED9F0 80219560 46800020 */  cvt.s.w   $f0, $f0
/* 5ED9F4 80219564 46001080 */  add.s     $f2, $f2, $f0
/* 5ED9F8 80219568 3C013FC0 */  lui       $at, 0x3fc0
/* 5ED9FC 8021956C 44810000 */  mtc1      $at, $f0
/* 5EDA00 80219570 00000000 */  nop
/* 5EDA04 80219574 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDA08 80219578 46043300 */  add.s     $f12, $f6, $f4
/* 5EDA0C 8021957C C620009C */  lwc1      $f0, 0x9c($s1)
/* 5EDA10 80219580 46001501 */  sub.s     $f20, $f2, $f0
/* 5EDA14 80219584 46006084 */  sqrt.s    $f2, $f12
/* 5EDA18 80219588 46021032 */  c.eq.s    $f2, $f2
/* 5EDA1C 8021958C 00000000 */  nop
/* 5EDA20 80219590 45010004 */  bc1t      .L802195A4
/* 5EDA24 80219594 00000000 */   nop
/* 5EDA28 80219598 0C0187BC */  jal       sqrtf
/* 5EDA2C 8021959C 00000000 */   nop
/* 5EDA30 802195A0 46000086 */  mov.s     $f2, $f0
.L802195A4:
/* 5EDA34 802195A4 44800000 */  mtc1      $zero, $f0
/* 5EDA38 802195A8 00000000 */  nop
/* 5EDA3C 802195AC 4614003C */  c.lt.s    $f0, $f20
/* 5EDA40 802195B0 00000000 */  nop
/* 5EDA44 802195B4 45000017 */  bc1f      .L80219614
/* 5EDA48 802195B8 46001106 */   mov.s    $f4, $f2
/* 5EDA4C 802195BC 92020191 */  lbu       $v0, 0x191($s0)
/* 5EDA50 802195C0 44820000 */  mtc1      $v0, $f0
/* 5EDA54 802195C4 00000000 */  nop
/* 5EDA58 802195C8 46800020 */  cvt.s.w   $f0, $f0
/* 5EDA5C 802195CC 4600A03C */  c.lt.s    $f20, $f0
/* 5EDA60 802195D0 00000000 */  nop
/* 5EDA64 802195D4 4500000F */  bc1f      .L80219614
/* 5EDA68 802195D8 00000000 */   nop
/* 5EDA6C 802195DC 92020190 */  lbu       $v0, 0x190($s0)
/* 5EDA70 802195E0 3C013F00 */  lui       $at, 0x3f00
/* 5EDA74 802195E4 44811000 */  mtc1      $at, $f2
/* 5EDA78 802195E8 44820000 */  mtc1      $v0, $f0
/* 5EDA7C 802195EC 00000000 */  nop
/* 5EDA80 802195F0 46800020 */  cvt.s.w   $f0, $f0
/* 5EDA84 802195F4 46020002 */  mul.s     $f0, $f0, $f2
/* 5EDA88 802195F8 00000000 */  nop
/* 5EDA8C 802195FC 4600203C */  c.lt.s    $f4, $f0
/* 5EDA90 80219600 00000000 */  nop
/* 5EDA94 80219604 45000003 */  bc1f      .L80219614
/* 5EDA98 80219608 24020001 */   addiu    $v0, $zero, 1
/* 5EDA9C 8021960C 08086647 */  j         .L8021991C
/* 5EDAA0 80219610 AE82008C */   sw       $v0, 0x8c($s4)
.L80219614:
/* 5EDAA4 80219614 8E5000DC */  lw        $s0, 0xdc($s2)
/* 5EDAA8 80219618 12000041 */  beqz      $s0, .L80219720
/* 5EDAAC 8021961C 0000982D */   daddu    $s3, $zero, $zero
/* 5EDAB0 80219620 C6020144 */  lwc1      $f2, 0x144($s0)
/* 5EDAB4 80219624 C6200098 */  lwc1      $f0, 0x98($s1)
/* 5EDAB8 80219628 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDABC 8021962C 46021182 */  mul.s     $f6, $f2, $f2
/* 5EDAC0 80219630 00000000 */  nop
/* 5EDAC4 80219634 C62000A0 */  lwc1      $f0, 0xa0($s1)
/* 5EDAC8 80219638 C602014C */  lwc1      $f2, 0x14c($s0)
/* 5EDACC 8021963C 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDAD0 80219640 46021102 */  mul.s     $f4, $f2, $f2
/* 5EDAD4 80219644 00000000 */  nop
/* 5EDAD8 80219648 92020191 */  lbu       $v0, 0x191($s0)
/* 5EDADC 8021964C C6020148 */  lwc1      $f2, 0x148($s0)
/* 5EDAE0 80219650 44820000 */  mtc1      $v0, $f0
/* 5EDAE4 80219654 00000000 */  nop
/* 5EDAE8 80219658 46800020 */  cvt.s.w   $f0, $f0
/* 5EDAEC 8021965C 46001080 */  add.s     $f2, $f2, $f0
/* 5EDAF0 80219660 3C013FC0 */  lui       $at, 0x3fc0
/* 5EDAF4 80219664 44810000 */  mtc1      $at, $f0
/* 5EDAF8 80219668 00000000 */  nop
/* 5EDAFC 8021966C 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDB00 80219670 46043300 */  add.s     $f12, $f6, $f4
/* 5EDB04 80219674 C620009C */  lwc1      $f0, 0x9c($s1)
/* 5EDB08 80219678 46001501 */  sub.s     $f20, $f2, $f0
/* 5EDB0C 8021967C 46006084 */  sqrt.s    $f2, $f12
/* 5EDB10 80219680 46021032 */  c.eq.s    $f2, $f2
/* 5EDB14 80219684 00000000 */  nop
/* 5EDB18 80219688 45010004 */  bc1t      .L8021969C
/* 5EDB1C 8021968C 00000000 */   nop
/* 5EDB20 80219690 0C0187BC */  jal       sqrtf
/* 5EDB24 80219694 00000000 */   nop
/* 5EDB28 80219698 46000086 */  mov.s     $f2, $f0
.L8021969C:
/* 5EDB2C 8021969C 44800000 */  mtc1      $zero, $f0
/* 5EDB30 802196A0 00000000 */  nop
/* 5EDB34 802196A4 4614003C */  c.lt.s    $f0, $f20
/* 5EDB38 802196A8 00000000 */  nop
/* 5EDB3C 802196AC 4500001B */  bc1f      .L8021971C
/* 5EDB40 802196B0 46001106 */   mov.s    $f4, $f2
/* 5EDB44 802196B4 92020191 */  lbu       $v0, 0x191($s0)
/* 5EDB48 802196B8 44820000 */  mtc1      $v0, $f0
/* 5EDB4C 802196BC 00000000 */  nop
/* 5EDB50 802196C0 46800020 */  cvt.s.w   $f0, $f0
/* 5EDB54 802196C4 4600A03C */  c.lt.s    $f20, $f0
/* 5EDB58 802196C8 00000000 */  nop
/* 5EDB5C 802196CC 45000014 */  bc1f      .L80219720
/* 5EDB60 802196D0 0000982D */   daddu    $s3, $zero, $zero
/* 5EDB64 802196D4 92020190 */  lbu       $v0, 0x190($s0)
/* 5EDB68 802196D8 3C013F00 */  lui       $at, 0x3f00
/* 5EDB6C 802196DC 44811000 */  mtc1      $at, $f2
/* 5EDB70 802196E0 44820000 */  mtc1      $v0, $f0
/* 5EDB74 802196E4 00000000 */  nop
/* 5EDB78 802196E8 46800020 */  cvt.s.w   $f0, $f0
/* 5EDB7C 802196EC 46020002 */  mul.s     $f0, $f0, $f2
/* 5EDB80 802196F0 00000000 */  nop
/* 5EDB84 802196F4 4600203C */  c.lt.s    $f4, $f0
/* 5EDB88 802196F8 00000000 */  nop
/* 5EDB8C 802196FC 45000008 */  bc1f      .L80219720
/* 5EDB90 80219700 24020001 */   addiu    $v0, $zero, 1
/* 5EDB94 80219704 08086647 */  j         .L8021991C
/* 5EDB98 80219708 AE82008C */   sw       $v0, 0x8c($s4)
.L8021970C:
/* 5EDB9C 8021970C 08086647 */  j         .L8021991C
/* 5EDBA0 80219710 AE82008C */   sw       $v0, 0x8c($s4)
.L80219714:
/* 5EDBA4 80219714 08086647 */  j         .L8021991C
/* 5EDBA8 80219718 AE82008C */   sw       $v0, 0x8c($s4)
.L8021971C:
/* 5EDBAC 8021971C 0000982D */  daddu     $s3, $zero, $zero
.L80219720:
/* 5EDBB0 80219720 3C150010 */  lui       $s5, 0x10
/* 5EDBB4 80219724 3C013FC0 */  lui       $at, 0x3fc0
/* 5EDBB8 80219728 4481D000 */  mtc1      $at, $f26
/* 5EDBBC 8021972C 4480C000 */  mtc1      $zero, $f24
/* 5EDBC0 80219730 3C013F00 */  lui       $at, 0x3f00
/* 5EDBC4 80219734 4481B000 */  mtc1      $at, $f22
.L80219738:
/* 5EDBC8 80219738 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 5EDBCC 8021973C 52000074 */  beql      $s0, $zero, .L80219910
/* 5EDBD0 80219740 26730001 */   addiu    $s3, $s3, 1
/* 5EDBD4 80219744 8E020000 */  lw        $v0, ($s0)
/* 5EDBD8 80219748 30420001 */  andi      $v0, $v0, 1
/* 5EDBDC 8021974C 54400070 */  bnel      $v0, $zero, .L80219910
/* 5EDBE0 80219750 26730001 */   addiu    $s3, $s3, 1
/* 5EDBE4 80219754 C6020144 */  lwc1      $f2, 0x144($s0)
/* 5EDBE8 80219758 C6200098 */  lwc1      $f0, 0x98($s1)
/* 5EDBEC 8021975C 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDBF0 80219760 46021182 */  mul.s     $f6, $f2, $f2
/* 5EDBF4 80219764 00000000 */  nop
/* 5EDBF8 80219768 C62000A0 */  lwc1      $f0, 0xa0($s1)
/* 5EDBFC 8021976C C602014C */  lwc1      $f2, 0x14c($s0)
/* 5EDC00 80219770 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDC04 80219774 46021102 */  mul.s     $f4, $f2, $f2
/* 5EDC08 80219778 00000000 */  nop
/* 5EDC0C 8021977C 92020191 */  lbu       $v0, 0x191($s0)
/* 5EDC10 80219780 C6020148 */  lwc1      $f2, 0x148($s0)
/* 5EDC14 80219784 44820000 */  mtc1      $v0, $f0
/* 5EDC18 80219788 00000000 */  nop
/* 5EDC1C 8021978C 46800020 */  cvt.s.w   $f0, $f0
/* 5EDC20 80219790 46001080 */  add.s     $f2, $f2, $f0
/* 5EDC24 80219794 461A1081 */  sub.s     $f2, $f2, $f26
/* 5EDC28 80219798 46043300 */  add.s     $f12, $f6, $f4
/* 5EDC2C 8021979C C620009C */  lwc1      $f0, 0x9c($s1)
/* 5EDC30 802197A0 46001501 */  sub.s     $f20, $f2, $f0
/* 5EDC34 802197A4 46006004 */  sqrt.s    $f0, $f12
/* 5EDC38 802197A8 46000032 */  c.eq.s    $f0, $f0
/* 5EDC3C 802197AC 00000000 */  nop
/* 5EDC40 802197B0 45010003 */  bc1t      .L802197C0
/* 5EDC44 802197B4 00000000 */   nop
/* 5EDC48 802197B8 0C0187BC */  jal       sqrtf
/* 5EDC4C 802197BC 00000000 */   nop
.L802197C0:
/* 5EDC50 802197C0 4614C03C */  c.lt.s    $f24, $f20
/* 5EDC54 802197C4 00000000 */  nop
/* 5EDC58 802197C8 45000013 */  bc1f      .L80219818
/* 5EDC5C 802197CC 46000106 */   mov.s    $f4, $f0
/* 5EDC60 802197D0 92020191 */  lbu       $v0, 0x191($s0)
/* 5EDC64 802197D4 44820000 */  mtc1      $v0, $f0
/* 5EDC68 802197D8 00000000 */  nop
/* 5EDC6C 802197DC 46800020 */  cvt.s.w   $f0, $f0
/* 5EDC70 802197E0 4600A03C */  c.lt.s    $f20, $f0
/* 5EDC74 802197E4 00000000 */  nop
/* 5EDC78 802197E8 4500000B */  bc1f      .L80219818
/* 5EDC7C 802197EC 00000000 */   nop
/* 5EDC80 802197F0 92020190 */  lbu       $v0, 0x190($s0)
/* 5EDC84 802197F4 44820000 */  mtc1      $v0, $f0
/* 5EDC88 802197F8 00000000 */  nop
/* 5EDC8C 802197FC 46800020 */  cvt.s.w   $f0, $f0
/* 5EDC90 80219800 46160002 */  mul.s     $f0, $f0, $f22
/* 5EDC94 80219804 00000000 */  nop
/* 5EDC98 80219808 4600203C */  c.lt.s    $f4, $f0
/* 5EDC9C 8021980C 00000000 */  nop
/* 5EDCA0 80219810 4501FFBE */  bc1t      .L8021970C
/* 5EDCA4 80219814 24020001 */   addiu    $v0, $zero, 1
.L80219818:
/* 5EDCA8 80219818 8E1001F4 */  lw        $s0, 0x1f4($s0)
/* 5EDCAC 8021981C 5200003C */  beql      $s0, $zero, .L80219910
/* 5EDCB0 80219820 26730001 */   addiu    $s3, $s3, 1
.L80219824:
/* 5EDCB4 80219824 8E030000 */  lw        $v1, ($s0)
/* 5EDCB8 80219828 30620001 */  andi      $v0, $v1, 1
/* 5EDCBC 8021982C 14400034 */  bnez      $v0, .L80219900
/* 5EDCC0 80219830 00751024 */   and      $v0, $v1, $s5
/* 5EDCC4 80219834 10400032 */  beqz      $v0, .L80219900
/* 5EDCC8 80219838 00000000 */   nop
/* 5EDCCC 8021983C C6020058 */  lwc1      $f2, 0x58($s0)
/* 5EDCD0 80219840 C6200098 */  lwc1      $f0, 0x98($s1)
/* 5EDCD4 80219844 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDCD8 80219848 46021182 */  mul.s     $f6, $f2, $f2
/* 5EDCDC 8021984C 00000000 */  nop
/* 5EDCE0 80219850 C62000A0 */  lwc1      $f0, 0xa0($s1)
/* 5EDCE4 80219854 C6020060 */  lwc1      $f2, 0x60($s0)
/* 5EDCE8 80219858 46001081 */  sub.s     $f2, $f2, $f0
/* 5EDCEC 8021985C 46021102 */  mul.s     $f4, $f2, $f2
/* 5EDCF0 80219860 00000000 */  nop
/* 5EDCF4 80219864 92020073 */  lbu       $v0, 0x73($s0)
/* 5EDCF8 80219868 C600005C */  lwc1      $f0, 0x5c($s0)
/* 5EDCFC 8021986C 44821000 */  mtc1      $v0, $f2
/* 5EDD00 80219870 00000000 */  nop
/* 5EDD04 80219874 468010A0 */  cvt.s.w   $f2, $f2
/* 5EDD08 80219878 46020000 */  add.s     $f0, $f0, $f2
/* 5EDD0C 8021987C 461A0001 */  sub.s     $f0, $f0, $f26
/* 5EDD10 80219880 46043300 */  add.s     $f12, $f6, $f4
/* 5EDD14 80219884 C622009C */  lwc1      $f2, 0x9c($s1)
/* 5EDD18 80219888 46020501 */  sub.s     $f20, $f0, $f2
/* 5EDD1C 8021988C 46006004 */  sqrt.s    $f0, $f12
/* 5EDD20 80219890 46000032 */  c.eq.s    $f0, $f0
/* 5EDD24 80219894 00000000 */  nop
/* 5EDD28 80219898 45010003 */  bc1t      .L802198A8
/* 5EDD2C 8021989C 00000000 */   nop
/* 5EDD30 802198A0 0C0187BC */  jal       sqrtf
/* 5EDD34 802198A4 00000000 */   nop
.L802198A8:
/* 5EDD38 802198A8 4614C03C */  c.lt.s    $f24, $f20
/* 5EDD3C 802198AC 00000000 */  nop
/* 5EDD40 802198B0 45000013 */  bc1f      .L80219900
/* 5EDD44 802198B4 46000106 */   mov.s    $f4, $f0
/* 5EDD48 802198B8 92020073 */  lbu       $v0, 0x73($s0)
/* 5EDD4C 802198BC 44820000 */  mtc1      $v0, $f0
/* 5EDD50 802198C0 00000000 */  nop
/* 5EDD54 802198C4 46800020 */  cvt.s.w   $f0, $f0
/* 5EDD58 802198C8 4600A03C */  c.lt.s    $f20, $f0
/* 5EDD5C 802198CC 00000000 */  nop
/* 5EDD60 802198D0 4500000B */  bc1f      .L80219900
/* 5EDD64 802198D4 00000000 */   nop
/* 5EDD68 802198D8 92020072 */  lbu       $v0, 0x72($s0)
/* 5EDD6C 802198DC 44820000 */  mtc1      $v0, $f0
/* 5EDD70 802198E0 00000000 */  nop
/* 5EDD74 802198E4 46800020 */  cvt.s.w   $f0, $f0
/* 5EDD78 802198E8 46160002 */  mul.s     $f0, $f0, $f22
/* 5EDD7C 802198EC 00000000 */  nop
/* 5EDD80 802198F0 4600203C */  c.lt.s    $f4, $f0
/* 5EDD84 802198F4 00000000 */  nop
/* 5EDD88 802198F8 4501FF86 */  bc1t      .L80219714
/* 5EDD8C 802198FC 24020001 */   addiu    $v0, $zero, 1
.L80219900:
/* 5EDD90 80219900 8E10000C */  lw        $s0, 0xc($s0)
/* 5EDD94 80219904 1600FFC7 */  bnez      $s0, .L80219824
/* 5EDD98 80219908 00000000 */   nop
/* 5EDD9C 8021990C 26730001 */  addiu     $s3, $s3, 1
.L80219910:
/* 5EDDA0 80219910 2A620018 */  slti      $v0, $s3, 0x18
/* 5EDDA4 80219914 1440FF88 */  bnez      $v0, .L80219738
/* 5EDDA8 80219918 26520004 */   addiu    $s2, $s2, 4
.L8021991C:
/* 5EDDAC 8021991C 24020002 */  addiu     $v0, $zero, 2
/* 5EDDB0 80219920 8FBF0028 */  lw        $ra, 0x28($sp)
/* 5EDDB4 80219924 8FB50024 */  lw        $s5, 0x24($sp)
/* 5EDDB8 80219928 8FB40020 */  lw        $s4, 0x20($sp)
/* 5EDDBC 8021992C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 5EDDC0 80219930 8FB20018 */  lw        $s2, 0x18($sp)
/* 5EDDC4 80219934 8FB10014 */  lw        $s1, 0x14($sp)
/* 5EDDC8 80219938 8FB00010 */  lw        $s0, 0x10($sp)
/* 5EDDCC 8021993C D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 5EDDD0 80219940 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 5EDDD4 80219944 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 5EDDD8 80219948 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 5EDDDC 8021994C 03E00008 */  jr        $ra
/* 5EDDE0 80219950 27BD0050 */   addiu    $sp, $sp, 0x50
/* 5EDDE4 80219954 00000000 */  nop
/* 5EDDE8 80219958 00000000 */  nop
/* 5EDDEC 8021995C 00000000 */  nop
