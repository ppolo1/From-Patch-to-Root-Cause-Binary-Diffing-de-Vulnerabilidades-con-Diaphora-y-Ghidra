# Informe de análisis de cambios binarios

> Plantilla. Sustituye los marcadores tras ejecutar el laboratorio; no presentes los valores esperados como resultados observados.

## Resumen

- Estado: pendiente de ejecución.
- Analista: [nombre]
- Fecha: [fecha]
- Propósito: comparar un ejemplo local propio y su versión corregida.
- Conclusión breve: [completar con evidencia]

## Alcance y autorización

Muestras: `vulnerable` y `fixed`, compiladas desde `lab/src/`.
Entorno autorizado: [VM/equipo local]
Fuera de alcance: sistemas, servicios y binarios de terceros no autorizados.

## Entorno

| Componente | Versión / dato observado |
|---|---|
| Sistema operativo | [completar] |
| Arquitectura | [completar] |
| Compilador y versión | [completar] |
| Opciones de compilación | [completar] |
| Ghidra | [completar] |
| IDA | [completar o indicar no usado] |
| Diaphora | [completar o indicar no usado] |
| Hash vulnerable | [SHA-256] |
| Hash corregido | [SHA-256] |

## Procedimiento

[Indica comandos, importación, análisis y pasos de comparación que realmente ejecutaste.]

## Resultados observados

| Identificador | Binario / función | Evidencia | Observación directa |
|---|---|---|---|
| O-01 | [completar] | [captura/registro] | [completar] |

## Interpretación

[Explica la relación entre observaciones y la comprobación de longitud. Diferencia hechos observados de inferencias.]

## Limitaciones

[Compatibilidad, opciones de compilación, símbolos, optimizaciones, heurísticas y alcance de las pruebas.]

## Remediación

[Describe el cambio defensivo del ejemplo y las pruebas de regresión realizadas. No generalices más allá del código analizado.]

## Conclusión

[Qué puede afirmarse y qué no. Este laboratorio sintético no constituye por sí mismo un hallazgo 0-day ni una solicitud de CVE.]
