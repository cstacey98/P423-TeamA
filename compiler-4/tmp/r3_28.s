_start:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $8, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _block183891
       jmp _block183892

_block183892:
       jmp _block183890

_block183890:
       jmp _block183888

_block183888:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _block183886

_block183891:
       jmp _block183889

_block183889:
       jmp _block183887

_block183887:
       movq   $0, %rdx
       jmp _block183886

_block183886:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %r9
       movq   $42, %rsi
       movq   %r9, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _block183884
       jmp _block183885

_block183885:
       jmp _block183883

_block183883:
       jmp _block183881

_block183881:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block183879

_block183884:
       jmp _block183882

_block183882:
       jmp _block183880

_block183880:
       movq   $0, %rdx
       jmp _block183879

_block183879:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdi
       movq   %rdi, %rsi
       movq   $42, %rdx
       movq   %r9, %r8
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %r10
       cmpq   %r10, %rcx
       jl _block183877
       jmp _block183878

_block183878:
       jmp _block183876

_block183876:
       jmp _block183874

_block183874:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _block183872

_block183877:
       jmp _block183875

_block183875:
       jmp _block183873

_block183873:
       movq   $0, %rcx
       jmp _block183872

_block183872:
       movq   _free_ptr(%rip), %rcx
       addq   $32, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $647, 0(%r11)
       movq   %rcx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r8
       movq   %r9, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdx
       jl _block183870
       jmp _block183871

_block183870:
       jmp _block183868

_block183868:
       jmp _block183866

_block183866:
       movq   $0, %rdx
       jmp _block183865

_block183871:
       jmp _block183869

_block183869:
       jmp _block183867

_block183867:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _block183865

_block183865:
       movq   _free_ptr(%rip), %rdx
       addq   $40, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1417, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r8
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %rsi
       movq   %r9, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %r10
       cmpq   %r10, %rdx
       jl _block183863
       jmp _block183864

_block183863:
       jmp _block183861

_block183861:
       jmp _block183859

_block183859:
       movq   $0, %rdx
       jmp _block183858

_block183864:
       jmp _block183862

_block183862:
       jmp _block183860

_block183860:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block183858

_block183858:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $2955, 0(%r11)
       movq   %rdx, %r11
       movq   %r8, 8(%r11)
       movq   $0, %r10
       movq   %rdx, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %r10
       movq   %rdx, %r11
       movq   %rdi, 24(%r11)
       movq   $0, %r10
       movq   %rdx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %rsi
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %rdx
       movq   %r9, %r9
       movq   _free_ptr(%rip), %r10
       movq   %r10, %r10
       addq   $56, %r10
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %r10
       jl _block183856
       jmp _block183857

_block183857:
       jmp _block183855

_block183855:
       jmp _block183853

_block183853:
       movq   %r15, %rdi
       movq   $56, %rsi
       callq _collect
       jmp _block183851

_block183856:
       jmp _block183854

_block183854:
       jmp _block183852

_block183852:
       movq   $0, %r10
       jmp _block183851

_block183851:
       movq   _free_ptr(%rip), %r10
       addq   $56, _free_ptr(%rip)
       movq   %r10, %r11
       movq   $6029, 0(%r11)
       movq   %r10, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %r11
       movq   %r10, %r11
       movq   %r8, 16(%r11)
       movq   $0, %r11
       movq   %r10, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %r11
       movq   %r10, %r11
       movq   %rdi, 32(%r11)
       movq   $0, %r11
       movq   %r10, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %r9, 48(%r11)
       movq   $0, %rdx
       movq   %r10, %r10
       movq   %r10, %r10
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r11
       movq   %r9, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rbx
       addq   $64, %rbx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rbx
       jl _block183849
       jmp _block183850

_block183849:
       jmp _block183847

_block183847:
       jmp _block183845

_block183845:
       movq   $0, %rdx
       jmp _block183844

_block183850:
       jmp _block183848

_block183848:
       jmp _block183846

_block183846:
       movq   %r15, %rdi
       movq   $64, %rsi
       callq _collect
       jmp _block183844

