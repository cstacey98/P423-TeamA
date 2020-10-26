start:
       movq   $0, -280(%rbp)
       movq   $1, -24(%rbp)
       movq   $2, -352(%rbp)
       movq   $3, -32(%rbp)
       movq   $4, -16(%rbp)
       movq   $5, -304(%rbp)
       movq   $6, -296(%rbp)
       movq   $7, -8(%rbp)
       movq   $8, %r13
       movq   $9, -368(%rbp)
       movq   $10, -312(%rbp)
       movq   $11, -88(%rbp)
       movq   $12, -344(%rbp)
       movq   $13, -264(%rbp)
       movq   $14, -240(%rbp)
       movq   $15, -152(%rbp)
       movq   $16, -168(%rbp)
       movq   $17, -40(%rbp)
       movq   $18, -328(%rbp)
       movq   $19, %rbx
       movq   $20, %r14
       movq   $21, -360(%rbp)
       movq   $22, -224(%rbp)
       movq   $23, -48(%rbp)
       movq   $24, -176(%rbp)
       movq   $25, -336(%rbp)
       movq   $26, -288(%rbp)
       movq   $27, -200(%rbp)
       movq   $28, -96(%rbp)
       movq   $29, -216(%rbp)
       movq   $30, -80(%rbp)
       movq   $31, -192(%rbp)
       movq   $32, -272(%rbp)
       movq   $33, -56(%rbp)
       movq   $34, -64(%rbp)
       movq   $35, -72(%rbp)
       movq   $36, -160(%rbp)
       movq   $37, -256(%rbp)
       movq   $38, -112(%rbp)
       movq   $39, -208(%rbp)
       movq   $40, -144(%rbp)
       movq   $41, -248(%rbp)
       movq   $42, -120(%rbp)
       movq   $43, -320(%rbp)
       movq   $44, -232(%rbp)
       movq   $45, -104(%rbp)
       movq   $46, -136(%rbp)
       movq   $47, %r12
       movq   $48, -184(%rbp)
       movq   $49, -128(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $408, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165818
       jmp block165819

block165818:
       jmp block165816

block165816:
       jmp block165814

block165814:
       movq   $0, %rdx
       jmp block165813

block165819:
       jmp block165817

block165817:
       jmp block165815

block165815:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq collect
       jmp block165813

block165813:
       movq   free_ptr(%rip), %rdx
       addq   $408, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $101, 0(%r11)
       movq   %rdx, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -352(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -368(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -344(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -328(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 160(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 168(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -360(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -336(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 384(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $0, -80(%rbp)
       movq   $1, -224(%rbp)
       movq   $2, -216(%rbp)
       movq   $3, -96(%rbp)
       movq   $4, -144(%rbp)
       movq   $5, -120(%rbp)
       movq   $6, -152(%rbp)
       movq   $7, -288(%rbp)
       movq   $8, -296(%rbp)
       movq   $9, -136(%rbp)
       movq   $10, -304(%rbp)
       movq   $11, -176(%rbp)
       movq   $12, -192(%rbp)
       movq   $13, -24(%rbp)
       movq   $14, -64(%rbp)
       movq   $15, -40(%rbp)
       movq   $16, -256(%rbp)
       movq   $17, -272(%rbp)
       movq   $18, -208(%rbp)
       movq   $19, -112(%rbp)
       movq   $20, -320(%rbp)
       movq   $21, -344(%rbp)
       movq   $22, -264(%rbp)
       movq   $23, -280(%rbp)
       movq   $24, -336(%rbp)
       movq   $25, -184(%rbp)
       movq   $26, -104(%rbp)
       movq   $27, -232(%rbp)
       movq   $28, %r14
       movq   $29, %rbx
       movq   $30, %r12
       movq   $31, -48(%rbp)
       movq   $32, -328(%rbp)
       movq   $33, -248(%rbp)
       movq   $34, -72(%rbp)
       movq   $35, -160(%rbp)
       movq   $36, -240(%rbp)
       movq   $37, -368(%rbp)
       movq   $38, -352(%rbp)
       movq   $39, -200(%rbp)
       movq   $40, -360(%rbp)
       movq   $41, -376(%rbp)
       movq   $42, -128(%rbp)
       movq   $43, -312(%rbp)
       movq   $44, -32(%rbp)
       movq   $45, -56(%rbp)
       movq   $46, -16(%rbp)
       movq   $47, %r13
       movq   $48, -88(%rbp)
       movq   $49, -168(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $408, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165811
       jmp block165812

block165811:
       jmp block165809

block165809:
       jmp block165807

block165807:
       movq   $0, %rdx
       jmp block165806

block165812:
       jmp block165810

block165810:
       jmp block165808

block165808:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq collect
       jmp block165806

block165806:
       movq   free_ptr(%rip), %rdx
       addq   $408, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $101, 0(%r11)
       movq   %rdx, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -344(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -336(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 232(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 240(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 248(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -328(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -368(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -352(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -360(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -376(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 384(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $0, -160(%rbp)
       movq   $1, -240(%rbp)
       movq   $2, -320(%rbp)
       movq   $3, -144(%rbp)
       movq   $4, -88(%rbp)
       movq   $5, -360(%rbp)
       movq   $6, -312(%rbp)
       movq   $7, -128(%rbp)
       movq   $8, -264(%rbp)
       movq   $9, -64(%rbp)
       movq   $10, -32(%rbp)
       movq   $11, -112(%rbp)
       movq   $12, -328(%rbp)
       movq   $13, %r13
       movq   $14, -16(%rbp)
       movq   $15, -56(%rbp)
       movq   $16, -72(%rbp)
       movq   $17, -368(%rbp)
       movq   $18, -296(%rbp)
       movq   $19, -232(%rbp)
       movq   $20, -176(%rbp)
       movq   $21, -96(%rbp)
       movq   $22, -248(%rbp)
       movq   $23, -200(%rbp)
       movq   $24, -152(%rbp)
       movq   $25, -272(%rbp)
       movq   $26, -256(%rbp)
       movq   $27, -192(%rbp)
       movq   $28, -120(%rbp)
       movq   $29, -48(%rbp)
       movq   $30, %r12
       movq   $31, -80(%rbp)
       movq   $32, -40(%rbp)
       movq   $33, -184(%rbp)
       movq   $34, -136(%rbp)
       movq   $35, -376(%rbp)
       movq   $36, -304(%rbp)
       movq   $37, -352(%rbp)
       movq   $38, -208(%rbp)
       movq   $39, -280(%rbp)
       movq   $40, -344(%rbp)
       movq   $41, -288(%rbp)
       movq   $42, -104(%rbp)
       movq   $43, -336(%rbp)
       movq   $44, -24(%rbp)
       movq   $45, -224(%rbp)
       movq   $46, %rbx
       movq   $47, %r14
       movq   $48, -216(%rbp)
       movq   $49, -168(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $408, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165804
       jmp block165805

block165805:
       jmp block165803

block165803:
       jmp block165801

block165801:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq collect
       jmp block165799

block165804:
       jmp block165802

block165802:
       jmp block165800

block165800:
       movq   $0, %rdx
       jmp block165799

block165799:
       movq   free_ptr(%rip), %rdx
       addq   $408, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $101, 0(%r11)
       movq   %rdx, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -360(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -328(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -368(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 248(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -376(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -352(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -344(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -336(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 376(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 384(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -24(%r15), %r11
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
