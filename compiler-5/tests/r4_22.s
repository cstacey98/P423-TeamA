h2066start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r9, %r11
       movq   8(%r11), %r10
       movq   %r9, %r11
       movq   16(%r11), %r9
       movq   %r10, %r10
       addq   %r9, %r10
       movq   %r8, %r8
       addq   %r10, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rax
       addq   %rcx, %rax
       jmp h2066conclusion



.globl h2066
.align 16
h2066:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp h2066start
h2066conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2065start:
       movq   $6, %rbx
       movq   $7, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main2065block2098
       jmp main2065block2099

main2065block2098:
       jmp main2065block2096

main2065block2096:
       jmp main2065block2094

main2065block2094:
       movq   $0, %rdx
       jmp main2065block2093

main2065block2099:
       jmp main2065block2097

main2065block2097:
       jmp main2065block2095

main2065block2095:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp main2065block2093

main2065block2093:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       leaq   h2066(%rip), %r10
       movq   $1, %rdi
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
       jmp main2065start
main2065conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

