sum2414start:
       movq   %rdi, %rbx
       movq   $1, %rax
       cmpq   %rax, %rbx
       je sum2414block2422
       jmp sum2414block2423

sum2414block2422:
       movq   $1, %rax
       jmp sum2414conclusion

sum2414block2423:
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   sum2414(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp sum2414conclusion



.globl sum2414
.align 16
sum2414:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp sum2414start
sum2414conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2413start:
       leaq   sum2414(%rip), %rdx
       movq   $3, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $6, %rax
       cmpq   %rax, %rdx
       je main2413block2426
       jmp main2413block2427

main2413block2426:
       jmp main2413block2424

main2413block2427:
       jmp main2413block2425

main2413block2424:
       movq   $42, %rax
       jmp main2413conclusion

main2413block2425:
       movq   $777, %rax
       jmp main2413conclusion



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       addq   $0, %r15
       jmp main2413start
main2413conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

