f2102start:
       movq   %rdi, %rbx
       movq   $0, %rax
       cmpq   %rax, %rbx
       je f2102block2125
       jmp f2102block2126

f2102block2126:
       movq   $1, %rax
       cmpq   %rax, %rbx
       je f2102block2123
       jmp f2102block2124

f2102block2124:
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   f2102(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %r12
       movq   $2, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   f2102(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %r12, %rax
       addq   %rdx, %rax
       jmp f2102conclusion

f2102block2125:
       movq   $0, %rax
       jmp f2102conclusion

f2102block2123:
       movq   $1, %rax
       jmp f2102conclusion



.globl f2102
.align 16
f2102:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp f2102start
f2102conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
g2101start:
       movq   %rdi, %rcx
       movq   %rsi, %r8
       movq   %rdx, %rsi
       movq   $0, %rax
       cmpq   %rax, %rcx
       je g2101block2129
       jmp g2101block2130

g2101block2130:
       movq   $1, %rax
       cmpq   %rax, %rcx
       je g2101block2127
       jmp g2101block2128

g2101block2127:
       movq   %rsi, %rax
       jmp g2101conclusion

g2101block2129:
       movq   %r8, %rax
       jmp g2101conclusion

g2101block2128:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rdi
       addq   %rdx, %rdi
       movq   %r8, %rdx
       addq   %rsi, %rdx
       leaq   g2101(%rip), %rcx
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



.globl g2101
.align 16
g2101:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp g2101start
g2101conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2100start:
       leaq   f2102(%rip), %rdx
       movq   $8, %rdi
       callq *%rdx
       movq   %rax, %rbx
       leaq   g2101(%rip), %rcx
       movq   $8, %rdi
       movq   $0, %rsi
       movq   $1, %rdx
       callq *%rcx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp main2100conclusion



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       addq   $0, %r15
       jmp main2100start
main2100conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

