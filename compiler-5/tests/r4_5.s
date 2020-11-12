_tailrecur2429start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _tailrecur2429block2436
       jmp _tailrecur2429block2437

_tailrecur2429block2436:
       movq   $0, %rax
       jmp _tailrecur2429conclusion

_tailrecur2429block2437:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _tailrecur2429(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _tailrecur2429
.align 16
_tailrecur2429:
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
       jmp _tailrecur2429start
_tailrecur2429conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main2428start:
       leaq   _tailrecur2429(%rip), %rdx
       movq   $99, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rdx, %rax
       je _main2428block2440
       jmp _main2428block2441

_main2428block2440:
       jmp _main2428block2438

_main2428block2441:
       jmp _main2428block2439

_main2428block2439:
       movq   $777, %rax
       jmp _main2428conclusion

_main2428block2438:
       movq   $42, %rax
       jmp _main2428conclusion



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
       jmp _main2428start
_main2428conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

