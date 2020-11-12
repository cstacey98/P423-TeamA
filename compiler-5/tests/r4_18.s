_o1735start:
       movq   %rdi, %rdx
       movq   %rsi, %rcx
       movq   $0, %rax
       cmpq   %rax, %rdx
       je _o1735block1908
       jmp _o1735block1909

_o1735block1909:
       movq   $1, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o1735block1906
       jmp _o1735block1907

_o1735block1907:
       jmp _o1735block1905

_o1735block1905:
       jmp _o1735block1903

_o1735block1903:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o1735block1901

_o1735block1906:
       jmp _o1735block1904

_o1735block1904:
       jmp _o1735block1902

_o1735block1902:
       movq   $0, %rdx
       jmp _o1735block1901

_o1735block1901:
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
       jl _o1735block1899
       jmp _o1735block1900

_o1735block1899:
       jmp _o1735block1897

_o1735block1897:
       jmp _o1735block1895

_o1735block1895:
       movq   $0, %rdx
       jmp _o1735block1894

_o1735block1900:
       jmp _o1735block1898

_o1735block1898:
       jmp _o1735block1896

_o1735block1896:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o1735block1894

_o1735block1894:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o1735block1892
       jmp _o1735block1893

_o1735block1893:
       jmp _o1735block1891

_o1735block1891:
       jmp _o1735block1889

_o1735block1889:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o1735block1887

_o1735block1892:
       jmp _o1735block1890

_o1735block1890:
       jmp _o1735block1888

_o1735block1888:
       movq   $0, %rdx
       jmp _o1735block1887

_o1735block1887:
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
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o1735block1885
       jmp _o1735block1886

_o1735block1886:
       jmp _o1735block1884

_o1735block1884:
       jmp _o1735block1882

_o1735block1882:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o1735block1880

_o1735block1885:
       jmp _o1735block1883

_o1735block1883:
       jmp _o1735block1881

_o1735block1881:
       movq   $0, %rdx
       jmp _o1735block1880

_o1735block1880:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rdx
       movq   $1, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _o1735block1878
       jmp _o1735block1879

_o1735block1879:
       jmp _o1735block1877

_o1735block1877:
       jmp _o1735block1875

_o1735block1875:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o1735block1873

_o1735block1878:
       jmp _o1735block1876

_o1735block1876:
       jmp _o1735block1874

_o1735block1874:
       movq   $0, %rdx
       jmp _o1735block1873

_o1735block1873:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $3, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $48, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o1735block1871
       jmp _o1735block1872

_o1735block1872:
       jmp _o1735block1870

_o1735block1871:
       jmp _o1735block1869

_o1735block1869:
       jmp _o1735block1867

_o1735block1867:
       movq   $0, %rdx
       jmp _o1735block1866

_o1735block1908:
       movq   %rcx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _o1735block1864
       jmp _o1735block1865

_o1735block1865:
       jmp _o1735block1863

_o1735block1863:
       jmp _o1735block1861

_o1735block1870:
       jmp _o1735block1868

_o1735block1868:
       movq   %r15, %rdi
       movq   $48, %rsi
       callq _collect
       jmp _o1735block1866

