_start:
       movq   $1, %rcx
       movq   $46, %rdx
       movq   %rcx, %rcx
       addq   $7, %rcx
       movq   $4, %rsi
       addq   %rcx, %rsi
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   %rsi, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
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
