_minus353087start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _minus353087conclusion



.globl _minus353087
.align 16
_minus353087:
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
       jmp _minus353087start
_minus353087conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_map-vector353086start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _f353090(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _map-vector353086block353117
       jmp _map-vector353086block353118

_map-vector353086block353117:
       jmp _map-vector353086block353115

_map-vector353086block353115:
       jmp _map-vector353086block353113

_map-vector353086block353113:
       movq   $0, %rdx
       jmp _map-vector353086block353112

_map-vector353086block353118:
       jmp _map-vector353086block353116

_map-vector353086block353116:
       jmp _map-vector353086block353114

_map-vector353086block353114:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _map-vector353086block353112

_map-vector353086block353112:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _map-vector353086conclusion



.globl _map-vector353086
.align 16
_map-vector353086:
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
       jmp _map-vector353086start
_map-vector353086conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main353085start:
       movq   $43, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main353085block353124
       jmp _main353085block353125

_main353085block353124:
       jmp _main353085block353122

_main353085block353122:
       jmp _main353085block353120

_main353085block353120:
       movq   $0, %rdx
       jmp _main353085block353119

_main353085block353125:
       jmp _main353085block353123

_main353085block353123:
       jmp _main353085block353121

_main353085block353121:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main353085block353119

_main353085block353119:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       leaq   _map-vector353086(%rip), %rcx
       movq   %rsi, %rdi
       movq   %rdx, %rsi
       callq *%rcx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main353085conclusion



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
       jmp _main353085start
_main353085conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

