CREATE DATABASE biblioteca;
USE biblioteca;


CREATE TABLE inventario(
id_inventario INT(10),
id_libro INT (10),
cantidad_disponible INT,
cantidad_prestada INT,
cantidad_total INT,
ubicacion VARCHAR(100),
PRIMARY KEY (id_inventario, id_libro),
FOREIGN KEY(id_libro) REFERENCES libro (id_libro)
);


CREATE TABLE usuario (
id_usuario INT,
nombre VARCHAR (100),
correo VARCHAR (100),
telefono INT (10),
PRIMARY KEY (id_usuario)
);


CREATE TABLE prestamo(
id_prestamo INT(10),
id_usuario INT,
id_libro INT,
fecha_salida DATE, 
fecha_entrega DATE,
id_personal INT,
PRIMARY KEY (id_prestamo),
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
FOREIGN KEY (id_personal) REFERENCES personal(id_personal)

);


CREATE TABLE libro (
id_libro INT,
editorial VARCHAR (100),
autor VARCHAR (100),
genero VARCHAR(100),
nombre_libro VARCHAR(100),
PRIMARY KEY (id_libro)


);


CREATE TABLE personal(
id_personal INT,
entrada TIME,
salida TIME,
nombre VARCHAR (100),
PRIMARY KEY (id_personal)
);


ALTER TABLE personal ADD fecha DATE;


INSERT INTO libro (id_libro, editorial, autor, genero, nombre_libro)
VALUES
(1, 'J.B. Lippincott & Co.', 'Harper Lee', 'Clásico, Drama', 'To Kill a Mockingbird'),
(2, 'Secker & Warburg', 'George Orwell', 'Distopía, Ciencia Ficción', '1984'),
(3, 'Charles Scribner''s Sons', 'F. Scott Fitzgerald', 'Clásico, Novela', 'The Great Gatsby'),
(4, 'T. Egerton, Whitehall', 'Jane Austen', 'Clásico, Romance', 'Pride and Prejudice'),
(5, 'Little, Brown and Company', 'J.D. Salinger', 'Novela, Bildungsroman', 'The Catcher in the Rye'),
(6, 'Bloomsbury', 'J.K. Rowling', 'Fantasía, Aventura', 'Harry Potter and the Sorcerer''s Stone'),
(7, 'George Allen & Unwin', 'J.R.R. Tolkien', 'Fantasía, Épico', 'The Lord of the Rings'),
(8, 'George Allen & Unwin', 'J.R.R. Tolkien', 'Fantasía, Aventura', 'The Hobbit'),
(9, 'Geoffrey Bles', 'C.S. Lewis', 'Fantasía, Juvenil', 'The Chronicles of Narnia'),
(10, 'Simon & Schuster', 'Jenny Han', 'Romance, Juvenil', 'To All the Boys I''ve Loved Before'),
(11, 'Scholastic Press', 'Suzanne Collins', 'Distopía, Aventura', 'The Hunger Games'),
(12, 'Doubleday', 'Dan Brown', 'Misterio, Thriller', 'The Da Vinci Code'),
(13, 'Rocco', 'Paulo Coelho', 'Ficción, Espiritualidad', 'The Alchemist'),
(14, 'Norstedts Förlag', 'Stieg Larsson', 'Misterio, Suspense', 'The Girl with the Dragon Tattoo'),
(15, 'Crown Publishing Group', 'Gillian Flynn', 'Thriller, Misterio', 'Gone Girl'),
(16, 'Dutton Books', 'John Green', 'Romance, Drama', 'The Fault in Our Stars'),
(17, 'Chilton Books', 'Frank Herbert', 'Ciencia Ficción, Aventura', 'Dune'),
(18, 'Chatto & Windus', 'Aldous Huxley', 'Ciencia Ficción, Distopía', 'Brave New World'),
(19, 'Ward, Lock and Company', 'Oscar Wilde', 'Clásico, Drama', 'The Picture of Dorian Gray'),
(20, 'Harper & Brothers', 'Herman Melville', 'Clásico, Aventura', 'Moby-Dick');




