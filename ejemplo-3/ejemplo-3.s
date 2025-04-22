# Programa que ilustra el uso de la convencion de llamadas de System V
.data

mensaje: .asciz "Numero1 %d numero2 %d \r\n"

.text
.global _start
.global main
.extern printf

main
_start:
    subq $8, %rsp   # Alineaos los datos

    mov $4, %rax
    mov $5, %rbx

    movq $mensaje, %rdi
    movq %rax, %rsi
    movq %rbx, %rdx

    # RAX se pone en 0 para indicar que necesitamos 0 registros de punto flotante
    movq  $0, %rax    #rax=0   toca memoria
    xorq %rax, %rax   #rax=0   no toca memoria

    call printf

    addq $8, %rsp

    # Llamamos la funcion salir
    call  salir
