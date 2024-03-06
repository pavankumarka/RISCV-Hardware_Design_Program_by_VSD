.LC1:
        .string "Multiplication of given two matrices is:"
.LC2:
        .string "%d\t"
.LC3:
        .string "Total time taken in seconds %d:\n"
mulMat(int (*) [2], int (*) [2]):
        addi    sp,sp,-80
        sw      ra,76(sp)
        sw      s0,72(sp)
        addi    s0,sp,80
        sw      a0,-68(s0)
        sw      a1,-72(s0)
        lui     a5,%hi(.LC1)
        addi    a0,a5,%lo(.LC1)
        call    puts
        call    clock
        sw      a0,-32(s0)
        sw      zero,-20(s0)
        j       .L2
.L7:
        sw      zero,-24(s0)
        j       .L3
.L6:
        lw      a5,-20(s0)
        slli    a4,a5,1
        lw      a5,-24(s0)
        add     a4,a4,a5
        addi    a5,s0,-52
        slli    a4,a4,2
        add     a5,a4,a5
        sw      zero,0(a5)
        sw      zero,-28(s0)
        j       .L4
.L5:
        lw      a5,-20(s0)
        slli    a4,a5,1
        lw      a5,-24(s0)
        add     a4,a4,a5
        addi    a5,s0,-52
        slli    a4,a4,2
        add     a5,a4,a5
        lw      a4,0(a5)
        lw      a5,-20(s0)
        slli    a5,a5,3
        lw      a3,-68(s0)
        add     a3,a3,a5
        lw      a5,-28(s0)
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        lw      a5,-28(s0)
        slli    a5,a5,3
        lw      a2,-72(s0)
        add     a2,a2,a5
        lw      a5,-24(s0)
        slli    a5,a5,2
        add     a5,a2,a5
        lw      a5,0(a5)
        mul     a5,a3,a5
        add     a4,a4,a5
        lw      a5,-20(s0)
        slli    a3,a5,1
        lw      a5,-24(s0)
        add     a3,a3,a5
        addi    a5,s0,-52
        slli    a3,a3,2
        add     a5,a3,a5
        sw      a4,0(a5)
        lw      a5,-28(s0)
        addi    a5,a5,1
        sw      a5,-28(s0)
.L4:
        lw      a4,-28(s0)
        li      a5,1
        ble     a4,a5,.L5
        lw      a5,-20(s0)
        slli    a4,a5,1
        lw      a5,-24(s0)
        add     a4,a4,a5
        addi    a5,s0,-52
        slli    a4,a4,2
        add     a5,a4,a5
        lw      a5,0(a5)
        mv      a1,a5
        lui     a5,%hi(.LC2)
        addi    a0,a5,%lo(.LC2)
        call    printf
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
.L3:
        lw      a4,-24(s0)
        li      a5,1
        ble     a4,a5,.L6
        li      a0,10
        call    putchar
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
.L2:
        lw      a4,-20(s0)
        li      a5,1
        ble     a4,a5,.L7
        call    clock
        sw      a0,-36(s0)
        lw      a4,-36(s0)
        lw      a5,-32(s0)
        sub     a5,a4,a5
        mv      a1,a5
        lui     a5,%hi(.LC3)
        addi    a0,a5,%lo(.LC3)
        call    printf
        nop
        lw      ra,76(sp)
        lw      s0,72(sp)
        addi    sp,sp,80
        jr      ra
.LC0:
        .word   1
        .word   1
        .word   2
        .word   2
main:
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        lui     a5,%hi(.LC0)
        addi    a5,a5,%lo(.LC0)
        lw      a2,0(a5)
        lw      a3,4(a5)
        lw      a4,8(a5)
        lw      a5,12(a5)
        sw      a2,-32(s0)
        sw      a3,-28(s0)
        sw      a4,-24(s0)
        sw      a5,-20(s0)
        lui     a5,%hi(.LC0)
        addi    a5,a5,%lo(.LC0)
        lw      a2,0(a5)
        lw      a3,4(a5)
        lw      a4,8(a5)
        lw      a5,12(a5)
        sw      a2,-48(s0)
        sw      a3,-44(s0)
        sw      a4,-40(s0)
        sw      a5,-36(s0)
        addi    a4,s0,-48
        addi    a5,s0,-32
        mv      a1,a4
        mv      a0,a5
        call    mulMat(int (*) [2], int (*) [2])
        li      a5,0
        mv      a0,a5
        lw      ra,44(sp)
        lw      s0,40(sp)
        addi    sp,sp,48
        jr      ra
