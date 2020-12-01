main1213start:
       movq   %rdi, %rdx
       leaq   lambda1218(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main1213block1253
       jmp main1213block1254

main1213block1253:
       jmp main1213block1251

main1213block1251:
       jmp main1213block1249

main1213block1249:
       movq   $0, %rdx
       jmp main1213block1248

main1213block1254:
       jmp main1213block1252

main1213block1252:
       jmp main1213block1250

main1213block1250:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1213block1248

main1213block1248:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   lambda1222(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1213block1246
       jmp main1213block1247

main1213block1247:
       jmp main1213block1245

main1213block1245:
       jmp main1213block1243

main1213block1243:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1213block1241

main1213block1246:
       jmp main1213block1244

main1213block1244:
       jmp main1213block1242

main1213block1242:
       movq   $0, %rdx
       jmp main1213block1241

main1213block1241:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   -8(%r15), %rdi
       movq   %rdx, %rsi
       movq   $42, %rdx
       movq   %rcx, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp main1213start
main1213conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1222start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp lambda1222conclusion



.globl lambda1222
.align 16
lambda1222:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1222start
lambda1222conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1218start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rdx, %rcx
       movq   %rsi, %rsi
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl lambda1218
.align 16
lambda1218:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1218start
lambda1218conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

