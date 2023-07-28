CREATE DATABASE CADPH;
USE CADPH;

CREATE TABLE Titulada(
id INT (20) UNIQUE PRIMARY KEY,
nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
correo VARCHAR(50) UNIQUE NOT NULL,
edad INT UNSIGNED NOT NULL,
direccion VARCHAR(20) NOT NULL,
ciudad VARCHAR(20) NOT NULL,
estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
formación ENUM('Técnico', 'Tecnólogo') DEFAULT
'Tecnólogo',
creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación)
VALUES
    (1, 'Juan Pérez', 'juan@example.com', 25, 'Calle 123', 'Bogotá', 'Activo', 'Técnico'),
    (2, 'María López', 'maria@example.com', 30, 'Calle 456', 'Medellín', 'Inactivo', 'Tecnólogo'),
    (3, 'Carlos Gómez', 'carlos@example.com', 28, 'Calle 789', 'Cali', 'Activo', 'Técnico'),
    (4, 'Ana Rodríguez', 'ana@example.com', 32, 'Calle 987', 'Barranquilla', 'Activo', 'Técnico'),
    (5, 'Luisa Torres', 'luisa@example.com', 29, 'Calle 654', 'Cartagena', 'Inactivo', 'Tecnólogo'),
    (6, 'Pedro Castro', 'pedro@example.com', 27, 'Calle 321', 'Bucaramanga', 'Activo', 'Técnico'),
    (7, 'Marta Duque', 'marta@example.com', 31, 'Calle 654', 'Pereira', 'Activo', 'Técnico'),
    (8, 'Andrés Ramírez', 'andres@example.com', 26, 'Calle 987', 'Santa Marta', 'Inactivo', 'Tecnólogo'),
    (9, 'Sofía Vargas', 'sofia@example.com', 33, 'Calle 321', 'Villavicencio', 'Activo', 'Técnico'),
    (10, 'Gabriel Ríos', 'gabriel@example.com', 28, 'Calle 654', 'Pasto', 'Inactivo', 'Tecnólogo'),
    (11, 'Laura Gutiérrez', 'laura@example.com', 29, 'Calle 123', 'Cúcuta', 'Activo', 'Técnico'),
    (12, 'Daniel Sánchez', 'daniel@example.com', 30, 'Calle 456', 'Manizales', 'Activo', 'Técnico'),
    (13, 'Valentina Torres', 'valentina@example.com', 27, 'Calle 789', 'Ibagué', 'Inactivo', 'Tecnólogo'),
    (14, 'José López', 'jose@example.com', 31, 'Calle 987', 'Armenia', 'Activo', 'Técnico'),
    (15, 'Carolina Ramírez', 'carolina@example.com', 32, 'Calle 654', 'Montería', 'Inactivo', 'Tecnólogo'),
    (16, 'Andrea Gómez', 'andrea@example.com', 26, 'Calle 321', 'Sincelejo', 'Activo', 'Técnico'),
    (17, 'Javier Duque', 'javier@example.com', 28, 'Calle 654', 'Valledupar', 'Activo', 'Técnico');
    
    INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación)
VALUES
    (18, 'Camila Vargas', 'camila@example.com', 30, 'Calle 123', 'Tunja', 'Inactivo', 'Tecnólogo'),
    (19, 'Santiago Torres', 'santiago@example.com', 29, 'Calle 456', 'Popayán', 'Activo', 'Técnico'),
    (20, 'Isabella Ríos', 'isabella@example.com', 27, 'Calle 789', 'Riohacha', 'Inactivo', 'Tecnólogo');
    
    
    UPDATE Titulada SET nombre_apellido = "Lomas Turbas" WHERE id = 4;
    
    UPDATE Titulada SET nombre_apellido = "JAMES RODRIGUEZ", correo ="yuyeimi@sea.edu.co" , edad= "78" WHERE id =10;
    
    

    
    