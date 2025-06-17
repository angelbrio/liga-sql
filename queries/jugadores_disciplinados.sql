SELECT
    j.nombre,
    SUM(ep.tarjetas_amarillas) AS amarillas,
    SUM(ep.tarjetas_rojas) AS rojas,
    (SUM(ep.tarjetas_amarillas) + 2 * SUM(ep.tarjetas_rojas)) AS puntos_disciplina
FROM EstadisticasPartido ep
JOIN Jugadores j ON ep.id_jugador = j.id_jugador
GROUP BY j.id_jugador
HAVING puntos_disciplina > 0
ORDER BY puntos_disciplina DESC;
