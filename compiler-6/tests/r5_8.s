makewrapper1370start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rdx
       leaq   lambda1384(%rip), %rbx
       movq   %rcx, %r12
       movq   %rdx, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl makewrapper1370block1487
       jmp makewrapper1370block1488

makewrapper1370block1488:
       jmp makewrapper1370block1486

makewrapper1370block1486:
       jmp makewrapper1370block1484

makewrapper1370block1484:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp makewrapper1370block1482

makewrapper1370block1487:
       jmp makewrapper1370block1485

makewrapper1370block1485:
       jmp makewrapper1370block1483

makewrapper1370block1483:
       movq   $0, %rdx
       jmp makewrapper1370block1482

makewrapper1370block1482:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
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
       jmp makewrapper1370conclusion



.globl makewrapper1370
.align 16
makewrapper1370:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp makewrapper1370start
makewrapper1370conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
add11369start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp add11369conclusion



.globl add11369
.align 16
add11369:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp add11369start
add11369conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
sub11368start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp sub11368conclusion



.globl sub11368
.align 16
sub11368:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp sub11368start
sub11368conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
constfun1367start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   $42, %rax
       jmp constfun1367conclusion



.globl constfun1367
.align 16
constfun1367:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp constfun1367start
constfun1367conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
double1366start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   %rdx, %rax
       jmp double1366conclusion



.globl double1366
.align 16
double1366:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp double1366start
double1366conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1365start:
       movq   %rdi, %rdx
       leaq   makewrapper1370(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1365block1529
       jmp main1365block1530

main1365block1529:
       jmp main1365block1527

main1365block1527:
       jmp main1365block1525

main1365block1525:
       movq   $0, %rdx
       jmp main1365block1524

main1365block1530:
       jmp main1365block1528

main1365block1528:
       jmp main1365block1526

main1365block1526:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1365block1524

main1365block1524:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   add11369(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main1365block1522
       jmp main1365block1523

main1365block1523:
       jmp main1365block1521

main1365block1521:
       jmp main1365block1519

main1365block1519:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1365block1517

main1365block1522:
       jmp main1365block1520

main1365block1520:
       jmp main1365block1518

main1365block1518:
       movq   $0, %rdx
       jmp main1365block1517

main1365block1517:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       leaq   sub11368(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main1365block1515
       jmp main1365block1516

main1365block1516:
       jmp main1365block1514

main1365block1514:
       jmp main1365block1512

main1365block1512:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1365block1510

main1365block1515:
       jmp main1365block1513

main1365block1513:
       jmp main1365block1511

main1365block1511:
       movq   $0, %rdx
       jmp main1365block1510

main1365block1510:
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
       movq   -16(%r15), %rsi
       movq   %rdx, %rdx
       callq *%rcx
       movq   %rax, -8(%r15)
       movq   -8(%r15), %rax
       movq   %rax, -8(%r15)
       leaq   constfun1367(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1365block1508
       jmp main1365block1509

main1365block1508:
       jmp main1365block1506

main1365block1506:
       jmp main1365block1504

main1365block1504:
       movq   $0, %rdx
       jmp main1365block1503

main1365block1509:
       jmp main1365block1507

main1365block1507:
       jmp main1365block1505

main1365block1505:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1365block1503

main1365block1503:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   -8(%r15), %rax
       movq   %rax, -8(%r15)
       leaq   double1366(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1365block1501
       jmp main1365block1502

main1365block1501:
       jmp main1365block1499

main1365block1499:
       jmp main1365block1497

main1365block1497:
       movq   $0, %rdx
       jmp main1365block1496

main1365block1502:
       jmp main1365block1500

main1365block1500:
       jmp main1365block1498

main1365block1498:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1365block1496

main1365block1496:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $11, %rsi
       callq *%rdx
       movq   %rax, %rdx
       leaq   constfun1367(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1365block1494
       jmp main1365block1495

main1365block1494:
       jmp main1365block1492

main1365block1492:
       jmp main1365block1490

main1365block1495:
       jmp main1365block1493

main1365block1493:
       jmp main1365block1491

main1365block1491:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1365block1489

main1365block1490:
       movq   $0, %rdx
       jmp main1365block1489

main1365block1489:
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
       movq   $777, %rsi
       movq   %rdx, %rax
       subq   $16, %r15
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
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp main1365start
main1365conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1384start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rsi
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       leaq   lambda1386(%rip), %rbx
       movq   %rsi, %r13
       movq   %rcx, %r14
       movq   %rdx, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl lambda1384block1536
       jmp lambda1384block1537

lambda1384block1536:
       jmp lambda1384block1534

lambda1384block1534:
       jmp lambda1384block1532

lambda1384block1532:
       movq   $0, %rdx
       jmp lambda1384block1531

lambda1384block1537:
       jmp lambda1384block1535

lambda1384block1535:
       jmp lambda1384block1533

lambda1384block1533:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp lambda1384block1531

lambda1384block1531:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $9, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp lambda1384conclusion



.globl lambda1384
.align 16
lambda1384:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1384start
lambda1384conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1386start:
       movq   %rdi, %rdi
       movq   %rsi, %rcx
       movq   %rdi, %r11
       movq   16(%r11), %rdx
       movq   %rdi, %r11
       movq   24(%r11), %rsi
       movq   %rdi, %r11
       movq   32(%r11), %rdi
       movq   %rdi, -8(%r15)
       movq   %rsi, -16(%r15)
       movq   %rdx, %rsi
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   -16(%r15), %r11
       movq   8(%r11), %rdx
       movq   -16(%r15), %rdi
       movq   %rcx, %rsi
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



.globl lambda1386
.align 16
lambda1386:
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
       jmp lambda1386start
lambda1386conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

