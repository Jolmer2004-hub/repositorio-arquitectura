.global comparar

    .text
comparar:
    # Inicio de la función de comparación
    cmp %rsi, %rdi   # Compara el segundo argumento (%rsi) con el primero (%rdi)
    jg mayor         # Si %rdi es mayor que %rsi, salta a la etiqueta 'mayor'
menor_igual:
    mov $0, %rax     # Establece el valor de retorno a 0, indicando que %rdi no es mayor que %rsi
    jmp final        # Salta a la etiqueta 'final' para concluir la función
mayor:
    mov $1, %rax     # Establece el valor de retorno a 1, indicando que %rdi es mayor que %rsi
final:
    ret              # Retorna al llamador con el valor en %rax

.section .note.GNU-stack, "", @progbits
