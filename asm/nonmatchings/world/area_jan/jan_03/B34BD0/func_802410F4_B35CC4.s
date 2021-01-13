.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802410F4_B35CC4
/* B35CC4 802410F4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B35CC8 802410F8 AFB10014 */  sw        $s1, 0x14($sp)
/* B35CCC 802410FC 0080882D */  daddu     $s1, $a0, $zero
/* B35CD0 80241100 AFBF001C */  sw        $ra, 0x1c($sp)
/* B35CD4 80241104 AFB20018 */  sw        $s2, 0x18($sp)
/* B35CD8 80241108 AFB00010 */  sw        $s0, 0x10($sp)
/* B35CDC 8024110C 8E300148 */  lw        $s0, 0x148($s1)
/* B35CE0 80241110 86040008 */  lh        $a0, 8($s0)
/* B35CE4 80241114 0C00EABB */  jal       get_npc_unsafe
/* B35CE8 80241118 00A0902D */   daddu    $s2, $a1, $zero
/* B35CEC 8024111C 8E0300D0 */  lw        $v1, 0xd0($s0)
/* B35CF0 80241120 8E240078 */  lw        $a0, 0x78($s1)
/* B35CF4 80241124 8C630000 */  lw        $v1, ($v1)
/* B35CF8 80241128 0083182A */  slt       $v1, $a0, $v1
/* B35CFC 8024112C 10600013 */  beqz      $v1, .L8024117C
/* B35D00 80241130 0040302D */   daddu    $a2, $v0, $zero
/* B35D04 80241134 00041040 */  sll       $v0, $a0, 1
/* B35D08 80241138 00441021 */  addu      $v0, $v0, $a0
/* B35D0C 8024113C 00022880 */  sll       $a1, $v0, 2
.L80241140:
/* B35D10 80241140 8E0300D0 */  lw        $v1, 0xd0($s0)
/* B35D14 80241144 C4C2003C */  lwc1      $f2, 0x3c($a2)
/* B35D18 80241148 00A31021 */  addu      $v0, $a1, $v1
/* B35D1C 8024114C C4400008 */  lwc1      $f0, 8($v0)
/* B35D20 80241150 46800020 */  cvt.s.w   $f0, $f0
/* B35D24 80241154 4602003E */  c.le.s    $f0, $f2
/* B35D28 80241158 00000000 */  nop
/* B35D2C 8024115C 45020003 */  bc1fl     .L8024116C
/* B35D30 80241160 24840001 */   addiu    $a0, $a0, 1
/* B35D34 80241164 0809045F */  j         .L8024117C
/* B35D38 80241168 AE240078 */   sw       $a0, 0x78($s1)
.L8024116C:
/* B35D3C 8024116C 8C620000 */  lw        $v0, ($v1)
/* B35D40 80241170 0082102A */  slt       $v0, $a0, $v0
/* B35D44 80241174 1440FFF2 */  bnez      $v0, .L80241140
/* B35D48 80241178 24A5000C */   addiu    $a1, $a1, 0xc
.L8024117C:
/* B35D4C 8024117C C6400000 */  lwc1      $f0, ($s2)
/* B35D50 80241180 E4C00018 */  swc1      $f0, 0x18($a2)
/* B35D54 80241184 8E0200CC */  lw        $v0, 0xcc($s0)
/* B35D58 80241188 8C420004 */  lw        $v0, 4($v0)
/* B35D5C 8024118C ACC20028 */  sw        $v0, 0x28($a2)
/* B35D60 80241190 24020001 */  addiu     $v0, $zero, 1
/* B35D64 80241194 AE200074 */  sw        $zero, 0x74($s1)
/* B35D68 80241198 AE220070 */  sw        $v0, 0x70($s1)
/* B35D6C 8024119C 8FBF001C */  lw        $ra, 0x1c($sp)
/* B35D70 802411A0 8FB20018 */  lw        $s2, 0x18($sp)
/* B35D74 802411A4 8FB10014 */  lw        $s1, 0x14($sp)
/* B35D78 802411A8 8FB00010 */  lw        $s0, 0x10($sp)
/* B35D7C 802411AC 03E00008 */  jr        $ra
/* B35D80 802411B0 27BD0020 */   addiu    $sp, $sp, 0x20
