#include <stdio.h>
#include <stdlib.h>

float comparar_float(float, float);

int main (int numArgumentos, char ** argumentos){
	printf("Casos de prueba (1:verdaero, 0:falso)\r\n");
	float casos[][2]={{-0.5, -0.4},{-0.5, 0.4},{0.5, -0.4},{0.5, 0.4},
	{-0.4, -0.5},{-0.4, 0.5},{0.4, -0.5},{0.4, 0.5}};

	float resultado;

	for(int i=0; i< sizeof(casos)/sizeof(casos[0]); i++){
	resultado = comparar_float(casos[i][0], casos[i][i]);
	printf("\r\n%f + %f = %f \r\n", casos[i][0], casos[i][i], resultado);
}
	exit(EXIT_SUCCESS);
}
