_start:
       movq   $0, -8(%rbp)
       movq   $1, -16(%rbp)
       movq   $2, -24(%rbp)
       movq   $3, -32(%rbp)
       movq   $4, -40(%rbp)
       movq   $5, -48(%rbp)
       movq   $6, -56(%rbp)
       movq   $7, -64(%rbp)
       movq   $8, -72(%rbp)
       movq   $9, -80(%rbp)
       movq   $10, -88(%rbp)
       movq   $11, %rsi
       movq   $12, -96(%rbp)
       movq   $13, -104(%rbp)
       movq   $14, -112(%rbp)
       movq   $15, -120(%rbp)
       movq   $16, -128(%rbp)
       movq   $17, -136(%rbp)
       movq   $18, -144(%rbp)
       movq   $19, -152(%rbp)
       movq   $20, -160(%rbp)
       movq   $21, -168(%rbp)
       movq   $22, -176(%rbp)
       movq   $23, -184(%rbp)
       movq   $24, %rdx
       movq   $25, -192(%rbp)
       movq   $26, %rdi
       movq   $27, -200(%rbp)
       movq   $28, %r8
       movq   $29, %r14
       movq   $30, %rbx
       movq   $31, -208(%rbp)
       movq   $32, -216(%rbp)
       movq   $33, -224(%rbp)
       movq   $34, %rcx
       movq   $35, -232(%rbp)
       movq   $36, %r10
       movq   $37, %r9
       movq   $38, %r13
       movq   $39, -240(%rbp)
       movq   $40, -248(%rbp)
       movq   $41, -256(%rbp)
       movq   $42, -264(%rbp)
       movq   $43, -272(%rbp)
       movq   $44, -280(%rbp)
       movq   $45, -288(%rbp)
       movq   $46, -296(%rbp)
       movq   $47, -304(%rbp)
       movq   $48, -312(%rbp)
       movq   $49, -320(%rbp)
       movq   _free_ptr(%rip), %r12
       movq   %r12, -328(%rbp)
       addq   $408, -328(%rbp)
       movq   _fromspace_end(%rip), %r12
       cmpq   %r12, -328(%rbp)
       jl _block65163
       jmp _block65164

_block65163:
       jmp _block65161

_block65161:
       jmp _block65159

_block65164:
       jmp _block65162

_block65162:
       jmp _block65160

_block65159:
       movq   $0, %r12
       jmp _block65158

_block65160:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block65158

