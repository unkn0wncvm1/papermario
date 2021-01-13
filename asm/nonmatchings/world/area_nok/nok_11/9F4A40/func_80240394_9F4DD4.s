.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240394_9F4DD4
/* 9F4DD4 80240394 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 9F4DD8 80240398 AFB3005C */  sw        $s3, 0x5c($sp)
/* 9F4DDC 8024039C 0080982D */  daddu     $s3, $a0, $zero
/* 9F4DE0 802403A0 AFBF0068 */  sw        $ra, 0x68($sp)
/* 9F4DE4 802403A4 AFB50064 */  sw        $s5, 0x64($sp)
/* 9F4DE8 802403A8 AFB40060 */  sw        $s4, 0x60($sp)
/* 9F4DEC 802403AC AFB20058 */  sw        $s2, 0x58($sp)
/* 9F4DF0 802403B0 AFB10054 */  sw        $s1, 0x54($sp)
/* 9F4DF4 802403B4 AFB00050 */  sw        $s0, 0x50($sp)
/* 9F4DF8 802403B8 8E710148 */  lw        $s1, 0x148($s3)
/* 9F4DFC 802403BC 86240008 */  lh        $a0, 8($s1)
/* 9F4E00 802403C0 0C00EABB */  jal       get_npc_unsafe
/* 9F4E04 802403C4 00A0802D */   daddu    $s0, $a1, $zero
/* 9F4E08 802403C8 8E63000C */  lw        $v1, 0xc($s3)
/* 9F4E0C 802403CC 0260202D */  daddu     $a0, $s3, $zero
/* 9F4E10 802403D0 8C650000 */  lw        $a1, ($v1)
/* 9F4E14 802403D4 0C0B1EAF */  jal       get_variable
/* 9F4E18 802403D8 0040902D */   daddu    $s2, $v0, $zero
/* 9F4E1C 802403DC AFA00028 */  sw        $zero, 0x28($sp)
/* 9F4E20 802403E0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9F4E24 802403E4 8C630030 */  lw        $v1, 0x30($v1)
/* 9F4E28 802403E8 AFA3002C */  sw        $v1, 0x2c($sp)
/* 9F4E2C 802403EC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9F4E30 802403F0 8C63001C */  lw        $v1, 0x1c($v1)
/* 9F4E34 802403F4 AFA30030 */  sw        $v1, 0x30($sp)
/* 9F4E38 802403F8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9F4E3C 802403FC 8C630024 */  lw        $v1, 0x24($v1)
/* 9F4E40 80240400 AFA30034 */  sw        $v1, 0x34($sp)
/* 9F4E44 80240404 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9F4E48 80240408 8C630028 */  lw        $v1, 0x28($v1)
/* 9F4E4C 8024040C 27B50028 */  addiu     $s5, $sp, 0x28
/* 9F4E50 80240410 AFA30038 */  sw        $v1, 0x38($sp)
/* 9F4E54 80240414 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9F4E58 80240418 3C0142C8 */  lui       $at, 0x42c8
/* 9F4E5C 8024041C 44810000 */  mtc1      $at, $f0
/* 9F4E60 80240420 8C63002C */  lw        $v1, 0x2c($v1)
/* 9F4E64 80240424 0040A02D */  daddu     $s4, $v0, $zero
/* 9F4E68 80240428 E7A00040 */  swc1      $f0, 0x40($sp)
/* 9F4E6C 8024042C A7A00044 */  sh        $zero, 0x44($sp)
/* 9F4E70 80240430 12000009 */  beqz      $s0, .L80240458
/* 9F4E74 80240434 AFA3003C */   sw       $v1, 0x3c($sp)
/* 9F4E78 80240438 864300A8 */  lh        $v1, 0xa8($s2)
/* 9F4E7C 8024043C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9F4E80 80240440 AE20008C */  sw        $zero, 0x8c($s1)
/* 9F4E84 80240444 A22000B5 */  sb        $zero, 0xb5($s1)
/* 9F4E88 80240448 34420008 */  ori       $v0, $v0, 8
/* 9F4E8C 8024044C AE230084 */  sw        $v1, 0x84($s1)
/* 9F4E90 80240450 0809011A */  j         .L80240468
/* 9F4E94 80240454 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240458:
/* 9F4E98 80240458 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9F4E9C 8024045C 30420004 */  andi      $v0, $v0, 4
/* 9F4EA0 80240460 10400047 */  beqz      $v0, .L80240580
/* 9F4EA4 80240464 00000000 */   nop
.L80240468:
/* 9F4EA8 80240468 AE600070 */  sw        $zero, 0x70($s3)
/* 9F4EAC 8024046C A640008E */  sh        $zero, 0x8e($s2)
/* 9F4EB0 80240470 8E2300CC */  lw        $v1, 0xcc($s1)
/* 9F4EB4 80240474 2404F7FF */  addiu     $a0, $zero, -0x801
/* 9F4EB8 80240478 A2200007 */  sb        $zero, 7($s1)
/* 9F4EBC 8024047C 8E420000 */  lw        $v0, ($s2)
/* 9F4EC0 80240480 8C630000 */  lw        $v1, ($v1)
/* 9F4EC4 80240484 00441024 */  and       $v0, $v0, $a0
/* 9F4EC8 80240488 AE420000 */  sw        $v0, ($s2)
/* 9F4ECC 8024048C AE430028 */  sw        $v1, 0x28($s2)
/* 9F4ED0 80240490 96220086 */  lhu       $v0, 0x86($s1)
/* 9F4ED4 80240494 A64200A8 */  sh        $v0, 0xa8($s2)
/* 9F4ED8 80240498 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9F4EDC 8024049C AE200090 */  sw        $zero, 0x90($s1)
/* 9F4EE0 802404A0 8C420034 */  lw        $v0, 0x34($v0)
/* 9F4EE4 802404A4 14400006 */  bnez      $v0, .L802404C0
/* 9F4EE8 802404A8 2403FDFF */   addiu    $v1, $zero, -0x201
/* 9F4EEC 802404AC 8E420000 */  lw        $v0, ($s2)
/* 9F4EF0 802404B0 2403FFF7 */  addiu     $v1, $zero, -9
/* 9F4EF4 802404B4 34420200 */  ori       $v0, $v0, 0x200
/* 9F4EF8 802404B8 08090133 */  j         .L802404CC
/* 9F4EFC 802404BC 00431024 */   and      $v0, $v0, $v1
.L802404C0:
/* 9F4F00 802404C0 8E420000 */  lw        $v0, ($s2)
/* 9F4F04 802404C4 00431024 */  and       $v0, $v0, $v1
/* 9F4F08 802404C8 34420008 */  ori       $v0, $v0, 8
.L802404CC:
/* 9F4F0C 802404CC AE420000 */  sw        $v0, ($s2)
/* 9F4F10 802404D0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9F4F14 802404D4 30420004 */  andi      $v0, $v0, 4
/* 9F4F18 802404D8 1040001E */  beqz      $v0, .L80240554
/* 9F4F1C 802404DC 24040002 */   addiu    $a0, $zero, 2
/* 9F4F20 802404E0 0240282D */  daddu     $a1, $s2, $zero
/* 9F4F24 802404E4 0000302D */  daddu     $a2, $zero, $zero
/* 9F4F28 802404E8 24020063 */  addiu     $v0, $zero, 0x63
/* 9F4F2C 802404EC AE620070 */  sw        $v0, 0x70($s3)
/* 9F4F30 802404F0 AE600074 */  sw        $zero, 0x74($s3)
/* 9F4F34 802404F4 864300A8 */  lh        $v1, 0xa8($s2)
/* 9F4F38 802404F8 3C013F80 */  lui       $at, 0x3f80
/* 9F4F3C 802404FC 44810000 */  mtc1      $at, $f0
/* 9F4F40 80240500 3C014000 */  lui       $at, 0x4000
/* 9F4F44 80240504 44811000 */  mtc1      $at, $f2
/* 9F4F48 80240508 3C01C1A0 */  lui       $at, 0xc1a0
/* 9F4F4C 8024050C 44812000 */  mtc1      $at, $f4
/* 9F4F50 80240510 24020028 */  addiu     $v0, $zero, 0x28
/* 9F4F54 80240514 AFA2001C */  sw        $v0, 0x1c($sp)
/* 9F4F58 80240518 44833000 */  mtc1      $v1, $f6
/* 9F4F5C 8024051C 00000000 */  nop
/* 9F4F60 80240520 468031A0 */  cvt.s.w   $f6, $f6
/* 9F4F64 80240524 44073000 */  mfc1      $a3, $f6
/* 9F4F68 80240528 27A20048 */  addiu     $v0, $sp, 0x48
/* 9F4F6C 8024052C AFA20020 */  sw        $v0, 0x20($sp)
/* 9F4F70 80240530 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9F4F74 80240534 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9F4F78 80240538 0C01BFA4 */  jal       fx_emote
/* 9F4F7C 8024053C E7A40018 */   swc1     $f4, 0x18($sp)
/* 9F4F80 80240540 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9F4F84 80240544 2403FFFB */  addiu     $v1, $zero, -5
/* 9F4F88 80240548 00431024 */  and       $v0, $v0, $v1
/* 9F4F8C 8024054C 08090160 */  j         .L80240580
/* 9F4F90 80240550 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240554:
/* 9F4F94 80240554 8E220000 */  lw        $v0, ($s1)
/* 9F4F98 80240558 3C034000 */  lui       $v1, 0x4000
/* 9F4F9C 8024055C 00431024 */  and       $v0, $v0, $v1
/* 9F4FA0 80240560 10400007 */  beqz      $v0, .L80240580
/* 9F4FA4 80240564 3C03BFFF */   lui      $v1, 0xbfff
/* 9F4FA8 80240568 2402000C */  addiu     $v0, $zero, 0xc
/* 9F4FAC 8024056C AE620070 */  sw        $v0, 0x70($s3)
/* 9F4FB0 80240570 8E220000 */  lw        $v0, ($s1)
/* 9F4FB4 80240574 3463FFFF */  ori       $v1, $v1, 0xffff
/* 9F4FB8 80240578 00431024 */  and       $v0, $v0, $v1
/* 9F4FBC 8024057C AE220000 */  sw        $v0, ($s1)
.L80240580:
/* 9F4FC0 80240580 8E220090 */  lw        $v0, 0x90($s1)
/* 9F4FC4 80240584 1840000C */  blez      $v0, .L802405B8
/* 9F4FC8 80240588 2442FFFF */   addiu    $v0, $v0, -1
/* 9F4FCC 8024058C 14400087 */  bnez      $v0, .L802407AC
/* 9F4FD0 80240590 AE220090 */   sw       $v0, 0x90($s1)
/* 9F4FD4 80240594 3C03FFAA */  lui       $v1, 0xffaa
/* 9F4FD8 80240598 8E420028 */  lw        $v0, 0x28($s2)
/* 9F4FDC 8024059C 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* 9F4FE0 802405A0 00431021 */  addu      $v0, $v0, $v1
/* 9F4FE4 802405A4 2C420002 */  sltiu     $v0, $v0, 2
/* 9F4FE8 802405A8 10400003 */  beqz      $v0, .L802405B8
/* 9F4FEC 802405AC 3C020055 */   lui      $v0, 0x55
/* 9F4FF0 802405B0 3442000C */  ori       $v0, $v0, 0xc
/* 9F4FF4 802405B4 AE420028 */  sw        $v0, 0x28($s2)
.L802405B8:
/* 9F4FF8 802405B8 8E630070 */  lw        $v1, 0x70($s3)
/* 9F4FFC 802405BC 2402000C */  addiu     $v0, $zero, 0xc
/* 9F5000 802405C0 10620048 */  beq       $v1, $v0, .L802406E4
/* 9F5004 802405C4 2862000D */   slti     $v0, $v1, 0xd
/* 9F5008 802405C8 1040000F */  beqz      $v0, .L80240608
/* 9F500C 802405CC 24100001 */   addiu    $s0, $zero, 1
/* 9F5010 802405D0 1070001E */  beq       $v1, $s0, .L8024064C
/* 9F5014 802405D4 28620002 */   slti     $v0, $v1, 2
/* 9F5018 802405D8 10400005 */  beqz      $v0, .L802405F0
/* 9F501C 802405DC 24020002 */   addiu    $v0, $zero, 2
/* 9F5020 802405E0 10600015 */  beqz      $v1, .L80240638
/* 9F5024 802405E4 0260202D */   daddu    $a0, $s3, $zero
/* 9F5028 802405E8 080901D0 */  j         .L80240740
/* 9F502C 802405EC 00000000 */   nop
.L802405F0:
/* 9F5030 802405F0 1062001C */  beq       $v1, $v0, .L80240664
/* 9F5034 802405F4 24020003 */   addiu    $v0, $zero, 3
/* 9F5038 802405F8 10620035 */  beq       $v1, $v0, .L802406D0
/* 9F503C 802405FC 0260202D */   daddu    $a0, $s3, $zero
/* 9F5040 80240600 080901D0 */  j         .L80240740
/* 9F5044 80240604 00000000 */   nop
.L80240608:
/* 9F5048 80240608 2402000E */  addiu     $v0, $zero, 0xe
/* 9F504C 8024060C 1062003F */  beq       $v1, $v0, .L8024070C
/* 9F5050 80240610 0062102A */   slt      $v0, $v1, $v0
/* 9F5054 80240614 14400038 */  bnez      $v0, .L802406F8
/* 9F5058 80240618 0260202D */   daddu    $a0, $s3, $zero
/* 9F505C 8024061C 2402000F */  addiu     $v0, $zero, 0xf
/* 9F5060 80240620 10620040 */  beq       $v1, $v0, .L80240724
/* 9F5064 80240624 24020063 */   addiu    $v0, $zero, 0x63
/* 9F5068 80240628 10620043 */  beq       $v1, $v0, .L80240738
/* 9F506C 8024062C 00000000 */   nop
/* 9F5070 80240630 080901D0 */  j         .L80240740
/* 9F5074 80240634 00000000 */   nop
.L80240638:
/* 9F5078 80240638 0280282D */  daddu     $a1, $s4, $zero
/* 9F507C 8024063C 0C012568 */  jal       func_800495A0
/* 9F5080 80240640 02A0302D */   daddu    $a2, $s5, $zero
/* 9F5084 80240644 96220086 */  lhu       $v0, 0x86($s1)
/* 9F5088 80240648 A64200A8 */  sh        $v0, 0xa8($s2)
.L8024064C:
/* 9F508C 8024064C 0260202D */  daddu     $a0, $s3, $zero
/* 9F5090 80240650 0280282D */  daddu     $a1, $s4, $zero
/* 9F5094 80240654 0C0125AE */  jal       func_800496B8
/* 9F5098 80240658 02A0302D */   daddu    $a2, $s5, $zero
/* 9F509C 8024065C 080901D0 */  j         .L80240740
/* 9F50A0 80240660 00000000 */   nop
.L80240664:
/* 9F50A4 80240664 0260202D */  daddu     $a0, $s3, $zero
/* 9F50A8 80240668 0280282D */  daddu     $a1, $s4, $zero
/* 9F50AC 8024066C 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* 9F50B0 80240670 02A0302D */   daddu    $a2, $s5, $zero
/* 9F50B4 80240674 8E230088 */  lw        $v1, 0x88($s1)
/* 9F50B8 80240678 24020006 */  addiu     $v0, $zero, 6
/* 9F50BC 8024067C 14620014 */  bne       $v1, $v0, .L802406D0
/* 9F50C0 80240680 0260202D */   daddu    $a0, $s3, $zero
/* 9F50C4 80240684 0C00A67F */  jal       rand_int
/* 9F50C8 80240688 24040064 */   addiu    $a0, $zero, 0x64
/* 9F50CC 8024068C 28420021 */  slti      $v0, $v0, 0x21
/* 9F50D0 80240690 5040000F */  beql      $v0, $zero, .L802406D0
/* 9F50D4 80240694 0260202D */   daddu    $a0, $s3, $zero
/* 9F50D8 80240698 8E22008C */  lw        $v0, 0x8c($s1)
/* 9F50DC 8024069C 10400005 */  beqz      $v0, .L802406B4
/* 9F50E0 802406A0 3C020055 */   lui      $v0, 0x55
/* 9F50E4 802406A4 3442002F */  ori       $v0, $v0, 0x2f
/* 9F50E8 802406A8 AE20008C */  sw        $zero, 0x8c($s1)
/* 9F50EC 802406AC 080901B0 */  j         .L802406C0
/* 9F50F0 802406B0 A22000B5 */   sb       $zero, 0xb5($s1)
.L802406B4:
/* 9F50F4 802406B4 3442002E */  ori       $v0, $v0, 0x2e
/* 9F50F8 802406B8 AE30008C */  sw        $s0, 0x8c($s1)
/* 9F50FC 802406BC A23000B5 */  sb        $s0, 0xb5($s1)
.L802406C0:
/* 9F5100 802406C0 AE420028 */  sw        $v0, 0x28($s2)
/* 9F5104 802406C4 24020007 */  addiu     $v0, $zero, 7
/* 9F5108 802406C8 080901EB */  j         .L802407AC
/* 9F510C 802406CC AE220090 */   sw       $v0, 0x90($s1)
.L802406D0:
/* 9F5110 802406D0 0280282D */  daddu     $a1, $s4, $zero
/* 9F5114 802406D4 0C012701 */  jal       func_80049C04
/* 9F5118 802406D8 02A0302D */   daddu    $a2, $s5, $zero
/* 9F511C 802406DC 080901D0 */  j         .L80240740
/* 9F5120 802406E0 00000000 */   nop
.L802406E4:
/* 9F5124 802406E4 0260202D */  daddu     $a0, $s3, $zero
/* 9F5128 802406E8 0280282D */  daddu     $a1, $s4, $zero
/* 9F512C 802406EC 0C090000 */  jal       nok_11_set_script_owner_npc_anim
/* 9F5130 802406F0 02A0302D */   daddu    $a2, $s5, $zero
/* 9F5134 802406F4 0260202D */  daddu     $a0, $s3, $zero
.L802406F8:
/* 9F5138 802406F8 0280282D */  daddu     $a1, $s4, $zero
/* 9F513C 802406FC 0C09001F */  jal       func_8024007C_9F4ABC
/* 9F5140 80240700 02A0302D */   daddu    $a2, $s5, $zero
/* 9F5144 80240704 080901D0 */  j         .L80240740
/* 9F5148 80240708 00000000 */   nop
.L8024070C:
/* 9F514C 8024070C 0260202D */  daddu     $a0, $s3, $zero
/* 9F5150 80240710 0280282D */  daddu     $a1, $s4, $zero
/* 9F5154 80240714 0C09006C */  jal       nok_11_UnkNpcAIFunc12
/* 9F5158 80240718 02A0302D */   daddu    $a2, $s5, $zero
/* 9F515C 8024071C 080901D0 */  j         .L80240740
/* 9F5160 80240720 00000000 */   nop
.L80240724:
/* 9F5164 80240724 0280282D */  daddu     $a1, $s4, $zero
/* 9F5168 80240728 0C0900C5 */  jal       nok_11_set_script_owner_npc_col_height
/* 9F516C 8024072C 02A0302D */   daddu    $a2, $s5, $zero
/* 9F5170 80240730 080901D0 */  j         .L80240740
/* 9F5174 80240734 00000000 */   nop
.L80240738:
/* 9F5178 80240738 0C0129CF */  jal       func_8004A73C
/* 9F517C 8024073C 0260202D */   daddu    $a0, $s3, $zero
.L80240740:
/* 9F5180 80240740 8E230088 */  lw        $v1, 0x88($s1)
/* 9F5184 80240744 24020006 */  addiu     $v0, $zero, 6
/* 9F5188 80240748 14620019 */  bne       $v1, $v0, .L802407B0
/* 9F518C 8024074C 0000102D */   daddu    $v0, $zero, $zero
/* 9F5190 80240750 8E22008C */  lw        $v0, 0x8c($s1)
/* 9F5194 80240754 10400003 */  beqz      $v0, .L80240764
/* 9F5198 80240758 24020001 */   addiu    $v0, $zero, 1
/* 9F519C 8024075C 080901DA */  j         .L80240768
/* 9F51A0 80240760 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240764:
/* 9F51A4 80240764 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240768:
/* 9F51A8 80240768 8E22008C */  lw        $v0, 0x8c($s1)
/* 9F51AC 8024076C 1040000F */  beqz      $v0, .L802407AC
/* 9F51B0 80240770 3C03FFAA */   lui      $v1, 0xffaa
/* 9F51B4 80240774 8E420028 */  lw        $v0, 0x28($s2)
/* 9F51B8 80240778 3463FFFC */  ori       $v1, $v1, 0xfffc
/* 9F51BC 8024077C 00431821 */  addu      $v1, $v0, $v1
/* 9F51C0 80240780 2C620015 */  sltiu     $v0, $v1, 0x15
/* 9F51C4 80240784 10400009 */  beqz      $v0, .L802407AC
/* 9F51C8 80240788 00031080 */   sll      $v0, $v1, 2
/* 9F51CC 8024078C 3C018024 */  lui       $at, %hi(jtbl_80245CF8_9FA738)
/* 9F51D0 80240790 00220821 */  addu      $at, $at, $v0
/* 9F51D4 80240794 8C225CF8 */  lw        $v0, %lo(jtbl_80245CF8_9FA738)($at)
/* 9F51D8 80240798 00400008 */  jr        $v0
/* 9F51DC 8024079C 00000000 */   nop
glabel L802407A0_9F51E0
/* 9F51E0 802407A0 8E420028 */  lw        $v0, 0x28($s2)
/* 9F51E4 802407A4 24420001 */  addiu     $v0, $v0, 1
/* 9F51E8 802407A8 AE420028 */  sw        $v0, 0x28($s2)
.L802407AC:
glabel L802407AC_9F51EC
/* 9F51EC 802407AC 0000102D */  daddu     $v0, $zero, $zero
.L802407B0:
/* 9F51F0 802407B0 8FBF0068 */  lw        $ra, 0x68($sp)
/* 9F51F4 802407B4 8FB50064 */  lw        $s5, 0x64($sp)
/* 9F51F8 802407B8 8FB40060 */  lw        $s4, 0x60($sp)
/* 9F51FC 802407BC 8FB3005C */  lw        $s3, 0x5c($sp)
/* 9F5200 802407C0 8FB20058 */  lw        $s2, 0x58($sp)
/* 9F5204 802407C4 8FB10054 */  lw        $s1, 0x54($sp)
/* 9F5208 802407C8 8FB00050 */  lw        $s0, 0x50($sp)
/* 9F520C 802407CC 03E00008 */  jr        $ra
/* 9F5210 802407D0 27BD0070 */   addiu    $sp, $sp, 0x70