INSERT INTO usuario (id_usuario, nombre, correo, telefono)
VALUES
('123456789', 'Ana García', 'ana.garcia@example.com', 55512345),
('567890123', 'Carlos Martínez', 'carlos.martinez@example.com', 55598765),
('567890123', 'Sofía Rodríguez', 'sofia.rodriguez@example.com', 55578901),
('456789012', 'Andrés López', 'andres.lopez@example.com', 55545678),
('234567890', 'María Torres', 'maria.torres@example.com', 55523456),
('876543200', 'Pedro Ramírez', 'pedro.ramirez@example.com', 55587659),
('567890223', 'Laura González', 'laura.gonzalez@example.com', 55556789),
('345678901', 'Daniel Sánchez', 'daniel.sanchez@example.com', 555345678),
('688901234', 'Carolina Paredes', 'carolina.paredes@example.com', 55567890),
('432109876', 'José Rivera', 'jose.rivera@example.com', 55543210),
('890123456', 'Gabriela Medina', 'gabriela.medina@example.com', 55589012),
('210987654', 'Fernando Herrera', 'fernando.herrera@example.com', 55521098),
('765432109', 'Isabel Mendoza', 'isabel.mendoza@example.com', 55576543),
('321098765', 'Ricardo Silva', 'ricardo.silva@example.com', 55532109),
('654321098', 'Patricia Ortiz', 'patricia.ortiz@example.com', 55565432),
('098765432', 'Miguel Vargas', 'miguel.vargas@example.com', 555098765),
('543210987', 'Luisa Cruz', 'luisa.cruz@example.com', 55554321),
('876543210', 'Alejandro Ramírez', 'alejandro.ramirez@example.com', 55587654),
('432199876', 'Carmen Soto', 'carmen.soto@example.com', 55543210),
('678901234', 'Javier Gómez', 'javier.gomez@example.com', 55567890);



INSERT INTO personal (id_personal, entrada, salida, nombre, fecha)
VALUES
('101234567', '08:00:00', '17:00:00', 'Juan Pérez', '2023-08-02'),
('201987654', '08:00:00', '17:00:00', 'María Gómez', '2023-08-03'),
('311234567', '08:00:00', '17:00:00', 'Pedro Ramírez', '2023-08-02'),
('401234567', '08:00:00', '27:00:00', 'Laura González', '2023-08-03');


INSERT INTO inventario (id_inventario, id_libro, cantidad_disponible, cantidad_prestada, cantidad_total, ubicacion)
VALUES
(1, 1, 10, 2, 12, 'Estante 1'),
(2, 2, 5, 1, 6, 'Estante 2'),
(3, 3, 8, 0, 8, 'Estante 3'),
(4, 4, 3, 0, 3, 'Estante 4'),
(5, 5, 15, 3, 18, 'Estante 5'),
(6, 6, 20, 5, 25, 'Estante 6'),
(7, 7, 12, 2, 14, 'Estante 7'),
(8, 8, 10, 1, 11, 'Estante 8'),
(9, 9, 7, 0, 7, 'Estante 9'),
(10, 10, 4, 1, 5, 'Estante 10'),
(11, 11, 6, 0, 6, 'Estante 11'),
(12, 12, 8, 0, 8, 'Estante 12'),
(13, 13, 10, 3, 13, 'Estante 13'),
(14, 14, 5, 1, 6, 'Estante 14'),
(15, 15, 7, 0, 7, 'Estante 15'),
(16, 16, 3, 1, 4, 'Estante 16'),
(17, 17, 9, 2, 11, 'Estante 17'),
(18, 18, 12, 3, 15, 'Estante 18'),
(19, 19, 6, 1, 7, 'Estante 19');

INSERT INTO prestamo (id_prestamo, id_usuario, id_libro, fecha_salida, fecha_entrega, id_personal)
VALUES
(1,987654321,20,'2023-08-02', '2023-08-09',401234567),
(2,890123456,3, '2023-08-03', '2023-08-10' ,311234567),
(3,678901234,3, '2023-08-02', '2023-08-09',201987654),
(4,432199876,6, '2023-08-03', '2023-08-10', 401234567 ),
(5,210987654,10, '2023-08-03', '2023-08-10',311234567),
(6,234567890,12,'2023-08-02', '2023-08-09',311234567),
(7,567890123,17,'2023-08-03', '2023-08-10',401234567),
(8,567890123,9,'2023-08-02', '2023-08-09',401234567),
(9,432109876,11,'2023-08-03', '2023-08-10',311234567),
(10,123456789,18,'2023-08-02', '2023-08-09',201987654);


