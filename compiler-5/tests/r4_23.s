_f69939start:
       movq   %rdi, %r12
       movq   $0, %rax
       cmpq   %rax, %r12
       je _f69939block69962
       jmp _f69939block69963

_f69939block69963:
       movq   $1, %rax
       cmpq   %rax, %r12
       je _f69939block69960
       jmp _f69939block69961

_f69939block69962:
       movq   $0, %rax
       jmp _f69939conclusion

_f69939block69960:
       movq   $1, %rax
       jmp _f69939conclusion

_f69939block69961:
       movq   $1, %rdx
       negq   %rdx
       movq   %r12, %rcx
       addq   %rdx, %rcx
       leaq   _f69939(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rbx
       movq   $2, %rdx
       negq   %rdx
       movq   %r12, %rcx
       addq   %rdx, %rcx
       leaq   _f69939(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _f69939conclusion



.globl _f69939
.align 16
_f69939:
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
       jmp _f69939start
_f69939conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_g69938start:
       movq   %rdi, %rcx
       movq   %rsi, %rsi
       movq   %rdx, %rsi
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _g69938block69966
       jmp _g69938block69967

_g69938block69967:
       movq   $1, %rax
       cmpq   %rax, %rcx
       je _g69938block69964
       jmp _g69938block69965

_g69938block69964:
       movq   %rsi, %rax
       jmp _g69938conclusion

_g69938block69965:
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rdi
       addq   %rdx, %rdi
       movq   %rsi, %rdx
       addq   %rsi, %rdx
       leaq   _g69938(%rip), %rcx
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_g69938block69966:
       movq   %rsi, %rax
       jmp _g69938conclusion



.globl _g69938
.align 16
_g69938:
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
       jmp _g69938start
_g69938conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69937start:
       leaq   _f69939(%rip), %rdx
       movq   $8, %rdi
       callq *%rdx
       movq   %rax, %rbx
       leaq   _g69938(%rip), %rcx
       movq   $8, %rdi
       movq   $0, %rsi
       movq   $1, %rdx
       callq *%rcx
       movq   %rax, %rdx
       movq   %rbx, %rax
       addq   %rdx, %rax
       jmp _main69937conclusion



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
       jmp _main69937start
_main69937conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

