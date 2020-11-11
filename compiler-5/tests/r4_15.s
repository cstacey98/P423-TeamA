_minus68247start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _minus68247conclusion



.globl _minus68247
.align 16
_minus68247:
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
       jmp _minus68247start
_minus68247conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_map-vector68246start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _f68250(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _map-vector68246block68277
       jmp _map-vector68246block68278

_map-vector68246block68278:
       jmp _map-vector68246block68276

_map-vector68246block68276:
       jmp _map-vector68246block68274

_map-vector68246block68277:
       jmp _map-vector68246block68275

_map-vector68246block68275:
       jmp _map-vector68246block68273

_map-vector68246block68273:
       movq   $0, %rdx
       jmp _map-vector68246block68272

_map-vector68246block68274:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _map-vector68246block68272

_map-vector68246block68272:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _map-vector68246conclusion



.globl _map-vector68246
.align 16
_map-vector68246:
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
       jmp _map-vector68246start
_map-vector68246conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main68245start:
       movq   $43, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main68245block68284
       jmp _main68245block68285

_main68245block68284:
       jmp _main68245block68282

_main68245block68282:
       jmp _main68245block68280

_main68245block68280:
       movq   $0, %rdx
       jmp _main68245block68279

_main68245block68285:
       jmp _main68245block68283

_main68245block68283:
       jmp _main68245block68281

_main68245block68281:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main68245block68279

_main68245block68279:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _map-vector68246(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main68245conclusion



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
       jmp _main68245start
_main68245conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

