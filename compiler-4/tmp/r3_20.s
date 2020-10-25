_start:
       movq   $0, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182935
       jmp _block182936

_block182935:
       jmp _block182933

_block182933:
       jmp _block182931

_block182931:
       movq   $0, %rdx
       jmp _block182930

_block182936:
       jmp _block182934

_block182934:
       jmp _block182932

_block182932:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182930

_block182930:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rsi
       movq   $0, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rdx
       jl _block182928
       jmp _block182929

_block182929:
       jmp _block182927

_block182927:
       jmp _block182925

_block182925:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182923

_block182928:
       jmp _block182926

_block182926:
       jmp _block182924

_block182924:
       movq   $0, %rdx
       jmp _block182923

_block182923:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       cmpq   %rdx, %rsi
       je _block182921
       jmp _block182922

_block182921:
       movq   $777, %rax
       jmp _conclusion

_block182922:
       movq   $42, %rax
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
