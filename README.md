# From Patch to Root Cause
## Guía teórica de Binary Diffing con Diaphora y Ghidra

![Ghidra](https://github.com/ppolo1/From-Patch-to-Root-Cause-Binary-Diffing-de-Vulnerabilidades-con-Diaphora-y-Ghidra/blob/main/images/reverse-engineering-con-Ghidra.jpg)

[Línea invisible]: # (Diaphora)

<img width="500" height="375" alt="image" src="https://github.com/user-attachments/assets/f577cbc0-b683-4993-bb02-ead2ceacf7bd" />

## 1. Introducción
Este repositorio es un recurso de consulta predominantemente teórico sobre comparación de binarios y análisis de parches de seguridad. Explica qué preguntas plantea un analista, cómo pueden ayudar Diaphora y Ghidra y qué límites deben acompañar a las conclusiones.

No es un informe de un laboratorio ejecutado: no contiene resultados experimentales acreditados ni afirma descubrimientos de vulnerabilidades. El código, scripts y esquemas se conservan como anexos didácticos opcionales.

## 2. Metodología técnica
La propuesta parte de dos versiones del mismo programa: una anterior al cambio y otra posterior. El objetivo es localizar diferencias y formular hipótesis sobre su significado, no asumir que todo cambio es un parche de seguridad.

- Ghidra permite estudiar funciones, referencias, ensamblador y representación decompilada.
- Diaphora compara programas mediante su flujo compatible con IDA; no se presupone una integración directa con Ghidra.
- El analista debe distinguir correspondencias automáticas, cambios observados e interpretaciones.

Flujo conceptual: seleccionar versiones comparables → revisar el contexto → analizar por separado → comparar funciones → interpretar diferencias → valorar hipótesis y límites. Consulta la [guía teórica](docs/flujo-de-trabajo.md).

## 3. Ejemplos razonados
### 3.1 Validación de longitud antes de copiar
El ejemplo de `lab/src/` contrasta una copia sin comprobación previa con una versión que rechaza entradas que no caben. El [caso explicado](docs/informe-analisis.md) relaciona el cambio de código con lo que un analista buscaría en el binario, sin presentar ensamblador, direcciones o resultados inventados.

### 3.2 Diferencias sin cambios de seguridad
Compiladores, símbolos, arquitectura y optimizaciones pueden cambiar el binario sin corregir una vulnerabilidad. Este contraejemplo explica por qué una puntuación de similitud no basta para clasificar un cambio como relevante para seguridad.

## 4. Enfoque ante 0-days
Una diferencia binaria no demuestra una vulnerabilidad nueva, explotabilidad ni que proceda asignar un CVE. El ejemplo es sintético y su estudio no equivale a un hallazgo sobre un producto real.

## 5. Conclusiones teóricas
El valor del diffing está en orientar la revisión hacia funciones y bloques relevantes. Ghidra aporta contexto de análisis y Diaphora ayuda a comparar; ninguna herramienta sustituye el razonamiento técnico. Las hipótesis requieren validación independiente cuando se traslada el método a una investigación real. Estas conclusiones son metodológicas, no resultados experimentales del proyecto.

## 6. Referencias
Consulta [references/sources.md](references/sources.md). La guía no depende de una versión instalada concreta: cualquier futura reproducción deberá registrar versiones, edición de IDA y compatibilidad real. La expresión «última versión estable» no se utiliza como prueba de compatibilidad.

## Material de consulta
- [Índice](docs/README.md)
- [Comparativa de herramientas](docs/comparativa.md)
- [Cheat sheet](cheatsheet/guia-operativa.md)
- [Ilustraciones conceptuales](images/LABORATORIO.md)
- [Diagrama](diagrams/flujo.md)
- [Anexos didácticos](lab/README.md)
- [Límites de evidencia](evidence/README.md)
- [Ampliaciones futuras](AMPLIACIONES-FUTURAS.md)

## Licencia
Consulta [LICENSE](LICENSE), [lab/LICENSE](lab/LICENSE) y [NOTICE.md](NOTICE.md). Los archivos de licencia no se modifican con esta reorientación.

## Uso responsable
Cualquier aplicación futura debe limitarse a software propio o expresamente autorizado. Los ejemplos no deben reutilizarse como código de producción.
