-- Tabla de posiciones: puntos, goles a favor y en contra
SELECT
    eq.nombre AS equipo,
    SUM(CASE 
        WHEN eq.id_equipo = p.id_local AND p.goles_local > p.goles_visitante THEN 3
        WHEN eq.id_equipo = p.id_visitante AND p.goles_visitante > p.goles_local THEN 3
        WHEN (eq.id_equipo = p.id_local OR eq.id_equipo = p.id_visitante) AND p.goles_local = p.goles_visitante THEN 1
        ELSE 0
    END) AS puntos,
    SUM(CASE WHEN eq.id_equipo = p.id_local THEN p.goles_local
             WHEN eq.id_equipo = p.id_visitante THEN p.goles_visitante
             ELSE 0 END) AS goles_favor,
    SUM(CASE WHEN eq.id_equipo = p.id_local THEN p.goles_visitante
             WHEN eq.id_equipo = p.id_visitante THEN p.goles_local
             ELSE 0 END) AS goles_contra
FROM Equipos eq
LEFT JOIN Partidos p ON eq.id_equipo = p.id_local OR eq.id_equipo = p.id_visitante
GROUP BY eq.id_equipo
ORDER BY puntos DESC;
