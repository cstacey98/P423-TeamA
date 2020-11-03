start:
       movq   $40, %r12
       movq   $2, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164403
       jmp block164404

block164403:
       jmp block164401

block164401:
       jmp block164399

block164404:
       jmp block164402

block164402:
       jmp block164400

block164399:
       movq   $0, %rdx
       jmp block164398

block164400:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block164398

block164398:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
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
