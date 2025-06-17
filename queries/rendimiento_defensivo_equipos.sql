SELECT
    e.nombre,
    COUNT(p.id_partido) AS partidos_jugados,
    SUM(
        CASE
            WHEN e.id_equipo = p.id_local THEN p.goles_visitante
            WHEN e.id_equipo = p.id_visitante THEN p.goles_local
            ELSE 0
        END
    ) AS goles_en_contra,
    ROUND(
        1.0 * SUM(
            CASE
                WHEN e.id_equipo = p.id_local THEN p.goles_visitante
                WHEN e.id_equipo = p.id_visitante THEN p.goles_local
                ELSE 0
            END
        ) / COUNT(p.id_partido), 2
    ) AS promedio_goles_contra
FROM Equipos e
JOIN Partidos p ON e.id_equipo = p.id_local OR e.id_equipo = p.id_visitante
GROUP BY e.id_equipo
ORDER BY promedio_goles_contra ASC;
