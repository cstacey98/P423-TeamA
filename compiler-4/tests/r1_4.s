_start:
       movq   $10, %rsi
       addq   $11, %rsi
       movq   $4, %rcx
       negq   %rcx
       movq   $25, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rax
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
