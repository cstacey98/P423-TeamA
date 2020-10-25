_start:
       movq   $40, %rdx
       movq   $1, %rdi
       movq   $2, %rsi
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %r8
       addq   $16, %r8
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %r8
       jl _block182974
       jmp _block182975

_block182974:
       jmp _block182972

_block182972:
       jmp _block182970

_block182970:
       movq   $0, %rcx
       jmp _block182969

_block182975:
       jmp _block182973

_block182973:
       jmp _block182971

_block182971:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182969

_block182969:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %rcx
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %rsi
       addq   $32, %rsi
       movq   _fromspace_end(%rip), %r8
       cmpq   %r8, %rsi
       jl _block182967
       jmp _block182968

_block182968:
       jmp _block182966

_block182966:
       jmp _block182964

_block182964:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _block182962

_block182967:
       jmp _block182965

_block182965:
       jmp _block182963

_block182963:
       movq   $0, %rsi
       jmp _block182962

_block182962:
       movq   _free_ptr(%rip), %rsi
       addq   $32, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $519, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rdi, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %r11
       movq   -16(%r11), %rdx
       cmpq   %rdx, $1
       je _block182959
       jmp _block182960

_block182959:
       movq   %rcx, %r11
       movq   -8(%r11), %rdx
       movq   %rcx, %r11
       movq   -24(%r11), %rcx
       movq   %rcx, %r11
       movq   -8(%r11), %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _conclusion

_block182960:
       movq   $44, %rax
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
