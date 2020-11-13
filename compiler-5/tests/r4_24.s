_big2132start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %r8
       addq   %rsi, %r8
       movq   %rcx, %rdi
       addq   %rdx, %rdi
       movq   %r8, %r8
       addq   %rdi, %r8
       movq   %rdx, %rdi
       addq   %rcx, %rdi
       movq   %rdx, %r9
       addq   %rsi, %r9
       movq   %rdi, %rdi
       addq   %r9, %rdi
       movq   %r8, %r8
       addq   %rdi, %r8
       movq   %rsi, %rdi
       addq   %rsi, %rdi
       movq   %rsi, %rsi
       addq   %rcx, %rsi
       movq   %rdi, %rdi
       addq   %rsi, %rdi
       movq   %rdx, %rsi
       addq   %rcx, %rsi
       movq   %rdx, %rdx
       addq   %rdx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rdx
       addq   %rcx, %rdx
       movq   %r8, %rax
       addq   %rdx, %rax
       jmp _big2132conclusion



.globl _big2132
.align 16
_big2132:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _big2132start
_big2132conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main2131start:
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %r12
       callq _read_int
       movq   %rax, %rdx
       leaq   _big2132(%rip), %rcx
       movq   %rbx, %rdi
       movq   %r12, %rsi
       movq   %rdx, %rdx
       callq *%rcx
       movq   %rax, %rdx
       movq   $42, %rax
       addq   %rdx, %rax
       jmp _main2131conclusion



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
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _main2131start
_main2131conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

