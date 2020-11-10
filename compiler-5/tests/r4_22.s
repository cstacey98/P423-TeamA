_h354743start:
       movq   %rdi, %r9
       movq   %rsi, %r10
       movq   %rdx, %rdi
       movq   %rcx, %r8
       movq   %r8, %rsi
       movq   %r9, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %r8, %rdx
       addq   %rcx, %rdx
       movq   %rdi, %rcx
       addq   %rdx, %rcx
       movq   %r10, %rdx
       addq   %rcx, %rdx
       movq   %r9, %rax
       addq   %rdx, %rax
       jmp _h354743conclusion



.globl _h354743
.align 16
_h354743:
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
       jmp _h354743start
_h354743conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354742start:
       movq   $6, %rdx
       movq   $7, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354742block354775
       jmp _main354742block354776

_main354742block354776:
       jmp _main354742block354774

_main354742block354774:
       jmp _main354742block354772

_main354742block354772:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main354742block354770

_main354742block354775:
       jmp _main354742block354773

_main354742block354773:
       jmp _main354742block354771

_main354742block354771:
       movq   $0, %rdx
       jmp _main354742block354770

_main354742block354770:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $5, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _h354743(%rip), %rdx
       movq   $1, %rdi
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
       jmp _main354742start
_main354742conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

