zero152start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je zero152block199
       jmp zero152block200

zero152block199:
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl zero152block190
       jmp zero152block191

zero152block191:
       jmp zero152block189

zero152block189:
       jmp zero152block187

zero152block187:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq collect
       jmp zero152block185

zero152block190:
       jmp zero152block188

zero152block188:
       jmp zero152block186

zero152block186:
       movq   $0, %rdx
       jmp zero152block185

zero152block185:
       movq   free_ptr(%rip), %rdx
       addq   $8, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp zero152conclusion

zero152block200:
       movq   %rdx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl zero152block197
       jmp zero152block198

zero152block197:
       jmp zero152block195

zero152block195:
       jmp zero152block193

zero152block193:
       movq   $0, %rdx
       jmp zero152block192

zero152block198:
       jmp zero152block196

zero152block196:
       jmp zero152block194

zero152block194:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp zero152block192

zero152block192:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
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
       leaq   zero152(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl zero152
.align 16
zero152:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp zero152start
zero152conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main151start:
       leaq   zero152(%rip), %rdx
       movq   $1, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       leaq   zero152(%rip), %rdx
       movq   $2, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main151block206
       jmp main151block207

main151block207:
       jmp main151block205

main151block206:
       jmp main151block204

main151block204:
       jmp main151block202

main151block202:
       movq   $0, %rdx
       jmp main151block201

main151block205:
       jmp main151block203

main151block203:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp main151block201

main151block201:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
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
       jmp main151conclusion



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp main151start
main151conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

