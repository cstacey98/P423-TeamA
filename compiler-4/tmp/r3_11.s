_start:
       movq   $1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _block181958
       jmp _block181959

_block181959:
       jmp _block181957

_block181957:
       jmp _block181955

_block181955:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181953

_block181958:
       jmp _block181956

_block181956:
       jmp _block181954

_block181954:
       movq   $0, %rdx
       jmp _block181953

_block181953:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rbx
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdx
       jl _block181951
       jmp _block181952

_block181951:
       jmp _block181949

_block181949:
       jmp _block181947

_block181947:
       movq   $0, %rdx
       jmp _block181946

_block181952:
       jmp _block181950

_block181950:
       jmp _block181948

_block181948:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181946

_block181946:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $16, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block181944
       jmp _block181945

_block181944:
       jmp _block181942

_block181942:
       jmp _block181940

_block181940:
       movq   $0, %rdx
       jmp _block181939

_block181945:
       jmp _block181943

_block181943:
       jmp _block181941

_block181941:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181939

_block181939:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rsi
       jl _block181937
       jmp _block181938

_block181938:
       jmp _block181936

_block181936:
       jmp _block181934

_block181934:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181932

_block181937:
       jmp _block181935

_block181935:
       jmp _block181933

_block181933:
       movq   $0, %rsi
       jmp _block181932

_block181932:
       movq   _free_ptr(%rip), %rsi
       addq   $16, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $3, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %rsi
       movq   $1, %r8
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rdx
       jl _block181930
       jmp _block181931

_block181931:
       jmp _block181929

_block181929:
       jmp _block181927

_block181927:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181925

_block181930:
       jmp _block181928

_block181928:
       jmp _block181926

_block181926:
       movq   $0, %rdx
       jmp _block181925

_block181925:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r8, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r14
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %r8
       cmpq   %r8, %rdx
       jl _block181923
       jmp _block181924

_block181923:
       jmp _block181921

_block181921:
       jmp _block181919

_block181919:
       movq   $0, %rdx
       jmp _block181918

_block181924:
       jmp _block181922

_block181922:
       jmp _block181920

_block181920:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181918

_block181918:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r9
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r8
       addq   $16, %r8
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r8
       jl _block181916
       jmp _block181917

_block181916:
       jmp _block181914

_block181914:
       jmp _block181912

_block181912:
       movq   $0, %rdx
       jmp _block181911

_block181917:
       jmp _block181915

_block181915:
       jmp _block181913

_block181913:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181911

_block181911:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r10
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %r8
       cmpq   %r8, %rdx
       jl _block181909
       jmp _block181910

_block181910:
       jmp _block181908

_block181908:
       jmp _block181906

_block181906:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181904

_block181909:
       jmp _block181907

_block181907:
       jmp _block181905

_block181905:
       movq   $0, %rdx
       jmp _block181904

_block181904:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r13
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, %r8
       addq   $16, %r8
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %r8
       jl _block181902
       jmp _block181903

_block181903:
       jmp _block181901

_block181901:
       jmp _block181899

_block181899:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181897

_block181902:
       jmp _block181900

_block181900:
       jmp _block181898

_block181898:
       movq   $0, %rdi
       jmp _block181897

_block181897:
       movq   _free_ptr(%rip), %rdi
       addq   $16, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, %r8
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %r12
       cmpq   %r12, %rdx
       jl _block181895
       jmp _block181896

_block181895:
       jmp _block181893

_block181893:
       jmp _block181891

_block181891:
       movq   $0, %rdx
       jmp _block181890

_block181896:
       jmp _block181894

_block181894:
       jmp _block181892

_block181892:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181890