_block183844:
       movq   _free_ptr(%rip), %rdx
       addq   $64, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $12175, 0(%r11)
       movq   %rdx, %r11
       movq   %r10, 8(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   %rdi, 40(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   %r11, 48(%r11)
       movq   $0, %r11
       movq   %rdx, %r11
       movq   %r9, 56(%r11)
       movq   $0, %r11
       movq   %rdx, %rdx
       movq   %rdx, %rdx
       movq   %r10, %r10
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r12
       movq   %r9, %r9
       movq   _free_ptr(%rip), %r11
       movq   %r11, %r11
       addq   $72, %r11
       movq   _fromspace_end(%rip), %rbx
       cmpq   %rbx, %r11
       jl _block183842
       jmp _block183843

_block183842:
       jmp _block183840

_block183840:
       jmp _block183838

_block183838:
       movq   $0, %r11
       jmp _block183837

_block183843:
       jmp _block183841

_block183841:
       jmp _block183839

_block183839:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _block183837

_block183837:
       movq   _free_ptr(%rip), %r11
       addq   $72, _free_ptr(%rip)
       movq   %r11, %r11
       movq   $24465, 0(%r11)
       movq   %r11, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %r10, 16(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %r8, 32(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %rdi, 48(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %r12, 56(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %r9, 64(%r11)
       movq   $0, %rbx
       movq   %r11, %r11
       movq   %r11, %r11
       movq   %rdx, %rdx
       movq   %r10, %r10
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r12
       movq   %r9, %r9
       movq   _free_ptr(%rip), %rbx
       movq   %rbx, %r13
       addq   $80, %r13
       movq   _fromspace_end(%rip), %rbx
       cmpq   %rbx, %r13
       jl _block183835
       jmp _block183836

_block183836:
       jmp _block183834

_block183834:
       jmp _block183832

_block183832:
       movq   %r15, %rdi
       movq   $80, %rsi
       callq _collect
       jmp _block183830

_block183835:
       jmp _block183833

_block183833:
       jmp _block183831

_block183831:
       movq   $0, %rbx
       jmp _block183830

_block183830:
       movq   _free_ptr(%rip), %r13
       addq   $80, _free_ptr(%rip)
       movq   %r13, %r11
       movq   $49043, 0(%r11)
       movq   %r13, %r11
       movq   %r11, 8(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r10, 24(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r8, 40(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rdi, 56(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r12, 64(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r9, 72(%r11)
       movq   $0, %rbx
       movq   %r13, %r12
       movq   %r12, %r12
       movq   %r11, %r11
       movq   %rdx, %rdx
       movq   %r10, %r10
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r14
       movq   %r9, %r9
       movq   _free_ptr(%rip), %rbx
       movq   %rbx, %r13
       addq   $88, %r13
       movq   _fromspace_end(%rip), %rbx
       cmpq   %rbx, %r13
       jl _block183828
       jmp _block183829

_block183828:
       jmp _block183826

_block183826:
       jmp _block183824

_block183824:
       movq   $0, %rbx
       jmp _block183823

_block183829:
       jmp _block183827

_block183827:
       jmp _block183825

_block183825:
       movq   %r15, %rdi
       movq   $88, %rsi
       callq _collect
       jmp _block183823

_block183823:
       movq   _free_ptr(%rip), %r13
       addq   $88, _free_ptr(%rip)
       movq   %r13, %r11
       movq   $98197, 0(%r11)
       movq   %r13, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r11, 16(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r10, 32(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r8, 48(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rdi, 64(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r14, 72(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %r9, 80(%r11)
       movq   $0, %rbx
       movq   %r13, %rbx
       movq   %rbx, %rbx
       movq   %r12, %r12
       movq   %r11, %r11
       movq   %rdx, %rdx
       movq   %r10, %r10
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r13
       movq   %r9, %r9
       movq   _free_ptr(%rip), %r14
       movq   %r14, -8(%rbp)
       addq   $96, -8(%rbp)
       movq   _fromspace_end(%rip), %r14
       cmpq   %r14, -8(%rbp)
       jl _block183821
       jmp _block183822

_block183822:
       jmp _block183820

_block183820:
       jmp _block183818

_block183818:
       movq   %r15, %rdi
       movq   $96, %rsi
       callq _collect
       jmp _block183816

_block183821:
       jmp _block183819

_block183819:
       jmp _block183817

_block183817:
       movq   $0, %r14
       jmp _block183816

_block183816:
       movq   _free_ptr(%rip), -8(%r15)
       addq   $96, _free_ptr(%rip)
       movq   -8(%r15), %r11
       movq   $196503, 0(%r11)
       movq   -8(%r15), %r11
       movq   %rbx, 8(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r12, 16(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r11, 24(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rdx, 32(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r10, 40(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rsi, 48(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r8, 56(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rcx, 64(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rdi, 72(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r13, 80(%r11)
       movq   $0, %r13
       movq   -8(%r15), %r11
       movq   %r9, 88(%r11)
       movq   $0, %r13
       movq   -8(%r15), %r13
       movq   %r13, %r13
       movq   %rbx, %rbx
       movq   %r12, %r12
       movq   %r11, %r11
       movq   %rdx, %rdx
       movq   %r10, %r10
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, -16(%rbp)
       movq   %r9, %r9
       movq   _free_ptr(%rip), %r14
       movq   %r14, -8(%rbp)
       addq   $104, -8(%rbp)
       movq   _fromspace_end(%rip), %r14
       cmpq   %r14, -8(%rbp)
       jl _block183814
       jmp _block183815

_block183815:
       jmp _block183813

_block183813:
       jmp _block183811

_block183811:
       movq   %r15, %rdi
       movq   $104, %rsi
       callq _collect
       jmp _block183809

_block183814:
       jmp _block183812

_block183812:
       jmp _block183810

_block183810:
       movq   $0, %r14
       jmp _block183809

_block183809:
       movq   _free_ptr(%rip), -8(%r15)
       addq   $104, _free_ptr(%rip)
       movq   -8(%r15), %r11
       movq   $393113, 0(%r11)
       movq   -8(%r15), %r11
       movq   %r13, 8(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rbx, 16(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r12, 24(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r11, 32(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rdx, 40(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r10, 48(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rsi, 56(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r8, 64(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rcx, 72(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %rdi, 80(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   -16(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r11
       movq   %r9, 96(%r11)
       movq   $0, %r14
       movq   -8(%r15), %r14
       movq   %r14, -48(%r15)
       movq   %r13, -8(%r15)
       movq   %rbx, %rbx
       movq   %r12, %r13
       movq   %r11, %r14
       movq   %rdx, %rdx
       movq   %r10, %r12
       movq   %rsi, %rsi
       movq   %r8, %r8
       movq   %rcx, %rcx
       movq   %rdi, %rdi
       movq   $42, %r11
       movq   %r9, %r9
       movq   _free_ptr(%rip), %r10
       movq   %r10, -40(%rbp)
       addq   $112, -40(%rbp)
       movq   _fromspace_end(%rip), %r10
       cmpq   %r10, -40(%rbp)
       jl _block183807
       jmp _block183808

_block183807:
       jmp _block183805

_block183805:
       jmp _block183803

_block183803:
       movq   $0, %r10
       jmp _block183802

_block183808:
       jmp _block183806

_block183806:
       jmp _block183804

_block183804:
       movq   %r15, %rdi
       movq   $112, %rsi
       callq _collect
       jmp _block183802

_block183802:
       movq   _free_ptr(%rip), %r10
       addq   $112, _free_ptr(%rip)
       movq   %r10, %r11
       movq   $786331, 0(%r11)
       movq   %r10, %r11
       movq   -48(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, -16(%rbp)
       movq   %r10, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, -8(%rbp)
       movq   %r10, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rbx
       movq   %r10, %r11
       movq   %r13, 32(%r11)
       movq   $0, %rbx
       movq   %r10, %r11
       movq   %r14, 40(%r11)
       movq   $0, %rbx
       movq   %r10, %r11
       movq   %rdx, 48(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %r12, 56(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %r8, 72(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %rcx, 80(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %rdi, 88(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %r11, 96(%r11)
       movq   $0, %rdx
       movq   %r10, %r11
       movq   %r9, 104(%r11)
       movq   $0, %rdx
       movq   %r10, %rdx
       movq   %rdx, %r11
       movq   -96(%r11), %rax
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
       subq   $336, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $96, %r15
       jmp _start
_conclusion:
       subq   $96, %r15
       addq   $336, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
