_start:
       movq   $5, -8(%rbp)
       negq   -8(%rbp)
       movq   -8(%rbp), %rax
       addq   $47, %rax
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
