_start:
       movq   $777, %rdx
       movq   free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $16, %rsi
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block270545
       jmp _block270546

_block270546:
       jmp _block270544

_block270544:
       jmp _block270542

_block270545:
       jmp _block270543

_block270543:
       jmp _block270541

_block270541:
       movq   $0, %rcx
       jmp _block270540

_block270542:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block270540

_block270540:
       movq   free_ptr(%rip), %rcx
       addq   $16, free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %rdi
       movq   %rdx, %rdx
       movq   free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $24, %rsi
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block270538
       jmp _block270539

_block270538:
       jmp _block270536

_block270536:
       jmp _block270534

_block270534:
       movq   $0, %rcx
       jmp _block270533

_block270539:
       jmp _block270537

_block270537:
       jmp _block270535

_block270535:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block270533

_block270533:
       movq   free_ptr(%rip), %rcx
       addq   $24, free_ptr(%rip)
       movq   %rcx, %r11
       movq   $389, 0(%r11)
       movq   %rcx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %rcx
       movq   %rcx, %r11
       movq   -8(%r11), %rcx
       movq   %rcx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r11), %rax
       jmp _conclusion



.globl _main
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $336, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $16, %r15
       jmp _start
_conclusion:
       subq   $16, %r15
       addq   $336, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
