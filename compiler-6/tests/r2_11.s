_block584146:
       jmp _block584142

_block584144:
       jmp _block584142

_block584148:
       jmp _block584142

_start:
       jmp _block584149

_block584152:
       jmp _block584149

_block584149:
       jmp _block584142

_block584142:
       movq   $42, %rax
       jmp _conclusion

_block584143:
       jmp _block584141

_block584145:
       jmp _block584141

_block584147:
       jmp _block584141

_block584151:
       jmp _block584150

_block584150:
       jmp _block584141

_block584141:
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
