_big69969start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rdx, %r8
       movq   %rcx, %rdi
       addq   %rsi, %rdi
       movq   %rcx, %rdx
       addq   %r8, %rdx
       movq   %rdi, %r9
       addq   %rdx, %r9
       movq   %r8, %rdi
       addq   %rcx, %rdi
       movq   %r8, %rdx
       addq   %rsi, %rdx
       movq   %rdi, %rdi
       addq   %rdx, %rdi
       movq   %r9, %rdx
       addq   %rdi, %rdx
       movq   %rsi, %rdi
       addq   %rsi, %rdi
       movq   %rsi, %rsi
       addq   %rcx, %rsi
       movq   %rdi, %rdi
       addq   %rsi, %rdi
       movq   %r8, %rsi
       addq   %rcx, %rsi
       movq   %r8, %rcx
       addq   %r8, %rcx
       movq   %rsi, %rsi
       addq   %rcx, %rsi
       movq   %rdi, %rcx
       addq   %rsi, %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _big69969conclusion



.globl _big69969
.align 16
_big69969:
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
       jmp _big69969start
_big69969conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69968start:
       callq _read_int
       movq   %rax, %r12
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %rdx
       leaq   _big69969(%rip), %rcx
       movq   %r12, %rdi
       movq   %rbx, %rsi
       movq   %rdx, %rdx
       callq *%rcx
       movq   %rax, %rdx
       movq   $42, %rax
       addq   %rdx, %rax
       jmp _main69968conclusion



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
       jmp _main69968start
_main69968conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

