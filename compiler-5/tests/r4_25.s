_id354834start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       jmp _id354834conclusion



.globl _id354834
.align 16
_id354834:
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
       jmp _id354834start
_id354834conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f354833start:
       movq   %rdi, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _f354833conclusion



.globl _f354833
.align 16
_f354833:
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
       jmp _f354833start
_f354833conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354832start:
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354832block354853
       jmp _main354832block354854

_main354832block354853:
       jmp _main354832block354851

_main354832block354854:
       jmp _main354832block354852

_main354832block354852:
       jmp _main354832block354850

_main354832block354850:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354832block354848

_main354832block354851:
       jmp _main354832block354849

_main354832block354849:
       movq   $0, %rdx
       jmp _main354832block354848

_main354832block354848:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _f354833(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _clos354837(%rip), %rdx
       movq   $42, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



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
       jmp _main354832start
_main354832conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

