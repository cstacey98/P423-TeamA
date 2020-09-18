_start:
       movq   $1, %rdx
       movq   $46, %rcx
       movq   %rdx, %rdx
       addq   $7, %rdx
       movq   $4, %rsi
       addq   %rdx, %rsi
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $48, %rsp
       jmp _start
_conclusion:
       addq   $48, %rsp
       popq   %rbp
       retq
