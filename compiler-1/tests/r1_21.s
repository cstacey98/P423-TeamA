_start:
       movq   $14, -8(%rbp)
       movq   -8(%rbp), %rax
       movq   %rax, -16(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -16(%rbp)
       movq   -8(%rbp), %rax
       addq   -16(%rbp), %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $16, %rsp
       jmp _start
_conclusion:
       addq   $16, %rsp
       popq   %rbp
       retq
