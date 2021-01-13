.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241090_E137F0
/* E137F0 80241090 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* E137F4 80241094 AFB00010 */  sw        $s0, 0x10($sp)
/* E137F8 80241098 0080802D */  daddu     $s0, $a0, $zero
/* E137FC 8024109C 0000202D */  daddu     $a0, $zero, $zero
/* E13800 802410A0 AFBF0034 */  sw        $ra, 0x34($sp)
/* E13804 802410A4 AFBE0030 */  sw        $fp, 0x30($sp)
/* E13808 802410A8 AFB7002C */  sw        $s7, 0x2c($sp)
/* E1380C 802410AC AFB60028 */  sw        $s6, 0x28($sp)
/* E13810 802410B0 AFB50024 */  sw        $s5, 0x24($sp)
/* E13814 802410B4 AFB40020 */  sw        $s4, 0x20($sp)
/* E13818 802410B8 AFB3001C */  sw        $s3, 0x1c($sp)
/* E1381C 802410BC AFB20018 */  sw        $s2, 0x18($sp)
/* E13820 802410C0 0C00FB3A */  jal       get_enemy
/* E13824 802410C4 AFB10014 */   sw       $s1, 0x14($sp)
/* E13828 802410C8 0200202D */  daddu     $a0, $s0, $zero
/* E1382C 802410CC 8C83000C */  lw        $v1, 0xc($a0)
/* E13830 802410D0 0040B02D */  daddu     $s6, $v0, $zero
/* E13834 802410D4 8C650000 */  lw        $a1, ($v1)
/* E13838 802410D8 8ED20080 */  lw        $s2, 0x80($s6)
/* E1383C 802410DC 0C0B1EAF */  jal       get_variable
/* E13840 802410E0 0000802D */   daddu    $s0, $zero, $zero
/* E13844 802410E4 0040982D */  daddu     $s3, $v0, $zero
/* E13848 802410E8 00131880 */  sll       $v1, $s3, 2
/* E1384C 802410EC 02431821 */  addu      $v1, $s2, $v1
/* E13850 802410F0 8ED40074 */  lw        $s4, 0x74($s6)
/* E13854 802410F4 8C75001C */  lw        $s5, 0x1c($v1)
/* E13858 802410F8 2403FFFF */  addiu     $v1, $zero, -1
/* E1385C 802410FC 00141080 */  sll       $v0, $s4, 2
/* E13860 80241100 02421021 */  addu      $v0, $s2, $v0
/* E13864 80241104 AC550048 */  sw        $s5, 0x48($v0)
/* E13868 80241108 00131040 */  sll       $v0, $s3, 1
/* E1386C 8024110C 00531021 */  addu      $v0, $v0, $s3
/* E13870 80241110 000210C0 */  sll       $v0, $v0, 3
/* E13874 80241114 00531023 */  subu      $v0, $v0, $s3
/* E13878 80241118 00021080 */  sll       $v0, $v0, 2
/* E1387C 8024111C 02421021 */  addu      $v0, $s2, $v0
/* E13880 80241120 AC430088 */  sw        $v1, 0x88($v0)
/* E13884 80241124 26820001 */  addiu     $v0, $s4, 1
/* E13888 80241128 18400020 */  blez      $v0, .L802411AC
/* E1388C 8024112C 0200202D */   daddu    $a0, $s0, $zero
/* E13890 80241130 241E0003 */  addiu     $fp, $zero, 3
/* E13894 80241134 0040B82D */  daddu     $s7, $v0, $zero
/* E13898 80241138 0240882D */  daddu     $s1, $s2, $zero
.L8024113C:
/* E1389C 8024113C 8E230048 */  lw        $v1, 0x48($s1)
/* E138A0 80241140 24060001 */  addiu     $a2, $zero, 1
/* E138A4 80241144 1066000D */  beq       $v1, $a2, .L8024117C
/* E138A8 80241148 28620002 */   slti     $v0, $v1, 2
/* E138AC 8024114C 50400005 */  beql      $v0, $zero, .L80241164
/* E138B0 80241150 24060002 */   addiu    $a2, $zero, 2
/* E138B4 80241154 50600010 */  beql      $v1, $zero, .L80241198
/* E138B8 80241158 24840001 */   addiu    $a0, $a0, 1
/* E138BC 8024115C 08090467 */  j         .L8024119C
/* E138C0 80241160 26310004 */   addiu    $s1, $s1, 4
.L80241164:
/* E138C4 80241164 10660007 */  beq       $v1, $a2, .L80241184
/* E138C8 80241168 00041080 */   sll      $v0, $a0, 2
/* E138CC 8024116C 107E0007 */  beq       $v1, $fp, .L8024118C
/* E138D0 80241170 00000000 */   nop
/* E138D4 80241174 08090467 */  j         .L8024119C
/* E138D8 80241178 26310004 */   addiu    $s1, $s1, 4
.L8024117C:
/* E138DC 8024117C 08090466 */  j         .L80241198
/* E138E0 80241180 24840005 */   addiu    $a0, $a0, 5
.L80241184:
/* E138E4 80241184 08090466 */  j         .L80241198
/* E138E8 80241188 00822021 */   addu     $a0, $a0, $v0
.L8024118C:
/* E138EC 8024118C 0C05272D */  jal       play_sound
/* E138F0 80241190 2404021D */   addiu    $a0, $zero, 0x21d
/* E138F4 80241194 0000202D */  daddu     $a0, $zero, $zero
.L80241198:
/* E138F8 80241198 26310004 */  addiu     $s1, $s1, 4
.L8024119C:
/* E138FC 8024119C 26100001 */  addiu     $s0, $s0, 1
/* E13900 802411A0 0217102A */  slt       $v0, $s0, $s7
/* E13904 802411A4 1440FFE5 */  bnez      $v0, .L8024113C
/* E13908 802411A8 00000000 */   nop
.L802411AC:
/* E1390C 802411AC AE440010 */  sw        $a0, 0x10($s2)
/* E13910 802411B0 0000802D */  daddu     $s0, $zero, $zero
/* E13914 802411B4 24040001 */  addiu     $a0, $zero, 1
/* E13918 802411B8 24050002 */  addiu     $a1, $zero, 2
/* E1391C 802411BC 0240182D */  daddu     $v1, $s2, $zero
.L802411C0:
/* E13920 802411C0 8C62007C */  lw        $v0, 0x7c($v1)
/* E13924 802411C4 16A20008 */  bne       $s5, $v0, .L802411E8
/* E13928 802411C8 26100001 */   addiu    $s0, $s0, 1
/* E1392C 802411CC 8C620074 */  lw        $v0, 0x74($v1)
/* E13930 802411D0 14440006 */  bne       $v0, $a0, .L802411EC
/* E13934 802411D4 2A02000B */   slti     $v0, $s0, 0xb
/* E13938 802411D8 AC650074 */  sw        $a1, 0x74($v1)
/* E1393C 802411DC AC730080 */  sw        $s3, 0x80($v1)
/* E13940 802411E0 0809047D */  j         .L802411F4
/* E13944 802411E4 AC740084 */   sw       $s4, 0x84($v1)
.L802411E8:
/* E13948 802411E8 2A02000B */  slti      $v0, $s0, 0xb
.L802411EC:
/* E1394C 802411EC 1440FFF4 */  bnez      $v0, .L802411C0
/* E13950 802411F0 2463005C */   addiu    $v1, $v1, 0x5c
.L802411F4:
/* E13954 802411F4 8EC30074 */  lw        $v1, 0x74($s6)
/* E13958 802411F8 24630001 */  addiu     $v1, $v1, 1
/* E1395C 802411FC AEC30074 */  sw        $v1, 0x74($s6)
/* E13960 80241200 8FBF0034 */  lw        $ra, 0x34($sp)
/* E13964 80241204 8FBE0030 */  lw        $fp, 0x30($sp)
/* E13968 80241208 8FB7002C */  lw        $s7, 0x2c($sp)
/* E1396C 8024120C 8FB60028 */  lw        $s6, 0x28($sp)
/* E13970 80241210 8FB50024 */  lw        $s5, 0x24($sp)
/* E13974 80241214 8FB40020 */  lw        $s4, 0x20($sp)
/* E13978 80241218 8FB3001C */  lw        $s3, 0x1c($sp)
/* E1397C 8024121C 8FB20018 */  lw        $s2, 0x18($sp)
/* E13980 80241220 8FB10014 */  lw        $s1, 0x14($sp)
/* E13984 80241224 8FB00010 */  lw        $s0, 0x10($sp)
/* E13988 80241228 24020002 */  addiu     $v0, $zero, 2
/* E1398C 8024122C 03E00008 */  jr        $ra
/* E13990 80241230 27BD0038 */   addiu    $sp, $sp, 0x38
