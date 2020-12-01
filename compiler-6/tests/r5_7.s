_f1286start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $4, %rdx
       leaq   _lambda1293(%rip), %rbx
       movq   %rcx, %r12
       movq   %rdx, %r13
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f1286block1337
       jmp _f1286block1338

_f1286block1338:
       jmp _f1286block1336

_f1286block1336:
       jmp _f1286block1334

_f1286block1337:
       jmp _f1286block1335

_f1286block1335:
       jmp _f1286block1333

_f1286block1333:
       movq   $0, %rdx
       jmp _f1286block1332

_f1286block1334:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _f1286block1332

_f1286block1332:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $7, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _f1286conclusion



.globl _f1286
.align 16
_f1286:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _f1286start
_f1286conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1285start:
       movq   %rdi, %rdx
       leaq   _f1286(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1285block1351
       jmp _main1285block1352

_main1285block1352:
       jmp _main1285block1350

_main1285block1350:
       jmp _main1285block1348

_main1285block1351:
       jmp _main1285block1349

_main1285block1349:
       jmp _main1285block1347

_main1285block1347:
       movq   $0, %rdx
       jmp _main1285block1346

_main1285block1348:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1285block1346

_main1285block1346:
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
       movq   $5, %rsi
       callq *%rdx
       movq   %rax, -8(%r15)
       leaq   _f1286(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1285block1344
       jmp _main1285block1345

_main1285block1344:
       jmp _main1285block1342

_main1285block1342:
       jmp _main1285block1340

_main1285block1340:
       movq   $0, %rdx
       jmp _main1285block1339

_main1285block1345:
       jmp _main1285block1343

_main1285block1343:
       jmp _main1285block1341

_main1285block1341:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1285block1339

_main1285block1339:
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
       movq   $3, %rsi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $11, %rsi
       callq *%rdx
       movq   %rax, %rbx
       movq   -16(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $15, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _main1285conclusion



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
       jmp _main1285start
_main1285conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1293start:
       movq   %rdi, %rdx
       movq   %rsi, %rsi
       movq   %rdx, %r11
       movq   16(%r11), %rcx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _lambda1293conclusion



.globl _lambda1293
.align 16
_lambda1293:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1293start
_lambda1293conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

