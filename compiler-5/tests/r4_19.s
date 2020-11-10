_m354630start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rdx
       movq   %rcx, %rdx
       movq   %r8, %rdx
       movq   %r9, %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rax
       jmp _m354630conclusion



.globl _m354630
.align 16
_m354630:
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
       jmp _m354630start
_m354630conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354629start:
       movq   $772, %rdx
       movq   $771, %rsi
       movq   $770, %rsi
       movq   $42, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354629block354661
       jmp _main354629block354662

_main354629block354661:
       jmp _main354629block354659

_main354629block354659:
       jmp _main354629block354657

_main354629block354657:
       movq   $0, %rdx
       jmp _main354629block354656

_main354629block354662:
       jmp _main354629block354660

_main354629block354660:
       jmp _main354629block354658

_main354629block354658:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main354629block354656

_main354629block354656:
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $9, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       leaq   _m354630(%rip), %rcx
       movq   $777, %rdi
       movq   $776, %rsi
       movq   $775, %rdx
       movq   $774, %rcx
       movq   $773, %r8
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
       jmp _main354629start
_main354629conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

