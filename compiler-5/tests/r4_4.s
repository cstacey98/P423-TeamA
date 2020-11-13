_sum2414start:
       movq   %rdi, %rbx
       movq   $1, %rax
       cmpq   %rax, %rbx
       je _sum2414block2422
       jmp _sum2414block2423

_sum2414block2422:
       movq   $1, %rax
       jmp _sum2414conclusion

_sum2414block2423:
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   _sum2414(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _sum2414conclusion



.globl _sum2414
.align 16
_sum2414:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _sum2414start
_sum2414conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main2413start:
       leaq   _sum2414(%rip), %rdx
       movq   $3, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $6, %rax
       cmpq   %rax, %rdx
       je _main2413block2426
       jmp _main2413block2427

_main2413block2426:
       jmp _main2413block2424

_main2413block2427:
       jmp _main2413block2425

_main2413block2424:
       movq   $42, %rax
       jmp _main2413conclusion

_main2413block2425:
       movq   $777, %rax
       jmp _main2413conclusion



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
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _main2413start
_main2413conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

