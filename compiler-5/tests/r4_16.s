_minus68293start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _minus68293conclusion



.globl _minus68293
.align 16
_minus68293:
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
       jmp _minus68293start
_minus68293conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_z68292start:
       movq   %rdi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _z68292block69126
       jmp _z68292block69127

_z68292block69127:
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _z68292block69124
       jmp _z68292block69125

_z68292block69124:
       jmp _z68292block69122

_z68292block69122:
       jmp _z68292block69120

_z68292block69120:
       movq   $0, %rdx
       jmp _z68292block69119

_z68292block69125:
       jmp _z68292block69123

_z68292block69123:
       jmp _z68292block69121

_z68292block69121:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _z68292block69119

_z68292block69119:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _z68292block69117
       jmp _z68292block69118

_z68292block69118:
       jmp _z68292block69116

_z68292block69116:
       jmp _z68292block69114

_z68292block69114:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _z68292block69112

_z68292block69117:
       jmp _z68292block69115

_z68292block69115:
       jmp _z68292block69113

_z68292block69113:
       movq   $0, %rdx
       jmp _z68292block69112

_z68292block69112:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $3, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _z68292block69110
       jmp _z68292block69111

_z68292block69111:
       jmp _z68292block69109

_z68292block69109:
       jmp _z68292block69107

_z68292block69107:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _z68292block69105

_z68292block69110:
       jmp _z68292block69108

_z68292block69108:
       jmp _z68292block69106

_z68292block69106:
       movq   $0, %rdx
       jmp _z68292block69105

_z68292block69105:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $4, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _z68292block69103
       jmp _z68292block69104

_z68292block69126:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _z68292block69068
       jmp _z68292block69069

_z68292block69068:
       jmp _z68292block69066

_z68292block69066:
       jmp _z68292block69064

_z68292block69064:
       movq   $0, %rdx
       jmp _z68292block69063

_z68292block69069:
       jmp _z68292block69067

_z68292block69067:
       jmp _z68292block69065

_z68292block69065:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _z68292block69063

_z68292block69063:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _z68292conclusion

_z68292block69103:
       jmp _z68292block69101

_z68292block69101:
       jmp _z68292block69099

_z68292block69099:
       movq   $0, %rdx
       jmp _z68292block69098

_z68292block69104:
       jmp _z68292block69102

_z68292block69102:
       jmp _z68292block69100

_z68292block69100:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _z68292block69098

_z68292block69098:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $5, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _z68292block69096
       jmp _z68292block69097

_z68292block69097:
       jmp _z68292block69095

_z68292block69095:
       jmp _z68292block69093

_z68292block69093:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _z68292block69091

_z68292block69096:
       jmp _z68292block69094

_z68292block69094:
       jmp _z68292block69092

_z68292block69092:
       movq   $0, %rdx
       jmp _z68292block69091

_z68292block69091:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _z68292block69089
       jmp _z68292block69090

_z68292block69089:
       jmp _z68292block69087

_z68292block69087:
       jmp _z68292block69085

_z68292block69085:
       movq   $0, %rdx
       jmp _z68292block69084

_z68292block69090:
       jmp _z68292block69088

_z68292block69088:
       jmp _z68292block69086

_z68292block69086:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _z68292block69084

_z68292block69084:
       movq   _free_ptr(%rip), %rcx
       addq   $48, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3979, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $-1, %rdx
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $144, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _z68292block69082
       jmp _z68292block69083

_z68292block69082:
       jmp _z68292block69080

_z68292block69080:
       jmp _z68292block69078

_z68292block69078:
       movq   $0, %rdx
       jmp _z68292block69077

_z68292block69083:
       jmp _z68292block69081

_z68292block69081:
       jmp _z68292block69079

_z68292block69079:
       movq   %r15, %rdi
       movq   $144, %rsi
       callq _collect
       jmp _z68292block69077

