_big354809start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rdi, %r8
       addq   %rsi, %r8
       movq   %rdi, %rcx
       addq   %rdx, %rcx
       movq   %r8, %r9
       addq   %rcx, %r9
       movq   %rdx, %rcx
       addq   %rdi, %rcx
       movq   %rdx, %r8
       addq   %rsi, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %r9, %r8
       addq   %rcx, %r8
       movq   %rsi, %rcx
       addq   %rsi, %rcx
       movq   %rsi, %rsi
       addq   %rdi, %rsi
       movq   %rcx, %rcx
       addq   %rsi, %rcx
       movq   %rdx, %rsi
       addq   %rdi, %rsi
       movq   %rdx, %rdx
       addq   %rdx, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rdx
       addq   %rsi, %rdx
       movq   %r8, %rax
       addq   %rdx, %rax
       jmp _big354809conclusion



.globl _big354809
.align 16
_big354809:
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
       jmp _big354809start
_big354809conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354808start:
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %r12
       callq _read_int
       movq   %rax, %rdx
       leaq   _big354809(%rip), %rcx
       movq   %rbx, %rdi
       movq   %r12, %rsi
       movq   %rdx, %rdx
       callq *%rcx
       movq   %rax, %rdx
       movq   $42, %rax
       addq   %rdx, %rax
       jmp _main354808conclusion



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
       jmp _main354808start
_main354808conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

