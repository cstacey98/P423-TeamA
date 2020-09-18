_start:
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       movq   %rcx, %rax
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
