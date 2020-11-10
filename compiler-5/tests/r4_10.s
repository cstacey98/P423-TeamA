_map352684start:
       movq   %rdi, %rdx
       movq   %rsi, -8(%r15)
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       leaq   _f352685(%rip), %rcx
       movq   %rdx, %rdi
       callq *%rcx
       movq   %rax, %rdx
       movq   -8(%r15), %r11
       movq   16(%r11), %rdx
       leaq   _f352685(%rip), %rcx
       movq   %rdx, %rdi
       callq *%rcx
       movq   %rax, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _map352684block352718
       jmp _map352684block352719

_map352684block352718:
       jmp _map352684block352716

_map352684block352716:
       jmp _map352684block352714

_map352684block352719:
       jmp _map352684block352717

_map352684block352717:
       jmp _map352684block352715

_map352684block352714:
       movq   $0, %rdx
       jmp _map352684block352713

_map352684block352715:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _map352684block352713

_map352684block352713:
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
       movq   %rcx, %rax
       jmp _map352684conclusion



.globl _map352684
.align 16
_map352684:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $16, %r15
       jmp _map352684start
_map352684conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_add1352683start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add1352683conclusion



.globl _add1352683
.align 16
_add1352683:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _add1352683start
_add1352683conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main352682start:
       movq   $0, %rdx
       movq   $41, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main352682block352725
       jmp _main352682block352726

_main352682block352725:
       jmp _main352682block352723

_main352682block352723:
       jmp _main352682block352721

_main352682block352721:
       movq   $0, %rdx
       jmp _main352682block352720

_main352682block352726:
       jmp _main352682block352724

_main352682block352724:
       jmp _main352682block352722

_main352682block352722:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main352682block352720

_main352682block352720:
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
       leaq   _map352684(%rip), %rcx
       movq   %rsi, %rdi
       movq   %rdx, %rsi
       callq *%rcx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp _main352682conclusion



.globl _main
.align 16
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main352682start
_main352682conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

