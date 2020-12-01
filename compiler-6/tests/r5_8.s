_makewrapper1358start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rdx
       leaq   _lambda1372(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _makewrapper1358block1465
       jmp _makewrapper1358block1466

_makewrapper1358block1465:
       jmp _makewrapper1358block1463

_makewrapper1358block1463:
       jmp _makewrapper1358block1461

_makewrapper1358block1461:
       movq   $0, %rdx
       jmp _makewrapper1358block1460

_makewrapper1358block1466:
       jmp _makewrapper1358block1464

_makewrapper1358block1464:
       jmp _makewrapper1358block1462

_makewrapper1358block1462:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _makewrapper1358block1460

_makewrapper1358block1460:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _makewrapper1358conclusion



.globl _makewrapper1358
.align 16
_makewrapper1358:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _makewrapper1358start
_makewrapper1358conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_add11357start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add11357conclusion



.globl _add11357
.align 16
_add11357:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _add11357start
_add11357conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_sub11356start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _sub11356conclusion



.globl _sub11356
.align 16
_sub11356:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _sub11356start
_sub11356conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_constfun1355start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   $42, %rax
       jmp _constfun1355conclusion



.globl _constfun1355
.align 16
_constfun1355:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _constfun1355start
_constfun1355conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_double1354start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   %rdx, %rax
       jmp _double1354conclusion



.globl _double1354
.align 16
_double1354:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _double1354start
_double1354conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main1353start:
       movq   %rdi, %rdx
       leaq   _makewrapper1358(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1353block1507
       jmp _main1353block1508

_main1353block1507:
       jmp _main1353block1505

_main1353block1505:
       jmp _main1353block1503

_main1353block1503:
       movq   $0, %rdx
       jmp _main1353block1502

_main1353block1508:
       jmp _main1353block1506

_main1353block1506:
       jmp _main1353block1504

_main1353block1504:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1353block1502

_main1353block1502:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _add11357(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1353block1500
       jmp _main1353block1501

_main1353block1501:
       jmp _main1353block1499

_main1353block1499:
       jmp _main1353block1497

_main1353block1497:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1353block1495

_main1353block1500:
       jmp _main1353block1498

_main1353block1498:
       jmp _main1353block1496

_main1353block1496:
       movq   $0, %rdx
       jmp _main1353block1495

_main1353block1495:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       leaq   _sub11356(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1353block1493
       jmp _main1353block1494

_main1353block1493:
       jmp _main1353block1491

_main1353block1491:
       jmp _main1353block1489

_main1353block1489:
       movq   $0, %rdx
       jmp _main1353block1488

_main1353block1494:
       jmp _main1353block1492

_main1353block1492:
       jmp _main1353block1490

_main1353block1490:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1353block1488

_main1353block1488:
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
       movq   -16(%r15), %rsi
       movq   %rdx, %rdx
       callq *%rcx
       movq   %rax, -8(%r15)
       movq   -8(%r15), %rax
       movq   %rax, -8(%r15)
       leaq   _constfun1355(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1353block1486
       jmp _main1353block1487

_main1353block1487:
       jmp _main1353block1485

_main1353block1485:
       jmp _main1353block1483

_main1353block1483:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1353block1481

_main1353block1486:
       jmp _main1353block1484

_main1353block1484:
       jmp _main1353block1482

_main1353block1482:
       movq   $0, %rdx
       jmp _main1353block1481

_main1353block1481:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       leaq   _double1354(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1353block1479
       jmp _main1353block1480

_main1353block1480:
       jmp _main1353block1478

_main1353block1478:
       jmp _main1353block1476

_main1353block1476:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1353block1474

_main1353block1479:
       jmp _main1353block1477

_main1353block1477:
       jmp _main1353block1475

_main1353block1475:
       movq   $0, %rdx
       jmp _main1353block1474

_main1353block1474:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       leaq   _constfun1355(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1353block1472
       jmp _main1353block1473

_main1353block1472:
       jmp _main1353block1470

_main1353block1470:
       jmp _main1353block1468

_main1353block1473:
       jmp _main1353block1471

_main1353block1471:
       jmp _main1353block1469

_main1353block1468:
       movq   $0, %rdx
       jmp _main1353block1467

_main1353block1469:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1353block1467

_main1353block1467:
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
       jmp _main1353start
_main1353conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1372start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       leaq   _lambda1374(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _lambda1372block1514
       jmp _lambda1372block1515

_lambda1372block1514:
       jmp _lambda1372block1512

_lambda1372block1512:
       jmp _lambda1372block1510

_lambda1372block1510:
       movq   $0, %rdx
       jmp _lambda1372block1509

_lambda1372block1515:
       jmp _lambda1372block1513

_lambda1372block1513:
       jmp _lambda1372block1511

_lambda1372block1511:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _lambda1372block1509

_lambda1372block1509:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _lambda1372conclusion



.globl _lambda1372
.align 16
_lambda1372:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda1372start
_lambda1372conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda1374start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, -8(%r15)
       movq   %rdx, -16(%r15)
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



.globl _lambda1374
.align 16
_lambda1374:
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
       jmp _lambda1374start
_lambda1374conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

