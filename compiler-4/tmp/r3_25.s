_start:
       movq   $0, %r12
       movq   $1, -96(%rbp)
       movq   $2, %rbx
       movq   $3, -104(%rbp)
       movq   $4, -16(%rbp)
       movq   $5, -112(%rbp)
       movq   $6, %rdx
       movq   $7, -32(%rbp)
       movq   $8, %r10
       movq   $9, -120(%rbp)
       movq   $10, -128(%rbp)
       movq   $11, -136(%rbp)
       movq   $12, -144(%rbp)
       movq   $13, -152(%rbp)
       movq   $14, -160(%rbp)
       movq   $15, -168(%rbp)
       movq   $16, -176(%rbp)
       movq   $17, -184(%rbp)
       movq   $18, -192(%rbp)
       movq   $19, -200(%rbp)
       movq   $20, -208(%rbp)
       movq   $21, -216(%rbp)
       movq   $22, -224(%rbp)
       movq   $23, %rdi
       movq   $24, -232(%rbp)
       movq   $25, %r8
       movq   $26, -240(%rbp)
       movq   $27, %r11
       movq   $28, -248(%rbp)
       movq   $29, -40(%rbp)
       movq   $30, -256(%rbp)
       movq   $31, -72(%rbp)
       movq   $32, -264(%rbp)
       movq   $33, -24(%rbp)
       movq   $34, -80(%rbp)
       movq   $35, -56(%rbp)
       movq   $36, -272(%rbp)
       movq   $37, %rcx
       movq   $38, %r9
       movq   $39, %r14
       movq   $40, -88(%rbp)
       movq   $41, -280(%rbp)
       movq   $42, %rsi
       movq   $43, -8(%rbp)
       movq   $44, -48(%rbp)
       movq   $45, -64(%rbp)
       movq   $46, -288(%rbp)
       movq   $47, -296(%rbp)
       movq   $48, -304(%rbp)
       movq   $49, -312(%rbp)
       movq   _free_ptr(%rip), %r13
       movq   %r13, -320(%rbp)
       addq   $408, -320(%rbp)
       movq   _fromspace_end(%rip), %r13
       cmpq   %r13, -320(%rbp)
       jl _block183185
       jmp _block183186

_block183186:
       jmp _block183184

_block183184:
       jmp _block183182

_block183182:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block183180

_block183185:
       jmp _block183183

_block183183:
       jmp _block183181

_block183181:
       movq   $0, %r13
       jmp _block183180

_block183180:
       movq   _free_ptr(%rip), %r13
       addq   $408, _free_ptr(%rip)
       movq   %r13, %r11
       movq   $101, 0(%r11)
       movq   %r13, %r11
       movq   %r12, 8(%r11)
       movq   $0, %r12
       movq   %r13, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %r12
       movq   %r13, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rbx
       movq   %r13, %r11
       movq   %rdx, 56(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %r10, 72(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %rdi, 192(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %r8, 208(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %r11, 224(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %rcx, 304(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %r9, 312(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %r14, 320(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   %rsi, 344(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   %r13, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   %r13, %rdx
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
       subq   $96, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $96, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
