_m69790start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rdx
       movq   %r8, %rdx
       movq   %r9, %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rax
       jmp _m69790conclusion



.globl _m69790
.align 16
_m69790:
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
       jmp _m69790start
_m69790conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69789start:
       movq   $772, %rdx
       movq   $771, %rcx
       movq   $770, %rcx
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main69789block69821
       jmp _main69789block69822

_main69789block69821:
       jmp _main69789block69819

_main69789block69819:
       jmp _main69789block69817

_main69789block69822:
       jmp _main69789block69820

_main69789block69820:
       jmp _main69789block69818

_main69789block69817:
       movq   $0, %rdx
       jmp _main69789block69816

_main69789block69818:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main69789block69816

_main69789block69816:
       movq   _free_ptr(%rip), %rsi
       addq   $40, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $9, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r9
       leaq   _m69790(%rip), %r10
       movq   $777, %rdi
       movq   $776, %rsi
       movq   $775, %rdx
       movq   $774, %rcx
       movq   $773, %r8
       movq   %r9, %r9
       movq   %r10, %rax
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
       jmp _main69789start
_main69789conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

