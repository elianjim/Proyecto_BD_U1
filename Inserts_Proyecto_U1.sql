USE greenthumb_hub;

INSERT INTO ESPECIE (nombre_comun, nombre_cientifico, frecuencia_riego_dias, luz_requerida) VALUES
('Monstera','Monstera deliciosa',7,'Luz indirecta'),
('Suculenta','Echeveria elegans',14,'Luz directa'),
('Pothos','Epipremnum aureum',6,'Luz indirecta'),
('Lirio de paz','Spathiphyllum wallisii',5,'Sombra parcial'),
('Albahaca','Ocimum basilicum',2,'Luz directa'),
('Lengua de suegra','Dracaena trifasciata',12,'Luz indirecta');

INSERT INTO UBICACION (nombre_lugar, condiciones_luz, humedad) VALUES
('Sala','Luz indirecta','Media'),
('Balcon','Luz directa','Baja'),
('Terraza','Luz directa','Media'),
('Dormitorio','Sombra parcial','Media'),
('Patio','Luz directa','Alta');

INSERT INTO TIPO_CUIDADO (nombre_cuidado, descripcion) VALUES
('Riego','Aplicacion de agua segun necesidad'),
('Poda','Retiro de hojas o ramas deterioradas'),
('Fertilizacion','Aplicacion de nutrientes'),
('Cambio de maceta','Traslado a nuevo recipiente'),
('Limpieza de hojas','Retiro de polvo en las hojas');

INSERT INTO PLANTA (id_especie,id_ubicacion,apodo,fecha_registro,estado) VALUES
(1,1,'Costilla','2026-08-15','Activa'),
(2,2,'Roseta','2026-09-10','Activa'),
(3,1,'Enredadera','2026-07-03','Activa'),
(4,4,'Paz','2026-10-12','En observacion'),
(5,3,'Aroma','2026-10-02','Activa'),
(6,4,'Espada','2026-06-20','Activa'),
(1,5,'Monstera joven','2026-11-01','Activa'),
(3,1,'Pothos pequeno','2026-11-05','Activa');

INSERT INTO HISTORIAL_CUIDADO (id_planta,id_tipo_cuidado,fecha_realizacion,observaciones) VALUES
(1,1,'2026-11-03','Riego moderado'),
(1,3,'2026-10-20','Abono organico'),
(2,1,'2026-11-01','Sustrato humedecido'),
(3,1,'2026-11-05','Riego ligero'),
(3,3,'2026-11-02','Fertilizacion mensual'),
(4,1,'2026-11-06','Riego por sequedad del suelo'),
(4,5,'2026-11-02','Limpieza manual'),
(5,1,'2026-11-08','Riego por la manana'),
(5,2,'2026-11-04','Poda de hojas'),
(6,4,'2026-11-01','Se utilizo una maceta mayor'),
(2,3,'2026-10-25','Dosis reducida'),
(1,5,'2026-11-07','Hojas sin polvo');

INSERT INTO PROGRAMACION_CUIDADO (id_planta,id_tipo_cuidado,intervalo_dias,fecha_proxima) VALUES
(1,1,7,'2026-11-10'),
(1,3,30,'2026-11-19'),
(2,1,14,'2026-11-15'),
(3,1,6,'2026-11-11'),
(3,3,30,'2026-12-02'),
(4,1,5,'2026-11-11'),
(5,1,2,'2026-11-10'),
(5,2,21,'2026-11-25'),
(6,1,12,'2026-11-13'),
(7,1,7,'2026-11-14'),
(8,1,6,'2026-11-12');

