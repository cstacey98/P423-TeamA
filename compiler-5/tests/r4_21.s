tailsum2054start:
       movq   %rdi, %rdx
       movq   %rsi, %rdi
       movq   $0, %rax
       cmpq   %rax, %rdx
       je tailsum2054block2063
       jmp tailsum2054block2064

tailsum2054block2063:
       movq   %rdi, %rax
       jmp tailsum2054conclusion

tailsum2054block2064:
       movq   $1, %rcx
       negq   %rcx
       movq   %rdx, %rsi
       addq   %rcx, %rsi
       movq   %rdx, %rcx
       addq   %rdi, %rcx
       leaq   tailsum2054(%rip), %rdx
       movq   %rsi, %rdi
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



.globl tailsum2054
.align 16
tailsum2054:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp tailsum2054start
tailsum2054conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2053start:
       leaq   tailsum2054(%rip), %rdx
       movq   $5, %rdi
       movq   $0, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rax
       addq   $27, %rax
       jmp main2053conclusion



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
       jmp main2053start
main2053conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

