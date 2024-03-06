delay(int):
        addi    sp,sp,-16
        sd      ra,8(sp)
        sd      s0,0(sp)
        mv      s0,a0
        call    clock
        add     s0,s0,a0
.L2:
        call    clock
        blt     a0,s0,.L2
        ld      ra,8(sp)
        ld      s0,0(sp)
        addi    sp,sp,16
        jr      ra
.LC0:
        .string "Count value is: %d\n"
display(int):
        addi    sp,sp,-16
        sd      ra,8(sp)
        mv      a1,a0
        lui     a0,%hi(.LC0)
        addi    a0,a0,%lo(.LC0)
        call    printf
        ld      ra,8(sp)
        addi    sp,sp,16
        jr      ra
main:
        addi    sp,sp,-48
        sd      ra,40(sp)
        sd      s0,32(sp)
        sd      s1,24(sp)
        sd      s2,16(sp)
        sd      s3,8(sp)
        li      s0,0
        li      s2,16
        li      s3,0
        li      s1,499712
        addi    s1,s1,288
        j       .L9
.L8:
        mv      a0,s1
        call    delay(int)
.L9:
        mv      a0,s0
        call    display(int)
        addiw   s0,s0,1
        bne     s0,s2,.L8
        mv      s0,s3
        j       .L8
