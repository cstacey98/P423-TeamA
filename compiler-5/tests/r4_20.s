foo1992start:
       movq   %rdi, %rdi
       movq   %rsi, -8(%rbp)
       movq   %rdx, %r13
       movq   %rcx, -16(%rbp)
       movq   %r8, %r14
       movq   %r9, %rdx
       movq   $0, %rax
       cmpq   %rdi, %rax
       je foo1992block2044
       jmp foo1992block2045

foo1992block2044:
       movq   %rdx, %r11
       movq   32(%r11), %rax
       jmp foo1992conclusion

foo1992block2045:
       movq   $1, %rcx
       negq   %rcx
       movq   %rdi, %r12
       addq   %rcx, %r12
       movq   %rdx, %r11
       movq   8(%r11), %rbx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       movq   %rax, -24(%rbp)
       movq   %rdx, %r11
       movq   24(%r11), %rax
       movq   %rax, -32(%rbp)
       movq   %rdx, %r11
       movq   32(%r11), %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, -40(%rbp)
       addq   %rdx, -40(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl foo1992block2042
       jmp foo1992block2043

foo1992block2043:
       jmp foo1992block2041

foo1992block2041:
       jmp foo1992block2039

foo1992block2039:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp foo1992block2037

foo1992block2042:
       jmp foo1992block2040

foo1992block2040:
       jmp foo1992block2038

foo1992block2038:
       movq   $0, %rdx
       jmp foo1992block2037

foo1992block2037:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $9, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       leaq   foo1992(%rip), %r10
       movq   %r12, %rdi
       movq   -8(%rbp), %rsi
       movq   %r13, %rdx
       movq   -16(%rbp), %rcx
       movq   %r14, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       subq   $0, %r15
       addq   $40, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl foo1992
.align 16
foo1992:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $40, %rsp
       addq   $0, %r15
       jmp foo1992start
foo1992conclusion:
       subq   $0, %r15
       addq   $40, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1991start:
       movq   $6, %r14
       movq   $7, %r13
       movq   $8, %r12
       movq   $142, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main1991block2051
       jmp main1991block2052

main1991block2051:
       jmp main1991block2049

main1991block2049:
       jmp main1991block2047

main1991block2047:
       movq   $0, %rdx
       jmp main1991block2046

main1991block2052:
       jmp main1991block2050

main1991block2050:
       jmp main1991block2048

main1991block2048:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp main1991block2046

main1991block2046:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $9, 0(%r11)
       movq   %rdx, %r11
       movq   %r14, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       leaq   foo1992(%rip), %r10
       movq   $100, %rdi
       movq   $2, %rsi
       movq   $3, %rdx
       movq   $4, %rcx
       movq   $5, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



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
       jmp main1991start
main1991conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

