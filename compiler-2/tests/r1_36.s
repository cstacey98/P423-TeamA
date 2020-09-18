_start:
       callq _read_int
       movq   %rax, -32(%rbp)
       callq _read_int
       movq   %rax, -88(%rbp)
       callq _read_int
       movq   %rax, -48(%rbp)
       callq _read_int
       movq   %rax, %r14
       callq _read_int
       movq   %rax, -40(%rbp)
       callq _read_int
       movq   %rax, -56(%rbp)
       callq _read_int
       movq   %rax, %r13
       callq _read_int
       movq   %rax, -8(%rbp)
       callq _read_int
       movq   %rax, -16(%rbp)
       callq _read_int
       movq   %rax, -72(%rbp)
       callq _read_int
       movq   %rax, %r12
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, -24(%rbp)
       callq _read_int
       movq   %rax, -64(%rbp)
       callq _read_int
       movq   %rax, -80(%rbp)
       callq _read_int
       movq   %rax, %rdx
       movq   -88(%rbp), %rcx
       negq   %rcx
       movq   -32(%rbp), %rsi
       addq   %rcx, %rsi
       movq   %r14, %rcx
       negq   %rcx
       movq   -48(%rbp), %rdi
       addq   %rcx, %rdi
       movq   %rsi, %rcx
       addq   %rdi, %rcx
       movq   -56(%rbp), %rsi
       negq   %rsi
       movq   -40(%rbp), %rdi
       addq   %rsi, %rdi
       movq   -8(%rbp), %rsi
       negq   %rsi
       movq   %r13, %r8
       addq   %rsi, %r8
       movq   %rdi, %rsi
       addq   %r8, %rsi
       movq   %rcx, %rcx
       addq   %rsi, %rcx
       movq   -72(%rbp), %rsi
       negq   %rsi
       movq   -16(%rbp), %rdi
       addq   %rsi, %rdi
       movq   %rbx, %rsi
       negq   %rsi
       movq   %r12, %r8
       addq   %rsi, %r8
       movq   %rdi, %rsi
       addq   %r8, %rsi
       movq   -64(%rbp), %rdi
       negq   %rdi
       movq   -24(%rbp), %r8
       addq   %rdi, %r8
       movq   %rdx, %rdx
       negq   %rdx
       movq   -80(%rbp), %rdi
       addq   %rdx, %rdi
       movq   %r8, %rdx
       addq   %rdi, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rdx
       addq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $42, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $320, %rsp
       jmp _start
_conclusion:
       addq   $320, %rsp
       popq   %rbp
       retq
