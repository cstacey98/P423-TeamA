_g94start:
       movq   %rdi, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rbx
       movq   %rcx, -8(%r15)
       leaq   _h93(%rip), %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _g94block150
       jmp _g94block151

_g94block150:
       jmp _g94block148

_g94block148:
       jmp _g94block146

_g94block146:
       movq   $0, %rdx
       jmp _g94block145

_g94block151:
       jmp _g94block149

_g94block149:
       jmp _g94block147

_g94block147:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _g94block145

_g94block145:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   %rcx, %r11
       movq   8(%r11), %rdx
       movq   %rcx, %rdi
       movq   %rbx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -8(%r15), %rdi
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



.globl _g94
.align 16
_g94:
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
       jmp _g94start
_g94conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_h93start:
       movq   %rdi, %rdx
       movq   %rsi, %r12
       movq   $0, %rax
       cmpq   %rax, %r12
       je _h93block163
       jmp _h93block164

_h93block164:
       movq   %r12, %rdx
       movq   $0, %rax
       cmpq   %rdx, %rax
       jl _h93block161
       jmp _h93block162

_h93block162:
       jmp _h93block160

_h93block160:
       movq   $0, %rax
       jmp _h93conclusion

_h93block163:
       movq   $1, %rax
       jmp _h93conclusion

_h93block161:
       jmp _h93block159

_h93block159:
       leaq   _h93(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h93block157
       jmp _h93block158

_h93block158:
       jmp _h93block156

_h93block156:
       jmp _h93block154

_h93block157:
       jmp _h93block155

_h93block154:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h93block152

_h93block155:
       jmp _h93block153

_h93block153:
       movq   $0, %rdx
       jmp _h93block152

_h93block152:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rsi
       movq   $2, %rdx
       negq   %rdx
       movq   %r12, %rcx
       addq   %rdx, %rcx
       movq   %rsi, %r11
       movq   8(%r11), %rdx
       movq   %rsi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _h93
.align 16
_h93:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _h93start
_h93conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main92start:
       movq   %rdi, %rdx
       leaq   _g94(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main92block177
       jmp _main92block178

_main92block178:
       jmp _main92block176

_main92block176:
       jmp _main92block174

_main92block174:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main92block172

_main92block177:
       jmp _main92block175

_main92block175:
       jmp _main92block173

_main92block173:
       movq   $0, %rdx
       jmp _main92block172

_main92block172:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       leaq   _lambda107(%rip), %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main92block170
       jmp _main92block171

_main92block170:
       jmp _main92block168

_main92block168:
       jmp _main92block166

_main92block166:
       movq   $0, %rdx
       jmp _main92block165

_main92block171:
       jmp _main92block169

_main92block169:
       jmp _main92block167

_main92block167:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main92block165

_main92block165:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -8(%r15), %r11
       movq   8(%r11), %rcx
       movq   -8(%r15), %rdi
       movq   %rdx, %rsi
       movq   $36, %rdx
       movq   %rcx, %rax
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
       jmp _main92start
_main92conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_lambda107start:
       movq   %rdi, %rdx
       movq   %rsi, %rdx
       movq   $1, %rax
       cmpq   %rax, %rdx
       je _lambda107block179
       jmp _lambda107block180

_lambda107block180:
       movq   $0, %rax
       jmp _lambda107conclusion

_lambda107block179:
       movq   $42, %rax
       jmp _lambda107conclusion



.globl _lambda107
.align 16
_lambda107:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _lambda107start
_lambda107conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
