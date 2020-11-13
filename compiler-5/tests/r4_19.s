m1953start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rdx
       movq   %r8, %rdx
       movq   %r9, %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rax
       jmp m1953conclusion



.globl m1953
.align 16
m1953:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp m1953start
m1953conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1952start:
       movq   $772, %r14
       movq   $771, %rbx
       movq   $770, %r13
       movq   $42, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main1952block1984
       jmp main1952block1985

main1952block1984:
       jmp main1952block1982

main1952block1982:
       jmp main1952block1980

main1952block1985:
       jmp main1952block1983

main1952block1983:
       jmp main1952block1981

main1952block1981:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp main1952block1979

main1952block1980:
       movq   $0, %rdx
       jmp main1952block1979

main1952block1979:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $9, 0(%r11)
       movq   %rdx, %r11
       movq   %r14, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       leaq   m1953(%rip), %r10
       movq   $777, %rdi
       movq   $776, %rsi
       movq   $775, %rdx
       movq   $774, %rcx
       movq   $773, %r8
       movq   %r9, %r9
       movq   %r10, %rax
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
       jmp main1952start
main1952conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

