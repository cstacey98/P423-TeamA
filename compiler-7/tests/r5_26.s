cell823start:
       movq   %rdi, %rdx
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl cell823block904
       jmp cell823block905

cell823block904:
       jmp cell823block902

cell823block902:
       jmp cell823block900

cell823block900:
       movq   $0, %rdx
       jmp cell823block899

cell823block905:
       jmp cell823block903

cell823block903:
       jmp cell823block901

cell823block901:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp cell823block899

cell823block899:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       leaq   lambda832(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   %rdx, -16(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl cell823block897
       jmp cell823block898

cell823block897:
       jmp cell823block895

cell823block898:
       jmp cell823block896

cell823block895:
       jmp cell823block893

cell823block893:
       movq   $0, %rdx
       jmp cell823block892

cell823block896:
       jmp cell823block894

cell823block894:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp cell823block892

cell823block892:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $775, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp cell823conclusion



.globl cell823
.align 16
cell823:
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
       jmp cell823start
cell823conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main822start:
       movq   %rdi, %rdx
       leaq   cell823(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main822block911
       jmp main822block912

main822block911:
       jmp main822block909

main822block909:
       jmp main822block907

main822block907:
       movq   $0, %rdx
       jmp main822block906

main822block912:
       jmp main822block910

main822block910:
       jmp main822block908

main822block908:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main822block906

main822block906:
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
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $0, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $42, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $0, %rsi
       movq   %rdx, %rax
       subq   $8, %r15
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
       addq   $8, %r15
       jmp main822start
main822conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda832start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rdx
       movq   $0, %rax
       cmpq   %rax, %rsi
       je lambda832block927
       jmp lambda832block928

lambda832block927:
       leaq   lambda834(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl lambda832block918
       jmp lambda832block919

lambda832block918:
       jmp lambda832block916

lambda832block916:
       jmp lambda832block914

lambda832block914:
       movq   $0, %rdx
       jmp lambda832block913

lambda832block919:
       jmp lambda832block917

lambda832block917:
       jmp lambda832block915

lambda832block915:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp lambda832block913

lambda832block913:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp lambda832conclusion

lambda832block928:
       leaq   lambda836(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl lambda832block925
       jmp lambda832block926

lambda832block925:
       jmp lambda832block923

lambda832block923:
       jmp lambda832block921

lambda832block926:
       jmp lambda832block924

lambda832block924:
       jmp lambda832block922

lambda832block922:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp lambda832block920

lambda832block921:
       movq   $0, %rdx
       jmp lambda832block920

lambda832block920:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp lambda832conclusion



.globl lambda832
.align 16
lambda832:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp lambda832start
lambda832conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda836start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   $42, %rax
       jmp lambda836conclusion



.globl lambda836
.align 16
lambda836:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda836start
lambda836conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda834start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp lambda834conclusion



.globl lambda834
.align 16
lambda834:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda834start
lambda834conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

