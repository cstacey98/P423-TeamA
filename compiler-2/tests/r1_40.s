_start:
       movq   $10, %rdx
       negq   %rdx
       movq   $52, %rax
       addq   %rdx, %rax
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
