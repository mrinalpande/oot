glabel func_80981DC8
/* 04758 80981DC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0475C 80981DCC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04760 80981DD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04764 80981DD4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04768 80981DD8 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0476C 80981DDC 0C25F9C1 */  jal     func_8097E704              
/* 04770 80981DE0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 04774 80981DE4 10400003 */  beq     $v0, $zero, .L80981DF4     
/* 04778 80981DE8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0477C 80981DEC 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 04780 80981DF0 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
.L80981DF4:
/* 04784 80981DF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04788 80981DF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0478C 80981DFC 03E00008 */  jr      $ra                        
/* 04790 80981E00 00000000 */  nop