_block181890:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r12
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -8(%rbp)
       addq   $16, -8(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -8(%rbp)
       jl _block181888
       jmp _block181889

_block181888:
       jmp _block181886

_block181886:
       jmp _block181884

_block181884:
       movq   $0, %rdx
       jmp _block181883

_block181889:
       jmp _block181887

_block181887:
       jmp _block181885

_block181885:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181883

_block181883:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, -8(%r15)
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -16(%rbp)
       addq   $16, -16(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -16(%rbp)
       jl _block181881
       jmp _block181882

_block181881:
       jmp _block181879

_block181879:
       jmp _block181877

_block181877:
       movq   $0, %rdx
       jmp _block181876

_block181882:
       jmp _block181880

_block181880:
       jmp _block181878

_block181878:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181876

_block181876:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, -16(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, -16(%rbp)
       addq   $16, -16(%rbp)
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, -16(%rbp)
       jl _block181874
       jmp _block181875

_block181875:
       jmp _block181873

_block181873:
       jmp _block181871

_block181871:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181869

_block181874:
       jmp _block181872

_block181872:
       jmp _block181870

_block181870:
       movq   $0, %rdi
       jmp _block181869

_block181869:
       movq   _free_ptr(%rip), %rdi
       addq   $16, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, -24(%r15)
       movq   $1, -16(%rbp)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $16, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block181867
       jmp _block181868

_block181867:
       jmp _block181865

_block181865:
       jmp _block181863

_block181863:
       movq   $0, %rdx
       jmp _block181862

_block181868:
       jmp _block181866

_block181866:
       jmp _block181864

_block181864:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181862

_block181862:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, -32(%r15)
       movq   $1, -16(%rbp)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rdx
       jl _block181860
       jmp _block181861

_block181860:
       jmp _block181858

_block181858:
       jmp _block181856

_block181856:
       movq   $0, %rdx
       jmp _block181855

_block181861:
       jmp _block181859

_block181859:
       jmp _block181857

_block181857:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181855

_block181855:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, -40(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, -16(%rbp)
       addq   $16, -16(%rbp)
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, -16(%rbp)
       jl _block181853
       jmp _block181854

_block181854:
       jmp _block181852

_block181852:
       jmp _block181850

_block181850:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181848

_block181853:
       jmp _block181851

_block181851:
       jmp _block181849

_block181849:
       movq   $0, %rdi
       jmp _block181848

_block181848:
       movq   _free_ptr(%rip), %rdi
       addq   $16, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, -48(%r15)
       movq   $1, -24(%rbp)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $16, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block181846
       jmp _block181847

_block181847:
       jmp _block181845

_block181845:
       jmp _block181843

_block181843:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181841

_block181846:
       jmp _block181844

_block181844:
       jmp _block181842

_block181842:
       movq   $0, %rdx
       jmp _block181841

_block181841:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, -56(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, -24(%rbp)
       addq   $16, -24(%rbp)
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, -24(%rbp)
       jl _block181839
       jmp _block181840

_block181839:
       jmp _block181837

_block181837:
       jmp _block181835

_block181835:
       movq   $0, %rdi
       jmp _block181834

_block181840:
       jmp _block181838

_block181838:
       jmp _block181836

_block181836:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181834

_block181834:
       movq   _free_ptr(%rip), %rdi
       addq   $16, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, -64(%r15)
       movq   $1, -24(%rbp)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $16, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block181832
       jmp _block181833

_block181832:
       jmp _block181830

_block181830:
       jmp _block181828

_block181828:
       movq   $0, %rdx
       jmp _block181827

_block181833:
       jmp _block181831

_block181831:
       jmp _block181829

_block181829:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181827

_block181827:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, -72(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, -24(%rbp)
       addq   $16, -24(%rbp)
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, -24(%rbp)
       jl _block181825
       jmp _block181826

_block181826:
       jmp _block181824

_block181824:
       jmp _block181822

_block181822:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181820

_block181825:
       jmp _block181823

_block181823:
       jmp _block181821

_block181821:
       movq   $0, %rdi
       jmp _block181820

_block181820:
       movq   _free_ptr(%rip), %rdi
       addq   $16, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, -80(%r15)
       movq   $1, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), -32(%rbp)
       cmpq   -32(%rbp), %rdx
       jl _block181818
       jmp _block181819

_block181818:
       jmp _block181816

_block181816:
       jmp _block181814

_block181814:
       movq   $0, %rdx
       jmp _block181813

_block181819:
       jmp _block181817

_block181817:
       jmp _block181815

_block181815:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block181813

_block181813:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %rdx
       movq   %rbx, %r11
       movq   -8(%r11), %rdi
       movq   %rcx, %r11
       movq   -8(%r11), %rcx
       movq   %r11, %r11
       movq   -8(%r11), %r11
       movq   %rsi, %r11
       movq   -8(%r11), %rsi
       movq   %r14, %r11
       movq   -8(%r11), %rbx
       movq   %r9, %r11
       movq   -8(%r11), %r9
       movq   %r10, %r11
       movq   -8(%r11), %r10
       movq   %r13, %r11
       movq   -8(%r11), %r13
       movq   %r8, %r11
       movq   -8(%r11), %r8
       movq   %r12, %r11
       movq   -8(%r11), %r12
       movq   -8(%r15), %r11
       movq   -8(%r11), %r14
       movq   -16(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -8(%rbp)
       movq   -24(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -40(%rbp)
       movq   -32(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -48(%rbp)
       movq   -40(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -56(%rbp)
       movq   -48(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -16(%rbp)
       movq   -56(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -64(%rbp)
       movq   -64(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -72(%rbp)
       movq   -72(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -80(%rbp)
       movq   -80(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -24(%rbp)
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
       movq   %rdx, %rdx
       addq   $21, %rdx
       movq   -24(%rbp), %rax
       movq   %rax, -24(%rbp)
       addq   %rdx, -24(%rbp)
       movq   -80(%rbp), %rdx
       addq   -24(%rbp), %rdx
       movq   -72(%rbp), %rax
       movq   %rax, -24(%rbp)
       addq   %rdx, -24(%rbp)
       movq   -64(%rbp), %rdx
       addq   -24(%rbp), %rdx
       movq   -16(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -56(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   -48(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -40(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   -8(%rbp), %rax
       movq   %rax, -8(%rbp)
       addq   %rdx, -8(%rbp)
       movq   %r14, %rdx
       addq   -8(%rbp), %rdx
       movq   %r12, %r12
       addq   %rdx, %r12
       movq   %r8, %rdx
       addq   %r12, %rdx
       movq   %r13, %r8
       addq   %rdx, %r8
       movq   %r10, %rdx
       addq   %r8, %rdx
       movq   %r9, %r8
       addq   %rdx, %r8
       movq   %rbx, %rdx
       addq   %r8, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   %r11, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rax
       addq   %rcx, %rax
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
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _start
_conclusion:
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
