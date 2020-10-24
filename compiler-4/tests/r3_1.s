start:
       movq   $1, %rsi
       movq   $2, %rcx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $24, %rdi
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl block14215
       jmp block14216

block14215:
       jmp block14213

block14213:
       jmp block14211

block14211:
       movq   $0, %rdx
       jmp block14210

block14216:
       jmp block14214

block14214:
       jmp block14212

block14212:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block14210

block14210:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
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
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp start
conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
