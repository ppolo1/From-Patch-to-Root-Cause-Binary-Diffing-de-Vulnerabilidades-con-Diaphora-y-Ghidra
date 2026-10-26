# Fundamentos y metodología de patch diffing

## Qué se compara
El binary diffing compara representaciones de programas compilados para identificar correspondencias y diferencias. Cuando se aplica a versiones anteriores y posteriores a un parche, permite orientar una investigación hacia cambios potencialmente relevantes. No todos los cambios corresponden a seguridad.

Conviene distinguir tres niveles: diferencia textual del fuente, diferencia en ensamblador y diferencia estructural entre funciones o bloques. Una modificación pequeña del fuente puede generar muchos cambios binarios por optimización o recompilación.

## Papel de las herramientas
Ghidra sirve para estudiar código, funciones y referencias. Diaphora es una herramienta de comparación cuyo flujo documentado utiliza IDA y exportaciones SQLite. Los mismos binarios pueden estudiarse independientemente con Ghidra y compararse en IDA con Diaphora; eso no constituye una integración directa entre ambas herramientas.

## Flujo conceptual
1. Definir la pregunta: qué cambió y qué comportamiento podría evitar.
2. Seleccionar dos versiones comparables y conocer procedencia, arquitectura y contexto de compilación.
3. Identificar puntos de entrada, funciones y datos relevantes.
4. Emparejar funciones entre versiones y revisar las diferencias de interés.
5. Buscar controles nuevos, rutas de rechazo y cambios en operaciones sensibles.
6. Contrastar explicaciones alternativas antes de atribuir el cambio a seguridad.
7. Separar observación, hipótesis y validación.

## Lectura de un resultado hipotético
Una función equivalente en ambas versiones que incorpora una condición antes de copiar datos sería candidata a revisión. La pregunta no sería solo si cambió, sino qué condición controla, qué ocurre cuando se incumple y si la operación peligrosa sigue siendo alcanzable. No se atribuyen aquí puntuaciones, direcciones ni resultados reales a este ejemplo.

## Limitaciones
- Compilador, arquitectura, enlazado y optimización pueden introducir ruido.
- Símbolos eliminados, inlining u ofuscación dificultan emparejar funciones.
- El descompilado es una representación de análisis, no el fuente original garantizado.
- Una coincidencia automática puede necesitar revisión manual.
- Un cambio no demuestra vulnerabilidad; un crash no demuestra control de ejecución.

## Uso profesional y validación futura
Esta metodología puede orientar revisión de actualizaciones, análisis de firmware autorizado y estudio de correcciones. Una aplicación práctica futura requeriría documentar versiones, hashes, opciones y evidencias reproducibles. Aquí se describe el método, no su ejecución.

Fuentes: [referencias](../references/sources.md).
