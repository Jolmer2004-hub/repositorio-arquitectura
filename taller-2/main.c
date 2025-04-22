#include <stdio.h>
#include <stdlib.h>

double radianes, SENangulo;
double HallarSENO(double);

int main(int numArgumentos, char ** argumentos){
        float grados[]={5.5,15.5,25.5,35.5,45.5,55.5,65.5,75.5,85.5,95.5};
        for(int i=0; i< sizeof(grados)/sizeof(grados[0]); i++){
	double pi = 3.14159265359;
        radianes = grados[i]*(pi / 180);
        SENangulo = HallarSENO(radianes);
        printf("\r\n el seno del angulo %.2f es : %.10f\r\n",grados[i],SENangulo);
        }
exit(EXIT_SUCCESS);
}
