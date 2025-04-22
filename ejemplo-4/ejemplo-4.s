# Ejemplo de una funcion hech aen assembly

.text
.global sumar
.global restar

sumar: # En lenguaje C: resultado = sumar(int a, int b)

	add %rsi, %rdi
	mov %rdi, %rax
	ret

restar: # En lenguaje C: resultado = restar(int a, int b)

	sub %rsi, %rdi
	mov %rdi, %rax
	ret
