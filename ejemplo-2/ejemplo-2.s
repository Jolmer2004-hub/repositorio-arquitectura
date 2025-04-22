.data
mensaje: .asciz "%ld \n"

.text
.global _start
.extern printf          # Indico que quiero utilizar la funcion printf de la libreria de lenguaje C

_start:

        subq $8, %rsp   # Alineacion de datos

        mov $4, %rax    # rax = 4
        mov $5, %rbx    # rbx = 5
        add %rbx, %rax  # rax = rax+rbx

        # Bloque de impresion
        # Printf ("%id \n", rax);
        #           rdi   , rsi

        movq $mensaje, %rdi
        movq %rax, %rsi
        xorq %rax, %rax
        call printf

        addq $8, %rsp   #Alineacion de datos original


        mov $60, %rax   # Indico que vamos a usar la funcion exit
        mov $0, %rdi    # Indico que el argumento tiene un valor de 0
        syscall         # No es parte de ensamblador pero llama a las funciones del sistema
