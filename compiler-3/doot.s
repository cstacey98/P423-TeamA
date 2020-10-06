_start:
       movq   $1, %rbx
       movq   $2, %r12
       callq _read_int
       movq   %rax, %rdx
       cmpq   $0, %rdx
       je _block558964
       jmp _block558965

_block558965:
       jmp _block558963

_block558963:
       movq   %r12, %rdx
       jmp _block558961

_block558964:
       jmp _block558962

_block558962:
       movq   %rbx, %rdx
       negq   %rdx
       jmp _block558961

_block558961:
       movq   %rdx, %rax
       addq   $10, %rax
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
       subq   $0, %rsp
       jmp _start
_conclusion:
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
