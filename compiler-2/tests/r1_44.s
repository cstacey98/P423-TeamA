_start:
       movq   $10, %rdx
       negq   %rdx
       movq   %rdx, %rdx
       addq   $11, %rdx
       movq   %rdx, %rax
       addq   $41, %rax
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
