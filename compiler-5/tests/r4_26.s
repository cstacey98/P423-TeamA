g2178start:
       movq   %rdi, %rbx
       movq   $1, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl g2178block2301
       jmp g2178block2302

g2178block2301:
       jmp g2178block2299

g2178block2302:
       jmp g2178block2300

g2178block2300:
       jmp g2178block2298

g2178block2298:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp g2178block2296

g2178block2299:
       jmp g2178block2297

g2178block2297:
       movq   $0, %rdx
       jmp g2178block2296

g2178block2296:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $0, %rax
       cmpq   %rax, %rbx
       je g2178block2294
       jmp g2178block2295

g2178block2294:
       movq   $0, %rax
       jmp g2178conclusion

g2178block2295:
       movq   %rdx, %r11
       movq   8(%r11), %rdx
       movq   %rdx, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   g2178(%rip), %rdx
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



.globl g2178
.align 16
g2178:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp g2178start
g2178conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main2177start:
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main2177block2371
       jmp main2177block2372

main2177block2371:
       jmp main2177block2369

main2177block2369:
       jmp main2177block2367

main2177block2367:
       movq   $0, %rdx
       jmp main2177block2366

main2177block2372:
       jmp main2177block2370

main2177block2370:
       jmp main2177block2368

main2177block2368:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2366

main2177block2366:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -8(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main2177block2364
       jmp main2177block2365

main2177block2364:
       jmp main2177block2362

main2177block2362:
       jmp main2177block2360

main2177block2360:
       movq   $0, %rdx
       jmp main2177block2359

main2177block2365:
       jmp main2177block2363

main2177block2363:
       jmp main2177block2361

main2177block2361:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2359

main2177block2359:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main2177block2357
       jmp main2177block2358

main2177block2357:
       jmp main2177block2355

main2177block2355:
       jmp main2177block2353

main2177block2353:
       movq   $0, %rdx
       jmp main2177block2352

main2177block2358:
       jmp main2177block2356

main2177block2356:
       jmp main2177block2354

main2177block2354:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2352

main2177block2352:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main2177block2350
       jmp main2177block2351

main2177block2351:
       jmp main2177block2349

main2177block2349:
       jmp main2177block2347

main2177block2347:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2345

main2177block2350:
       jmp main2177block2348

main2177block2348:
       jmp main2177block2346

main2177block2346:
       movq   $0, %rdx
       jmp main2177block2345

main2177block2345:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -32(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main2177block2343
       jmp main2177block2344

main2177block2343:
       jmp main2177block2341

main2177block2341:
       jmp main2177block2339

main2177block2339:
       movq   $0, %rdx
       jmp main2177block2338

main2177block2344:
       jmp main2177block2342

main2177block2342:
       jmp main2177block2340

main2177block2340:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2338

main2177block2338:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -40(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main2177block2336
       jmp main2177block2337

main2177block2337:
       jmp main2177block2335

main2177block2335:
       jmp main2177block2333

main2177block2333:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2331

main2177block2336:
       jmp main2177block2334

main2177block2334:
       jmp main2177block2332

main2177block2332:
       movq   $0, %rdx
       jmp main2177block2331

main2177block2331:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -48(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main2177block2329
       jmp main2177block2330

main2177block2329:
       jmp main2177block2327

main2177block2327:
       jmp main2177block2325

main2177block2325:
       movq   $0, %rdx
       jmp main2177block2324

main2177block2330:
       jmp main2177block2328

main2177block2328:
       jmp main2177block2326

main2177block2326:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2324

main2177block2324:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -56(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main2177block2322
       jmp main2177block2323

main2177block2323:
       jmp main2177block2321

main2177block2321:
       jmp main2177block2319

main2177block2319:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2317

main2177block2322:
       jmp main2177block2320

main2177block2320:
       jmp main2177block2318

main2177block2318:
       movq   $0, %rdx
       jmp main2177block2317

main2177block2317:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -64(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main2177block2315
       jmp main2177block2316

main2177block2316:
       jmp main2177block2314

main2177block2314:
       jmp main2177block2312

main2177block2312:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2310

main2177block2315:
       jmp main2177block2313

main2177block2313:
       jmp main2177block2311

main2177block2311:
       movq   $0, %rdx
       jmp main2177block2310

main2177block2310:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -72(%r15)
       movq   $1, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main2177block2308
       jmp main2177block2309

main2177block2308:
       jmp main2177block2306

main2177block2306:
       jmp main2177block2304

main2177block2304:
       movq   $0, %rdx
       jmp main2177block2303

main2177block2309:
       jmp main2177block2307

main2177block2307:
       jmp main2177block2305

main2177block2305:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main2177block2303

main2177block2303:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -80(%r15)
       leaq   g2178(%rip), %rdx
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
       jmp main2177conclusion



.globl main
.align 16
main:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $16384, %rdi
       movq   $16384, %rsi
       callq initialize
       movq   rootstack_begin(%rip), %r15
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
       jmp main2177start
main2177conclusion:
       subq   $80, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

