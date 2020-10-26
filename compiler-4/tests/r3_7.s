start:
       movq   $0, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block166089
       jmp block166090

block166089:
       jmp block166087

block166087:
       jmp block166085

block166085:
       movq   $0, %rdx
       jmp block166084

block166090:
       jmp block166088

block166088:
       jmp block166086

block166086:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block166084

block166084:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block166082
       jmp block166083

block166083:
       jmp block166081

block166081:
       jmp block166079

block166082:
       jmp block166080

block166080:
       jmp block166078

block166078:
       movq   $0, %rdx
       jmp block166077

block166079:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block166077

block166077:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block166075
       jmp block166076

block166075:
       jmp block166073

block166073:
       jmp block166071

block166071:
       movq   $0, %rdx
       jmp block166070

block166076:
       jmp block166074

block166074:
       jmp block166072

block166072:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block166070

block166070:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -24(%r15), %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   -24(%r15), %r11
       movq   8(%r11), %rdx
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
