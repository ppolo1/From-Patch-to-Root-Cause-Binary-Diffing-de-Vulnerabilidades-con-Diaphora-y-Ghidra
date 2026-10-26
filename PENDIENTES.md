# Pendientes para la entrega

Actualizado: 26 de octubre de 2026. Material preparado no equivale a pruebas ejecutadas. Prioriza un solo caso reproducible.

## Prioridad inmediata: tú en la VM

- [ ] Confirmar IDA y Diaphora instalados y registrar sus versiones.
- [ ] Ejecutar `sh lab/build.sh`; revisar y conservar la salida.
- [ ] Ejecutar `python3 lab/tests/check.py`; registrar resultados reales.
- [ ] Completar SO, arquitectura, compilador, opciones y hashes en `evidence/README.md`.
- [ ] Analizar ambos binarios en Ghidra y guardar capturas propias.
- [ ] Si el entorno Diaphora funciona, comparar las dos muestras y guardar evidencia; si no, no afirmar que se realizó.
- [ ] Compartir los logs y capturas para completar conclusiones con datos reales.

## Puedo hacer con la evidencia

- [ ] Revisar los logs y depurar errores de los scripts.
- [ ] Completar `docs/informe-analisis.md` con observaciones comprobables.
- [ ] Redactar comparación y limitaciones, sin atribuir al diff lo que no demuestra.
- [ ] Revisar referencias, enlaces, redacción y consistencia del README.

## Si queda tiempo

- [ ] Ejecutar experimento de optimización `-O0` frente a `-O2`.
- [ ] Comparar con Version Tracking de Ghidra o BinDiff y justificar la herramienta.
- [ ] Comprobar procedencia y permisos de las imágenes existentes.
- [ ] Repetir el laboratorio desde entorno limpio.

## Licencias

- [ ] Revisar en otra actualización la diferencia entre el texto del README y los archivos de licencia. Por petición del autor, `LICENSE`, `lab/LICENSE` y `NOTICE.md` no se han modificado.

## Criterio de finalización

Un analista debe poder reproducir el caso con las versiones y opciones documentadas, y cada conclusión debe apuntar a evidencia propia. No afirmar descubrimiento de 0-day ni asignación de CVE a partir de este ejemplo sintético.
