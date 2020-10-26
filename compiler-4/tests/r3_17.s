start:
       movq   $0, %rbx
       movq   $0, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164424
       jmp block164425

block164424:
       jmp block164422

block164422:
       jmp block164420

block164420:
       movq   $0, %rdx
       jmp block164419

block164425:
       jmp block164423

block164423:
       jmp block164421

block164421:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block164419

block164419:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   $38, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   $4, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
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
