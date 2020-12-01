_main1616start:
       movq   $0, -8(%rbp)
       movq   $1, -16(%rbp)
       movq   $2, -24(%rbp)
       movq   $3, -32(%rbp)
       movq   $4, %r14
       movq   $5, %r13
       movq   $6, -40(%rbp)
       movq   $7, -48(%rbp)
       movq   $8, -56(%rbp)
       movq   $9, -64(%rbp)
       movq   $10, -72(%rbp)
       movq   $11, -80(%rbp)
       movq   $12, -88(%rbp)
       movq   $13, -96(%rbp)
       movq   $14, -104(%rbp)
       movq   $15, -112(%rbp)
       movq   $16, -120(%rbp)
       movq   $17, -128(%rbp)
       movq   $18, -136(%rbp)
       movq   $19, -144(%rbp)
       movq   $20, -152(%rbp)
       movq   $21, -160(%rbp)
       movq   $22, -168(%rbp)
       movq   $23, -176(%rbp)
       movq   $24, -184(%rbp)
       movq   $25, -192(%rbp)
       movq   $26, -200(%rbp)
       movq   $27, -208(%rbp)
       movq   $28, -216(%rbp)
       movq   $29, -224(%rbp)
       movq   $30, -232(%rbp)
       movq   $31, -240(%rbp)
       movq   $32, %rbx
       movq   $33, -248(%rbp)
       movq   $34, -256(%rbp)
       movq   $35, -264(%rbp)
       movq   $36, %r12
       movq   $37, -272(%rbp)
       movq   $38, -280(%rbp)
       movq   $39, -288(%rbp)
       movq   $40, -296(%rbp)
       movq   $41, -304(%rbp)
       movq   $42, -312(%rbp)
       movq   $43, -320(%rbp)
       movq   $44, -328(%rbp)
       movq   $45, -336(%rbp)
       movq   $46, -344(%rbp)
       movq   $47, -352(%rbp)
       movq   $48, -360(%rbp)
       movq   $49, -368(%rbp)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $408, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1616block1728
       jmp _main1616block1729

_main1616block1729:
       jmp _main1616block1727

_main1616block1727:
       jmp _main1616block1725

_main1616block1728:
       jmp _main1616block1726

_main1616block1726:
       jmp _main1616block1724

_main1616block1724:
       movq   $0, %rdx
       jmp _main1616block1723

_main1616block1725:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _main1616block1723

_main1616block1723:
       movq   _free_ptr(%rip), %rdx
       addq   $408, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $101, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 264(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 296(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -328(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -336(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -344(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -352(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -360(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -368(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   344(%r11), %rax
       jmp _main1616conclusion



.globl _main
.align 16
_main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $368, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       addq   $0, %r15
       jmp _main1616start
_main1616conclusion:
       subq   $0, %r15
       addq   $368, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

