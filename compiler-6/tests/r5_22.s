_f582start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $4, %rdx
       leaq   _lambda589(%rip), %r13
       movq   %rcx, %rbx
       movq   %rdx, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f582block633
       jmp _f582block634

_f582block633:
       jmp _f582block631

_f582block631:
       jmp _f582block629

_f582block629:
       movq   $0, %rdx
       jmp _f582block628

_f582block634:
       jmp _f582block632

_f582block632:
       jmp _f582block630

_f582block630:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _f582block628

_f582block628:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $7, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _f582conclusion



.globl _f582
.align 16
_f582:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _f582start
_f582conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main581start:
       movq   %rdi, %rdx
       leaq   _f582(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main581block647
       jmp _main581block648

_main581block648:
       jmp _main581block646

_main581block646:
       jmp _main581block644

_main581block644:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main581block642

_main581block647:
       jmp _main581block645

_main581block645:
       jmp _main581block643

_main581block643:
       movq   $0, %rdx
       jmp _main581block642

_main581block642:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $5, %rsi
       callq *%rdx
       movq   %rax, -8(%r15)
       leaq   _f582(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main581block640
       jmp _main581block641

_main581block641:
       jmp _main581block639

_main581block639:
       jmp _main581block637

_main581block640:
       jmp _main581block638

_main581block638:
       jmp _main581block636

_main581block636:
       movq   $0, %rdx
       jmp _main581block635

_main581block637:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main581block635

_main581block635:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $3, %rsi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $11, %rsi
       callq *%rdx
       movq   %rax, %rbx
       movq   -16(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $15, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _main581conclusion



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
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _main581start
_main581conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda589start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rsi
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rax
       addq   %rdx, %rax
       jmp _lambda589conclusion



.globl _lambda589
.align 16
_lambda589:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda589start
_lambda589conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

