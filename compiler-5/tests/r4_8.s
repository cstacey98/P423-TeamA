_even355135start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _even355135block355145
       jmp _even355135block355146

_even355135block355145:
       movq   $1, %rax
       jmp _even355135conclusion

_even355135block355146:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _odd355134(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _even355135
.align 16
_even355135:
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
       jmp _even355135start
_even355135conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_odd355134start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _odd355134block355147
       jmp _odd355134block355148

_odd355134block355147:
       movq   $0, %rax
       jmp _odd355134conclusion

_odd355134block355148:
       movq   $1, %rcx
       negq   %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       leaq   _even355135(%rip), %rcx
       movq   %rdx, %rdi
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _odd355134
.align 16
_odd355134:
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
       jmp _odd355134start
_odd355134conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main355133start:
       leaq   _even355135(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $1, %rax
       cmpq   %rax, %rdx
       je _main355133block355151
       jmp _main355133block355152

_main355133block355152:
       jmp _main355133block355150

_main355133block355150:
       movq   $0, %rax
       jmp _main355133conclusion

_main355133block355151:
       jmp _main355133block355149

_main355133block355149:
       movq   $42, %rax
       jmp _main355133conclusion



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
       jmp _main355133start
_main355133conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

