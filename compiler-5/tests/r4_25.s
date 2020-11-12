_id2157start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       jmp _id2157conclusion



.globl _id2157
.align 16
_id2157:
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
       jmp _id2157start
_id2157conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f2156start:
       movq   %rdi, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _f2156conclusion



.globl _f2156
.align 16
_f2156:
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
       jmp _f2156start
_f2156conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main2155start:
       leaq   _id2157(%rip), %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2155block2175
       jmp _main2155block2176

_main2155block2176:
       jmp _main2155block2174

_main2155block2174:
       jmp _main2155block2172

_main2155block2172:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2155block2170

_main2155block2175:
       jmp _main2155block2173

_main2155block2173:
       jmp _main2155block2171

_main2155block2171:
       movq   $0, %rdx
       jmp _main2155block2170

_main2155block2170:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _f2156(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
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
       jmp _main2155start
_main2155conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

