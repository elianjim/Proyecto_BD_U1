USE ProyectoU1_db;

INSERT INTO CATEGORIA (id_categoria, nombre, descripcion, tipo_comercio) VALUES
(1, 'Cereales', 'Granos secos como maiz y arroz', 'Consumo Interno'),
(2, 'Cultivos Industriales', 'Productos para procesamiento como el cafe', 'Exportacion'),
(3, 'Hortalizas', 'Vegetales de ciclo corto', 'Consumo Interno'),
(4, 'Leguminosas', 'Granos en vaina como mani y frejol', 'Mixto'),
(5, 'Frutas Tropicales', 'Frutas de zonas calidas', 'Consumo Interno');

-- 2. Inserción en CANTON
INSERT INTO CANTON (id_canton, nombre, zona_provincial) VALUES
(1, 'Zapotillo', 'Fronteriza Sur'),
(2, 'Macara', 'Fronteriza Sur'),
(3, 'Puyango', 'Occidente'),
(4, 'Catamayo', 'Centro-Norte'),
(5, 'Loja', 'Centro');

-- 3. Inserción en SECTOR
INSERT INTO SECTOR (id_sector, nombre, tipo_clima, id_canton) VALUES
(1, 'Garza Real', 'Calido Seco', 1),
(2, 'Sabiango', 'Calido', 2),
(3, 'Alamor', 'Templado', 3),
(4, 'Valle de Casanga', 'Calido Seco', 4),
(5, 'Vilcabamba', 'Templado', 5);

-- 4. Inserción en PRODUCTO
INSERT INTO PRODUCTO (id_producto, nombre, variedad, id_categoria) VALUES
(1, 'Maiz Duro', 'Amarillo Hibrido', 1),
(2, 'Arroz', 'Oryza sativa L.', 1),
(3, 'Cafe', 'Arabigo de Altura', 2),
(4, 'Cebolla Roja', 'Criolla', 3),
(5, 'Mani', 'Charapoto', 4);

-- 5. Inserción en MES_COSECHA
INSERT INTO MES_COSECHA (id_producto, mes) VALUES
(1, 'Mayo'),
(1, 'Junio'),
(2, 'Agosto'),
(2, 'Septiembre'),
(3, 'Agosto'),
(3, 'Septiembre'),
(4, 'Marzo'),
(4, 'Abril'),
(5, 'Julio'),
(5, 'Agosto');

-- 6. Inserción en REGISTRO_PRODUCCION
INSERT INTO REGISTRO_PRODUCCION (id_registro, fecha_registro, cantidad_produccion, nivel_abundancia, precio_promedio, ciclo_agricola, id_producto, id_sector) VALUES
(1, '2024-05-15', 4500.00, 'Alto', 320.00, 'Cosecha Invierno', 1, 1),
(2, '2024-06-10', 2100.50, 'Alto', 800.00, 'Cosecha Verano', 2, 2),
(3, '2024-08-22', 150.00, 'Medio', 4500.00, 'Recoleccion', 3, 3),
(4, '2024-03-30', 850.00, 'Alto', 600.00, 'Cosecha Continua', 4, 4),
(5, '2024-07-05', 340.00, 'Medio', 1200.00, 'Cosecha Verano', 5, 1),
(6, '2024-01-20', 0.00, 'Escaso', 0.00, 'Siembra', 1, 4);
