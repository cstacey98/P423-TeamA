_o354412start:
       movq   %rdi, %rdi
       movq   %rsi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rdi
       je _o354412block354585
       jmp _o354412block354586

_o354412block354586:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o354412block354583
       jmp _o354412block354584

_o354412block354584:
       jmp _o354412block354582

_o354412block354582:
       jmp _o354412block354580

_o354412block354580:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o354412block354578

_o354412block354583:
       jmp _o354412block354581

_o354412block354581:
       jmp _o354412block354579

_o354412block354579:
       movq   $0, %rdx
       jmp _o354412block354578

_o354412block354578:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o354412block354576
       jmp _o354412block354577

_o354412block354576:
       jmp _o354412block354574

_o354412block354574:
       jmp _o354412block354572

_o354412block354572:
       movq   $0, %rdx
       jmp _o354412block354571

_o354412block354577:
       jmp _o354412block354575

_o354412block354575:
       jmp _o354412block354573

_o354412block354573:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o354412block354571

_o354412block354571:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o354412block354569
       jmp _o354412block354570

_o354412block354569:
       jmp _o354412block354567

_o354412block354567:
       jmp _o354412block354565

_o354412block354565:
       movq   $0, %rdx
       jmp _o354412block354564

_o354412block354570:
       jmp _o354412block354568

_o354412block354568:
       jmp _o354412block354566

_o354412block354566:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o354412block354564

_o354412block354564:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o354412block354562
       jmp _o354412block354563

_o354412block354562:
       jmp _o354412block354560

_o354412block354560:
       jmp _o354412block354558

_o354412block354558:
       movq   $0, %rdx
       jmp _o354412block354557

_o354412block354563:
       jmp _o354412block354561

_o354412block354561:
       jmp _o354412block354559

_o354412block354559:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o354412block354557

_o354412block354585:
       movq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o354412block354541
       jmp _o354412block354542

_o354412block354542:
       jmp _o354412block354540

_o354412block354540:
       jmp _o354412block354538

_o354412block354538:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o354412block354536

_o354412block354541:
       jmp _o354412block354539

_o354412block354539:
       jmp _o354412block354537

_o354412block354537:
       movq   $0, %rdx
       jmp _o354412block354536

_o354412block354536:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _o354412conclusion

_o354412block354557:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o354412block354555
       jmp _o354412block354556

_o354412block354556:
       jmp _o354412block354554

_o354412block354554:
       jmp _o354412block354552

_o354412block354552:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o354412block354550

_o354412block354555:
       jmp _o354412block354553

_o354412block354553:
       jmp _o354412block354551

_o354412block354551:
       movq   $0, %rdx
       jmp _o354412block354550

_o354412block354550:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o354412block354548
       jmp _o354412block354549

_o354412block354548:
       jmp _o354412block354546

_o354412block354546:
       jmp _o354412block354544

_o354412block354544:
       movq   $0, %rdx
       jmp _o354412block354543

_o354412block354549:
       jmp _o354412block354547

_o354412block354547:
       jmp _o354412block354545

_o354412block354545:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _o354412block354543

_o354412block354543:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $3979, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $1, %rdx
       negq   %rdx
       movq   %rdi, %rsi
       addq   %rdx, %rsi
       leaq   _o354412(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _o354412
.align 16
_o354412:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _o354412start
_o354412conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_t354411start:
       movq   %rdi, %rdx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _t354411block354592
       jmp _t354411block354593

_t354411block354592:
       jmp _t354411block354590

_t354411block354590:
       jmp _t354411block354588

_t354411block354593:
       jmp _t354411block354591

_t354411block354591:
       jmp _t354411block354589

_t354411block354588:
       movq   $0, %rdx
       jmp _t354411block354587

_t354411block354589:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t354411block354587

_t354411block354587:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _t354411conclusion



.globl _t354411
.align 16
_t354411:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _t354411start
_t354411conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_h354410start:
       movq   %rdi, %rdx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _h354410block354599
       jmp _h354410block354600

_h354410block354600:
       jmp _h354410block354598

_h354410block354598:
       jmp _h354410block354596

_h354410block354599:
       jmp _h354410block354597

_h354410block354597:
       jmp _h354410block354595

_h354410block354595:
       movq   $0, %rdx
       jmp _h354410block354594

_h354410block354596:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h354410block354594

_h354410block354594:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _h354410conclusion



.globl _h354410
.align 16
_h354410:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _h354410start
_h354410conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f354409start:
       movq   %rdi, %rdx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f354409block354606
       jmp _f354409block354607

_f354409block354606:
       jmp _f354409block354604

_f354409block354607:
       jmp _f354409block354605

_f354409block354605:
       jmp _f354409block354603

_f354409block354603:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f354409block354601

_f354409block354604:
       jmp _f354409block354602

_f354409block354602:
       movq   $0, %rdx
       jmp _f354409block354601

_f354409block354601:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _f354409conclusion



.globl _f354409
.align 16
_f354409:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _f354409start
_f354409conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_e354408start:
       movq   %rdi, %rdx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e354408block354613
       jmp _e354408block354614

_e354408block354614:
       jmp _e354408block354612

_e354408block354612:
       jmp _e354408block354610

_e354408block354610:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e354408block354608

_e354408block354613:
       jmp _e354408block354611

_e354408block354611:
       jmp _e354408block354609

_e354408block354609:
       movq   $0, %rdx
       jmp _e354408block354608

_e354408block354608:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _e354408conclusion



.globl _e354408
.align 16
_e354408:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _e354408start
_e354408conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354407start:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354407block354627
       jmp _main354407block354628

_main354407block354627:
       jmp _main354407block354625

_main354407block354625:
       jmp _main354407block354623

_main354407block354623:
       movq   $0, %rdx
       jmp _main354407block354622

_main354407block354628:
       jmp _main354407block354626

_main354407block354626:
       jmp _main354407block354624

_main354407block354624:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354407block354622

_main354407block354622:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _o354412(%rip), %rdx
       movq   $1, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _t354411(%rip), %rcx
       movq   %rdx, %rdi
       callq *%rcx
       movq   %rax, %rdx
       leaq   _h354410(%rip), %rcx
       movq   %rdx, %rdi
       callq *%rcx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354407block354620
       jmp _main354407block354621

_main354407block354621:
       jmp _main354407block354619

_main354407block354619:
       jmp _main354407block354617

_main354407block354620:
       jmp _main354407block354618

_main354407block354618:
       jmp _main354407block354616

_main354407block354616:
       movq   $0, %rdx
       jmp _main354407block354615

_main354407block354617:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354407block354615

_main354407block354615:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _e354408(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main354407conclusion



.globl _main
.align 16
_main:
       pushq  %rsp
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
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main354407start
_main354407conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

