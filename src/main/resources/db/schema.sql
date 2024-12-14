CREATE DATABASE IF NOT EXISTS minimas DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
USE minimas;

-- Asegurarnos de que estamos en el esquema correcto
CREATE SCHEMA IF NOT EXISTS minimas;
USE minimas;

-- Crear tabla descripcion_minima
CREATE TABLE IF NOT EXISTS descripcion_minima (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    uso VARCHAR(255) NOT NULL,
    destino VARCHAR(255) NOT NULL,
    serial VARCHAR(255) NOT NULL,
    subpartida VARCHAR(15) NOT NULL,
    UNIQUE KEY (serial, subpartida) -- Para evitar duplicados
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
