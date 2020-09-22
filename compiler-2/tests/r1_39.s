_start:
       movq   $7, %rdx
       addq   $3, %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   $52, %rax
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
