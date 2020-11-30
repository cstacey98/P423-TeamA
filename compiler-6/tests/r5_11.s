_f47start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       leaq   _lambda51(%rip), %rbx
       movq   %rdx, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f47block82
       jmp _f47block83

_f47block83:
       jmp _f47block81

_f47block81:
       jmp _f47block79

_f47block79:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _f47block77

_f47block82:
       jmp _f47block80

_f47block80:
       jmp _f47block78

_f47block78:
       movq   $0, %rdx
       jmp _f47block77

_f47block77:
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
       jmp _f47conclusion



.globl _f47
.align 16
_f47:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _f47start
_f47conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main46start:
       movq   %rdi, %rdx
       leaq   _f47(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main46block89
       jmp _main46block90

_main46block90:
       jmp _main46block88

_main46block88:
       jmp _main46block86

_main46block86:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main46block84

_main46block89:
       jmp _main46block87

_main46block87:
       jmp _main46block85

_main46block85:
       movq   $0, %rdx
       jmp _main46block84

_main46block84:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rbx
       callq _read_int
       movq   %rax, %rcx
       movq   %rbx, %r11
       movq   8(%r11), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %rcx
       movq   %rbx, %r11
       movq   8(%r11), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _main
.align 16
_main:
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
       addq   $0, %r15
       jmp _main46start
_main46conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda51start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _lambda51conclusion



.globl _lambda51
.align 16
_lambda51:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda51start
_lambda51conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

