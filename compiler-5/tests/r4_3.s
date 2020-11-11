_fun70212start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r9, %r11
       movq   8(%r11), %rbx
       movq   %r9, %r11
       movq   16(%r11), %r10
       movq   %r9, %r11
       movq   24(%r11), %r9
       movq   %r10, %r10
       addq   %r9, %r10
       movq   %rbx, %r9
       addq   %r10, %r9
       movq   %r8, %r8
       addq   %r9, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rax
       addq   %rcx, %rax
       jmp _fun70212conclusion



.globl _fun70212
.align 16
_fun70212:
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
       jmp _fun70212start
_fun70212conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main70211start:
       movq   $5, %rdx
       movq   $5, %rdx
       movq   $7, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main70211block70249
       jmp _main70211block70250

_main70211block70249:
       jmp _main70211block70247

_main70211block70247:
       jmp _main70211block70245

_main70211block70245:
       movq   $0, %rdx
       jmp _main70211block70244

_main70211block70250:
       jmp _main70211block70248

_main70211block70248:
       jmp _main70211block70246

_main70211block70246:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _main70211block70244

_main70211block70244:
       movq   _free_ptr(%rip), %rsi
       addq   $32, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $7, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r9
       leaq   _fun70212(%rip), %r10
       movq   $5, %rdi
       movq   $5, %rsi
       movq   $5, %rdx
       movq   $5, %rcx
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
       jmp _main70211start
_main70211conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

