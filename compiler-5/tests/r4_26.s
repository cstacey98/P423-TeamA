_g354856start:
       movq   %rdi, %rdx
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _g354856block354979
       jmp _g354856block354980

_g354856block354979:
       jmp _g354856block354977

_g354856block354977:
       jmp _g354856block354975

_g354856block354975:
       movq   $0, %rdx
       jmp _g354856block354974

_g354856block354980:
       jmp _g354856block354978

_g354856block354978:
       jmp _g354856block354976

_g354856block354976:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _g354856block354974

_g354856block354974:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %rcx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _g354856block354972
       jmp _g354856block354973

_g354856block354973:
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rdx
       addq   %rcx, %rdx
       leaq   _g354856(%rip), %rcx
       movq   %rdx, %rdi
       movq   %rcx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_g354856block354972:
       movq   $0, %rax
       jmp _g354856conclusion



.globl _g354856
.align 16
_g354856:
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
       jmp _g354856start
_g354856conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main354855start:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block355049
       jmp _main354855block355050

_main354855block355049:
       jmp _main354855block355047

_main354855block355047:
       jmp _main354855block355045

_main354855block355045:
       movq   $0, %rdx
       jmp _main354855block355044

_main354855block355050:
       jmp _main354855block355048

_main354855block355048:
       jmp _main354855block355046

_main354855block355046:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355044

_main354855block355044:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, -8(%r15)
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block355042
       jmp _main354855block355043

_main354855block355043:
       jmp _main354855block355041

_main354855block355041:
       jmp _main354855block355039

_main354855block355039:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355037

_main354855block355042:
       jmp _main354855block355040

_main354855block355040:
       jmp _main354855block355038

_main354855block355038:
       movq   $0, %rdx
       jmp _main354855block355037

_main354855block355037:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354855block355035
       jmp _main354855block355036

_main354855block355036:
       jmp _main354855block355034

_main354855block355034:
       jmp _main354855block355032

_main354855block355032:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355030

_main354855block355035:
       jmp _main354855block355033

_main354855block355033:
       jmp _main354855block355031

_main354855block355031:
       movq   $0, %rdx
       jmp _main354855block355030

_main354855block355030:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, -8(%r15)
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block355028
       jmp _main354855block355029

_main354855block355028:
       jmp _main354855block355026

_main354855block355026:
       jmp _main354855block355024

_main354855block355024:
       movq   $0, %rdx
       jmp _main354855block355023

_main354855block355029:
       jmp _main354855block355027

_main354855block355027:
       jmp _main354855block355025

_main354855block355025:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355023

_main354855block355023:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block355021
       jmp _main354855block355022

_main354855block355022:
       jmp _main354855block355020

_main354855block355020:
       jmp _main354855block355018

_main354855block355018:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355016

_main354855block355021:
       jmp _main354855block355019

_main354855block355019:
       jmp _main354855block355017

_main354855block355017:
       movq   $0, %rdx
       jmp _main354855block355016

_main354855block355016:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, -8(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block355014
       jmp _main354855block355015

_main354855block355014:
       jmp _main354855block355012

_main354855block355012:
       jmp _main354855block355010

_main354855block355010:
       movq   $0, %rdx
       jmp _main354855block355009

_main354855block355015:
       jmp _main354855block355013

_main354855block355013:
       jmp _main354855block355011

_main354855block355011:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355009

_main354855block355009:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, -8(%r15)
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block355007
       jmp _main354855block355008

_main354855block355008:
       jmp _main354855block355006

_main354855block355006:
       jmp _main354855block355004

_main354855block355004:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block355002

_main354855block355007:
       jmp _main354855block355005

_main354855block355005:
       jmp _main354855block355003

_main354855block355003:
       movq   $0, %rdx
       jmp _main354855block355002

_main354855block355002:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354855block355000
       jmp _main354855block355001

_main354855block355000:
       jmp _main354855block354998

_main354855block354998:
       jmp _main354855block354996

_main354855block354996:
       movq   $0, %rdx
       jmp _main354855block354995

_main354855block355001:
       jmp _main354855block354999

_main354855block354999:
       jmp _main354855block354997

_main354855block354997:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block354995

_main354855block354995:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, -8(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main354855block354993
       jmp _main354855block354994

_main354855block354994:
       jmp _main354855block354992

_main354855block354992:
       jmp _main354855block354990

_main354855block354990:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block354988

_main354855block354993:
       jmp _main354855block354991

_main354855block354991:
       jmp _main354855block354989

_main354855block354989:
       movq   $0, %rdx
       jmp _main354855block354988

_main354855block354988:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, -8(%r15)
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main354855block354986
       jmp _main354855block354987

_main354855block354987:
       jmp _main354855block354985

_main354855block354985:
       jmp _main354855block354983

_main354855block354983:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main354855block354981

_main354855block354986:
       jmp _main354855block354984

_main354855block354984:
       jmp _main354855block354982

_main354855block354982:
       movq   $0, %rdx
       jmp _main354855block354981

_main354855block354981:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       leaq   _g354856(%rip), %rdx
       movq   $1000, %rdi
       callq *%rdx
       movq   %rax, %rcx
       movq   $32, %rdx
       addq   %rcx, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rsi
       movq   -8(%r15), %r11
       movq   8(%r11), %rdi
       movq   -8(%r15), %r11
       movq   8(%r11), %r8
       movq   -8(%r15), %r11
       movq   8(%r11), %r9
       movq   -8(%r15), %r11
       movq   8(%r11), %r10
       movq   -8(%r15), %r11
       movq   8(%r11), %rbx
       movq   -8(%r15), %r11
       movq   8(%r11), %r12
       movq   -8(%r15), %r11
       movq   8(%r11), %r13
       movq   -16(%r15), %r11
       movq   8(%r11), %r14
       movq   %r13, %r13
       addq   %r14, %r13
       movq   %r12, %r12
       addq   %r13, %r12
       movq   %rbx, %rbx
       addq   %r12, %rbx
       movq   %r10, %r10
       addq   %rbx, %r10
       movq   %r9, %r9
       addq   %r10, %r9
       movq   %r8, %r8
       addq   %r9, %r8
       movq   %rdi, %rdi
       addq   %r8, %rdi
       movq   %rsi, %rsi
       addq   %rdi, %rsi
       movq   %rcx, %rcx
       addq   %rsi, %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _main354855conclusion



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
       addq   $16, %r15
       jmp _main354855start
_main354855conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

