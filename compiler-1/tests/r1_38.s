_start:
       movq   $32, %rax
       addq   $10, %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $0, %rsp
       jmp _start
_conclusion:
       addq   $0, %rsp
       popq   %rbp
       retq
