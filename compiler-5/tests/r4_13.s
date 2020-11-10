_zero352830start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _zero352830block352877
       jmp _zero352830block352878

_zero352830block352878:
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _zero352830block352875
       jmp _zero352830block352876

_zero352830block352875:
       jmp _zero352830block352873

_zero352830block352873:
       jmp _zero352830block352871

_zero352830block352871:
       movq   $0, %rdx
       jmp _zero352830block352870

_zero352830block352876:
       jmp _zero352830block352874

_zero352830block352874:
       jmp _zero352830block352872

_zero352830block352872:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _zero352830block352870

_zero352830block352877:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $8, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _zero352830block352868
       jmp _zero352830block352869

_zero352830block352868:
       jmp _zero352830block352866

_zero352830block352866:
       jmp _zero352830block352864

_zero352830block352864:
       movq   $0, %rdx
       jmp _zero352830block352863

_zero352830block352869:
       jmp _zero352830block352867

_zero352830block352867:
       jmp _zero352830block352865

_zero352830block352865:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _zero352830block352863

_zero352830block352863:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp _zero352830conclusion

_zero352830block352870:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _zero352830(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _zero352830
.align 16
_zero352830:
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
       jmp _zero352830start
_zero352830conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main352829start:
       leaq   _zero352830(%rip), %rdx
       movq   $1, %rdi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _zero352830(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, %rcx
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main352829block352884
       jmp _main352829block352885

_main352829block352885:
       jmp _main352829block352883

_main352829block352883:
       jmp _main352829block352881

_main352829block352881:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _main352829block352879

_main352829block352884:
       jmp _main352829block352882

_main352829block352882:
       jmp _main352829block352880

_main352829block352880:
       movq   $0, %rdx
       jmp _main352829block352879

_main352829block352879:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $391, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rax
       jmp _main352829conclusion



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
       jmp _main352829start
_main352829conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

