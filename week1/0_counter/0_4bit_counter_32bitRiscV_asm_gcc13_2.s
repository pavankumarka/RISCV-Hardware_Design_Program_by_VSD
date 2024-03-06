delay(int):
        addi    sp,sp,-16
        sw      ra,12(sp)
        sw      s0,8(sp)
        mv      s0,a0
        call    clock
        add     s0,s0,a0
.L2:
        call    clock
        blt     a0,s0,.L2
        lw      ra,12(sp)
        lw      s0,8(sp)
        addi    sp,sp,16
        jr      ra
.LC0:
        .string "Count value is: %d\n"
display(int):
        addi    sp,sp,-16
        sw      ra,12(sp)
        mv      a1,a0
        lui     a0,%hi(.LC0)
        addi    a0,a0,%lo(.LC0)
        call    printf
        lw      ra,12(sp)
        addi    sp,sp,16
        jr      ra
main:
        addi    sp,sp,-16
        sw      ra,12(sp)
        sw      s0,8(sp)
        sw      s1,4(sp)
        sw      s2,0(sp)
        li      s0,0
        li      s2,16
        li      s1,499712
        addi    s1,s1,288
.L9:
        mv      a0,s0
        call    display(int)
        addi    s0,s0,1
        sub     a5,s0,s2
        snez    a5,a5
        neg     a5,a5
        and     s0,s0,a5
        mv      a0,s1
        call    delay(int)
        j       .L9
