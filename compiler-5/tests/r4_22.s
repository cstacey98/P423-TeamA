_h69903start:
       movq   %rdi, %rdi
       movq   %rsi, %rsi
       movq   %rdx, %rdx
       movq   %rcx, %rcx
       movq   %r8, %r8
       movq   %r9, %r9
       movq   %r9, %r11
       movq   8(%r11), %r10
       movq   %r9, %r11
       movq   16(%r11), %r9
       movq   %r10, %r10
       addq   %r9, %r10
       movq   %r8, %r8
       addq   %r10, %r8
       movq   %rcx, %rcx
       addq   %r8, %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   %rsi, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rax
       addq   %rcx, %rax
       jmp _h69903conclusion



.globl _h69903
.align 16
_h69903:
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
       jmp _h69903start
_h69903conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main69902start:
       movq   $6, %rdx
       movq   $7, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main69902block69935
       jmp _main69902block69936

_main69902block69936:
       jmp _main69902block69934

_main69902block69934:
       jmp _main69902block69932

_main69902block69932:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main69902block69930

_main69902block69935:
       jmp _main69902block69933

_main69902block69933:
       jmp _main69902block69931

_main69902block69931:
       movq   $0, %rdx
       jmp _main69902block69930

_main69902block69930:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $5, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r9
       leaq   _h69903(%rip), %r10
       movq   $1, %rdi
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
       jmp _main69902start
_main69902conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

