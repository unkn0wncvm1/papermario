.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel inflict_status
/* 194820 80265F40 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 194824 80265F44 AFB00018 */  sw        $s0, 0x18($sp)
/* 194828 80265F48 0080802D */  daddu     $s0, $a0, $zero
/* 19482C 80265F4C AFB1001C */  sw        $s1, 0x1c($sp)
/* 194830 80265F50 00A0882D */  daddu     $s1, $a1, $zero
/* 194834 80265F54 AFB20020 */  sw        $s2, 0x20($sp)
/* 194838 80265F58 00C0902D */  daddu     $s2, $a2, $zero
/* 19483C 80265F5C 2E22000F */  sltiu     $v0, $s1, 0xf
/* 194840 80265F60 104000B5 */  beqz      $v0, .L80266238
/* 194844 80265F64 AFBF0024 */   sw       $ra, 0x24($sp)
/* 194848 80265F68 00111080 */  sll       $v0, $s1, 2
/* 19484C 80265F6C 3C01802A */  lui       $at, %hi(jtbl_8029D5E0_1CBEC0)
/* 194850 80265F70 00220821 */  addu      $at, $at, $v0
/* 194854 80265F74 8C22D5E0 */  lw        $v0, %lo(jtbl_8029D5E0_1CBEC0)($at)
/* 194858 80265F78 00400008 */  jr        $v0
/* 19485C 80265F7C 00000000 */   nop
glabel L80265F80_194860
/* 194860 80265F80 86020192 */  lh        $v0, 0x192($s0)
/* 194864 80265F84 1440000E */  bnez      $v0, .L80265FC0
/* 194868 80265F88 00000000 */   nop
/* 19486C 80265F8C 0C03A752 */  jal       is_ability_active
/* 194870 80265F90 2404000E */   addiu    $a0, $zero, 0xe
/* 194874 80265F94 144000A9 */  bnez      $v0, .L8026623C
/* 194878 80265F98 0000102D */   daddu    $v0, $zero, $zero
/* 19487C 80265F9C 0C03A752 */  jal       is_ability_active
/* 194880 80265FA0 24040015 */   addiu    $a0, $zero, 0x15
/* 194884 80265FA4 144000A5 */  bnez      $v0, .L8026623C
/* 194888 80265FA8 0000102D */   daddu    $v0, $zero, $zero
/* 19488C 80265FAC 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 194890 80265FB0 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 194894 80265FB4 8042008B */  lb        $v0, 0x8b($v0)
/* 194898 80265FB8 144000A0 */  bnez      $v0, .L8026623C
/* 19489C 80265FBC 0000102D */   daddu    $v0, $zero, $zero
.L80265FC0:
/* 1948A0 80265FC0 86030192 */  lh        $v1, 0x192($s0)
/* 1948A4 80265FC4 24020100 */  addiu     $v0, $zero, 0x100
/* 1948A8 80265FC8 1062009C */  beq       $v1, $v0, .L8026623C
/* 1948AC 80265FCC 24020001 */   addiu    $v0, $zero, 1
/* 1948B0 80265FD0 82020210 */  lb        $v0, 0x210($s0)
/* 1948B4 80265FD4 54510001 */  bnel      $v0, $s1, .L80265FDC
/* 1948B8 80265FD8 A211021C */   sb       $s1, 0x21c($s0)
.L80265FDC:
/* 1948BC 80265FDC 8E020440 */  lw        $v0, 0x440($s0)
/* 1948C0 80265FE0 8C42000C */  lw        $v0, 0xc($v0)
/* 1948C4 80265FE4 AC40003C */  sw        $zero, 0x3c($v0)
/* 1948C8 80265FE8 00121600 */  sll       $v0, $s2, 0x18
/* 1948CC 80265FEC 00021603 */  sra       $v0, $v0, 0x18
/* 1948D0 80265FF0 2842000A */  slti      $v0, $v0, 0xa
/* 1948D4 80265FF4 A2110210 */  sb        $s1, 0x210($s0)
/* 1948D8 80265FF8 14400003 */  bnez      $v0, .L80266008
/* 1948DC 80265FFC A2120211 */   sb       $s2, 0x211($s0)
/* 1948E0 80266000 24020009 */  addiu     $v0, $zero, 9
/* 1948E4 80266004 A2020211 */  sb        $v0, 0x211($s0)
.L80266008:
/* 1948E8 80266008 2625FFFD */  addiu     $a1, $s1, -3
/* 1948EC 8026600C 2CA20008 */  sltiu     $v0, $a1, 8
/* 1948F0 80266010 10400089 */  beqz      $v0, .L80266238
/* 1948F4 80266014 00051080 */   sll      $v0, $a1, 2
/* 1948F8 80266018 3C01802A */  lui       $at, %hi(jtbl_8029D620_1CBF00)
/* 1948FC 8026601C 00220821 */  addu      $at, $at, $v0
/* 194900 80266020 8C22D620 */  lw        $v0, %lo(jtbl_8029D620_1CBF00)($at)
/* 194904 80266024 00400008 */  jr        $v0
/* 194908 80266028 00000000 */   nop
glabel L8026602C_19490C
/* 19490C 8026602C 86030192 */  lh        $v1, 0x192($s0)
/* 194910 80266030 24020100 */  addiu     $v0, $zero, 0x100
/* 194914 80266034 10620081 */  beq       $v1, $v0, .L8026623C
/* 194918 80266038 24020001 */   addiu    $v0, $zero, 1
/* 19491C 8026603C 8E030228 */  lw        $v1, 0x228($s0)
/* 194920 80266040 10600004 */  beqz      $v1, .L80266054
/* 194924 80266044 00000000 */   nop
/* 194928 80266048 8C620000 */  lw        $v0, ($v1)
/* 19492C 8026604C 34420010 */  ori       $v0, $v0, 0x10
/* 194930 80266050 AC620000 */  sw        $v0, ($v1)
.L80266054:
/* 194934 80266054 3C013F80 */  lui       $at, 0x3f80
/* 194938 80266058 44810000 */  mtc1      $at, $f0
/* 19493C 8026605C AFA00014 */  sw        $zero, 0x14($sp)
/* 194940 80266060 E7A00010 */  swc1      $f0, 0x10($sp)
/* 194944 80266064 8E050144 */  lw        $a1, 0x144($s0)
/* 194948 80266068 8E060148 */  lw        $a2, 0x148($s0)
/* 19494C 8026606C 8E07014C */  lw        $a3, 0x14c($s0)
/* 194950 80266070 0C01CA3C */  jal       func_800728F0
/* 194954 80266074 0000202D */   daddu    $a0, $zero, $zero
/* 194958 80266078 86040436 */  lh        $a0, 0x436($s0)
/* 19495C 8026607C 24050007 */  addiu     $a1, $zero, 7
/* 194960 80266080 0C011E08 */  jal       func_80047820
/* 194964 80266084 AE020228 */   sw       $v0, 0x228($s0)
/* 194968 80266088 0809988F */  j         .L8026623C
/* 19496C 8026608C 24020001 */   addiu    $v0, $zero, 1
glabel L80266090_194970
/* 194970 80266090 0200202D */  daddu     $a0, $s0, $zero
/* 194974 80266094 0C099B6B */  jal       func_80266DAC
/* 194978 80266098 24050003 */   addiu    $a1, $zero, 3
/* 19497C 8026609C 86040436 */  lh        $a0, 0x436($s0)
/* 194980 802660A0 0C011E08 */  jal       func_80047820
/* 194984 802660A4 24050006 */   addiu    $a1, $zero, 6
/* 194988 802660A8 0809988F */  j         .L8026623C
/* 19498C 802660AC 24020001 */   addiu    $v0, $zero, 1
glabel L802660B0_194990
/* 194990 802660B0 0200202D */  daddu     $a0, $s0, $zero
/* 194994 802660B4 0C099B6B */  jal       func_80266DAC
/* 194998 802660B8 24050007 */   addiu    $a1, $zero, 7
/* 19499C 802660BC 86040436 */  lh        $a0, 0x436($s0)
/* 1949A0 802660C0 0C011E08 */  jal       func_80047820
/* 1949A4 802660C4 24050005 */   addiu    $a1, $zero, 5
/* 1949A8 802660C8 0809988F */  j         .L8026623C
/* 1949AC 802660CC 24020001 */   addiu    $v0, $zero, 1
glabel L802660D0_1949B0
/* 1949B0 802660D0 86040436 */  lh        $a0, 0x436($s0)
/* 1949B4 802660D4 0C011E08 */  jal       func_80047820
/* 1949B8 802660D8 24050004 */   addiu    $a1, $zero, 4
/* 1949BC 802660DC 0809988F */  j         .L8026623C
/* 1949C0 802660E0 24020001 */   addiu    $v0, $zero, 1
glabel L802660E4_1949C4
/* 1949C4 802660E4 0200202D */  daddu     $a0, $s0, $zero
/* 1949C8 802660E8 0C099B6B */  jal       func_80266DAC
/* 1949CC 802660EC 24050005 */   addiu    $a1, $zero, 5
/* 1949D0 802660F0 86040436 */  lh        $a0, 0x436($s0)
/* 1949D4 802660F4 0C011E08 */  jal       func_80047820
/* 1949D8 802660F8 24050003 */   addiu    $a1, $zero, 3
/* 1949DC 802660FC 0809988F */  j         .L8026623C
/* 1949E0 80266100 24020001 */   addiu    $v0, $zero, 1
glabel L80266104_1949E4
/* 1949E4 80266104 0200202D */  daddu     $a0, $s0, $zero
/* 1949E8 80266108 0C099B6B */  jal       func_80266DAC
/* 1949EC 8026610C 24050006 */   addiu    $a1, $zero, 6
/* 1949F0 80266110 86040436 */  lh        $a0, 0x436($s0)
/* 1949F4 80266114 0C011E08 */  jal       func_80047820
/* 1949F8 80266118 24050009 */   addiu    $a1, $zero, 9
/* 1949FC 8026611C 0809988F */  j         .L8026623C
/* 194A00 80266120 24020001 */   addiu    $v0, $zero, 1
glabel L80266124_194A04
/* 194A04 80266124 86040436 */  lh        $a0, 0x436($s0)
/* 194A08 80266128 0C011E08 */  jal       func_80047820
/* 194A0C 8026612C 2405000A */   addiu    $a1, $zero, 0xa
/* 194A10 80266130 0809988F */  j         .L8026623C
/* 194A14 80266134 24020001 */   addiu    $v0, $zero, 1
glabel L80266138_194A18
/* 194A18 80266138 86030192 */  lh        $v1, 0x192($s0)
/* 194A1C 8026613C 24020100 */  addiu     $v0, $zero, 0x100
/* 194A20 80266140 1062003D */  beq       $v1, $v0, .L80266238
/* 194A24 80266144 00121600 */   sll      $v0, $s2, 0x18
/* 194A28 80266148 00021603 */  sra       $v0, $v0, 0x18
/* 194A2C 8026614C 2842000A */  slti      $v0, $v0, 0xa
/* 194A30 80266150 A2110212 */  sb        $s1, 0x212($s0)
/* 194A34 80266154 14400003 */  bnez      $v0, .L80266164
/* 194A38 80266158 A2120213 */   sb       $s2, 0x213($s0)
/* 194A3C 8026615C 24020009 */  addiu     $v0, $zero, 9
/* 194A40 80266160 A2020213 */  sb        $v0, 0x213($s0)
.L80266164:
/* 194A44 80266164 0200202D */  daddu     $a0, $s0, $zero
/* 194A48 80266168 24050004 */  addiu     $a1, $zero, 4
/* 194A4C 8026616C 2402000B */  addiu     $v0, $zero, 0xb
/* 194A50 80266170 0C099B6B */  jal       func_80266DAC
/* 194A54 80266174 A202021C */   sb       $v0, 0x21c($s0)
/* 194A58 80266178 86040436 */  lh        $a0, 0x436($s0)
/* 194A5C 8026617C 0C011E4A */  jal       func_80047928
/* 194A60 80266180 2405000B */   addiu    $a1, $zero, 0xb
/* 194A64 80266184 0809988F */  j         .L8026623C
/* 194A68 80266188 24020001 */   addiu    $v0, $zero, 1
glabel L8026618C_194A6C
/* 194A6C 8026618C 86030192 */  lh        $v1, 0x192($s0)
/* 194A70 80266190 24020100 */  addiu     $v0, $zero, 0x100
/* 194A74 80266194 10620028 */  beq       $v1, $v0, .L80266238
/* 194A78 80266198 2403000C */   addiu    $v1, $zero, 0xc
/* 194A7C 8026619C 00121600 */  sll       $v0, $s2, 0x18
/* 194A80 802661A0 00021603 */  sra       $v0, $v0, 0x18
/* 194A84 802661A4 2842000A */  slti      $v0, $v0, 0xa
/* 194A88 802661A8 A2030214 */  sb        $v1, 0x214($s0)
/* 194A8C 802661AC 14400010 */  bnez      $v0, .L802661F0
/* 194A90 802661B0 A2120215 */   sb       $s2, 0x215($s0)
/* 194A94 802661B4 24020009 */  addiu     $v0, $zero, 9
/* 194A98 802661B8 0809987C */  j         .L802661F0
/* 194A9C 802661BC A2020215 */   sb       $v0, 0x215($s0)
glabel L802661C0_194AA0
/* 194AA0 802661C0 82020216 */  lb        $v0, 0x216($s0)
/* 194AA4 802661C4 0051102A */  slt       $v0, $v0, $s1
/* 194AA8 802661C8 1040001B */  beqz      $v0, .L80266238
/* 194AAC 802661CC 2403000D */   addiu    $v1, $zero, 0xd
/* 194AB0 802661D0 00121600 */  sll       $v0, $s2, 0x18
/* 194AB4 802661D4 00021603 */  sra       $v0, $v0, 0x18
/* 194AB8 802661D8 2842000A */  slti      $v0, $v0, 0xa
/* 194ABC 802661DC A2030216 */  sb        $v1, 0x216($s0)
/* 194AC0 802661E0 14400003 */  bnez      $v0, .L802661F0
/* 194AC4 802661E4 A2120217 */   sb       $s2, 0x217($s0)
/* 194AC8 802661E8 24020009 */  addiu     $v0, $zero, 9
/* 194ACC 802661EC A2020217 */  sb        $v0, 0x217($s0)
.L802661F0:
/* 194AD0 802661F0 0809988E */  j         .L80266238
/* 194AD4 802661F4 A203021C */   sb       $v1, 0x21c($s0)
glabel L802661F8_194AD8
/* 194AD8 802661F8 86030192 */  lh        $v1, 0x192($s0)
/* 194ADC 802661FC 24020100 */  addiu     $v0, $zero, 0x100
/* 194AE0 80266200 1062000D */  beq       $v1, $v0, .L80266238
/* 194AE4 80266204 2403000E */   addiu    $v1, $zero, 0xe
/* 194AE8 80266208 00121600 */  sll       $v0, $s2, 0x18
/* 194AEC 8026620C 00021603 */  sra       $v0, $v0, 0x18
/* 194AF0 80266210 2842000A */  slti      $v0, $v0, 0xa
/* 194AF4 80266214 A2030218 */  sb        $v1, 0x218($s0)
/* 194AF8 80266218 14400003 */  bnez      $v0, .L80266228
/* 194AFC 8026621C A2120219 */   sb       $s2, 0x219($s0)
/* 194B00 80266220 24020009 */  addiu     $v0, $zero, 9
/* 194B04 80266224 A2020219 */  sb        $v0, 0x219($s0)
.L80266228:
/* 194B08 80266228 86040436 */  lh        $a0, 0x436($s0)
/* 194B0C 8026622C 2405000E */  addiu     $a1, $zero, 0xe
/* 194B10 80266230 0C011E8C */  jal       func_80047A30
/* 194B14 80266234 A203021C */   sb       $v1, 0x21c($s0)
.L80266238:
glabel L80266238_194B18
/* 194B18 80266238 24020001 */  addiu     $v0, $zero, 1
.L8026623C:
/* 194B1C 8026623C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 194B20 80266240 8FB20020 */  lw        $s2, 0x20($sp)
/* 194B24 80266244 8FB1001C */  lw        $s1, 0x1c($sp)
/* 194B28 80266248 8FB00018 */  lw        $s0, 0x18($sp)
/* 194B2C 8026624C 03E00008 */  jr        $ra
/* 194B30 80266250 27BD0028 */   addiu    $sp, $sp, 0x28
