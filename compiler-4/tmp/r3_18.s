_start:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block182867
       jmp _block182868

_block182867:
       jmp _block182865

_block182865:
       jmp _block182863

_block182863:
       movq   $0, %rcx
       jmp _block182862

_block182868:
       jmp _block182866

_block182866:
       jmp _block182864

_block182864:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182862

_block182862:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdx
       jl _block182860
       jmp _block182861

_block182860:
       jmp _block182858

_block182858:
       jmp _block182856

_block182856:
       movq   $0, %rdx
       jmp _block182855

_block182861:
       jmp _block182859

_block182859:
       jmp _block182857

_block182857:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182855

_block182855:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rax
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
