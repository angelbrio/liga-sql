SELECT
    p.fecha,
    el.nombre || ' ' || p.goles_local || ' - ' || p.goles_visitante || ' ' || ev.nombre AS resultado
FROM Partidos p
JOIN Equipos el ON p.id_local = el.id_equipo
JOIN Equipos ev ON p.id_visitante = ev.id_equipo
ORDER BY p.fecha ASC;
