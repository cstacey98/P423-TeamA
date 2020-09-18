_start:
       movq   $10, %rdx
       movq   %rdx, %rcx
       movq   $32, %rdx
       movq   %rdx, %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
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
