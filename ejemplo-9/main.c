#include <stdio.h>
#include <stdlib.h>

//xmm0(si es flotante)(xmm0,  xmm1, xmm1)
//rax(si es entero)   (rdi ,  rsi,  rdx)
//xmm0                (xmm0,  rsi,  xmm1)
float calculadoraCiclos(float, int, float);

int main(int numArgs, char ** args){

	float pi = 3.1415926535F;
	int ciclos = 5;
	float radio = 2.41F;
	float resultado;
	resultado = calculadoraCiclos(pi,ciclos,radio);
	printf("\r\n radio: %f, ciclos: %d, resultado: %f \r\n",radio, ciclos, resultado);

	exit(EXIT_SUCCESS);
}
