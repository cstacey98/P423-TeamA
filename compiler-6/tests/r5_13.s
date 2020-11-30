_f135start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $4, %rdx
       leaq   _lambda145(%rip), %rbx
       movq   %rcx, %r12
       movq   %rdx, %r13
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f135block219
       jmp _f135block220

_f135block219:
       jmp _f135block217

_f135block220:
       jmp _f135block218

_f135block218:
       jmp _f135block216

_f135block217:
       jmp _f135block215

_f135block216:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _f135block214

_f135block215:
       movq   $0, %rdx
       jmp _f135block214

_f135block214:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
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
       jmp _f135conclusion



.globl _f135
.align 16
_f135:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _f135start
_f135conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main134start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   $0, %rax
       je _main134block263
       jmp _main134block264

_main134block263:
       leaq   _f135(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main134block254
       jmp _main134block255

_main134block254:
       jmp _main134block252

_main134block252:
       jmp _main134block250

_main134block250:
       movq   $0, %rdx
       jmp _main134block249

_main134block255:
       jmp _main134block253

_main134block253:
       jmp _main134block251

_main134block251:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main134block249

_main134block249:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       jmp _main134block248

_main134block264:
       leaq   _lambda149(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main134block261
       jmp _main134block262

_main134block262:
       jmp _main134block260

_main134block260:
       jmp _main134block258

_main134block258:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main134block256

_main134block261:
       jmp _main134block259

_main134block259:
       jmp _main134block257

_main134block257:
       movq   $0, %rdx
       jmp _main134block256

_main134block256:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       jmp _main134block248

_main134block248:
       movq   $0, %rax
       cmpq   $1, %rax
       jl _main134block246
       jmp _main134block247

_main134block246:
       leaq   _f135(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main134block227
       jmp _main134block228

_main134block228:
       jmp _main134block226

_main134block244:
       leaq   _f135(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main134block235
       jmp _main134block236

_main134block227:
       jmp _main134block225

_main134block225:
       jmp _main134block223

_main134block223:
       movq   $0, %rdx
       jmp _main134block222

_main134block226:
       jmp _main134block224

_main134block224:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main134block222

_main134block222:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       jmp _main134block221

_main134block245:
       leaq   _f135(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main134block242
       jmp _main134block243

_main134block243:
       jmp _main134block241

_main134block241:
       jmp _main134block239

_main134block239:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main134block237

_main134block242:
       jmp _main134block240

_main134block240:
       jmp _main134block238

_main134block238:
       movq   $0, %rdx
       jmp _main134block237

_main134block237:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       jmp _main134block229

_main134block247:
       leaq   _f135(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main134block235
       jmp _main134block236

_main134block236:
       jmp _main134block234

_main134block234:
       jmp _main134block232

_main134block232:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main134block230

_main134block235:
       jmp _main134block233

_main134block233:
       jmp _main134block231

_main134block231:
       movq   $0, %rdx
       jmp _main134block230

_main134block230:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
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
       jmp _main134block229

_main134block229:
       jmp _main134block221

_main134block221:
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
       jmp _main134conclusion



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
       jmp _main134start
_main134conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda149start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %rax
       jmp _lambda149conclusion



.globl _lambda149
.align 16
_lambda149:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda149start
_lambda149conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda145start:
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
       jmp _lambda145conclusion



.globl _lambda145
.align 16
_lambda145:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda145start
_lambda145conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

