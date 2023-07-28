CREATE DATABASE Retorno;

USE Retorno;

CREATE TABLE cliente(
id_cliente INT  PRIMARY KEY auto_increment NOT NULL,
Nombre VARCHAR(250) NOT NULL,
Apellido VARCHAR(250) NOT NULL,
Direccion VARCHAR(250) NOT NULL,
Telefono INT (10) NOT NULL,
Correo VARCHAR(250) NOT NULL
);


CREATE TABLE ventas(
id_ventas INT NOT NULL auto_increment,
id_cliente INT NOT NULL,
fecha_venta INT NOT NULL,
total_venta INT NOT NULL,
PRIMARY KEY(id_ventas),
foreign key(id_cliente) references cliente(id_cliente)
);


CREATE TABLE det_ventas(
id_detalles INT NOT NULL auto_increment,
id_ventas INT NOT NULL,
id_producto INT NOT NULL,
cantidad int not null,
precio_unitario int not null,
primary key (id_detalles),
foreign key(id_ventas) references ventas(id_ventas),
foreign key (id_producto) references productos (id_producto)
);

CREATE TABLE productos(
id_producto INT NOT NULL auto_increment,
nombre VARCHAR(250) NOT NULL,
descripcion VARCHAR(250) NOT NULL,
precio INT NOT NULL,
PRIMARY KEY (id_producto)
);

INSERT INTO cliente (Nombre, Apellido, Direccion, Telefono, Correo) VALUES
('John', 'Doe', '123 Main St', 1234567890, 'john.doe@example.com'),
('Jane', 'Smith', '456 Oak Ave', 9876543210, 'jane.smith@example.com'),
('Michael', 'Johnson', '789 Elm St', 2345678901, 'michael.johnson@example.com'),
('Emily', 'Williams', '789 Maple Rd', 5678901234, 'emily.williams@example.com'),
('David', 'Brown', '321 Pine Ln', 9012345678, 'david.brown@example.com'),
('Sarah', 'Miller', '654 Cedar Rd', 6789012345, 'sarah.miller@example.com'),
('Matthew', 'Wilson', '987 Birch Ave', 3456789012, 'matthew.wilson@example.com'),
('Laura', 'Taylor', '246 Spruce St', 4567890123, 'laura.taylor@example.com'),
('Robert', 'Anderson', '135 Walnut Rd', 7890123456, 'robert.anderson@example.com'),
('Jennifer', 'Thomas', '802 Cherry Ln', 5678901234, 'jennifer.thomas@example.com');


INSERT INTO productos (nombre, descripcion, precio) VALUES
('Laptop', '15-inch laptop', 800),
('Phone', 'Smartphone', 500),
('Tablet', '10-inch tablet', 300),
('Headphones', 'Wireless headphones', 100),
('Mouse', 'Wireless mouse', 30),
('Keyboard', 'Mechanical keyboard', 80),
('Monitor', '27-inch monitor', 250),
('Printer', 'All-in-one printer', 150),
('External HDD', '1TB external hard drive', 70),
('Smart Watch', 'Fitness tracker', 120);


INSERT INTO ventas (id_cliente, fecha_venta, total_venta) VALUES
(1, UNIX_TIMESTAMP('2023-07-28'), 900),
(2, UNIX_TIMESTAMP('2023-07-27'), 800),
(3, UNIX_TIMESTAMP('2023-07-26'), 650),
(4, UNIX_TIMESTAMP('2023-07-25'), 350),
(5, UNIX_TIMESTAMP('2023-07-24'), 200),
(6, UNIX_TIMESTAMP('2023-07-23'), 400),
(7, UNIX_TIMESTAMP('2023-07-22'), 750),
(8, UNIX_TIMESTAMP('2023-07-21'), 900),
(9, UNIX_TIMESTAMP('2023-07-20'), 150),
(10, UNIX_TIMESTAMP('2023-07-19'), 300);



INSERT INTO det_ventas (id_ventas, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 800),
(1, 4, 1, 100),
(2, 2, 1, 500),
(2, 6, 1, 80),
(3, 3, 1, 300),
(3, 8, 1, 150),
(4, 1, 1, 800),
(4, 5, 1, 30),
(5, 4, 1, 100),
(5, 10, 1, 120),
(6, 7, 1, 250),
(6, 9, 1, 70),
(7, 3, 1, 300),
(7, 5, 1, 30),
(8, 1, 1, 800),
(8, 10, 1, 120),
(9, 6, 1, 80),
(10, 2, 1, 500),
(10, 4, 1, 100);


