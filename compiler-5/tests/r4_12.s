_id352768start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       jmp _id352768conclusion



.globl _id352768
.align 16
_id352768:
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
       jmp _id352768start
_id352768conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f352767start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $100, %rax
       cmpq   %rax, %rdx
       je _f352767block352813
       jmp _f352767block352814

_f352767block352814:
       movq   %rdx, %rdx
       addq   $1, %rdx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f352767block352811
       jmp _f352767block352812

_f352767block352812:
       jmp _f352767block352810

_f352767block352810:
       jmp _f352767block352808

_f352767block352808:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _f352767block352806

_f352767block352811:
       jmp _f352767block352809

_f352767block352809:
       jmp _f352767block352807

_f352767block352807:
       movq   $0, %rdx
       jmp _f352767block352806

_f352767block352806:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $261, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %rcx
       leaq   _f352767(%rip), %rsi
       movq   %rdx, %rdi
       movq   %rcx, %rsi
       movq   %rsi, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_f352767block352813:
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _clos352772(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _f352767
.align 16
_f352767:
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
       jmp _f352767start
_f352767conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main352766start:
       movq   %rdx, %rcx
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main352766block352827
       jmp _main352766block352828

_main352766block352828:
       jmp _main352766block352826

_main352766block352826:
       jmp _main352766block352824

_main352766block352824:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main352766block352822

_main352766block352827:
       jmp _main352766block352825

_main352766block352825:
       jmp _main352766block352823

_main352766block352823:
       movq   $0, %rdx
       jmp _main352766block352822

_main352766block352822:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main352766block352820
       jmp _main352766block352821

_main352766block352820:
       jmp _main352766block352818

_main352766block352818:
       jmp _main352766block352816

_main352766block352816:
       movq   $0, %rdx
       jmp _main352766block352815

_main352766block352821:
       jmp _main352766block352819

_main352766block352819:
       jmp _main352766block352817

_main352766block352817:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main352766block352815

_main352766block352815:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       leaq   _f352767(%rip), %rcx
       movq   $0, %rdi
       movq   %rdx, %rsi
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



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
       jmp _main352766start
_main352766conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

