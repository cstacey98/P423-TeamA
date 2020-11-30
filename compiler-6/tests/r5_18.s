_doubleid376start:
       movq   %rdi, %rdx
       movq   %rsi, %rbx
       leaq   _lambda380(%rip), %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _doubleid376block406
       jmp _doubleid376block407

_doubleid376block406:
       jmp _doubleid376block404

_doubleid376block407:
       jmp _doubleid376block405

_doubleid376block405:
       jmp _doubleid376block403

_doubleid376block403:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _doubleid376block401

_doubleid376block404:
       jmp _doubleid376block402

_doubleid376block402:
       movq   $0, %rdx
       jmp _doubleid376block401

_doubleid376block401:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   %rbx, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _doubleid376
.align 16
_doubleid376:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _doubleid376start
_doubleid376conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main375start:
       movq   %rdi, %rdx
       leaq   _doubleid376(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main375block413
       jmp _main375block414

_main375block414:
       jmp _main375block412

_main375block412:
       jmp _main375block410

_main375block410:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main375block408

_main375block413:
       jmp _main375block411

_main375block411:
       jmp _main375block409

_main375block409:
       movq   $0, %rdx
       jmp _main375block408

_main375block408:
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
       jmp _main375start
_main375conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda380start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda380conclusion



.globl _lambda380
.align 16
_lambda380:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda380start
_lambda380conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

