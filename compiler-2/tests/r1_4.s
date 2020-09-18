_start:
       movq   $10, %rsi
       addq   $11, %rsi
       movq   $4, %rdx
       negq   %rdx
       movq   $25, %rcx
       addq   %rdx, %rcx
       movq   %rsi, %rax
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
