_foo119957start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %rcx
       movq   $0, %rax
       cmpq   %rdi, %rax
       je _foo119957block120005
       jmp _foo119957block120006

_foo119957block120005:
       movq   %rcx, %r11
       movq   32(%r11), %rax
       jmp _foo119957conclusion

_foo119957block120006:
       movq   $1, %rsi
       negq   %rsi
       movq   %rdi, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rdx
       movq   %rcx, %r11
       movq   32(%r11), %rdx
       movq   $1, %rcx
       negq   %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _foo119957block120003
       jmp _foo119957block120004

_foo119957block120003:
       jmp _foo119957block120001

_foo119957block120001:
       jmp _foo119957block119999

_foo119957block119999:
       movq   $0, %rdx
       jmp _foo119957block119998

_foo119957block120004:
       jmp _foo119957block120002

_foo119957block120002:
       jmp _foo119957block120000

_foo119957block120000:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _foo119957block119998

_foo119957block119998:
       movq   _free_ptr(%rip), %r9
       addq   $40, _free_ptr(%rip)
       movq   %r9, %r11
       movq   $9, 0(%r11)
       movq   %r9, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdi
       movq   %r9, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdi
       movq   %r9, %r9
       leaq   _foo119957(%rip), %r10
       movq   %rdx, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r10, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _foo119957
.align 16
_foo119957:
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
       jmp _foo119957start
_foo119957conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main119956start:
       movq   $6, %rdx
       movq   $7, %rsi
       movq   $8, %rsi
       movq   $142, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main119956block120012
       jmp _main119956block120013

_main119956block120013:
       jmp _main119956block120011

_main119956block120011:
       jmp _main119956block120009

_main119956block120009:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _main119956block120007

_main119956block120012:
       jmp _main119956block120010

_main119956block120010:
       jmp _main119956block120008

_main119956block120008:
       movq   $0, %rdx
       jmp _main119956block120007

_main119956block120007:
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $9, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %r9
       leaq   _foo119957(%rip), %r10
       movq   $100, %rdi
       movq   $2, %rsi
       movq   $3, %rdx
       movq   $4, %rcx
       movq   $5, %r8
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
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main119956start
_main119956conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

