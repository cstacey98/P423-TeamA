_start:
       movq   $1, %rdx
       movq   $42, %rcx
       movq   %rcx, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %rax
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
