.LC0:
        .string "Select a num b/n 0x01 to 0x0C to perform ALU opertn: "
.LC1:
        .string "%x"
.LC2:
        .string "entry point aluOptr = 0x%x\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-20], edi
        mov     QWORD PTR [rbp-32], rsi
        mov     DWORD PTR [rbp-4], 0
        cmp     DWORD PTR [rbp-20], 1
        jne     .L2
        call    dispAluSuppOptnMsg()
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        lea     rax, [rbp-4]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        test    eax, eax
        je      .L3
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, 12
        jbe     .L4
.L3:
        mov     edi, 1
        call    printAluErrMsg(int)
        mov     DWORD PTR [rbp-4], 0
        mov     eax, -1
        jmp     .L8
.L4:
        mov     eax, DWORD PTR [rbp-4]
        mov     edi, eax
        call    checkAluOptnSupport(unsigned int)
        mov     DWORD PTR [rbp-4], 0
        mov     eax, 0
        jmp     .L8
.L2:
        cmp     DWORD PTR [rbp-20], 2
        jne     .L6
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        mov     rdi, rax
        call    atoi
        mov     DWORD PTR [rbp-4], eax
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        test    eax, eax
        je      .L7
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, 12
        ja      .L7
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        mov     edi, eax
        call    checkAluOptnSupport(unsigned int)
        mov     DWORD PTR [rbp-4], 0
        mov     eax, 0
        jmp     .L8
.L7:
        mov     edi, 1
        call    printAluErrMsg(int)
        mov     DWORD PTR [rbp-4], 0
        mov     eax, -1
        jmp     .L8
.L6:
        mov     edi, 0
        call    printAluErrMsg(int)
        mov     eax, -1
.L8:
        leave
        ret
.LC3:
        .string "ALU supported Math operations:"
.LC4:
        .string "1.Add  2.Sub  3.Mul  4.Div  5.Mod\n"
.LC5:
        .string "ALU supported Logical operations:"
.LC6:
        .string "6.NOT  7.OR   8.AND  9.NOR  A.NAND  B.XOR  C.XNOR\n"
dispAluSuppOptnMsg():
        push    rbp
        mov     rbp, rsp
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        mov     edi, OFFSET FLAT:.LC4
        call    puts
        mov     edi, OFFSET FLAT:.LC5
        call    puts
        mov     edi, OFFSET FLAT:.LC6
        call    puts
        nop
        pop     rbp
        ret
.LC7:
        .string "Selected ALU operation is Addition"
.LC8:
        .string "Selected ALU operation is Subration"
.LC9:
        .string "Selected ALU operation is Multiplication"
.LC10:
        .string "Selected ALU operation is Division"
.LC11:
        .string "Selected ALU operation is Modulus"
.LC12:
        .string "Selected ALU operation is NOT"
.LC13:
        .string "Selected ALU operation is OR"
.LC14:
        .string "Selected ALU operation is AND"
.LC15:
        .string "Selected ALU operation is NOR"
.LC16:
        .string "Selected ALU operation is NAND"
.LC17:
        .string "Selected ALU operation is XOR"
.LC18:
        .string "Selected ALU operation is XNOR"
.LC19:
        .string "Selected unknown ALU operation"
checkAluOptnSupport(unsigned int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        cmp     DWORD PTR [rbp-4], 12
        ja      .L11
        mov     eax, DWORD PTR [rbp-4]
        mov     rax, QWORD PTR .L13[0+rax*8]
        jmp     rax
.L13:
        .quad   .L11
        .quad   .L24
        .quad   .L23
        .quad   .L22
        .quad   .L21
        .quad   .L20
        .quad   .L19
        .quad   .L18
        .quad   .L17
        .quad   .L16
        .quad   .L15
        .quad   .L14
        .quad   .L12
.L24:
        mov     edi, OFFSET FLAT:.LC7
        call    puts
        jmp     .L25
.L23:
        mov     edi, OFFSET FLAT:.LC8
        call    puts
        jmp     .L25
.L22:
        mov     edi, OFFSET FLAT:.LC9
        call    puts
        jmp     .L25
.L21:
        mov     edi, OFFSET FLAT:.LC10
        call    puts
        jmp     .L25
.L20:
        mov     edi, OFFSET FLAT:.LC11
        call    puts
        jmp     .L25
.L19:
        mov     edi, OFFSET FLAT:.LC12
        call    puts
        jmp     .L25
.L18:
        mov     edi, OFFSET FLAT:.LC13
        call    puts
        jmp     .L25
.L17:
        mov     edi, OFFSET FLAT:.LC14
        call    puts
        jmp     .L25
.L16:
        mov     edi, OFFSET FLAT:.LC15
        call    puts
        jmp     .L25
.L15:
        mov     edi, OFFSET FLAT:.LC16
        call    puts
        jmp     .L25
.L14:
        mov     edi, OFFSET FLAT:.LC17
        call    puts
        jmp     .L25
.L12:
        mov     edi, OFFSET FLAT:.LC18
        call    puts
        jmp     .L25
.L11:
        mov     edi, OFFSET FLAT:.LC19
        call    puts
        call    dispAluSuppOptnMsg()
        nop
.L25:
        nop
        leave
        ret
.LC20:
        .string "\nCommand Line arguments greater than 2 or unknown ALU operation\n"
.LC21:
        .string "\nUnknown ALU operation\n"
printAluErrMsg(int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        cmp     DWORD PTR [rbp-4], 0
        je      .L28
        cmp     DWORD PTR [rbp-4], 1
        je      .L29
        jmp     .L27
.L28:
        mov     edi, OFFSET FLAT:.LC20
        call    puts
        call    dispAluSuppOptnMsg()
        jmp     .L30
.L29:
        mov     edi, OFFSET FLAT:.LC21
        call    puts
        call    dispAluSuppOptnMsg()
        nop
.L30:
        nop
.L27:
        leave
        ret