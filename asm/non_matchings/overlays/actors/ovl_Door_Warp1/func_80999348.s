glabel func_80999348
/* 00BC8 80999348 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BCC 8099934C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BD0 80999350 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BD4 80999354 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00BD8 80999358 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BDC 8099935C 0C266465 */  jal     func_80999194              
/* 00BE0 80999360 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 00BE4 80999364 96020192 */  lhu     $v0, 0x0192($s0)           ## 00000192
/* 00BE8 80999368 260401A8 */  addiu   $a0, $s0, 0x01A8           ## $a0 = 000001A8
/* 00BEC 8099936C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00BF0 80999370 1440001E */  bne     $v0, $zero, .L809993EC     
/* 00BF4 80999374 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00BF8 80999378 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BFC 8099937C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00C00 80999380 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00C04 80999384 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00C08 80999388 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 00C0C 8099938C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00C10 80999390 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00C14 80999394 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00C18 80999398 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 00C1C 8099939C C60001A8 */  lwc1    $f0, 0x01A8($s0)           ## 000001A8
/* 00C20 809993A0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00C24 809993A4 3C01809A */  lui     $at, %hi(D_8099C740)       ## $at = 809A0000
/* 00C28 809993A8 4606003E */  c.le.s  $f0, $f6                   
/* 00C2C 809993AC 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 00C30 809993B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C34 809993B4 3C05809A */  lui     $a1, %hi(func_80999410)    ## $a1 = 809A0000
/* 00C38 809993B8 45020005 */  bc1fl   .L809993D0                 
/* 00C3C 809993BC 460A003E */  c.le.s  $f0, $f10                  
/* 00C40 809993C0 C428C740 */  lwc1    $f8, %lo(D_8099C740)($at)  
/* 00C44 809993C4 E5E8006C */  swc1    $f8, 0x006C($t7)           ## 0000006C
/* 00C48 809993C8 C60001A8 */  lwc1    $f0, 0x01A8($s0)           ## 000001A8
/* 00C4C 809993CC 460A003E */  c.le.s  $f0, $f10                  
.L809993D0:
/* 00C50 809993D0 00000000 */  nop
/* 00C54 809993D4 45020007 */  bc1fl   .L809993F4                 
/* 00C58 809993D8 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00C5C 809993DC 0C2661E0 */  jal     func_80998780              
/* 00C60 809993E0 24A59410 */  addiu   $a1, $a1, %lo(func_80999410) ## $a1 = 80999410
/* 00C64 809993E4 10000003 */  beq     $zero, $zero, .L809993F4   
/* 00C68 809993E8 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L809993EC:
/* 00C6C 809993EC A6180192 */  sh      $t8, 0x0192($s0)           ## 00000192
/* 00C70 809993F0 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L809993F4:
/* 00C74 809993F4 27280320 */  addiu   $t0, $t9, 0x0320           ## $t0 = 00000320
/* 00C78 809993F8 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 00C7C 809993FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C80 80999400 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C84 80999404 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C88 80999408 03E00008 */  jr      $ra                        
/* 00C8C 8099940C 00000000 */  nop
