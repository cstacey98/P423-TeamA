_start:
       movq   $3, -8(%rbp)
       addq   $7, -8(%rbp)
       movq   -8(%rbp), %rax
       movq   %rax, -16(%rbp)
       negq   -16(%rbp)
       movq   -16(%rbp), %rax
       addq   $52, %rax
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
