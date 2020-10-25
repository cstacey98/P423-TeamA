_start:
       movq   $42, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdx
       jl _block65193
       jmp _block65194

_block65194:
       jmp _block65192

_block65192:
       jmp _block65190

_block65193:
       jmp _block65191

_block65191:
       jmp _block65189

_block65189:
       movq   $0, %rdx
       jmp _block65188

_block65190:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block65188

_block65188:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block65186
       jmp _block65187

_block65186:
       jmp _block65184

_block65184:
       jmp _block65182

_block65182:
       movq   $0, %rcx
       jmp _block65181

_block65187:
       jmp _block65185

_block65185:
       jmp _block65183

_block65183:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block65181

_block65181:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
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
