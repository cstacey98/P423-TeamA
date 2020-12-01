_add11091start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add11091conclusion



.globl _add11091
.align 16
_add11091:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _add11091start
_add11091conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1090start:
       movq   %rdi, %rdx
       callq _read_int
       movq   %rax, %rbx
       callq _read_int
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _main1090block1137
       jmp _main1090block1138

_main1090block1138:
       jmp _main1090block1136

_main1090block1136:
       leaq   _lambda1098(%rip), %r12
       movq   %rbx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1090block1133
       jmp _main1090block1134

_main1090block1134:
       jmp _main1090block1132

_main1090block1132:
       jmp _main1090block1130

_main1090block1130:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main1090block1128

_main1090block1137:
       jmp _main1090block1135

_main1090block1135:
       leaq   _add11091(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1090block1126
       jmp _main1090block1127

_main1090block1127:
       jmp _main1090block1125

_main1090block1125:
       jmp _main1090block1123

_main1090block1123:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1090block1121

_main1090block1126:
       jmp _main1090block1124

_main1090block1133:
       jmp _main1090block1131

_main1090block1131:
       jmp _main1090block1129

_main1090block1129:
       movq   $0, %rdx
       jmp _main1090block1128

_main1090block1128:
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
       movq   %rdx, %rdx
       jmp _main1090block1120

_main1090block1124:
       jmp _main1090block1122

_main1090block1122:
       movq   $0, %rdx
       jmp _main1090block1121

_main1090block1121:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       jmp _main1090block1120

_main1090block1120:
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $41, %rsi
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
       jmp _main1090start
_main1090conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1098start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _lambda1098conclusion



.globl _lambda1098
.align 16
_lambda1098:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1098start
_lambda1098conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

