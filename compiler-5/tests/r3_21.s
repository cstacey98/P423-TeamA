start:
       movq   $40, %rbx
       movq   $1, %r12
       movq   $2, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164562
       jmp block164563

block164563:
       jmp block164561

block164561:
       jmp block164559

block164559:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164557

block164562:
       jmp block164560

block164560:
       jmp block164558

block164558:
       movq   $0, %rdx
       jmp block164557

block164557:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164555
       jmp block164556

block164555:
       jmp block164553

block164553:
       jmp block164551

block164551:
       movq   $0, %rdx
       jmp block164550

block164556:
       jmp block164554

block164554:
       jmp block164552

block164552:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp block164550

block164550:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $519, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   $1, %rax
       cmpq   %rdx, %rax
       je block164547
       jmp block164548

block164547:
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp conclusion

block164548:
       movq   $44, %rax
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
