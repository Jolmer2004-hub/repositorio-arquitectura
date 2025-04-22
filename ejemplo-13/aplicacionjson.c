#include <stdio.h>
#include <stdlib.h>
#include <cjson/cJSON.h>

cJSON * procesarJSON(cJSON * entrada){
	cJSON * respuesta = cJSON_CreateObject(); // Crea un objeto cJSON vacio

	cJSON * mensaje = cJSON_GetObjectItem(entrada,"mensaje"); // Traigo el elemento mensaje

	if(mensaje != NULL){ // si el mensaje existe
	// le agrego el texto demensaje a el elemento mensaje original al objeto respuesta
	cJSON_AddItemToObject(respuesta,"mensaje_original",cJSON_Duplicate(mensaje,1));
	}

	return respuesta;
}

int main(int numArgs, char ** args){
	//Creamos un JSON string de entrada
	char * json_string = "{\"mensaje\": \"Este es el mensaje original\"}";

	cJSON* objJsonEntrada = cJSON_Parse(json_string);

	if(objJsonEntrada == NULL){ // Si el objeto JSON no se decodifico bien
	printf("Error en la decodificacion del JSON\r\n");
	return -1;
	}

	cJSON * respuesta = procesarJSON(objJsonEntrada); // Modificamos el JSON de Entrada

	char * cadena = cJSON_Print(respuesta); // Convertimos el objeto JSON en una cadena

	printf("El Json es: %s \r\n", cadena); // Imprimimos la cadena correspondiente al JSON

	cJSON_Delete(respuesta); // Liberamos memoria del objeto que ya no es necesario
	cJSON_Delete(objJsonEntrada); // Liberamos memoria del objeto que ya no es necesario

	free(cadena);

	exit(EXIT_SUCCESS);
}
