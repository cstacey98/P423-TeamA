_o69572start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _o69572block69745
       jmp _o69572block69746

_o69572block69745:
       movq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o69572block69701
       jmp _o69572block69702

_o69572block69701:
       jmp _o69572block69699

_o69572block69699:
       jmp _o69572block69697

_o69572block69697:
       movq   $0, %rdx
       jmp _o69572block69696

_o69572block69702:
       jmp _o69572block69700

_o69572block69700:
       jmp _o69572block69698

_o69572block69698:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o69572block69696

_o69572block69696:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _o69572conclusion

_o69572block69746:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o69572block69743
       jmp _o69572block69744

_o69572block69743:
       jmp _o69572block69741

_o69572block69741:
       jmp _o69572block69739

_o69572block69739:
       movq   $0, %rdx
       jmp _o69572block69738

_o69572block69744:
       jmp _o69572block69742

_o69572block69742:
       jmp _o69572block69740

_o69572block69740:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o69572block69738

_o69572block69738:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o69572block69736
       jmp _o69572block69737

_o69572block69737:
       jmp _o69572block69735

_o69572block69735:
       jmp _o69572block69733

_o69572block69733:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o69572block69731

_o69572block69736:
       jmp _o69572block69734

_o69572block69734:
       jmp _o69572block69732

_o69572block69732:
       movq   $0, %rdx
       jmp _o69572block69731

_o69572block69731:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o69572block69729
       jmp _o69572block69730

_o69572block69729:
       jmp _o69572block69727

_o69572block69727:
       jmp _o69572block69725

_o69572block69725:
       movq   $0, %rdx
       jmp _o69572block69724

_o69572block69730:
       jmp _o69572block69728

_o69572block69728:
       jmp _o69572block69726

_o69572block69726:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o69572block69724

_o69572block69724:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o69572block69722
       jmp _o69572block69723

_o69572block69723:
       jmp _o69572block69721

_o69572block69721:
       jmp _o69572block69719

_o69572block69719:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o69572block69717

_o69572block69722:
       jmp _o69572block69720

_o69572block69720:
       jmp _o69572block69718

_o69572block69718:
       movq   $0, %rdx
       jmp _o69572block69717

_o69572block69717:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o69572block69715
       jmp _o69572block69716

_o69572block69715:
       jmp _o69572block69713

_o69572block69713:
       jmp _o69572block69711

_o69572block69711:
       movq   $0, %rdx
       jmp _o69572block69710

_o69572block69716:
       jmp _o69572block69714

_o69572block69714:
       jmp _o69572block69712

_o69572block69712:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o69572block69710

_o69572block69710:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o69572block69708
       jmp _o69572block69709

_o69572block69709:
       jmp _o69572block69707

_o69572block69707:
       jmp _o69572block69705

_o69572block69705:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _o69572block69703

_o69572block69708:
       jmp _o69572block69706

_o69572block69706:
       jmp _o69572block69704

_o69572block69704:
       movq   $0, %rdx
       jmp _o69572block69703

_o69572block69703:
       movq   _free_ptr(%rip), %rdi
       addq   $48, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3979, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rsi
       movq   %rdi, %rsi
       movq   $1, %rsi
       negq   %rsi
       movq   %rdx, %rdi
       addq   %rsi, %rdi
       leaq   _o69572(%rip), %rdx
       movq   %rdi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _o69572
.align 16
_o69572:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _o69572start
_o69572conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_t69571start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _t69571block69752
       jmp _t69571block69753

_t69571block69753:
       jmp _t69571block69751

_t69571block69751:
       jmp _t69571block69749

_t69571block69749:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t69571block69747

_t69571block69752:
       jmp _t69571block69750

_t69571block69750:
       jmp _t69571block69748

_t69571block69748:
       movq   $0, %rdx
       jmp _t69571block69747

_t69571block69747:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _t69571conclusion



.globl _t69571
.align 16
_t69571:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _t69571start
_t69571conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_h69570start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _h69570block69759
       jmp _h69570block69760

_h69570block69760:
       jmp _h69570block69758

_h69570block69758:
       jmp _h69570block69756

_h69570block69756:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h69570block69754

_h69570block69759:
       jmp _h69570block69757

_h69570block69757:
       jmp _h69570block69755

_h69570block69755:
       movq   $0, %rdx
       jmp _h69570block69754

_h69570block69754:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _h69570conclusion



.globl _h69570
.align 16
_h69570:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _h69570start
_h69570conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f69569start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f69569block69766
       jmp _f69569block69767

_f69569block69766:
       jmp _f69569block69764

_f69569block69764:
       jmp _f69569block69762

_f69569block69762:
       movq   $0, %rdx
       jmp _f69569block69761

_f69569block69767:
       jmp _f69569block69765

_f69569block69765:
       jmp _f69569block69763

_f69569block69763:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f69569block69761

_f69569block69761:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _f69569conclusion



.globl _f69569
.align 16
_f69569:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _f69569start
_f69569conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_e69568start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e69568block69773
       jmp _e69568block69774

_e69568block69773:
       jmp _e69568block69771

_e69568block69771:
       jmp _e69568block69769

_e69568block69769:
       movq   $0, %rdx
       jmp _e69568block69768

_e69568block69774:
       jmp _e69568block69772

_e69568block69772:
       jmp _e69568block69770

_e69568block69770:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e69568block69768

_e69568block69768:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _e69568conclusion



.globl _e69568
.align 16
_e69568:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _e69568start
_e69568conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69567start:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main69567block69787
       jmp _main69567block69788

_main69567block69788:
       jmp _main69567block69786

_main69567block69786:
       jmp _main69567block69784

_main69567block69784:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main69567block69782

_main69567block69787:
       jmp _main69567block69785

_main69567block69785:
       jmp _main69567block69783

_main69567block69783:
       movq   $0, %rdx
       jmp _main69567block69782

_main69567block69782:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _o69572(%rip), %rdx
       movq   $1, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _t69571(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _h69570(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main69567block69780
       jmp _main69567block69781

_main69567block69781:
       jmp _main69567block69779

_main69567block69779:
       jmp _main69567block69777

_main69567block69780:
       jmp _main69567block69778

_main69567block69778:
       jmp _main69567block69776

_main69567block69776:
       movq   $0, %rdx
       jmp _main69567block69775

_main69567block69777:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main69567block69775

_main69567block69775:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _e69568(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main69567conclusion



.globl _main
.align 16
_main:
       pushq  %rsp
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
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main69567start
_main69567conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

