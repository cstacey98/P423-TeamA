_app1921start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $42, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _app1921
.align 16
_app1921:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _app1921start
_app1921conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_add1920start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _add1920conclusion



.globl _add1920
.align 16
_add1920:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _add1920start
_add1920conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main919start:
       movq   %rdi, %rdx
       leaq   _app1921(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main919block981
       jmp _main919block982

_main919block982:
       jmp _main919block980

_main919block980:
       jmp _main919block978

_main919block978:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main919block976

_main919block981:
       jmp _main919block979

_main919block979:
       jmp _main919block977

_main919block977:
       movq   $0, %rdx
       jmp _main919block976

_main919block976:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       callq _read_int
       movq   %rax, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _main919block974
       jmp _main919block975

_main919block975:
       jmp _main919block973

_main919block973:
       leaq   _lambda930(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main919block970
       jmp _main919block971

_main919block971:
       jmp _main919block969

_main919block969:
       jmp _main919block967

_main919block967:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main919block965

_main919block970:
       jmp _main919block968

_main919block968:
       jmp _main919block966

_main919block966:
       movq   $0, %rdx
       jmp _main919block965

_main919block965:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       jmp _main919block957

_main919block974:
       jmp _main919block972

_main919block972:
       leaq   _add1920(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main919block963
       jmp _main919block964

_main919block963:
       jmp _main919block961

_main919block964:
       jmp _main919block962

_main919block962:
       jmp _main919block960

_main919block961:
       jmp _main919block959

_main919block959:
       movq   $0, %rdx
       jmp _main919block958

_main919block960:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main919block958

_main919block958:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       jmp _main919block957

_main919block957:
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _main
.align 16
_main:
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
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _main919start
_main919conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda930start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda930conclusion



.globl _lambda930
.align 16
_lambda930:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda930start
_lambda930conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

