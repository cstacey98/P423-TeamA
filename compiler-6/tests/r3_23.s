start:
       movq   $777, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164645
       jmp block164646

block164645:
       jmp block164643

block164643:
       jmp block164641

block164641:
       movq   $0, %rdx
       jmp block164640

block164646:
       jmp block164644

block164644:
       jmp block164642

block164642:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164640

block164640:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $98, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164638
       jmp block164639

block164639:
       jmp block164637

block164637:
       jmp block164635

block164635:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block164633

block164638:
       jmp block164636

block164636:
       jmp block164634

block164634:
       movq   $0, %rdx
       jmp block164633

block164633:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $133, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   -56(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -24(%r15)
       movq   $99, %rbx
       movq   $100, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164631
       jmp block164632

block164632:
       jmp block164630

block164630:
       jmp block164628

block164628:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp block164626

block164631:
       jmp block164629

block164629:
       jmp block164627

block164627:
       movq   $0, %rdx
       jmp block164626

block164626:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $135, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       movq   -56(%r15), %r11
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
