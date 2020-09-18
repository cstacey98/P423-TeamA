_start:
       movq   $10, %rdx
       movq   %rdx, %rdx
       movq   $32, %rcx
       movq   %rcx, %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
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
