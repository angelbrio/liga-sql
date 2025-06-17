CREATE TABLE Equipos (
    id_equipo INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    ciudad TEXT
);

CREATE TABLE Jugadores (
    id_jugador INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    posicion TEXT,
    id_equipo INTEGER,
    FOREIGN KEY (id_equipo) REFERENCES Equipos(id_equipo)
);

CREATE TABLE Partidos (
    id_partido INTEGER PRIMARY KEY,
    fecha DATE,
    id_local INTEGER,
    id_visitante INTEGER,
    goles_local INTEGER,
    goles_visitante INTEGER,
    FOREIGN KEY (id_local) REFERENCES Equipos(id_equipo),
    FOREIGN KEY (id_visitante) REFERENCES Equipos(id_equipo)
);

CREATE TABLE EstadisticasPartido (
    id_partido INTEGER,
    id_jugador INTEGER,
    goles INTEGER DEFAULT 0,
    asistencias INTEGER DEFAULT 0,
    tarjetas_amarillas INTEGER DEFAULT 0,
    tarjetas_rojas INTEGER DEFAULT 0,
    FOREIGN KEY (id_partido) REFERENCES Partidos(id_partido),
    FOREIGN KEY (id_jugador) REFERENCES Jugadores(id_jugador)
);
