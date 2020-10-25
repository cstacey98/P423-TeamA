_start:
       movq   $0, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _block182884
       jmp _block182885

_block182885:
       jmp _block182883

_block182883:
       jmp _block182881

_block182884:
       jmp _block182882

_block182882:
       jmp _block182880

_block182880:
       movq   $0, %rdx
       jmp _block182879

_block182881:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182879

_block182879:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       cmpq   %rdx, %rdx
       je _block182877
       jmp _block182878

_block182877:
       movq   $42, %rax
       jmp _conclusion

_block182878:
       movq   $777, %rax
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
       subq   $96, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $96, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
