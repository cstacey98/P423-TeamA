_start:
       movq   $30, %rdx
       movq   %rdx, %rdx
       addq   $14, %rdx
       movq   $2, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $32, %rsp
       jmp _start
_conclusion:
       addq   $32, %rsp
       popq   %rbp
       retq
