_main1006start:
       movq   %rdi, %rdx
       leaq   _lambda1010(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1006block1039
       jmp _main1006block1040

_main1006block1040:
       jmp _main1006block1038

_main1006block1038:
       jmp _main1006block1036

_main1006block1036:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1006block1034

_main1006block1039:
       jmp _main1006block1037

_main1006block1037:
       jmp _main1006block1035

_main1006block1035:
       movq   $0, %rdx
       jmp _main1006block1034

_main1006block1034:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $42, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $444, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _main
.align 16
_main:
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
       addq   $0, %r15
       jmp _main1006start
_main1006conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1010start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       leaq   _lambda1012(%rip), %r12
       movq   %rdx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _lambda1010block1046
       jmp _lambda1010block1047

_lambda1010block1046:
       jmp _lambda1010block1044

_lambda1010block1044:
       jmp _lambda1010block1042

_lambda1010block1042:
       movq   $0, %rdx
       jmp _lambda1010block1041

_lambda1010block1047:
       jmp _lambda1010block1045

_lambda1010block1045:
       jmp _lambda1010block1043

_lambda1010block1043:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _lambda1010block1041

_lambda1010block1041:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _lambda1010conclusion



.globl _lambda1010
.align 16
_lambda1010:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1010start
_lambda1010conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1012start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %rax
       jmp _lambda1012conclusion



.globl _lambda1012
.align 16
_lambda1012:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1012start
_lambda1012conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

