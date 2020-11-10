_sum355092start:
       movq   %rdi, %rbx
       movq   $1, %rax
       cmpq   %rax, %rbx
       je _sum355092block355100
       jmp _sum355092block355101

_sum355092block355100:
       movq   $1, %rax
       jmp _sum355092conclusion

_sum355092block355101:
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   _sum355092(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _sum355092conclusion



.globl _sum355092
.align 16
_sum355092:
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
       jmp _sum355092start
_sum355092conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main355091start:
       leaq   _sum355092(%rip), %rdx
       movq   $3, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $6, %rax
       cmpq   %rax, %rdx
       je _main355091block355104
       jmp _main355091block355105

_main355091block355104:
       jmp _main355091block355102

_main355091block355102:
       movq   $42, %rax
       jmp _main355091conclusion

_main355091block355105:
       jmp _main355091block355103

_main355091block355103:
       movq   $777, %rax
       jmp _main355091conclusion



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
       jmp _main355091start
_main355091conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

