_fun355052start:
       movq   %rdi, %rbx
       movq   %rsi, %r10
       movq   %rdx, %r9
       movq   %rcx, %r8
       movq   %r8, %rdi
       movq   %r9, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rsi
       movq   %rdx, %r11
       movq   16(%r11), %rcx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       movq   %rsi, %rdx
       addq   %rcx, %rdx
       movq   %rdi, %rcx
       addq   %rdx, %rcx
       movq   %r8, %rdx
       addq   %rcx, %rdx
       movq   %r9, %rcx
       addq   %rdx, %rcx
       movq   %r10, %rdx
       addq   %rcx, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _fun355052conclusion



.globl _fun355052
.align 16
_fun355052:
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
       jmp _fun355052start
_fun355052conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main355051start:
       movq   $5, %rdx
       movq   $5, %rdx
       movq   $7, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main355051block355089
       jmp _main355051block355090

_main355051block355090:
       jmp _main355051block355088

_main355051block355088:
       jmp _main355051block355086

_main355051block355086:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _main355051block355084

_main355051block355089:
       jmp _main355051block355087

_main355051block355087:
       jmp _main355051block355085

_main355051block355085:
       movq   $0, %rdx
       jmp _main355051block355084

_main355051block355084:
       movq   _free_ptr(%rip), %rcx
       addq   $32, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $7, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       leaq   _fun355052(%rip), %rcx
       movq   $5, %rdi
       movq   $5, %rsi
       movq   $5, %rdx
       movq   $5, %rcx
       movq   $5, %r8
       movq   %rdx, %r9
       movq   %rcx, %rax
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
       jmp _main355051start
_main355051conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

