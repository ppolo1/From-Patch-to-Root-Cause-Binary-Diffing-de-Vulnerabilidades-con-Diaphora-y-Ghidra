# Laboratorio local

Estado: código y scripts preparados, no ejecutados ni validados todavía. Plataforma prevista: Linux con compilador C y Python 3. No es un laboratorio de explotación ni incluye payloads.

## Objetivo
Comparar una copia sin validación de longitud con una que rechaza entradas de 32 bytes o más antes de copiar. La implementación vulnerable usa strcpy deliberadamente; no reutilizar en producción.

Desde la raíz del repositorio:

```sh
sh lab/build.sh
python3 lab/tests/check.py
```

Los scripts usan rutas relativas a su propia ubicación. El directorio lab/build/ contendrá ejecutables, hashes y registro del compilador. No se deshabilitan explícitamente las protecciones del sistema. La compilación se realiza para la arquitectura nativa; registra cuál es. No ejecutes las pruebas como root ni fuera del entorno controlado.

## Casos propuestos
- Entrada corta: ambas versiones imprimen la entrada.
- 31 bytes ASCII: ambas versiones deberían aceptarlos.
- 32 bytes ASCII: la versión corregida debe rechazarlos con estado 2.
- 64 bytes ASCII: la versión corregida debe rechazarlos con estado 2.

Las pruebas excesivas se ejecutan solo sobre la versión corregida. La versión vulnerable se prueba únicamente con entradas que caben en el búfer. No se presupone ningún crash: un desbordamiento produce comportamiento indefinido y su efecto depende del entorno.

## Análisis
Compara los binarios con Ghidra y Diaphora siguiendo docs/flujo-de-trabajo.md. Explica el nuevo control previo a strcpy y la ruta de error. No presentes la corrección como una solución universal para cualquier tipo de entrada o problema de memoria.

## Pendientes
Registrar versiones y resultados reales, añadir capturas, verificar reproducibilidad y completar el informe. El código original de esta carpeta se rige por lab/LICENSE, que no se modifica.
