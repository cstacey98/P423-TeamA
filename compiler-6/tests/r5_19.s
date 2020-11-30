_main415start:
       movq   %rdi, %rdx
       leaq   _lambda419(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main415block448
       jmp _main415block449

_main415block449:
       jmp _main415block447

_main415block448:
       jmp _main415block446

_main415block446:
       jmp _main415block444

_main415block444:
       movq   $0, %rdx
       jmp _main415block443

_main415block447:
       jmp _main415block445

_main415block445:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main415block443

_main415block443:
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
       movq   $42, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $444, %rsi
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
       jmp _main415start
_main415conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda419start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       leaq   _lambda421(%rip), %rbx
       movq   %rdx, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _lambda419block455
       jmp _lambda419block456

_lambda419block455:
       jmp _lambda419block453

_lambda419block453:
       jmp _lambda419block451

_lambda419block451:
       movq   $0, %rdx
       jmp _lambda419block450

_lambda419block456:
       jmp _lambda419block454

_lambda419block454:
       jmp _lambda419block452

_lambda419block452:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _lambda419block450

_lambda419block450:
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
       jmp _lambda419conclusion



.globl _lambda419
.align 16
_lambda419:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda419start
_lambda419conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda421start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %rax
       jmp _lambda421conclusion



.globl _lambda421
.align 16
_lambda421:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda421start
_lambda421conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

