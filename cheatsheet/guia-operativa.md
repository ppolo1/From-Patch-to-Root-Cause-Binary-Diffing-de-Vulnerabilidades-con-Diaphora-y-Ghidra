# Cheat sheet: patch diffing local

**Estado:** guía orientativa. Completa las capturas y versiones tras ejecutar los pasos.

## Antes de comparar

- [ ] Confirmar que los binarios son propios o autorizados.
- [ ] Registrar compilador, arquitectura, opciones y hashes.
- [ ] Verificar compatibilidad entre IDA y Diaphora.
- [ ] Recordar que Diaphora es un plugin de IDA; no asumir integración directa con Ghidra.

## Comandos del laboratorio

```sh
sh lab/build.sh
python3 lab/tests/check.py
(cd lab/build && sha256sum -c SHA256SUMS)
```

Ejecuta las pruebas solo después de compilar correctamente y comprueba la salida real.

## Ruta de análisis

1. Importar ambos binarios en Ghidra y confirmar arquitectura.
2. Revisar la función de copia y la comprobación de longitud.
3. Si IDA compatible está disponible, abrir ambos binarios y esperar al autoanálisis.
4. Usar la exportación/comparación SQLite de Diaphora según su versión instalada.
5. Revisar cambios y contrastarlos manualmente con Ghidra y el código fuente.
6. Relacionar cada conclusión con captura, versión y hash.

## Evita

- Tratar una puntuación de similitud como prueba de vulnerabilidad.
- Afirmar que se ejecutó Diaphora si el plugin no funcionó.
- Publicar exportaciones o proyectos que incluyan material de terceros sin revisar permisos.
- Subir resultados esperados como si fueran observaciones.
- Ejecutar la versión deliberadamente vulnerable con entradas excesivas.
