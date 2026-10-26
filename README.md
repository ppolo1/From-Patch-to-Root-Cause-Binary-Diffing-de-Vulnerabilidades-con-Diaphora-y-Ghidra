# From Patch to Root Cause
## Binary Diffing de Vulnerabilidades con Diaphora y Ghidra

![Ghidra](https://github.com/ppolo1/From-Patch-to-Root-Cause-Binary-Diffing-de-Vulnerabilidades-con-Diaphora-y-Ghidra/blob/main/images/reverse-engineering-con-Ghidra.jpg)

[Línea invisible]: # (Diaphora)

<img width="500" height="375" alt="image" src="https://github.com/user-attachments/assets/f577cbc0-b683-4993-bb02-ead2ceacf7bd" />

## 1. Introducción
Voy a mostrar el uso de Diaphora y Ghidra para comparar dos versiones de un programa y analizar qué cambios podrían corresponder a una corrección de seguridad. El laboratorio usa un programa sintético propio; no pretende reproducir un ataque real ni descubrir una vulnerabilidad nueva.

Estado: material y laboratorio preparados, pendientes de ejecución y validación en el entorno del autor. Las capturas y resultados deberán añadirse tras realizar las pruebas.

## 2. Metodología técnica
El análisis se realiza sobre binarios locales propios y autorizados. Ghidra se emplea para análisis estático y, si se dispone de un entorno compatible, se realiza una comparación con Diaphora.

**Nota de compatibilidad:** Diaphora se documenta como plugin de IDA. No se presupone integración directa con Ghidra. Comprueba la edición y versión de IDA y Diaphora antes de seguir el flujo; documenta las versiones efectivamente utilizadas.

1. Compilar las versiones vulnerable y corregida con condiciones equivalentes.
2. Registrar sistema, arquitectura, compilador, opciones y hashes.
3. Examinar ambos binarios en Ghidra.
4. Exportar y comparar las bases mediante Diaphora desde IDA compatible.
5. Revisar manualmente los cambios y contrastarlos con el código fuente y pruebas locales.
6. Documentar evidencias, limitaciones y remediación.

Consulta la [guía de trabajo](docs/flujo-de-trabajo.md), el [laboratorio](lab/README.md) y el [diagrama](diagrams/flujo.md).

## 3. Casos prácticos
### 3.1 Caso 1 — Validación de longitud antes de copiar
Comparación de un programa sintético y su versión corregida. Las pruebas del laboratorio verifican comportamiento de entradas seleccionadas; no validan explotabilidad. Consulta [lab/README.md](lab/README.md).

### 3.2 Caso 2 — Ruido por opciones de compilación
Experimento opcional: compilar la versión corregida con opciones distintas y observar qué diferencias no se deben al parche. Pendiente de ejecución.

## 4. Enfoque ante 0-days
Una diferencia binaria, un fallo o un cambio de función no demuestra por sí mismo una vulnerabilidad desconocida, explotabilidad ni que proceda solicitar un CVE. Este proyecto no afirma haber descubierto un 0-day.

## 5. Conclusiones
Pendientes de completar una vez realizadas las pruebas. Las conclusiones deben indicar qué se observó, con qué evidencia y qué no permite concluir el experimento.

## 6. Referencias
Las fuentes consultadas están en [references/sources.md](references/sources.md). Las instrucciones de análisis y las capturas propias se completarán con las versiones realmente utilizadas.

## Material de consulta
- [Guía de trabajo](docs/flujo-de-trabajo.md)
- [Plantilla del informe](docs/informe-analisis.md)
- [Cheat sheet](cheatsheet/guia-operativa.md)
- [Evidencias](evidence/README.md)
- [Pendientes](PENDIENTES.md)

## Licencia
Consulta los archivos [LICENSE](LICENSE) y [lab/LICENSE](lab/LICENSE), así como [NOTICE.md](NOTICE.md), para conocer el alcance y las licencias de los materiales. No se han modificado en esta actualización.

## Uso responsable
Este material se proporciona para aprendizaje y análisis en entornos controlados. Analiza únicamente software propio o para el que dispongas de autorización explícita. No publiques secretos, datos personales ni binarios de terceros sin permiso.
