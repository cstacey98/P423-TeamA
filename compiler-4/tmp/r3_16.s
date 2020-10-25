_start:
       movq   $40, %rdx
       movq   $2, %rsi
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rdi
       addq   $24, %rdi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdi
       jl _block182815
       jmp _block182816

_block182816:
       jmp _block182814

_block182814:
       jmp _block182812

_block182812:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182810

_block182815:
       jmp _block182813

_block182813:
       jmp _block182811

_block182811:
       movq   $0, %rcx
       jmp _block182810

_block182810:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $5, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rcx
       movq   %rdx, %r11
       movq   -16(%r11), %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
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
