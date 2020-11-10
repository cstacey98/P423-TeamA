_minus352891start:
       movq   %rdi, %rcx
       movq   %rsi, %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _minus352891conclusion



.globl _minus352891
.align 16
_minus352891:
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
       jmp _minus352891start
_minus352891conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_zero352890start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _zero352890block353028
       jmp _zero352890block353029

_zero352890block353028:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero352890block353019
       jmp _zero352890block353020

_zero352890block353020:
       jmp _zero352890block353018

_zero352890block353018:
       jmp _zero352890block353016

_zero352890block353019:
       jmp _zero352890block353017

_zero352890block353029:
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _zero352890block353026
       jmp _zero352890block353027

_zero352890block353026:
       jmp _zero352890block353024

_zero352890block353024:
       jmp _zero352890block353022

_zero352890block353022:
       movq   $0, %rdx
       jmp _zero352890block353021

_zero352890block353027:
       jmp _zero352890block353025

_zero352890block353025:
       jmp _zero352890block353023

_zero352890block353023:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _zero352890block353021

_zero352890block353021:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus352891(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _zero352890(%rip), %rcx
       movq   %rdx, %rdi
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_zero352890block353017:
       jmp _zero352890block353015

_zero352890block353015:
       movq   $0, %rdx
       jmp _zero352890block353014

_zero352890block353016:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _zero352890block353014

_zero352890block353014:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp _zero352890conclusion



.globl _zero352890
.align 16
_zero352890:
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
       jmp _zero352890start
_zero352890conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_one352889start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _one352889block353044
       jmp _one352889block353045

_one352889block353045:
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _one352889block353042
       jmp _one352889block353043

_one352889block353044:
       leaq   _zero352890(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _one352889block353035
       jmp _one352889block353036

_one352889block353035:
       jmp _one352889block353033

_one352889block353033:
       jmp _one352889block353031

_one352889block353031:
       movq   $0, %rdx
       jmp _one352889block353030

_one352889block353036:
       jmp _one352889block353034

_one352889block353034:
       jmp _one352889block353032

_one352889block353032:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _one352889block353030

_one352889block353030:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $133, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _one352889conclusion

_one352889block353042:
       jmp _one352889block353040

_one352889block353040:
       jmp _one352889block353038

_one352889block353038:
       movq   $0, %rdx
       jmp _one352889block353037

_one352889block353043:
       jmp _one352889block353041

_one352889block353041:
       jmp _one352889block353039

_one352889block353039:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _one352889block353037

_one352889block353037:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus352891(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _one352889(%rip), %rcx
       movq   %rdx, %rdi
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _one352889
.align 16
_one352889:
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
       jmp _one352889start
_one352889conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_two352888start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _two352888block353060
       jmp _two352888block353061

_two352888block353061:
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _two352888block353058
       jmp _two352888block353059

_two352888block353059:
       jmp _two352888block353057

_two352888block353057:
       jmp _two352888block353055

_two352888block353055:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _two352888block353053

_two352888block353058:
       jmp _two352888block353056

_two352888block353056:
       jmp _two352888block353054

_two352888block353060:
       leaq   _zero352890(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rdx
       leaq   _one352889(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _two352888block353051
       jmp _two352888block353052

_two352888block353051:
       jmp _two352888block353049

_two352888block353049:
       jmp _two352888block353047

_two352888block353047:
       movq   $0, %rdx
       jmp _two352888block353046

_two352888block353052:
       jmp _two352888block353050

_two352888block353050:
       jmp _two352888block353048

_two352888block353048:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _two352888block353046

_two352888block353054:
       movq   $0, %rdx
       jmp _two352888block353053

_two352888block353053:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       leaq   _minus352891(%rip), %rcx
       movq   %rdx, %rdi
       movq   $1, %rsi
       callq *%rcx
       movq   %rax, %rcx
       leaq   _two352888(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_two352888block353046:
       movq   _free_ptr(%rip), %rsi
       addq   $32, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $647, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %rax
       jmp _two352888conclusion



.globl _two352888
.align 16
_two352888:
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
       jmp _two352888start
_two352888conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_three352887start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _three352887block353076
       jmp _three352887block353077

_three352887block353076:
       leaq   _zero352890(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rdx
       leaq   _one352889(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _two352888(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _three352887block353067
       jmp _three352887block353068

_three352887block353067:
       jmp _three352887block353065

_three352887block353068:
       jmp _three352887block353066

_three352887block353077:
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _three352887block353074
       jmp _three352887block353075

_three352887block353074:
       jmp _three352887block353072

_three352887block353072:
       jmp _three352887block353070

_three352887block353070:
       movq   $0, %rdx
       jmp _three352887block353069

_three352887block353075:
       jmp _three352887block353073

_three352887block353073:
       jmp _three352887block353071

_three352887block353071:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _three352887block353069

_three352887block353069:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       leaq   _minus352891(%rip), %rcx
       movq   %rdx, %rdi
       movq   $1, %rsi
       callq *%rcx
       movq   %rax, %rcx
       leaq   _three352887(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_three352887block353066:
       jmp _three352887block353064

_three352887block353064:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _three352887block353062

_three352887block353065:
       jmp _three352887block353063

_three352887block353063:
       movq   $0, %rdx
       jmp _three352887block353062

_three352887block353062:
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $1673, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _three352887conclusion



.globl _three352887
.align 16
_three352887:
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
       jmp _three352887start
_three352887conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main352886start:
       leaq   _zero352890(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rsi
       leaq   _one352889(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rsi
       leaq   _two352888(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rsi
       leaq   _three352887(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main352886block353083
       jmp _main352886block353084

_main352886block353084:
       jmp _main352886block353082

_main352886block353082:
       jmp _main352886block353080

_main352886block353080:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _main352886block353078

_main352886block353083:
       jmp _main352886block353081

_main352886block353081:
       jmp _main352886block353079

_main352886block353079:
       movq   $0, %rdx
       jmp _main352886block353078

_main352886block353078:
       movq   _free_ptr(%rip), %rcx
       addq   $48, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3723, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   40(%r11), %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp _main352886conclusion



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
       jmp _main352886start
_main352886conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

