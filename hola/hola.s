.data
mensaje:    .string "Hola Mundo\n"

.text
.globl _start

_start:
    # Escribe el mensaje en la salida estándar
    mov $1, %rax                # syscall: sys_write
    mov $1, %rdi                # file descriptor 1: stdout
    mov $mensaje, %rsi          # puntero al mensaje
    mov $11, %rdx               # longitud del mensaje
    syscall                     # invocar syscall

    # Termina el programa
    mov $60, %rax               # syscall: sys_exit
    xor %rdi, %rdi              # status 0
    syscall                     # invocar syscall
