_start:
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       movq   %rcx, %rax
       addq   $42, %rax
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
