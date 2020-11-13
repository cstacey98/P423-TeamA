minus213start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp minus213conclusion



.globl minus213
.align 16
minus213:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp minus213start
minus213conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
zero212start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je zero212block350
       jmp zero212block351

zero212block350:
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl zero212block341
       jmp zero212block342

zero212block342:
       jmp zero212block340

zero212block340:
       jmp zero212block338

zero212block338:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq collect
       jmp zero212block336

zero212block351:
       movq   %rdx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl zero212block348
       jmp zero212block349

zero212block348:
       jmp zero212block346

zero212block341:
       jmp zero212block339

zero212block339:
       jmp zero212block337

zero212block337:
       movq   $0, %rdx
       jmp zero212block336

zero212block336:
       movq   free_ptr(%rip), %rdx
       addq   $8, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp zero212conclusion

zero212block346:
       jmp zero212block344

zero212block344:
       movq   $0, %rdx
       jmp zero212block343

zero212block349:
       jmp zero212block347

zero212block347:
       jmp zero212block345

zero212block345:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp zero212block343

zero212block343:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   zero212(%rip), %rdx
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



.globl zero212
.align 16
zero212:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       addq   $0, %r15
       jmp zero212start
zero212conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
one211start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je one211block366
       jmp one211block367

one211block366:
       leaq   zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl one211block357
       jmp one211block358

one211block358:
       jmp one211block356

one211block356:
       jmp one211block354

one211block354:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq collect
       jmp one211block352

one211block367:
       movq   %rdx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl one211block364
       jmp one211block365

one211block365:
       jmp one211block363

one211block357:
       jmp one211block355

one211block355:
       jmp one211block353

one211block353:
       movq   $0, %rdx
       jmp one211block352

one211block352:
       movq   free_ptr(%rip), %rdx
       addq   $24, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $133, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp one211conclusion

one211block364:
       jmp one211block362

one211block363:
       jmp one211block361

one211block362:
       jmp one211block360

one211block361:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp one211block359

one211block360:
       movq   $0, %rdx
       jmp one211block359

one211block359:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   one211(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl one211
.align 16
one211:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp one211start
one211conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
two210start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je two210block382
       jmp two210block383

two210block383:
       movq   %rdx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl two210block380
       jmp two210block381

two210block381:
       jmp two210block379

two210block379:
       jmp two210block377

two210block380:
       jmp two210block378

two210block378:
       jmp two210block376

two210block376:
       movq   $0, %rdx
       jmp two210block375

two210block377:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp two210block375

two210block375:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   two210(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax

two210block382:
       leaq   zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       leaq   one211(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl two210block373
       jmp two210block374

two210block374:
       jmp two210block372

two210block372:
       jmp two210block370

two210block370:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq collect
       jmp two210block368

two210block373:
       jmp two210block371

two210block371:
       jmp two210block369

two210block369:
       movq   $0, %rdx
       jmp two210block368

two210block368:
       movq   free_ptr(%rip), %rdx
       addq   $32, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $647, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp two210conclusion



.globl two210
.align 16
two210:
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
       jmp two210start
two210conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
three209start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je three209block398
       jmp three209block399

three209block398:
       leaq   zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       leaq   one211(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       leaq   two210(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -24(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl three209block389
       jmp three209block390

three209block389:
       jmp three209block387

three209block387:
       jmp three209block385

three209block385:
       movq   $0, %rdx
       jmp three209block384

three209block390:
       jmp three209block388

three209block388:
       jmp three209block386

three209block386:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq collect
       jmp three209block384

three209block384:
       movq   free_ptr(%rip), %rdx
       addq   $40, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1673, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp three209conclusion

three209block399:
       movq   %rdx, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl three209block396
       jmp three209block397

three209block397:
       jmp three209block395

three209block395:
       jmp three209block393

three209block396:
       jmp three209block394

three209block393:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp three209block391

three209block394:
       jmp three209block392

three209block392:
       movq   $0, %rdx
       jmp three209block391

three209block391:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   three209(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       subq   $24, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax



.globl three209
.align 16
three209:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       movq   $0, 8(%r15)
       movq   $0, 16(%r15)
       addq   $24, %r15
       jmp three209start
three209conclusion:
       subq   $24, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main208start:
       leaq   zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       leaq   one211(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       leaq   two210(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -24(%r15)
       leaq   three209(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -32(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl main208block405
       jmp main208block406

main208block405:
       jmp main208block403

main208block403:
       jmp main208block401

main208block401:
       movq   $0, %rdx
       jmp main208block400

main208block406:
       jmp main208block404

main208block404:
       jmp main208block402

main208block402:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp main208block400

main208block400:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3723, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   %rbx, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   40(%r11), %rdx
       movq   %rdx, %r11
       movq   32(%r11), %rdx
       movq   %rdx, %r11
       movq   24(%r11), %rdx
       movq   %rdx, %r11
       movq   16(%r11), %rax
       jmp main208conclusion



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
       addq   $32, %r15
       jmp main208start
main208conclusion:
       subq   $32, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

