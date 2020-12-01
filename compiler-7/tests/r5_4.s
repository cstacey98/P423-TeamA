idkcomb1152start:
       movq   %rdi, %rdx
       movq   %rsi, %rbx
       leaq   lambda1157(%rip), %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl idkcomb1152block1204
       jmp idkcomb1152block1205

idkcomb1152block1205:
       jmp idkcomb1152block1203

idkcomb1152block1203:
       jmp idkcomb1152block1201

idkcomb1152block1201:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp idkcomb1152block1199

idkcomb1152block1204:
       jmp idkcomb1152block1202

idkcomb1152block1202:
       jmp idkcomb1152block1200

idkcomb1152block1200:
       movq   $0, %rdx
       jmp idkcomb1152block1199

idkcomb1152block1199:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   lambda1160(%rip), %r12
       movq   %rbx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl idkcomb1152block1197
       jmp idkcomb1152block1198

idkcomb1152block1197:
       jmp idkcomb1152block1195

idkcomb1152block1195:
       jmp idkcomb1152block1193

idkcomb1152block1193:
       movq   $0, %rdx
       jmp idkcomb1152block1192

idkcomb1152block1198:
       jmp idkcomb1152block1196

idkcomb1152block1196:
       jmp idkcomb1152block1194

idkcomb1152block1194:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp idkcomb1152block1192

idkcomb1152block1192:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $444, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl idkcomb1152
.align 16
idkcomb1152:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp idkcomb1152start
idkcomb1152conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1151start:
       movq   %rdi, %rdx
       leaq   idkcomb1152(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1151block1211
       jmp main1151block1212

main1151block1211:
       jmp main1151block1209

main1151block1212:
       jmp main1151block1210

main1151block1210:
       jmp main1151block1208

main1151block1208:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1151block1206

main1151block1209:
       jmp main1151block1207

main1151block1207:
       movq   $0, %rdx
       jmp main1151block1206

main1151block1206:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $42, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
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
       addq   $0, %r15
       jmp main1151start
main1151conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1160start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %rax
       jmp lambda1160conclusion



.globl lambda1160
.align 16
lambda1160:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1160start
lambda1160conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1157start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp lambda1157conclusion



.globl lambda1157
.align 16
lambda1157:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1157start
lambda1157conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

