start:
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164523
       jmp block164524

block164524:
       jmp block164522

block164522:
       jmp block164520

block164520:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164518

block164523:
       jmp block164521

block164521:
       jmp block164519

block164519:
       movq   $0, %rdx
       jmp block164518

block164518:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164516
       jmp block164517

block164516:
       jmp block164514

block164514:
       jmp block164512

block164512:
       movq   $0, %rdx
       jmp block164511

block164517:
       jmp block164515

block164515:
       jmp block164513

block164513:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164511

block164511:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       cmpq   %rdx, -24(%r15)
       je block164509
       jmp block164510

block164509:
       movq   $777, %rax
       jmp conclusion

block164510:
       movq   $42, %rax
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
