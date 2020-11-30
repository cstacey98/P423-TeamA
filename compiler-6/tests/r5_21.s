_app1540start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rdx, %rcx
       movq   %rsi, %rsi
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %rdi
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



.globl _app1540
.align 16
_app1540:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _app1540start
_app1540conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main539start:
       movq   %rdi, %rdx
       leaq   _app1540(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main539block579
       jmp _main539block580

_main539block580:
       jmp _main539block578

_main539block578:
       jmp _main539block576

_main539block576:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main539block574

_main539block579:
       jmp _main539block577

_main539block577:
       jmp _main539block575

_main539block575:
       movq   $0, %rdx
       jmp _main539block574

_main539block574:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _lambda548(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main539block572
       jmp _main539block573

_main539block573:
       jmp _main539block571

_main539block572:
       jmp _main539block570

_main539block570:
       jmp _main539block568

_main539block568:
       movq   $0, %rdx
       jmp _main539block567

_main539block571:
       jmp _main539block569

_main539block569:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main539block567

_main539block567:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   -8(%r15), %rdi
       movq   %rdx, %rsi
       movq   $42, %rdx
       movq   %rcx, %rax
       subq   $16, %r15
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
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _main539start
_main539conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda548start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda548conclusion



.globl _lambda548
.align 16
_lambda548:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda548start
_lambda548conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

