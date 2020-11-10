_main354293start:
       movq   $0, %rdx
       movq   $1, %rcx
       movq   $2, %rcx
       movq   $3, %rcx
       movq   $4, %rcx
       movq   $5, %rcx
       movq   $6, %rcx
       movq   $7, %rcx
       movq   $8, %rcx
       movq   $9, %rcx
       movq   $10, %rcx
       movq   $11, %rcx
       movq   $12, %rcx
       movq   $13, %rcx
       movq   $14, %rcx
       movq   $15, %rcx
       movq   $16, %rcx
       movq   $17, %rcx
       movq   $18, %rcx
       movq   $19, %rcx
       movq   $20, %rcx
       movq   $21, %rcx
       movq   $22, %rcx
       movq   $23, %rcx
       movq   $24, %rcx
       movq   $25, %rcx
       movq   $26, %rcx
       movq   $27, %rcx
       movq   $28, %rcx
       movq   $29, %rcx
       movq   $30, %rcx
       movq   $31, %rcx
       movq   $32, %rcx
       movq   $33, %rcx
       movq   $34, %rcx
       movq   $35, %rcx
       movq   $36, %rcx
       movq   $37, %rcx
       movq   $38, %rcx
       movq   $39, %rcx
       movq   $40, %rcx
       movq   $41, %rcx
       movq   $42, %rcx
       movq   $43, %rcx
       movq   $44, %rcx
       movq   $45, %rcx
       movq   $46, %rcx
       movq   $47, %rcx
       movq   $48, %rcx
       movq   $49, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $408, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354293block354405
       jmp _main354293block354406

_main354293block354405:
       jmp _main354293block354403

_main354293block354403:
       jmp _main354293block354401

_main354293block354401:
       movq   $0, %rdx
       jmp _main354293block354400

_main354293block354406:
       jmp _main354293block354404

_main354293block354404:
       jmp _main354293block354402

_main354293block354402:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _main354293block354400

_main354293block354400:
       movq   _free_ptr(%rip), %rsi
       addq   $408, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $101, 0(%r11)
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
       movq   %rsi, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 72(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 80(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 88(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 96(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 104(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 112(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 120(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 128(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 136(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 144(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 152(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 160(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 168(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 176(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 184(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 192(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 200(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 208(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 216(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 224(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 232(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 240(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 248(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 256(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 264(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 272(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 280(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 288(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 296(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 304(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 312(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 320(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 328(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 336(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 344(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 352(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 360(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 368(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 376(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 384(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 392(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 400(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %r11
       movq   344(%r11), %rax
       jmp _main354293conclusion



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
       jmp _main354293start
_main354293conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

