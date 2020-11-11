_map67844start:
       movq   %rdi, %rdx
       movq   %rsi, -8(%r15)
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       leaq   _f67845(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   -8(%r15), %r11
       movq   16(%r11), %rcx
       leaq   _f67845(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _map67844block67878
       jmp _map67844block67879

_map67844block67879:
       jmp _map67844block67877

_map67844block67877:
       jmp _map67844block67875

_map67844block67878:
       jmp _map67844block67876

_map67844block67876:
       jmp _map67844block67874

_map67844block67874:
       movq   $0, %rdx
       jmp _map67844block67873

_map67844block67875:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _map67844block67873

_map67844block67873:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $5, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _map67844conclusion



.globl _map67844
.align 16
_map67844:
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
       jmp _map67844start
_map67844conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_add167843start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add167843conclusion



.globl _add167843
.align 16
_add167843:
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
       jmp _add167843start
_add167843conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main67842start:
       movq   $0, %rdx
       movq   $41, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main67842block67885
       jmp _main67842block67886

_main67842block67886:
       jmp _main67842block67884

_main67842block67884:
       jmp _main67842block67882

_main67842block67882:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main67842block67880

_main67842block67885:
       jmp _main67842block67883

_main67842block67883:
       jmp _main67842block67881

_main67842block67881:
       movq   $0, %rdx
       jmp _main67842block67880

_main67842block67880:
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
       movq   %rcx, %rcx
       leaq   _map67844(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp _main67842conclusion



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
       jmp _main67842start
_main67842conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

