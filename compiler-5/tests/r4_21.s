_tail-sum354731start:
       movq   %rdi, %rcx
       movq   %rsi, %rdi
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _tail-sum354731block354740
       jmp _tail-sum354731block354741

_tail-sum354731block354741:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rdx
       addq   %rdi, %rdx
       leaq   _tail-sum354731(%rip), %rcx
       movq   %rsi, %rdi
       movq   %rdx, %rsi
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_tail-sum354731block354740:
       movq   %rdi, %rax
       jmp _tail-sum354731conclusion



.globl _tail-sum354731
.align 16
_tail-sum354731:
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
       jmp _tail-sum354731start
_tail-sum354731conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354730start:
       leaq   _tail-sum354731(%rip), %rdx
       movq   $5, %rdi
       movq   $0, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rax
       addq   $27, %rax
       jmp _main354730conclusion



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
       jmp _main354730start
_main354730conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

