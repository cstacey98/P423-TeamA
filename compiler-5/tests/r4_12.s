_id67928start:
       movq   %rdi, %rdx
       movq   %rdx, %rax
       jmp _id67928conclusion



.globl _id67928
.align 16
_id67928:
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
       jmp _id67928start
_id67928conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f67927start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $100, %rax
       cmpq   %rax, %rdx
       je _f67927block67973
       jmp _f67927block67974

_f67927block67974:
       movq   %rdx, %rsi
       addq   $1, %rsi
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f67927block67971
       jmp _f67927block67972

_f67927block67972:
       jmp _f67927block67970

_f67927block67970:
       jmp _f67927block67968

_f67927block67968:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _f67927block67966

_f67927block67971:
       jmp _f67927block67969

_f67927block67969:
       jmp _f67927block67967

_f67927block67967:
       movq   $0, %rdx
       jmp _f67927block67966

_f67927block67966:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $261, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _f67927(%rip), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_f67927block67973:
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %r11
       movq   16(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _clossss67932(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _f67927
.align 16
_f67927:
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
       jmp _f67927start
_f67927conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main67926start:
       movq   %rdx, %rdx
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main67926block67987
       jmp _main67926block67988

_main67926block67987:
       jmp _main67926block67985

_main67926block67985:
       jmp _main67926block67983

_main67926block67983:
       movq   $0, %rdx
       jmp _main67926block67982

_main67926block67988:
       jmp _main67926block67986

_main67926block67986:
       jmp _main67926block67984

_main67926block67984:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main67926block67982

_main67926block67982:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main67926block67980
       jmp _main67926block67981

_main67926block67980:
       jmp _main67926block67978

_main67926block67978:
       jmp _main67926block67976

_main67926block67976:
       movq   $0, %rdx
       jmp _main67926block67975

_main67926block67981:
       jmp _main67926block67979

_main67926block67979:
       jmp _main67926block67977

_main67926block67977:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _main67926block67975

_main67926block67975:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $261, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _f67927(%rip), %rdx
       movq   $0, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
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
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $0, %r15
       jmp _main67926start
_main67926conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

