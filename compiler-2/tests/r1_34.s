_start:
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rsi
       addq   %rdx, %rsi
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rcx, %rdi
       addq   %rdx, %rdi
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rdi
       addq   %rdx, %rdi
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rcx, %rsi
       addq   %rdx, %rsi
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   %rsi, %rdx
       addq   %rcx, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   $1, %rcx
       addq   $1, %rcx
       movq   %rsi, %rsi
       addq   %rcx, %rsi
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %r8
       addq   $1, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %rsi, %rsi
       addq   %rcx, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rdi, %rcx
       addq   %rdx, %rcx
       movq   $10, %rax
       addq   %rcx, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $256, %rsp
       jmp _start
_conclusion:
       addq   $256, %rsp
       popq   %rbp
       retq
