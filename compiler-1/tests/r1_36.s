_start:
       callq _read_int
       movq   %rax, -8(%rbp)
       callq _read_int
       movq   %rax, -16(%rbp)
       callq _read_int
       movq   %rax, -24(%rbp)
       callq _read_int
       movq   %rax, -32(%rbp)
       callq _read_int
       movq   %rax, -40(%rbp)
       callq _read_int
       movq   %rax, -48(%rbp)
       callq _read_int
       movq   %rax, -56(%rbp)
       callq _read_int
       movq   %rax, -64(%rbp)
       callq _read_int
       movq   %rax, -72(%rbp)
       callq _read_int
       movq   %rax, -80(%rbp)
       callq _read_int
       movq   %rax, -88(%rbp)
       callq _read_int
       movq   %rax, -96(%rbp)
       callq _read_int
       movq   %rax, -104(%rbp)
       callq _read_int
       movq   %rax, -112(%rbp)
       callq _read_int
       movq   %rax, -120(%rbp)
       callq _read_int
       movq   %rax, -128(%rbp)
       movq   -16(%rbp), %rax
       movq   %rax, -136(%rbp)
       negq   -136(%rbp)
       movq   -136(%rbp), %rax
       movq   %rax, -144(%rbp)
       movq   -8(%rbp), %rax
       addq   %rax, -144(%rbp)
       movq   -32(%rbp), %rax
       movq   %rax, -152(%rbp)
       negq   -152(%rbp)
       movq   -152(%rbp), %rax
       movq   %rax, -160(%rbp)
       movq   -24(%rbp), %rax
       addq   %rax, -160(%rbp)
       movq   -160(%rbp), %rax
       movq   %rax, -168(%rbp)
       movq   -144(%rbp), %rax
       addq   %rax, -168(%rbp)
       movq   -48(%rbp), %rax
       movq   %rax, -176(%rbp)
       negq   -176(%rbp)
       movq   -176(%rbp), %rax
       movq   %rax, -184(%rbp)
       movq   -40(%rbp), %rax
       addq   %rax, -184(%rbp)
       movq   -64(%rbp), %rax
       movq   %rax, -192(%rbp)
       negq   -192(%rbp)
       movq   -192(%rbp), %rax
       movq   %rax, -200(%rbp)
       movq   -56(%rbp), %rax
       addq   %rax, -200(%rbp)
       movq   -200(%rbp), %rax
       movq   %rax, -208(%rbp)
       movq   -184(%rbp), %rax
       addq   %rax, -208(%rbp)
       movq   -208(%rbp), %rax
       movq   %rax, -216(%rbp)
       movq   -168(%rbp), %rax
       addq   %rax, -216(%rbp)
       movq   -80(%rbp), %rax
       movq   %rax, -224(%rbp)
       negq   -224(%rbp)
       movq   -224(%rbp), %rax
       movq   %rax, -232(%rbp)
       movq   -72(%rbp), %rax
       addq   %rax, -232(%rbp)
       movq   -96(%rbp), %rax
       movq   %rax, -240(%rbp)
       negq   -240(%rbp)
       movq   -240(%rbp), %rax
       movq   %rax, -248(%rbp)
       movq   -88(%rbp), %rax
       addq   %rax, -248(%rbp)
       movq   -248(%rbp), %rax
       movq   %rax, -256(%rbp)
       movq   -232(%rbp), %rax
       addq   %rax, -256(%rbp)
       movq   -112(%rbp), %rax
       movq   %rax, -264(%rbp)
       negq   -264(%rbp)
       movq   -264(%rbp), %rax
       movq   %rax, -272(%rbp)
       movq   -104(%rbp), %rax
       addq   %rax, -272(%rbp)
       movq   -128(%rbp), %rax
       movq   %rax, -280(%rbp)
       negq   -280(%rbp)
       movq   -280(%rbp), %rax
       movq   %rax, -288(%rbp)
       movq   -120(%rbp), %rax
       addq   %rax, -288(%rbp)
       movq   -288(%rbp), %rax
       movq   %rax, -296(%rbp)
       movq   -272(%rbp), %rax
       addq   %rax, -296(%rbp)
       movq   -296(%rbp), %rax
       movq   %rax, -304(%rbp)
       movq   -256(%rbp), %rax
       addq   %rax, -304(%rbp)
       movq   -304(%rbp), %rax
       movq   %rax, -312(%rbp)
       movq   -216(%rbp), %rax
       addq   %rax, -312(%rbp)
       movq   $42, %rax
       addq   -312(%rbp), %rax
       jmp _conclusion

.globl _main
_main:
       pushq  %rbp
       movq   %rsp, %rbp
       subq   $320, %rsp
       jmp _start
_conclusion:
       addq   $320, %rsp
       popq   %rbp
       retq
