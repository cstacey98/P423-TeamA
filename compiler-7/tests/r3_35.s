start:
       movq   $777, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block165995
       jmp block165996

block165996:
       jmp block165994

block165994:
       jmp block165992

block165995:
       jmp block165993

block165993:
       jmp block165991

block165991:
       movq   $0, %rdx
       jmp block165990

block165992:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block165990

block165990:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   -24(%r15), %rax
       movq   %rax, -56(%r15)
       movq   -24(%r15), %rax
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block165988
       jmp block165989

block165988:
       jmp block165986

block165986:
       jmp block165984

block165984:
       movq   $0, %rdx
       jmp block165983

block165989:
       jmp block165987

block165987:
       jmp block165985

block165985:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block165983

block165983:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $389, 0(%r11)
       movq   %rdx, %r11
       movq   -56(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       movq   -24(%r15), %r11
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
