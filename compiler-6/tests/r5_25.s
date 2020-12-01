makewrapper654start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rdx
       leaq   lambda668(%rip), %rbx
       movq   %rcx, %r12
       movq   %rdx, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl makewrapper654block771
       jmp makewrapper654block772

makewrapper654block771:
       jmp makewrapper654block769

makewrapper654block772:
       jmp makewrapper654block770

makewrapper654block770:
       jmp makewrapper654block768

makewrapper654block768:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp makewrapper654block766

makewrapper654block769:
       jmp makewrapper654block767

makewrapper654block767:
       movq   $0, %rdx
       jmp makewrapper654block766

makewrapper654block766:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $7, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp makewrapper654conclusion



.globl makewrapper654
.align 16
makewrapper654:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp makewrapper654start
makewrapper654conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
add1653start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp add1653conclusion



.globl add1653
.align 16
add1653:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp add1653start
add1653conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
sub1652start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp sub1652conclusion



.globl sub1652
.align 16
sub1652:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp sub1652start
sub1652conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
constfun651start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   $42, %rax
       jmp constfun651conclusion



.globl constfun651
.align 16
constfun651:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp constfun651start
constfun651conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
double650start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   %rdx, %rax
       jmp double650conclusion



.globl double650
.align 16
double650:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp double650start
double650conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main649start:
       movq   %rdi, %rdx
       leaq   makewrapper654(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main649block813
       jmp main649block814

main649block813:
       jmp main649block811

main649block811:
       jmp main649block809

main649block809:
       movq   $0, %rdx
       jmp main649block808

main649block814:
       jmp main649block812

main649block812:
       jmp main649block810

main649block810:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main649block808

main649block808:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   add1653(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main649block806
       jmp main649block807

main649block806:
       jmp main649block804

main649block804:
       jmp main649block802

main649block802:
       movq   $0, %rdx
       jmp main649block801

main649block807:
       jmp main649block805

main649block805:
       jmp main649block803

main649block803:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main649block801

main649block801:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       leaq   sub1652(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main649block799
       jmp main649block800

main649block799:
       jmp main649block797

main649block797:
       jmp main649block795

main649block795:
       movq   $0, %rdx
       jmp main649block794

main649block800:
       jmp main649block798

main649block798:
       jmp main649block796

main649block796:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main649block794

main649block794:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   -8(%r15), %rdi
       movq   -16(%r15), %rsi
       movq   %rdx, %rdx
       callq *%rcx
       movq   %rax, -8(%r15)
       movq   -8(%r15), %rax
       movq   %rax, -8(%r15)
       leaq   constfun651(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main649block792
       jmp main649block793

main649block793:
       jmp main649block791

main649block791:
       jmp main649block789

main649block789:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main649block787

main649block792:
       jmp main649block790

main649block790:
       jmp main649block788

main649block788:
       movq   $0, %rdx
       jmp main649block787

main649block787:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   -8(%r15), %rax
       movq   %rax, -8(%r15)
       leaq   double650(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main649block785
       jmp main649block786

main649block785:
       jmp main649block783

main649block783:
       jmp main649block781

main649block786:
       jmp main649block784

main649block784:
       jmp main649block782

main649block782:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main649block780

main649block781:
       movq   $0, %rdx
       jmp main649block780

main649block780:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $11, %rsi
       callq *%rdx
       movq   %rax, %rdx
       leaq   constfun651(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main649block778
       jmp main649block779

main649block778:
       jmp main649block776

main649block776:
       jmp main649block774

main649block774:
       movq   $0, %rdx
       jmp main649block773

main649block779:
       jmp main649block777

main649block777:
       jmp main649block775

main649block775:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main649block773

main649block773:
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
       movq   $777, %rsi
       movq   %rdx, %rax
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



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
       jmp main649start
main649conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda668start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rsi
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       leaq   lambda670(%rip), %rbx
       movq   %rsi, %r14
       movq   %rcx, %r13
       movq   %rdx, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl lambda668block820
       jmp lambda668block821

lambda668block821:
       jmp lambda668block819

lambda668block820:
       jmp lambda668block818

lambda668block819:
       jmp lambda668block817

lambda668block817:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp lambda668block815

lambda668block818:
       jmp lambda668block816

lambda668block816:
       movq   $0, %rdx
       jmp lambda668block815

lambda668block815:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $9, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp lambda668conclusion



.globl lambda668
.align 16
lambda668:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda668start
lambda668conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda670start:
       movq   %rdi, %rdi
       movq   %rsi, %rcx
       movq   %rdi, %r11
       movq   16(%r11), %rdx
       movq   %rdi, %r11
       movq   24(%r11), %rsi
       movq   %rdi, %r11
       movq   32(%r11), %rdi
       movq   %rdi, -8(%r15)
       movq   %rsi, -16(%r15)
       movq   %rdx, %rsi
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   -16(%r15), %r11
       movq   8(%r11), %rdx
       movq   -16(%r15), %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl lambda670
.align 16
lambda670:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp lambda670start
lambda670conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

