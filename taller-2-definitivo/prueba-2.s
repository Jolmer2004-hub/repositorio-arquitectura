.text 
.global HallarSENO

HallarSENO:
        movapd %xmm0, %xmm1	# Copiar xmm0 en xmm1 (xmm1 = x)
        mulsd %xmm1, %xmm0	# xmm0 = x * x  (x^2)
        mulsd %xmm1, %xmm0	# xmm0 = x^2 * x  (x^3)

	movapd %xmm0, %xmm2	# Copiar xmm0 en xmm2 (xmm1 = x^3)
	mulsd %xmm1, %xmm2      # xmm0 = x^3 * x  (x^4)
        mulsd %xmm1, %xmm2      # xmm0 = x^4 * x  (x^5)

	movapd %xmm2, %xmm3     # Copiar xmm0 en xmm1 (xmm1 = x^5)
        mulsd %xmm1, %xmm3      # xmm0 = x^5 * x  (x^6)
        mulsd %xmm1, %xmm3      # xmm0 = x^6 * x  (x^7)

	movq $6, %rax
	cvtsi2sd %rax, %xmm4
	movq $120, %rax
	cvtsi2sd %rax, %xmm5
	movq $5040, %rax
	cvtsi2sd %rax, %xmm6

	divsd %xmm4, %xmm0	# (x^3)/6
	divsd %xmm5, %xmm2      # (x^5)/120
	divsd %xmm6, %xmm3      # (x^7)/5040

	subsd %xmm0, %xmm1	# x -((x^3)/6)
	addsd %xmm2, %xmm1	# x -((x^3)/6)+((x^5)/120)
	subsd %xmm3, %xmm1	# x -((x^3)/6)+((x^5)/120)-((x^7)/5040)
	movapd %xmm1, %xmm0     # Copiar xmm0 en xmm1 (xmm0 = x)

        ret

.section .note.GNU-stack,"",@progbits
