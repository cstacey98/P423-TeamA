_start:
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block183004
       jmp _block183005

_block183004:
       jmp _block183002

_block183002:
       jmp _block183000

_block183000:
       movq   $0, %rdx
       jmp _block182999

_block183005:
       jmp _block183003

_block183003:
       jmp _block183001

_block183001:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182999

_block182999:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rcx
       jl _block182997
       jmp _block182998

_block182997:
       jmp _block182995

_block182995:
       jmp _block182993

_block182993:
       movq   $0, %rcx
       jmp _block182992

_block182998:
       jmp _block182996

_block182996:
       jmp _block182994

_block182994:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182992

_block182992:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
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
       subq   $96, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $96, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
