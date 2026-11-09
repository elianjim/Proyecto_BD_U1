CREATE DATABASE ProyectoU1_db;
USE ProyectoU1_db;

-- 1. Tabla Categoría
CREATE TABLE CATEGORIA (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    tipo_comercio VARCHAR(50),
    PRIMARY KEY (id_categoria)
);

-- 2. Tabla Cantón
CREATE TABLE CANTON (
    id_canton INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    zona_provincial VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_canton)
);

-- 3. Tabla Sector
CREATE TABLE SECTOR (
    id_sector INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    tipo_clima VARCHAR(50) NOT NULL,
    id_canton INT NOT NULL,
    PRIMARY KEY (id_sector),
    FOREIGN KEY (id_canton) REFERENCES CANTON(id_canton)
);

-- 4. Tabla Producto
CREATE TABLE PRODUCTO (
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    variedad VARCHAR(100),
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);

-- 5. Tabla Meses_Cosecha
CREATE TABLE MES_COSECHA (
    id_producto INT NOT NULL,
    mes VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_producto, mes),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);

-- 6. Tabla Registro_Produccion
CREATE TABLE REGISTRO_PRODUCCION (
    id_registro INT NOT NULL AUTO_INCREMENT,
    fecha_registro DATE NOT NULL,
    cantidad_produccion DECIMAL(10,2) NOT NULL,
    nivel_abundancia VARCHAR(50),
    precio_promedio DECIMAL(10,2),
    ciclo_agricola VARCHAR(50),
    id_producto INT NOT NULL,
    id_sector INT NOT NULL,
    PRIMARY KEY (id_registro),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto),
    FOREIGN KEY (id_sector) REFERENCES SECTOR(id_sector)
);