_o1735block1866:
       movq   _free_ptr(%rip), %rdi
       addq   $48, _free_ptr(%rip)
       movq   %rdi, %r11
       movq   $3979, 0(%r11)
       movq   %rdi, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 16(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 24(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 32(%r11)
       movq   $0, %rsi
       movq   %rdi, %r11
       movq   %rdx, 40(%r11)
       movq   $0, %rsi
       movq   %rdi, %rsi
       movq   $1, %rsi
       negq   %rsi
       movq   %rdx, %rdi
       addq   %rsi, %rdi
       leaq   _o1735(%rip), %rdx
       movq   %rdi, %rdi
       movq   %rcx, %rsi
       movq   %rdx, %rax
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       jmp *%rax

_o1735block1861:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _o1735block1859

_o1735block1864:
       jmp _o1735block1862

_o1735block1862:
       jmp _o1735block1860

_o1735block1860:
       movq   $0, %rdx
       jmp _o1735block1859

_o1735block1859:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _o1735conclusion



.globl _o1735
.align 16
_o1735:
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
       jmp _o1735start
_o1735conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_t1734start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _t1734block1915
       jmp _t1734block1916

_t1734block1916:
       jmp _t1734block1914

_t1734block1915:
       jmp _t1734block1913

_t1734block1913:
       jmp _t1734block1911

_t1734block1911:
       movq   $0, %rdx
       jmp _t1734block1910

_t1734block1914:
       jmp _t1734block1912

_t1734block1912:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _t1734block1910

_t1734block1910:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _t1734conclusion



.globl _t1734
.align 16
_t1734:
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
       jmp _t1734start
_t1734conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_h1733start:
       movq   %rdi, %rdx
       movq   %rdx, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _h1733block1922
       jmp _h1733block1923

_h1733block1922:
       jmp _h1733block1920

_h1733block1920:
       jmp _h1733block1918

_h1733block1918:
       movq   $0, %rdx
       jmp _h1733block1917

_h1733block1923:
       jmp _h1733block1921

_h1733block1921:
       jmp _h1733block1919

_h1733block1919:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _h1733block1917

_h1733block1917:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rax
       jmp _h1733conclusion



.globl _h1733
.align 16
_h1733:
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
       jmp _h1733start
_h1733conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_f1732start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _f1732block1929
       jmp _f1732block1930

_f1732block1930:
       jmp _f1732block1928

_f1732block1928:
       jmp _f1732block1926

_f1732block1929:
       jmp _f1732block1927

_f1732block1927:
       jmp _f1732block1925

_f1732block1925:
       movq   $0, %rdx
       jmp _f1732block1924

_f1732block1926:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _f1732block1924

_f1732block1924:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _f1732conclusion



.globl _f1732
.align 16
_f1732:
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
       jmp _f1732start
_f1732conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_e1731start:
       movq   %rdi, %rdx
       movq   %rdx, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rcx
       addq   $16, %rcx
       movq   _fromspace_end(%rip), %rdx
       cmpq   %rdx, %rcx
       jl _e1731block1936
       jmp _e1731block1937

_e1731block1936:
       jmp _e1731block1934

_e1731block1934:
       jmp _e1731block1932

_e1731block1932:
       movq   $0, %rdx
       jmp _e1731block1931

_e1731block1937:
       jmp _e1731block1935

_e1731block1935:
       jmp _e1731block1933

_e1731block1933:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _e1731block1931

_e1731block1931:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $131, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rax
       jmp _e1731conclusion



.globl _e1731
.align 16
_e1731:
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
       jmp _e1731start
_e1731conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq
_main1730start:
       movq   $42, %rdx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1730block1950
       jmp _main1730block1951

_main1730block1950:
       jmp _main1730block1948

_main1730block1948:
       jmp _main1730block1946

_main1730block1946:
       movq   $0, %rdx
       jmp _main1730block1945

_main1730block1951:
       jmp _main1730block1949

_main1730block1949:
       jmp _main1730block1947

_main1730block1947:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1730block1945

_main1730block1945:
       movq   _free_ptr(%rip), %rcx
       addq   $16, _free_ptr(%rip)
       movq   %rcx, %r11
       movq   $3, 0(%r11)
       movq   %rcx, %r11
       movq   %rdx, 8(%r11)
       movq   $0, %rdx
       movq   %rcx, %rcx
       leaq   _o1735(%rip), %rdx
       movq   $1, %rdi
       movq   %rcx, %rsi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _t1734(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rcx
       leaq   _h1733(%rip), %rdx
       movq   %rcx, %rdi
       callq *%rdx
       movq   %rax, %rcx
       movq   _free_ptr(%rip), %rdx
       movq   %rdx, %rdx
       addq   $16, %rdx
       movq   _fromspace_end(%rip), %rcx
       cmpq   %rcx, %rdx
       jl _main1730block1943
       jmp _main1730block1944

_main1730block1943:
       jmp _main1730block1941

_main1730block1944:
       jmp _main1730block1942

_main1730block1942:
       jmp _main1730block1940

_main1730block1940:
       movq   %r15, %rdi
       movq   $16, %rsi
       callq _collect
       jmp _main1730block1938

_main1730block1941:
       jmp _main1730block1939

_main1730block1939:
       movq   $0, %rdx
       jmp _main1730block1938

_main1730block1938:
       movq   _free_ptr(%rip), %rdx
       addq   $16, _free_ptr(%rip)
       movq   %rdx, %r11
       movq   $131, 0(%r11)
       movq   %rdx, %r11
       movq   %rcx, 8(%r11)
       movq   $0, %rcx
       movq   %rdx, %rcx
       leaq   _e1731(%rip), %rdx
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
       jmp _main1730conclusion



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
       jmp _main1730start
_main1730conclusion:
       subq   $0, %r15
       addq   $0, %rsp
       popq   %r14
       popq   %r13
       popq   %r12
       popq   %rbx
       popq   %rbp
       popq   %rsp
       retq

