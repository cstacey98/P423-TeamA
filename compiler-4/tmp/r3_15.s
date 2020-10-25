_start:
       movq   $0, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182796
       jmp _block182797

_block182796:
       jmp _block182794

_block182794:
       jmp _block182792

_block182792:
       movq   $0, %rdx
       jmp _block182791

_block182797:
       jmp _block182795

_block182795:
       jmp _block182793

_block182793:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182791

_block182791:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r10
       movq   $1, %rdx
       movq   $2, %r9
       movq   $3, %rcx
       movq   $4, %r8
       movq   $5, %rsi
       movq   _free_ptr(%rip), %rdi
       movq   %rdi, %rdi
       addq   $48, %rdi
       movq   _fromspace_end(%rip), %r11
       cmpq   %r11, %rdi
       jl _block182789
       jmp _block182790

_block182790:
       jmp _block182788

_block182788:
       jmp _block182786

_block182786:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _block182784

_block182789:
       jmp _block182787

_block182787:
       jmp _block182785

_block182785:
       movq   $0, %rdi
       jmp _block182784

_block182784:
       movq   _free_ptr(%rip), %rdi
       addq   $48, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $11, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r9, 16(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %r8, 32(%r11)
       movq   $0, %rdx
       movq   %rdi, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rdi, %rdx
       callq _read_int
       movq   %rax, %rcx
       cmpq   $0, %rcx
       je _block182782
       jmp _block182783

_block182783:
       jmp _block182781

_block182781:
       movq   %rdx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       jmp _block182779

_block182782:
       jmp _block182780

_block182780:
       movq   %r10, %r11
       movq   $42, 8(%r11)
       movq   $0, %rdx
       jmp _block182779

_block182779:
       movq   %r10, %r11
       movq   -8(%r11), %rax
       jmp _conclusion



.globl _main
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $96, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $96, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
