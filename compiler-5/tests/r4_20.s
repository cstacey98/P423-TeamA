_foo354669start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %rcx
       movq   %r8, %rcx
       movq   %r9, %rsi
       movq   $0, %rax
       cmpq   %rdx, %rax
       je _foo354669block354721
       jmp _foo354669block354722

_foo354669block354722:
       movq   $1, %rdi
       negq   %rdi
       movq   %rdx, %rcx
       addq   %rdi, %rcx
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %r11
       movq   16(%r11), %rcx
       movq   %rsi, %r11
       movq   24(%r11), %rcx
       movq   %rsi, %r11
       movq   32(%r11), %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _foo354669block354719
       jmp _foo354669block354720

_foo354669block354720:
       jmp _foo354669block354718

_foo354669block354718:
       jmp _foo354669block354716

_foo354669block354719:
       jmp _foo354669block354717

_foo354669block354717:
       jmp _foo354669block354715

_foo354669block354715:
       movq   $0, %rdx
       jmp _foo354669block354714

_foo354669block354716:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _foo354669block354714

_foo354669block354721:
       movq   %rsi, %r11
       movq   32(%r11), %rax
       jmp _foo354669conclusion

_foo354669block354714:
       movq   _free_ptr(%rip), %rsi
       addq   $40, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $9, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       leaq   _foo354669(%rip), %rsi
       movq   %rcx, %rdi
       movq   %rcx, %rsi
       movq   %rcx, %rdx
       movq   %rcx, %rcx
       movq   %rcx, %r8
       movq   %rdx, %r9
       movq   %rsi, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _foo354669
.align 16
_foo354669:
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
       jmp _foo354669start
_foo354669conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354668start:
       movq   $6, %rcx
       movq   $7, %rsi
       movq   $8, %rsi
       movq   $142, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354668block354728
       jmp _main354668block354729

_main354668block354729:
       jmp _main354668block354727

_main354668block354727:
       jmp _main354668block354725

_main354668block354725:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main354668block354723

_main354668block354728:
       jmp _main354668block354726

_main354668block354726:
       jmp _main354668block354724

_main354668block354724:
       movq   $0, %rdx
       jmp _main354668block354723

_main354668block354723:
       movq   _free_ptr(%rip), %rdx
       addq   $40, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $9, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _foo354669(%rip), %rdx
       movq   $100, %rdi
       movq   $2, %rsi
       movq   $3, %rdx
       movq   $4, %rcx
       movq   $5, %r8
       movq   %rcx, %r9
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
       jmp _main354668start
_main354668conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

