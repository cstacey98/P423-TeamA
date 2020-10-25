_start:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rcx
       movq   %rcx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rsi
       jl _block182314
       jmp _block182315

_block182314:
       jmp _block182312

_block182312:
       jmp _block182310

_block182310:
       movq   $0, %rcx
       jmp _block182309

_block182315:
       jmp _block182313

_block182313:
       jmp _block182311

_block182311:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182309

_block182309:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %r10
       movq   $1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _block182307
       jmp _block182308

_block182307:
       jmp _block182305

_block182305:
       jmp _block182303

_block182303:
       movq   $0, %rdx
       jmp _block182302

_block182308:
       jmp _block182306

_block182306:
       jmp _block182304

_block182304:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182302

_block182302:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182300
       jmp _block182301

_block182301:
       jmp _block182299

_block182299:
       jmp _block182297

_block182297:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182295

_block182300:
       jmp _block182298

_block182298:
       jmp _block182296

_block182296:
       movq   $0, %rdx
       jmp _block182295

_block182295:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r9
       movq   $1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _block182293
       jmp _block182294

_block182294:
       jmp _block182292

_block182292:
       jmp _block182290

_block182290:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182288

_block182293:
       jmp _block182291

_block182291:
       jmp _block182289

_block182289:
       movq   $0, %rdx
       jmp _block182288

_block182288:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdi
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182286
       jmp _block182287

_block182286:
       jmp _block182284

_block182284:
       jmp _block182282

_block182282:
       movq   $0, %rdx
       jmp _block182281

_block182287:
       jmp _block182285

_block182285:
       jmp _block182283

_block182283:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182281

_block182281:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r13
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182279
       jmp _block182280

_block182279:
       jmp _block182277

_block182277:
       jmp _block182275

_block182275:
       movq   $0, %rdx
       jmp _block182274

_block182280:
       jmp _block182278

_block182278:
       jmp _block182276

_block182276:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182274

_block182274:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r8
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rsi
       addq   $16, %rsi
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rsi
       jl _block182272
       jmp _block182273

_block182273:
       jmp _block182271

_block182271:
       jmp _block182269

_block182269:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182267

_block182272:
       jmp _block182270

_block182270:
       jmp _block182268

_block182268:
       movq   $0, %rdx
       jmp _block182267

_block182267:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r14
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %rdx
       jl _block182265
       jmp _block182266

_block182266:
       jmp _block182264

_block182264:
       jmp _block182262

_block182262:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182260

_block182265:
       jmp _block182263

_block182263:
       jmp _block182261

_block182261:
       movq   $0, %rdx
       jmp _block182260

_block182260:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       movq   $1, %rsi
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r11
       addq   $16, %r11
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r11
       jl _block182258
       jmp _block182259

_block182258:
       jmp _block182256

_block182256:
       jmp _block182254

_block182254:
       movq   $0, %rdx
       jmp _block182253

_block182259:
       jmp _block182257

_block182257:
       jmp _block182255

_block182255:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182253

