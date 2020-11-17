start:
       movq   $20, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164339
       jmp block164340

block164339:
       jmp block164337

block164337:
       jmp block164335

block164335:
       movq   $0, %rdx
       jmp block164334

block164340:
       jmp block164338

block164338:
       jmp block164336

block164336:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp block164334

block164334:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   $1, %r14
       movq   $2, %r13
       movq   $3, -8(%rbp)
       movq   $4, %rbx
       movq   $5, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164332
       jmp block164333

block164333:
       jmp block164331

block164331:
       jmp block164329

block164329:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164327

block164332:
       jmp block164330

block164330:
       jmp block164328

block164328:
       movq   $0, %rdx
       jmp block164327

block164327:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %r14, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, -24(%r15)
       movq   $2, %r13
       movq   $3, %rbx
       movq   $4, %r14
       movq   $5, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164325
       jmp block164326

block164325:
       jmp block164323

block164323:
       jmp block164321

block164321:
       movq   $0, %rdx
       jmp block164320

block164326:
       jmp block164324

block164324:
       jmp block164322

block164322:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164320

block164320:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $139, 0(%r11)
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %rbx
       movq   %rdx, -24(%r15)
       movq   $3, %r14
       movq   $4, %r12
       movq   $5, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164318
       jmp block164319

block164318:
       jmp block164316

block164316:
       jmp block164314

block164314:
       movq   $0, %rdx
       jmp block164313

block164319:
       jmp block164317

block164317:
       jmp block164315

block164315:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164313

block164313:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $267, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r13
       movq   $2, %r14
       movq   %rdx, -24(%r15)
       movq   $4, %r12
       movq   $5, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164311
       jmp block164312

block164312:
       jmp block164310

block164310:
       jmp block164308

block164308:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164306

block164311:
       jmp block164309

block164309:
       jmp block164307

block164307:
       movq   $0, %rdx
       jmp block164306

block164306:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $523, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r12
       movq   $2, %rbx
       movq   $3, %r14
       movq   %rdx, -24(%r15)
       movq   $5, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164304
       jmp block164305

block164305:
       jmp block164303

block164303:
       jmp block164301

block164301:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164299

block164304:
       jmp block164302

block164302:
       jmp block164300

block164300:
       movq   $0, %rdx
       jmp block164299

block164299:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1035, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r12
       movq   $2, %rbx
       movq   $3, %r13
       movq   $4, %r14
       movq   %rdx, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164297
       jmp block164298

block164297:
       jmp block164295

block164295:
       jmp block164293

block164293:
       movq   $0, %rdx
       jmp block164292

block164298:
       jmp block164296

block164296:
       jmp block164294

block164294:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164292

block164292:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $2059, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r13
       movq   $2, -8(%rbp)
       movq   $3, %r14
       movq   $4, %r12
       movq   $5, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164290
       jmp block164291

block164290:
       jmp block164288

block164288:
       jmp block164286

block164286:
       movq   $0, %rdx
       jmp block164285

block164291:
       jmp block164289

block164289:
       jmp block164287

block164287:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164285

block164285:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r13
       movq   $2, -8(%rbp)
       movq   $3, %r12
       movq   $4, %r14
       movq   $5, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164283
       jmp block164284

block164284:
       jmp block164282

block164282:
       jmp block164280

block164280:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164278

block164283:
       jmp block164281

block164281:
       jmp block164279

block164279:
       movq   $0, %rdx
       jmp block164278

block164278:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r14
       movq   $2, -8(%rbp)
       movq   $3, %r12
       movq   $4, %r13
       movq   $5, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164276
       jmp block164277

block164276:
       jmp block164274

block164274:
       jmp block164272

block164272:
       movq   $0, %rdx
       jmp block164271

block164277:
       jmp block164275

block164275:
       jmp block164273

block164273:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164271

block164271:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %r14, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, -8(%rbp)
       movq   $2, %r14
       movq   $3, %r13
       movq   $4, %r12
       movq   $5, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164269
       jmp block164270

block164269:
       jmp block164267

block164267:
       jmp block164265

block164265:
       movq   $0, %rdx
       jmp block164264

block164270:
       jmp block164268

block164268:
       jmp block164266

block164266:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164264

block164264:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %rbx
       movq   $2, %r12
       movq   $3, %r13
       movq   $4, %r14
       movq   $5, -8(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl block164262
       jmp block164263

block164262:
       jmp block164260

block164260:
       jmp block164258

block164258:
       movq   $0, %rdx
       jmp block164257

block164263:
       jmp block164261

block164261:
       jmp block164259

block164259:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164257

block164257:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %rbx
       movq   $2, %r12
       movq   $3, %r13
       movq   $4, %r14
       movq   $5, -8(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164255
       jmp block164256

block164256:
       jmp block164254

block164254:
       jmp block164252

block164252:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164250

block164255:
       jmp block164253

block164253:
       jmp block164251

block164251:
       movq   $0, %rdx
       jmp block164250

block164250:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, -8(%rbp)
       movq   $2, %r14
       movq   $3, %rbx
       movq   $4, %r12
       movq   $5, %r13
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164248
       jmp block164249

block164249:
       jmp block164247

block164247:
       jmp block164245

block164245:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164243

block164248:
       jmp block164246

block164246:
       jmp block164244

block164244:
       movq   $0, %rdx
       jmp block164243

block164243:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r13, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %r13
       movq   $2, %rbx
       movq   $3, %r12
       movq   $4, %r14
       movq   $5, -8(%rbp)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $48, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl block164241
       jmp block164242

block164241:
       jmp block164239

block164239:
       jmp block164237

block164237:
       movq   $0, %rdx
       jmp block164236

block164242:
       jmp block164240

block164240:
       jmp block164238

block164238:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp block164236

block164236:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $11, 0(%r11)
       movq   %rdx, %r11
       movq   %r13, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r12, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %r14, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -8(%rbp), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   -56(%r15), %r11
       movq   8(%r11), %rdx
       movq   %rdx, %rax
       addq   $22, %rax
       jmp conclusion



.globl main
main:
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
       callq initialize
       movq   rootstack_begin(%rip), %r15
       movq $0, (%r15)
       addq   $160, %r15
       jmp start
conclusion:
       subq   $160, %r15
       addq   $80, %rsp
       popq   %r15
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
