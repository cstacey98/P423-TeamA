_map6start:
       movq   %rdi, %r12
       movq   %rsi, -8(%r15)
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   %r12, %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rbx
       movq   -8(%r15), %r11
       movq   16(%r11), %rcx
       movq   %r12, %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _map6block41
       jmp _map6block42

_map6block42:
       jmp _map6block40

_map6block40:
       jmp _map6block38

_map6block38:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _map6block36

_map6block41:
       jmp _map6block39

_map6block39:
       jmp _map6block37

_map6block37:
       movq   $0, %rdx
       jmp _map6block36

_map6block36:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _map6conclusion



.globl _map6
.align 16
_map6:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $16, %r15
       jmp _map6start
_map6conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_add15start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add15conclusion



.globl _add15
.align 16
_add15:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _add15start
_add15conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main4start:
       leaq   _add15(%rip), %r13
       movq   $0, %r12
       movq   $41, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main4block48
       jmp _main4block49

_main4block48:
       jmp _main4block46

_main4block46:
       jmp _main4block44

_main4block44:
       movq   $0, %rdx
       jmp _main4block43

_main4block49:
       jmp _main4block47

_main4block47:
       jmp _main4block45

_main4block45:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main4block43

_main4block43:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _map6(%rip), %rdx
       movq   %r13, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp _main4conclusion



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
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _main4start
_main4conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

