SELECT
    j.nombre,
    COUNT(DISTINCT ep.id_partido) AS partidos_jugados,
    SUM(ep.goles) AS total_goles,
    SUM(ep.asistencias) AS total_asistencias,
    ROUND(1.0 * (SUM(ep.goles) + SUM(ep.asistencias)) / COUNT(DISTINCT ep.id_partido), 2) AS eficiencia
FROM EstadisticasPartido ep
JOIN Jugadores j ON ep.id_jugador = j.id_jugador
GROUP BY j.id_jugador
ORDER BY eficiencia DESC;
