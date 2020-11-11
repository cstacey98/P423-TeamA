_f67888start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $100, %rax
       cmpq   %rax, %rdx
       je _f67888block67917
       jmp _f67888block67918

_f67888block67918:
       movq   %rdx, %rsi
       addq   $1, %rsi
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f67888block67915
       jmp _f67888block67916

_f67888block67916:
       jmp _f67888block67914

_f67888block67914:
       jmp _f67888block67912

_f67888block67912:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f67888block67910

_f67888block67917:
       movq   %rcx, %r11
       movq   8(%r11), %rax
       jmp _f67888conclusion

_f67888block67915:
       jmp _f67888block67913

_f67888block67913:
       jmp _f67888block67911

_f67888block67911:
       movq   $0, %rdx
       jmp _f67888block67910

_f67888block67910:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _f67888(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _f67888
.align 16
_f67888:
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
       jmp _f67888start
_f67888conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main67887start:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main67887block67924
       jmp _main67887block67925

_main67887block67924:
       jmp _main67887block67922

_main67887block67922:
       jmp _main67887block67920

_main67887block67920:
       movq   $0, %rdx
       jmp _main67887block67919

_main67887block67925:
       jmp _main67887block67923

_main67887block67923:
       jmp _main67887block67921

_main67887block67921:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main67887block67919

_main67887block67919:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _f67888(%rip), %rdx
       movq   $0, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
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
       jmp _main67887start
_main67887conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

