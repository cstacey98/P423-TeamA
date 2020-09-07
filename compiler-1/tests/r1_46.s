_start:
       movq   $1, -8(%rbp)
       movq   $42, -16(%rbp)
       movq   -16(%rbp), %rax
       movq   %rax, -24(%rbp)
       movq   -16(%rbp), %rax
       movq   %rax, -32(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -32(%rbp)
       movq   -24(%rbp), %rax
       movq   %rax, -40(%rbp)
       movq   -40(%rbp), %rax
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
