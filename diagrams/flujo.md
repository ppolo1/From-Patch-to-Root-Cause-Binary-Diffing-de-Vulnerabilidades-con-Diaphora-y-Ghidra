# Metodología conceptual de análisis

Este esquema representa decisiones de un analista, no resultados experimentales.

```mermaid
flowchart TD
    A[Dos versiones propias o autorizadas] --> B[Contexto y comparabilidad]
    B --> C[Análisis independiente con Ghidra]
    C --> D{Flujo compatible con Diaphora disponible}
    D -->|Sí| E[Comparación desde IDA]
    D -->|No| F[Estudiar alternativas y declarar el alcance]
    E --> G[Revisión manual de diferencias]
    F --> G
    G --> H[Hipótesis sobre la corrección]
    H --> I[Conclusión teórica y límites]
    H -. Validación futura opcional .-> J[Pruebas y evidencias reproducibles]
```

La representación no implica que Diaphora importe directamente proyectos de Ghidra.
