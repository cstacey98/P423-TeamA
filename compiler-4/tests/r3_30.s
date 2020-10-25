_start:
       movq   $0, %rcx
       movq   $1, -8(%rbp)
       movq   $2, -16(%rbp)
       movq   $3, -24(%rbp)
       movq   $4, -32(%rbp)
       movq   $5, -40(%rbp)
       movq   $6, -48(%rbp)
       movq   $7, -56(%rbp)
       movq   $8, -64(%rbp)
       movq   $9, -72(%rbp)
       movq   $10, -80(%rbp)
       movq   $11, %r8
       movq   $12, -88(%rbp)
       movq   $13, %r9
       movq   $14, -96(%rbp)
       movq   $15, %rsi
       movq   $16, -104(%rbp)
       movq   $17, %rdx
       movq   $18, -112(%rbp)
       movq   $19, %r12
       movq   $20, -120(%rbp)
       movq   $21, %rbx
       movq   $22, -128(%rbp)
       movq   $23, %r11
       movq   $24, -136(%rbp)
       movq   $25, %r10
       movq   $26, -144(%rbp)
       movq   $27, -152(%rbp)
       movq   $28, -160(%rbp)
       movq   $29, -168(%rbp)
       movq   $30, %r14
       movq   $31, -176(%rbp)
       movq   $32, -184(%rbp)
       movq   $33, -192(%rbp)
       movq   $34, -200(%rbp)
       movq   $35, -208(%rbp)
       movq   $36, -216(%rbp)
       movq   $37, -224(%rbp)
       movq   $38, %rdi
       movq   $39, -232(%rbp)
       movq   $40, -240(%rbp)
       movq   $41, -248(%rbp)
       movq   $42, -256(%rbp)
       movq   $43, -264(%rbp)
       movq   $44, -272(%rbp)
       movq   $45, -280(%rbp)
       movq   $46, -288(%rbp)
       movq   $47, -296(%rbp)
       movq   $48, -304(%rbp)
       movq   $49, %r13
       movq   free_ptr(%rip), -312(%rbp)
       movq   -312(%rbp), %rax
       movq   %rax, -320(%rbp)
       addq   $408, -320(%rbp)
       movq   fromspace_end(%rip), -312(%rbp)
       movq   -312(%rbp), %rax
       cmpq   %rax, -320(%rbp)
       jl _block270368
       jmp _block270369

_block270368:
       jmp _block270366

_block270366:
       jmp _block270364

_block270364:
       movq   $0, -312(%rbp)
       jmp _block270363

_block270369:
       jmp _block270367

_block270367:
       jmp _block270365

_block270365:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block270363

