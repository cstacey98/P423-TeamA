o1735start:
       movq   %rdi, %rbx
       movq   %rsi, -8(%r15)
       movq   $0, %rax
       cmpq   %rax, %rbx
       je o1735block1908
       jmp o1735block1909

o1735block1909:
       movq   $1, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl o1735block1906
       jmp o1735block1907

o1735block1907:
       jmp o1735block1905

o1735block1905:
       jmp o1735block1903

o1735block1903:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp o1735block1901

o1735block1906:
       jmp o1735block1904

o1735block1904:
       jmp o1735block1902

o1735block1902:
       movq   $0, %rdx
       jmp o1735block1901

o1735block1901:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -16(%r15)
       movq   $2, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl o1735block1899
       jmp o1735block1900

o1735block1899:
       jmp o1735block1897

o1735block1897:
       jmp o1735block1895

o1735block1895:
       movq   $0, %rdx
       jmp o1735block1894

o1735block1900:
       jmp o1735block1898

o1735block1898:
       jmp o1735block1896

o1735block1896:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp o1735block1894

o1735block1894:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -24(%r15)
       movq   $1, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl o1735block1892
       jmp o1735block1893

o1735block1893:
       jmp o1735block1891

o1735block1891:
       jmp o1735block1889

o1735block1889:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp o1735block1887

o1735block1892:
       jmp o1735block1890

o1735block1890:
       jmp o1735block1888

o1735block1888:
       movq   $0, %rdx
       jmp o1735block1887

o1735block1887:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -32(%r15)
       movq   $2, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl o1735block1885
       jmp o1735block1886

o1735block1886:
       jmp o1735block1884

o1735block1884:
       jmp o1735block1882

o1735block1882:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp o1735block1880

o1735block1885:
       jmp o1735block1883

o1735block1883:
       jmp o1735block1881

o1735block1881:
       movq   $0, %rdx
       jmp o1735block1880

o1735block1880:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -40(%r15)
       movq   $1, %r12
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl o1735block1878
       jmp o1735block1879

o1735block1879:
       jmp o1735block1877

o1735block1877:
       jmp o1735block1875

o1735block1875:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp o1735block1873

o1735block1878:
       jmp o1735block1876

o1735block1876:
       jmp o1735block1874

o1735block1874:
       movq   $0, %rdx
       jmp o1735block1873

