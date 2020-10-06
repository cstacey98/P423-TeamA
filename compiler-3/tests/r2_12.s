_block584155:
       jmp _block584153

_block584159:
       jmp _block584153

_block584157:
       jmp _block584153

_start:
       jmp _block584162

_block584163:
       jmp _block584162

_block584162:
       jmp _block584153

_block584153:
       movq   $42, %rax
       jmp _conclusion

_block584156:
       jmp _block584154

_block584160:
       jmp _block584154

_block584164:
       jmp _block584161

_block584161:
       jmp _block584154

_block584158:
       jmp _block584154

_block584154:
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
