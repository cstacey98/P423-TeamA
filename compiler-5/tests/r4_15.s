_minus409start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _minus409conclusion



.globl _minus409
.align 16
_minus409:
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
       jmp _minus409start
_minus409conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_map-vector408start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _map-vector408block440
       jmp _map-vector408block441

_map-vector408block441:
       jmp _map-vector408block439

_map-vector408block439:
       jmp _map-vector408block437

_map-vector408block440:
       jmp _map-vector408block438

_map-vector408block438:
       jmp _map-vector408block436

_map-vector408block437:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _map-vector408block435

_map-vector408block436:
       movq   $0, %rdx
       jmp _map-vector408block435

_map-vector408block435:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _map-vector408conclusion



.globl _map-vector408
.align 16
_map-vector408:
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
       jmp _map-vector408start
_map-vector408conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main407start:
       leaq   _minus409(%rip), %rsi
       movq   $43, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main407block447
       jmp _main407block448

_main407block448:
       jmp _main407block446

_main407block446:
       jmp _main407block444

_main407block444:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main407block442

_main407block447:
       jmp _main407block445

_main407block445:
       jmp _main407block443

_main407block443:
       movq   $0, %rdx
       jmp _main407block442

_main407block442:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _map-vector408(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main407conclusion



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
       jmp _main407start
_main407conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

