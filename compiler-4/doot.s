_start:
       movq   $42, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _block70713
       jmp _block70714

_block70713:
       jmp _block70711

_block70711:
       jmp _block70709

_block70709:
       movq   $0, %rdx
       jmp _block70708

_block70714:
       jmp _block70712

_block70712:
       jmp _block70710

_block70710:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block70708

_block70708:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block70706
       jmp _block70707

_block70706:
       jmp _block70704

_block70707:
       jmp _block70705

_block70705:
       jmp _block70703

_block70703:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block70701

_block70704:
       jmp _block70702

_block70702:
       movq   $0, %rcx
       jmp _block70701

_block70701:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
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
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _start
_conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

