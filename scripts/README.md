# Scripts auxiliares

## `analyze-ghidra.sh`

Invoca el analizador headless de Ghidra sobre una muestra local para importar el binario a un proyecto. No ejecuta el binario ni realiza fuzzing, explotación o acceso de red.

Uso desde la raíz del repositorio:

```sh
GHIDRA_HEADLESS=/ruta/a/ghidra/support/analyzeHeadless \
  sh scripts/analyze-ghidra.sh lab/build/vulnerable lab/ghidra-project
```

Configura `GHIDRA_HEADLESS` con la ruta real de tu instalación. Comprueba `analyzeHeadless --help` y ajusta la sintaxis a la versión instalada antes de usarlo. El script no se ha ejecutado ni validado en este proyecto; si da error, usa la interfaz gráfica de Ghidra y documenta los pasos manuales.

El proyecto generado puede contener datos derivados del análisis. No lo publiques sin revisar tamaño, contenido y rutas locales.