_block65158:
       movq   _free_ptr(%rip), %r12
       addq   $408, _free_ptr(%rip)
       movq   %r12, %r11
       movq   $101, 0(%r11)
       movq   %r12, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, -8(%rbp)
       movq   %r12, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, -72(%rbp)
       movq   %r12, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, -72(%rbp)
       movq   %r12, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, -72(%rbp)
       movq   %r12, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rsi
       movq   %r12, %r11
       movq   %rdx, 200(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %rdi, 216(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %r8, 232(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %r14, 240(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %rbx, 248(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %rcx, 280(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %r10, 296(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %r9, 304(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   %r13, 312(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 320(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   %r12, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   %r12, %r8
       movq   $0, %rcx
       movq   $1, -24(%rbp)
       movq   $2, -136(%rbp)
       movq   $3, -328(%rbp)
       movq   $4, -80(%rbp)
       movq   $5, -32(%rbp)
       movq   $6, -120(%rbp)
       movq   $7, -16(%rbp)
       movq   $8, -104(%rbp)
       movq   $9, -40(%rbp)
       movq   $10, -280(%rbp)
       movq   $11, -112(%rbp)
       movq   $12, -96(%rbp)
       movq   $13, -256(%rbp)
       movq   $14, -88(%rbp)
       movq   $15, -72(%rbp)
       movq   $16, -248(%rbp)
       movq   $17, -8(%rbp)
       movq   $18, -152(%rbp)
       movq   $19, -64(%rbp)
       movq   $20, -56(%rbp)
       movq   $21, -128(%rbp)
       movq   $22, -48(%rbp)
       movq   $23, -208(%rbp)
       movq   $24, -216(%rbp)
       movq   $25, %r9
       movq   $26, -232(%rbp)
       movq   $27, %r10
       movq   $28, -304(%rbp)
       movq   $29, %rdx
       movq   $30, -160(%rbp)
       movq   $31, %rdi
       movq   $32, -200(%rbp)
       movq   $33, %r14
       movq   $34, -240(%rbp)
       movq   $35, %r13
       movq   $36, -192(%rbp)
       movq   $37, %r12
       movq   $38, -224(%rbp)
       movq   $39, %rbx
       movq   $40, -144(%rbp)
       movq   $41, -168(%rbp)
       movq   $42, -176(%rbp)
       movq   $43, -272(%rbp)
       movq   $44, -264(%rbp)
       movq   $45, -320(%rbp)
       movq   $46, %rsi
       movq   $47, -296(%rbp)
       movq   $48, -184(%rbp)
       movq   $49, -288(%rbp)
       movq   _free_ptr(%rip), %rax
       movq   %rax, -312(%rbp)
       movq   -312(%rbp), %rax
       movq   %rax, -312(%rbp)
       addq   $408, -312(%rbp)
       movq   _fromspace_end(%rip), %rax
       movq   %rax, -336(%rbp)
       movq   -336(%rbp), %rax
       cmpq   %rax, -312(%rbp)
       jl _block65156
       jmp _block65157

_block65157:
       jmp _block65155

_block65155:
       jmp _block65153

_block65153:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block65151

_block65156:
       jmp _block65154

_block65154:
       jmp _block65152

_block65152:
       movq   $0, -312(%rbp)
       jmp _block65151

_block65151:
       movq   _free_ptr(%rip), %rax
       movq   %rax, -8(%r15)
       addq   $408, _free_ptr(%rip)
       movq   -8(%r15), %r11
       movq   $101, 0(%r11)
       movq   -8(%r15), %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -24(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -136(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -328(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -80(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -32(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -120(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -16(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -104(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -40(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -280(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -112(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -96(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -256(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -88(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -72(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -248(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -8(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -152(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -64(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -56(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -128(%rbp), %rax
       movq   %rax, 176(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -48(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -208(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -216(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %r9, 208(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -232(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %r10, 224(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   -304(%rbp), %rax
       movq   %rax, 232(%r11)
       movq   $0, %rcx
       movq   -8(%r15), %r11
       movq   %rdx, 240(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -160(%rbp), %rax
       movq   %rax, 248(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %rdi, 256(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -200(%rbp), %rax
       movq   %rax, 264(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r14, 272(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -240(%rbp), %rax
       movq   %rax, 280(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r13, 288(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -192(%rbp), %rax
       movq   %rax, 296(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %r12, 304(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -224(%rbp), %rax
       movq   %rax, 312(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %rbx, 320(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -144(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -168(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -176(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -272(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -264(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -320(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   %rsi, 376(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -296(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -184(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %r11
       movq   -288(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   -8(%r15), %rdx
       movq   $0, %rcx
       movq   $1, -24(%rbp)
       movq   $2, -32(%rbp)
       movq   $3, -328(%rbp)
       movq   $4, -16(%rbp)
       movq   $5, -40(%rbp)
       movq   $6, -128(%rbp)
       movq   $7, -8(%rbp)
       movq   $8, -64(%rbp)
       movq   $9, -112(%rbp)
       movq   $10, -136(%rbp)
       movq   $11, -56(%rbp)
       movq   $12, -80(%rbp)
       movq   $13, -48(%rbp)
       movq   $14, -104(%rbp)
       movq   $15, -96(%rbp)
       movq   $16, -120(%rbp)
       movq   $17, -304(%rbp)
       movq   $18, -280(%rbp)
       movq   $19, -312(%rbp)
       movq   $20, -248(%rbp)
       movq   $21, %rbx
       movq   $22, -152(%rbp)
       movq   $23, -200(%rbp)
       movq   $24, -88(%rbp)
       movq   $25, -240(%rbp)
       movq   $26, -72(%rbp)
       movq   $27, -176(%rbp)
       movq   $28, %r12
       movq   $29, -160(%rbp)
       movq   $30, %rdx
       movq   $31, -216(%rbp)
       movq   $32, %r9
       movq   $33, -192(%rbp)
       movq   $34, %rdi
       movq   $35, -208(%rbp)
       movq   $36, %r13
       movq   $37, -144(%rbp)
       movq   $38, %r10
       movq   $39, %r14
       movq   $40, -232(%rbp)
       movq   $41, -296(%rbp)
       movq   $42, -320(%rbp)
       movq   $43, -272(%rbp)
       movq   $44, -264(%rbp)
       movq   $45, -184(%rbp)
       movq   $46, -168(%rbp)
       movq   $47, -256(%rbp)
       movq   $48, -288(%rbp)
       movq   $49, -224(%rbp)
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $408, %rsi
       movq   _fromspace_end(%rip), %rax
       movq   %rax, -336(%rbp)
       cmpq   -336(%rbp), %rsi
       jl _block65149
       jmp _block65150

_block65150:
       jmp _block65148

_block65148:
       jmp _block65146

_block65146:
       movq   %r15, %rdi
       movq   $408, %rsi
       callq _collect
       jmp _block65144

_block65149:
       jmp _block65147

_block65147:
       jmp _block65145

_block65145:
       movq   $0, %rsi
       jmp _block65144

_block65144:
       movq   _free_ptr(%rip), %rsi
       addq   $408, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $101, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -24(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -32(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -328(%rbp), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -16(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -40(%rbp), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -128(%rbp), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -64(%rbp), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -112(%rbp), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -136(%rbp), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -56(%rbp), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -48(%rbp), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -104(%rbp), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -96(%rbp), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -120(%rbp), %rax
       movq   %rax, 136(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -304(%rbp), %rax
       movq   %rax, 144(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -280(%rbp), %rax
       movq   %rax, 152(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -312(%rbp), %rax
       movq   %rax, 160(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -248(%rbp), %rax
       movq   %rax, 168(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rbx, 176(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -152(%rbp), %rax
       movq   %rax, 184(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -200(%rbp), %rax
       movq   %rax, 192(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -88(%rbp), %rax
       movq   %rax, 200(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -240(%rbp), %rax
       movq   %rax, 208(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -72(%rbp), %rax
       movq   %rax, 216(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -176(%rbp), %rax
       movq   %rax, 224(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %r12, 232(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   -160(%rbp), %rax
       movq   %rax, 240(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 248(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -216(%rbp), %rax
       movq   %rax, 256(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r9, 264(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -192(%rbp), %rax
       movq   %rax, 272(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rdi, 280(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -208(%rbp), %rax
       movq   %rax, 288(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r13, 296(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -144(%rbp), %rax
       movq   %rax, 304(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r10, 312(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %r14, 320(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -232(%rbp), %rax
       movq   %rax, 328(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -296(%rbp), %rax
       movq   %rax, 336(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -320(%rbp), %rax
       movq   %rax, 344(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -272(%rbp), %rax
       movq   %rax, 352(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -264(%rbp), %rax
       movq   %rax, 360(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -184(%rbp), %rax
       movq   %rax, 368(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -168(%rbp), %rax
       movq   %rax, 376(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -256(%rbp), %rax
       movq   %rax, 384(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -288(%rbp), %rax
       movq   %rax, 392(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   -224(%rbp), %rax
       movq   %rax, 400(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   %r8, %r11
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
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
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
