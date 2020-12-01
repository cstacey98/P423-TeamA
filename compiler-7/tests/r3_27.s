start:
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165130
       jmp block165131

block165130:
       jmp block165128

block165128:
       jmp block165126

block165126:
       movq   $0, %rdx
       jmp block165125

block165131:
       jmp block165129

block165129:
       jmp block165127

block165127:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block165125

block165125:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, -24(%r15)
       movq   %rdx, -56(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165123
       jmp block165124

block165123:
       jmp block165121

block165121:
       jmp block165119

block165119:
       movq   $0, %rdx
       jmp block165118

block165124:
       jmp block165122

block165122:
       jmp block165120

block165120:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block165118

block165118:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $389, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, -112(%r15)
       movq   %rdx, -128(%r15)
       movq   %rdx, -56(%r15)
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165116
       jmp block165117

block165117:
       jmp block165115

block165115:
       jmp block165113

block165116:
       jmp block165114

block165114:
       jmp block165112

block165112:
       movq   $0, %rdx
       jmp block165111

block165113:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp block165111

block165111:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1929, 0(%r11)
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, -112(%r15)
       movq   %rdx, -128(%r15)
       movq   %rdx, -24(%r15)
       movq   %rdx, -40(%r15)
       movq   %rdx, -72(%r15)
       movq   %rdx, -16(%r15)
       movq   %rdx, -56(%r15)
       movq   %rdx, -96(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165109
       jmp block165110

block165110:
       jmp block165108

block165108:
       jmp block165106

block165106:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq collect
       jmp block165104

block165109:
       jmp block165107

block165107:
       jmp block165105

block165105:
       movq   $0, %rdx
       jmp block165104

block165104:
       movq   free_ptr(%rip), %rdx
       addq   $72, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $32657, 0(%r11)
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, -112(%r15)
       movq   %rdx, -96(%r15)
       movq   %rdx, -40(%r15)
       movq   %rdx, -80(%r15)
       movq   %rdx, -144(%r15)
       movq   %rdx, -120(%r15)
       movq   %rdx, -160(%r15)
       movq   %rdx, -136(%r15)
       movq   %rdx, -8(%r15)
       movq   %rdx, -32(%r15)
       movq   %rdx, -56(%r15)
       movq   %rdx, -24(%r15)
       movq   %rdx, -72(%r15)
       movq   %rdx, -128(%r15)
       movq   %rdx, -48(%r15)
       movq   %rdx, -16(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $136, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165102
       jmp block165103

block165103:
       jmp block165101

block165101:
       jmp block165099

block165102:
       jmp block165100

block165100:
       jmp block165098

block165098:
       movq   $0, %rdx
       jmp block165097

block165099:
       movq   %r15, %rdi
       movq   $136, %rsi
       callq collect
       jmp block165097

block165097:
       movq   free_ptr(%rip), %rdx
       addq   $136, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $8388513, 0(%r11)
       movq   %rdx, %r11
       movq   -112(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -96(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -80(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -144(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -120(%r15), %rax
       movq   %rax, 48(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -160(%r15), %rax
       movq   %rax, 56(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -136(%r15), %rax
       movq   %rax, 64(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 72(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%r15), %rax
       movq   %rax, 80(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 88(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 96(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -72(%r15), %rax
       movq   %rax, 104(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -128(%r15), %rax
       movq   %rax, 112(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%r15), %rax
       movq   %rax, 120(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 128(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   40(%r11), %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
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
