f582start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $4, %rdx
       leaq   lambda589(%rip), %r13
       movq   %rcx, %rbx
       movq   %rdx, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl f582block633
       jmp f582block634

f582block633:
       jmp f582block631

f582block631:
       jmp f582block629

f582block629:
       movq   $0, %rdx
       jmp f582block628

f582block634:
       jmp f582block632

f582block632:
       jmp f582block630

f582block630:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp f582block628

f582block628:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $7, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp f582conclusion



.globl f582
.align 16
f582:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp f582start
f582conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main581start:
       movq   %rdi, %rdx
       leaq   f582(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main581block647
       jmp main581block648

main581block648:
       jmp main581block646

main581block646:
       jmp main581block644

main581block644:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main581block642

main581block647:
       jmp main581block645

main581block645:
       jmp main581block643

main581block643:
       movq   $0, %rdx
       jmp main581block642

main581block642:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $5, %rsi
       callq *%rdx
       movq   %rax, -8(%r15)
       leaq   f582(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main581block640
       jmp main581block641

main581block641:
       jmp main581block639

main581block639:
       jmp main581block637

main581block640:
       jmp main581block638

main581block638:
       jmp main581block636

main581block636:
       movq   $0, %rdx
       jmp main581block635

main581block637:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main581block635

main581block635:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $3, %rsi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $11, %rsi
       callq *%rdx
       movq   %rax, %rbx
       movq   -16(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $15, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp main581conclusion



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp main581start
main581conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda589start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rsi
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rax
       addq   %rdx, %rax
       jmp lambda589conclusion



.globl lambda589
.align 16
lambda589:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda589start
lambda589conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

