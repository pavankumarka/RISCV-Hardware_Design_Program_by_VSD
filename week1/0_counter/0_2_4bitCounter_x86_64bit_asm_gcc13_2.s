delay(int):
        push    rbx
        mov     ebx, edi
        call    clock
        movsx   rbx, ebx
        add     rbx, rax
.L2:
        call    clock
        cmp     rax, rbx
        jl      .L2
        pop     rbx
        ret
.LC0:
        .string "Count value is: %d\n"
display(int):
        sub     rsp, 8
        mov     esi, edi
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        add     rsp, 8
        ret
main:
        push    rbp
        push    rbx
        sub     rsp, 8
        mov     ebx, 0
        mov     ebp, 0
.L9:
        mov     edi, ebx
        call    display(int)
        add     ebx, 1
        cmp     ebx, 16
        cmove   ebx, ebp
        mov     edi, 500000
        call    delay(int)
        jmp     .L9
