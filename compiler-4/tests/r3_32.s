_start:
       movq   $42, %rdx
       movq   free_ptr(%rip), %rcx
       movq   %rcx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rsi
       cmpq   %rsi, %rcx
       jl _block270398
       jmp _block270399

_block270398:
       jmp _block270396

_block270396:
       jmp _block270394

_block270399:
       jmp _block270397

_block270397:
       jmp _block270395

_block270394:
       movq   $0, %rcx
       jmp _block270393

_block270395:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block270393

_block270393:
       movq   free_ptr(%rip), %rcx
       addq   $16, free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _block270391
       jmp _block270392

_block270391:
       jmp _block270389

_block270389:
       jmp _block270387

_block270387:
       movq   $0, %rdx
       jmp _block270386

_block270392:
       jmp _block270390

_block270390:
       jmp _block270388

_block270388:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block270386

_block270386:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
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
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $16, %r15
       jmp _start
_conclusion:
       subq   $16, %r15
       addq   $336, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
