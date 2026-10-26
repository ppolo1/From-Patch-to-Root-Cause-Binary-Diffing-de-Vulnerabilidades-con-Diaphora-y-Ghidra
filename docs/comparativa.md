# Comparativa conceptual de herramientas

Esta comparación se basa en capacidades documentadas, no en un benchmark realizado en el proyecto.

| Herramienta | Papel | Requisitos o límites que deben revisarse |
|---|---|---|
| Diaphora | Comparación de programas y funciones | Flujo compatible con IDA y exportaciones propias; revisar edición y versión |
| Ghidra | Desensamblado, decompilación y estudio de referencias | Calidad del análisis y soporte de arquitectura; revisión humana necesaria |
| Ghidra Version Tracking | Identificación de correspondencias entre versiones | Elegir correladores y revisar emparejamientos; no equivale a Diaphora |
| BinDiff | Comparación de código desensamblado | Requiere información de un desensamblador y exportador compatible |

## Por qué estudiar Diaphora y Ghidra
Su estudio permite distinguir comparación automática y comprensión del programa. Diaphora orienta la revisión de diferencias; Ghidra ofrece un contexto de análisis independiente. La complementariedad conceptual no implica compartir proyectos ni un exportador compatible de forma automática.

## Cuándo considerar otra opción
Si no se dispone de IDA compatible, Version Tracking de Ghidra permite estudiar correspondencias sin afirmar que se ha ejecutado Diaphora. BinDiff es otra alternativa documental cuyo flujo y requisitos deben comprobarse antes de utilizarla. No se comparan aquí velocidad, precisión ni tasas de falsos positivos porque no se han medido.

Fuentes: [repositorios y documentación oficiales](../references/sources.md).
