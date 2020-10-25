_start:
       movq   $0, %rdx
       movq   $1, -56(%rbp)
       movq   $2, -40(%rbp)
       movq   $3, -224(%rbp)
       movq   $4, -8(%rbp)
       movq   $5, -72(%rbp)
       movq   $6, -24(%rbp)
       movq   $7, -32(%rbp)
       movq   $8, -16(%rbp)
       movq   $9, -48(%rbp)
       movq   $10, -304(%rbp)
       movq   $11, -312(%rbp)
       movq   $12, -256(%rbp)
       movq   $13, -240(%rbp)
       movq   $14, -248(%rbp)
       movq   $15, -120(%rbp)
       movq   $16, -104(%rbp)
       movq   $17, -264(%rbp)
       movq   $18, -184(%rbp)
       movq   $19, -64(%rbp)
       movq   $20, -216(%rbp)
       movq   $21, -200(%rbp)
       movq   $22, -296(%rbp)
       movq   $23, -160(%rbp)
       movq   $24, %rsi
       movq   $25, -88(%rbp)
       movq   $26, -272(%rbp)
       movq   $27, -152(%rbp)
       movq   $28, %r11
       movq   $29, -80(%rbp)
       movq   $30, -168(%rbp)
       movq   $31, %r14
       movq   $32, -176(%rbp)
       movq   $33, %r13
       movq   $34, %rbx
       movq   $35, %r10
       movq   $36, %rdi
       movq   $37, -208(%rbp)
       movq   $38, -96(%rbp)
       movq   $39, -280(%rbp)
       movq   $40, -112(%rbp)
       movq   $41, -192(%rbp)
       movq   $42, %r8
       movq   $43, %r12
       movq   $44, -136(%rbp)
       movq   $45, -128(%rbp)
       movq   $46, -144(%rbp)
       movq   $47, -232(%rbp)
       movq   $48, %rcx
       movq   $49, -288(%rbp)
       movq   free_ptr(%rip), %r9
       movq   %r9, %r9
       addq   $408, %r9
       movq   fromspace_end(%rip), -320(%rbp)
       cmpq   -320(%rbp), %r9
       jl _block270511
       jmp _block270512

_block270512:
       jmp _block270510

_block270510:
       jmp _block270508

_block270508:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block270506

_block270511:
       jmp _block270509

_block270509:
       jmp _block270507

_block270507:
       movq   $0, %r9
       jmp _block270506

_block270506:
       movq   free_ptr(%rip), %r9
       addq   $408, free_ptr(%rip)
       movq   %r9, %r11
       movq   $101, 0(%r11)
       movq   %r9, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rsi, 200(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r11, 232(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r14, 256(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r13, 272(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rbx, 280(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r10, 288(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rdi, 296(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r8, 344(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r12, 352(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rcx, 392(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   %r9, %rdx
       movq   %rdx, %r11
       movq   -344(%r11), %rax
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
