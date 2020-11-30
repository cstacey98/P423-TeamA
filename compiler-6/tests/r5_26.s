_cell813start:
       movq   %rdi, %rdx
       movq   $0, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _cell813block894
       jmp _cell813block895

_cell813block895:
       jmp _cell813block893

_cell813block893:
       jmp _cell813block891

_cell813block891:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _cell813block889

_cell813block894:
       jmp _cell813block892

_cell813block892:
       jmp _cell813block890

_cell813block890:
       movq   $0, %rdx
       jmp _cell813block889

_cell813block889:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       leaq   _lambda822(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   %rdx, -16(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _cell813block887
       jmp _cell813block888

_cell813block887:
       jmp _cell813block885

_cell813block885:
       jmp _cell813block883

_cell813block883:
       movq   $0, %rdx
       jmp _cell813block882

_cell813block888:
       jmp _cell813block886

_cell813block886:
       jmp _cell813block884

_cell813block884:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _cell813block882

_cell813block882:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
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
       jmp _cell813conclusion



.globl _cell813
.align 16
_cell813:
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
       jmp _cell813start
_cell813conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main812start:
       movq   %rdi, %rdx
       leaq   _cell813(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main812block901
       jmp _main812block902

_main812block902:
       jmp _main812block900

_main812block900:
       jmp _main812block898

_main812block901:
       jmp _main812block899

_main812block899:
       jmp _main812block897

_main812block897:
       movq   $0, %rdx
       jmp _main812block896

_main812block898:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main812block896

_main812block896:
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
       jmp _main812start
_main812conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda822start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rdx
       movq   $0, %rax
       cmpq   %rax, %rsi
       je _lambda822block917
       jmp _lambda822block918

_lambda822block917:
       leaq   _lambda824(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _lambda822block908
       jmp _lambda822block909

_lambda822block918:
       leaq   _lambda826(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _lambda822block915
       jmp _lambda822block916

_lambda822block916:
       jmp _lambda822block914

_lambda822block914:
       jmp _lambda822block912

_lambda822block912:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _lambda822block910

_lambda822block915:
       jmp _lambda822block913

_lambda822block913:
       jmp _lambda822block911

_lambda822block911:
       movq   $0, %rdx
       jmp _lambda822block910

_lambda822block910:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
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
       jmp _lambda822conclusion

_lambda822block908:
       jmp _lambda822block906

_lambda822block909:
       jmp _lambda822block907

_lambda822block907:
       jmp _lambda822block905

_lambda822block905:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _lambda822block903

_lambda822block906:
       jmp _lambda822block904

_lambda822block904:
       movq   $0, %rdx
       jmp _lambda822block903

_lambda822block903:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
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
       jmp _lambda822conclusion



.globl _lambda822
.align 16
_lambda822:
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
       jmp _lambda822start
_lambda822conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda826start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   $42, %rax
       jmp _lambda826conclusion



.globl _lambda826
.align 16
_lambda826:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda826start
_lambda826conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda824start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _lambda824conclusion



.globl _lambda824
.align 16
_lambda824:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda824start
_lambda824conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

