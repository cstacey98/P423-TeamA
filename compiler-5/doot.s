_foo61523start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %rcx
       movq   $0, %rax
       cmpq   %rdi, %rax
       je _foo61523block61571
       jmp _foo61523block61572

_foo61523block61572:
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
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _foo61523block61569
       jmp _foo61523block61570

_foo61523block61570:
       jmp _foo61523block61568

_foo61523block61568:
       jmp _foo61523block61566

_foo61523block61566:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _foo61523block61564

_foo61523block61569:
       jmp _foo61523block61567

_foo61523block61567:
       jmp _foo61523block61565

_foo61523block61571:
       movq   %rcx, %r11
       movq   32(%r11), %rax
       jmp _foo61523conclusion

_foo61523block61565:
       movq   $0, %rdx
       jmp _foo61523block61564

_foo61523block61564:
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
       leaq   _foo61523(%rip), %r10
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



.globl _foo61523
.align 16
_foo61523:
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
       jmp _foo61523start
_foo61523conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main61522start:
       movq   $6, %rdx
       movq   $7, %rcx
       movq   $8, %rcx
       movq   $142, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main61522block61578
       jmp _main61522block61579

_main61522block61579:
       jmp _main61522block61577

_main61522block61577:
       jmp _main61522block61575

_main61522block61578:
       jmp _main61522block61576

_main61522block61576:
       jmp _main61522block61574

_main61522block61574:
       movq   $0, %rdx
       jmp _main61522block61573

_main61522block61575:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main61522block61573

_main61522block61573:
       movq   _free_ptr(%rip), %rsi
       addq   $40, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $9, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r9
       leaq   _foo61523(%rip), %r10
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
       jmp _main61522start
_main61522conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

