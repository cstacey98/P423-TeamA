start:
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164384
       jmp block164385

block164385:
       jmp block164383

block164383:
       jmp block164381

block164381:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164379

block164384:
       jmp block164382

block164382:
       jmp block164380

block164380:
       movq   $0, %rdx
       jmp block164379

block164379:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $1, %rbx
       movq   $2, %r14
       movq   $3, %r12
       movq   $4, -16(%rbp)
       movq   $5, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164377
       jmp block164378

block164377:
       jmp block164375

block164375:
       jmp block164373

block164373:
       movq   $0, %rdx
       jmp block164372

block164378:
       jmp block164376

block164376:
       jmp block164374

block164374:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164372

block164372:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rbx
       callq read_int
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je block164370
       jmp block164371

block164370:
       jmp block164368

block164368:
       movq   -24(%r15), %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       jmp block164367

block164371:
       jmp block164369

block164369:
       movq   %rbx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       jmp block164367

block164367:
       movq   -24(%r15), %r11
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
