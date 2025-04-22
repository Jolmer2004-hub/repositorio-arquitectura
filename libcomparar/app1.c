#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <libcompara.h>

/**
 * Funcion que realiza la comparacion de dos numeros enteros y imprime el resultado
 */
int main(int argc, char ** argv){
   if(argc != 3){
      printf("Uso: %s <numero1> <numero2>\n", argv[0]);
      return 1;
   }

   int numero1 = atoi(argv[1]);
   int numero2 = atoi(argv[2]);

   printf("%d > %d = %d \n", numero1, numero2, comparar(numero1, numero2));

   exit(EXIT_SUCCESS);
}
