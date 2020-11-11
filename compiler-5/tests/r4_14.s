_minus68051start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _minus68051conclusion



.globl _minus68051
.align 16
_minus68051:
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
       jmp _minus68051start
_minus68051conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_zero68050start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _zero68050block68188
       jmp _zero68050block68189

_zero68050block68188:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero68050block68179
       jmp _zero68050block68180

_zero68050block68179:
       jmp _zero68050block68177

_zero68050block68177:
       jmp _zero68050block68175

_zero68050block68175:
       movq   $0, %rdx
       jmp _zero68050block68174

_zero68050block68180:
       jmp _zero68050block68178

_zero68050block68178:
       jmp _zero68050block68176

_zero68050block68176:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _zero68050block68174

_zero68050block68189:
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero68050block68186
       jmp _zero68050block68187

_zero68050block68187:
       jmp _zero68050block68185

_zero68050block68185:
       jmp _zero68050block68183

_zero68050block68183:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _zero68050block68181

_zero68050block68186:
       jmp _zero68050block68184

_zero68050block68184:
       jmp _zero68050block68182

_zero68050block68182:
       movq   $0, %rdx
       jmp _zero68050block68181

_zero68050block68181:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus68051(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _zero68050(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_zero68050block68174:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp _zero68050conclusion



.globl _zero68050
.align 16
_zero68050:
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
       jmp _zero68050start
_zero68050conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_one68049start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _one68049block68204
       jmp _one68049block68205

_one68049block68205:
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _one68049block68202
       jmp _one68049block68203

_one68049block68203:
       jmp _one68049block68201

_one68049block68204:
       leaq   _zero68050(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $24, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _one68049block68195
       jmp _one68049block68196

_one68049block68195:
       jmp _one68049block68193

_one68049block68193:
       jmp _one68049block68191

_one68049block68191:
       movq   $0, %rdx
       jmp _one68049block68190

_one68049block68196:
       jmp _one68049block68194

_one68049block68194:
       jmp _one68049block68192

_one68049block68192:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _one68049block68190

_one68049block68190:
       movq   _free_ptr(%rip), %rcx
       addq   $24, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $133, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _one68049conclusion

_one68049block68201:
       jmp _one68049block68199

_one68049block68199:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _one68049block68197

_one68049block68202:
       jmp _one68049block68200

_one68049block68200:
       jmp _one68049block68198

_one68049block68198:
       movq   $0, %rdx
       jmp _one68049block68197

_one68049block68197:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus68051(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _one68049(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _one68049
.align 16
_one68049:
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
       jmp _one68049start
_one68049conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_two68048start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _two68048block68220
       jmp _two68048block68221

_two68048block68221:
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _two68048block68218
       jmp _two68048block68219

_two68048block68219:
       jmp _two68048block68217

_two68048block68217:
       jmp _two68048block68215

_two68048block68215:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _two68048block68213

_two68048block68218:
       jmp _two68048block68216

_two68048block68216:
       jmp _two68048block68214

_two68048block68214:
       movq   $0, %rdx
       jmp _two68048block68213

_two68048block68220:
       leaq   _zero68050(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rcx
       movq   $42, %rsi
       leaq   _one68049(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $32, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _two68048block68211
       jmp _two68048block68212

_two68048block68212:
       jmp _two68048block68210

_two68048block68210:
       jmp _two68048block68208

_two68048block68208:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _two68048block68206

_two68048block68211:
       jmp _two68048block68209

_two68048block68209:
       jmp _two68048block68207

_two68048block68207:
       movq   $0, %rdx
       jmp _two68048block68206

_two68048block68206:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $647, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _two68048conclusion

_two68048block68213:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus68051(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _two68048(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _two68048
.align 16
_two68048:
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
       jmp _two68048start
_two68048conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_three68047start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _three68047block68236
       jmp _three68047block68237

_three68047block68236:
       leaq   _zero68050(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rsi
       leaq   _one68049(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rsi
       leaq   _two68048(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $40, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _three68047block68227
       jmp _three68047block68228

_three68047block68227:
       jmp _three68047block68225

_three68047block68225:
       jmp _three68047block68223

_three68047block68223:
       movq   $0, %rdx
       jmp _three68047block68222

_three68047block68228:
       jmp _three68047block68226

_three68047block68226:
       jmp _three68047block68224

_three68047block68224:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _three68047block68222

_three68047block68222:
       movq   _free_ptr(%rip), %rcx
       addq   $40, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $1673, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _three68047conclusion

_three68047block68237:
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _three68047block68234
       jmp _three68047block68235

_three68047block68234:
       jmp _three68047block68232

_three68047block68232:
       jmp _three68047block68230

_three68047block68230:
       movq   $0, %rdx
       jmp _three68047block68229

_three68047block68235:
       jmp _three68047block68233

_three68047block68233:
       jmp _three68047block68231

_three68047block68231:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _three68047block68229

_three68047block68229:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus68051(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _three68047(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _three68047
.align 16
_three68047:
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
       jmp _three68047start
_three68047conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main68046start:
       leaq   _zero68050(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $42, %rdx
       leaq   _one68049(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _two68048(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       leaq   _three68047(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main68046block68243
       jmp _main68046block68244

_main68046block68243:
       jmp _main68046block68241

_main68046block68241:
       jmp _main68046block68239

_main68046block68239:
       movq   $0, %rdx
       jmp _main68046block68238

_main68046block68244:
       jmp _main68046block68242

_main68046block68242:
       jmp _main68046block68240

_main68046block68240:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _main68046block68238

_main68046block68238:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $3723, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rcx
       movq   %rsi, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       movq   %rdx, %r11
       movq   40(%r11), %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp _main68046conclusion



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
       jmp _main68046start
_main68046conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

