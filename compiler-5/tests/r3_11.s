start:
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163546
       jmp block163547

block163546:
       jmp block163544

block163544:
       jmp block163542

block163542:
       movq   $0, %rdx
       jmp block163541

block163547:
       jmp block163545

block163545:
       jmp block163543

block163543:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163541

block163541:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163539
       jmp block163540

block163540:
       jmp block163538

block163538:
       jmp block163536

block163536:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163534

block163539:
       jmp block163537

block163537:
       jmp block163535

block163535:
       movq   $0, %rdx
       jmp block163534

block163534:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163532
       jmp block163533

block163533:
       jmp block163531

block163531:
       jmp block163529

block163529:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163527

block163532:
       jmp block163530

block163530:
       jmp block163528

block163528:
       movq   $0, %rdx
       jmp block163527

block163527:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163525
       jmp block163526

block163525:
       jmp block163523

block163523:
       jmp block163521

block163521:
       movq   $0, %rdx
       jmp block163520

block163526:
       jmp block163524

block163524:
       jmp block163522

block163522:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163520

block163520:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -32(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163518
       jmp block163519

block163518:
       jmp block163516

block163516:
       jmp block163514

block163514:
       movq   $0, %rdx
       jmp block163513

block163519:
       jmp block163517

block163517:
       jmp block163515

block163515:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163513

block163513:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -40(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163511
       jmp block163512

block163512:
       jmp block163510

block163510:
       jmp block163508

block163508:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163506

block163511:
       jmp block163509

block163509:
       jmp block163507

block163507:
       movq   $0, %rdx
       jmp block163506

block163506:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -48(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163504
       jmp block163505

block163504:
       jmp block163502

block163502:
       jmp block163500

block163500:
       movq   $0, %rdx
       jmp block163499

block163505:
       jmp block163503

block163503:
       jmp block163501

block163501:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163499

block163499:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163497
       jmp block163498

block163497:
       jmp block163495

block163495:
       jmp block163493

block163493:
       movq   $0, %rdx
       jmp block163492

block163498:
       jmp block163496

block163496:
       jmp block163494

block163494:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163492

block163492:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -64(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163490
       jmp block163491

block163490:
       jmp block163488

block163488:
       jmp block163486

block163486:
       movq   $0, %rdx
       jmp block163485

block163491:
       jmp block163489

block163489:
       jmp block163487

block163487:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163485

block163485:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -72(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163483
       jmp block163484

block163484:
       jmp block163482

block163482:
       jmp block163480

block163480:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163478

block163483:
       jmp block163481

block163481:
       jmp block163479

block163479:
       movq   $0, %rdx
       jmp block163478

block163478:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -80(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163476
       jmp block163477

block163477:
       jmp block163475

block163475:
       jmp block163473

block163473:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163471

block163476:
       jmp block163474

block163474:
       jmp block163472

block163472:
       movq   $0, %rdx
       jmp block163471

block163471:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -88(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163469
       jmp block163470

block163469:
       jmp block163467

block163467:
       jmp block163465

block163465:
       movq   $0, %rdx
       jmp block163464

block163470:
       jmp block163468

block163468:
       jmp block163466

block163466:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163464

block163464:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -96(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163462
       jmp block163463

block163462:
       jmp block163460

block163460:
       jmp block163458

block163458:
       movq   $0, %rdx
       jmp block163457

block163463:
       jmp block163461

block163461:
       jmp block163459

block163459:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163457

block163457:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -104(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163455
       jmp block163456

block163456:
       jmp block163454

block163454:
       jmp block163452

block163452:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163450

block163455:
       jmp block163453

block163453:
       jmp block163451

block163451:
       movq   $0, %rdx
       jmp block163450

block163450:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -112(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163448
       jmp block163449

block163449:
       jmp block163447

block163447:
       jmp block163445

block163445:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163443

block163448:
       jmp block163446

block163446:
       jmp block163444

block163444:
       movq   $0, %rdx
       jmp block163443

block163443:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -120(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163441
       jmp block163442

block163441:
       jmp block163439

block163439:
       jmp block163437

block163437:
       movq   $0, %rdx
       jmp block163436

block163442:
       jmp block163440

block163440:
       jmp block163438

block163438:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163436

block163436:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -128(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163434
       jmp block163435

block163434:
       jmp block163432

block163432:
       jmp block163430

block163430:
       movq   $0, %rdx
       jmp block163429

block163435:
       jmp block163433

block163433:
       jmp block163431

block163431:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163429

block163429:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -136(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163427
       jmp block163428

block163428:
       jmp block163426

block163426:
       jmp block163424

block163424:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163422

block163427:
       jmp block163425

block163425:
       jmp block163423

block163423:
       movq   $0, %rdx
       jmp block163422

block163422:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -144(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163420
       jmp block163421

block163421:
       jmp block163419

block163419:
       jmp block163417

block163417:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163415

block163420:
       jmp block163418

block163418:
       jmp block163416

block163416:
       movq   $0, %rdx
       jmp block163415

block163415:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -152(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163413
       jmp block163414

block163413:
       jmp block163411

block163411:
       jmp block163409

block163409:
       movq   $0, %rdx
       jmp block163408

block163414:
       jmp block163412

block163412:
       jmp block163410

block163410:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163408

block163408:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -160(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163406
       jmp block163407

block163406:
       jmp block163404

block163404:
       jmp block163402

block163402:
       movq   $0, %rdx
       jmp block163401

block163407:
       jmp block163405

block163405:
       jmp block163403

block163403:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163401

block163401:
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
       movq   -16(%r15), %r11
       movq   8(%r11), %rsi
       movq   -24(%r15), %r11
       movq   8(%r11), %rdi
       movq   -32(%r15), %r11
       movq   8(%r11), %r8
       movq   -40(%r15), %r11
       movq   8(%r11), %r9
       movq   -48(%r15), %r11
       movq   8(%r11), %r10
       movq   -56(%r15), %r11
       movq   8(%r11), %rbx
       movq   -64(%r15), %r11
       movq   8(%r11), %r12
       movq   -72(%r15), %r11
       movq   8(%r11), %r13
       movq   -80(%r15), %r11
       movq   8(%r11), %r14
       movq   -88(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -8(%rbp)
       movq   -96(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -16(%rbp)
       movq   -104(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -24(%rbp)
       movq   -112(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -32(%rbp)
       movq   -120(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -40(%rbp)
       movq   -128(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -48(%rbp)
       movq   -136(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -56(%rbp)
       movq   -144(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -64(%rbp)
       movq   -152(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -72(%rbp)
       movq   -160(%r15), %r11
       movq   8(%r11), %rax
       movq   %rax, -80(%rbp)
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %rdx
       addq   $21, %rdx
       movq   -80(%rbp), %rax
       movq   %rax, -80(%rbp)
       addq   %rdx, -80(%rbp)
       movq   -72(%rbp), %rdx
       addq   -80(%rbp), %rdx
       movq   -64(%rbp), %rax
       movq   %rax, -64(%rbp)
       addq   %rdx, -64(%rbp)
       movq   -56(%rbp), %rdx
       addq   -64(%rbp), %rdx
       movq   -48(%rbp), %rax
       movq   %rax, -48(%rbp)
       addq   %rdx, -48(%rbp)
       movq   -40(%rbp), %rdx
       addq   -48(%rbp), %rdx
       movq   -32(%rbp), %rax
       movq   %rax, -48(%rbp)
       addq   %rdx, -48(%rbp)
       movq   -24(%rbp), %rdx
       addq   -48(%rbp), %rdx
       movq   -16(%rbp), %rax
       movq   %rax, -16(%rbp)
       addq   %rdx, -16(%rbp)
       movq   -8(%rbp), %rdx
       addq   -16(%rbp), %rdx
       movq   %r14, %r14
       addq   %rdx, %r14
       movq   %r13, %rdx
       addq   %r14, %rdx
       movq   %r12, %r12
       addq   %rdx, %r12
       movq   %rbx, %rdx
       addq   %r12, %rdx
       movq   %r10, %r10
       addq   %rdx, %r10
       movq   %r9, %rdx
       addq   %r10, %rdx
       movq   %r8, %r8
       addq   %rdx, %r8
       movq   %rdi, %rdx
       addq   %r8, %rdx
       movq   %rsi, %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rax
       addq   %rsi, %rax
       jmp conclusion



.globl main
main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $80, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $160, %r15
       jmp start
conclusion:
       subq   $160, %r15
       addq   $80, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
