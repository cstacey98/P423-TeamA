_start:
       callq _read_int
       movq   %rax, %rdx
       movq   %rdx, %rdx
       addq   $10, %rdx
       movq   %rdx, %rax
       negq   %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $16, %rsp
       jmp _start
_conclusion:
       addq   $16, %rsp
       popq   %rbp
       retq
