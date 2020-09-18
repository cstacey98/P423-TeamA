_start:
       movq   $20, %rdx
       movq   $22, %rcx
       movq   %rcx, %rcx
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
