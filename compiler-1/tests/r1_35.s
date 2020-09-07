_start:
       callq _read_int
       movq   %rax, -8(%rbp)
       callq _read_int
       movq   %rax, -16(%rbp)
       movq   -16(%rbp), %rax
       movq   %rax, -24(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -24(%rbp)
       movq   $42, %rax
       addq   -24(%rbp), %rax
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
