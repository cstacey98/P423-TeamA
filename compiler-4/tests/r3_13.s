start:
       movq   $4, %rbx
       movq   $2, %r12
       movq   $6, %r13
       movq   $1, -8(%rbp)
       movq   $42, %r14
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164001
       jmp block164002

block164001:
       jmp block163999

block163999:
       jmp block163997

block163997:
       movq   $0, %rdx
       jmp block163996

block164002:
       jmp block164000

block164000:
       jmp block163998

block163998:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block163996

block163996:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $5, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   $3, %r14
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163994
       jmp block163995

block163994:
       jmp block163992

block163992:
       jmp block163990

block163990:
       movq   $0, %rdx
       jmp block163989

block163995:
       jmp block163993

block163993:
       jmp block163991

block163991:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block163989

block163989:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r14, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163987
       jmp block163988

block163988:
       jmp block163986

block163986:
       jmp block163984

block163984:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block163982

block163987:
       jmp block163985

block163985:
       jmp block163983

block163983:
       movq   $0, %rdx
       jmp block163982

block163982:
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
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163980
       jmp block163981

block163980:
       jmp block163978

block163978:
       jmp block163976

block163976:
       movq   $0, %rdx
       jmp block163975

block163981:
       jmp block163979

block163979:
       jmp block163977

block163977:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block163975

block163975:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block163973
       jmp block163974

block163974:
       jmp block163972

block163972:
       jmp block163970

block163970:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block163968

block163973:
       jmp block163971

block163971:
       jmp block163969

block163969:
       movq   $0, %rdx
       jmp block163968

block163968:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block163966
       jmp block163967

block163966:
       jmp block163964

block163964:
       jmp block163962

block163962:
       movq   $0, %rdx
       jmp block163961

block163967:
       jmp block163965

block163965:
       jmp block163963

block163963:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp block163961

block163961:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
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
       subq   $80, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $160, %r15
       jmp start
conclusion:
       subq   $160, %r15
       addq   $80, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
