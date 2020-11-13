_minus213start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   %rcx, %rcx
       negq   %rcx
       movq   %rdx, %rax
       addq   %rcx, %rax
       jmp _minus213conclusion



.globl _minus213
.align 16
_minus213:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _minus213start
_minus213conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_zero212start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _zero212block350
       jmp _zero212block351

_zero212block350:
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $8, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero212block341
       jmp _zero212block342

_zero212block342:
       jmp _zero212block340

_zero212block340:
       jmp _zero212block338

_zero212block338:
       movq   %r15, %rdi
       movq   $8, %rsi
       callq _collect
       jmp _zero212block336

_zero212block351:
       movq   %rdx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _zero212block348
       jmp _zero212block349

_zero212block348:
       jmp _zero212block346

_zero212block341:
       jmp _zero212block339

_zero212block339:
       jmp _zero212block337

_zero212block337:
       movq   $0, %rdx
       jmp _zero212block336

_zero212block336:
       movq   _free_ptr(%rip), %rdx
       addq   $8, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $1, 0(%r11)
       movq   %rdx, %rax
       jmp _zero212conclusion

_zero212block346:
       jmp _zero212block344

_zero212block344:
       movq   $0, %rdx
       jmp _zero212block343

_zero212block349:
       jmp _zero212block347

_zero212block347:
       jmp _zero212block345

_zero212block345:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _zero212block343

_zero212block343:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _zero212(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _zero212
.align 16
_zero212:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $0, %r15
       jmp _zero212start
_zero212conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_one211start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _one211block366
       jmp _one211block367

_one211block366:
       leaq   _zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $24, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _one211block357
       jmp _one211block358

_one211block358:
       jmp _one211block356

_one211block356:
       jmp _one211block354

_one211block354:
       movq   %r15, %rdi
       movq   $24, %rsi
       callq _collect
       jmp _one211block352

_one211block367:
       movq   %rdx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _one211block364
       jmp _one211block365

_one211block365:
       jmp _one211block363

_one211block357:
       jmp _one211block355

_one211block355:
       jmp _one211block353

_one211block353:
       movq   $0, %rdx
       jmp _one211block352

_one211block352:
       movq   _free_ptr(%rip), %rdx
       addq   $24, _free_ptr(%rip)
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
       jmp _one211conclusion

_one211block364:
       jmp _one211block362

_one211block363:
       jmp _one211block361

_one211block362:
       jmp _one211block360

_one211block361:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _one211block359

_one211block360:
       movq   $0, %rdx
       jmp _one211block359

_one211block359:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _one211(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _one211
.align 16
_one211:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $16, %r15
       jmp _one211start
_one211conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_two210start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _two210block382
       jmp _two210block383

_two210block383:
       movq   %rdx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _two210block380
       jmp _two210block381

_two210block381:
       jmp _two210block379

_two210block379:
       jmp _two210block377

_two210block380:
       jmp _two210block378

_two210block378:
       jmp _two210block376

_two210block376:
       movq   $0, %rdx
       jmp _two210block375

_two210block377:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _two210block375

_two210block375:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _two210(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_two210block382:
       leaq   _zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       leaq   _one211(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $32, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _two210block373
       jmp _two210block374

_two210block374:
       jmp _two210block372

_two210block372:
       jmp _two210block370

_two210block370:
       movq   %r15, %rdi
       movq   $32, %rsi
       callq _collect
       jmp _two210block368

_two210block373:
       jmp _two210block371

_two210block371:
       jmp _two210block369

_two210block369:
       movq   $0, %rdx
       jmp _two210block368

_two210block368:
       movq   _free_ptr(%rip), %rdx
       addq   $32, _free_ptr(%rip)
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
       jmp _two210conclusion



.globl _two210
.align 16
_two210:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $16, %r15
       jmp _two210start
_two210conclusion:
       subq   $16, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_three209start:
       movq   %rdi, %rdx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _three209block398
       jmp _three209block399

_three209block398:
       leaq   _zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       leaq   _one211(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       leaq   _two210(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -24(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $40, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _three209block389
       jmp _three209block390

_three209block389:
       jmp _three209block387

_three209block387:
       jmp _three209block385

_three209block385:
       movq   $0, %rdx
       jmp _three209block384

_three209block390:
       jmp _three209block388

_three209block388:
       jmp _three209block386

_three209block386:
       movq   %r15, %rdi
       movq   $40, %rsi
       callq _collect
       jmp _three209block384

_three209block384:
       movq   _free_ptr(%rip), %rdx
       addq   $40, _free_ptr(%rip)
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
       jmp _three209conclusion

_three209block399:
       movq   %rdx, %rbx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _three209block396
       jmp _three209block397

_three209block397:
       jmp _three209block395

_three209block395:
       jmp _three209block393

_three209block396:
       jmp _three209block394

_three209block393:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _three209block391

_three209block394:
       jmp _three209block392

_three209block392:
       movq   $0, %rdx
       jmp _three209block391

_three209block391:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   %rdx, %r11
       movq   8(%r11), %rcx
       leaq   _minus213(%rip), %rdx
       movq   %rcx, %rdi
       movq   $1, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _three209(%rip), %rdx
       movq   %rcx, %rdi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax



.globl _three209
.align 16
_three209:
       pushq  %rsp
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, (%r15)
       addq   $32, %r15
       jmp _three209start
_three209conclusion:
       subq   $32, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main208start:
       leaq   _zero212(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   $42, %rbx
       leaq   _one211(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -16(%r15)
       leaq   _two210(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -24(%r15)
       leaq   _three209(%rip), %rdx
       movq   $20, %rdi
       callq *%rdx
       movq   %rax, -32(%r15)
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _main208block405
       jmp _main208block406

_main208block405:
       jmp _main208block403

_main208block403:
       jmp _main208block401

_main208block401:
       movq   $0, %rdx
       jmp _main208block400

_main208block406:
       jmp _main208block404

_main208block404:
       jmp _main208block402

_main208block402:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _main208block400

_main208block400:
       movq   _free_ptr(%rip), %rdx
       addq   $48, _free_ptr(%rip)
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
       jmp _main208conclusion



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
       movq   $0, (%r15)
       addq   $32, %r15
       jmp _main208start
_main208conclusion:
       subq   $32, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

