# Anexos didácticos de código

Esta carpeta conserva ejemplos de fuente y automatización como apoyo opcional a la guía teórica. Su presencia no indica que el laboratorio se haya ejecutado ni que las pruebas estén validadas. No es necesario ejecutarlos para seguir la explicación conceptual.

- `src/vulnerable.c`: copia sin control previo de longitud.
- `src/fixed.c`: versión con validación previa bajo los supuestos del ejemplo.
- `build.sh`: propuesta de compilación local.
- `tests/check.py`: propuesta de pruebas seleccionadas, no prueba de explotabilidad.

La explicación está en [el caso teórico](../docs/informe-analisis.md).

## Reproducción futura opcional
Los scripts existentes se orientan a Linux y no se presentan como validados. Cualquier ejecución futura requiere revisar el código, registrar versiones y utilizar un entorno propio controlado. El ejemplo vulnerable no debe usarse en producción ni ejecutarse con entradas excesivas fuera de un laboratorio autorizado.

`LICENSE` conserva su contenido. No se han eliminado ni modificado los fuentes, scripts o pruebas con esta reorientación.
