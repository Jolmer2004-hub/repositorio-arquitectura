#include <stdio.h>
#include <stdlib.h>

int Multiplicacion(int,int);
int Division(int,int);
int Suma(int,int);
int Resta(int,int);
int a=20, b=5;
int imul,idiv,add,sub;

int main(int numArgumentos, char ** argumentos){
	imul = Multiplicacion(a,b);
	idiv = Division(a,b);
	add = Suma(a,b);
	sub = Resta(a,b);
	printf("%d + %d = %d\n",a,b,add);
	printf("%d - %d = %d\n",a,b,sub);
	printf("%d * %d = %d\n",a,b,imul);
	printf("%d / %d = %d\n",a,b,idiv);
	exit(EXIT_SUCCESS);
}
