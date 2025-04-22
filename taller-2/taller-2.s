
.text
.global HallarSENO
.extern sin

# Para  los floats se utilizan los registros xmm
# Segun System V:
# xmm0 funcion (xmm0 , xmm1 , xmm2 , ...) En ensamblador
# float funcion (float1, float2, float3, ....) En lenguaje C

HallarSENO:
        call sin
        ret

.section .note.GNU-stack,"",@progbits
