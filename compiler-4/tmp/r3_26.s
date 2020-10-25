_start:
       movq   $0, -216(%rbp)
       movq   $1, -312(%rbp)
       movq   $2, -200(%rbp)
       movq   $3, -96(%rbp)
       movq   $4, -272(%rbp)
       movq   $5, -144(%rbp)
       movq   $6, -304(%rbp)
       movq   $7, %rdi
       movq   $8, -160(%rbp)
       movq   $9, %r8
       movq   $10, -256(%rbp)
       movq   $11, %rdx
       movq   $12, -104(%rbp)
       movq   $13, %rsi
       movq   $14, -152(%rbp)
       movq   $15, %rbx
       movq   $16, -192(%rbp)
       movq   $17, %r12
       movq   $18, -64(%rbp)
       movq   $19, %r9
       movq   $20, -32(%rbp)
       movq   $21, %r10
       movq   $22, -232(%rbp)
       movq   $23, %r14
       movq   $24, -224(%rbp)
       movq   $25, -8(%rbp)
       movq   $26, -24(%rbp)
       movq   $27, -16(%rbp)
       movq   $28, -40(%rbp)
       movq   $29, %r13
       movq   $30, -80(%rbp)
       movq   $31, -72(%rbp)
       movq   $32, %rcx
       movq   $33, -184(%rbp)
       movq   $34, -176(%rbp)
       movq   $35, -128(%rbp)
       movq   $36, -280(%rbp)
       movq   $37, -168(%rbp)
       movq   $38, -240(%rbp)
       movq   $39, -208(%rbp)
       movq   $40, -296(%rbp)
       movq   $41, -264(%rbp)
       movq   $42, -120(%rbp)
       movq   $43, -248(%rbp)
       movq   $44, -136(%rbp)
       movq   $45, -112(%rbp)
       movq   $46, -88(%rbp)
       movq   $47, -288(%rbp)
       movq   $48, -48(%rbp)
       movq   $49, -56(%rbp)
       movq   _free_ptr(%rip), %r11
       movq   %r11, -320(%rbp)
       addq   $408, -320(%rbp)
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, -320(%rbp)
       jl _block183411
       jmp _block183412

_block183412:
       jmp _block183410

_block183410:
       jmp _block183408

_block183408:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block183406

_block183411:
       jmp _block183409

_block183409:
       jmp _block183407

_block183407:
       movq   $0, %r11
       jmp _block183406

_block183406:
       movq   _free_ptr(%rip), %r11
       addq   $408, _free_ptr(%rip)
       movq   %r11, %r11
       movq   $101, 0(%r11)
       movq   %r11, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, -216(%rbp)
       movq   %r11, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, -312(%rbp)
       movq   %r11, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, -312(%rbp)
       movq   %r11, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, -312(%rbp)
       movq   %r11, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, -312(%rbp)
       movq   %r11, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, -312(%rbp)
       movq   %r11, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, -304(%rbp)
       movq   %r11, %r11
       movq   %rdi, 64(%r11)
       movq   $0, %rdi
       movq   %r11, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rdi
       movq   %r11, %r11
       movq   %r8, 80(%r11)
       movq   $0, %rdi
       movq   %r11, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rdi
       movq   %r11, %r11
       movq   %rdx, 96(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %rbx, 128(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %r12, 144(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %r9, 160(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %r10, 176(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %r14, 192(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %r13, 240(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   %rcx, 264(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   %r11, -88(%r15)
       movq   $0, %rcx
       movq   $1, -320(%rbp)
       movq   $2, -280(%rbp)
       movq   $3, -32(%rbp)
       movq   $4, -216(%rbp)
       movq   $5, -80(%rbp)
       movq   $6, -312(%rbp)
       movq   $7, -48(%rbp)
       movq   $8, -96(%rbp)
       movq   $9, -72(%rbp)
       movq   $10, -160(%rbp)
       movq   $11, -40(%rbp)
       movq   $12, -176(%rbp)
       movq   $13, -8(%rbp)
       movq   $14, -304(%rbp)
       movq   $15, %r13
       movq   $16, -168(%rbp)
       movq   $17, %rbx
       movq   $18, -208(%rbp)
       movq   $19, %r10
       movq   $20, -152(%rbp)
       movq   $21, %r8
       movq   $22, -136(%rbp)
       movq   $23, %rsi
       movq   $24, -240(%rbp)
       movq   $25, %rdx
       movq   $26, -296(%rbp)
       movq   $27, %rdi
       movq   $28, -248(%rbp)
       movq   $29, %r9
       movq   $30, -120(%rbp)
       movq   $31, %r11
       movq   $32, -256(%rbp)
       movq   $33, %r12
       movq   $34, -232(%rbp)
       movq   $35, %r14
       movq   $36, -288(%rbp)
       movq   $37, -16(%rbp)
       movq   $38, -64(%rbp)
       movq   $39, -24(%rbp)
       movq   $40, -112(%rbp)
       movq   $41, -56(%rbp)
       movq   $42, -88(%rbp)
       movq   $43, -224(%rbp)
       movq   $44, -104(%rbp)
       movq   $45, -192(%rbp)
       movq   $46, -264(%rbp)
       movq   $47, -200(%rbp)
       movq   $48, -184(%rbp)
       movq   $49, -128(%rbp)
       movq   _free_ptr(%rip), -144(%rbp)
       movq   -144(%rbp), %rax
       movq   %rax, -144(%rbp)
       addq   $408, -144(%rbp)
       movq   _fromspace_end(%rip), -328(%rbp)
       movq   -328(%rbp), %rax
       cmpq   %rax, -144(%rbp)
       jl _block183404
       jmp _block183405

_block183405:
       jmp _block183403

_block183403:
       jmp _block183401

_block183401:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block183399

_block183404:
       jmp _block183402

_block183402:
       jmp _block183400

_block183400:
       movq   $0, -144(%rbp)
       jmp _block183399

_block183399:
       movq   _free_ptr(%rip), -96(%r15)
       addq   $408, _free_ptr(%rip)
       movq   -96(%r15), %r11
       movq   $101, 0(%r11)
       movq   -96(%r15), %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -320(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -280(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -32(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -216(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -80(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -312(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -48(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -96(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -72(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -160(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -40(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -176(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -8(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -304(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   %r13, 128(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -168(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   %rbx, 144(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -208(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   %r10, 160(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -152(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   %r8, 176(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -136(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   %rsi, 192(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   -240(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   -96(%r15), %r11
       movq   %rdx, 208(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -296(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   %rdi, 224(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -248(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   %r9, 240(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -120(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   %r11, 256(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -256(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   %r12, 272(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -232(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   %r14, 288(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -288(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -16(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -64(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -24(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -112(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -56(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -88(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -224(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -104(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -192(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -264(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -200(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -184(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %r11
       movq   -128(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   -96(%r15), %rdx
       movq   -88(%r15), %r11
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
       subq   $320, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $320, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
