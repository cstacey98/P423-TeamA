_id91start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       jmp _id91conclusion



.globl _id91
.align 16
_id91:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _id91start
_id91conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_f90start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   $100, %rax
       cmpq   %rax, %rcx
       je _f90block135
       jmp _f90block136

_f90block136:
       movq   %rcx, %rbx
       addq   $1, %rbx
       movq   %rdx, %r11
       movq   8(%r11), %r12
       movq   %rdx, %r11
       movq   16(%r11), %rax
       movq   %rax, -8(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f90block133
       jmp _f90block134

_f90block133:
       jmp _f90block131

_f90block131:
       jmp _f90block129

_f90block129:
       movq   $0, %rdx
       jmp _f90block128

_f90block135:
       movq   %rdx, %r11
       movq   16(%r11), %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax

_f90block134:
       jmp _f90block132

_f90block132:
       jmp _f90block130

_f90block130:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _f90block128

_f90block128:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
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
       leaq   _f90(%rip), %rdx
       movq   %rbx, %rdi
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



.globl _f90
.align 16
_f90:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       addq   $16, %r15
       jmp _f90start
_f90conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main89start:
       leaq   _id91(%rip), %rbx
       movq   $42, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main89block149
       jmp _main89block150

_main89block149:
       jmp _main89block147

_main89block147:
       jmp _main89block145

_main89block145:
       movq   $0, %rdx
       jmp _main89block144

_main89block150:
       jmp _main89block148

_main89block148:
       jmp _main89block146

_main89block146:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main89block144

_main89block144:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main89block142
       jmp _main89block143

_main89block142:
       jmp _main89block140

_main89block143:
       jmp _main89block141

_main89block141:
       jmp _main89block139

_main89block139:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main89block137

_main89block140:
       jmp _main89block138

_main89block138:
       movq   $0, %rdx
       jmp _main89block137

_main89block137:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
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
       leaq   _f90(%rip), %rdx
       movq   $0, %rdi
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
       jmp _main89start
_main89conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

