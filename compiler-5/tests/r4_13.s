_zero152start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _zero152block199
       jmp _zero152block200

_zero152block199:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero152block190
       jmp _zero152block191

_zero152block191:
       jmp _zero152block189

_zero152block189:
       jmp _zero152block187

_zero152block187:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _zero152block185

_zero152block190:
       jmp _zero152block188

_zero152block188:
       jmp _zero152block186

_zero152block186:
       movq   $0, %rdx
       jmp _zero152block185

_zero152block185:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp _zero152conclusion

_zero152block200:
       movq   %rdx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero152block197
       jmp _zero152block198

_zero152block197:
       jmp _zero152block195

_zero152block195:
       jmp _zero152block193

_zero152block193:
       movq   $0, %rdx
       jmp _zero152block192

_zero152block198:
       jmp _zero152block196

_zero152block196:
       jmp _zero152block194

_zero152block194:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _zero152block192

_zero152block192:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       movq   $1, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _zero152(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _zero152
.align 16
_zero152:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _zero152start
_zero152conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main151start:
       leaq   _zero152(%rip), %rdx
       movq   $1, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       leaq   _zero152(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   $42, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main151block206
       jmp _main151block207

_main151block207:
       jmp _main151block205

_main151block206:
       jmp _main151block204

_main151block204:
       jmp _main151block202

_main151block202:
       movq   $0, %rdx
       jmp _main151block201

_main151block205:
       jmp _main151block203

_main151block203:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _main151block201

_main151block201:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $391, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rax
       jmp _main151conclusion



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
       movq   $0, (%r15)
       addq   $16, %r15
       jmp _main151start
_main151conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

