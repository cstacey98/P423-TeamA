_start:
       movq   $1, %rcx
       addq   $1, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rcx, %rsi
       addq   %rdx, %rsi
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rcx
       addq   $1, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   $1, %rdi
       addq   $1, %rdi
       movq   $1, %rsi
       addq   $1, %rsi
       movq   %rdi, %rdi
       addq   %rsi, %rdi
       movq   %rdx, %rdx
       addq   %rdi, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   $1, %rsi
       addq   $1, %rsi
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rdi
       addq   $1, %rdi
       movq   %rdx, %rdx
       addq   %rdi, %rdx
       movq   %rsi, %rdi
       addq   %rdx, %rdi
       movq   $1, %rsi
       addq   $1, %rsi
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rsi, %r8
       addq   %rdx, %r8
       movq   $1, %rsi
       addq   $1, %rsi
       movq   $1, %rdx
       addq   $1, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   %r8, %rdx
       addq   %rsi, %rdx
       movq   %rdi, %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rdx
       addq   %rsi, %rdx
       movq   $10, %rax
       addq   %rdx, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $240, %rsp
       jmp _start
_conclusion:
       addq   $240, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
