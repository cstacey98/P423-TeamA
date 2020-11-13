f51start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   $100, %rax
       cmpq   %rax, %rcx
       je f51block80
       jmp f51block81

f51block81:
       movq   %rcx, %r12
       addq   $1, %r12
       movq   %rdx, %r11
       movq   8(%r11), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl f51block78
       jmp f51block79

f51block79:
       jmp f51block77

f51block77:
       jmp f51block75

f51block78:
       jmp f51block76

f51block76:
       jmp f51block74

f51block80:
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp f51conclusion

f51block75:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp f51block73

f51block74:
       movq   $0, %rdx
       jmp f51block73

f51block73:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   f51(%rip), %rdx
       movq   %r12, %rdi
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



.globl f51
.align 16
f51:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp f51start
f51conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main50start:
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main50block87
       jmp main50block88

main50block87:
       jmp main50block85

main50block85:
       jmp main50block83

main50block83:
       movq   $0, %rdx
       jmp main50block82

main50block88:
       jmp main50block86

main50block86:
       jmp main50block84

main50block84:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main50block82

main50block82:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   f51(%rip), %rdx
       movq   $0, %rdi
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
       jmp main50start
main50conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

