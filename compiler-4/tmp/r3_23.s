_start:
       movq   $777, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block183057
       jmp _block183058

_block183058:
       jmp _block183056

_block183056:
       jmp _block183054

_block183054:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block183052

_block183057:
       jmp _block183055

_block183055:
       jmp _block183053

_block183053:
       movq   $0, %rcx
       jmp _block183052

_block183052:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $98, %rsi
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rdi
       addq   $24, %rdi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdi
       jl _block183050
       jmp _block183051

_block183050:
       jmp _block183048

_block183048:
       jmp _block183046

_block183046:
       movq   $0, %rcx
       jmp _block183045

_block183051:
       jmp _block183049

_block183049:
       jmp _block183047

_block183047:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block183045

_block183045:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $133, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdi
       movq   %rdi, %r11
       movq   -8(%r11), %rsi
       movq   $99, %r8
       movq   $100, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %r9
       cmpq   %r9, %rcx
       jl _block183043
       jmp _block183044

_block183044:
       jmp _block183042

_block183042:
       jmp _block183040

_block183040:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _block183038

_block183043:
       jmp _block183041

_block183041:
       jmp _block183039

_block183039:
       movq   $0, %rcx
       jmp _block183038

_block183038:
       movq   _free_ptr(%rip), %rcx
       addq   $32, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $135, 0(%r11)
       movq   %rcx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %r8, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
       movq   %rdx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
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
