-- Equipos
INSERT INTO Equipos (id_equipo, nombre, ciudad) VALUES
(1, 'Real Madrid', 'Villareal'),
(2, 'Getafe', 'Valencia CF'),
(3, 'Valladolid FC', 'Celta de vigo'),
(4, 'Sevilla CF', 'Real Betis'),
(5, 'Rayo Vallecano', 'Atlético de Madrid');

-- Jugadores
INSERT INTO Jugadores (id_jugador, nombre, posicion, id_equipo) VALUES
(1, 'Carlos Ramírez', 'Delantero', 1),
(2, 'Juan Pérez', 'Mediocampista', 2),
(3, 'Luis Torres', 'Defensa', 3),
(4, 'Mario Gutiérrez', 'Delantero', 1),
(5, 'Pedro Silva', 'Portero', 4),
(6, 'Andrés Díaz', 'Delantero', 2),
(7, 'Tomás Ríos', 'Mediocampista', 3),
(8, 'Nicolás Varela', 'Defensa', 4),
(9, 'Esteban Córdoba', 'Delantero', 5),
(10, 'Felipe Ortega', 'Mediocampista', 5);

-- Partidos
INSERT INTO Partidos (id_partido, fecha, id_local, id_visitante, goles_local, goles_visitante) VALUES
(1, '2024-04-01', 1, 2, 2, 1),
(2, '2024-04-08', 3, 1, 0, 3),
(3, '2024-04-15', 4, 5, 1, 2),
(4, '2024-04-22', 2, 3, 2, 2),
(5, '2024-04-29', 5, 1, 1, 1);

-- Estadísticas del partido 1
INSERT INTO EstadisticasPartido (id_partido, id_jugador, goles, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
(1, 1, 1, 0, 1, 0),
(1, 4, 1, 1, 0, 0),
(1, 2, 1, 0, 1, 0);

-- Estadísticas del partido 2
INSERT INTO EstadisticasPartido (id_partido, id_jugador, goles, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
(2, 1, 2, 0, 0, 0),
(2, 3, 0, 0, 1, 0),
(2, 7, 0, 1, 0, 0);

-- Estadísticas del partido 3
INSERT INTO EstadisticasPartido (id_partido, id_jugador, goles, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
(3, 9, 2, 0, 0, 0),
(3, 5, 0, 0, 1, 0),
(3, 8, 0, 1, 1, 0);

-- Estadísticas del partido 4
INSERT INTO EstadisticasPartido (id_partido, id_jugador, goles, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
(4, 2, 1, 0, 0, 0),
(4, 6, 1, 1, 1, 0),
(4, 7, 1, 0, 1, 0);

-- Estadísticas del partido 5
INSERT INTO EstadisticasPartido (id_partido, id_jugador, goles, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
(5, 1, 1, 0, 0, 0),
(5, 10, 1, 1, 0, 0);