_block182253:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rsi, 8(%r11)
       movq   $0, %rsi
       movq   %rdx, -24(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rsi
       movq   %rsi, %r11
       addq   $16, %r11
       movq   _fromspace_end(%rip), %rsi
       cmpq   %rsi, %r11
       jl _block182251
       jmp _block182252

_block182251:
       jmp _block182249

_block182249:
       jmp _block182247

_block182247:
       movq   $0, %rsi
       jmp _block182246

_block182252:
       jmp _block182250

_block182250:
       jmp _block182248

_block182248:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182246

_block182246:
       movq   _free_ptr(%rip), %rsi
       addq   $16, _free_ptr(%rip)
       movq   %rsi, %r11
       movq   $3, 0(%r11)
       movq   %rsi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rsi, %rsi
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %r11
       addq   $16, %r11
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %r11
       jl _block182244
       jmp _block182245

_block182245:
       jmp _block182243

_block182243:
       jmp _block182241

_block182241:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182239

_block182244:
       jmp _block182242

_block182242:
       jmp _block182240

_block182240:
       movq   $0, %rdx
       jmp _block182239

_block182239:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %r11
       movq   %rdx, -80(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %r11
       movq   %r11, %r11
       addq   $16, %r11
       movq   _fromspace_end(%rip), %rbx
       cmpq   %rbx, %r11
       jl _block182237
       jmp _block182238

_block182238:
       jmp _block182236

_block182236:
       jmp _block182234

_block182234:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182232

_block182237:
       jmp _block182235

_block182235:
       jmp _block182233

_block182233:
       movq   $0, %r11
       jmp _block182232

_block182232:
       movq   _free_ptr(%rip), %r11
       addq   $16, _free_ptr(%rip)
       movq   %r11, %r11
       movq   $3, 0(%r11)
       movq   %r11, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %r11, %r11
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %r12
       cmpq   %r12, %rdx
       jl _block182230
       jmp _block182231

_block182230:
       jmp _block182228

_block182228:
       jmp _block182226

_block182226:
       movq   $0, %rdx
       jmp _block182225

_block182231:
       jmp _block182229

_block182229:
       jmp _block182227

_block182227:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182225

_block182225:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rbx
       movq   %rdx, %rbx
       movq   $1, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -16(%rbp)
       addq   $16, -16(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -16(%rbp)
       jl _block182223
       jmp _block182224

_block182223:
       jmp _block182221

_block182221:
       jmp _block182219

_block182219:
       movq   $0, %rdx
       jmp _block182218

_block182224:
       jmp _block182222

_block182222:
       jmp _block182220

_block182220:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182218

_block182218:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %r12
       movq   %rdx, -48(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %r12
       movq   %r12, -72(%rbp)
       addq   $16, -72(%rbp)
       movq   _fromspace_end(%rip), %r12
       cmpq   %r12, -72(%rbp)
       jl _block182216
       jmp _block182217

_block182217:
       jmp _block182215

_block182215:
       jmp _block182213

_block182213:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182211

_block182216:
       jmp _block182214

_block182214:
       jmp _block182212

_block182212:
       movq   $0, %r12
       jmp _block182211

_block182211:
       movq   _free_ptr(%rip), %r12
       addq   $16, _free_ptr(%rip)
       movq   %r12, %r11
       movq   $3, 0(%r11)
       movq   %r12, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %r12, -64(%r15)
       movq   $1, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -48(%rbp)
       addq   $16, -48(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -48(%rbp)
       jl _block182209
       jmp _block182210

_block182209:
       jmp _block182207

_block182207:
       jmp _block182205

_block182205:
       movq   $0, %rdx
       jmp _block182204

_block182210:
       jmp _block182208

_block182208:
       jmp _block182206

_block182206:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182204

_block182204:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %r12
       movq   %rdx, -16(%r15)
       movq   $1, %rdx
       movq   _free_ptr(%rip), %r12
       movq   %r12, %r12
       addq   $16, %r12
       movq   _fromspace_end(%rip), -56(%rbp)
       cmpq   -56(%rbp), %r12
       jl _block182202
       jmp _block182203

_block182202:
       jmp _block182200

_block182200:
       jmp _block182198

_block182198:
       movq   $0, %r12
       jmp _block182197

_block182203:
       jmp _block182201

_block182201:
       jmp _block182199

_block182199:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182197

_block182197:
       movq   _free_ptr(%rip), %r12
       addq   $16, _free_ptr(%rip)
       movq   %r12, %r11
       movq   $3, 0(%r11)
       movq   %r12, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %r12, -40(%r15)
       movq   $1, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), -80(%rbp)
       cmpq   -80(%rbp), %rdx
       jl _block182195
       jmp _block182196

_block182195:
       jmp _block182193

_block182193:
       jmp _block182191

_block182191:
       movq   $0, %rdx
       jmp _block182190

_block182196:
       jmp _block182194

_block182194:
       jmp _block182192

_block182192:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182190

_block182190:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %r12
       movq   %rdx, -32(%r15)
       movq   $1, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -80(%rbp)
       addq   $16, -80(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -80(%rbp)
       jl _block182188
       jmp _block182189

_block182189:
       jmp _block182187

_block182187:
       jmp _block182185

_block182185:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182183

_block182188:
       jmp _block182186

_block182186:
       jmp _block182184

_block182184:
       movq   $0, %rdx
       jmp _block182183

_block182183:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %r12
       movq   %rdx, %r12
       movq   $1, -80(%rbp)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, -88(%rbp)
       addq   $16, -88(%rbp)
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, -88(%rbp)
       jl _block182181
       jmp _block182182

_block182182:
       jmp _block182180

_block182180:
       jmp _block182178

_block182178:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182176

_block182181:
       jmp _block182179

_block182179:
       jmp _block182177

_block182177:
       movq   $0, %rdx
       jmp _block182176

_block182176:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   -80(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, -80(%rbp)
       movq   %rdx, %rdx
       movq   $1, -32(%rbp)
       movq   _free_ptr(%rip), -80(%rbp)
       movq   -80(%rbp), %rax
       movq   %rax, -80(%rbp)
       addq   $16, -80(%rbp)
       movq   _fromspace_end(%rip), -88(%rbp)
       movq   -88(%rbp), %rax
       cmpq   %rax, -80(%rbp)
       jl _block182174
       jmp _block182175

_block182175:
       jmp _block182173

_block182173:
       jmp _block182171

_block182171:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _block182169

_block182174:
       jmp _block182172

_block182172:
       jmp _block182170

_block182170:
       movq   $0, -80(%rbp)
       jmp _block182169

_block182169:
       movq   _free_ptr(%rip), -72(%r15)
       addq   $16, _free_ptr(%rip)
       movq   -72(%r15), %r11
       movq   $3, 0(%r11)
       movq   -72(%r15), %r11
       movq   -32(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, -88(%rbp)
       movq   -72(%r15), %rax
       movq   %rax, -72(%r15)
       movq   %r10, %r11
       movq   -8(%r11), %r10
       movq   -8(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -8(%rbp)
       movq   %r9, %r11
       movq   -8(%r11), %r9
       movq   %rdi, %r11
       movq   -8(%r11), %rdi
       movq   %r13, %r11
       movq   -8(%r11), %r13
       movq   %r8, %r11
       movq   -8(%r11), %r8
       movq   %r14, %r11
       movq   -8(%r11), %r14
       movq   %rcx, %r11
       movq   -8(%r11), %rcx
       movq   -24(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -40(%rbp)
       movq   %rsi, %r11
       movq   -8(%r11), %rsi
       movq   -80(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -24(%rbp)
       movq   %r11, %r11
       movq   -8(%r11), %r11
       movq   %rbx, %r11
       movq   -8(%r11), %rbx
       movq   -48(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -16(%rbp)
       movq   -64(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -72(%rbp)
       movq   -16(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -48(%rbp)
       movq   -40(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -56(%rbp)
       movq   -32(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -64(%rbp)
       movq   %r12, %r11
       movq   -8(%r11), %r12
       movq   %rdx, %r11
       movq   -8(%r11), %rdx
       movq   -72(%r15), %r11
       movq   -8(%r11), %rax
       movq   %rax, -80(%rbp)
       movq   -80(%rbp), %rax
       movq   %rax, -80(%rbp)
       addq   $21, -80(%rbp)
       movq   %rdx, %rdx
       addq   -80(%rbp), %rdx
       movq   %r12, %r12
       addq   %rdx, %r12
       movq   -64(%rbp), %rdx
       addq   %r12, %rdx
       movq   -56(%rbp), %r12
       addq   %rdx, %r12
       movq   -48(%rbp), %rdx
       addq   %r12, %rdx
       movq   -72(%rbp), %r12
       addq   %rdx, %r12
       movq   -16(%rbp), %rdx
       addq   %r12, %rdx
       movq   %rbx, %rbx
       addq   %rdx, %rbx
       movq   %r11, %rdx
       addq   %rbx, %rdx
       movq   -24(%rbp), %r11
       addq   %rdx, %r11
       movq   %rsi, %rdx
       addq   %r11, %rdx
       movq   -40(%rbp), %rsi
       addq   %rdx, %rsi
       movq   %rcx, %rdx
       addq   %rsi, %rdx
       movq   %r14, %rcx
       addq   %rdx, %rcx
       movq   %r8, %rdx
       addq   %rcx, %rdx
       movq   %r13, %rcx
       addq   %rdx, %rcx
       movq   %rdi, %rdx
       addq   %rcx, %rdx
       movq   %r9, %rcx
       addq   %rdx, %rcx
       movq   -8(%rbp), %rdx
       addq   %rcx, %rdx
       movq   %r10, %rax
       addq   %rdx, %rax
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
       subq   $80, %rsp
       movq   $16384, %rdi
       movq   $16, %rsi
       callq _initialize
       movq   _rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $80, %r15
       jmp _start
_conclusion:
       subq   $80, %r15
       addq   $80, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
