_start:
       movq   $1, %rcx
       movq   $42, %rdx
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %rax
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
