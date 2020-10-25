_start:
       movq   $777, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block65340
       jmp _block65341

_block65340:
       jmp _block65338

_block65338:
       jmp _block65336

_block65336:
       movq   $0, %rdx
       jmp _block65335

_block65341:
       jmp _block65339

_block65339:
       jmp _block65337

_block65337:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block65335

_block65335:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %rdx
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdi
       cmpq   %rdi, %rcx
       jl _block65333
       jmp _block65334

_block65334:
       jmp _block65332

_block65332:
       jmp _block65330

_block65330:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _block65328

_block65333:
       jmp _block65331

_block65331:
       jmp _block65329

_block65329:
       movq   $0, %rcx
       jmp _block65328

_block65328:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $389, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdi
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rcx
       movq   %rcx, %r11
       movq   $42, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   8(%r11), %rax
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
       subq   $336, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $16, %r15
       jmp _start
_conclusion:
       subq   $16, %r15
       addq   $336, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
