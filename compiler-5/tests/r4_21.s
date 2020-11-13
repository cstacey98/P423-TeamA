_tailsum2054start:
       movq   %rdi, %rdx
       movq   %rsi, %rdi
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _tailsum2054block2063
       jmp _tailsum2054block2064

_tailsum2054block2063:
       movq   %rdi, %rax
       jmp _tailsum2054conclusion

_tailsum2054block2064:
       movq   $1, %rcx
       negq   %rcx
       movq   %rdx, %rsi
       addq   %rcx, %rsi
       movq   %rdx, %rcx
       addq   %rdi, %rcx
       leaq   _tailsum2054(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _tailsum2054
.align 16
_tailsum2054:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _tailsum2054start
_tailsum2054conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main2053start:
       leaq   _tailsum2054(%rip), %rdx
       movq   $5, %rdi
       movq   $0, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rax
       addq   $27, %rax
       jmp _main2053conclusion



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
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _main2053start
_main2053conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

