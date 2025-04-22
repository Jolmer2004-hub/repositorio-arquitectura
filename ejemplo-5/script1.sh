#!/bin/bash
#Deteccion de las banderas de la CPU
echo "****Adquiriendo las banderas de capacidades de la CPU y el numero de nucleos"
cat /proc/cpuinfo | egrep "(flags|model name|vendor)" |sort | uniq -c
#Capacidades del compilador. Se requiere -march=native
echo "****Revisando las capacidades de GCC"
gcc -march=native -dM -E - < /dev/null | egrep "SSE|AVX" | sort
#OS kernel version
echo "****Adquiriendo la versión del kernel"
uname -a
