.rdata
glabel D_80990EFC
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel DemoSa_Draw
/* 01C18 80990078 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C1C 8099007C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C20 80990080 8C82019C */  lw      $v0, 0x019C($a0)           ## 0000019C
/* 01C24 80990084 04400008 */  bltz    $v0, .L809900A8            
/* 01C28 80990088 28410003 */  slti    $at, $v0, 0x0003           
/* 01C2C 8099008C 10200006 */  beq     $at, $zero, .L809900A8     
/* 01C30 80990090 00027080 */  sll     $t6, $v0,  2               
/* 01C34 80990094 3C038099 */  lui     $v1, %hi(D_80990DB0)       ## $v1 = 80990000
/* 01C38 80990098 006E1821 */  addu    $v1, $v1, $t6              
/* 01C3C 8099009C 8C630DB0 */  lw      $v1, %lo(D_80990DB0)($v1)  
/* 01C40 809900A0 14600006 */  bne     $v1, $zero, .L809900BC     
/* 01C44 809900A4 00000000 */  nop
.L809900A8:
/* 01C48 809900A8 3C048099 */  lui     $a0, %hi(D_80990EFC)       ## $a0 = 80990000
/* 01C4C 809900AC 0C00084C */  jal     osSyncPrintf
              
/* 01C50 809900B0 24840EFC */  addiu   $a0, $a0, %lo(D_80990EFC)  ## $a0 = 80990EFC
/* 01C54 809900B4 10000004 */  beq     $zero, $zero, .L809900C8   
/* 01C58 809900B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809900BC:
/* 01C5C 809900BC 0060F809 */  jalr    $ra, $v1                   
/* 01C60 809900C0 00000000 */  nop
/* 01C64 809900C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809900C8:
/* 01C68 809900C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C6C 809900CC 03E00008 */  jr      $ra                        
/* 01C70 809900D0 00000000 */  nop
/* 01C74 809900D4 00000000 */  nop
/* 01C78 809900D8 00000000 */  nop
/* 01C7C 809900DC 00000000 */  nop
