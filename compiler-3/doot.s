_start:
       movq   $1, %rdx
       cmpq   $1, %rdx
       je _block178293
       jmp _block178294

_block178294:
       cmpq   $1, %rdx
       je _block178289
       jmp _block178290

_block178292:
       cmpq   $1, %rdx
       je _block178289
       jmp _block178290

_block178289:
       jmp _block178285

_block178287:
       jmp _block178285

_block178285:
       jmp _block178283

_block178290:
       jmp _block178286

_block178293:
       jmp _block178286

_block178291:
       jmp _block178286

_block178288:
       jmp _block178286

_block178286:
       jmp _block178284

_block178283:
       movq   $1, %rdx
       jmp _block178282

_block178284:
       movq   $0, %rdx
       jmp _block178282

_block178282:
       cmpq   $1, %rdx
       je _block178280
       jmp _block178281

_block178280:
       movq   $42, %rax
       jmp _conclusion

_block178281:
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
