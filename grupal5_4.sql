-- Crear la base de datos
CREATE DATABASE grupal5_4;

-- Usar la base de datos creada
USE grupal5_4;

-- Crear el usuario con todos los privilegios
CREATE USER 'grupal'@'localhost' IDENTIFIED BY 'Q123456789*';
GRANT ALL PRIVILEGES ON grupal5_4.* TO 'grupal'@'localhost';

-- Crear la tabla usuarios
CREATE TABLE usuarios (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  contraseña VARCHAR(50),
  zona_horaria VARCHAR(10) DEFAULT 'UTC-3',
  género VARCHAR(10),
  telefono_contacto VARCHAR(15)
);

-- Crear la tabla ingresos
CREATE TABLE ingresos (
  id_ingreso INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,
  fecha_hora_ingreso DATETIME,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);


-- Crear la tabla contacto
CREATE TABLE contacto (
  id_contacto INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,
  numero_telefono VARCHAR(15),
  correo_electronico VARCHAR(100),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- Insertar registros en la tabla usuarios
INSERT INTO usuarios (nombre, apellido, contraseña, género, telefono_contacto)
VALUES
  ('al', 'berto', 'contr1', 'Fem', '123456789'),
  ('her', 'nan', 'contr2', 'Mas', '987654321'),
  ('rod', 'rigo', 'contr3', 'Fem', '456123789'),
  ('ju', 'an', 'contr4', 'Mas', '789654123'),
  ('pe', 'dro', 'contr5', 'Fem', '321987654'),
  ('er', 'ick', 'contr6', 'Mas', '654321987'),
  ('san', 'dy', 'contr7', 'Fem', '147258369'),
  ('dan', 'iela', 'contr8', 'Mas', '369852147');

-- Insertar registros en la tabla ingresos
INSERT INTO ingresos (id_usuario) VALUES
  (1), (2), (3), (4), (5), (6), (7), (8);

-- Insertar registros en la tabla contacto
INSERT INTO contacto (id_usuario, numero_telefono, correo_electronico) VALUES
  (1, '111111111', 'correo1@yahoo.com'),
  (2, '222222222', 'correo2@gmail.com'),
  (3, '333333333', 'correo3@gmail.com'),
  (4, '444444444', 'correo4@gmail.com'),
  (5, '555555555', 'correo5@gmail.com'),
  (6, '666666666', 'correo6@gmail.com'),
  (7, '777777777', 'correo7@gmail.com'),
  (8, '888888888', 'correo8@hotmail.com');
