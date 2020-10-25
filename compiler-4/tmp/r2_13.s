_start:
       movq   $1, %rdx
       cmpq   $1, %rdx
       je _block584180
       jmp _block584181

_block584174:
       jmp _block584172

_block584179:
       cmpq   $1, %rdx
       je _block584176
       jmp _block584177

_block584180:
       cmpq   $1, %rdx
       je _block584176
       jmp _block584177

_block584176:
       jmp _block584172

_block584172:
       jmp _block584170

_block584170:
       movq   $1, %rdx
       jmp _block584169

_block584178:
       jmp _block584173

_block584181:
       jmp _block584173

_block584175:
       jmp _block584173

_block584177:
       jmp _block584173

_block584173:
       jmp _block584171

_block584171:
       movq   $0, %rdx
       jmp _block584169

_block584169:
       cmpq   $1, %rdx
       je _block584167
       jmp _block584168

_block584167:
       movq   $42, %rax
       jmp _conclusion

_block584168:
       movq   $777, %rax
       jmp _conclusion



.globl _main
_main:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       pushq  %r15
       movq   %rsp, %rbp
       subq   $0, %rsp
       jmp _start
_conclusion:
       addq   $0, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
