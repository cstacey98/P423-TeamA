_tailrecur70267start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _tailrecur70267block70274
       jmp _tailrecur70267block70275

_tailrecur70267block70275:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _tailrecur70267(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_tailrecur70267block70274:
       movq   $0, %rax
       jmp _tailrecur70267conclusion



.globl _tailrecur70267
.align 16
_tailrecur70267:
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
       jmp _tailrecur70267start
_tailrecur70267conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main70266start:
       leaq   _tailrecur70267(%rip), %rdx
       movq   $99, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rdx, %rax
       je _main70266block70278
       jmp _main70266block70279

_main70266block70279:
       jmp _main70266block70277

_main70266block70277:
       movq   $777, %rax
       jmp _main70266conclusion

_main70266block70278:
       jmp _main70266block70276

_main70266block70276:
       movq   $42, %rax
       jmp _main70266conclusion



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
       jmp _main70266start
_main70266conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

