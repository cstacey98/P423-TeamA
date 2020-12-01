f266start:
       movq   %rdi, %rdx
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl f266block338
       jmp f266block339

f266block338:
       jmp f266block336

f266block336:
       jmp f266block334

f266block334:
       movq   $0, %rdx
       jmp f266block333

f266block339:
       jmp f266block337

f266block337:
       jmp f266block335

f266block335:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp f266block333

f266block333:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       leaq   lambda277(%rip), %rbx
       movq   %rdx, -8(%r15)
       movq   %rdx, -16(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl f266block331
       jmp f266block332

f266block332:
       jmp f266block330

f266block330:
       jmp f266block328

f266block328:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp f266block326

f266block331:
       jmp f266block329

f266block329:
       jmp f266block327

f266block327:
       movq   $0, %rdx
       jmp f266block326

f266block326:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
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
       jmp f266conclusion



.globl f266
.align 16
f266:
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
       jmp f266start
f266conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main265start:
       movq   %rdi, %rdx
       leaq   f266(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main265block352
       jmp main265block353

main265block352:
       jmp main265block350

main265block350:
       jmp main265block348

main265block348:
       movq   $0, %rdx
       jmp main265block347

main265block353:
       jmp main265block351

main265block351:
       jmp main265block349

main265block349:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main265block347

main265block347:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
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
       leaq   f266(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main265block345
       jmp main265block346

main265block345:
       jmp main265block343

main265block343:
       jmp main265block341

main265block341:
       movq   $0, %rdx
       jmp main265block340

main265block346:
       jmp main265block344

main265block344:
       jmp main265block342

main265block342:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main265block340

main265block340:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
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
       jmp main265conclusion



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp main265start
main265conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda277start:
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
       jmp lambda277conclusion



.globl lambda277
.align 16
lambda277:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda277start
lambda277conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

