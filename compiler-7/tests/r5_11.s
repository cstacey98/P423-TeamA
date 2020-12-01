f47start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       leaq   lambda51(%rip), %rbx
       movq   %rdx, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl f47block82
       jmp f47block83

f47block83:
       jmp f47block81

f47block81:
       jmp f47block79

f47block79:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp f47block77

f47block82:
       jmp f47block80

f47block80:
       jmp f47block78

f47block78:
       movq   $0, %rdx
       jmp f47block77

f47block77:
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
       jmp f47conclusion



.globl f47
.align 16
f47:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp f47start
f47conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main46start:
       movq   %rdi, %rdx
       leaq   f47(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main46block89
       jmp main46block90

main46block90:
       jmp main46block88

main46block88:
       jmp main46block86

main46block86:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main46block84

main46block89:
       jmp main46block87

main46block87:
       jmp main46block85

main46block85:
       movq   $0, %rdx
       jmp main46block84

main46block84:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rbx
       callq read_int
       movq   %rax, %rcx
       movq   %rbx, %r11
       movq   8(%r11), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rbx
       callq read_int
       movq   %rax, %rcx
       movq   %rbx, %r11
       movq   8(%r11), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
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
       jmp main46start
main46conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda51start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp lambda51conclusion



.globl lambda51
.align 16
lambda51:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda51start
lambda51conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

