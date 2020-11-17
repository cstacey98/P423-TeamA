start:
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165479
       jmp block165480

block165480:
       jmp block165478

block165478:
       jmp block165476

block165476:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq collect
       jmp block165474

block165479:
       jmp block165477

block165477:
       jmp block165475

block165475:
       movq   $0, %rdx
       jmp block165474

block165474:
       movq   free_ptr(%rip), %rdx
       addq   $8, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, -24(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165472
       jmp block165473

block165473:
       jmp block165471

block165471:
       jmp block165469

block165469:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block165467

block165472:
       jmp block165470

block165470:
       jmp block165468

block165468:
       movq   $0, %rdx
       jmp block165467

block165467:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, -112(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -56(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165465
       jmp block165466

block165466:
       jmp block165464

block165464:
       jmp block165462

block165462:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp block165460

block165465:
       jmp block165463

block165463:
       jmp block165461

block165461:
       movq   $0, %rdx
       jmp block165460

block165460:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $647, 0(%r11)
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, -96(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -128(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165458
       jmp block165459

block165458:
       jmp block165456

block165456:
       jmp block165454

block165454:
       movq   $0, %rdx
       jmp block165453

block165459:
       jmp block165457

block165457:
       jmp block165455

block165455:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp block165453

block165453:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1417, 0(%r11)
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, -128(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165451
       jmp block165452

block165451:
       jmp block165449

block165449:
       jmp block165447

block165447:
       movq   $0, %rdx
       jmp block165446

block165452:
       jmp block165450

block165450:
       jmp block165448

block165448:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block165446

block165446:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $2955, 0(%r11)
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $56, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165444
       jmp block165445

block165445:
       jmp block165443

block165443:
       jmp block165441

block165441:
       movq   %r15, %rdi
       movq   $56, %rsi
       callq collect
       jmp block165439

block165444:
       jmp block165442

block165442:
       jmp block165440

block165440:
       movq   $0, %rdx
       jmp block165439

block165439:
       movq   free_ptr(%rip), %rdx
       addq   $56, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $6029, 0(%r11)
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, -80(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $64, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165437
       jmp block165438

block165438:
       jmp block165436

block165436:
       jmp block165434

block165434:
       movq   %r15, %rdi
       movq   $64, %rsi
       callq collect
       jmp block165432

block165437:
       jmp block165435

block165435:
       jmp block165433

block165433:
       movq   $0, %rdx
       jmp block165432

block165432:
       movq   free_ptr(%rip), %rdx
       addq   $64, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $12175, 0(%r11)
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       movq   -16(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -40(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165430
       jmp block165431

block165430:
       jmp block165428

block165428:
       jmp block165426

block165426:
       movq   $0, %rdx
       jmp block165425

block165431:
       jmp block165429

block165429:
       jmp block165427

block165427:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq collect
       jmp block165425

block165425:
       movq   free_ptr(%rip), %rdx
       addq   $72, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $24465, 0(%r11)
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, -40(%r15)
       movq   -40(%r15), %rax
       movq   %rax, -40(%r15)
       movq   -16(%r15), %rax
       movq   %rax, -16(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $80, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165423
       jmp block165424

block165424:
       jmp block165422

block165422:
       jmp block165420

block165420:
       movq   %r15, %rdi
       movq   $80, %rsi
       callq collect
       jmp block165418

block165423:
       jmp block165421

block165421:
       jmp block165419

block165419:
       movq   $0, %rdx
       jmp block165418

block165418:
       movq   free_ptr(%rip), %rdx
       addq   $80, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $49043, 0(%r11)
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, -72(%r15)
       movq   -72(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -40(%r15), %rax
       movq   %rax, -40(%r15)
       movq   -16(%r15), %rax
       movq   %rax, -16(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -80(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $88, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165416
       jmp block165417

block165416:
       jmp block165414

block165414:
       jmp block165412

block165412:
       movq   $0, %rdx
       jmp block165411

block165417:
       jmp block165415

block165415:
       jmp block165413

block165413:
       movq   %r15, %rdi
       movq   $88, %rsi
       callq collect
       jmp block165411

block165411:
       movq   free_ptr(%rip), %rdx
       addq   $88, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $98197, 0(%r11)
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, -160(%r15)
       movq   -160(%r15), %rax
       movq   %rax, -160(%r15)
       movq   -72(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -40(%r15), %rax
       movq   %rax, -40(%r15)
       movq   -16(%r15), %rax
       movq   %rax, -16(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -80(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $96, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165409
       jmp block165410

block165409:
       jmp block165407

block165407:
       jmp block165405

block165405:
       movq   $0, %rdx
       jmp block165404

block165410:
       jmp block165408

block165408:
       jmp block165406

block165406:
       movq   %r15, %rdi
       movq   $96, %rsi
       callq collect
       jmp block165404

block165404:
       movq   free_ptr(%rip), %rdx
       addq   $96, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $196503, 0(%r11)
       movq   %rdx, %r11
       movq   -160(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, -144(%r15)
       movq   -144(%r15), %rax
       movq   %rax, -144(%r15)
       movq   -160(%r15), %rax
       movq   %rax, -160(%r15)
       movq   -72(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -40(%r15), %rax
       movq   %rax, -40(%r15)
       movq   -16(%r15), %rax
       movq   %rax, -16(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -80(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $104, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165402
       jmp block165403

block165403:
       jmp block165401

block165401:
       jmp block165399

block165399:
       movq   %r15, %rdi
       movq   $104, %rsi
       callq collect
       jmp block165397

block165402:
       jmp block165400

block165400:
       jmp block165398

block165398:
       movq   $0, %rdx
       jmp block165397

block165397:
       movq   free_ptr(%rip), %rdx
       addq   $104, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $393113, 0(%r11)
       movq   %rdx, %r11
       movq   -144(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, -120(%r15)
       movq   -144(%r15), %rax
       movq   %rax, -144(%r15)
       movq   -160(%r15), %rax
       movq   %rax, -160(%r15)
       movq   -72(%r15), %rax
       movq   %rax, -72(%r15)
       movq   -40(%r15), %rax
       movq   %rax, -40(%r15)
       movq   -16(%r15), %rax
       movq   %rax, -16(%r15)
       movq   -80(%r15), %rax
       movq   %rax, -80(%r15)
       movq   -56(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -128(%r15), %rax
       movq   %rax, -128(%r15)
       movq   -96(%r15), %rax
       movq   %rax, -96(%r15)
       movq   -112(%r15), %rax
       movq   %rax, -112(%r15)
       movq   $42, %rbx
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $112, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165395
       jmp block165396

block165395:
       jmp block165393

block165393:
       jmp block165391

block165391:
       movq   $0, %rdx
       jmp block165390

block165396:
       jmp block165394

block165394:
       jmp block165392

block165392:
       movq   %r15, %rdi
       movq   $112, %rsi
       callq collect
       jmp block165390

block165390:
       movq   free_ptr(%rip), %rdx
       addq   $112, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $786331, 0(%r11)
       movq   %rdx, %r11
       movq   -120(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   96(%r11), %rax
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
       subq   $376, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $160, %r15
       jmp start
conclusion:
       subq   $160, %r15
       addq   $376, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
