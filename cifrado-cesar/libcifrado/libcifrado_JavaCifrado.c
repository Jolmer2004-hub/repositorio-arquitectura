#include <jni.h>
#include <string.h>
#include <stdlib.h>
#include "libcifrado_JavaCifrado.h"

// Función común para cifrar o descifrar
char* cesar(const char* input, int desplazamiento) {
    int len = strlen(input);
    char* result = (char*) malloc(len + 1);

    for (int i = 0; i < len; i++) {
        char c = input[i];
        if (c >= 'A' && c <= 'Z') {
            result[i] = ((c - 'A' + desplazamiento + 26) % 26) + 'A';
        } else if (c >= 'a' && c <= 'z') {
            result[i] = ((c - 'a' + desplazamiento + 26) % 26) + 'a';
        } else {
            result[i] = c;
        }
    }

    result[len] = '\0';
    return result;
}

/*
 * Class:     libcifrado_JavaCifrado
 * Method:    cifrar
 * Signature: (Ljava/lang/String;I)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_libcifrado_JavaCifrado_cifrar
  (JNIEnv *env, jobject obj, jstring input, jint desplazamiento) {

    const char* texto = (*env)->GetStringUTFChars(env, input, 0);
    char* resultado = cesar(texto, desplazamiento);
    jstring jResultado = (*env)->NewStringUTF(env, resultado);

    free((void*) resultado);
    (*env)->ReleaseStringUTFChars(env, input, texto);

    return jResultado;
}

/*
 * Class:     libcifrado_JavaCifrado
 * Method:    descifrar
 * Signature: (Ljava/lang/String;I)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_libcifrado_JavaCifrado_descifrar
  (JNIEnv *env, jobject obj, jstring input, jint desplazamiento) {

    const char* texto = (*env)->GetStringUTFChars(env, input, 0);
    char* resultado = cesar(texto, -desplazamiento);
    jstring jResultado = (*env)->NewStringUTF(env, resultado);

    free((void*) resultado);
    (*env)->ReleaseStringUTFChars(env, input, texto);

    return jResultado;
}
