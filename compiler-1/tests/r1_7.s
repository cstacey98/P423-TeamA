_start:
       movq   $22, -8(%rbp)
       movq   -8(%rbp), %rax
       movq   %rax, -16(%rbp)
       movq   $20, -24(%rbp)
       movq   -24(%rbp), %rax
       addq   -16(%rbp), %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $32, %rsp
       jmp _start
_conclusion:
       addq   $32, %rsp
       popq   %rbp
       retq
