start:
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164592
       jmp block164593

block164592:
       jmp block164590

block164590:
       jmp block164588

block164588:
       movq   $0, %rdx
       jmp block164587

block164593:
       jmp block164591

block164591:
       jmp block164589

block164589:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164587

block164587:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164585
       jmp block164586

block164586:
       jmp block164584

block164584:
       jmp block164582

block164582:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164580

block164585:
       jmp block164583

block164583:
       jmp block164581

block164581:
       movq   $0, %rdx
       jmp block164580

block164580:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp conclusion



.globl main
main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $80, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $160, %r15
       jmp start
conclusion:
       subq   $160, %r15
       addq   $80, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
