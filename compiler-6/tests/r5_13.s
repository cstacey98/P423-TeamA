f135start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $4, %rdx
       leaq   lambda145(%rip), %rbx
       movq   %rcx, %r12
       movq   %rdx, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl f135block219
       jmp f135block220

f135block219:
       jmp f135block217

f135block220:
       jmp f135block218

f135block218:
       jmp f135block216

f135block217:
       jmp f135block215

f135block216:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp f135block214

f135block215:
       movq   $0, %rdx
       jmp f135block214

f135block214:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $7, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp f135conclusion



.globl f135
.align 16
f135:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp f135start
f135conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main134start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   $0, %rax
       je main134block263
       jmp main134block264

main134block263:
       leaq   f135(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main134block254
       jmp main134block255

main134block254:
       jmp main134block252

main134block252:
       jmp main134block250

main134block250:
       movq   $0, %rdx
       jmp main134block249

main134block255:
       jmp main134block253

main134block253:
       jmp main134block251

main134block251:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main134block249

main134block249:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $5, %rsi
       callq *%rdx
       movq   %rax, -8(%r15)
       jmp main134block248

main134block264:
       leaq   lambda149(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main134block261
       jmp main134block262

main134block262:
       jmp main134block260

main134block260:
       jmp main134block258

main134block258:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main134block256

main134block261:
       jmp main134block259

main134block259:
       jmp main134block257

main134block257:
       movq   $0, %rdx
       jmp main134block256

main134block256:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       jmp main134block248

main134block248:
       movq   $0, %rax
       cmpq   $1, %rax
       jl main134block246
       jmp main134block247

main134block246:
       leaq   f135(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main134block227
       jmp main134block228

main134block228:
       jmp main134block226

main134block244:
       leaq   f135(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main134block235
       jmp main134block236

main134block227:
       jmp main134block225

main134block225:
       jmp main134block223

main134block223:
       movq   $0, %rdx
       jmp main134block222

main134block226:
       jmp main134block224

main134block224:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main134block222

main134block222:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $3, %rsi
       callq *%rdx
       movq   %rax, -16(%r15)
       jmp main134block221

main134block245:
       leaq   f135(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main134block242
       jmp main134block243

main134block243:
       jmp main134block241

main134block241:
       jmp main134block239

main134block239:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main134block237

main134block242:
       jmp main134block240

main134block240:
       jmp main134block238

main134block238:
       movq   $0, %rdx
       jmp main134block237

main134block237:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, -16(%r15)
       jmp main134block229

main134block247:
       leaq   f135(%rip), %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main134block235
       jmp main134block236

main134block236:
       jmp main134block234

main134block234:
       jmp main134block232

main134block232:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main134block230

main134block235:
       jmp main134block233

main134block233:
       jmp main134block231

main134block231:
       movq   $0, %rdx
       jmp main134block230

main134block230:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $0, %rsi
       callq *%rdx
       movq   %rax, -16(%r15)
       jmp main134block229

main134block229:
       jmp main134block221

main134block221:
       movq   -8(%r15), %rdx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $11, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rbx
       negq   %rbx
       movq   -16(%r15), %rdx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   $15, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       movq   %rcx, %rax
       negq   %rax
       jmp main134conclusion



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
       jmp main134start
main134conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda149start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp lambda149conclusion



.globl lambda149
.align 16
lambda149:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda149start
lambda149conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
lambda145start:
       movq   %rdi, %rdx
       movq   %rsi, %rsi
       movq   %rdx, %r11
       movq   16(%r11), %rcx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp lambda145conclusion



.globl lambda145
.align 16
lambda145:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp lambda145start
lambda145conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

