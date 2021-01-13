.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80263FE8
/* 1928C8 80263FE8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1928CC 80263FEC AFB00010 */  sw        $s0, 0x10($sp)
/* 1928D0 80263FF0 0080802D */  daddu     $s0, $a0, $zero
/* 1928D4 80263FF4 AFB20018 */  sw        $s2, 0x18($sp)
/* 1928D8 80263FF8 00A0902D */  daddu     $s2, $a1, $zero
/* 1928DC 80263FFC AFB10014 */  sw        $s1, 0x14($sp)
/* 1928E0 80264000 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1928E4 80264004 0C09A75B */  jal       get_actor
/* 1928E8 80264008 00C0882D */   daddu    $s1, $a2, $zero
/* 1928EC 8026400C 0040202D */  daddu     $a0, $v0, $zero
/* 1928F0 80264010 32100700 */  andi      $s0, $s0, 0x700
/* 1928F4 80264014 24020100 */  addiu     $v0, $zero, 0x100
/* 1928F8 80264018 12020009 */  beq       $s0, $v0, .L80264040
/* 1928FC 8026401C 2A020101 */   slti     $v0, $s0, 0x101
/* 192900 80264020 50400005 */  beql      $v0, $zero, .L80264038
/* 192904 80264024 24020200 */   addiu    $v0, $zero, 0x200
/* 192908 80264028 12000007 */  beqz      $s0, .L80264048
/* 19290C 8026402C 00000000 */   nop
/* 192910 80264030 0809901B */  j         .L8026406C
/* 192914 80264034 00000000 */   nop
.L80264038:
/* 192918 80264038 1602000C */  bne       $s0, $v0, .L8026406C
/* 19291C 8026403C 00000000 */   nop
.L80264040:
/* 192920 80264040 16400005 */  bnez      $s2, .L80264058
/* 192924 80264044 00000000 */   nop
.L80264048:
/* 192928 80264048 8C820000 */  lw        $v0, ($a0)
/* 19292C 8026404C 00511025 */  or        $v0, $v0, $s1
/* 192930 80264050 0809901B */  j         .L8026406C
/* 192934 80264054 AC820000 */   sw       $v0, ($a0)
.L80264058:
/* 192938 80264058 0C099117 */  jal       get_actor_part
/* 19293C 8026405C 0240282D */   daddu    $a1, $s2, $zero
/* 192940 80264060 8C430000 */  lw        $v1, ($v0)
/* 192944 80264064 00711825 */  or        $v1, $v1, $s1
/* 192948 80264068 AC430000 */  sw        $v1, ($v0)
.L8026406C:
/* 19294C 8026406C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 192950 80264070 8FB20018 */  lw        $s2, 0x18($sp)
/* 192954 80264074 8FB10014 */  lw        $s1, 0x14($sp)
/* 192958 80264078 8FB00010 */  lw        $s0, 0x10($sp)
/* 19295C 8026407C 03E00008 */  jr        $ra
/* 192960 80264080 27BD0020 */   addiu    $sp, $sp, 0x20
