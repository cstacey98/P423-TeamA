start:
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165848
       jmp block165849

block165848:
       jmp block165846

block165846:
       jmp block165844

block165844:
       movq   $0, %rdx
       jmp block165843

block165849:
       jmp block165847

block165847:
       jmp block165845

block165845:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block165843

block165843:
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
       jl block165841
       jmp block165842

block165842:
       jmp block165840

block165840:
       jmp block165838

block165838:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block165836

block165841:
       jmp block165839

block165839:
       jmp block165837

block165837:
       movq   $0, %rdx
       jmp block165836

block165836:
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
