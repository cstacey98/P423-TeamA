_start:
       movq   $14, %rdx
       movq   %rdx, %rcx
       addq   %rdx, %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
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
