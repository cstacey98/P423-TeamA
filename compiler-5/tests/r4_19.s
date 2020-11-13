_m1953start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rdx
       movq   %r8, %rdx
       movq   %r9, %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rax
       jmp _m1953conclusion



.globl _m1953
.align 16
_m1953:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _m1953start
_m1953conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main1952start:
       movq   $772, %r14
       movq   $771, %rbx
       movq   $770, %r13
       movq   $42, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main1952block1984
       jmp _main1952block1985

_main1952block1984:
       jmp _main1952block1982

_main1952block1982:
       jmp _main1952block1980

_main1952block1985:
       jmp _main1952block1983

_main1952block1983:
       jmp _main1952block1981

_main1952block1981:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main1952block1979

_main1952block1980:
       movq   $0, %rdx
       jmp _main1952block1979

_main1952block1979:
       movq   _free_ptr(%rip), %rdx
       addq   $40, _free_ptr(%rip)
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
       leaq   _m1953(%rip), %r10
       movq   $777, %rdi
       movq   $776, %rsi
       movq   $775, %rdx
       movq   $774, %rcx
       movq   $773, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _main
.align 16
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _main1952start
_main1952conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

