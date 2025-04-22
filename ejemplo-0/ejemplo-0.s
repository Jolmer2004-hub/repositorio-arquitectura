.data
mensaje:   .string "Hola Mundo\n"

.text
.globl _start

_start:

mov $1, %rax
mov $1, %rdi
mov $mensaje, %rsi
mov $11, %rdx
syscall

mov $60, %rax
xor %rdi, %rdi
syscall
