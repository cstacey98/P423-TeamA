_start:
       movq   $1, %rdx
       addq   $1, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rdx
       addq   %rcx, %rdx
       movq   $1, %rcx
       addq   %rdx, %rcx
       movq   $1, %rax
       addq   %rcx, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $320, %rsp
       jmp _start
_conclusion:
       addq   $320, %rsp
       popq   %rbp
       retq
