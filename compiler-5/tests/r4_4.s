_sum70252start:
       movq   %rdi, %rbx
       movq   $1, %rax
       cmpq   %rax, %rbx
       je _sum70252block70260
       jmp _sum70252block70261

_sum70252block70260:
       movq   $1, %rax
       jmp _sum70252conclusion

_sum70252block70261:
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   _sum70252(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _sum70252conclusion



.globl _sum70252
.align 16
_sum70252:
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
       jmp _sum70252start
_sum70252conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main70251start:
       leaq   _sum70252(%rip), %rdx
       movq   $3, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $6, %rax
       cmpq   %rax, %rdx
       je _main70251block70264
       jmp _main70251block70265

_main70251block70264:
       jmp _main70251block70262

_main70251block70265:
       jmp _main70251block70263

_main70251block70262:
       movq   $42, %rax
       jmp _main70251conclusion

_main70251block70263:
       movq   $777, %rax
       jmp _main70251conclusion



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
       jmp _main70251start
_main70251conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

