# Documentación Técnica: Liga SQL

## Tablas principales

- **Equipos**: Identificación de clubes.
- **Jugadores**: Asociación con equipo y posición.
- **Partidos**: Relación entre equipos, resultado.
- **EstadísticasPartido**: Detalles individuales por jugador.

## Relaciones clave

- Un equipo tiene muchos jugadores.
- Un partido relaciona dos equipos.
- Las estadísticas vinculan a un jugador con un partido.

## Restricciones

- Las llaves foráneas mantienen integridad referencial.
- Algunas columnas usan `DEFAULT` y valores `NOT NULL`.

## Consulta: Goleadores

```sql
SELECT nombre, SUM(goles) FROM EstadisticasPartido ...;


---

#### 4. 📈 **Capturas o gráficos**
**Archivo sugerido**: `grafico_goleadores.png`

Puedes exportar alguna tabla a CSV y graficarla (por ejemplo en Excel o con Python) y guardar una captura. Mostrar esto demuestra análisis de datos.

Ejemplos:

- Barras: goles por jugador
- Radar: rendimiento jugador
- Línea: puntos por jornada

---

#### 5. 🚦 **Lista de mejoras o backlog**
**Archivo sugerido**: `mejoras_futuras.md`

Demuestra visión a largo plazo:

```markdown
# Mejoras futuras

- [ ] Agregar soporte para múltiples temporadas
- [ ] Añadir árbitros y sanciones
- [ ] Implementar triggers para actualizar tabla de posiciones automáticamente
- [ ] Crear vistas materializadas para rendimiento semanal
