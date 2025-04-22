.data
mensaje: .asciz "%ld \n"

.text
.global _start
.extern printf          # Indico que quiero utilizar la funcion printf de la libreria de lenguaje C

_start:

subq $8, %rsp   # Alineacion de datos
mov $1, %rax    # rax = 1
mov $1, %rbx    # rbx = 1

bucle:

cmp $16, %rbx
jge fin_bucle
movq $mensaje, %rdi
movq %rbx, %rsi
xorq %rax, %rax
call printf
inc %rbx
jmp bucle

fin_bucle:

addq $8, %rsp   #Alineacion de datos original

mov $60, %rax   # Indico que vamos a usar la funcion exit
mov $0, %rdi    # Indico que el argumento tiene un valor de 0
syscall         # No es parte de ensamblador pero llama a las funciones del sistema