o1735block1873:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %r12, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, -48(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl o1735block1871
       jmp o1735block1872

o1735block1872:
       jmp o1735block1870

o1735block1871:
       jmp o1735block1869

o1735block1869:
       jmp o1735block1867

o1735block1867:
       movq   $0, %rdx
       jmp o1735block1866

o1735block1908:
       movq   -8(%r15), %rax
       movq   %rax, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl o1735block1864
       jmp o1735block1865

o1735block1865:
       jmp o1735block1863

o1735block1863:
       jmp o1735block1861

o1735block1870:
       jmp o1735block1868

o1735block1868:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq collect
       jmp o1735block1866

o1735block1866:
       movq   free_ptr(%rip), %rdx
       addq   $48, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3979, 0(%r11)
       movq   %rdx, %r11
       movq   -16(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -24(%r15), %rax
       movq   %rax, 16(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -32(%r15), %rax
       movq   %rax, 24(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -40(%r15), %rax
       movq   %rax, 32(%r11)
       movq   $0, %rcx
       movq   %rdx, %r11
       movq   -48(%r15), %rax
       movq   %rax, 40(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   $1, %rdx
       negq   %rdx
       movq   %rbx, %rcx
       addq   %rdx, %rcx
       leaq   o1735(%rip), %rdx
       movq   %rcx, %rdi
       movq   -8(%r15), %rsi
       movq   %rdx, %rax
       subq   $48, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       jmp *%rax

o1735block1861:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp o1735block1859

o1735block1864:
       jmp o1735block1862

o1735block1862:
       jmp o1735block1860

o1735block1860:
       movq   $0, %rdx
       jmp o1735block1859

o1735block1859:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp o1735conclusion



.globl o1735
.align 16
o1735:
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
       movq   $0, 24(%r15)
       movq   $0, 32(%r15)
       movq   $0, 40(%r15)
       addq   $48, %r15
       jmp o1735start
o1735conclusion:
       subq   $48, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
t1734start:
       movq   %rdi, %rdx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl t1734block1915
       jmp t1734block1916

t1734block1916:
       jmp t1734block1914

t1734block1915:
       jmp t1734block1913

t1734block1913:
       jmp t1734block1911

t1734block1911:
       movq   $0, %rdx
       jmp t1734block1910

t1734block1914:
       jmp t1734block1912

t1734block1912:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp t1734block1910

t1734block1910:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp t1734conclusion



.globl t1734
.align 16
t1734:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp t1734start
t1734conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
h1733start:
       movq   %rdi, %rdx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl h1733block1922
       jmp h1733block1923

h1733block1922:
       jmp h1733block1920

h1733block1920:
       jmp h1733block1918

h1733block1918:
       movq   $0, %rdx
       jmp h1733block1917

h1733block1923:
       jmp h1733block1921

h1733block1921:
       jmp h1733block1919

h1733block1919:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp h1733block1917

h1733block1917:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp h1733conclusion



.globl h1733
.align 16
h1733:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp h1733start
h1733conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
f1732start:
       movq   %rdi, %rdx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl f1732block1929
       jmp f1732block1930

f1732block1930:
       jmp f1732block1928

f1732block1928:
       jmp f1732block1926

f1732block1929:
       jmp f1732block1927

f1732block1927:
       jmp f1732block1925

f1732block1925:
       movq   $0, %rdx
       jmp f1732block1924

f1732block1926:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp f1732block1924

f1732block1924:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp f1732conclusion



.globl f1732
.align 16
f1732:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp f1732start
f1732conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
e1731start:
       movq   %rdi, %rdx
       movq   %rdx, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl e1731block1936
       jmp e1731block1937

e1731block1936:
       jmp e1731block1934

e1731block1934:
       jmp e1731block1932

e1731block1932:
       movq   $0, %rdx
       jmp e1731block1931

e1731block1937:
       jmp e1731block1935

e1731block1935:
       jmp e1731block1933

e1731block1933:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp e1731block1931

e1731block1931:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp e1731conclusion



.globl e1731
.align 16
e1731:
       pushq  %rbp
       pushq  %rbx
       pushq  %r12
       pushq  %r13
       pushq  %r14
       movq   %rsp, %rbp
       subq   $0, %rsp
       movq   $0, 0(%r15)
       addq   $8, %r15
       jmp e1731start
e1731conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq
main1730start:
       movq   $42, %rbx
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1730block1950
       jmp main1730block1951

main1730block1950:
       jmp main1730block1948

main1730block1948:
       jmp main1730block1946

main1730block1946:
       movq   $0, %rdx
       jmp main1730block1945

main1730block1951:
       jmp main1730block1949

main1730block1949:
       jmp main1730block1947

main1730block1947:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1730block1945

main1730block1945:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rbx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   o1735(%rip), %rdx
       movq   $1, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   t1734(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rcx
       leaq   h1733(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, -8(%r15)
       movq   free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl main1730block1943
       jmp main1730block1944

main1730block1943:
       jmp main1730block1941

main1730block1944:
       jmp main1730block1942

main1730block1942:
       jmp main1730block1940

main1730block1940:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq collect
       jmp main1730block1938

main1730block1941:
       jmp main1730block1939

main1730block1939:
       movq   $0, %rdx
       jmp main1730block1938

main1730block1938:
       movq   free_ptr(%rip), %rdx
       addq   $16, free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   -8(%r15), %rax
       movq   %rax, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   e1731(%rip), %rdx
       movq   %rcx, %rdi
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
       jmp main1730conclusion



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
       addq   $8, %r15
       jmp main1730start
main1730conclusion:
       subq   $8, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       retq

