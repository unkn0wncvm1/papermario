.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802414C4_824784
/* 824784 802414C4 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 824788 802414C8 AFB40058 */  sw        $s4, 0x58($sp)
/* 82478C 802414CC 0080A02D */  daddu     $s4, $a0, $zero
/* 824790 802414D0 AFBF0060 */  sw        $ra, 0x60($sp)
/* 824794 802414D4 AFB5005C */  sw        $s5, 0x5c($sp)
/* 824798 802414D8 AFB30054 */  sw        $s3, 0x54($sp)
/* 82479C 802414DC AFB20050 */  sw        $s2, 0x50($sp)
/* 8247A0 802414E0 AFB1004C */  sw        $s1, 0x4c($sp)
/* 8247A4 802414E4 AFB00048 */  sw        $s0, 0x48($sp)
/* 8247A8 802414E8 8E910148 */  lw        $s1, 0x148($s4)
/* 8247AC 802414EC 86240008 */  lh        $a0, 8($s1)
/* 8247B0 802414F0 0C00EABB */  jal       get_npc_unsafe
/* 8247B4 802414F4 00A0802D */   daddu    $s0, $a1, $zero
/* 8247B8 802414F8 8E83000C */  lw        $v1, 0xc($s4)
/* 8247BC 802414FC 0280202D */  daddu     $a0, $s4, $zero
/* 8247C0 80241500 8C650000 */  lw        $a1, ($v1)
/* 8247C4 80241504 0C0B1EAF */  jal       get_variable
/* 8247C8 80241508 0040902D */   daddu    $s2, $v0, $zero
/* 8247CC 8024150C AFA00018 */  sw        $zero, 0x18($sp)
/* 8247D0 80241510 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8247D4 80241514 8C630094 */  lw        $v1, 0x94($v1)
/* 8247D8 80241518 AFA3001C */  sw        $v1, 0x1c($sp)
/* 8247DC 8024151C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8247E0 80241520 8C630080 */  lw        $v1, 0x80($v1)
/* 8247E4 80241524 AFA30020 */  sw        $v1, 0x20($sp)
/* 8247E8 80241528 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8247EC 8024152C 8C630088 */  lw        $v1, 0x88($v1)
/* 8247F0 80241530 AFA30024 */  sw        $v1, 0x24($sp)
/* 8247F4 80241534 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8247F8 80241538 8C63008C */  lw        $v1, 0x8c($v1)
/* 8247FC 8024153C 27B50018 */  addiu     $s5, $sp, 0x18
/* 824800 80241540 AFA30028 */  sw        $v1, 0x28($sp)
/* 824804 80241544 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 824808 80241548 3C014282 */  lui       $at, 0x4282
/* 82480C 8024154C 44810000 */  mtc1      $at, $f0
/* 824810 80241550 8C630090 */  lw        $v1, 0x90($v1)
/* 824814 80241554 0040982D */  daddu     $s3, $v0, $zero
/* 824818 80241558 E7A00030 */  swc1      $f0, 0x30($sp)
/* 82481C 8024155C A7A00034 */  sh        $zero, 0x34($sp)
/* 824820 80241560 16000005 */  bnez      $s0, .L80241578
/* 824824 80241564 AFA3002C */   sw       $v1, 0x2c($sp)
/* 824828 80241568 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 82482C 8024156C 30420004 */  andi      $v0, $v0, 4
/* 824830 80241570 10400044 */  beqz      $v0, .L80241684
/* 824834 80241574 00000000 */   nop
.L80241578:
/* 824838 80241578 2404F7FF */  addiu     $a0, $zero, -0x801
/* 82483C 8024157C AE800070 */  sw        $zero, 0x70($s4)
/* 824840 80241580 A640008E */  sh        $zero, 0x8e($s2)
/* 824844 80241584 8E2200CC */  lw        $v0, 0xcc($s1)
/* 824848 80241588 8E430000 */  lw        $v1, ($s2)
/* 82484C 8024158C 8C420000 */  lw        $v0, ($v0)
/* 824850 80241590 00641824 */  and       $v1, $v1, $a0
/* 824854 80241594 AE430000 */  sw        $v1, ($s2)
/* 824858 80241598 AE420028 */  sw        $v0, 0x28($s2)
/* 82485C 8024159C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 824860 802415A0 8C420098 */  lw        $v0, 0x98($v0)
/* 824864 802415A4 54400005 */  bnel      $v0, $zero, .L802415BC
/* 824868 802415A8 2402FDFF */   addiu    $v0, $zero, -0x201
/* 82486C 802415AC 34620200 */  ori       $v0, $v1, 0x200
/* 824870 802415B0 2403FFF7 */  addiu     $v1, $zero, -9
/* 824874 802415B4 08090571 */  j         .L802415C4
/* 824878 802415B8 00431024 */   and      $v0, $v0, $v1
.L802415BC:
/* 82487C 802415BC 00621024 */  and       $v0, $v1, $v0
/* 824880 802415C0 34420008 */  ori       $v0, $v0, 8
.L802415C4:
/* 824884 802415C4 AE420000 */  sw        $v0, ($s2)
/* 824888 802415C8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 82488C 802415CC 30420004 */  andi      $v0, $v0, 4
/* 824890 802415D0 10400008 */  beqz      $v0, .L802415F4
/* 824894 802415D4 24020063 */   addiu    $v0, $zero, 0x63
/* 824898 802415D8 AE820070 */  sw        $v0, 0x70($s4)
/* 82489C 802415DC AE800074 */  sw        $zero, 0x74($s4)
/* 8248A0 802415E0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8248A4 802415E4 2403FFFB */  addiu     $v1, $zero, -5
/* 8248A8 802415E8 00431024 */  and       $v0, $v0, $v1
/* 8248AC 802415EC 08090588 */  j         .L80241620
/* 8248B0 802415F0 AE2200B0 */   sw       $v0, 0xb0($s1)
.L802415F4:
/* 8248B4 802415F4 8E220000 */  lw        $v0, ($s1)
/* 8248B8 802415F8 3C034000 */  lui       $v1, 0x4000
/* 8248BC 802415FC 00431024 */  and       $v0, $v0, $v1
/* 8248C0 80241600 10400007 */  beqz      $v0, .L80241620
/* 8248C4 80241604 3C03BFFF */   lui      $v1, 0xbfff
/* 8248C8 80241608 2402000C */  addiu     $v0, $zero, 0xc
/* 8248CC 8024160C AE820070 */  sw        $v0, 0x70($s4)
/* 8248D0 80241610 8E220000 */  lw        $v0, ($s1)
/* 8248D4 80241614 3463FFFF */  ori       $v1, $v1, 0xffff
/* 8248D8 80241618 00431024 */  and       $v0, $v0, $v1
/* 8248DC 8024161C AE220000 */  sw        $v0, ($s1)
.L80241620:
/* 8248E0 80241620 27A50038 */  addiu     $a1, $sp, 0x38
/* 8248E4 80241624 27A6003C */  addiu     $a2, $sp, 0x3c
/* 8248E8 80241628 C6400038 */  lwc1      $f0, 0x38($s2)
/* 8248EC 8024162C 864200A8 */  lh        $v0, 0xa8($s2)
/* 8248F0 80241630 3C0142C8 */  lui       $at, 0x42c8
/* 8248F4 80241634 44812000 */  mtc1      $at, $f4
/* 8248F8 80241638 44823000 */  mtc1      $v0, $f6
/* 8248FC 8024163C 00000000 */  nop
/* 824900 80241640 468031A0 */  cvt.s.w   $f6, $f6
/* 824904 80241644 27A20044 */  addiu     $v0, $sp, 0x44
/* 824908 80241648 E7A00038 */  swc1      $f0, 0x38($sp)
/* 82490C 8024164C C640003C */  lwc1      $f0, 0x3c($s2)
/* 824910 80241650 C6420040 */  lwc1      $f2, 0x40($s2)
/* 824914 80241654 46060000 */  add.s     $f0, $f0, $f6
/* 824918 80241658 E7A40044 */  swc1      $f4, 0x44($sp)
/* 82491C 8024165C E7A20040 */  swc1      $f2, 0x40($sp)
/* 824920 80241660 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 824924 80241664 AFA20010 */  sw        $v0, 0x10($sp)
/* 824928 80241668 8E440080 */  lw        $a0, 0x80($s2)
/* 82492C 8024166C 0C0372DF */  jal       func_800DCB7C
/* 824930 80241670 27A70040 */   addiu    $a3, $sp, 0x40
/* 824934 80241674 10400003 */  beqz      $v0, .L80241684
/* 824938 80241678 00000000 */   nop
/* 82493C 8024167C C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 824940 80241680 E640003C */  swc1      $f0, 0x3c($s2)
.L80241684:
/* 824944 80241684 8E830070 */  lw        $v1, 0x70($s4)
/* 824948 80241688 2C620064 */  sltiu     $v0, $v1, 0x64
/* 82494C 8024168C 10400042 */  beqz      $v0, .L80241798
/* 824950 80241690 00031080 */   sll      $v0, $v1, 2
/* 824954 80241694 3C018025 */  lui       $at, %hi(jtbl_8024E210_8314D0)
/* 824958 80241698 00220821 */  addu      $at, $at, $v0
/* 82495C 8024169C 8C22E210 */  lw        $v0, %lo(jtbl_8024E210_8314D0)($at)
/* 824960 802416A0 00400008 */  jr        $v0
/* 824964 802416A4 00000000 */   nop
glabel L802416A8_824968
/* 824968 802416A8 0280202D */  daddu     $a0, $s4, $zero
/* 82496C 802416AC 0260282D */  daddu     $a1, $s3, $zero
/* 824970 802416B0 0C09024C */  jal       func_80240930_823BF0
/* 824974 802416B4 02A0302D */   daddu    $a2, $s5, $zero
glabel L802416B8_824978
/* 824978 802416B8 0280202D */  daddu     $a0, $s4, $zero
/* 82497C 802416BC 0260282D */  daddu     $a1, $s3, $zero
/* 824980 802416C0 0C0902A2 */  jal       func_80240A88_823D48
/* 824984 802416C4 02A0302D */   daddu    $a2, $s5, $zero
/* 824988 802416C8 080905E6 */  j         .L80241798
/* 82498C 802416CC 00000000 */   nop
glabel L802416D0_824990
/* 824990 802416D0 0280202D */  daddu     $a0, $s4, $zero
/* 824994 802416D4 0260282D */  daddu     $a1, $s3, $zero
/* 824998 802416D8 0C09034C */  jal       mac_02_UnkNpcAIFunc1
/* 82499C 802416DC 02A0302D */   daddu    $a2, $s5, $zero
glabel L802416E0_8249A0
/* 8249A0 802416E0 0280202D */  daddu     $a0, $s4, $zero
/* 8249A4 802416E4 0260282D */  daddu     $a1, $s3, $zero
/* 8249A8 802416E8 0C09037C */  jal       func_80240DF0_8240B0
/* 8249AC 802416EC 02A0302D */   daddu    $a2, $s5, $zero
/* 8249B0 802416F0 080905E6 */  j         .L80241798
/* 8249B4 802416F4 00000000 */   nop
glabel L802416F8_8249B8
/* 8249B8 802416F8 0280202D */  daddu     $a0, $s4, $zero
/* 8249BC 802416FC 0260282D */  daddu     $a1, $s3, $zero
/* 8249C0 80241700 0C0903EB */  jal       func_80240FAC_82426C
/* 8249C4 80241704 02A0302D */   daddu    $a2, $s5, $zero
/* 8249C8 80241708 080905E6 */  j         .L80241798
/* 8249CC 8024170C 00000000 */   nop
glabel L80241710_8249D0
/* 8249D0 80241710 0280202D */  daddu     $a0, $s4, $zero
/* 8249D4 80241714 0260282D */  daddu     $a1, $s3, $zero
/* 8249D8 80241718 0C090418 */  jal       mac_02_NpcJumpFunc2
/* 8249DC 8024171C 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241720_8249E0
/* 8249E0 80241720 0280202D */  daddu     $a0, $s4, $zero
/* 8249E4 80241724 0260282D */  daddu     $a1, $s3, $zero
/* 8249E8 80241728 0C090435 */  jal       mac_02_NpcJumpFunc
/* 8249EC 8024172C 02A0302D */   daddu    $a2, $s5, $zero
/* 8249F0 80241730 080905E6 */  j         .L80241798
/* 8249F4 80241734 00000000 */   nop
glabel L80241738_8249F8
/* 8249F8 80241738 0280202D */  daddu     $a0, $s4, $zero
/* 8249FC 8024173C 0260282D */  daddu     $a1, $s3, $zero
/* 824A00 80241740 0C090453 */  jal       func_8024114C_82440C
/* 824A04 80241744 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241748_824A08
/* 824A08 80241748 0280202D */  daddu     $a0, $s4, $zero
/* 824A0C 8024174C 0260282D */  daddu     $a1, $s3, $zero
/* 824A10 80241750 0C09049F */  jal       func_8024127C_82453C
/* 824A14 80241754 02A0302D */   daddu    $a2, $s5, $zero
/* 824A18 80241758 080905E6 */  j         .L80241798
/* 824A1C 8024175C 00000000 */   nop
glabel L80241760_824A20
/* 824A20 80241760 0280202D */  daddu     $a0, $s4, $zero
/* 824A24 80241764 0260282D */  daddu     $a1, $s3, $zero
/* 824A28 80241768 0C0904E7 */  jal       mac_02_UnkNpcDurationFlagFunc
/* 824A2C 8024176C 02A0302D */   daddu    $a2, $s5, $zero
/* 824A30 80241770 080905E6 */  j         .L80241798
/* 824A34 80241774 00000000 */   nop
glabel L80241778_824A38
/* 824A38 80241778 0280202D */  daddu     $a0, $s4, $zero
/* 824A3C 8024177C 0260282D */  daddu     $a1, $s3, $zero
/* 824A40 80241780 0C090501 */  jal       func_80241404_8246C4
/* 824A44 80241784 02A0302D */   daddu    $a2, $s5, $zero
/* 824A48 80241788 080905E6 */  j         .L80241798
/* 824A4C 8024178C 00000000 */   nop
glabel L80241790_824A50
/* 824A50 80241790 0C0129CF */  jal       func_8004A73C
/* 824A54 80241794 0280202D */   daddu    $a0, $s4, $zero
.L80241798:
glabel L80241798_824A58
/* 824A58 80241798 8FBF0060 */  lw        $ra, 0x60($sp)
/* 824A5C 8024179C 8FB5005C */  lw        $s5, 0x5c($sp)
/* 824A60 802417A0 8FB40058 */  lw        $s4, 0x58($sp)
/* 824A64 802417A4 8FB30054 */  lw        $s3, 0x54($sp)
/* 824A68 802417A8 8FB20050 */  lw        $s2, 0x50($sp)
/* 824A6C 802417AC 8FB1004C */  lw        $s1, 0x4c($sp)
/* 824A70 802417B0 8FB00048 */  lw        $s0, 0x48($sp)
/* 824A74 802417B4 0000102D */  daddu     $v0, $zero, $zero
/* 824A78 802417B8 03E00008 */  jr        $ra
/* 824A7C 802417BC 27BD0068 */   addiu    $sp, $sp, 0x68
