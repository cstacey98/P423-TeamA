_idkcomb1140start:
       movq   %rdi, %rdx
       movq   %rsi, %rbx
       leaq   _lambda1145(%rip), %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _idkcomb1140block1192
       jmp _idkcomb1140block1193

_idkcomb1140block1192:
       jmp _idkcomb1140block1190

_idkcomb1140block1190:
       jmp _idkcomb1140block1188

_idkcomb1140block1188:
       movq   $0, %rdx
       jmp _idkcomb1140block1187

_idkcomb1140block1193:
       jmp _idkcomb1140block1191

_idkcomb1140block1191:
       jmp _idkcomb1140block1189

_idkcomb1140block1189:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _idkcomb1140block1187

_idkcomb1140block1187:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _lambda1148(%rip), %r12
       movq   %rbx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _idkcomb1140block1185
       jmp _idkcomb1140block1186

_idkcomb1140block1186:
       jmp _idkcomb1140block1184

_idkcomb1140block1184:
       jmp _idkcomb1140block1182

_idkcomb1140block1182:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _idkcomb1140block1180

_idkcomb1140block1185:
       jmp _idkcomb1140block1183

_idkcomb1140block1183:
       jmp _idkcomb1140block1181

_idkcomb1140block1181:
       movq   $0, %rdx
       jmp _idkcomb1140block1180

_idkcomb1140block1180:
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
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $444, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _idkcomb1140
.align 16
_idkcomb1140:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _idkcomb1140start
_idkcomb1140conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1139start:
       movq   %rdi, %rdx
       leaq   _idkcomb1140(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1139block1199
       jmp _main1139block1200

_main1139block1199:
       jmp _main1139block1197

_main1139block1197:
       jmp _main1139block1195

_main1139block1195:
       movq   $0, %rdx
       jmp _main1139block1194

_main1139block1200:
       jmp _main1139block1198

_main1139block1198:
       jmp _main1139block1196

_main1139block1196:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1139block1194

_main1139block1194:
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
       jmp _main1139start
_main1139conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1148start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %rax
       jmp _lambda1148conclusion



.globl _lambda1148
.align 16
_lambda1148:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1148start
_lambda1148conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1145start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda1145conclusion



.globl _lambda1145
.align 16
_lambda1145:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1145start
_lambda1145conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

