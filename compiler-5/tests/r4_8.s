_even2457start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _even2457block2467
       jmp _even2457block2468

_even2457block2468:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _odd2456(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_even2457block2467:
       movq   $1, %rax
       jmp _even2457conclusion



.globl _even2457
.align 16
_even2457:
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
       jmp _even2457start
_even2457conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_odd2456start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _odd2456block2469
       jmp _odd2456block2470

_odd2456block2469:
       movq   $0, %rax
       jmp _odd2456conclusion

_odd2456block2470:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _even2457(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _odd2456
.align 16
_odd2456:
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
       jmp _odd2456start
_odd2456conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main2455start:
       leaq   _even2457(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $1, %rax
       cmpq   %rax, %rdx
       je _main2455block2473
       jmp _main2455block2474

_main2455block2474:
       jmp _main2455block2472

_main2455block2473:
       jmp _main2455block2471

_main2455block2471:
       movq   $42, %rax
       jmp _main2455conclusion

_main2455block2472:
       movq   $0, %rax
       jmp _main2455conclusion



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
       jmp _main2455start
_main2455conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

