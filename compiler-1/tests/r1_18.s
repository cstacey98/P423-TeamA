_start:
       movq   $99, -8(%rbp)
       movq   $22, -16(%rbp)
       movq   $42, -24(%rbp)
       movq   -24(%rbp), %rax
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
