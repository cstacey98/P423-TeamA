add11103start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp add11103conclusion



.globl add11103
.align 16
add11103:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp add11103start
add11103conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1102start:
       movq   %rdi, %rdx
       callq read_int
       movq   %rax, %rbx
       callq read_int
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je main1102block1149
       jmp main1102block1150

main1102block1149:
       jmp main1102block1147

main1102block1147:
       leaq   add11103(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main1102block1138
       jmp main1102block1139

main1102block1138:
       jmp main1102block1136

main1102block1136:
       jmp main1102block1134

main1102block1150:
       jmp main1102block1148

main1102block1148:
       leaq   lambda1110(%rip), %r12
       movq   %rbx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1102block1145
       jmp main1102block1146

main1102block1145:
       jmp main1102block1143

main1102block1143:
       jmp main1102block1141

main1102block1141:
       movq   $0, %rdx
       jmp main1102block1140

main1102block1146:
       jmp main1102block1144

main1102block1144:
       jmp main1102block1142

main1102block1142:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp main1102block1140

main1102block1140:
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
       movq   %rdx, %rdx
       jmp main1102block1132

main1102block1139:
       jmp main1102block1137

main1102block1137:
       jmp main1102block1135

main1102block1134:
       movq   $0, %rdx
       jmp main1102block1133

main1102block1135:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1102block1133

main1102block1133:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       jmp main1102block1132

main1102block1132:
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $41, %rsi
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
       jmp main1102start
main1102conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda1110start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp lambda1110conclusion



.globl lambda1110
.align 16
lambda1110:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda1110start
lambda1110conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

