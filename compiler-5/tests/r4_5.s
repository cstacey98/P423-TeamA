tailrecur2429start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je tailrecur2429block2436
       jmp tailrecur2429block2437

tailrecur2429block2436:
       movq   $0, %rax
       jmp tailrecur2429conclusion

tailrecur2429block2437:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   tailrecur2429(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl tailrecur2429
.align 16
tailrecur2429:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp tailrecur2429start
tailrecur2429conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2428start:
       leaq   tailrecur2429(%rip), %rdx
       movq   $99, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rdx, %rax
       je main2428block2440
       jmp main2428block2441

main2428block2440:
       jmp main2428block2438

main2428block2441:
       jmp main2428block2439

main2428block2439:
       movq   $777, %rax
       jmp main2428conclusion

main2428block2438:
       movq   $42, %rax
       jmp main2428conclusion



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
       jmp main2428start
main2428conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

