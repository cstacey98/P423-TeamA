start:
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164472
       jmp block164473

block164473:
       jmp block164471

block164471:
       jmp block164469

block164472:
       jmp block164470

block164470:
       jmp block164468

block164468:
       movq   $0, %rdx
       jmp block164467

block164469:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164467

block164467:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       cmpq   %rdx, %rdx
       je block164465
       jmp block164466

block164465:
       movq   $42, %rax
       jmp conclusion

block164466:
       movq   $777, %rax
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
