_f266start:
       movq   %rdi, %rdx
       movq   $0, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f266block338
       jmp _f266block339

_f266block338:
       jmp _f266block336

_f266block336:
       jmp _f266block334

_f266block334:
       movq   $0, %rdx
       jmp _f266block333

_f266block339:
       jmp _f266block337

_f266block337:
       jmp _f266block335

_f266block335:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f266block333

_f266block333:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       leaq   _lambda277(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   %rdx, -16(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f266block331
       jmp _f266block332

_f266block332:
       jmp _f266block330

_f266block330:
       jmp _f266block328

_f266block328:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _f266block326

_f266block331:
       jmp _f266block329

_f266block329:
       jmp _f266block327

_f266block327:
       movq   $0, %rdx
       jmp _f266block326

_f266block326:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $775, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _f266conclusion



.globl _f266
.align 16
_f266:
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
       jmp _f266start
_f266conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main265start:
       movq   %rdi, %rdx
       leaq   _f266(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main265block352
       jmp _main265block353

_main265block352:
       jmp _main265block350

_main265block350:
       jmp _main265block348

_main265block348:
       movq   $0, %rdx
       jmp _main265block347

_main265block353:
       jmp _main265block351

_main265block351:
       jmp _main265block349

_main265block349:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main265block347

_main265block347:
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
       callq *%rdx
       movq   %rax, -8(%r15)
       leaq   _f266(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main265block345
       jmp _main265block346

_main265block345:
       jmp _main265block343

_main265block343:
       jmp _main265block341

_main265block341:
       movq   $0, %rdx
       jmp _main265block340

_main265block346:
       jmp _main265block344

_main265block344:
       jmp _main265block342

_main265block342:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main265block340

_main265block340:
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
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   -16(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $2, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   -8(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $20, %rsi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   -16(%r15), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $22, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _main265conclusion



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
       jmp _main265start
_main265conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda277start:
       movq   %rdi, %rdx
       movq   %rsi, %rsi
       movq   %rdx, %r11
       movq   16(%r11), %rcx
       movq   %rdx, %r11
       movq   24(%r11), %rcx
       movq   %rcx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _lambda277conclusion



.globl _lambda277
.align 16
_lambda277:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda277start
_lambda277conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

