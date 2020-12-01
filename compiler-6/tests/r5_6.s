_app1244start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rdx, %rcx
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



.globl _app1244
.align 16
_app1244:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _app1244start
_app1244conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1243start:
       movq   %rdi, %rdx
       leaq   _app1244(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1243block1283
       jmp _main1243block1284

_main1243block1283:
       jmp _main1243block1281

_main1243block1281:
       jmp _main1243block1279

_main1243block1284:
       jmp _main1243block1282

_main1243block1282:
       jmp _main1243block1280

_main1243block1280:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1243block1278

_main1243block1279:
       movq   $0, %rdx
       jmp _main1243block1278

_main1243block1278:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _lambda1252(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1243block1276
       jmp _main1243block1277

_main1243block1277:
       jmp _main1243block1275

_main1243block1275:
       jmp _main1243block1273

_main1243block1273:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1243block1271

_main1243block1276:
       jmp _main1243block1274

_main1243block1274:
       jmp _main1243block1272

_main1243block1272:
       movq   $0, %rdx
       jmp _main1243block1271

_main1243block1271:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   -8(%r15), %rdi
       movq   %rdx, %rsi
       movq   $42, %rdx
       movq   %rcx, %rax
       subq   $16, %r15
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
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _main1243start
_main1243conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1252start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda1252conclusion



.globl _lambda1252
.align 16
_lambda1252:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1252start
_lambda1252conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

