.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241910_C416C0
/* C416C0 80241910 27BDFF80 */  addiu     $sp, $sp, -0x80
/* C416C4 80241914 AFB3004C */  sw        $s3, 0x4c($sp)
/* C416C8 80241918 0080982D */  daddu     $s3, $a0, $zero
/* C416CC 8024191C AFBF0058 */  sw        $ra, 0x58($sp)
/* C416D0 80241920 AFB50054 */  sw        $s5, 0x54($sp)
/* C416D4 80241924 AFB40050 */  sw        $s4, 0x50($sp)
/* C416D8 80241928 AFB20048 */  sw        $s2, 0x48($sp)
/* C416DC 8024192C AFB10044 */  sw        $s1, 0x44($sp)
/* C416E0 80241930 AFB00040 */  sw        $s0, 0x40($sp)
/* C416E4 80241934 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* C416E8 80241938 F7B80070 */  sdc1      $f24, 0x70($sp)
/* C416EC 8024193C F7B60068 */  sdc1      $f22, 0x68($sp)
/* C416F0 80241940 F7B40060 */  sdc1      $f20, 0x60($sp)
/* C416F4 80241944 8E710148 */  lw        $s1, 0x148($s3)
/* C416F8 80241948 00A0902D */  daddu     $s2, $a1, $zero
/* C416FC 8024194C 86240008 */  lh        $a0, 8($s1)
/* C41700 80241950 0C00EABB */  jal       get_npc_unsafe
/* C41704 80241954 00C0A82D */   daddu    $s5, $a2, $zero
/* C41708 80241958 0040802D */  daddu     $s0, $v0, $zero
/* C4170C 8024195C 0000A02D */  daddu     $s4, $zero, $zero
/* C41710 80241960 C624007C */  lwc1      $f4, 0x7c($s1)
/* C41714 80241964 46802120 */  cvt.s.w   $f4, $f4
/* C41718 80241968 C6220088 */  lwc1      $f2, 0x88($s1)
/* C4171C 8024196C 468010A0 */  cvt.s.w   $f2, $f2
/* C41720 80241970 460010A1 */  cvt.d.s   $f2, $f2
/* C41724 80241974 46002121 */  cvt.d.s   $f4, $f4
/* C41728 80241978 C600003C */  lwc1      $f0, 0x3c($s0)
/* C4172C 8024197C 3C014059 */  lui       $at, 0x4059
/* C41730 80241980 44813800 */  mtc1      $at, $f7
/* C41734 80241984 44803000 */  mtc1      $zero, $f6
/* C41738 80241988 46000021 */  cvt.d.s   $f0, $f0
/* C4173C 8024198C 46260002 */  mul.d     $f0, $f0, $f6
/* C41740 80241990 00000000 */  nop
/* C41744 80241994 24020001 */  addiu     $v0, $zero, 1
/* C41748 80241998 8E24006C */  lw        $a0, 0x6c($s1)
/* C4174C 8024199C 46261083 */  div.d     $f2, $f2, $f6
/* C41750 802419A0 462010A0 */  cvt.s.d   $f2, $f2
/* C41754 802419A4 46262103 */  div.d     $f4, $f4, $f6
/* C41758 802419A8 46202520 */  cvt.s.d   $f20, $f4
/* C4175C 802419AC 30830011 */  andi      $v1, $a0, 0x11
/* C41760 802419B0 4620020D */  trunc.w.d $f8, $f0
/* C41764 802419B4 E628007C */  swc1      $f8, 0x7c($s1)
/* C41768 802419B8 C6200078 */  lwc1      $f0, 0x78($s1)
/* C4176C 802419BC 46800020 */  cvt.s.w   $f0, $f0
/* C41770 802419C0 46000021 */  cvt.d.s   $f0, $f0
/* C41774 802419C4 46260003 */  div.d     $f0, $f0, $f6
/* C41778 802419C8 462006A0 */  cvt.s.d   $f26, $f0
/* C4177C 802419CC C6200070 */  lwc1      $f0, 0x70($s1)
/* C41780 802419D0 46800020 */  cvt.s.w   $f0, $f0
/* C41784 802419D4 46000021 */  cvt.d.s   $f0, $f0
/* C41788 802419D8 46260003 */  div.d     $f0, $f0, $f6
/* C4178C 802419DC 462005A0 */  cvt.s.d   $f22, $f0
/* C41790 802419E0 14620025 */  bne       $v1, $v0, .L80241A78
/* C41794 802419E4 4602D600 */   add.s    $f24, $f26, $f2
/* C41798 802419E8 8E020000 */  lw        $v0, ($s0)
/* C4179C 802419EC 30420008 */  andi      $v0, $v0, 8
/* C417A0 802419F0 10400009 */  beqz      $v0, .L80241A18
/* C417A4 802419F4 27A50028 */   addiu    $a1, $sp, 0x28
/* C417A8 802419F8 C600003C */  lwc1      $f0, 0x3c($s0)
/* C417AC 802419FC 4600C001 */  sub.s     $f0, $f24, $f0
/* C417B0 80241A00 4600B03C */  c.lt.s    $f22, $f0
/* C417B4 80241A04 00000000 */  nop
/* C417B8 80241A08 4500001B */  bc1f      .L80241A78
/* C417BC 80241A0C 34820010 */   ori      $v0, $a0, 0x10
/* C417C0 80241A10 0809069E */  j         .L80241A78
/* C417C4 80241A14 AE22006C */   sw       $v0, 0x6c($s1)
.L80241A18:
/* C417C8 80241A18 27A6002C */  addiu     $a2, $sp, 0x2c
/* C417CC 80241A1C C6000038 */  lwc1      $f0, 0x38($s0)
/* C417D0 80241A20 C602003C */  lwc1      $f2, 0x3c($s0)
/* C417D4 80241A24 C6040040 */  lwc1      $f4, 0x40($s0)
/* C417D8 80241A28 3C01447A */  lui       $at, 0x447a
/* C417DC 80241A2C 44813000 */  mtc1      $at, $f6
/* C417E0 80241A30 27A20034 */  addiu     $v0, $sp, 0x34
/* C417E4 80241A34 E7A00028 */  swc1      $f0, 0x28($sp)
/* C417E8 80241A38 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C417EC 80241A3C E7A40030 */  swc1      $f4, 0x30($sp)
/* C417F0 80241A40 E7A60034 */  swc1      $f6, 0x34($sp)
/* C417F4 80241A44 AFA20010 */  sw        $v0, 0x10($sp)
/* C417F8 80241A48 8E040080 */  lw        $a0, 0x80($s0)
/* C417FC 80241A4C 0C0372DF */  jal       func_800DCB7C
/* C41800 80241A50 27A70030 */   addiu    $a3, $sp, 0x30
/* C41804 80241A54 C7A00034 */  lwc1      $f0, 0x34($sp)
/* C41808 80241A58 4600D001 */  sub.s     $f0, $f26, $f0
/* C4180C 80241A5C 4600B03C */  c.lt.s    $f22, $f0
/* C41810 80241A60 00000000 */  nop
/* C41814 80241A64 45000004 */  bc1f      .L80241A78
/* C41818 80241A68 00000000 */   nop
/* C4181C 80241A6C 8E22006C */  lw        $v0, 0x6c($s1)
/* C41820 80241A70 34420010 */  ori       $v0, $v0, 0x10
/* C41824 80241A74 AE22006C */  sw        $v0, 0x6c($s1)
.L80241A78:
/* C41828 80241A78 8E22006C */  lw        $v0, 0x6c($s1)
/* C4182C 80241A7C 24030011 */  addiu     $v1, $zero, 0x11
/* C41830 80241A80 30420011 */  andi      $v0, $v0, 0x11
/* C41834 80241A84 14430039 */  bne       $v0, $v1, .L80241B6C
/* C41838 80241A88 00000000 */   nop
/* C4183C 80241A8C 8E020000 */  lw        $v0, ($s0)
/* C41840 80241A90 30420008 */  andi      $v0, $v0, 8
/* C41844 80241A94 1040000A */  beqz      $v0, .L80241AC0
/* C41848 80241A98 4600C106 */   mov.s    $f4, $f24
/* C4184C 80241A9C 4614C081 */  sub.s     $f2, $f24, $f20
/* C41850 80241AA0 3C018024 */  lui       $at, %hi(D_80246D40)
/* C41854 80241AA4 D4206D40 */  ldc1      $f0, %lo(D_80246D40)($at)
/* C41858 80241AA8 460010A1 */  cvt.d.s   $f2, $f2
/* C4185C 80241AAC 46201082 */  mul.d     $f2, $f2, $f0
/* C41860 80241AB0 00000000 */  nop
/* C41864 80241AB4 4600A021 */  cvt.d.s   $f0, $f20
/* C41868 80241AB8 080906C9 */  j         .L80241B24
/* C4186C 80241ABC 46220000 */   add.d    $f0, $f0, $f2
.L80241AC0:
/* C41870 80241AC0 27A50028 */  addiu     $a1, $sp, 0x28
/* C41874 80241AC4 27A6002C */  addiu     $a2, $sp, 0x2c
/* C41878 80241AC8 C6000038 */  lwc1      $f0, 0x38($s0)
/* C4187C 80241ACC C6020040 */  lwc1      $f2, 0x40($s0)
/* C41880 80241AD0 3C01447A */  lui       $at, 0x447a
/* C41884 80241AD4 44812000 */  mtc1      $at, $f4
/* C41888 80241AD8 27A20034 */  addiu     $v0, $sp, 0x34
/* C4188C 80241ADC E7B4002C */  swc1      $f20, 0x2c($sp)
/* C41890 80241AE0 E7A00028 */  swc1      $f0, 0x28($sp)
/* C41894 80241AE4 E7A20030 */  swc1      $f2, 0x30($sp)
/* C41898 80241AE8 E7A40034 */  swc1      $f4, 0x34($sp)
/* C4189C 80241AEC AFA20010 */  sw        $v0, 0x10($sp)
/* C418A0 80241AF0 8E040080 */  lw        $a0, 0x80($s0)
/* C418A4 80241AF4 0C0372DF */  jal       func_800DCB7C
/* C418A8 80241AF8 27A70030 */   addiu    $a3, $sp, 0x30
/* C418AC 80241AFC C7A4002C */  lwc1      $f4, 0x2c($sp)
/* C418B0 80241B00 461A2100 */  add.s     $f4, $f4, $f26
/* C418B4 80241B04 46142081 */  sub.s     $f2, $f4, $f20
/* C418B8 80241B08 3C018024 */  lui       $at, %hi(D_80246D48)
/* C418BC 80241B0C D4206D48 */  ldc1      $f0, %lo(D_80246D48)($at)
/* C418C0 80241B10 460010A1 */  cvt.d.s   $f2, $f2
/* C418C4 80241B14 46201082 */  mul.d     $f2, $f2, $f0
/* C418C8 80241B18 00000000 */  nop
/* C418CC 80241B1C 4600A021 */  cvt.d.s   $f0, $f20
/* C418D0 80241B20 46220000 */  add.d     $f0, $f0, $f2
.L80241B24:
/* C418D4 80241B24 46200020 */  cvt.s.d   $f0, $f0
/* C418D8 80241B28 E600003C */  swc1      $f0, 0x3c($s0)
/* C418DC 80241B2C C600003C */  lwc1      $f0, 0x3c($s0)
/* C418E0 80241B30 46002001 */  sub.s     $f0, $f4, $f0
/* C418E4 80241B34 3C013FF0 */  lui       $at, 0x3ff0
/* C418E8 80241B38 44811800 */  mtc1      $at, $f3
/* C418EC 80241B3C 44801000 */  mtc1      $zero, $f2
/* C418F0 80241B40 46000005 */  abs.s     $f0, $f0
/* C418F4 80241B44 46000021 */  cvt.d.s   $f0, $f0
/* C418F8 80241B48 4622003C */  c.lt.d    $f0, $f2
/* C418FC 80241B4C 00000000 */  nop
/* C41900 80241B50 45000036 */  bc1f      .L80241C2C
/* C41904 80241B54 2403FFEF */   addiu    $v1, $zero, -0x11
/* C41908 80241B58 E604003C */  swc1      $f4, 0x3c($s0)
/* C4190C 80241B5C 8E22006C */  lw        $v0, 0x6c($s1)
/* C41910 80241B60 00431024 */  and       $v0, $v0, $v1
/* C41914 80241B64 0809070B */  j         .L80241C2C
/* C41918 80241B68 AE22006C */   sw       $v0, 0x6c($s1)
.L80241B6C:
/* C4191C 80241B6C 8E220070 */  lw        $v0, 0x70($s1)
/* C41920 80241B70 1840002E */  blez      $v0, .L80241C2C
/* C41924 80241B74 00000000 */   nop
/* C41928 80241B78 C62C0074 */  lwc1      $f12, 0x74($s1)
/* C4192C 80241B7C 0C00A8BB */  jal       sin_deg
/* C41930 80241B80 46806320 */   cvt.s.w  $f12, $f12
/* C41934 80241B84 8E020000 */  lw        $v0, ($s0)
/* C41938 80241B88 30420008 */  andi      $v0, $v0, 8
/* C4193C 80241B8C 10400003 */  beqz      $v0, .L80241B9C
/* C41940 80241B90 46000506 */   mov.s    $f20, $f0
/* C41944 80241B94 080906F7 */  j         .L80241BDC
/* C41948 80241B98 0000102D */   daddu    $v0, $zero, $zero
.L80241B9C:
/* C4194C 80241B9C 27A50028 */  addiu     $a1, $sp, 0x28
/* C41950 80241BA0 27A6002C */  addiu     $a2, $sp, 0x2c
/* C41954 80241BA4 C6000038 */  lwc1      $f0, 0x38($s0)
/* C41958 80241BA8 C602003C */  lwc1      $f2, 0x3c($s0)
/* C4195C 80241BAC C6040040 */  lwc1      $f4, 0x40($s0)
/* C41960 80241BB0 3C01447A */  lui       $at, 0x447a
/* C41964 80241BB4 44813000 */  mtc1      $at, $f6
/* C41968 80241BB8 27A20034 */  addiu     $v0, $sp, 0x34
/* C4196C 80241BBC E7A00028 */  swc1      $f0, 0x28($sp)
/* C41970 80241BC0 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C41974 80241BC4 E7A40030 */  swc1      $f4, 0x30($sp)
/* C41978 80241BC8 E7A60034 */  swc1      $f6, 0x34($sp)
/* C4197C 80241BCC AFA20010 */  sw        $v0, 0x10($sp)
/* C41980 80241BD0 8E040080 */  lw        $a0, 0x80($s0)
/* C41984 80241BD4 0C0372DF */  jal       func_800DCB7C
/* C41988 80241BD8 27A70030 */   addiu    $a3, $sp, 0x30
.L80241BDC:
/* C4198C 80241BDC 10400007 */  beqz      $v0, .L80241BFC
/* C41990 80241BE0 00000000 */   nop
/* C41994 80241BE4 4616A082 */  mul.s     $f2, $f20, $f22
/* C41998 80241BE8 00000000 */  nop
/* C4199C 80241BEC C7A0002C */  lwc1      $f0, 0x2c($sp)
/* C419A0 80241BF0 461A0000 */  add.s     $f0, $f0, $f26
/* C419A4 80241BF4 08090702 */  j         .L80241C08
/* C419A8 80241BF8 46020000 */   add.s    $f0, $f0, $f2
.L80241BFC:
/* C419AC 80241BFC 4616A002 */  mul.s     $f0, $f20, $f22
/* C419B0 80241C00 00000000 */  nop
/* C419B4 80241C04 4600C000 */  add.s     $f0, $f24, $f0
.L80241C08:
/* C419B8 80241C08 E600003C */  swc1      $f0, 0x3c($s0)
/* C419BC 80241C0C 8E220074 */  lw        $v0, 0x74($s1)
/* C419C0 80241C10 2442000A */  addiu     $v0, $v0, 0xa
/* C419C4 80241C14 44826000 */  mtc1      $v0, $f12
/* C419C8 80241C18 00000000 */  nop
/* C419CC 80241C1C 0C00A6C9 */  jal       clamp_angle
/* C419D0 80241C20 46806320 */   cvt.s.w  $f12, $f12
/* C419D4 80241C24 4600020D */  trunc.w.s $f8, $f0
/* C419D8 80241C28 E6280074 */  swc1      $f8, 0x74($s1)
.L80241C2C:
/* C419DC 80241C2C 8E220090 */  lw        $v0, 0x90($s1)
/* C419E0 80241C30 1C40004A */  bgtz      $v0, .L80241D5C
/* C419E4 80241C34 2442FFFF */   addiu    $v0, $v0, -1
/* C419E8 80241C38 8E430014 */  lw        $v1, 0x14($s2)
/* C419EC 80241C3C 04600048 */  bltz      $v1, .L80241D60
/* C419F0 80241C40 00000000 */   nop
/* C419F4 80241C44 8E620074 */  lw        $v0, 0x74($s3)
/* C419F8 80241C48 1C400042 */  bgtz      $v0, .L80241D54
/* C419FC 80241C4C 2442FFFF */   addiu    $v0, $v0, -1
/* C41A00 80241C50 AE630074 */  sw        $v1, 0x74($s3)
/* C41A04 80241C54 860200A8 */  lh        $v0, 0xa8($s0)
/* C41A08 80241C58 C602003C */  lwc1      $f2, 0x3c($s0)
/* C41A0C 80241C5C 44820000 */  mtc1      $v0, $f0
/* C41A10 80241C60 00000000 */  nop
/* C41A14 80241C64 46800020 */  cvt.s.w   $f0, $f0
/* C41A18 80241C68 46001080 */  add.s     $f2, $f2, $f0
/* C41A1C 80241C6C 3C014024 */  lui       $at, 0x4024
/* C41A20 80241C70 44810800 */  mtc1      $at, $f1
/* C41A24 80241C74 44800000 */  mtc1      $zero, $f0
/* C41A28 80241C78 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C41A2C 80241C7C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C41A30 80241C80 460010A1 */  cvt.d.s   $f2, $f2
/* C41A34 80241C84 46201080 */  add.d     $f2, $f2, $f0
/* C41A38 80241C88 C440002C */  lwc1      $f0, 0x2c($v0)
/* C41A3C 80241C8C 46000021 */  cvt.d.s   $f0, $f0
/* C41A40 80241C90 4622003C */  c.lt.d    $f0, $f2
/* C41A44 80241C94 00000000 */  nop
/* C41A48 80241C98 4500002C */  bc1f      .L80241D4C
/* C41A4C 80241C9C 02A0202D */   daddu    $a0, $s5, $zero
/* C41A50 80241CA0 AFA00010 */  sw        $zero, 0x10($sp)
/* C41A54 80241CA4 8E46000C */  lw        $a2, 0xc($s2)
/* C41A58 80241CA8 8E470010 */  lw        $a3, 0x10($s2)
/* C41A5C 80241CAC 0C01242D */  jal       func_800490B4
/* C41A60 80241CB0 0220282D */   daddu    $a1, $s1, $zero
/* C41A64 80241CB4 10400025 */  beqz      $v0, .L80241D4C
/* C41A68 80241CB8 0000202D */   daddu    $a0, $zero, $zero
/* C41A6C 80241CBC 0200282D */  daddu     $a1, $s0, $zero
/* C41A70 80241CC0 0000302D */  daddu     $a2, $zero, $zero
/* C41A74 80241CC4 2412000C */  addiu     $s2, $zero, 0xc
/* C41A78 80241CC8 860300A8 */  lh        $v1, 0xa8($s0)
/* C41A7C 80241CCC 3C013F80 */  lui       $at, 0x3f80
/* C41A80 80241CD0 44810000 */  mtc1      $at, $f0
/* C41A84 80241CD4 3C014000 */  lui       $at, 0x4000
/* C41A88 80241CD8 44811000 */  mtc1      $at, $f2
/* C41A8C 80241CDC 3C01C1A0 */  lui       $at, 0xc1a0
/* C41A90 80241CE0 44812000 */  mtc1      $at, $f4
/* C41A94 80241CE4 44834000 */  mtc1      $v1, $f8
/* C41A98 80241CE8 00000000 */  nop
/* C41A9C 80241CEC 46804220 */  cvt.s.w   $f8, $f8
/* C41AA0 80241CF0 44074000 */  mfc1      $a3, $f8
/* C41AA4 80241CF4 27A20038 */  addiu     $v0, $sp, 0x38
/* C41AA8 80241CF8 AFB2001C */  sw        $s2, 0x1c($sp)
/* C41AAC 80241CFC AFA20020 */  sw        $v0, 0x20($sp)
/* C41AB0 80241D00 E7A00010 */  swc1      $f0, 0x10($sp)
/* C41AB4 80241D04 E7A20014 */  swc1      $f2, 0x14($sp)
/* C41AB8 80241D08 0C01BFA4 */  jal       fx_emote
/* C41ABC 80241D0C E7A40018 */   swc1     $f4, 0x18($sp)
/* C41AC0 80241D10 0200202D */  daddu     $a0, $s0, $zero
/* C41AC4 80241D14 240502F4 */  addiu     $a1, $zero, 0x2f4
/* C41AC8 80241D18 C480003C */  lwc1      $f0, 0x3c($a0)
/* C41ACC 80241D1C 3C060020 */  lui       $a2, 0x20
/* C41AD0 80241D20 0C012530 */  jal       func_800494C0
/* C41AD4 80241D24 E4800064 */   swc1     $f0, 0x64($a0)
/* C41AD8 80241D28 8E220018 */  lw        $v0, 0x18($s1)
/* C41ADC 80241D2C 9442002A */  lhu       $v0, 0x2a($v0)
/* C41AE0 80241D30 30420001 */  andi      $v0, $v0, 1
/* C41AE4 80241D34 10400003 */  beqz      $v0, .L80241D44
/* C41AE8 80241D38 2402000A */   addiu    $v0, $zero, 0xa
/* C41AEC 80241D3C 080907C1 */  j         .L80241F04
/* C41AF0 80241D40 AE620070 */   sw       $v0, 0x70($s3)
.L80241D44:
/* C41AF4 80241D44 080907C1 */  j         .L80241F04
/* C41AF8 80241D48 AE720070 */   sw       $s2, 0x70($s3)
.L80241D4C:
/* C41AFC 80241D4C 8E620074 */  lw        $v0, 0x74($s3)
/* C41B00 80241D50 2442FFFF */  addiu     $v0, $v0, -1
.L80241D54:
/* C41B04 80241D54 08090758 */  j         .L80241D60
/* C41B08 80241D58 AE620074 */   sw       $v0, 0x74($s3)
.L80241D5C:
/* C41B0C 80241D5C AE220090 */  sw        $v0, 0x90($s1)
.L80241D60:
/* C41B10 80241D60 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C41B14 80241D64 C6000040 */  lwc1      $f0, 0x40($s0)
/* C41B18 80241D68 C4620000 */  lwc1      $f2, ($v1)
/* C41B1C 80241D6C 468010A0 */  cvt.s.w   $f2, $f2
/* C41B20 80241D70 C4640008 */  lwc1      $f4, 8($v1)
/* C41B24 80241D74 46802120 */  cvt.s.w   $f4, $f4
/* C41B28 80241D78 E7A00010 */  swc1      $f0, 0x10($sp)
/* C41B2C 80241D7C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C41B30 80241D80 44051000 */  mfc1      $a1, $f2
/* C41B34 80241D84 C440000C */  lwc1      $f0, 0xc($v0)
/* C41B38 80241D88 46800020 */  cvt.s.w   $f0, $f0
/* C41B3C 80241D8C E7A00014 */  swc1      $f0, 0x14($sp)
/* C41B40 80241D90 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C41B44 80241D94 44062000 */  mfc1      $a2, $f4
/* C41B48 80241D98 C4400010 */  lwc1      $f0, 0x10($v0)
/* C41B4C 80241D9C 46800020 */  cvt.s.w   $f0, $f0
/* C41B50 80241DA0 E7A00018 */  swc1      $f0, 0x18($sp)
/* C41B54 80241DA4 8C640018 */  lw        $a0, 0x18($v1)
/* C41B58 80241DA8 0C0123F5 */  jal       is_point_within_region
/* C41B5C 80241DAC 8E070038 */   lw       $a3, 0x38($s0)
/* C41B60 80241DB0 1040001A */  beqz      $v0, .L80241E1C
/* C41B64 80241DB4 00000000 */   nop
/* C41B68 80241DB8 8E060038 */  lw        $a2, 0x38($s0)
/* C41B6C 80241DBC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C41B70 80241DC0 8E070040 */  lw        $a3, 0x40($s0)
/* C41B74 80241DC4 C44C0000 */  lwc1      $f12, ($v0)
/* C41B78 80241DC8 46806320 */  cvt.s.w   $f12, $f12
/* C41B7C 80241DCC C44E0008 */  lwc1      $f14, 8($v0)
/* C41B80 80241DD0 0C00A7B5 */  jal       dist2D
/* C41B84 80241DD4 468073A0 */   cvt.s.w  $f14, $f14
/* C41B88 80241DD8 C6020018 */  lwc1      $f2, 0x18($s0)
/* C41B8C 80241DDC 4600103C */  c.lt.s    $f2, $f0
/* C41B90 80241DE0 00000000 */  nop
/* C41B94 80241DE4 4500000D */  bc1f      .L80241E1C
/* C41B98 80241DE8 E7A00034 */   swc1     $f0, 0x34($sp)
/* C41B9C 80241DEC C60C0038 */  lwc1      $f12, 0x38($s0)
/* C41BA0 80241DF0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C41BA4 80241DF4 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C41BA8 80241DF8 C4480000 */  lwc1      $f8, ($v0)
/* C41BAC 80241DFC 46804220 */  cvt.s.w   $f8, $f8
/* C41BB0 80241E00 44064000 */  mfc1      $a2, $f8
/* C41BB4 80241E04 C4480008 */  lwc1      $f8, 8($v0)
/* C41BB8 80241E08 46804220 */  cvt.s.w   $f8, $f8
/* C41BBC 80241E0C 44074000 */  mfc1      $a3, $f8
/* C41BC0 80241E10 0C00A720 */  jal       atan2
/* C41BC4 80241E14 24140001 */   addiu    $s4, $zero, 1
/* C41BC8 80241E18 E600000C */  swc1      $f0, 0xc($s0)
.L80241E1C:
/* C41BCC 80241E1C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C41BD0 80241E20 8C43000C */  lw        $v1, 0xc($v0)
/* C41BD4 80241E24 8C420010 */  lw        $v0, 0x10($v0)
/* C41BD8 80241E28 00621825 */  or        $v1, $v1, $v0
/* C41BDC 80241E2C 00741825 */  or        $v1, $v1, $s4
/* C41BE0 80241E30 10600008 */  beqz      $v1, .L80241E54
/* C41BE4 80241E34 00000000 */   nop
/* C41BE8 80241E38 8602008C */  lh        $v0, 0x8c($s0)
/* C41BEC 80241E3C 14400031 */  bnez      $v0, .L80241F04
/* C41BF0 80241E40 00000000 */   nop
/* C41BF4 80241E44 8E050018 */  lw        $a1, 0x18($s0)
/* C41BF8 80241E48 8E06000C */  lw        $a2, 0xc($s0)
/* C41BFC 80241E4C 0C00EA95 */  jal       npc_move_heading
/* C41C00 80241E50 0200202D */   daddu    $a0, $s0, $zero
.L80241E54:
/* C41C04 80241E54 C600003C */  lwc1      $f0, 0x3c($s0)
/* C41C08 80241E58 3C014059 */  lui       $at, 0x4059
/* C41C0C 80241E5C 44811800 */  mtc1      $at, $f3
/* C41C10 80241E60 44801000 */  mtc1      $zero, $f2
/* C41C14 80241E64 46000021 */  cvt.d.s   $f0, $f0
/* C41C18 80241E68 46220002 */  mul.d     $f0, $f0, $f2
/* C41C1C 80241E6C 00000000 */  nop
/* C41C20 80241E70 4620020D */  trunc.w.d $f8, $f0
/* C41C24 80241E74 E628007C */  swc1      $f8, 0x7c($s1)
/* C41C28 80241E78 8E420004 */  lw        $v0, 4($s2)
/* C41C2C 80241E7C 18400021 */  blez      $v0, .L80241F04
/* C41C30 80241E80 00000000 */   nop
/* C41C34 80241E84 8602008E */  lh        $v0, 0x8e($s0)
/* C41C38 80241E88 9603008E */  lhu       $v1, 0x8e($s0)
/* C41C3C 80241E8C 18400005 */  blez      $v0, .L80241EA4
/* C41C40 80241E90 2462FFFF */   addiu    $v0, $v1, -1
/* C41C44 80241E94 A602008E */  sh        $v0, 0x8e($s0)
/* C41C48 80241E98 00021400 */  sll       $v0, $v0, 0x10
/* C41C4C 80241E9C 1C400019 */  bgtz      $v0, .L80241F04
/* C41C50 80241EA0 00000000 */   nop
.L80241EA4:
/* C41C54 80241EA4 240403E8 */  addiu     $a0, $zero, 0x3e8
/* C41C58 80241EA8 24020002 */  addiu     $v0, $zero, 2
/* C41C5C 80241EAC 0C00A67F */  jal       rand_int
/* C41C60 80241EB0 AE620070 */   sw       $v0, 0x70($s3)
/* C41C64 80241EB4 3C035555 */  lui       $v1, 0x5555
/* C41C68 80241EB8 34635556 */  ori       $v1, $v1, 0x5556
/* C41C6C 80241EBC 00430018 */  mult      $v0, $v1
/* C41C70 80241EC0 000227C3 */  sra       $a0, $v0, 0x1f
/* C41C74 80241EC4 00004010 */  mfhi      $t0
/* C41C78 80241EC8 01042023 */  subu      $a0, $t0, $a0
/* C41C7C 80241ECC 00041840 */  sll       $v1, $a0, 1
/* C41C80 80241ED0 00641821 */  addu      $v1, $v1, $a0
/* C41C84 80241ED4 00431023 */  subu      $v0, $v0, $v1
/* C41C88 80241ED8 24430002 */  addiu     $v1, $v0, 2
/* C41C8C 80241EDC AE630074 */  sw        $v1, 0x74($s3)
/* C41C90 80241EE0 8E42002C */  lw        $v0, 0x2c($s2)
/* C41C94 80241EE4 58400007 */  blezl     $v0, .L80241F04
/* C41C98 80241EE8 AE600070 */   sw       $zero, 0x70($s3)
/* C41C9C 80241EEC 8E420008 */  lw        $v0, 8($s2)
/* C41CA0 80241EF0 18400003 */  blez      $v0, .L80241F00
/* C41CA4 80241EF4 28620003 */   slti     $v0, $v1, 3
/* C41CA8 80241EF8 10400002 */  beqz      $v0, .L80241F04
/* C41CAC 80241EFC 00000000 */   nop
.L80241F00:
/* C41CB0 80241F00 AE600070 */  sw        $zero, 0x70($s3)
.L80241F04:
/* C41CB4 80241F04 8FBF0058 */  lw        $ra, 0x58($sp)
/* C41CB8 80241F08 8FB50054 */  lw        $s5, 0x54($sp)
/* C41CBC 80241F0C 8FB40050 */  lw        $s4, 0x50($sp)
/* C41CC0 80241F10 8FB3004C */  lw        $s3, 0x4c($sp)
/* C41CC4 80241F14 8FB20048 */  lw        $s2, 0x48($sp)
/* C41CC8 80241F18 8FB10044 */  lw        $s1, 0x44($sp)
/* C41CCC 80241F1C 8FB00040 */  lw        $s0, 0x40($sp)
/* C41CD0 80241F20 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* C41CD4 80241F24 D7B80070 */  ldc1      $f24, 0x70($sp)
/* C41CD8 80241F28 D7B60068 */  ldc1      $f22, 0x68($sp)
/* C41CDC 80241F2C D7B40060 */  ldc1      $f20, 0x60($sp)
/* C41CE0 80241F30 03E00008 */  jr        $ra
/* C41CE4 80241F34 27BD0080 */   addiu    $sp, $sp, 0x80
