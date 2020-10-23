_start:
       movq   $1, %rdx
       movq   $2, %rdi
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $24, %rsi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block328119
       jmp _block328120

_block328120:
       jmp _block328118

_block328118:
       jmp _block328116

_block328116:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block328114

_block328119:
       jmp _block328117

_block328117:
       jmp _block328115

_block328115:
       movq   $0, %rcx
       jmp _block328114

_block328114:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $5, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $42, %rax
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
