_start:
       movq   $4, %rcx
       movq   $2, %r8
       movq   $6, %rdi
       movq   $1, %rdx
       movq   $42, %r9
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $24, %rsi
       movq   _fromspace_end(%rip), %r10
       cmpq   %r10, %rsi
       jl _block182413
       jmp _block182414

_block182413:
       jmp _block182411

_block182411:
       jmp _block182409

_block182409:
       movq   $0, %rsi
       jmp _block182408

_block182414:
       jmp _block182412

_block182412:
       jmp _block182410

_block182410:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182408

_block182408:
       movq   _free_ptr(%rip), %rsi
       addq   $24, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $5, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r9, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %rsi
       movq   $3, %rdx
       movq   _free_ptr(%rip), %r9
       movq   %r9, %r9
       addq   $16, %r9
       movq   _fromspace_end(%rip), %r10
       cmpq   %r10, %r9
       jl _block182406
       jmp _block182407

_block182406:
       jmp _block182404

_block182404:
       jmp _block182402

_block182402:
       movq   $0, %r9
       jmp _block182401

_block182407:
       jmp _block182405

_block182405:
       jmp _block182403

_block182403:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182401

_block182401:
       movq   _free_ptr(%rip), %r9
       addq   $16, _free_ptr(%rip)
       movq   %r9, %r11
       movq   $3, 0(%r11)
       movq   %r9, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %r9, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r10
       addq   $24, %r10
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r10
       jl _block182399
       jmp _block182400

_block182400:
       jmp _block182398

_block182398:
       jmp _block182396

_block182396:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182394

_block182399:
       jmp _block182397

_block182397:
       jmp _block182395

_block182395:
       movq   $0, %rdx
       jmp _block182394

_block182394:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $389, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r9
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $24, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182392
       jmp _block182393

_block182393:
       jmp _block182391

_block182391:
       jmp _block182389

_block182389:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182387

_block182392:
       jmp _block182390

_block182390:
       jmp _block182388

_block182388:
       movq   $0, %rdx
       jmp _block182387

_block182387:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r9, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rdx
       jl _block182385
       jmp _block182386

_block182386:
       jmp _block182384

_block182384:
       jmp _block182382

_block182382:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182380

_block182385:
       jmp _block182383

_block182383:
       jmp _block182381

_block182381:
       movq   $0, %rdx
       jmp _block182380

_block182380:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %r8, 8(%r11)
       movq   $0, %rdi
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $24, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block182378
       jmp _block182379

_block182379:
       jmp _block182377

_block182377:
       jmp _block182375

_block182375:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block182373

_block182378:
       jmp _block182376

_block182376:
       jmp _block182374

_block182374:
       movq   $0, %rdx
       jmp _block182373

_block182373:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   -16(%r11), %rdx
       movq   %rdx, %r11
       movq   -16(%r11), %rdx
       movq   %rdx, %r11
       movq   -16(%r11), %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
       movq   %rdx, %r11
       movq   -16(%r11), %rax
       jmp _conclusion



.globl _main
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $96, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $96, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
