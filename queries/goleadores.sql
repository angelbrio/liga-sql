-- Consulta de goleadores ordenados por goles
SELECT
    j.nombre AS jugador,
    e.nombre AS equipo,
    SUM(ep.goles) AS total_goles
FROM EstadisticasPartido ep
JOIN Jugadores j ON ep.id_jugador = j.id_jugador
JOIN Equipos e ON j.id_equipo = e.id_equipo
GROUP BY ep.id_jugador
ORDER BY total_goles DESC;
