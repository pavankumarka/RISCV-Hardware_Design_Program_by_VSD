.LC1:
        .string "Multiplication of given two matrices is:"
.LC2:
        .string "%d\t"
.LC3:
        .string "Total time taken in seconds %d:\n"
mulMat(int (*) [2], int (*) [2]):
        addi    sp,sp,-80
        sd      ra,72(sp)
        sd      s0,64(sp)
        addi    s0,sp,80
        sd      a0,-72(s0)
        sd      a1,-80(s0)
        lui     a5,%hi(.LC1)
        addi    a0,a5,%lo(.LC1)
        call    puts
        call    clock
        sd      a0,-40(s0)
        sw      zero,-20(s0)
        j       .L2
.L7:
        sw      zero,-24(s0)
        j       .L3
.L6:
        lw      a5,-24(s0)
        lw      a4,-20(s0)
        slli    a4,a4,1
        add     a5,a4,a5
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        sw      zero,-48(a5)
        sw      zero,-28(s0)
        j       .L4
.L5:
        lw      a5,-24(s0)
        lw      a4,-20(s0)
        slli    a4,a4,1
        add     a5,a4,a5
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a4,-48(a5)
        lw      a5,-20(s0)
        slli    a5,a5,3
        ld      a3,-72(s0)
        add     a3,a3,a5
        lw      a5,-28(s0)
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        lw      a5,-28(s0)
        slli    a5,a5,3
        ld      a2,-80(s0)
        add     a2,a2,a5
        lw      a5,-24(s0)
        slli    a5,a5,2
        add     a5,a2,a5
        lw      a5,0(a5)
        mulw    a5,a3,a5
        sext.w  a5,a5
        addw    a5,a4,a5
        sext.w  a4,a5
        lw      a5,-24(s0)
        lw      a3,-20(s0)
        slli    a3,a3,1
        add     a5,a3,a5
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        sw      a4,-48(a5)
        lw      a5,-28(s0)
        addiw   a5,a5,1
        sw      a5,-28(s0)
.L4:
        lw      a5,-28(s0)
        sext.w  a4,a5
        li      a5,1
        ble     a4,a5,.L5
        lw      a5,-24(s0)
        lw      a4,-20(s0)
        slli    a4,a4,1
        add     a5,a4,a5
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-48(a5)
        mv      a1,a5
        lui     a5,%hi(.LC2)
        addi    a0,a5,%lo(.LC2)
        call    printf
        lw      a5,-24(s0)
        addiw   a5,a5,1
        sw      a5,-24(s0)
.L3:
        lw      a5,-24(s0)
        sext.w  a4,a5
        li      a5,1
        ble     a4,a5,.L6
        li      a0,10
        call    putchar
        lw      a5,-20(s0)
        addiw   a5,a5,1
        sw      a5,-20(s0)
.L2:
        lw      a5,-20(s0)
        sext.w  a4,a5
        li      a5,1
        ble     a4,a5,.L7
        call    clock
        sd      a0,-48(s0)
        ld      a4,-48(s0)
        ld      a5,-40(s0)
        sub     a5,a4,a5
        mv      a1,a5
        lui     a5,%hi(.LC3)
        addi    a0,a5,%lo(.LC3)
        call    printf
        nop
        ld      ra,72(sp)
        ld      s0,64(sp)
        addi    sp,sp,80
        jr      ra
.LC0:
        .word   1
        .word   1
        .word   2
        .word   2
main:
        addi    sp,sp,-48
        sd      ra,40(sp)
        sd      s0,32(sp)
        addi    s0,sp,48
        lui     a5,%hi(.LC0)
        addi    a5,a5,%lo(.LC0)
        ld      a4,0(a5)
        sd      a4,-32(s0)
        ld      a5,8(a5)
        sd      a5,-24(s0)
        lui     a5,%hi(.LC0)
        addi    a5,a5,%lo(.LC0)
        ld      a4,0(a5)
        sd      a4,-48(s0)
        ld      a5,8(a5)
        sd      a5,-40(s0)
        addi    a4,s0,-48
        addi    a5,s0,-32
        mv      a1,a4
        mv      a0,a5
        call    mulMat(int (*) [2], int (*) [2])
        li      a5,0
        mv      a0,a5
        ld      ra,40(sp)
        ld      s0,32(sp)
        addi    sp,sp,48
        jr      ra
