map6start:
       movq   %rdi, %r12
       movq   %rsi, -8(%r15)
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   %r12, %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rbx
       movq   -8(%r15), %r11
       movq   16(%r11), %rcx
       movq   %r12, %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl map6block41
       jmp map6block42

map6block42:
       jmp map6block40

map6block40:
       jmp map6block38

map6block38:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp map6block36

map6block41:
       jmp map6block39

map6block39:
       jmp map6block37

map6block37:
       movq   $0, %rdx
       jmp map6block36

map6block36:
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
       movq   %rdx, %rax
       jmp map6conclusion



.globl map6
.align 16
map6:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp map6start
map6conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
add15start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp add15conclusion



.globl add15
.align 16
add15:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp add15start
add15conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main4start:
       leaq   add15(%rip), %r13
       movq   $0, %r12
       movq   $41, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main4block48
       jmp main4block49

main4block48:
       jmp main4block46

main4block46:
       jmp main4block44

main4block44:
       movq   $0, %rdx
       jmp main4block43

main4block49:
       jmp main4block47

main4block47:
       jmp main4block45

main4block45:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp main4block43

main4block43:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   map6(%rip), %rdx
       movq   %r13, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp main4conclusion



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
       jmp main4start
main4conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

