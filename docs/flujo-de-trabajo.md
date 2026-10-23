# Guía de trabajo

Estado: procedimiento propuesto, pendiente de ejecución y capturas propias.

## 1. Preparación
Usa una VM Linux local sin datos sensibles. Registra distribución, arquitectura, compilador, Python, Java, Ghidra, IDA y Diaphora. Completa una tabla con versión, procedencia y fecha. Verifica las dependencias en las fuentes oficiales; no se fija una combinación como validada.

Diaphora funciona oficialmente como plugin de IDA. Verifica que tu edición permita el plugin y su entorno Python. Ghidra se usa por separado sobre los mismos binarios. Si no dispones de un entorno IDA compatible, detén esta parte y documenta el bloqueo; no inventes una exportación desde Ghidra.

## 2. Construcción
Sigue lab/README.md. Mantén idénticos compilador, arquitectura y opciones para las versiones vulnerable y corregida. Guarda los hashes y el registro de compilación generado en lab/build/.

## 3. Análisis en Ghidra
Crea un proyecto local, importa ambos ejecutables y confirma el formato y arquitectura detectados. Ejecuta el análisis automático con opciones coherentes. Localiza main y copy_input mediante funciones, cadenas y referencias. Revisa la copia y las validaciones. Guarda capturas y anota direcciones reales; no presupongas que coincidirán entre entornos.

## 4. Comparación en Diaphora
Desde el entorno IDA compatible, analiza cada ejecutable y espera al final del autoanálisis. Usa las instrucciones de la versión instalada de Diaphora para exportar cada base a SQLite y compararlas. No selecciones directamente bases IDB/I64 como si fueran exportaciones SQLite. Registra las opciones elegidas y conserva las dos exportaciones y el resultado si su tamaño y contenido permiten publicarlos.

Revisa las categorías de coincidencias que muestre tu versión. Identifica funciones equivalentes y las modificadas, y contrasta ensamblador y flujo de control con el análisis independiente de Ghidra. La decompilación depende de las capacidades disponibles y no es un requisito universal del flujo.

## 5. Interpretación
Responde: ¿dónde se comprueba la longitud?, ¿qué ruta toma la entrada rechazada?, ¿se evita la copia?, ¿qué funciones cambiaron por motivos ajenos al parche? No conviertas una puntuación de similitud en prueba de vulnerabilidad.

## 6. Evidencias
Para cada conclusión guarda identificador, herramienta y versión, hash del binario, función y dirección, captura o registro, observación e interpretación. Separa resultados observados de resultados esperados. No se han ejecutado estas pruebas al redactar esta guía.

## 7. Segundo experimento
Compila fixed.c con -O0 y -O2 manteniendo iguales las demás condiciones. Compara las salidas y explica el efecto de optimización e inlining sin atribuir cada cambio a un parche. Este experimento también está pendiente.

## Limitaciones y alternativas
Ghidra aporta análisis independiente, no el exportador oficial de Diaphora. BinDiff y Version Tracking de Ghidra son alternativas a evaluar, no componentes verificados de este laboratorio. Compara requisitos, licencias, emparejamiento y revisión manual antes de cambiar el alcance.

Fuentes: https://github.com/joxeankoret/diaphora y https://github.com/NationalSecurityAgency/ghidra
