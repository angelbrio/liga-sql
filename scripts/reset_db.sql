-- Elimina todas las tablas (en orden correcto por dependencias)
DROP TABLE IF EXISTS EstadisticasPartido;
DROP TABLE IF EXISTS Partidos;
DROP TABLE IF EXISTS Jugadores;
DROP TABLE IF EXISTS Equipos;
DROP TABLE IF EXISTS Temporadas;
DROP TABLE IF EXISTS Arbitros;

-- Vuelve a crear la base de datos y llena con datos
.read schema/create_tables.sql
.read data/insert_data.sql
