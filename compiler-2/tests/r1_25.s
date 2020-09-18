_start:
       movq   $10, %rcx
       addq   $11, %rcx
       movq   $4, %rsi
       negq   %rsi
       movq   $25, %rdx
       addq   %rsi, %rdx
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
