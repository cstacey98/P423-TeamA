_f354779start:
       movq   %rdi, %r12
       movq   $0, %rax
       cmpq   %rax, %r12
       je _f354779block354802
       jmp _f354779block354803

_f354779block354803:
       movq   $1, %rax
       cmpq   %rax, %r12
       je _f354779block354800
       jmp _f354779block354801

_f354779block354800:
       movq   $1, %rax
       jmp _f354779conclusion

_f354779block354801:
       movq   $1, %rdx
       negq   %rdx
       movq   %r12, %rcx
       addq   %rdx, %rcx
       leaq   _f354779(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rbx
       movq   $2, %rdx
       negq   %rdx
       movq   %r12, %rcx
       addq   %rdx, %rcx
       leaq   _f354779(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _f354779conclusion

_f354779block354802:
       movq   $0, %rax
       jmp _f354779conclusion



.globl _f354779
.align 16
_f354779:
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
       jmp _f354779start
_f354779conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_g354778start:
       movq   %rdi, %rcx
       movq   %rsi, %rdi
       movq   %rdx, %rdi
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _g354778block354806
       jmp _g354778block354807

_g354778block354806:
       movq   %rdi, %rax
       jmp _g354778conclusion

_g354778block354807:
       movq   $1, %rax
       cmpq   %rax, %rcx
       je _g354778block354804
       jmp _g354778block354805

_g354778block354805:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rsi
       addq   %rdx, %rsi
       movq   %rdi, %rcx
       addq   %rdi, %rcx
       leaq   _g354778(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rdi, %rsi
       movq   %rcx, %rdx
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_g354778block354804:
       movq   %rdi, %rax
       jmp _g354778conclusion



.globl _g354778
.align 16
_g354778:
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
       jmp _g354778start
_g354778conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354777start:
       leaq   _f354779(%rip), %rdx
       movq   $8, %rdi
       callq *%rdx
       movq   %rax, %rbx
       leaq   _g354778(%rip), %rdx
       movq   $8, %rdi
       movq   $0, %rsi
       movq   $1, %rdx
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _main354777conclusion



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
       jmp _main354777start
_main354777conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

