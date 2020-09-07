_start:
       callq _read_int
       movq   %rax, -8(%rbp)
       movq   $10, -16(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -16(%rbp)
       movq   -16(%rbp), %rax
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
