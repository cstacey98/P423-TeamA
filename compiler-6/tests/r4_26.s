_g2178start:
       movq   %rdi, %rbx
       movq   $1, %r12
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _g2178block2301
       jmp _g2178block2302

_g2178block2301:
       jmp _g2178block2299

_g2178block2302:
       jmp _g2178block2300

_g2178block2300:
       jmp _g2178block2298

_g2178block2298:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _g2178block2296

_g2178block2299:
       jmp _g2178block2297

_g2178block2297:
       movq   $0, %rdx
       jmp _g2178block2296

_g2178block2296:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $0, %rax
       cmpq   %rax, %rbx
       je _g2178block2294
       jmp _g2178block2295

_g2178block2294:
       movq   $0, %rax
       jmp _g2178conclusion

_g2178block2295:
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   _g2178(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl _g2178
.align 16
_g2178:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp _g2178start
_g2178conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
_main2177start:
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2177block2371
       jmp _main2177block2372

_main2177block2371:
       jmp _main2177block2369

_main2177block2369:
       jmp _main2177block2367

_main2177block2367:
       movq   $0, %rdx
       jmp _main2177block2366

_main2177block2372:
       jmp _main2177block2370

_main2177block2370:
       jmp _main2177block2368

_main2177block2368:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2366

_main2177block2366:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main2177block2364
       jmp _main2177block2365

_main2177block2364:
       jmp _main2177block2362

_main2177block2362:
       jmp _main2177block2360

_main2177block2360:
       movq   $0, %rdx
       jmp _main2177block2359

_main2177block2365:
       jmp _main2177block2363

_main2177block2363:
       jmp _main2177block2361

_main2177block2361:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2359

_main2177block2359:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main2177block2357
       jmp _main2177block2358

_main2177block2357:
       jmp _main2177block2355

_main2177block2355:
       jmp _main2177block2353

_main2177block2353:
       movq   $0, %rdx
       jmp _main2177block2352

_main2177block2358:
       jmp _main2177block2356

_main2177block2356:
       jmp _main2177block2354

_main2177block2354:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2352

_main2177block2352:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2177block2350
       jmp _main2177block2351

_main2177block2351:
       jmp _main2177block2349

_main2177block2349:
       jmp _main2177block2347

_main2177block2347:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2345

_main2177block2350:
       jmp _main2177block2348

_main2177block2348:
       jmp _main2177block2346

_main2177block2346:
       movq   $0, %rdx
       jmp _main2177block2345

_main2177block2345:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -32(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2177block2343
       jmp _main2177block2344

_main2177block2343:
       jmp _main2177block2341

_main2177block2341:
       jmp _main2177block2339

_main2177block2339:
       movq   $0, %rdx
       jmp _main2177block2338

_main2177block2344:
       jmp _main2177block2342

_main2177block2342:
       jmp _main2177block2340

_main2177block2340:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2338

_main2177block2338:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -40(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main2177block2336
       jmp _main2177block2337

_main2177block2337:
       jmp _main2177block2335

_main2177block2335:
       jmp _main2177block2333

_main2177block2333:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2331

_main2177block2336:
       jmp _main2177block2334

_main2177block2334:
       jmp _main2177block2332

_main2177block2332:
       movq   $0, %rdx
       jmp _main2177block2331

_main2177block2331:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -48(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2177block2329
       jmp _main2177block2330

_main2177block2329:
       jmp _main2177block2327

_main2177block2327:
       jmp _main2177block2325

_main2177block2325:
       movq   $0, %rdx
       jmp _main2177block2324

_main2177block2330:
       jmp _main2177block2328

_main2177block2328:
       jmp _main2177block2326

_main2177block2326:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2324

_main2177block2324:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main2177block2322
       jmp _main2177block2323

_main2177block2323:
       jmp _main2177block2321

_main2177block2321:
       jmp _main2177block2319

_main2177block2319:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2317

_main2177block2322:
       jmp _main2177block2320

_main2177block2320:
       jmp _main2177block2318

_main2177block2318:
       movq   $0, %rdx
       jmp _main2177block2317

_main2177block2317:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -64(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2177block2315
       jmp _main2177block2316

_main2177block2316:
       jmp _main2177block2314

_main2177block2314:
       jmp _main2177block2312

_main2177block2312:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2310

_main2177block2315:
       jmp _main2177block2313

_main2177block2313:
       jmp _main2177block2311

_main2177block2311:
       movq   $0, %rdx
       jmp _main2177block2310

_main2177block2310:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -72(%r15)
       movq   $1, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main2177block2308
       jmp _main2177block2309

_main2177block2308:
       jmp _main2177block2306

_main2177block2306:
       jmp _main2177block2304

_main2177block2304:
       movq   $0, %rdx
       jmp _main2177block2303

_main2177block2309:
       jmp _main2177block2307

_main2177block2307:
       jmp _main2177block2305

_main2177block2305:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main2177block2303

_main2177block2303:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -80(%r15)
       leaq   _g2178(%rip), %rdx
       movq   $1000, %rdi
       callq *%rdx
       movq   %rax, %rdx
       movq   $32, %rcx
       addq   %rdx, %rcx
       movq   -8(%r15), %r11
       movq   8(%r11), %rdx
       movq   -16(%r15), %r11
       movq   8(%r11), %rsi
       movq   -24(%r15), %r11
       movq   8(%r11), %rdi
       movq   -32(%r15), %r11
       movq   8(%r11), %r8
       movq   -40(%r15), %r11
       movq   8(%r11), %r9
       movq   -48(%r15), %r11
       movq   8(%r11), %r10
       movq   -56(%r15), %r11
       movq   8(%r11), %rbx
       movq   -64(%r15), %r11
       movq   8(%r11), %r12
       movq   -72(%r15), %r11
       movq   8(%r11), %r13
       movq   -80(%r15), %r11
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
       jmp _main2177conclusion



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
       movq   $0, 16(%r15)
       movq   $0, 24(%r15)
       movq   $0, 32(%r15)
       movq   $0, 40(%r15)
       movq   $0, 48(%r15)
       movq   $0, 56(%r15)
       movq   $0, 64(%r15)
       movq   $0, 72(%r15)
       addq   $80, %r15
       jmp _main2177start
_main2177conclusion:
       subq   $80, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

