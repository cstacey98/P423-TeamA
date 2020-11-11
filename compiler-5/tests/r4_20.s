_foo69829start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %rcx
       movq   $0, %rax
       cmpq   %rdi, %rax
       je _foo69829block69881
       jmp _foo69829block69882

_foo69829block69882:
       movq   $1, %rsi
       negq   %rsi
       movq   %rdi, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rdx
       movq   %rcx, %r11
       movq   32(%r11), %rdx
       movq   $1, %rcx
       negq   %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _foo69829block69879
       jmp _foo69829block69880

_foo69829block69879:
       jmp _foo69829block69877

_foo69829block69880:
       jmp _foo69829block69878

_foo69829block69881:
       movq   %rcx, %r11
       movq   32(%r11), %rax
       jmp _foo69829conclusion

_foo69829block69878:
       jmp _foo69829block69876

_foo69829block69876:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _foo69829block69874

_foo69829block69877:
       jmp _foo69829block69875

_foo69829block69875:
       movq   $0, %rdx
       jmp _foo69829block69874

_foo69829block69874:
       movq   _free_ptr(%rip), %r9
       addq   $40, _free_ptr(%rip)
       movq   %r9, %r11
       movq   $9, 0(%r11)
       movq   %r9, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdi
       movq   %r9, %r9
       leaq   _foo69829(%rip), %r10
       movq   %rdx, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r10, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _foo69829
.align 16
_foo69829:
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
       jmp _foo69829start
_foo69829conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69828start:
       movq   $6, %rdx
       movq   $7, %rdx
       movq   $8, %rdx
       movq   $142, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main69828block69888
       jmp _main69828block69889

_main69828block69888:
       jmp _main69828block69886

_main69828block69886:
       jmp _main69828block69884

_main69828block69884:
       movq   $0, %rdx
       jmp _main69828block69883

_main69828block69889:
       jmp _main69828block69887

_main69828block69887:
       jmp _main69828block69885

_main69828block69885:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main69828block69883

_main69828block69883:
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $9, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %r9
       leaq   _foo69829(%rip), %r10
       movq   $100, %rdi
       movq   $2, %rsi
       movq   $3, %rdx
       movq   $4, %rcx
       movq   $5, %r8
       movq   %r9, %r9
       movq   %r10, %rax
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
       jmp _main69828start
_main69828conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

