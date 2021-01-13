.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8028051C
/* 7E139C 8028051C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 7E13A0 80280520 AFB3001C */  sw        $s3, 0x1c($sp)
/* 7E13A4 80280524 0080982D */  daddu     $s3, $a0, $zero
/* 7E13A8 80280528 AFB00010 */  sw        $s0, 0x10($sp)
/* 7E13AC 8028052C 00A0802D */  daddu     $s0, $a1, $zero
/* 7E13B0 80280530 AFB60028 */  sw        $s6, 0x28($sp)
/* 7E13B4 80280534 3C168011 */  lui       $s6, %hi(gPlayerData)
/* 7E13B8 80280538 26D6F290 */  addiu     $s6, $s6, %lo(gPlayerData)
/* 7E13BC 8028053C AFBF002C */  sw        $ra, 0x2c($sp)
/* 7E13C0 80280540 AFB50024 */  sw        $s5, 0x24($sp)
/* 7E13C4 80280544 AFB40020 */  sw        $s4, 0x20($sp)
/* 7E13C8 80280548 AFB20018 */  sw        $s2, 0x18($sp)
/* 7E13CC 8028054C AFB10014 */  sw        $s1, 0x14($sp)
/* 7E13D0 80280550 8E750084 */  lw        $s5, 0x84($s3)
/* 7E13D4 80280554 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 7E13D8 80280558 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 7E13DC 8028055C 00151040 */  sll       $v0, $s5, 1
/* 7E13E0 80280560 8C740144 */  lw        $s4, 0x144($v1)
/* 7E13E4 80280564 00551021 */  addu      $v0, $v0, $s5
/* 7E13E8 80280568 8E830018 */  lw        $v1, 0x18($s4)
/* 7E13EC 8028056C 00021080 */  sll       $v0, $v0, 2
/* 7E13F0 80280570 00629021 */  addu      $s2, $v1, $v0
/* 7E13F4 80280574 96820000 */  lhu       $v0, ($s4)
/* 7E13F8 80280578 8E430000 */  lw        $v1, ($s2)
/* 7E13FC 8028057C 3042FFFE */  andi      $v0, $v0, 0xfffe
/* 7E1400 80280580 A6820000 */  sh        $v0, ($s4)
/* 7E1404 80280584 3C028008 */  lui       $v0, %hi(gItemTable)
/* 7E1408 80280588 244278E0 */  addiu     $v0, $v0, %lo(gItemTable)
/* 7E140C 8028058C 00031940 */  sll       $v1, $v1, 5
/* 7E1410 80280590 0C03A640 */  jal       func_800E9900
/* 7E1414 80280594 00628821 */   addu     $s1, $v1, $v0
/* 7E1418 80280598 1200001B */  beqz      $s0, .L80280608
/* 7E141C 8028059C 00000000 */   nop
/* 7E1420 802805A0 96220018 */  lhu       $v0, 0x18($s1)
/* 7E1424 802805A4 3C018028 */  lui       $at, %hi(D_80286530)
/* 7E1428 802805A8 AC206530 */  sw        $zero, %lo(D_80286530)($at)
/* 7E142C 802805AC 3C018028 */  lui       $at, %hi(D_80286534)
/* 7E1430 802805B0 AC206534 */  sw        $zero, %lo(D_80286534)($at)
/* 7E1434 802805B4 30420040 */  andi      $v0, $v0, 0x40
/* 7E1438 802805B8 10400008 */  beqz      $v0, .L802805DC
/* 7E143C 802805BC 2407FFFF */   addiu    $a3, $zero, -1
/* 7E1440 802805C0 9223001A */  lbu       $v1, 0x1a($s1)
/* 7E1444 802805C4 00031080 */  sll       $v0, $v1, 2
/* 7E1448 802805C8 00431021 */  addu      $v0, $v0, $v1
/* 7E144C 802805CC 00021080 */  sll       $v0, $v0, 2
/* 7E1450 802805D0 3C078009 */  lui       $a3, %hi(D_8008F072)
/* 7E1454 802805D4 00E23821 */  addu      $a3, $a3, $v0
/* 7E1458 802805D8 80E7F072 */  lb        $a3, %lo(D_8008F072)($a3)
.L802805DC:
/* 7E145C 802805DC 8E250000 */  lw        $a1, ($s1)
/* 7E1460 802805E0 8E460004 */  lw        $a2, 4($s2)
/* 7E1464 802805E4 0C0A0022 */  jal       func_80280088
/* 7E1468 802805E8 0000202D */   daddu    $a0, $zero, $zero
/* 7E146C 802805EC AE620074 */  sw        $v0, 0x74($s3)
/* 7E1470 802805F0 0C03A6D5 */  jal       increment_status_menu_disabled
/* 7E1474 802805F4 AE600070 */   sw       $zero, 0x70($s3)
/* 7E1478 802805F8 0C03A640 */  jal       func_800E9900
/* 7E147C 802805FC 00000000 */   nop
/* 7E1480 80280600 0C03A546 */  jal       show_coin_counter
/* 7E1484 80280604 00000000 */   nop
.L80280608:
/* 7E1488 80280608 8E630070 */  lw        $v1, 0x70($s3)
/* 7E148C 8028060C 24100005 */  addiu     $s0, $zero, 5
/* 7E1490 80280610 10700085 */  beq       $v1, $s0, .L80280828
/* 7E1494 80280614 28620006 */   slti     $v0, $v1, 6
/* 7E1498 80280618 1040000D */  beqz      $v0, .L80280650
/* 7E149C 8028061C 24020001 */   addiu    $v0, $zero, 1
/* 7E14A0 80280620 1062006D */  beq       $v1, $v0, .L802807D8
/* 7E14A4 80280624 28620002 */   slti     $v0, $v1, 2
/* 7E14A8 80280628 10400005 */  beqz      $v0, .L80280640
/* 7E14AC 8028062C 24020004 */   addiu    $v0, $zero, 4
/* 7E14B0 80280630 10600017 */  beqz      $v1, .L80280690
/* 7E14B4 80280634 0000102D */   daddu    $v0, $zero, $zero
/* 7E14B8 80280638 080A024B */  j         .L8028092C
/* 7E14BC 8028063C 00000000 */   nop
.L80280640:
/* 7E14C0 80280640 1062006F */  beq       $v1, $v0, .L80280800
/* 7E14C4 80280644 0000102D */   daddu    $v0, $zero, $zero
/* 7E14C8 80280648 080A024B */  j         .L8028092C
/* 7E14CC 8028064C 00000000 */   nop
.L80280650:
/* 7E14D0 80280650 2410000A */  addiu     $s0, $zero, 0xa
/* 7E14D4 80280654 10700091 */  beq       $v1, $s0, .L8028089C
/* 7E14D8 80280658 2862000B */   slti     $v0, $v1, 0xb
/* 7E14DC 8028065C 10400005 */  beqz      $v0, .L80280674
/* 7E14E0 80280660 24020006 */   addiu    $v0, $zero, 6
/* 7E14E4 80280664 1062007F */  beq       $v1, $v0, .L80280864
/* 7E14E8 80280668 0000102D */   daddu    $v0, $zero, $zero
/* 7E14EC 8028066C 080A024B */  j         .L8028092C
/* 7E14F0 80280670 00000000 */   nop
.L80280674:
/* 7E14F4 80280674 2402000B */  addiu     $v0, $zero, 0xb
/* 7E14F8 80280678 1062009D */  beq       $v1, $v0, .L802808F0
/* 7E14FC 8028067C 24020064 */   addiu    $v0, $zero, 0x64
/* 7E1500 80280680 10620012 */  beq       $v1, $v0, .L802806CC
/* 7E1504 80280684 0000102D */   daddu    $v0, $zero, $zero
/* 7E1508 80280688 080A024B */  j         .L8028092C
/* 7E150C 8028068C 00000000 */   nop
.L80280690:
/* 7E1510 80280690 0C0B1059 */  jal       does_script_exist
/* 7E1514 80280694 8E640074 */   lw       $a0, 0x74($s3)
/* 7E1518 80280698 144000A4 */  bnez      $v0, .L8028092C
/* 7E151C 8028069C 0000102D */   daddu    $v0, $zero, $zero
/* 7E1520 802806A0 3C04001E */  lui       $a0, 0x1e
/* 7E1524 802806A4 34840001 */  ori       $a0, $a0, 1
/* 7E1528 802806A8 26650078 */  addiu     $a1, $s3, 0x78
/* 7E152C 802806AC 24020064 */  addiu     $v0, $zero, 0x64
/* 7E1530 802806B0 AE620070 */  sw        $v0, 0x70($s3)
/* 7E1534 802806B4 0C049640 */  jal       load_string
/* 7E1538 802806B8 AE600078 */   sw       $zero, 0x78($s3)
/* 7E153C 802806BC 3C018028 */  lui       $at, %hi(D_80286528)
/* 7E1540 802806C0 AC226528 */  sw        $v0, %lo(D_80286528)($at)
/* 7E1544 802806C4 080A024B */  j         .L8028092C
/* 7E1548 802806C8 0000102D */   daddu    $v0, $zero, $zero
.L802806CC:
/* 7E154C 802806CC 8E700078 */  lw        $s0, 0x78($s3)
/* 7E1550 802806D0 24020001 */  addiu     $v0, $zero, 1
/* 7E1554 802806D4 16020095 */  bne       $s0, $v0, .L8028092C
/* 7E1558 802806D8 0000102D */   daddu    $v0, $zero, $zero
/* 7E155C 802806DC 3C028028 */  lui       $v0, %hi(D_80286528)
/* 7E1560 802806E0 8C426528 */  lw        $v0, %lo(D_80286528)($v0)
/* 7E1564 802806E4 904204E8 */  lbu       $v0, 0x4e8($v0)
/* 7E1568 802806E8 14400035 */  bnez      $v0, .L802807C0
/* 7E156C 802806EC 00000000 */   nop
/* 7E1570 802806F0 86C2000C */  lh        $v0, 0xc($s6)
/* 7E1574 802806F4 8E430004 */  lw        $v1, 4($s2)
/* 7E1578 802806F8 0043102A */  slt       $v0, $v0, $v1
/* 7E157C 802806FC 10400006 */  beqz      $v0, .L80280718
/* 7E1580 80280700 00000000 */   nop
/* 7E1584 80280704 0C0A005F */  jal       func_8028017C
/* 7E1588 80280708 24040001 */   addiu    $a0, $zero, 1
/* 7E158C 8028070C AE620074 */  sw        $v0, 0x74($s3)
/* 7E1590 80280710 080A024A */  j         .L80280928
/* 7E1594 80280714 AE700070 */   sw       $s0, 0x70($s3)
.L80280718:
/* 7E1598 80280718 8E420000 */  lw        $v0, ($s2)
/* 7E159C 8028071C 2442FF20 */  addiu     $v0, $v0, -0xe0
/* 7E15A0 80280720 2C420075 */  sltiu     $v0, $v0, 0x75
/* 7E15A4 80280724 1440000C */  bnez      $v0, .L80280758
/* 7E15A8 80280728 00000000 */   nop
/* 7E15AC 8028072C 0C039D5D */  jal       add_item
/* 7E15B0 80280730 0000202D */   daddu    $a0, $zero, $zero
/* 7E15B4 80280734 2403FFFF */  addiu     $v1, $zero, -1
/* 7E15B8 80280738 14430007 */  bne       $v0, $v1, .L80280758
/* 7E15BC 8028073C 00000000 */   nop
/* 7E15C0 80280740 0C0A005F */  jal       func_8028017C
/* 7E15C4 80280744 24040002 */   addiu    $a0, $zero, 2
/* 7E15C8 80280748 AE620074 */  sw        $v0, 0x74($s3)
/* 7E15CC 8028074C 24020004 */  addiu     $v0, $zero, 4
/* 7E15D0 80280750 080A024A */  j         .L80280928
/* 7E15D4 80280754 AE620070 */   sw       $v0, 0x70($s3)
.L80280758:
/* 7E15D8 80280758 96C2000C */  lhu       $v0, 0xc($s6)
/* 7E15DC 8028075C 96430006 */  lhu       $v1, 6($s2)
/* 7E15E0 80280760 00431023 */  subu      $v0, $v0, $v1
/* 7E15E4 80280764 A6C2000C */  sh        $v0, 0xc($s6)
/* 7E15E8 80280768 8E440000 */  lw        $a0, ($s2)
/* 7E15EC 8028076C 2482FF20 */  addiu     $v0, $a0, -0xe0
/* 7E15F0 80280770 2C420075 */  sltiu     $v0, $v0, 0x75
/* 7E15F4 80280774 1040000A */  beqz      $v0, .L802807A0
/* 7E15F8 80280778 00000000 */   nop
/* 7E15FC 8028077C 0C039DCF */  jal       add_badge
/* 7E1600 80280780 00000000 */   nop
/* 7E1604 80280784 0000202D */  daddu     $a0, $zero, $zero
/* 7E1608 80280788 3C05F840 */  lui       $a1, 0xf840
/* 7E160C 8028078C 34A55CF0 */  ori       $a1, $a1, 0x5cf0
/* 7E1610 80280790 0C0B2026 */  jal       set_variable
/* 7E1614 80280794 24060001 */   addiu    $a2, $zero, 1
/* 7E1618 80280798 080A01EA */  j         .L802807A8
/* 7E161C 8028079C 00000000 */   nop
.L802807A0:
/* 7E1620 802807A0 0C039D5D */  jal       add_item
/* 7E1624 802807A4 00000000 */   nop
.L802807A8:
/* 7E1628 802807A8 0C0A005F */  jal       func_8028017C
/* 7E162C 802807AC 24040003 */   addiu    $a0, $zero, 3
/* 7E1630 802807B0 AE620074 */  sw        $v0, 0x74($s3)
/* 7E1634 802807B4 24020005 */  addiu     $v0, $zero, 5
/* 7E1638 802807B8 080A024A */  j         .L80280928
/* 7E163C 802807BC AE620070 */   sw       $v0, 0x70($s3)
.L802807C0:
/* 7E1640 802807C0 0C0A00B4 */  jal       func_802802D0
/* 7E1644 802807C4 24040016 */   addiu    $a0, $zero, 0x16
/* 7E1648 802807C8 AE620074 */  sw        $v0, 0x74($s3)
/* 7E164C 802807CC 24020006 */  addiu     $v0, $zero, 6
/* 7E1650 802807D0 080A024A */  j         .L80280928
/* 7E1654 802807D4 AE620070 */   sw       $v0, 0x70($s3)
.L802807D8:
/* 7E1658 802807D8 8E640074 */  lw        $a0, 0x74($s3)
/* 7E165C 802807DC 0C0B1059 */  jal       does_script_exist
/* 7E1660 802807E0 00000000 */   nop
/* 7E1664 802807E4 14400051 */  bnez      $v0, .L8028092C
/* 7E1668 802807E8 0000102D */   daddu    $v0, $zero, $zero
/* 7E166C 802807EC 8E430000 */  lw        $v1, ($s2)
/* 7E1670 802807F0 3C018028 */  lui       $at, %hi(D_80286534)
/* 7E1674 802807F4 AC206534 */  sw        $zero, %lo(D_80286534)($at)
/* 7E1678 802807F8 080A0214 */  j         .L80280850
/* 7E167C 802807FC 2402000A */   addiu    $v0, $zero, 0xa
.L80280800:
/* 7E1680 80280800 8E640074 */  lw        $a0, 0x74($s3)
/* 7E1684 80280804 0C0B1059 */  jal       does_script_exist
/* 7E1688 80280808 00000000 */   nop
/* 7E168C 8028080C 14400047 */  bnez      $v0, .L8028092C
/* 7E1690 80280810 0000102D */   daddu    $v0, $zero, $zero
/* 7E1694 80280814 8E430000 */  lw        $v1, ($s2)
/* 7E1698 80280818 3C018028 */  lui       $at, %hi(D_80286534)
/* 7E169C 8028081C AC306534 */  sw        $s0, %lo(D_80286534)($at)
/* 7E16A0 80280820 080A0214 */  j         .L80280850
/* 7E16A4 80280824 2402000A */   addiu    $v0, $zero, 0xa
.L80280828:
/* 7E16A8 80280828 8E640074 */  lw        $a0, 0x74($s3)
/* 7E16AC 8028082C 0C0B1059 */  jal       does_script_exist
/* 7E16B0 80280830 00000000 */   nop
/* 7E16B4 80280834 1440003D */  bnez      $v0, .L8028092C
/* 7E16B8 80280838 0000102D */   daddu    $v0, $zero, $zero
/* 7E16BC 8028083C 8E430000 */  lw        $v1, ($s2)
/* 7E16C0 80280840 24020001 */  addiu     $v0, $zero, 1
/* 7E16C4 80280844 3C018028 */  lui       $at, %hi(D_80286534)
/* 7E16C8 80280848 AC226534 */  sw        $v0, %lo(D_80286534)($at)
/* 7E16CC 8028084C 2402000A */  addiu     $v0, $zero, 0xa
.L80280850:
/* 7E16D0 80280850 AE620070 */  sw        $v0, 0x70($s3)
/* 7E16D4 80280854 3C018028 */  lui       $at, %hi(D_80286530)
/* 7E16D8 80280858 AC236530 */  sw        $v1, %lo(D_80286530)($at)
/* 7E16DC 8028085C 080A024B */  j         .L8028092C
/* 7E16E0 80280860 0000102D */   daddu    $v0, $zero, $zero
.L80280864:
/* 7E16E4 80280864 8E640074 */  lw        $a0, 0x74($s3)
/* 7E16E8 80280868 0C0B1059 */  jal       does_script_exist
/* 7E16EC 8028086C 00000000 */   nop
/* 7E16F0 80280870 1440002E */  bnez      $v0, .L8028092C
/* 7E16F4 80280874 0000102D */   daddu    $v0, $zero, $zero
/* 7E16F8 80280878 8E430000 */  lw        $v1, ($s2)
/* 7E16FC 8028087C 24020003 */  addiu     $v0, $zero, 3
/* 7E1700 80280880 3C018028 */  lui       $at, %hi(D_80286534)
/* 7E1704 80280884 AC226534 */  sw        $v0, %lo(D_80286534)($at)
/* 7E1708 80280888 AE700070 */  sw        $s0, 0x70($s3)
/* 7E170C 8028088C 3C018028 */  lui       $at, %hi(D_80286530)
/* 7E1710 80280890 AC236530 */  sw        $v1, %lo(D_80286530)($at)
/* 7E1714 80280894 080A024B */  j         .L8028092C
/* 7E1718 80280898 0000102D */   daddu    $v0, $zero, $zero
.L8028089C:
/* 7E171C 8028089C 8E820010 */  lw        $v0, 0x10($s4)
/* 7E1720 802808A0 3C108028 */  lui       $s0, %hi(D_8028652C)
/* 7E1724 802808A4 2610652C */  addiu     $s0, $s0, %lo(D_8028652C)
/* 7E1728 802808A8 1040000E */  beqz      $v0, .L802808E4
/* 7E172C 802808AC AE000000 */   sw       $zero, ($s0)
/* 7E1730 802808B0 8C44000C */  lw        $a0, 0xc($v0)
/* 7E1734 802808B4 1080000B */  beqz      $a0, .L802808E4
/* 7E1738 802808B8 24050001 */   addiu    $a1, $zero, 1
/* 7E173C 802808BC 0C0B0CF8 */  jal       start_script
/* 7E1740 802808C0 0000302D */   daddu    $a2, $zero, $zero
/* 7E1744 802808C4 3C038028 */  lui       $v1, %hi(D_80286534)
/* 7E1748 802808C8 8C636534 */  lw        $v1, %lo(D_80286534)($v1)
/* 7E174C 802808CC 3C048028 */  lui       $a0, %hi(D_80286530)
/* 7E1750 802808D0 8C846530 */  lw        $a0, %lo(D_80286530)($a0)
/* 7E1754 802808D4 AE020000 */  sw        $v0, ($s0)
/* 7E1758 802808D8 AC55008C */  sw        $s5, 0x8c($v0)
/* 7E175C 802808DC AC430084 */  sw        $v1, 0x84($v0)
/* 7E1760 802808E0 AC440088 */  sw        $a0, 0x88($v0)
.L802808E4:
/* 7E1764 802808E4 2402000B */  addiu     $v0, $zero, 0xb
/* 7E1768 802808E8 080A024A */  j         .L80280928
/* 7E176C 802808EC AE620070 */   sw       $v0, 0x70($s3)
.L802808F0:
/* 7E1770 802808F0 3C028028 */  lui       $v0, %hi(D_8028652C)
/* 7E1774 802808F4 8C42652C */  lw        $v0, %lo(D_8028652C)($v0)
/* 7E1778 802808F8 10400005 */  beqz      $v0, .L80280910
/* 7E177C 802808FC 00000000 */   nop
/* 7E1780 80280900 0C0B1059 */  jal       does_script_exist
/* 7E1784 80280904 8C440144 */   lw       $a0, 0x144($v0)
/* 7E1788 80280908 14400008 */  bnez      $v0, .L8028092C
/* 7E178C 8028090C 0000102D */   daddu    $v0, $zero, $zero
.L80280910:
/* 7E1790 80280910 0C03A6CC */  jal       decrement_status_menu_disabled
/* 7E1794 80280914 00000000 */   nop
/* 7E1798 80280918 0C03A5B2 */  jal       func_800E96C8
/* 7E179C 8028091C 00000000 */   nop
/* 7E17A0 80280920 080A024B */  j         .L8028092C
/* 7E17A4 80280924 24020001 */   addiu    $v0, $zero, 1
.L80280928:
/* 7E17A8 80280928 0000102D */  daddu     $v0, $zero, $zero
.L8028092C:
/* 7E17AC 8028092C 8FBF002C */  lw        $ra, 0x2c($sp)
/* 7E17B0 80280930 8FB60028 */  lw        $s6, 0x28($sp)
/* 7E17B4 80280934 8FB50024 */  lw        $s5, 0x24($sp)
/* 7E17B8 80280938 8FB40020 */  lw        $s4, 0x20($sp)
/* 7E17BC 8028093C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 7E17C0 80280940 8FB20018 */  lw        $s2, 0x18($sp)
/* 7E17C4 80280944 8FB10014 */  lw        $s1, 0x14($sp)
/* 7E17C8 80280948 8FB00010 */  lw        $s0, 0x10($sp)
/* 7E17CC 8028094C 03E00008 */  jr        $ra
/* 7E17D0 80280950 27BD0030 */   addiu    $sp, $sp, 0x30
