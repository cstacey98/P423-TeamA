_start:
       movq   $10, %rdx
       addq   $11, %rdx
       movq   $4, %rsi
       negq   %rsi
       movq   $25, %rcx
       addq   %rsi, %rcx
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
