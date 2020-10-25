_start:
       movq   $20, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182751
       jmp _block182752

_block182752:
       jmp _block182750

_block182750:
       jmp _block182748

_block182748:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182746

_block182751:
       jmp _block182749

_block182749:
       jmp _block182747

_block182747:
       movq   $0, %rdx
       jmp _block182746

_block182746:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $1, %r9
       movq   $2, %r10
       movq   $3, %rdi
       movq   $4, %r8
       movq   $5, %rdx
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $48, %rsi
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rsi
       jl _block182744
       jmp _block182745

_block182744:
       jmp _block182742

_block182742:
       jmp _block182740

_block182740:
       movq   $0, %rsi
       jmp _block182739

_block182745:
       jmp _block182743

_block182743:
       jmp _block182741

_block182741:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182739

_block182739:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $11, 0(%r11)
       movq   %rsi, %r11
       movq   %r9, 8(%r11)
       movq   $0, %r9
       movq   %rsi, %r11
       movq   %r10, 16(%r11)
       movq   $0, %r9
       movq   %rsi, %r11
       movq   %rdi, 24(%r11)
       movq   $0, %rdi
       movq   %rsi, %r11
       movq   %r8, 32(%r11)
       movq   $0, %rdi
       movq   %rsi, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %r8
       movq   $2, %rsi
       movq   $3, %rdi
       movq   $4, %r9
       movq   $5, %r10
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r11
       jl _block182737
       jmp _block182738

_block182738:
       jmp _block182736

_block182736:
       jmp _block182734

_block182734:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182732

_block182737:
       jmp _block182735

_block182735:
       jmp _block182733

_block182733:
       movq   $0, %rdx
       jmp _block182732

_block182732:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $139, 0(%r11)
       movq   %rdx, %r11
       movq   %r8, 8(%r11)
       movq   $0, %r8
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rdi, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r10, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       movq   $1, %r8
       movq   %rdx, %rdi
       movq   $3, %rsi
       movq   $4, %r10
       movq   $5, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rdx
       jl _block182730
       jmp _block182731

_block182731:
       jmp _block182729

_block182729:
       jmp _block182727

_block182727:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182725

_block182730:
       jmp _block182728

_block182728:
       jmp _block182726

_block182726:
       movq   $0, %rdx
       jmp _block182725

_block182725:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $267, 0(%r11)
       movq   %rdx, %r11
       movq   %r8, 8(%r11)
       movq   $0, %r8
       movq   %rdx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r10, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       movq   $1, %rdi
       movq   $2, %r8
       movq   %rdx, %r9
       movq   $4, %r10
       movq   $5, %rdx
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $48, %rsi
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rsi
       jl _block182723
       jmp _block182724

_block182723:
       jmp _block182721

_block182721:
       jmp _block182719

_block182719:
       movq   $0, %rsi
       jmp _block182718

_block182724:
       jmp _block182722

_block182722:
       jmp _block182720

_block182720:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182718

_block182718:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $523, 0(%r11)
       movq   %rsi, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rsi, %r11
       movq   %r8, 16(%r11)
       movq   $0, %rdi
       movq   %rsi, %r11
       movq   %r9, 24(%r11)
       movq   $0, %rdi
       movq   %rsi, %r11
       movq   %r10, 32(%r11)
       movq   $0, %rdi
       movq   %rsi, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $1, %rsi
       movq   $2, %rdi
       movq   $3, %r8
       movq   %rdx, %r10
       movq   $5, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r11
       jl _block182716
       jmp _block182717

_block182716:
       jmp _block182714

_block182714:
       jmp _block182712

_block182712:
       movq   $0, %rdx
       jmp _block182711

_block182717:
       jmp _block182715

_block182715:
       jmp _block182713

_block182713:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182711

_block182711:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1035, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r10, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rsi
       movq   $1, %rdx
       movq   $2, %r8
       movq   $3, %rdi
       movq   $4, %r10
       movq   %rsi, %r9
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %r11
       jl _block182709
       jmp _block182710

_block182710:
       jmp _block182708

_block182708:
       jmp _block182706

_block182706:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182704

_block182709:
       jmp _block182707

_block182707:
       jmp _block182705

_block182705:
       movq   $0, %rsi
       jmp _block182704

_block182704:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $2059, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r8, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rdi, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r10, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r9, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $1, %r9
       movq   $2, %rdi
       movq   $3, %r8
       movq   $4, %rdx
       movq   $5, %rsi
       movq   _free_ptr(%rip), %r10
       movq   %r10, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %r10
       cmpq   %r10, %r11
       jl _block182702
       jmp _block182703

_block182703:
       jmp _block182701

_block182701:
       jmp _block182699

_block182699:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182697

_block182702:
       jmp _block182700

_block182700:
       jmp _block182698

_block182698:
       movq   $0, %r10
       jmp _block182697

