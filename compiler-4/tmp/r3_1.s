_start:
       movq   $1, %rcx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rdi
       addq   $24, %rdi
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdi
       jl _block181602
       jmp _block181603

_block181602:
       jmp _block181600

_block181600:
       jmp _block181598

_block181598:
       movq   $0, %rsi
       jmp _block181597

_block181603:
       jmp _block181601

_block181601:
       jmp _block181599

_block181599:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block181597

_block181597:
       movq   _free_ptr(%rip), %rsi
       addq   $24, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $5, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $42, %rax
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
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _start
_conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
