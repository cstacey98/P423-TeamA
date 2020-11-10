_f109186start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       addq   $1, %rax
       jmp _f109186conclusion



.globl _f109186
.align 16
_f109186:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _f109186start
_f109186conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_g109185start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rdx
       cmpq   %rdx, %rcx
       jl _g109185block109207
       jmp _g109185block109208

_g109185block109207:
       jmp _g109185block109205

_g109185block109205:
       cmpq   %rdx, %rcx
       setl   %al
       movzbq   %al, %rdx
       movq   $1, %rax
       cmpq   %rax, %rdx
       je _g109185block109203
       jmp _g109185block109204

_g109185block109203:
       jmp _g109185block109202

_g109185block109202:
       jmp _g109185block109200

_g109185block109204:
       jmp _g109185block109201

_g109185block109208:
       jmp _g109185block109206

_g109185block109206:
       movq   $0, %rax
       jmp _g109185conclusion

_g109185block109200:
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       movq   $2, %rsi
       negq   %rsi
       movq   $1, %rcx
       addq   %rsi, %rcx
       cmpq   %rdx, %rcx
       setl   %al
       movzbq   %al, %rdx
       movq   %rdx, %rax
       xorq   $1, %rax
       jmp _g109185conclusion

_g109185block109201:
       jmp _g109185block109199

_g109185block109199:
       movq   $1, %rax
       jmp _g109185conclusion



.globl _g109185
.align 16
_g109185:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $0, %r15
       jmp _g109185start
_g109185conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main109184start:
       leaq   _g109185(%rip), %rdx
       movq   $3, %rdi
       movq   $4, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   $1, %rax
       cmpq   %rax, %rdx
       je _main109184block109211
       jmp _main109184block109212

_main109184block109211:
       jmp _main109184block109209

_main109184block109209:
       leaq   _f109186(%rip), %rdx
       movq   $1, %rdi
       movq   %rdx, %rax
              popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp

       jmp *%rax

_main109184block109212:
       jmp _main109184block109210

_main109184block109210:
       leaq   _f109186(%rip), %rdx
       movq   $3, %rdi
       movq   %rdx, %rax
              popq   %r15
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
       pushq  %r15
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main109184start
_main109184conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

