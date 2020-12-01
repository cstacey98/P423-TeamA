start:
       movq   $0, -264(%rbp)
       movq   $1, -272(%rbp)
       movq   $2, -288(%rbp)
       movq   $3, -248(%rbp)
       movq   $4, -48(%rbp)
       movq   $5, -136(%rbp)
       movq   $6, -32(%rbp)
       movq   $7, %r12
       movq   $8, -96(%rbp)
       movq   $9, -224(%rbp)
       movq   $10, -128(%rbp)
       movq   $11, -320(%rbp)
       movq   $12, -88(%rbp)
       movq   $13, -280(%rbp)
       movq   $14, -64(%rbp)
       movq   $15, -216(%rbp)
       movq   $16, %rbx
       movq   $17, -16(%rbp)
       movq   $18, -312(%rbp)
       movq   $19, -232(%rbp)
       movq   $20, -200(%rbp)
       movq   $21, -368(%rbp)
       movq   $22, -160(%rbp)
       movq   $23, -168(%rbp)
       movq   $24, %r14
       movq   $25, -40(%rbp)
       movq   $26, -304(%rbp)
       movq   $27, -104(%rbp)
       movq   $28, -240(%rbp)
       movq   $29, -184(%rbp)
       movq   $30, -152(%rbp)
       movq   $31, -360(%rbp)
       movq   $32, -296(%rbp)
       movq   $33, -144(%rbp)
       movq   $34, -120(%rbp)
       movq   $35, -328(%rbp)
       movq   $36, -208(%rbp)
       movq   $37, -80(%rbp)
       movq   $38, -336(%rbp)
       movq   $39, -24(%rbp)
       movq   $40, -8(%rbp)
       movq   $41, -112(%rbp)
       movq   $42, -72(%rbp)
       movq   $43, %r13
       movq   $44, -176(%rbp)
       movq   $45, -256(%rbp)
       movq   $46, -56(%rbp)
       movq   $47, -352(%rbp)
       movq   $48, -192(%rbp)
       movq   $49, -344(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $408, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165961
       jmp block165962

block165961:
       jmp block165959

block165959:
       jmp block165957

block165957:
       movq   $0, %rdx
       jmp block165956

block165962:
       jmp block165960

block165960:
       jmp block165958

block165958:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq collect
       jmp block165956

block165956:
       movq   free_ptr(%rip), %rdx
       addq   $408, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $101, 0(%r11)
       movq   %rdx, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 136(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -368(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 200(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -360(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -328(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -336(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 352(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -352(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -344(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   344(%r11), %rax
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
