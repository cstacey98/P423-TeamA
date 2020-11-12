_foo1992start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %rcx
       movq   $0, %rax
       cmpq   %rdi, %rax
       je _foo1992block2044
       jmp _foo1992block2045

_foo1992block2044:
       movq   %rcx, %r11
       movq   32(%r11), %rax
       jmp _foo1992conclusion

_foo1992block2045:
       movq   $1, %rsi
       negq   %rsi
       movq   %rdi, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rdx
       movq   %rcx, %r11
       movq   32(%r11), %rdx
       movq   $1, %rcx
       negq   %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
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
       movq   _free_ptr(%rip), %r9
       addq   $40, _free_ptr(%rip)
       movq   %r9, %r11
       movq   $9, 0(%r11)
       movq   %r9, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdi
       movq   %r9, %r9
       leaq   _foo1992(%rip), %r10
       movq   %rdx, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _foo1992
.align 16
_foo1992:
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
       jmp _foo1992start
_foo1992conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main1991start:
       movq   $6, %rdx
       movq   $7, %rdx
       movq   $8, %rdx
       movq   $142, %rdx
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
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $9, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %r9
       leaq   _foo1992(%rip), %r10
       movq   $100, %rdi
       movq   $2, %rsi
       movq   $3, %rdx
       movq   $4, %rcx
       movq   $5, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



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
       jmp _main1991start
_main1991conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

