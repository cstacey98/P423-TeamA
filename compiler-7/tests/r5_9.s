g1539start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rbx
       movq   %rcx, -8(%r15)
       movq   %rbx, %r12
       movq   %rbx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl g1539block1587
       jmp g1539block1588

g1539block1588:
       jmp g1539block1586

g1539block1587:
       jmp g1539block1585

g1539block1585:
       jmp g1539block1583

g1539block1586:
       jmp g1539block1584

g1539block1583:
       movq   $0, %rdx
       jmp g1539block1582

g1539block1584:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp g1539block1582

g1539block1582:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       movq   -8(%r15), %r11
       movq   8(%r11), %r10
       movq   -8(%r15), %rdi
       movq   %rbx, %rsi
       movq   %rbx, %rdx
       movq   %rbx, %rcx
       movq   %rbx, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl g1539
.align 16
g1539:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp g1539start
g1539conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1538start:
       movq   %rdi, %rdx
       leaq   g1539(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1538block1601
       jmp main1538block1602

main1538block1602:
       jmp main1538block1600

main1538block1600:
       jmp main1538block1598

main1538block1598:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1538block1596

main1538block1601:
       jmp main1538block1599

main1538block1599:
       jmp main1538block1597

main1538block1597:
       movq   $0, %rdx
       jmp main1538block1596

main1538block1596:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   lambda1552(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1538block1594
       jmp main1538block1595

main1538block1595:
       jmp main1538block1593

main1538block1593:
       jmp main1538block1591

main1538block1594:
       jmp main1538block1592

main1538block1592:
       jmp main1538block1590

main1538block1591:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1538block1589

main1538block1590:
       movq   $0, %rdx
       jmp main1538block1589

main1538block1589:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
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
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



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
       addq   $8, %r15
       jmp main1538start
main1538conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1552start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rdx
       movq   %r8, %rdx
       movq   %r9, %rdx
       movq   %rsi, %rax
       jmp lambda1552conclusion



.globl lambda1552
.align 16
lambda1552:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1552start
lambda1552conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