_block182697:
       movq   _free_ptr(%rip), %r10
       addq   $48, _free_ptr(%rip)
       movq   %r10, %r11
       movq   $11, 0(%r11)
       movq   %r10, %r11
       movq   %r9, 8(%r11)
       movq   $0, %r9
       movq   %r10, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rdi
       movq   %r10, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rdi
       movq   %r10, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %r10, %rdx
       movq   $1, %r9
       movq   $2, %r10
       movq   $3, %r8
       movq   $4, %rdi
       movq   $5, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rdx
       jl _block182695
       jmp _block182696

_block182695:
       jmp _block182693

_block182693:
       jmp _block182691

_block182691:
       movq   $0, %rdx
       jmp _block182690

_block182696:
       jmp _block182694

_block182694:
       jmp _block182692

_block182692:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182690

_block182690:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %r9, 8(%r11)
       movq   $0, %r9
       movq   %rdx, %r11
       movq   %r10, 16(%r11)
       movq   $0, %r9
       movq   %rdx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %r8
       movq   %rdx, %r11
       movq   %rdi, 32(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       movq   $1, %rdx
       movq   $2, %r10
       movq   $3, %r9
       movq   $4, %r8
       movq   $5, %rdi
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $48, %rsi
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rsi
       jl _block182688
       jmp _block182689

_block182688:
       jmp _block182686

_block182686:
       jmp _block182684

_block182684:
       movq   $0, %rsi
       jmp _block182683

_block182689:
       jmp _block182687

_block182687:
       jmp _block182685

_block182685:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182683

_block182683:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $11, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r10, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r9, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r8, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rdi, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $1, %r9
       movq   $2, %r10
       movq   $3, %rdx
       movq   $4, %r8
       movq   $5, %rdi
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %r11
       jl _block182681
       jmp _block182682

_block182682:
       jmp _block182680

_block182680:
       jmp _block182678

_block182678:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182676

_block182681:
       jmp _block182679

_block182679:
       jmp _block182677

_block182677:
       movq   $0, %rsi
       jmp _block182676

_block182676:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $11, 0(%r11)
       movq   %rsi, %r11
       movq   %r9, 8(%r11)
       movq   $0, %r9
       movq   %rsi, %r11
       movq   %r10, 16(%r11)
       movq   $0, %r9
       movq   %rsi, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r8, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rdi, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $1, %rsi
       movq   $2, %r8
       movq   $3, %rdi
       movq   $4, %r10
       movq   $5, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rdx
       jl _block182674
       jmp _block182675

_block182674:
       jmp _block182672

_block182672:
       jmp _block182670

_block182670:
       movq   $0, %rdx
       jmp _block182669

_block182675:
       jmp _block182673

_block182673:
       jmp _block182671

_block182671:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182669

_block182669:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r8, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rdi, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r10, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       movq   $1, %rdi
       movq   $2, %r11
       movq   $3, %r8
       movq   $4, %r9
       movq   $5, %r10
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $48, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182667
       jmp _block182668

_block182667:
       jmp _block182665

_block182665:
       jmp _block182663

_block182663:
       movq   $0, %rdx
       jmp _block182662

_block182668:
       jmp _block182666

_block182666:
       jmp _block182664

_block182664:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182662

_block182662:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r11, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r10, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       movq   $1, %rdi
       movq   $2, %r8
       movq   $3, %rdx
       movq   $4, %rsi
       movq   $5, %r10
       movq   _free_ptr(%rip), %r9
       movq   %r9, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %r9
       cmpq   %r9, %r11
       jl _block182660
       jmp _block182661

_block182660:
       jmp _block182658

_block182658:
       jmp _block182656

_block182656:
       movq   $0, %r9
       jmp _block182655

_block182661:
       jmp _block182659

_block182659:
       jmp _block182657

_block182657:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182655

_block182655:
       movq   _free_ptr(%rip), %r9
       addq   $48, _free_ptr(%rip)
       movq   %r9, %r11
       movq   $11, 0(%r11)
       movq   %r9, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %r8, 16(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r10, 40(%r11)
       movq   $0, %rdx
       movq   %r9, %rdx
       movq   $1, %rdi
       movq   $2, %r9
       movq   $3, %r10
       movq   $4, %r8
       movq   $5, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r11
       addq   $48, %r11
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r11
       jl _block182653
       jmp _block182654

_block182654:
       jmp _block182652

_block182652:
       jmp _block182650

_block182650:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182648

_block182653:
       jmp _block182651

_block182651:
       jmp _block182649

_block182649:
       movq   $0, %rdx
       jmp _block182648

_block182648:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %r9, 16(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %r10, 24(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %r8, 32(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %r11
       movq   -8(%r11), %rdx
       movq   %rdx, %rax
       addq   $22, %rax
       jmp _conclusion



.globl _main
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $96, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $96, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
