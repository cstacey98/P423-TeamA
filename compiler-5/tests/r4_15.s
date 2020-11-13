minus409start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp minus409conclusion



.globl minus409
.align 16
minus409:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp minus409start
minus409conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
mapvector408start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl mapvector408block440
       jmp mapvector408block441

mapvector408block441:
       jmp mapvector408block439

mapvector408block439:
       jmp mapvector408block437

mapvector408block440:
       jmp mapvector408block438

mapvector408block438:
       jmp mapvector408block436

mapvector408block437:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp mapvector408block435

mapvector408block436:
       movq   $0, %rdx
       jmp mapvector408block435

mapvector408block435:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp mapvector408conclusion



.globl mapvector408
.align 16
mapvector408:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp mapvector408start
mapvector408conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main407start:
       leaq   minus409(%rip), %rbx
       movq   $43, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main407block447
       jmp main407block448

main407block448:
       jmp main407block446

main407block446:
       jmp main407block444

main407block444:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main407block442

main407block447:
       jmp main407block445

main407block445:
       jmp main407block443

main407block443:
       movq   $0, %rdx
       jmp main407block442

main407block442:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   mapvector408(%rip), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp main407conclusion



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
       addq   $0, %r15
       jmp main407start
main407conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

