start:
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block82817
       jmp block82818

block82817:
       jmp block82815

block82815:
       jmp block82813

block82813:
       movq   $0, %rdx
       jmp block82812

block82818:
       jmp block82816

block82816:
       jmp block82814

block82814:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block82812

block82812:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -136(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block82810
       jmp block82811

block82810:
       jmp block82808

block82808:
       jmp block82806

block82806:
       movq   $0, %rdx
       jmp block82805

block82811:
       jmp block82809

block82809:
       jmp block82807

block82807:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block82805

block82805:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -136(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
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
       subq   $376, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $160, %r15
       jmp start
conclusion:
       subq   $160, %r15
       addq   $376, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
