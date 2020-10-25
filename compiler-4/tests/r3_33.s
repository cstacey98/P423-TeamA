_start:
       movq   $0, -32(%rbp)
       movq   $1, %rdx
       movq   $2, -80(%rbp)
       movq   $3, -40(%rbp)
       movq   $4, -24(%rbp)
       movq   $5, -16(%rbp)
       movq   $6, -120(%rbp)
       movq   $7, -184(%rbp)
       movq   $8, -56(%rbp)
       movq   $9, -288(%rbp)
       movq   $10, -136(%rbp)
       movq   $11, -256(%rbp)
       movq   $12, -128(%rbp)
       movq   $13, -248(%rbp)
       movq   $14, -8(%rbp)
       movq   $15, -96(%rbp)
       movq   $16, -72(%rbp)
       movq   $17, -112(%rbp)
       movq   $18, -88(%rbp)
       movq   $19, -48(%rbp)
       movq   $20, -280(%rbp)
       movq   $21, -64(%rbp)
       movq   $22, -152(%rbp)
       movq   $23, -104(%rbp)
       movq   $24, -200(%rbp)
       movq   $25, -168(%rbp)
       movq   $26, -144(%rbp)
       movq   $27, -312(%rbp)
       movq   $28, -240(%rbp)
       movq   $29, -216(%rbp)
       movq   $30, -224(%rbp)
       movq   $31, -232(%rbp)
       movq   $32, -192(%rbp)
       movq   $33, -208(%rbp)
       movq   $34, -264(%rbp)
       movq   $35, -272(%rbp)
       movq   $36, -320(%rbp)
       movq   $37, -296(%rbp)
       movq   $38, -304(%rbp)
       movq   $39, -176(%rbp)
       movq   $40, -160(%rbp)
       movq   $41, %r8
       movq   $42, %r10
       movq   $43, %rbx
       movq   $44, %r12
       movq   $45, %r13
       movq   $46, %rcx
       movq   $47, %r14
       movq   $48, %rsi
       movq   $49, %r9
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, %rdi
       addq   $408, %rdi
       movq   _fromspace_end(%rip), %rax
       movq   %rax, -328(%rbp)
       cmpq   -328(%rbp), %rdi
       jl _block65306
       jmp _block65307

_block65307:
       jmp _block65305

_block65305:
       jmp _block65303

_block65303:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block65301

_block65306:
       jmp _block65304

_block65304:
       jmp _block65302

_block65302:
       movq   $0, %rdi
       jmp _block65301

_block65301:
       movq   _free_ptr(%rip), %rdi
       addq   $408, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $101, 0(%r11)
       movq   %rdi, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, -32(%rbp)
       movq   %rdi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r8, 336(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r10, 344(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %rbx, 352(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r12, 360(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r13, 368(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %rcx, 376(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r14, 384(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %rsi, 392(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r9, 400(%r11)
       movq   $0, %rdx
       movq   %rdi, %rdx
       movq   %rdx, %r11
       movq   344(%r11), %rax
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
