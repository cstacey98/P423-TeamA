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
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
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
       retq
_mapvector408start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _mapvector408block440
       jmp _mapvector408block441

_mapvector408block441:
       jmp _mapvector408block439

_mapvector408block439:
       jmp _mapvector408block437

_mapvector408block440:
       jmp _mapvector408block438

_mapvector408block438:
       jmp _mapvector408block436

_mapvector408block437:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _mapvector408block435

_mapvector408block436:
       movq   $0, %rdx
       jmp _mapvector408block435

_mapvector408block435:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _mapvector408conclusion



.globl _mapvector408
.align 16
_mapvector408:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _mapvector408start
_mapvector408conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main407start:
       leaq   _minus409(%rip), %rbx
       movq   $43, %r12
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
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _mapvector408(%rip), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main407conclusion



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
       jmp _main407start
_main407conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

