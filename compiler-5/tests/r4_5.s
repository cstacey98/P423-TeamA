_tailrecur355107start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _tailrecur355107block355114
       jmp _tailrecur355107block355115

_tailrecur355107block355114:
       movq   $0, %rax
       jmp _tailrecur355107conclusion

_tailrecur355107block355115:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _tailrecur355107(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _tailrecur355107
.align 16
_tailrecur355107:
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
       jmp _tailrecur355107start
_tailrecur355107conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main355106start:
       leaq   _tailrecur355107(%rip), %rdx
       movq   $99, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rdx, %rax
       je _main355106block355118
       jmp _main355106block355119

_main355106block355119:
       jmp _main355106block355117

_main355106block355118:
       jmp _main355106block355116

_main355106block355116:
       movq   $42, %rax
       jmp _main355106conclusion

_main355106block355117:
       movq   $777, %rax
       jmp _main355106conclusion



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
       jmp _main355106start
_main355106conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

