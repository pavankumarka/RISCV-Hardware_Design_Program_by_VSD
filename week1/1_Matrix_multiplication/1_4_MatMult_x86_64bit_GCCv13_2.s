.LC0:
        .string "Multiplication of given two matrices is:"
.LC1:
        .string "%d\t"
.LC2:
        .string "Total time taken in seconds %d:\n"
mulMat(int (*) [2], int (*) [2]):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     QWORD PTR [rbp-56], rdi
        mov     QWORD PTR [rbp-64], rsi
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        call    clock
        mov     QWORD PTR [rbp-24], rax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L7:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L3
.L6:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     edx, DWORD PTR [rbp-4]
        movsx   rdx, edx
        add     rdx, rdx
        add     rax, rdx
        mov     DWORD PTR [rbp-48+rax*4], 0
        mov     DWORD PTR [rbp-12], 0
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     edx, DWORD PTR [rbp-4]
        movsx   rdx, edx
        add     rdx, rdx
        add     rax, rdx
        mov     ecx, DWORD PTR [rbp-48+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-56]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     edx, DWORD PTR [rdx+rax*4]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rsi, [0+rax*8]
        mov     rax, QWORD PTR [rbp-64]
        add     rsi, rax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     eax, DWORD PTR [rsi+rax*4]
        imul    eax, edx
        lea     edx, [rcx+rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     ecx, DWORD PTR [rbp-4]
        movsx   rcx, ecx
        add     rcx, rcx
        add     rax, rcx
        mov     DWORD PTR [rbp-48+rax*4], edx
        add     DWORD PTR [rbp-12], 1
.L4:
        cmp     DWORD PTR [rbp-12], 1
        jle     .L5
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     edx, DWORD PTR [rbp-4]
        movsx   rdx, edx
        add     rdx, rdx
        add     rax, rdx
        mov     eax, DWORD PTR [rbp-48+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-8], 1
.L3:
        cmp     DWORD PTR [rbp-8], 1
        jle     .L6
        mov     edi, 10
        call    putchar
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 1
        jle     .L7
        call    clock
        mov     QWORD PTR [rbp-32], rax
        mov     rax, QWORD PTR [rbp-32]
        sub     rax, QWORD PTR [rbp-24]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        nop
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-16], 1
        mov     DWORD PTR [rbp-12], 1
        mov     DWORD PTR [rbp-8], 2
        mov     DWORD PTR [rbp-4], 2
        mov     DWORD PTR [rbp-32], 1
        mov     DWORD PTR [rbp-28], 1
        mov     DWORD PTR [rbp-24], 2
        mov     DWORD PTR [rbp-20], 2
        lea     rdx, [rbp-32]
        lea     rax, [rbp-16]
        mov     rsi, rdx
        mov     rdi, rax
        call    mulMat(int (*) [2], int (*) [2])
        mov     eax, 0
        leave
        ret
