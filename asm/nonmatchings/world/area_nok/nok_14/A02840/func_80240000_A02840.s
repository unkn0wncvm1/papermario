.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_A02840
/* A02840 80240000 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* A02844 80240004 AFB10014 */  sw        $s1, 0x14($sp)
/* A02848 80240008 0080882D */  daddu     $s1, $a0, $zero
/* A0284C 8024000C AFBF002C */  sw        $ra, 0x2c($sp)
/* A02850 80240010 AFB60028 */  sw        $s6, 0x28($sp)
/* A02854 80240014 AFB50024 */  sw        $s5, 0x24($sp)
/* A02858 80240018 AFB40020 */  sw        $s4, 0x20($sp)
/* A0285C 8024001C AFB3001C */  sw        $s3, 0x1c($sp)
/* A02860 80240020 AFB20018 */  sw        $s2, 0x18($sp)
/* A02864 80240024 AFB00010 */  sw        $s0, 0x10($sp)
/* A02868 80240028 8E30000C */  lw        $s0, 0xc($s1)
/* A0286C 8024002C 8E050000 */  lw        $a1, ($s0)
/* A02870 80240030 0C0B1EAF */  jal       get_variable
/* A02874 80240034 26100004 */   addiu    $s0, $s0, 4
/* A02878 80240038 8E050000 */  lw        $a1, ($s0)
/* A0287C 8024003C 26100004 */  addiu     $s0, $s0, 4
/* A02880 80240040 0220202D */  daddu     $a0, $s1, $zero
/* A02884 80240044 0C0B1EAF */  jal       get_variable
/* A02888 80240048 0040902D */   daddu    $s2, $v0, $zero
/* A0288C 8024004C 8E050000 */  lw        $a1, ($s0)
/* A02890 80240050 26100004 */  addiu     $s0, $s0, 4
/* A02894 80240054 0220202D */  daddu     $a0, $s1, $zero
/* A02898 80240058 0C0B1EAF */  jal       get_variable
/* A0289C 8024005C 0040B02D */   daddu    $s6, $v0, $zero
/* A028A0 80240060 8E050000 */  lw        $a1, ($s0)
/* A028A4 80240064 26100004 */  addiu     $s0, $s0, 4
/* A028A8 80240068 0220202D */  daddu     $a0, $s1, $zero
/* A028AC 8024006C 0C0B1EAF */  jal       get_variable
/* A028B0 80240070 0040A82D */   daddu    $s5, $v0, $zero
/* A028B4 80240074 8E050000 */  lw        $a1, ($s0)
/* A028B8 80240078 26100004 */  addiu     $s0, $s0, 4
/* A028BC 8024007C 0220202D */  daddu     $a0, $s1, $zero
/* A028C0 80240080 0C0B1EAF */  jal       get_variable
/* A028C4 80240084 0040A02D */   daddu    $s4, $v0, $zero
/* A028C8 80240088 0220202D */  daddu     $a0, $s1, $zero
/* A028CC 8024008C 8E050000 */  lw        $a1, ($s0)
/* A028D0 80240090 0C0B1EAF */  jal       get_variable
/* A028D4 80240094 0040802D */   daddu    $s0, $v0, $zero
/* A028D8 80240098 3C138011 */  lui       $s3, %hi(gPlayerStatus)
/* A028DC 8024009C 2673EFC8 */  addiu     $s3, $s3, %lo(gPlayerStatus)
/* A028E0 802400A0 44920000 */  mtc1      $s2, $f0
/* A028E4 802400A4 00000000 */  nop
/* A028E8 802400A8 46800020 */  cvt.s.w   $f0, $f0
/* A028EC 802400AC C6620028 */  lwc1      $f2, 0x28($s3)
/* A028F0 802400B0 3C11800B */  lui       $s1, %hi(gCurrentEncounter)
/* A028F4 802400B4 26310F10 */  addiu     $s1, $s1, %lo(gCurrentEncounter)
/* A028F8 802400B8 4602003E */  c.le.s    $f0, $f2
/* A028FC 802400BC 00000000 */  nop
/* A02900 802400C0 45000017 */  bc1f      .L80240120
/* A02904 802400C4 00000000 */   nop
/* A02908 802400C8 44960000 */  mtc1      $s6, $f0
/* A0290C 802400CC 00000000 */  nop
/* A02910 802400D0 46800020 */  cvt.s.w   $f0, $f0
/* A02914 802400D4 4600103E */  c.le.s    $f2, $f0
/* A02918 802400D8 00000000 */  nop
/* A0291C 802400DC 45000010 */  bc1f      .L80240120
/* A02920 802400E0 00000000 */   nop
/* A02924 802400E4 C6620030 */  lwc1      $f2, 0x30($s3)
/* A02928 802400E8 44950000 */  mtc1      $s5, $f0
/* A0292C 802400EC 00000000 */  nop
/* A02930 802400F0 46800020 */  cvt.s.w   $f0, $f0
/* A02934 802400F4 4602003E */  c.le.s    $f0, $f2
/* A02938 802400F8 00000000 */  nop
/* A0293C 802400FC 45000008 */  bc1f      .L80240120
/* A02940 80240100 00000000 */   nop
/* A02944 80240104 44940000 */  mtc1      $s4, $f0
/* A02948 80240108 00000000 */  nop
/* A0294C 8024010C 46800020 */  cvt.s.w   $f0, $f0
/* A02950 80240110 4600103E */  c.le.s    $f2, $f0
/* A02954 80240114 00000000 */  nop
/* A02958 80240118 45030001 */  bc1tl     .L80240120
/* A0295C 8024011C 0040802D */   daddu    $s0, $v0, $zero
.L80240120:
/* A02960 80240120 8222001C */  lb        $v0, 0x1c($s1)
/* A02964 80240124 18400009 */  blez      $v0, .L8024014C
/* A02968 80240128 0000182D */   daddu    $v1, $zero, $zero
/* A0296C 8024012C 0220202D */  daddu     $a0, $s1, $zero
.L80240130:
/* A02970 80240130 8C820028 */  lw        $v0, 0x28($a0)
/* A02974 80240134 A4500046 */  sh        $s0, 0x46($v0)
/* A02978 80240138 8222001C */  lb        $v0, 0x1c($s1)
/* A0297C 8024013C 24630001 */  addiu     $v1, $v1, 1
/* A02980 80240140 0062102A */  slt       $v0, $v1, $v0
/* A02984 80240144 1440FFFA */  bnez      $v0, .L80240130
/* A02988 80240148 24840004 */   addiu    $a0, $a0, 4
.L8024014C:
/* A0298C 8024014C 8FBF002C */  lw        $ra, 0x2c($sp)
/* A02990 80240150 8FB60028 */  lw        $s6, 0x28($sp)
/* A02994 80240154 8FB50024 */  lw        $s5, 0x24($sp)
/* A02998 80240158 8FB40020 */  lw        $s4, 0x20($sp)
/* A0299C 8024015C 8FB3001C */  lw        $s3, 0x1c($sp)
/* A029A0 80240160 8FB20018 */  lw        $s2, 0x18($sp)
/* A029A4 80240164 8FB10014 */  lw        $s1, 0x14($sp)
/* A029A8 80240168 8FB00010 */  lw        $s0, 0x10($sp)
/* A029AC 8024016C 24020002 */  addiu     $v0, $zero, 2
/* A029B0 80240170 03E00008 */  jr        $ra
/* A029B4 80240174 27BD0030 */   addiu    $sp, $sp, 0x30
/* A029B8 80240178 00000000 */  nop
/* A029BC 8024017C 00000000 */  nop
