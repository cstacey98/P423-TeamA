_start:
       callq _read_int
       movq   %rax, -8(%rbp)
       movq   $12, -16(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -16(%rbp)
       movq   $8, -24(%rbp)
       negq   -24(%rbp)
       movq   -24(%rbp), %rax
       movq   %rax, -32(%rbp)
       addq   $10, -32(%rbp)
       movq   -32(%rbp), %rax
       movq   %rax, -40(%rbp)
       negq   -40(%rbp)
       movq   -16(%rbp), %rax
       movq   %rax, -48(%rbp)
       movq   -16(%rbp), %rax
       addq   %rax, -48(%rbp)
       movq   -48(%rbp), %rax
       movq   %rax, -56(%rbp)
       movq   -40(%rbp), %rax
       addq   %rax, -56(%rbp)
       movq   -56(%rbp), %rax
       addq   $4, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $64, %rsp
       jmp _start
_conclusion:
       addq   $64, %rsp
       popq   %rbp
       retq
