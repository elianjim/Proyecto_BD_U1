CREATE DATABASE greenthumb_hub 
USE greenthumb_hub;

CREATE TABLE ESPECIE (
  id_especie INT AUTO_INCREMENT PRIMARY KEY,
  nombre_comun VARCHAR(80) NOT NULL,
  nombre_cientifico VARCHAR(120),
  frecuencia_riego_dias INT NOT NULL,
  luz_requerida VARCHAR(40) NOT NULL,
  CONSTRAINT chk_frecuencia CHECK (frecuencia_riego_dias > 0)
);

CREATE TABLE UBICACION (
  id_ubicacion INT AUTO_INCREMENT PRIMARY KEY,
  nombre_lugar VARCHAR(80) NOT NULL UNIQUE,
  condiciones_luz VARCHAR(40) NOT NULL,
  humedad VARCHAR(30) NOT NULL DEFAULT 'Media'
);

CREATE TABLE TIPO_CUIDADO (
  id_tipo_cuidado INT AUTO_INCREMENT PRIMARY KEY,
  nombre_cuidado VARCHAR(80) NOT NULL UNIQUE,
  descripcion VARCHAR(255)
);

CREATE TABLE PLANTA (
  id_planta INT AUTO_INCREMENT PRIMARY KEY,
  id_especie INT NOT NULL,
  id_ubicacion INT NOT NULL,
  apodo VARCHAR(100) NOT NULL,
  fecha_registro DATE NOT NULL,
  estado VARCHAR(20) NOT NULL DEFAULT 'Activa',
  CONSTRAINT chk_estado CHECK (estado IN ('Activa','En observacion','Inactiva')),
  CONSTRAINT fk_planta_especie FOREIGN KEY (id_especie)
    REFERENCES ESPECIE(id_especie),
  CONSTRAINT fk_planta_ubicacion FOREIGN KEY (id_ubicacion)
    REFERENCES UBICACION(id_ubicacion)
);

CREATE TABLE HISTORIAL_CUIDADO (
  id_historial INT AUTO_INCREMENT PRIMARY KEY,
  id_planta INT NOT NULL,
  id_tipo_cuidado INT NOT NULL,
  fecha_realizacion DATE NOT NULL,
  observaciones VARCHAR(255),
  CONSTRAINT fk_hist_planta FOREIGN KEY (id_planta)
    REFERENCES PLANTA(id_planta),
  CONSTRAINT fk_hist_tipo FOREIGN KEY (id_tipo_cuidado)
    REFERENCES TIPO_CUIDADO(id_tipo_cuidado)
);

CREATE TABLE PROGRAMACION_CUIDADO (
  id_planta INT NOT NULL,
  id_tipo_cuidado INT NOT NULL,
  intervalo_dias INT NOT NULL,
  fecha_proxima DATE NOT NULL,
  PRIMARY KEY (id_planta, id_tipo_cuidado),
  CONSTRAINT chk_intervalo CHECK (intervalo_dias > 0),
  CONSTRAINT fk_prog_planta FOREIGN KEY (id_planta)
    REFERENCES PLANTA(id_planta),
  CONSTRAINT fk_prog_tipo FOREIGN KEY (id_tipo_cuidado)
    REFERENCES TIPO_CUIDADO(id_tipo_cuidado)
);
