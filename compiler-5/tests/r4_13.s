_zero67990start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _zero67990block68037
       jmp _zero67990block68038

_zero67990block68037:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero67990block68028
       jmp _zero67990block68029

_zero67990block68028:
       jmp _zero67990block68026

_zero67990block68026:
       jmp _zero67990block68024

_zero67990block68024:
       movq   $0, %rdx
       jmp _zero67990block68023

_zero67990block68029:
       jmp _zero67990block68027

_zero67990block68027:
       jmp _zero67990block68025

_zero67990block68025:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _zero67990block68023

_zero67990block68023:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp _zero67990conclusion

_zero67990block68038:
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _zero67990block68035
       jmp _zero67990block68036

_zero67990block68035:
       jmp _zero67990block68033

_zero67990block68033:
       jmp _zero67990block68031

_zero67990block68031:
       movq   $0, %rdx
       jmp _zero67990block68030

_zero67990block68036:
       jmp _zero67990block68034

_zero67990block68034:
       jmp _zero67990block68032

_zero67990block68032:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _zero67990block68030

_zero67990block68030:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _zero67990(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _zero67990
.align 16
_zero67990:
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
       jmp _zero67990start
_zero67990conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main67989start:
       leaq   _zero67990(%rip), %rdx
       movq   $1, %rdi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _zero67990(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, %rcx
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main67989block68044
       jmp _main67989block68045

_main67989block68045:
       jmp _main67989block68043

_main67989block68043:
       jmp _main67989block68041

_main67989block68041:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _main67989block68039

_main67989block68044:
       jmp _main67989block68042

_main67989block68042:
       jmp _main67989block68040

_main67989block68040:
       movq   $0, %rdx
       jmp _main67989block68039

_main67989block68039:
       movq   _free_ptr(%rip), %rsi
       addq   $32, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $391, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rax
       jmp _main67989conclusion



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
       jmp _main67989start
_main67989conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

