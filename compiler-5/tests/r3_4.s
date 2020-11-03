start:
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block166027
       jmp block166028

block166028:
       jmp block166026

block166026:
       jmp block166024

block166024:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block166022

block166027:
       jmp block166025

block166025:
       jmp block166023

block166023:
       movq   $0, %rdx
       jmp block166022

block166022:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $21, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block166020
       jmp block166021

block166020:
       jmp block166018

block166018:
       jmp block166016

block166016:
       movq   $0, %rdx
       jmp block166015

block166021:
       jmp block166019

block166019:
       jmp block166017

block166017:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block166015

block166015:
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
