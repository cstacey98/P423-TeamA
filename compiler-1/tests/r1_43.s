_start:
       movq   $1, -8(%rbp)
       movq   $46, -16(%rbp)
       movq   $7, -24(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -24(%rbp)
       movq   -24(%rbp), %rax
       movq   %rax, -32(%rbp)
       addq   $4, -32(%rbp)
       movq   -16(%rbp), %rax
       movq   %rax, -40(%rbp)
       movq   -24(%rbp), %rax
       addq   %rax, -40(%rbp)
       movq   -32(%rbp), %rax
       movq   %rax, -48(%rbp)
       negq   -48(%rbp)
       movq   -48(%rbp), %rax
       addq   -40(%rbp), %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $48, %rsp
       jmp _start
_conclusion:
       addq   $48, %rsp
       popq   %rbp
       retq
