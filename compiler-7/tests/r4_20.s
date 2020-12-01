_foo1992start:
       movq   %rdi, %rdi
       movq   %rsi, -8(%rbp)
       movq   %rdx, %r13
       movq   %rcx, -16(%rbp)
       movq   %r8, %r14
       movq   %r9, %rdx
       movq   $0, %rax
       cmpq   %rdi, %rax
       je _foo1992block2044
       jmp _foo1992block2045

_foo1992block2044:
       movq   %rdx, %r11
       movq   32(%r11), %rax
       jmp _foo1992conclusion

_foo1992block2045:
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
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _foo1992block2042
       jmp _foo1992block2043

_foo1992block2043:
       jmp _foo1992block2041

_foo1992block2041:
       jmp _foo1992block2039

_foo1992block2039:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _foo1992block2037

_foo1992block2042:
       jmp _foo1992block2040

_foo1992block2040:
       jmp _foo1992block2038

_foo1992block2038:
       movq   $0, %rdx
       jmp _foo1992block2037

_foo1992block2037:
       movq   _free_ptr(%rip), %rdx
       addq   $40, _free_ptr(%rip)
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
       leaq   _foo1992(%rip), %r10
       movq   %r12, %rdi
       movq   -8(%rbp), %rsi
       movq   %r13, %rdx
       movq   -16(%rbp), %rcx
       movq   %r14, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       subq   $0, %r15
       addq   $48, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _foo1992
.align 16
_foo1992:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $48, %rsp
       addq   $0, %r15
       jmp _foo1992start
_foo1992conclusion:
       subq   $0, %r15
       addq   $48, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1991start:
       movq   $6, %r14
       movq   $7, %r13
       movq   $8, %r12
       movq   $142, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1991block2051
       jmp _main1991block2052

_main1991block2051:
       jmp _main1991block2049

_main1991block2049:
       jmp _main1991block2047

_main1991block2047:
       movq   $0, %rdx
       jmp _main1991block2046

_main1991block2052:
       jmp _main1991block2050

_main1991block2050:
       jmp _main1991block2048

_main1991block2048:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main1991block2046

_main1991block2046:
       movq   _free_ptr(%rip), %rdx
       addq   $40, _free_ptr(%rip)
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
       leaq   _foo1992(%rip), %r10
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
       jmp _main1991start
_main1991conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

