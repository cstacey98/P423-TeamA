even2457start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je even2457block2467
       jmp even2457block2468

even2457block2468:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   odd2456(%rip), %rdx
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

even2457block2467:
       movq   $1, %rax
       jmp even2457conclusion



.globl even2457
.align 16
even2457:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp even2457start
even2457conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
odd2456start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je odd2456block2469
       jmp odd2456block2470

odd2456block2469:
       movq   $0, %rax
       jmp odd2456conclusion

odd2456block2470:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   even2457(%rip), %rdx
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



.globl odd2456
.align 16
odd2456:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp odd2456start
odd2456conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2455start:
       leaq   even2457(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $1, %rax
       cmpq   %rax, %rdx
       je main2455block2473
       jmp main2455block2474

main2455block2474:
       jmp main2455block2472

main2455block2473:
       jmp main2455block2471

main2455block2471:
       movq   $42, %rax
       jmp main2455conclusion

main2455block2472:
       movq   $0, %rax
       jmp main2455conclusion



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
       jmp main2455start
main2455conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

