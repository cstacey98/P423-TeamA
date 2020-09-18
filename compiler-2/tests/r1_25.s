_start:
       movq   $10, %rdx
       addq   $11, %rdx
       movq   $4, %rcx
       negq   %rcx
       movq   $25, %rsi
       addq   %rcx, %rsi
       movq   %rdx, %rax
       addq   %rsi, %rax
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
