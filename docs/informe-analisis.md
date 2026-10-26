# Caso teórico: validación de longitud antes de una copia

Este documento sustituye la antigua plantilla de informe pendiente por una explicación razonada del código didáctico. No es un informe experimental.

## Situación inicial
En `lab/src/vulnerable.c`, la función `copy_input` declara `char buffer[32]` y llama a `strcpy(buffer, input)` sin comprobar antes la longitud. La entrada procede de un argumento de línea de comandos.

## Causa raíz
El destino tiene capacidad fija, pero la copia no recibe esa capacidad como límite. Si la cadena y su terminador nulo no caben, la copia escribe fuera del búfer y el comportamiento es indefinido. El patrón se relaciona con CWE-120. Esta clasificación del ejemplo no supone una vulnerabilidad registrada en un producto real.

## Corrección del ejemplo
En `lab/src/fixed.c` se comprueba `strlen(input) >= sizeof buffer` y se devuelve 2 antes de copiar cuando la condición se cumple. En este caso de entrada válida terminada en nulo, se aceptan hasta 31 bytes de datos, reservando el byte restante para el terminador. Se habla de bytes, no necesariamente de caracteres Unicode.

La corrección es local: no convierte `strcpy` en una función que conozca el tamaño de destino ni resuelve problemas arbitrarios de punteros, concurrencia o memoria. Su seguridad depende de los supuestos del ejemplo.

## Qué buscaría un analista en los binarios
- La operación de copia o la secuencia equivalente que genere el compilador.
- Un control previo que limite la longitud.
- Una bifurcación hacia una ruta de rechazo.
- La ausencia de copia por esa ruta de error.

Estos puntos son expectativas razonadas, no observaciones de una sesión de Ghidra o Diaphora. La forma concreta depende de arquitectura y compilación.

## Escenarios conceptuales
| Longitud ASCII | Versión sin control | Versión corregida: comportamiento deducido del fuente |
|---|---|---|
| 5 bytes | La entrada cabe | Se permite la copia |
| 31 bytes | Cabe incluido el terminador | Se permite la copia |
| 32 bytes | No cabe incluido el terminador | Se rechaza antes de copiar |

No se ha observado aquí un crash ni se afirma explotación. La tabla describe el razonamiento sobre el fuente, no una ejecución.

## Impacto y límites
Una escritura fuera de límites puede comprometer la memoria del proceso; su efecto concreto depende del entorno y no se determina con este análisis conceptual. No se afirma ejecución arbitraria, escalada de privilegios ni obtención de un CVE.

## Conclusión
El cambio relevante consiste en imponer una precondición antes de la copia. El diffing ayudaría a localizar ese cambio; el estudio del flujo explicaría por qué evita la copia excesiva bajo los supuestos del ejemplo.

Fuentes: [CWE y biblioteca C](../references/sources.md).
