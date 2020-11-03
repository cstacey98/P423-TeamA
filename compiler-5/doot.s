start:
       movq   $40, %r12
       movq   $1, %rbx
       movq   $2, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block106281
       jmp block106282

block106281:
       jmp block106279

block106279:
       jmp block106277

block106277:
       movq   $0, %rdx
       jmp block106276

block106282:
       jmp block106280

block106280:
       jmp block106278

block106278:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block106276

block106276:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block106274
       jmp block106275

block106275:
       jmp block106273

block106273:
       jmp block106271

block106271:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp block106269

block106274:
       jmp block106272

block106272:
       jmp block106270

block106270:
       movq   $0, %rdx
       jmp block106269

block106269:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $519, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       cmpq   %rdx, $1
       je block106266
       jmp block106267

block106267:
       movq   $44, %rax
       jmp conclusion

block106266:
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   24(%r11), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp conclusion



.globl main
main:
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
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $8, %r15
       jmp start
conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
