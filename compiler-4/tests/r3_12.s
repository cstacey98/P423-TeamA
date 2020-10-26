start:
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163902
       jmp block163903

block163903:
       jmp block163901

block163901:
       jmp block163899

block163899:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163897

block163902:
       jmp block163900

block163900:
       jmp block163898

block163898:
       movq   $0, %rdx
       jmp block163897

block163897:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -120(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163895
       jmp block163896

block163895:
       jmp block163893

block163893:
       jmp block163891

block163891:
       movq   $0, %rdx
       jmp block163890

block163896:
       jmp block163894

block163894:
       jmp block163892

block163892:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163890

block163890:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -136(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163888
       jmp block163889

block163888:
       jmp block163886

block163886:
       jmp block163884

block163884:
       movq   $0, %rdx
       jmp block163883

block163889:
       jmp block163887

block163887:
       jmp block163885

block163885:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163883

block163883:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -160(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163881
       jmp block163882

block163882:
       jmp block163880

block163880:
       jmp block163878

block163878:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163876

block163881:
       jmp block163879

block163879:
       jmp block163877

block163877:
       movq   $0, %rdx
       jmp block163876

block163876:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -152(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163874
       jmp block163875

block163875:
       jmp block163873

block163873:
       jmp block163871

block163871:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163869

block163874:
       jmp block163872

block163872:
       jmp block163870

block163870:
       movq   $0, %rdx
       jmp block163869

block163869:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163867
       jmp block163868

block163867:
       jmp block163865

block163865:
       jmp block163863

block163863:
       movq   $0, %rdx
       jmp block163862

block163868:
       jmp block163866

block163866:
       jmp block163864

block163864:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163862

block163862:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163860
       jmp block163861

block163860:
       jmp block163858

block163858:
       jmp block163856

block163856:
       movq   $0, %rdx
       jmp block163855

block163861:
       jmp block163859

block163859:
       jmp block163857

block163857:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163855

block163855:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -80(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163853
       jmp block163854

block163853:
       jmp block163851

block163851:
       jmp block163849

block163849:
       movq   $0, %rdx
       jmp block163848

block163854:
       jmp block163852

block163852:
       jmp block163850

block163850:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163848

block163848:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -64(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163846
       jmp block163847

block163847:
       jmp block163845

block163845:
       jmp block163843

block163843:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163841

block163846:
       jmp block163844

block163844:
       jmp block163842

block163842:
       movq   $0, %rdx
       jmp block163841

block163841:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -96(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163839
       jmp block163840

block163839:
       jmp block163837

block163837:
       jmp block163835

block163835:
       movq   $0, %rdx
       jmp block163834

block163840:
       jmp block163838

block163838:
       jmp block163836

block163836:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163834

block163834:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -48(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163832
       jmp block163833

block163832:
       jmp block163830

block163830:
       jmp block163828

block163828:
       movq   $0, %rdx
       jmp block163827

block163833:
       jmp block163831

block163831:
       jmp block163829

block163829:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163827

block163827:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -112(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163825
       jmp block163826

block163826:
       jmp block163824

block163824:
       jmp block163822

block163822:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163820

block163825:
       jmp block163823

block163823:
       jmp block163821

block163821:
       movq   $0, %rdx
       jmp block163820

block163820:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163818
       jmp block163819

block163819:
       jmp block163817

block163817:
       jmp block163815

block163815:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163813

block163818:
       jmp block163816

block163816:
       jmp block163814

block163814:
       movq   $0, %rdx
       jmp block163813

block163813:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -72(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163811
       jmp block163812

block163811:
       jmp block163809

block163809:
       jmp block163807

block163807:
       movq   $0, %rdx
       jmp block163806

block163812:
       jmp block163810

block163810:
       jmp block163808

block163808:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163806

block163806:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -144(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163804
       jmp block163805

block163804:
       jmp block163802

block163802:
       jmp block163800

block163800:
       movq   $0, %rdx
       jmp block163799

block163805:
       jmp block163803

block163803:
       jmp block163801

block163801:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163799

block163799:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -40(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163797
       jmp block163798

block163798:
       jmp block163796

block163796:
       jmp block163794

block163794:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163792

block163797:
       jmp block163795

block163795:
       jmp block163793

block163793:
       movq   $0, %rdx
       jmp block163792

block163792:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -104(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163790
       jmp block163791

block163791:
       jmp block163789

block163789:
       jmp block163787

block163787:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163785

block163790:
       jmp block163788

block163788:
       jmp block163786

block163786:
       movq   $0, %rdx
       jmp block163785

block163785:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -128(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163783
       jmp block163784

block163783:
       jmp block163781

block163781:
       jmp block163779

block163779:
       movq   $0, %rdx
       jmp block163778

block163784:
       jmp block163782

block163782:
       jmp block163780

block163780:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163778

block163778:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -32(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163776
       jmp block163777

block163776:
       jmp block163774

block163774:
       jmp block163772

block163772:
       movq   $0, %rdx
       jmp block163771

block163777:
       jmp block163775

block163775:
       jmp block163773

block163773:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163771

block163771:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163769
       jmp block163770

block163770:
       jmp block163768

block163768:
       jmp block163766

block163766:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163764

block163769:
       jmp block163767

block163767:
       jmp block163765

block163765:
       movq   $0, %rdx
       jmp block163764

block163764:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -88(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163762
       jmp block163763

block163763:
       jmp block163761

block163761:
       jmp block163759

block163759:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163757

block163762:
       jmp block163760

block163760:
       jmp block163758

block163758:
       movq   $0, %rdx
       jmp block163757

block163757:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -120(%r15), %r11
       movq   8(%r11), %rcx
       movq   -136(%r15), %r11
       movq   8(%r11), %rsi
       movq   -160(%r15), %r11
       movq   8(%r11), %rdi
       movq   -152(%r15), %r11
       movq   8(%r11), %r8
       movq   -16(%r15), %r11
       movq   8(%r11), %r9
       movq   -24(%r15), %r11
       movq   8(%r11), %r10
       movq   -80(%r15), %r11
       movq   8(%r11), %rbx
       movq   -64(%r15), %r11
       movq   8(%r11), %r12
       movq   -96(%r15), %r11
       movq   8(%r11), %r13
       movq   -48(%r15), %r11
       movq   8(%r11), %r14
       movq   -112(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -8(%rbp)
       movq   -8(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -32(%rbp)
       movq   -72(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -24(%rbp)
       movq   -144(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -40(%rbp)
       movq   -40(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -56(%rbp)
       movq   -104(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -64(%rbp)
       movq   -128(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -48(%rbp)
       movq   -32(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -72(%rbp)
       movq   -56(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -16(%rbp)
       movq   -88(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -80(%rbp)
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %rdx
       addq   $21, %rdx
       movq   -80(%rbp), %rax
       movq   %rax, -80(%rbp)
       addq   %rdx, -80(%rbp)
       movq   -16(%rbp), %rdx
       addq   -80(%rbp), %rdx
       movq   -72(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -48(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   -64(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -56(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   -40(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -24(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   -32(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -8(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   %r14, %r14
       addq   %rdx, %r14
       movq   %r13, %rdx
       addq   %r14, %rdx
       movq   %r12, %r12
       addq   %rdx, %r12
       movq   %rbx, %rdx
       addq   %r12, %rdx
       movq   %r10, %r10
       addq   %rdx, %r10
       movq   %r9, %rdx
       addq   %r10, %rdx
       movq   %r8, %r8
       addq   %rdx, %r8
       movq   %rdi, %rdx
       addq   %r8, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rax
       addq   %rsi, %rax
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
