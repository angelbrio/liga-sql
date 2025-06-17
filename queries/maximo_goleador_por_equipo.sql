SELECT nombre, equipo, goles
FROM (
    SELECT
        j.nombre,
        e.nombre AS equipo,
        SUM(ep.goles) AS goles,
        RANK() OVER (PARTITION BY e.id_equipo ORDER BY SUM(ep.goles) DESC) AS ranking
    FROM EstadisticasPartido ep
    JOIN Jugadores j ON ep.id_jugador = j.id_jugador
    JOIN Equipos e ON j.id_equipo = e.id_equipo
    GROUP BY j.id_jugador, e.id_equipo
) sub
WHERE ranking = 1;
