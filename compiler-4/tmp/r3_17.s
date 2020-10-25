_start:
       movq   $0, %rcx
       movq   $0, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rdx
       jl _block182836
       jmp _block182837

_block182836:
       jmp _block182834

_block182834:
       jmp _block182832

_block182832:
       movq   $0, %rdx
       jmp _block182831

_block182837:
       jmp _block182835

_block182835:
       jmp _block182833

_block182833:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182831

_block182831:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   $38, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   $4, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   -8(%r11), %rdx
       movq   %rcx, %r11
       movq   -16(%r11), %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
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