_z68292block69077:
       movq   _free_ptr(%rip), %rcx
       addq   $144, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $35, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 48(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 56(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 72(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 80(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 88(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 104(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 120(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 136(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _z68292block69075
       jmp _z68292block69076

_z68292block69075:
       jmp _z68292block69073

_z68292block69073:
       jmp _z68292block69071

_z68292block69071:
       movq   $0, %rdx
       jmp _z68292block69070

_z68292block69076:
       jmp _z68292block69074

_z68292block69074:
       jmp _z68292block69072

_z68292block69072:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _z68292block69070

_z68292block69070:
       movq   _free_ptr(%rip), %rsi
       addq   $72, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $32657, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       leaq   _minus68293(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _z68292(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _z68292
.align 16
_z68292:
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
       jmp _z68292start
_z68292conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_o68291start:
       movq   %rdi, %rcx
       movq   %rsi, -8(%r15)
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _o68291block69191
       jmp _o68291block69192

_o68291block69191:
       movq   -8(%r15), %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o68291block69133
       jmp _o68291block69134

_o68291block69133:
       jmp _o68291block69131

_o68291block69131:
       jmp _o68291block69129

_o68291block69129:
       movq   $0, %rdx
       jmp _o68291block69128

_o68291block69134:
       jmp _o68291block69132

_o68291block69132:
       jmp _o68291block69130

_o68291block69130:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o68291block69128

_o68291block69128:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _o68291conclusion

_o68291block69192:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o68291block69189
       jmp _o68291block69190

_o68291block69189:
       jmp _o68291block69187

_o68291block69187:
       jmp _o68291block69185

_o68291block69185:
       movq   $0, %rdx
       jmp _o68291block69184

_o68291block69190:
       jmp _o68291block69188

_o68291block69188:
       jmp _o68291block69186

_o68291block69186:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o68291block69184

_o68291block69184:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o68291block69182
       jmp _o68291block69183

_o68291block69182:
       jmp _o68291block69180

_o68291block69180:
       jmp _o68291block69178

_o68291block69178:
       movq   $0, %rdx
       jmp _o68291block69177

_o68291block69183:
       jmp _o68291block69181

_o68291block69181:
       jmp _o68291block69179

_o68291block69179:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o68291block69177

_o68291block69177:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $3, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o68291block69175
       jmp _o68291block69176

_o68291block69176:
       jmp _o68291block69174

_o68291block69174:
       jmp _o68291block69172

_o68291block69172:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o68291block69170

_o68291block69175:
       jmp _o68291block69173

_o68291block69173:
       jmp _o68291block69171

_o68291block69171:
       movq   $0, %rdx
       jmp _o68291block69170

_o68291block69170:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $4, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o68291block69168
       jmp _o68291block69169

_o68291block69168:
       jmp _o68291block69166

_o68291block69166:
       jmp _o68291block69164

_o68291block69164:
       movq   $0, %rdx
       jmp _o68291block69163

_o68291block69169:
       jmp _o68291block69167

_o68291block69167:
       jmp _o68291block69165

_o68291block69165:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o68291block69163

_o68291block69163:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $5, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o68291block69161
       jmp _o68291block69162

_o68291block69162:
       jmp _o68291block69160

_o68291block69160:
       jmp _o68291block69158

_o68291block69158:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o68291block69156

_o68291block69161:
       jmp _o68291block69159

_o68291block69159:
       jmp _o68291block69157

_o68291block69157:
       movq   $0, %rdx
       jmp _o68291block69156

_o68291block69156:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o68291block69154
       jmp _o68291block69155

_o68291block69154:
       jmp _o68291block69152

_o68291block69152:
       jmp _o68291block69150

_o68291block69150:
       movq   $0, %rdx
       jmp _o68291block69149

_o68291block69155:
       jmp _o68291block69153

_o68291block69153:
       jmp _o68291block69151

_o68291block69151:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _o68291block69149

_o68291block69149:
       movq   _free_ptr(%rip), %rcx
       addq   $48, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3979, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $-1, %rdx
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $144, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o68291block69147
       jmp _o68291block69148

_o68291block69147:
       jmp _o68291block69145

_o68291block69145:
       jmp _o68291block69143

_o68291block69143:
       movq   $0, %rdx
       jmp _o68291block69142

_o68291block69148:
       jmp _o68291block69146

_o68291block69146:
       jmp _o68291block69144

_o68291block69144:
       movq   %r15, %rdi
       movq   $144, %rsi
       callq _collect
       jmp _o68291block69142

_o68291block69142:
       movq   _free_ptr(%rip), %rcx
       addq   $144, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $35, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 48(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 56(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 72(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 80(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 88(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 104(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 120(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 136(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $72, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o68291block69140
       jmp _o68291block69141

_o68291block69140:
       jmp _o68291block69138

_o68291block69138:
       jmp _o68291block69136

_o68291block69136:
       movq   $0, %rdx
       jmp _o68291block69135

_o68291block69141:
       jmp _o68291block69139

_o68291block69139:
       jmp _o68291block69137

_o68291block69137:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _o68291block69135

_o68291block69135:
       movq   _free_ptr(%rip), %rdx
       addq   $72, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $32657, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rsi
       movq   %rdx, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rsi
       movq   %rdx, %rdx
       leaq   _minus68293(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _o68291(%rip), %rdx
       movq   %rcx, %rdi
       movq   -8(%r15), %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _o68291
.align 16
_o68291:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $16, %r15
       jmp _o68291start
_o68291conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_t68290start:
       movq   %rdi, %rcx
       movq   %rsi, -8(%r15)
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _t68290block69256
       jmp _t68290block69257

_t68290block69257:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _t68290block69254
       jmp _t68290block69255

_t68290block69255:
       jmp _t68290block69253

_t68290block69253:
       jmp _t68290block69251

_t68290block69251:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t68290block69249

_t68290block69254:
       jmp _t68290block69252

_t68290block69252:
       jmp _t68290block69250

_t68290block69250:
       movq   $0, %rdx
       jmp _t68290block69249

_t68290block69249:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _t68290block69247
       jmp _t68290block69248

_t68290block69248:
       jmp _t68290block69246

_t68290block69246:
       jmp _t68290block69244

_t68290block69247:
       jmp _t68290block69245

_t68290block69245:
       jmp _t68290block69243

_t68290block69243:
       movq   $0, %rdx
       jmp _t68290block69242

_t68290block69244:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t68290block69242

_t68290block69242:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $3, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _t68290block69240
       jmp _t68290block69241

_t68290block69240:
       jmp _t68290block69238

_t68290block69238:
       jmp _t68290block69236

_t68290block69236:
       movq   $0, %rdx
       jmp _t68290block69235

_t68290block69241:
       jmp _t68290block69239

_t68290block69239:
       jmp _t68290block69237

_t68290block69237:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t68290block69235

_t68290block69235:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $4, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _t68290block69233
       jmp _t68290block69234

_t68290block69234:
       jmp _t68290block69232

_t68290block69232:
       jmp _t68290block69230

_t68290block69230:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t68290block69228

_t68290block69233:
       jmp _t68290block69231

_t68290block69231:
       jmp _t68290block69229

_t68290block69229:
       movq   $0, %rdx
       jmp _t68290block69228

_t68290block69228:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       movq   $5, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _t68290block69226
       jmp _t68290block69227

_t68290block69226:
       jmp _t68290block69224

_t68290block69224:
       jmp _t68290block69222

_t68290block69222:
       movq   $0, %rdx
       jmp _t68290block69221

_t68290block69227:
       jmp _t68290block69225

_t68290block69225:
       jmp _t68290block69223

_t68290block69223:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t68290block69221

_t68290block69221:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _t68290block69219
       jmp _t68290block69220

_t68290block69256:
       movq   -8(%r15), %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _t68290block69198
       jmp _t68290block69199

_t68290block69199:
       jmp _t68290block69197

_t68290block69197:
       jmp _t68290block69195

_t68290block69195:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t68290block69193

_t68290block69198:
       jmp _t68290block69196

_t68290block69196:
       jmp _t68290block69194

_t68290block69194:
       movq   $0, %rdx
       jmp _t68290block69193

_t68290block69193:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _t68290conclusion

_t68290block69220:
       jmp _t68290block69218

_t68290block69218:
       jmp _t68290block69216

_t68290block69216:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _t68290block69214

_t68290block69219:
       jmp _t68290block69217

_t68290block69217:
       jmp _t68290block69215

_t68290block69215:
       movq   $0, %rdx
       jmp _t68290block69214

_t68290block69214:
       movq   _free_ptr(%rip), %rsi
       addq   $48, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $3979, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %rsi
       movq   $-1, %rdx
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $144, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _t68290block69212
       jmp _t68290block69213

_t68290block69213:
       jmp _t68290block69211

_t68290block69211:
       jmp _t68290block69209

_t68290block69209:
       movq   %r15, %rdi
       movq   $144, %rsi
       callq _collect
       jmp _t68290block69207

_t68290block69212:
       jmp _t68290block69210

_t68290block69210:
       jmp _t68290block69208

_t68290block69208:
       movq   $0, %rdx
       jmp _t68290block69207

_t68290block69207:
       movq   _free_ptr(%rip), %rcx
       addq   $144, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $35, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 48(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 56(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 72(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 80(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 88(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 104(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 120(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 136(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _t68290block69205
       jmp _t68290block69206

_t68290block69205:
       jmp _t68290block69203

_t68290block69203:
       jmp _t68290block69201

_t68290block69201:
       movq   $0, %rdx
       jmp _t68290block69200

_t68290block69206:
       jmp _t68290block69204

_t68290block69204:
       jmp _t68290block69202

_t68290block69202:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _t68290block69200

_t68290block69200:
       movq   _free_ptr(%rip), %rsi
       addq   $72, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $32657, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       leaq   _minus68293(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _t68290(%rip), %rdx
       movq   %rcx, %rdi
       movq   -8(%r15), %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _t68290
.align 16
_t68290:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $16, %r15
       jmp _t68290start
_t68290conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_h68289start:
       movq   %rdi, %rcx
       movq   %rsi, -8(%r15)
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _h68289block69321
       jmp _h68289block69322

_h68289block69322:
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69319
       jmp _h68289block69320

_h68289block69320:
       jmp _h68289block69318

_h68289block69318:
       jmp _h68289block69316

_h68289block69316:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h68289block69314

_h68289block69319:
       jmp _h68289block69317

_h68289block69317:
       jmp _h68289block69315

_h68289block69315:
       movq   $0, %rdx
       jmp _h68289block69314

_h68289block69314:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69312
       jmp _h68289block69313

_h68289block69312:
       jmp _h68289block69310

_h68289block69310:
       jmp _h68289block69308

_h68289block69308:
       movq   $0, %rdx
       jmp _h68289block69307

_h68289block69313:
       jmp _h68289block69311

_h68289block69311:
       jmp _h68289block69309

_h68289block69309:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h68289block69307

_h68289block69307:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $3, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69305
       jmp _h68289block69306

_h68289block69305:
       jmp _h68289block69303

_h68289block69303:
       jmp _h68289block69301

_h68289block69301:
       movq   $0, %rdx
       jmp _h68289block69300

_h68289block69306:
       jmp _h68289block69304

_h68289block69304:
       jmp _h68289block69302

_h68289block69302:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h68289block69300

_h68289block69300:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $4, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _h68289block69298
       jmp _h68289block69299

_h68289block69299:
       jmp _h68289block69297

_h68289block69297:
       jmp _h68289block69295

_h68289block69295:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h68289block69293

_h68289block69298:
       jmp _h68289block69296

_h68289block69296:
       jmp _h68289block69294

_h68289block69294:
       movq   $0, %rdx
       jmp _h68289block69293

_h68289block69293:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $5, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69291
       jmp _h68289block69292

_h68289block69291:
       jmp _h68289block69289

_h68289block69289:
       jmp _h68289block69287

_h68289block69287:
       movq   $0, %rdx
       jmp _h68289block69286

_h68289block69292:
       jmp _h68289block69290

_h68289block69290:
       jmp _h68289block69288

_h68289block69288:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h68289block69286

_h68289block69286:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _h68289block69284
       jmp _h68289block69285

_h68289block69285:
       jmp _h68289block69283

_h68289block69283:
       jmp _h68289block69281

_h68289block69281:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _h68289block69279

_h68289block69284:
       jmp _h68289block69282

_h68289block69282:
       jmp _h68289block69280

_h68289block69280:
       movq   $0, %rdx
       jmp _h68289block69279

_h68289block69279:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3979, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rsi
       movq   $-1, %rdx
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $144, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69277
       jmp _h68289block69278

_h68289block69278:
       jmp _h68289block69276

_h68289block69276:
       jmp _h68289block69274

_h68289block69274:
       movq   %r15, %rdi
       movq   $144, %rsi
       callq _collect
       jmp _h68289block69272

_h68289block69277:
       jmp _h68289block69275

_h68289block69275:
       jmp _h68289block69273

_h68289block69273:
       movq   $0, %rdx
       jmp _h68289block69272

_h68289block69272:
       movq   _free_ptr(%rip), %rcx
       addq   $144, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $35, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 48(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 56(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 72(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 80(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 88(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 104(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 120(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 136(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69270
       jmp _h68289block69271

_h68289block69321:
       movq   -8(%r15), %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _h68289block69263
       jmp _h68289block69264

_h68289block69264:
       jmp _h68289block69262

_h68289block69262:
       jmp _h68289block69260

_h68289block69260:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h68289block69258

_h68289block69263:
       jmp _h68289block69261

_h68289block69261:
       jmp _h68289block69259

_h68289block69259:
       movq   $0, %rdx
       jmp _h68289block69258

_h68289block69258:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _h68289conclusion

_h68289block69271:
       jmp _h68289block69269

_h68289block69269:
       jmp _h68289block69267

_h68289block69267:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _h68289block69265

_h68289block69270:
       jmp _h68289block69268

_h68289block69268:
       jmp _h68289block69266

_h68289block69266:
       movq   $0, %rdx
       jmp _h68289block69265

_h68289block69265:
       movq   _free_ptr(%rip), %rsi
       addq   $72, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $32657, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       leaq   _minus68293(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _h68289(%rip), %rdx
       movq   %rcx, %rdi
       movq   -8(%r15), %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _h68289
.align 16
_h68289:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $16, %r15
       jmp _h68289start
_h68289conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f68288start:
       movq   %rdi, %rcx
       movq   %rsi, -8(%r15)
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _f68288block69386
       jmp _f68288block69387

_f68288block69386:
       movq   -8(%r15), %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f68288block69328
       jmp _f68288block69329

_f68288block69328:
       jmp _f68288block69326

_f68288block69326:
       jmp _f68288block69324

_f68288block69324:
       movq   $0, %rdx
       jmp _f68288block69323

_f68288block69329:
       jmp _f68288block69327

_f68288block69327:
       jmp _f68288block69325

_f68288block69325:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f68288block69323

_f68288block69323:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _f68288conclusion

_f68288block69387:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f68288block69384
       jmp _f68288block69385

_f68288block69384:
       jmp _f68288block69382

_f68288block69382:
       jmp _f68288block69380

_f68288block69380:
       movq   $0, %rdx
       jmp _f68288block69379

_f68288block69385:
       jmp _f68288block69383

_f68288block69383:
       jmp _f68288block69381

_f68288block69381:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f68288block69379

_f68288block69379:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f68288block69377
       jmp _f68288block69378

_f68288block69378:
       jmp _f68288block69376

_f68288block69376:
       jmp _f68288block69374

_f68288block69374:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f68288block69372

_f68288block69377:
       jmp _f68288block69375

_f68288block69375:
       jmp _f68288block69373

_f68288block69373:
       movq   $0, %rdx
       jmp _f68288block69372

_f68288block69372:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $3, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f68288block69370
       jmp _f68288block69371

_f68288block69371:
       jmp _f68288block69369

_f68288block69369:
       jmp _f68288block69367

_f68288block69367:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f68288block69365

_f68288block69370:
       jmp _f68288block69368

_f68288block69368:
       jmp _f68288block69366

_f68288block69366:
       movq   $0, %rdx
       jmp _f68288block69365

_f68288block69365:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $4, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f68288block69363
       jmp _f68288block69364

_f68288block69363:
       jmp _f68288block69361

_f68288block69361:
       jmp _f68288block69359

_f68288block69359:
       movq   $0, %rdx
       jmp _f68288block69358

_f68288block69364:
       jmp _f68288block69362

_f68288block69362:
       jmp _f68288block69360

_f68288block69360:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f68288block69358

_f68288block69358:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $5, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f68288block69356
       jmp _f68288block69357

_f68288block69357:
       jmp _f68288block69355

_f68288block69355:
       jmp _f68288block69353

_f68288block69353:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f68288block69351

_f68288block69356:
       jmp _f68288block69354

_f68288block69354:
       jmp _f68288block69352

_f68288block69352:
       movq   $0, %rdx
       jmp _f68288block69351

_f68288block69351:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f68288block69349
       jmp _f68288block69350

_f68288block69349:
       jmp _f68288block69347

_f68288block69347:
       jmp _f68288block69345

_f68288block69345:
       movq   $0, %rdx
       jmp _f68288block69344

_f68288block69350:
       jmp _f68288block69348

_f68288block69348:
       jmp _f68288block69346

_f68288block69346:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _f68288block69344

_f68288block69344:
       movq   _free_ptr(%rip), %rcx
       addq   $48, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3979, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rsi
       movq   %rcx, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $-1, %rdx
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $144, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f68288block69342
       jmp _f68288block69343

_f68288block69342:
       jmp _f68288block69340

_f68288block69340:
       jmp _f68288block69338

_f68288block69338:
       movq   $0, %rdx
       jmp _f68288block69337

_f68288block69343:
       jmp _f68288block69341

_f68288block69341:
       jmp _f68288block69339

_f68288block69339:
       movq   %r15, %rdi
       movq   $144, %rsi
       callq _collect
       jmp _f68288block69337

_f68288block69337:
       movq   _free_ptr(%rip), %rcx
       addq   $144, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $35, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 48(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 56(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 72(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 80(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 88(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 104(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 120(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 136(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _f68288block69335
       jmp _f68288block69336

_f68288block69335:
       jmp _f68288block69333

_f68288block69333:
       jmp _f68288block69331

_f68288block69331:
       movq   $0, %rdx
       jmp _f68288block69330

_f68288block69336:
       jmp _f68288block69334

_f68288block69334:
       jmp _f68288block69332

_f68288block69332:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _f68288block69330

_f68288block69330:
       movq   _free_ptr(%rip), %rsi
       addq   $72, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $32657, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       leaq   _minus68293(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _f68288(%rip), %rdx
       movq   %rcx, %rdi
       movq   -8(%r15), %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _f68288
.align 16
_f68288:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $16, %r15
       jmp _f68288start
_f68288conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_e68287start:
       movq   %rdi, %rcx
       movq   %rsi, -8(%r15)
       movq   $0, %rax
       cmpq   %rax, %rcx
       je _e68287block69451
       jmp _e68287block69452

_e68287block69451:
       movq   -8(%r15), %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _e68287block69393
       jmp _e68287block69394

_e68287block69393:
       jmp _e68287block69391

_e68287block69391:
       jmp _e68287block69389

_e68287block69389:
       movq   $0, %rdx
       jmp _e68287block69388

_e68287block69394:
       jmp _e68287block69392

_e68287block69392:
       jmp _e68287block69390

_e68287block69390:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e68287block69388

_e68287block69388:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _e68287conclusion

_e68287block69452:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e68287block69449
       jmp _e68287block69450

_e68287block69449:
       jmp _e68287block69447

_e68287block69447:
       jmp _e68287block69445

_e68287block69445:
       movq   $0, %rdx
       jmp _e68287block69444

_e68287block69450:
       jmp _e68287block69448

_e68287block69448:
       jmp _e68287block69446

_e68287block69446:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e68287block69444

_e68287block69444:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $2, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _e68287block69442
       jmp _e68287block69443

_e68287block69442:
       jmp _e68287block69440

_e68287block69440:
       jmp _e68287block69438

_e68287block69438:
       movq   $0, %rdx
       jmp _e68287block69437

_e68287block69443:
       jmp _e68287block69441

_e68287block69441:
       jmp _e68287block69439

_e68287block69439:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e68287block69437

_e68287block69437:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $3, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e68287block69435
       jmp _e68287block69436

_e68287block69436:
       jmp _e68287block69434

_e68287block69434:
       jmp _e68287block69432

_e68287block69432:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e68287block69430

_e68287block69435:
       jmp _e68287block69433

_e68287block69433:
       jmp _e68287block69431

_e68287block69431:
       movq   $0, %rdx
       jmp _e68287block69430

_e68287block69430:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $4, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _e68287block69428
       jmp _e68287block69429

_e68287block69428:
       jmp _e68287block69426

_e68287block69426:
       jmp _e68287block69424

_e68287block69424:
       movq   $0, %rdx
       jmp _e68287block69423

_e68287block69429:
       jmp _e68287block69427

_e68287block69427:
       jmp _e68287block69425

_e68287block69425:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e68287block69423

_e68287block69423:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $5, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e68287block69421
       jmp _e68287block69422

_e68287block69422:
       jmp _e68287block69420

_e68287block69420:
       jmp _e68287block69418

_e68287block69418:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e68287block69416

_e68287block69421:
       jmp _e68287block69419

_e68287block69419:
       jmp _e68287block69417

_e68287block69417:
       movq   $0, %rdx
       jmp _e68287block69416

_e68287block69416:
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
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _e68287block69414
       jmp _e68287block69415

_e68287block69414:
       jmp _e68287block69412

_e68287block69412:
       jmp _e68287block69410

_e68287block69410:
       movq   $0, %rdx
       jmp _e68287block69409

_e68287block69415:
       jmp _e68287block69413

_e68287block69413:
       jmp _e68287block69411

_e68287block69411:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _e68287block69409

_e68287block69409:
       movq   _free_ptr(%rip), %rcx
       addq   $48, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3979, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %rsi
       movq   $-1, %rdx
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   $-1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $144, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e68287block69407
       jmp _e68287block69408

_e68287block69407:
       jmp _e68287block69405

_e68287block69405:
       jmp _e68287block69403

_e68287block69403:
       movq   $0, %rdx
       jmp _e68287block69402

_e68287block69408:
       jmp _e68287block69406

_e68287block69406:
       jmp _e68287block69404

_e68287block69404:
       movq   %r15, %rdi
       movq   $144, %rsi
       callq _collect
       jmp _e68287block69402

_e68287block69402:
       movq   _free_ptr(%rip), %rcx
       addq   $144, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $35, 0(%r11)
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
       movq   %rcx, %r11
       movq   %rsi, 40(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 48(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 56(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 64(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 72(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 80(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 88(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 96(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 104(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 112(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 120(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 128(%r11)
       movq   $0, %rdx
       movq   %rcx, %r11
       movq   %rsi, 136(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   %rsi, %rcx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $72, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _e68287block69400
       jmp _e68287block69401

_e68287block69400:
       jmp _e68287block69398

_e68287block69398:
       jmp _e68287block69396

_e68287block69396:
       movq   $0, %rdx
       jmp _e68287block69395

_e68287block69401:
       jmp _e68287block69399

_e68287block69399:
       jmp _e68287block69397

_e68287block69397:
       movq   %r15, %rdi
       movq   $72, %rsi
       callq _collect
       jmp _e68287block69395

_e68287block69395:
       movq   _free_ptr(%rip), %rsi
       addq   $72, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $32657, 0(%r11)
       movq   %rsi, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 16(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 24(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 32(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 40(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 48(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 56(%r11)
       movq   $0, %rdx
       movq   %rsi, %r11
       movq   %rcx, 64(%r11)
       movq   $0, %rdx
       movq   %rsi, %rdx
       leaq   _minus68293(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _e68287(%rip), %rdx
       movq   %rcx, %rdi
       movq   -8(%r15), %rsi
       movq   %rdx, %rax
              popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _e68287
.align 16
_e68287:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq $0, (%r15)
       addq   $16, %r15
       jmp _e68287start
_e68287conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main68286start:
       leaq   _z68292(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _o68291(%rip), %rdx
       movq   $20, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _t68290(%rip), %rdx
       movq   $20, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _h68289(%rip), %rdx
       movq   $20, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _f68288(%rip), %rdx
       movq   $20, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _e68287(%rip), %rdx
       movq   $20, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rax
       jmp _main68286conclusion



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
       jmp _main68286start
_main68286conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

