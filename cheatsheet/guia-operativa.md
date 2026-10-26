# Cheat sheet conceptual del analista

| Pregunta | Qué revisar | Qué evitar |
|---|---|---|
| ¿Son comparables las muestras? | Versión, arquitectura, compilación y procedencia | Comparar cambios de compilador como si fueran solo del parche |
| ¿Qué función cambió? | Correspondencias, llamadas, bloques y referencias | Confiar exclusivamente en una puntuación |
| ¿Qué validación aparece? | Condición, límite y ruta de error | Suponer seguridad porque aparece una comparación |
| ¿Se evita la operación peligrosa? | Flujo de datos y control | Confundir una función modificada con causa raíz confirmada |
| ¿Qué aporta cada herramienta? | Ghidra para contexto; Diaphora en IDA para comparación | Inventar integración directa con Ghidra |
| ¿Qué conclusión es defendible? | Distinguir hipótesis y evidencia | Afirmar 0-day, CVE o explotación sin validación |

Referencia rápida de estudio, no registro de una ejecución. Los comandos existentes en los anexos son opcionales y no constituyen pruebas realizadas.
