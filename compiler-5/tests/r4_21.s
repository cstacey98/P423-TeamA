_tail-sum69891start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _tail-sum69891block69900
       jmp _tail-sum69891block69901

_tail-sum69891block69900:
       movq   %rdx, %rax
       jmp _tail-sum69891conclusion

_tail-sum69891block69901:
       movq   $1, %rdi
       negq   %rdi
       movq   %rcx, %rsi
       addq   %rdi, %rsi
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _tail-sum69891(%rip), %rdx
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



.globl _tail-sum69891
.align 16
_tail-sum69891:
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
       jmp _tail-sum69891start
_tail-sum69891conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69890start:
       leaq   _tail-sum69891(%rip), %rdx
       movq   $5, %rdi
       movq   $0, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rax
       addq   $27, %rax
       jmp _main69890conclusion



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
       jmp _main69890start
_main69890conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

