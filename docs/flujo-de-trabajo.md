# Flujo de trabajo: análisis de cambios entre binarios

**Estado:** guía de ejecución propuesta. Completa las versiones, observaciones y capturas durante tu propio laboratorio; no se han validado aquí.

## 1. Alcance y entorno

- Trabaja con los dos ejecutables generados desde el código de `lab/src/`.
- Usa una máquina local o VM aislada; no se requiere apuntar a un servicio remoto.
- Registra sistema operativo, arquitectura, compilador y opciones de compilación.
- Registra las versiones de Ghidra, IDA y Diaphora realmente usadas.
- Confirma compatibilidad con la documentación oficial de la versión instalada.

Ghidra y Diaphora no se consideran una integración directa. Ghidra puede usarse para estudiar los binarios. Diaphora es un plugin de IDA, así que la comparación de Diaphora requiere un IDA compatible y sus propias exportaciones.

## 2. Compilar y registrar

Desde la raíz del repositorio:

```sh
sh lab/build.sh
python3 lab/tests/check.py
```

Revisa las salidas antes de afirmar que las pruebas pasaron. El script de construcción crea `lab/build/environment.txt` y `lab/build/SHA256SUMS`. Registra además el sistema y las versiones en `evidence/README.md`. No uses los binarios de laboratorio para probar sistemas ajenos.

## 3. Análisis independiente en Ghidra

1. Crea un proyecto local y separado para este laboratorio.
2. Importa `lab/build/vulnerable` y `lab/build/fixed`.
3. Confirma el formato, la arquitectura y los resultados del análisis automático.
4. Localiza `main` y `copy_input` si el compilador conserva esos símbolos; de lo contrario, documenta cómo identificaste las funciones.
5. En la versión vulnerable, observa la copia a `buffer` y la ausencia de una comprobación previa de longitud.
6. En la versión corregida, identifica la comprobación y la ruta de rechazo.
7. Guarda capturas propias y apunta direcciones, nombres y observaciones reales.

Las capturas deben mostrar el nombre de la muestra y la versión de Ghidra. Oculta datos personales del escritorio.

## 4. Comparación con Diaphora

1. Abre cada ejecutable en una versión de IDA compatible con el plugin instalado.
2. Espera a que termine el análisis automático de ambas muestras.
3. Sigue el procedimiento de exportación y comparación documentado por la versión instalada de Diaphora; el flujo usa exportaciones SQLite.
4. Registra nombres de exportaciones, opciones, versión y resultado.
5. Revisa las coincidencias y diferencias de funciones; confirma las funciones relevantes en desensamblado.
6. Contrasta esas observaciones con el análisis independiente de Ghidra y el código fuente.

No cargues proyectos nativos de Ghidra en Diaphora ni llames a archivos IDB/I64 exportaciones SQLite. Si el plugin no aparece, falla o tu edición de IDA no es compatible, registra el problema y no afirmes que se ejecutó el diff.

## 5. Interpretación y reporte

Para cada cambio potencialmente relevante responde:

- ¿Qué función o bloque cambió?
- ¿Qué validación nueva aparece en la versión corregida?
- ¿Qué entrada de laboratorio permite comprobar el comportamiento?
- ¿Qué evidencia respalda la interpretación?
- ¿Qué otras causas —compilador, optimización o símbolos— pueden explicar diferencias?
- ¿Qué no puede concluirse únicamente a partir del diff?

Una puntuación de similitud o una función diferente sirve para priorizar revisión, no para confirmar vulnerabilidad o explotabilidad.

## 6. Evidencias y cierre

Completa `docs/informe-analisis.md` y `evidence/README.md`. Conserva capturas originales y no inventes resultados. Añade hash del binario para relacionar cada evidencia con la muestra analizada.

## Alternativas

Si Diaphora no resulta viable, Ghidra dispone de Version Tracking para identificar correspondencias entre versiones de programas. También puedes estudiar BinDiff, verificando antes sus requisitos y exportadores. Si cambias de herramienta, actualiza el título y el alcance del proyecto para reflejar el flujo realmente realizado.
