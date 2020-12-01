_g1517start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rbx
       movq   %rcx, -8(%r15)
       movq   %rbx, %rbx
       movq   %rbx, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _g1517block1565
       jmp _g1517block1566

_g1517block1565:
       jmp _g1517block1563

_g1517block1563:
       jmp _g1517block1561

_g1517block1561:
       movq   $0, %rdx
       jmp _g1517block1560

_g1517block1566:
       jmp _g1517block1564

_g1517block1564:
       jmp _g1517block1562

_g1517block1562:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _g1517block1560

_g1517block1560:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
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
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _g1517
.align 16
_g1517:
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
       jmp _g1517start
_g1517conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1516start:
       movq   %rdi, %rdx
       leaq   _g1517(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1516block1579
       jmp _main1516block1580

_main1516block1580:
       jmp _main1516block1578

_main1516block1578:
       jmp _main1516block1576

_main1516block1576:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1516block1574

_main1516block1579:
       jmp _main1516block1577

_main1516block1577:
       jmp _main1516block1575

_main1516block1575:
       movq   $0, %rdx
       jmp _main1516block1574

_main1516block1574:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _lambda1530(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1516block1572
       jmp _main1516block1573

_main1516block1572:
       jmp _main1516block1570

_main1516block1570:
       jmp _main1516block1568

_main1516block1568:
       movq   $0, %rdx
       jmp _main1516block1567

_main1516block1573:
       jmp _main1516block1571

_main1516block1571:
       jmp _main1516block1569

_main1516block1569:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1516block1567

_main1516block1567:
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
       jmp _main1516start
_main1516conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1530start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rdx
       movq   %r8, %rdx
       movq   %r9, %rdx
       movq   %rsi, %rax
       jmp _lambda1530conclusion



.globl _lambda1530
.align 16
_lambda1530:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1530start
_lambda1530conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

