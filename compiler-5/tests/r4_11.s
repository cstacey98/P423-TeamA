_f352728start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   $100, %rax
       cmpq   %rax, %rcx
       je _f352728block352757
       jmp _f352728block352758

_f352728block352758:
       movq   %rcx, %rcx
       addq   $1, %rcx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f352728block352755
       jmp _f352728block352756

_f352728block352756:
       jmp _f352728block352754

_f352728block352757:
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _f352728conclusion

_f352728block352754:
       jmp _f352728block352752

_f352728block352752:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f352728block352750

_f352728block352755:
       jmp _f352728block352753

_f352728block352753:
       jmp _f352728block352751

_f352728block352751:
       movq   $0, %rdx
       jmp _f352728block352750

_f352728block352750:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %rsi
       leaq   _f352728(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _f352728
.align 16
_f352728:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _f352728start
_f352728conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main352727start:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main352727block352764
       jmp _main352727block352765

_main352727block352765:
       jmp _main352727block352763

_main352727block352763:
       jmp _main352727block352761

_main352727block352761:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main352727block352759

_main352727block352764:
       jmp _main352727block352762

_main352727block352762:
       jmp _main352727block352760

_main352727block352760:
       movq   $0, %rdx
       jmp _main352727block352759

_main352727block352759:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       leaq   _f352728(%rip), %rcx
       movq   $0, %rdi
       movq   %rdx, %rsi
       movq   %rcx, %rax
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
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main352727start
_main352727conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

