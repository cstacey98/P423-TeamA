_h2066start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r9, %r11
       movq   8(%r11), %r10
       movq   %r9, %r11
       movq   16(%r11), %r9
       movq   %r10, %r10
       addq   %r9, %r10
       movq   %r8, %r8
       addq   %r10, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rax
       addq   %rcx, %rax
       jmp _h2066conclusion



.globl _h2066
.align 16
_h2066:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _h2066start
_h2066conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main2065start:
       movq   $6, %rbx
       movq   $7, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main2065block2098
       jmp _main2065block2099

_main2065block2098:
       jmp _main2065block2096

_main2065block2096:
       jmp _main2065block2094

_main2065block2094:
       movq   $0, %rdx
       jmp _main2065block2093

_main2065block2099:
       jmp _main2065block2097

_main2065block2097:
       jmp _main2065block2095

_main2065block2095:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main2065block2093

_main2065block2093:
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
       movq   %rdx, %r9
       leaq   _h2066(%rip), %r10
       movq   $1, %rdi
       movq   $2, %rsi
       movq   $3, %rdx
       movq   $4, %rcx
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
       jmp _main2065start
_main2065conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

