#include <stdio.h>
#include <stdlib.h>
#include <libcubo.h>


int main(int numArgs, char ** args){

	int numero = 8;
	int resultado;

	resultado = multiplicarPorOcho(numero);

	printf("\r\n El numero %d multiplicado por 8 es %d \r\n", numero, resultado);
	exit(EXIT_SUCCESS);
}
