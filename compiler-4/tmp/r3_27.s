_start:
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdx
       jl _block183542
       jmp _block183543

_block183542:
       jmp _block183540

_block183540:
       jmp _block183538

_block183538:
       movq   $0, %rdx
       jmp _block183537

_block183543:
       jmp _block183541

_block183541:
       jmp _block183539

_block183539:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block183537

_block183537:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %rcx
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdi
       addq   $24, %rdi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rdi
       jl _block183535
       jmp _block183536

_block183536:
       jmp _block183534

_block183534:
       jmp _block183532

_block183532:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block183530

_block183535:
       jmp _block183533

_block183533:
       jmp _block183531

_block183531:
       movq   $0, %rdx
       jmp _block183530

_block183530:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $389, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %rdi
       movq   %rdx, %rdx
       movq   %rdx, %r8
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %r9
       cmpq   %r9, %rcx
       jl _block183528
       jmp _block183529

_block183528:
       jmp _block183526

_block183526:
       jmp _block183524

_block183524:
       movq   $0, %rcx
       jmp _block183523

_block183529:
       jmp _block183527

_block183527:
       jmp _block183525

_block183525:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _block183523

_block183523:
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $1929, 0(%r11)
       movq   %rcx, %r11
       movq   %rdi, 8(%r11)
       movq   $0, %rdi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %r8, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %rsi
       movq   %rdx, %rdi
       movq   %rdx, %rbx
       movq   %rdx, %r11
       movq   %rdx, %rcx
       movq   %rdx, %r8
       movq   %rdx, %r9
       movq   %rdx, %r10
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r12
       addq   $72, %r12
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r12
       jl _block183521
       jmp _block183522

_block183521:
       jmp _block183519

_block183519:
       jmp _block183517

_block183517:
       movq   $0, %rdx
       jmp _block183516

_block183522:
       jmp _block183520

_block183520:
       jmp _block183518

_block183518:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _block183516

_block183516:
       movq   _free_ptr(%rip), %rdx
       addq   $72, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $32657, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %r11, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r8, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r9, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r10, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %rbx
       movq   %rdx, -80(%r15)
       movq   %rdx, -64(%r15)
       movq   %rdx, -8(%r15)
       movq   %rdx, -48(%r15)
       movq   %rdx, %r8
       movq   %rdx, -24(%r15)
       movq   %rdx, %rsi
       movq   %rdx, %rcx
       movq   %rdx, %r10
       movq   %rdx, %r9
       movq   %rdx, %r14
       movq   %rdx, %r12
       movq   %rdx, %r11
       movq   %rdx, %r13
       movq   %rdx, %rdi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -48(%rbp)
       addq   $136, -48(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -48(%rbp)
       jl _block183514
       jmp _block183515

_block183515:
       jmp _block183513

_block183513:
       jmp _block183511

_block183511:
       movq   %r15, %rdi
       movq   $136, %rsi
       callq _collect
       jmp _block183509

_block183514:
       jmp _block183512

_block183512:
       jmp _block183510

_block183510:
       movq   $0, %rdx
       jmp _block183509

_block183509:
       movq   _free_ptr(%rip), %rdx
       addq   $136, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $8388513, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   -80(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   -64(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   -48(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rbx
       movq   %rdx, %r11
       movq   %r8, 48(%r11)
       movq   $0, %r8
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %r8
       movq   %rdx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r10, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r9, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r11, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rdi, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   -40(%r11), %rdx
       movq   %rdx, %r11
       movq   -32(%r11), %rdx
       movq   %rdx, %r11
       movq   -24(%r11), %rdx
       movq   %rdx, %r11
       movq   -16(%r11), %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rax
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
       subq   $336, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $96, %r15
       jmp _start
_conclusion:
       subq   $96, %r15
       addq   $336, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
