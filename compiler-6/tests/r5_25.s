_makewrapper654start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rdx
       leaq   _lambda668(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _makewrapper654block761
       jmp _makewrapper654block762

_makewrapper654block761:
       jmp _makewrapper654block759

_makewrapper654block759:
       jmp _makewrapper654block757

_makewrapper654block757:
       movq   $0, %rdx
       jmp _makewrapper654block756

_makewrapper654block762:
       jmp _makewrapper654block760

_makewrapper654block760:
       jmp _makewrapper654block758

_makewrapper654block758:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _makewrapper654block756

_makewrapper654block756:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _makewrapper654conclusion



.globl _makewrapper654
.align 16
_makewrapper654:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _makewrapper654start
_makewrapper654conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_add1653start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add1653conclusion



.globl _add1653
.align 16
_add1653:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _add1653start
_add1653conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_sub1652start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _sub1652conclusion



.globl _sub1652
.align 16
_sub1652:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _sub1652start
_sub1652conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_constfun651start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   $42, %rax
       jmp _constfun651conclusion



.globl _constfun651
.align 16
_constfun651:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _constfun651start
_constfun651conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_double650start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   %rdx, %rax
       jmp _double650conclusion



.globl _double650
.align 16
_double650:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _double650start
_double650conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main649start:
       movq   %rdi, %rdx
       leaq   _makewrapper654(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main649block803
       jmp _main649block804

_main649block804:
       jmp _main649block802

_main649block802:
       jmp _main649block800

_main649block800:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main649block798

_main649block803:
       jmp _main649block801

_main649block801:
       jmp _main649block799

_main649block799:
       movq   $0, %rdx
       jmp _main649block798

_main649block798:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _add1653(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main649block796
       jmp _main649block797

_main649block796:
       jmp _main649block794

_main649block794:
       jmp _main649block792

_main649block792:
       movq   $0, %rdx
       jmp _main649block791

_main649block797:
       jmp _main649block795

_main649block795:
       jmp _main649block793

_main649block793:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main649block791

_main649block791:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       leaq   _sub1652(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main649block789
       jmp _main649block790

_main649block790:
       jmp _main649block788

_main649block788:
       jmp _main649block786

_main649block786:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main649block784

_main649block789:
       jmp _main649block787

_main649block787:
       jmp _main649block785

_main649block785:
       movq   $0, %rdx
       jmp _main649block784

_main649block784:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       leaq   _constfun651(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main649block782
       jmp _main649block783

_main649block782:
       jmp _main649block780

_main649block780:
       jmp _main649block778

_main649block778:
       movq   $0, %rdx
       jmp _main649block777

_main649block783:
       jmp _main649block781

_main649block781:
       jmp _main649block779

_main649block779:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main649block777

_main649block777:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       leaq   _double650(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main649block775
       jmp _main649block776

_main649block775:
       jmp _main649block773

_main649block773:
       jmp _main649block771

_main649block771:
       movq   $0, %rdx
       jmp _main649block770

_main649block776:
       jmp _main649block774

_main649block774:
       jmp _main649block772

_main649block772:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main649block770

_main649block770:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       leaq   _constfun651(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main649block768
       jmp _main649block769

_main649block769:
       jmp _main649block767

_main649block767:
       jmp _main649block765

_main649block765:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main649block763

_main649block768:
       jmp _main649block766

_main649block766:
       jmp _main649block764

_main649block764:
       movq   $0, %rdx
       jmp _main649block763

_main649block763:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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



.globl _main
.align 16
_main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _main649start
_main649conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda668start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       leaq   _lambda670(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _lambda668block810
       jmp _lambda668block811

_lambda668block810:
       jmp _lambda668block808

_lambda668block808:
       jmp _lambda668block806

_lambda668block811:
       jmp _lambda668block809

_lambda668block809:
       jmp _lambda668block807

_lambda668block807:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _lambda668block805

_lambda668block806:
       movq   $0, %rdx
       jmp _lambda668block805

_lambda668block805:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _lambda668conclusion



.globl _lambda668
.align 16
_lambda668:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda668start
_lambda668conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda670start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, -8(%r15)
       movq   %rdx, -16(%r15)
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



.globl _lambda670
.align 16
_lambda670:
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
       jmp _lambda670start
_lambda670conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

