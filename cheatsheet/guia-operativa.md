# Referencia rápida

Estado: operaciones propuestas; completar con capturas de las versiones utilizadas.

| Necesidad | Acción | Precaución |
|---|---|---|
| Compilar | sh lab/build.sh | Revisar avisos y registrar entorno |
| Probar regresión | python3 lab/tests/check.py | No prueba explotación ni todas las entradas |
| Verificar hashes | cd lab/build && sha256sum -c SHA256SUMS | Volver a la raíz antes de otros comandos |
| Localizar el cambio | Revisar copy_input en Ghidra | Direcciones dependientes del binario |
| Comparar | Exportar con Diaphora desde IDA compatible | No importar directamente proyectos de Ghidra |
| Revisar SQLite | Usar las exportaciones de Diaphora | No confundirlas con IDB/I64 |
| Interpretar | Contrastar función, ensamblador y ruta de error | Similitud no equivale a vulnerabilidad |

Conserva hash, versión, opciones y evidencia de cada observación. Detén el flujo si no se ha verificado compatibilidad. Fuente: https://github.com/joxeankoret/diaphora
