_start:
       movq   $1, %rsi
       movq   $2, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _block261124
       jmp _block261125

_block261124:
       jmp _block261122

_block261122:
       jmp _block261120

_block261125:
       jmp _block261123

_block261123:
       jmp _block261121

_block261120:
       movq   $0, %rdx
       jmp _block261119

_block261121:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block261119

_block261119:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
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
