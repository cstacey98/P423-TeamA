_g70016start:
       movq   %rdi, %rcx
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _g70016block70139
       jmp _g70016block70140

_g70016block70140:
       jmp _g70016block70138

_g70016block70138:
       jmp _g70016block70136

_g70016block70136:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _g70016block70134

_g70016block70139:
       jmp _g70016block70137

_g70016block70137:
       jmp _g70016block70135

_g70016block70135:
       movq   $0, %rdx
       jmp _g70016block70134

_g70016block70134:
       movq   _free_ptr(%rip), %rsi
       addq   $16, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $3, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _g70016block70132
       jmp _g70016block70133

_g70016block70133:
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rcx, %rcx
       addq   %rdx, %rcx
       leaq   _g70016(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_g70016block70132:
       movq   $0, %rax
       jmp _g70016conclusion



.globl _g70016
.align 16
_g70016:
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
       jmp _g70016start
_g70016conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main70015start:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main70015block70209
       jmp _main70015block70210

_main70015block70210:
       jmp _main70015block70208

_main70015block70208:
       jmp _main70015block70206

_main70015block70206:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70204

_main70015block70209:
       jmp _main70015block70207

_main70015block70207:
       jmp _main70015block70205

_main70015block70205:
       movq   $0, %rdx
       jmp _main70015block70204

_main70015block70204:
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
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main70015block70202
       jmp _main70015block70203

_main70015block70203:
       jmp _main70015block70201

_main70015block70201:
       jmp _main70015block70199

_main70015block70199:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70197

_main70015block70202:
       jmp _main70015block70200

_main70015block70200:
       jmp _main70015block70198

_main70015block70198:
       movq   $0, %rdx
       jmp _main70015block70197

_main70015block70197:
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
       jl _main70015block70195
       jmp _main70015block70196

_main70015block70195:
       jmp _main70015block70193

_main70015block70193:
       jmp _main70015block70191

_main70015block70191:
       movq   $0, %rdx
       jmp _main70015block70190

_main70015block70196:
       jmp _main70015block70194

_main70015block70194:
       jmp _main70015block70192

_main70015block70192:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70190

_main70015block70190:
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
       jl _main70015block70188
       jmp _main70015block70189

_main70015block70188:
       jmp _main70015block70186

_main70015block70186:
       jmp _main70015block70184

_main70015block70184:
       movq   $0, %rdx
       jmp _main70015block70183

_main70015block70189:
       jmp _main70015block70187

_main70015block70187:
       jmp _main70015block70185

_main70015block70185:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70183

_main70015block70183:
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
       jl _main70015block70181
       jmp _main70015block70182

_main70015block70182:
       jmp _main70015block70180

_main70015block70180:
       jmp _main70015block70178

_main70015block70178:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70176

_main70015block70181:
       jmp _main70015block70179

_main70015block70179:
       jmp _main70015block70177

_main70015block70177:
       movq   $0, %rdx
       jmp _main70015block70176

_main70015block70176:
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
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main70015block70174
       jmp _main70015block70175

_main70015block70174:
       jmp _main70015block70172

_main70015block70172:
       jmp _main70015block70170

_main70015block70175:
       jmp _main70015block70173

_main70015block70173:
       jmp _main70015block70171

_main70015block70170:
       movq   $0, %rdx
       jmp _main70015block70169

_main70015block70171:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70169

_main70015block70169:
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
       jl _main70015block70167
       jmp _main70015block70168

_main70015block70167:
       jmp _main70015block70165

_main70015block70165:
       jmp _main70015block70163

_main70015block70163:
       movq   $0, %rdx
       jmp _main70015block70162

_main70015block70168:
       jmp _main70015block70166

_main70015block70166:
       jmp _main70015block70164

_main70015block70164:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70162

_main70015block70162:
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
       jl _main70015block70160
       jmp _main70015block70161

_main70015block70160:
       jmp _main70015block70158

_main70015block70158:
       jmp _main70015block70156

_main70015block70156:
       movq   $0, %rdx
       jmp _main70015block70155

_main70015block70161:
       jmp _main70015block70159

_main70015block70159:
       jmp _main70015block70157

_main70015block70157:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70155

_main70015block70155:
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
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main70015block70153
       jmp _main70015block70154

_main70015block70154:
       jmp _main70015block70152

_main70015block70152:
       jmp _main70015block70150

_main70015block70150:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70148

_main70015block70153:
       jmp _main70015block70151

_main70015block70151:
       jmp _main70015block70149

_main70015block70149:
       movq   $0, %rdx
       jmp _main70015block70148

_main70015block70148:
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
       jl _main70015block70146
       jmp _main70015block70147

_main70015block70146:
       jmp _main70015block70144

_main70015block70144:
       jmp _main70015block70142

_main70015block70142:
       movq   $0, %rdx
       jmp _main70015block70141

_main70015block70147:
       jmp _main70015block70145

_main70015block70145:
       jmp _main70015block70143

_main70015block70143:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main70015block70141

_main70015block70141:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       leaq   _g70016(%rip), %rdx
       movq   $1000, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $32, %rcx
       addq   %rdx, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
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
       movq   %rdx, %rdx
       addq   %rsi, %rdx
       movq   %rcx, %rax
       addq   %rdx, %rax
       jmp _main70015conclusion



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
       jmp _main70015start
_main70015conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

