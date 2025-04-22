
.text

.global calculadoraCiclos

calculadoraCiclos:

	# rax funcion ( xmm0, rdi, xmm1)
	mulss %xmm1, %xmm0	# SS singnifica (scalar: escalar) y S (single: float)

# Queremos realizar n ciclos (rsi = 5)
ciclos:

        cmp $0, %rdi	# Comparacion entre rsi y cero
        je fin		# Podemos usar je o jz arbitrariamente

	addss %xmm0, %xmm0	# xmm0 = xmm0 + xmm0

	dec %rdi
	jmp ciclos

fin:

ret

.section .note.GNU-stack,"",@progbits
