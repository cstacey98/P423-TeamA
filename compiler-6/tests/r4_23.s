_f2102start:
       movq   %rdi, %rbx
       movq   $0, %rax
       cmpq   %rax, %rbx
       je _f2102block2125
       jmp _f2102block2126

_f2102block2126:
       movq   $1, %rax
       cmpq   %rax, %rbx
       je _f2102block2123
       jmp _f2102block2124

_f2102block2124:
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   _f2102(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %r12
       movq   $2, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   _f2102(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %r12, %rax
       addq   %rdx, %rax
       jmp _f2102conclusion

_f2102block2125:
       movq   $0, %rax
       jmp _f2102conclusion

_f2102block2123:
       movq   $1, %rax
       jmp _f2102conclusion



.globl _f2102
.align 16
_f2102:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _f2102start
_f2102conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_g2101start:
       movq   %rdi, %rcx
       movq   %rsi, %r8
       movq   %rdx, %rsi
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _g2101block2129
       jmp _g2101block2130

_g2101block2130:
       movq   $1, %rax
       cmpq   %rax, %rcx
       je _g2101block2127
       jmp _g2101block2128

_g2101block2127:
       movq   %rsi, %rax
       jmp _g2101conclusion

_g2101block2129:
       movq   %r8, %rax
       jmp _g2101conclusion

_g2101block2128:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rdi
       addq   %rdx, %rdi
       movq   %r8, %rdx
       addq   %rsi, %rdx
       leaq   _g2101(%rip), %rcx
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _g2101
.align 16
_g2101:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _g2101start
_g2101conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main2100start:
       leaq   _f2102(%rip), %rdx
       movq   $8, %rdi
       callq *%rdx
       movq   %rax, %rbx
       leaq   _g2101(%rip), %rcx
       movq   $8, %rdi
       movq   $0, %rsi
       movq   $1, %rdx
       callq *%rcx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _main2100conclusion



.globl _main
.align 16
_main:
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
       addq   $0, %r15
       jmp _main2100start
_main2100conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

