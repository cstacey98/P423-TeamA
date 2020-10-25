_start:
       movq   $20, %rsi
       movq   $22, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $24, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block182903
       jmp _block182904

_block182903:
       jmp _block182901

_block182901:
       jmp _block182899

_block182899:
       movq   $0, %rdx
       jmp _block182898

_block182904:
       jmp _block182902

_block182902:
       jmp _block182900

_block182900:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182898

_block182898:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
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
