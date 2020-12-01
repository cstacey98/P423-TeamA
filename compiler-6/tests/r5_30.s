_main1048start:
       movq   %rdi, %rdx
       leaq   _lambda1054(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1048block1088
       jmp _main1048block1089

_main1048block1089:
       jmp _main1048block1087

_main1048block1087:
       jmp _main1048block1085

_main1048block1085:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1048block1083

_main1048block1088:
       jmp _main1048block1086

_main1048block1086:
       jmp _main1048block1084

_main1048block1084:
       movq   $0, %rdx
       jmp _main1048block1083

_main1048block1083:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       leaq   _lambda1056(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1048block1081
       jmp _main1048block1082

_main1048block1081:
       jmp _main1048block1079

_main1048block1079:
       jmp _main1048block1077

_main1048block1077:
       movq   $0, %rdx
       jmp _main1048block1076

_main1048block1082:
       jmp _main1048block1080

_main1048block1080:
       jmp _main1048block1078

_main1048block1078:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1048block1076

_main1048block1076:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $42, %rsi
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
       jmp _main1048start
_main1048conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1056start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rsi, %rsi
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _lambda1056
.align 16
_lambda1056:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1056start
_lambda1056conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1054start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda1054conclusion



.globl _lambda1054
.align 16
_lambda1054:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1054start
_lambda1054conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

