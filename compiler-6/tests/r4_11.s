_f51start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   $100, %rax
       cmpq   %rax, %rcx
       je _f51block80
       jmp _f51block81

_f51block81:
       movq   %rcx, %r12
       addq   $1, %r12
       movq   %rdx, %r11
       movq   8(%r11), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f51block78
       jmp _f51block79

_f51block79:
       jmp _f51block77

_f51block77:
       jmp _f51block75

_f51block78:
       jmp _f51block76

_f51block76:
       jmp _f51block74

_f51block80:
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _f51conclusion

_f51block75:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f51block73

_f51block74:
       movq   $0, %rdx
       jmp _f51block73

_f51block73:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _f51(%rip), %rdx
       movq   %r12, %rdi
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



.globl _f51
.align 16
_f51:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _f51start
_f51conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main50start:
       movq   $42, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main50block87
       jmp _main50block88

_main50block87:
       jmp _main50block85

_main50block85:
       jmp _main50block83

_main50block83:
       movq   $0, %rdx
       jmp _main50block82

_main50block88:
       jmp _main50block86

_main50block86:
       jmp _main50block84

_main50block84:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main50block82

_main50block82:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _f51(%rip), %rdx
       movq   $0, %rdi
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
       jmp _main50start
_main50conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

