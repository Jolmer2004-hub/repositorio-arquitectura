
.text
.global Multiplicacion
.global Division
.global Suma
.global Resta

Multiplicacion:

	mov %rdi, %rax
	imul %rsi, %rax
	ret

Division:

	mov %rdi, %rax
	cqo
        idiv %rsi
	ret

Suma:

	mov %rdi, %rax
	add %rsi, %rax
	ret

Resta:

	mov %rdi, %rax
	sub %rsi, %rax
	ret

.section .note.GNU-stack, "", @progbits