_block270363:
       movq   free_ptr(%rip), -8(%r15)
       addq   $408, free_ptr(%rip)
       movq   -8(%r15), %r11
       movq   $101, 0(%r11)
       movq   -8(%r15), %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -8(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -16(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -24(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -32(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -40(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -48(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -56(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -64(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -72(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -80(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %r8, 96(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -88(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %r9, 112(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -96(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -104(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %rdx, 144(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -112(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r12, 160(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -120(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %rbx, 176(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -128(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r11, 192(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -136(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r10, 208(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -144(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -152(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -160(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -168(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r14, 248(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -176(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -184(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -192(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -200(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -208(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -216(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -224(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %rdi, 312(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -232(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -240(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -248(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -256(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -264(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -272(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -280(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -288(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -296(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -304(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r13, 400(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r10
       movq   $0, %rdx
       movq   $1, -24(%rbp)
       movq   $2, -320(%rbp)
       movq   $3, -8(%rbp)
       movq   $4, -16(%rbp)
       movq   $5, -40(%rbp)
       movq   $6, -56(%rbp)
       movq   $7, -32(%rbp)
       movq   $8, -216(%rbp)
       movq   $9, -224(%rbp)
       movq   $10, -48(%rbp)
       movq   $11, -192(%rbp)
       movq   $12, -72(%rbp)
       movq   $13, -208(%rbp)
       movq   $14, -200(%rbp)
       movq   $15, -184(%rbp)
       movq   $16, -272(%rbp)
       movq   $17, -96(%rbp)
       movq   $18, -312(%rbp)
       movq   $19, -112(%rbp)
       movq   $20, -256(%rbp)
       movq   $21, -248(%rbp)
       movq   $22, -232(%rbp)
       movq   $23, -120(%rbp)
       movq   $24, -64(%rbp)
       movq   $25, -280(%rbp)
       movq   $26, -240(%rbp)
       movq   $27, -288(%rbp)
       movq   $28, -80(%rbp)
       movq   $29, -264(%rbp)
       movq   $30, -160(%rbp)
       movq   $31, -104(%rbp)
       movq   $32, -88(%rbp)
       movq   $33, -296(%rbp)
       movq   $34, %r14
       movq   $35, -168(%rbp)
       movq   $36, -176(%rbp)
       movq   $37, -304(%rbp)
       movq   $38, %r12
       movq   $39, -152(%rbp)
       movq   $40, %r13
       movq   $41, -128(%rbp)
       movq   $42, %r11
       movq   $43, -136(%rbp)
       movq   $44, %rbx
       movq   $45, -144(%rbp)
       movq   $46, %rdi
       movq   $47, %rcx
       movq   $48, %r8
       movq   $49, %rsi
       movq   free_ptr(%rip), %r9
       movq   %r9, -328(%rbp)
       addq   $408, -328(%rbp)
       movq   fromspace_end(%rip), %r9
       cmpq   %r9, -328(%rbp)
       jl _block270361
       jmp _block270362

_block270361:
       jmp _block270359

_block270359:
       jmp _block270357

_block270357:
       movq   $0, %r9
       jmp _block270356

_block270362:
       jmp _block270360

_block270360:
       jmp _block270358

_block270358:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block270356

_block270356:
       movq   free_ptr(%rip), %r9
       addq   $408, free_ptr(%rip)
       movq   %r9, %r11
       movq   $101, 0(%r11)
       movq   %r9, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r14, 280(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r12, 312(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r13, 328(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r11, 344(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rbx, 360(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rdi, 376(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rcx, 384(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %r8, 392(%r11)
       movq   $0, %rdx
       movq   %r9, %r11
       movq   %rsi, 400(%r11)
       movq   $0, %rdx
       movq   %r9, %rdx
       movq   $0, %rdx
       movq   $1, -128(%rbp)
       movq   $2, -216(%rbp)
       movq   $3, -280(%rbp)
       movq   $4, -176(%rbp)
       movq   $5, -120(%rbp)
       movq   $6, -200(%rbp)
       movq   $7, -248(%rbp)
       movq   $8, -144(%rbp)
       movq   $9, -232(%rbp)
       movq   $10, -64(%rbp)
       movq   $11, -312(%rbp)
       movq   $12, -136(%rbp)
       movq   $13, -8(%rbp)
       movq   $14, -160(%rbp)
       movq   $15, -72(%rbp)
       movq   $16, -192(%rbp)
       movq   $17, -56(%rbp)
       movq   $18, -272(%rbp)
       movq   $19, -288(%rbp)
       movq   $20, -264(%rbp)
       movq   $21, -104(%rbp)
       movq   $22, -112(%rbp)
       movq   $23, -96(%rbp)
       movq   $24, %r11
       movq   $25, -184(%rbp)
       movq   $26, -168(%rbp)
       movq   $27, -40(%rbp)
       movq   $28, %rcx
       movq   $29, %r8
       movq   $30, %rdi
       movq   $31, %r9
       movq   $32, -88(%rbp)
       movq   $33, %r12
       movq   $34, -240(%rbp)
       movq   $35, -208(%rbp)
       movq   $36, -304(%rbp)
       movq   $37, -224(%rbp)
       movq   $38, %r14
       movq   $39, -32(%rbp)
       movq   $40, -48(%rbp)
       movq   $41, -152(%rbp)
       movq   $42, -80(%rbp)
       movq   $43, %r13
       movq   $44, -296(%rbp)
       movq   $45, %rsi
       movq   $46, %rbx
       movq   $47, -24(%rbp)
       movq   $48, -320(%rbp)
       movq   $49, -16(%rbp)
       movq   free_ptr(%rip), -256(%rbp)
       movq   -256(%rbp), %rax
       movq   %rax, -256(%rbp)
       addq   $408, -256(%rbp)
       movq   fromspace_end(%rip), -328(%rbp)
       movq   -328(%rbp), %rax
       cmpq   %rax, -256(%rbp)
       jl _block270354
       jmp _block270355

_block270355:
       jmp _block270353

_block270353:
       jmp _block270351

_block270351:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block270349

_block270354:
       jmp _block270352

_block270352:
       jmp _block270350

_block270350:
       movq   $0, -256(%rbp)
       jmp _block270349

_block270349:
       movq   free_ptr(%rip), -16(%r15)
       addq   $408, free_ptr(%rip)
       movq   -16(%r15), %r11
       movq   $101, 0(%r11)
       movq   -16(%r15), %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -128(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -216(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -280(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -176(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -120(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -200(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -248(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -144(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -232(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -64(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -312(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -136(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -8(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -160(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -72(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -192(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -56(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -272(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -288(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -264(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -104(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -112(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -96(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %r11, 200(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -184(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -168(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -40(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %rcx, 232(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %r8, 240(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %rdi, 248(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %r9, 256(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -88(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %r12, 272(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -240(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -208(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -304(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -224(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %r14, 312(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -32(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -48(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -152(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -80(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %r13, 352(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -296(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %rsi, 368(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   %rbx, 376(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -24(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -320(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %r11
       movq   -16(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   -16(%r15), %rdx
       movq   %r10, %r11
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
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _start
_conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
