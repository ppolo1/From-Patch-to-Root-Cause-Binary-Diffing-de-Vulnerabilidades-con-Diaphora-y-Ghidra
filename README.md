# From Patch to Root Cause
## Binary Diffing de Vulnerabilidades con Diaphora y Ghidra

![Ghidra](https://github.com/ppolo1/From-Patch-to-Root-Cause-Binary-Diffing-de-Vulnerabilidades-con-Diaphora-y-Ghidra/blob/main/images/reverse-engineering-con-Ghidra.jpg)

[Línea invisible]: # (Diaphora)

<img width="500" height="375" alt="image" src="https://github.com/user-attachments/assets/f577cbc0-b683-4993-bb02-ead2ceacf7bd" />

## 1. Introducción
Voy a mostrar el uso de las herramientas Diaphora y Ghidra con casos prácticos de comparación entre un binario vulnerable y su versión corregida, relacionando los cambios con la causa raíz del fallo.

Estado: material en preparación. El código y los scripts incorporados no han sido ejecutados ni validados en el entorno del autor. Las capturas y los resultados reales se añadirán tras realizar el laboratorio.

## 2. Metodología técnica
Se trabajará con programas propios en un entorno local controlado. Kali Linux puede utilizarse como estación de análisis; el caso mínimo no requiere atacar un servicio ni disponer de dos máquinas virtuales.

Ghidra se utilizará para análisis estático. Diaphora se documenta oficialmente como plugin de IDA: su comparación requiere verificar una edición y versión compatibles de IDA. No se presupone integración directa con Ghidra ni que cualquier edición gratuita de IDA sea suficiente.

1. Compilar las dos versiones bajo condiciones equivalentes.
2. Registrar versiones, arquitectura, hashes y opciones de compilación.
3. Analizar funciones y referencias en Ghidra.
4. Exportar y comparar mediante Diaphora desde IDA compatible.
5. Revisar manualmente las diferencias y contrastarlas con pruebas locales.
6. Documentar evidencias, límites y corrección.

Consulta la [guía de trabajo](docs/flujo-de-trabajo.md) y el [diagrama](diagrams/flujo.md).

## 3. Casos prácticos
### 3.1 Caso 1 — Validación de longitud y copia a un búfer
Laboratorio propio con versión vulnerable y corregida. Incluye fuentes, compilación y pruebas propuestas: [laboratorio](lab/README.md).

### 3.2 Caso 2 — Ruido introducido por optimización
Experimento pendiente: comparar la misma versión corregida compilada con optimizaciones distintas. El objetivo es observar cambios binarios sin atribuirlos automáticamente a seguridad.

## 4. Enfoque ante 0days
Una diferencia binaria o un fallo de ejecución no demuestra un zero-day, explotabilidad ni la obtención de un CVE. Este proyecto parte de un fallo sintético conocido y no afirma haber descubierto una vulnerabilidad nueva.

## 5. Conclusiones
Pendientes de completar con resultados reales. Se evaluará qué funciones se emparejan, qué validación incorpora el parche y qué ruido introduce la compilación.

## 6. Referencias
Las referencias se mantienen en [references/](references/). Fuentes oficiales del flujo:
- https://github.com/joxeankoret/diaphora
- https://github.com/NationalSecurityAgency/ghidra

## Material de consulta
- [Cheat sheet](cheatsheet/guia-operativa.md)
- [Tareas pendientes](PENDIENTES.md)
- [Evidencias por completar](evidence/)

## Licencia
Este proyecto se distribuye bajo la licencia [MIT](LICENSE).

La documentación, diagramas, scripts y código de laboratorio se proporcionan
exclusivamente con fines educativos y de investigación autorizada.

El código de laboratorio se distribuye bajo la licencia MIT, salvo que se indique lo contrario.

## Uso responsable

Este repositorio contiene materiales destinados exclusivamente a aprendizaje,
investigación y análisis en entornos controlados o con autorización explícita.
No debe utilizarse para analizar, probar o atacar sistemas, binarios, redes o
servicios sin autorización previa y documentada de su propietario.
