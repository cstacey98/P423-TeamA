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
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   $1, %rdi
       addq   $1, %rdi
       movq   %rsi, %rsi
       addq   %rdi, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   $1, %rdi
       addq   $1, %rdi
       movq   %rsi, %rsi
       addq   %rdi, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   $1, %rdi
       addq   $1, %rdi
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdi, %r8
       addq   %rsi, %r8
       movq   $1, %rdi
       addq   $1, %rdi
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdi, %rdi
       addq   %rsi, %rdi
       movq   %r8, %rsi
       addq   %rdi, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rcx
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
