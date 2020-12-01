_fun2374start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %rbx
       movq   %rbx, %r11
       movq   8(%r11), %r9
       movq   %rbx, %r11
       movq   16(%r11), %r10
       movq   %rbx, %r11
       movq   24(%r11), %rbx
       movq   %r10, %r10
       addq   %rbx, %r10
       movq   %r9, %r9
       addq   %r10, %r9
       movq   %r8, %r8
       addq   %r9, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rax
       addq   %rcx, %rax
       jmp _fun2374conclusion



.globl _fun2374
.align 16
_fun2374:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _fun2374start
_fun2374conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main2373start:
       movq   $5, %r13
       movq   $5, %r12
       movq   $7, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2373block2411
       jmp _main2373block2412

_main2373block2412:
       jmp _main2373block2410

_main2373block2410:
       jmp _main2373block2408

_main2373block2408:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _main2373block2406

_main2373block2411:
       jmp _main2373block2409

_main2373block2409:
       jmp _main2373block2407

_main2373block2407:
       movq   $0, %rdx
       jmp _main2373block2406

_main2373block2406:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $7, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       leaq   _fun2374(%rip), %r10
       movq   $5, %rdi
       movq   $5, %rsi
       movq   $5, %rdx
       movq   $5, %rcx
       movq   $5, %r8
       movq   %r9, %r9
       movq   %r10, %rax
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
       jmp _main2373start
_main2373conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

