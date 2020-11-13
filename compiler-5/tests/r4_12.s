id91start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       jmp id91conclusion



.globl id91
.align 16
id91:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp id91start
id91conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
f90start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   $100, %rax
       cmpq   %rax, %rcx
       je f90block135
       jmp f90block136

f90block136:
       movq   %rcx, %rbx
       addq   $1, %rbx
       movq   %rdx, %r11
       movq   8(%r11), %r12
       movq   %rdx, %r11
       movq   16(%r11), %rax
       movq   %rax, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl f90block133
       jmp f90block134

f90block133:
       jmp f90block131

f90block131:
       jmp f90block129

f90block129:
       movq   $0, %rdx
       jmp f90block128

f90block135:
       movq   %rdx, %r11
       movq   16(%r11), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax

f90block134:
       jmp f90block132

f90block132:
       jmp f90block130

f90block130:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp f90block128

f90block128:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   f90(%rip), %rdx
       movq   %rbx, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl f90
.align 16
f90:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp f90start
f90conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main89start:
       leaq   id91(%rip), %rbx
       movq   $42, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main89block149
       jmp main89block150

main89block149:
       jmp main89block147

main89block147:
       jmp main89block145

main89block145:
       movq   $0, %rdx
       jmp main89block144

main89block150:
       jmp main89block148

main89block148:
       jmp main89block146

main89block146:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main89block144

main89block144:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main89block142
       jmp main89block143

main89block142:
       jmp main89block140

main89block143:
       jmp main89block141

main89block141:
       jmp main89block139

main89block139:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp main89block137

main89block140:
       jmp main89block138

main89block138:
       movq   $0, %rdx
       jmp main89block137

main89block137:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $261, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   f90(%rip), %rdx
       movq   $0, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



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
       addq   $8, %r15
       jmp main89start
main89conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

