#Imagen base para compilar y ejecutar un programa de lenguaje C
FROM gcc:latest

#Creamos el directorio de trabajo delcontenedor
WORKDIR / app

#Copiamos el codigo fuente al directorio de trabajo
COPY main.c .

#Conpilamos la aplicacion
RUN gcc main.c -o app

#Ejecutamos la aplicacion
CMD ["./app"]
