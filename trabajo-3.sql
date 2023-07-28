USE comercial;

CREATE TABLE Empleado (
  Documento INT NOT NULL,
  Nombre VARCHAR(255) NOT NULL,
  Apellido VARCHAR(255) NOT NULL,
  Telefono VARCHAR(255),
  Correo VARCHAR(255),
  Id_oficina INT,
  Jefe VARCHAR(255),
  Cargo VARCHAR(255),
  Creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (Documento),
  FOREIGN KEY (Id_oficina) REFERENCES Oficinas(Id_oficina)
);

CREATE TABLE Cliente (
  Id_cliente INT NOT NULL,
  Empresa VARCHAR(255) NOT NULL,
  Nombre VARCHAR(255) NOT NULL,
  Apellido VARCHAR(255) NOT NULL,
  Teléfono VARCHAR(255),
  Dirección VARCHAR(255),
  Departamento VARCHAR(255),
  País VARCHAR(255),
  Empleado_atiende INT,
  Creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (Id_cliente),
  FOREIGN KEY (Empleado_atiende) REFERENCES Empleado(Documento)
);

CREATE TABLE Oficinas (
  Id_oficina INT NOT NULL,
  Ciudad VARCHAR(255),
  Telefono VARCHAR(255),
  Direccion VARCHAR(255),
  Departamento VARCHAR(255),
  Pais VARCHAR(255),
  Creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (Id_oficina)
);


INSERT INTO Oficinas (Id_oficina, Ciudad, Telefono, Direccion, Departamento, Pais)
VALUES
  (1, 'Bogotá', '123-456-7890', 'Calle 123', 'Cundinamarca', 'Colombia'),
  (2, 'Medellín', '987-654-3210', 'Carrera 456', 'Antioquia', 'Colombia'),
  (3, 'Cali', '555-123-4567', 'Avenida 789', 'Valle del Cauca', 'Colombia'),
  (4, 'Barranquilla', '444-555-6666', 'Calle 321', 'Atlántico', 'Colombia'),
  (5, 'Cartagena', '222-333-4444', 'Carrera 987', 'Bolívar', 'Colombia'),
  (6, 'Santa Marta', '777-888-9999', 'Avenida 555', 'Magdalena', 'Colombia'),
  (7, 'Pereira', '333-444-5555', 'Calle 222', 'Risaralda', 'Colombia'),
  (8, 'Cúcuta', '888-999-0000', 'Carrera 444', 'Norte de Santander', 'Colombia'),
  (9, 'Villavicencio', '777-888-9999', 'Avenida 666', 'Meta', 'Colombia'),
  (10, 'Manizales', '111-222-3333', 'Calle 123', 'Caldas', 'Colombia'),
  (11, 'Pasto', '123-456-7890', 'Carrera 456', 'Nariño', 'Colombia'),
  (12, 'Neiva', '987-654-3210', 'Avenida 789', 'Huila', 'Colombia'),
  (13, 'Bucaramanga', '555-123-4567', 'Calle 321', 'Santander', 'Colombia'),
  (14, 'Ibagué', '444-555-6666', 'Carrera 987', 'Tolima', 'Colombia'),
  (15, 'Montería', '222-333-4444', 'Avenida 555', 'Córdoba', 'Colombia'),
  (16, 'Popayán', '777-888-9999', 'Calle 222', 'Cauca', 'Colombia'),
  (17, 'Tunja', '333-444-5555', 'Carrera 444', 'Boyacá', 'Colombia'),
  (18, 'Sincelejo', '888-999-0000', 'Avenida 666', 'Sucre', 'Colombia'),
  (19, 'Armenia', '777-888-9999', 'Calle 123', 'Quindío', 'Colombia'),
  (20, 'Valledupar', '111-222-3333', 'Carrera 456', 'Cesar', 'Colombia');
  
  
INSERT INTO Oficinas (Id_oficina, Ciudad, Telefono, Direccion, Departamento, Pais)
VALUES
  (21, 'Ibagué', '555-555-5555', 'Carrera 123', 'Tolima', 'Colombia'),
  (22, 'Manizales', '666-666-6666', 'Calle 456', 'Caldas', 'Colombia'),
  (23, 'Bucaramanga', '777-777-7777', 'Avenida 789', 'Santander', 'Colombia'),
  (24, 'Cúcuta', '888-888-8888', 'Carrera 321', 'Norte de Santander', 'Colombia'),
  (25, 'Pereira', '999-999-9999', 'Calle 987', 'Risaralda', 'Colombia'),
  (26, 'Valledupar', '111-111-1111', 'Avenida 654', 'Cesar', 'Colombia'),
  (27, 'Barranquilla', '222-222-2222', 'Carrera 321', 'Atlántico', 'Colombia'),
  (28, 'Medellín', '333-333-3333', 'Calle 987', 'Antioquia', 'Colombia'),
  (29, 'Cali', '444-444-4444', 'Avenida 654', 'Valle del Cauca', 'Colombia'),
  (30, 'Cartagena', '555-555-5555', 'Carrera 321', 'Bolívar', 'Colombia'),
  (31, 'Santa Marta', '666-666-6666', 'Calle 987', 'Magdalena', 'Colombia'),
  (32, 'Pasto', '777-777-7777', 'Avenida 654', 'Nariño', 'Colombia'),
  (33, 'Tunja', '888-888-8888', 'Carrera 321', 'Boyacá', 'Colombia'),
  (34, 'Neiva', '999-999-9999', 'Calle 987', 'Huila', 'Colombia'),
  (35, 'Ibagué', '111-111-1111', 'Avenida 654', 'Tolima', 'Colombia'),
  (36, 'Bucaramanga', '222-222-2222', 'Carrera 321', 'Santander', 'Colombia'),
  (37, 'Cúcuta', '333-333-3333', 'Calle 987', 'Norte de Santander', 'Colombia'),
  (38, 'Pereira', '444-444-4444', 'Avenida 654', 'Risaralda', 'Colombia'),
  (39, 'Valledupar', '555-555-5555', 'Carrera 321', 'Cesar', 'Colombia'),
  (40, 'Barranquilla', '666-666-6666', 'Calle 987', 'Atlántico', 'Colombia'),
  (41, 'Medellín', '777-777-7777', 'Avenida 654', 'Antioquia', 'Colombia'),
  (42, 'Cali', '888-888-8888', 'Carrera 321', 'Valle del Cauca', 'Colombia'),
  (43, 'Cartagena', '999-999-9999', 'Calle 987', 'Bolívar', 'Colombia'),
  (44, 'Santa Marta', '111-111-1111', 'Avenida 654', 'Magdalena', 'Colombia'),
  (45, 'Pasto', '222-222-2222', 'Carrera 321', 'Nariño', 'Colombia'),
  (46, 'Tunja', '333-333-3333', 'Calle 987', 'Boyacá', 'Colombia'),
  (47, 'Neiva', '444-444-4444', 'Avenida 654', 'Huila', 'Colombia'),
  (48, 'Ibagué', '555-555-5555', 'Carrera 321', 'Tolima', 'Colombia'),
  (49, 'Bucaramanga', '666-666-6666', 'Calle 987', 'Santander', 'Colombia'),
  (50, 'Cúcuta', '777-777-7777', 'Avenida 654', 'Norte de Santander', 'Colombia');
  
INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('123456789', 'Luisa', 'Hernandez', '444-555-6666', 'luisa.hernandez@example.com', 1, 'Gabriel', 'Asistente'),
  ('234567890', 'Carlos', 'Torres', '777-888-9999', 'carlos.torres@example.com', 2, 'Mariana', 'Analista'),
  ('345678901', 'Ana', 'Ramirez', '222-444-6666', 'ana.ramirez@example.com', 5, 'Lucas', 'Desarrollador'),
  ('456789012', 'Mariana', 'Garcia', '555-777-9999', 'mariana.garcia@example.com', 4, 'Matias', 'Disenador');
  
  INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('789012345', 'Sebastian', 'Sanchez', '666-666-6666', 'sebastian.sanchez@example.com', 16, 'Gabriel', 'Analista'),
  ('890123456', 'Mariana', 'Garcia', '555-555-5555', 'mariana.garcia@example.com', 19, 'Mariana', 'Programador'),
  ('901234567', 'Diego', 'Perez', '444-444-4444', 'diego.perez@example.com', 18, 'Lucas', 'Diseñador'),
  ('012345678', 'Valeria', 'Rodriguez', '777-777-7777', 'valeria.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567893', 'Lucas', 'Lopez', '888-888-8888', 'lucas.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678909', 'Fernanda', 'Martinez', '999-999-9999', 'fernanda.martinez@example.com', 23, 'Mariana', 'Desarrollador'),
  ('456789011', 'Emilio', 'Hernandez', '111-111-1111', 'emilio.hernandez@example.com', 22, 'Lucas', 'Diseñador'),
  ('567890123', 'Isabella', 'Gomez', '222-222-2222', 'isabella.gomez@example.com', 25, 'Matias', 'Analista'),
  ('678901234', 'Santiago', 'Torres', '333-333-3333', 'santiago.torres@example.com', 24, 'Gabriel', 'Programador'),
  ('901234568', 'Valentina', 'Hernandez', '444-555-6666', 'valentina.hernandez@example.com', 27, 'Mariana', 'Desarrolladora'),
  ('234567892', 'Gabriel', 'Ramirez', '555-666-7777', 'gabriel.ramirez@example.com', 26, 'Lucas', 'Diseñador'),
  ('345678902', 'Sofía', 'Garcia', '666-777-8888', 'sofia.garcia@example.com', 29, 'Matias', 'Analista'),
  ('456789018', 'Samuel', 'Martinez', '777-888-9999', 'samuel.martinez@example.com', 28, 'Gabriel', 'Programador'),
  ('567890120', 'Valeria', 'Sanchez', '888-999-0000', 'valeria.sanchez@example.com', 31, 'Mariana', 'Desarrolladora'),
  ('678901239', 'Juan', 'Gomez', '999-000-1111', 'juan.gomez@example.com', 30, 'Lucas', 'Diseñador');

INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('789012347', 'Camilo', 'Hernandez', '666-666-6668', 'camilo.hernandez@example.com', 16, 'Gabriel', 'Asistente'),
  ('890123458', 'Carolina', 'Garcia', '555-555-5557', 'carolina.garcia@example.com', 19, 'Mariana', 'Analista'),
  ('901234569', 'Andrea', 'Perez', '444-444-4446', 'andrea.perez@example.com', 18, 'Lucas', 'Desarrollador'),
  ('012345670', 'Mario', 'Rodriguez', '777-777-7779', 'mario.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567895', 'Laura', 'Lopez', '888-888-8890', 'laura.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678911', 'Julian', 'Martinez', '999-999-9991', 'julian.martinez@example.com', 23, 'Mariana', 'Desarrollador'),
  ('456789013', 'Daniela', 'Hernandez', '111-111-1113', 'daniela.hernandez@example.com', 22, 'Lucas', 'Diseñador'),
  ('567890125', 'Gabriel', 'Gomez', '222-222-2224', 'gabriel.gomez@example.com', 25, 'Matias', 'Analista'),
  ('678901236', 'Natalia', 'Torres', '333-333-3335', 'natalia.torres@example.com', 24, 'Gabriel', 'Programador'),
  ('901234570', 'Mateo', 'Hernandez', '444-555-6668', 'mateo.hernandez@example.com', 27, 'Mariana', 'Desarrolladora'),
  ('234567894', 'Gabriela', 'Ramirez', '555-666-7779', 'gabriela.ramirez@example.com', 26, 'Lucas', 'Diseñador'),
  ('345678904', 'Alejandro', 'Garcia', '666-777-8890', 'alejandro.garcia@example.com', 29, 'Matias', 'Analista'),
  ('456789020', 'Sara', 'Martinez', '777-888-9991', 'sara.martinez@example.com', 28, 'Gabriel', 'Programador'),
  ('567890122', 'Luisa', 'Sanchez', '888-999-0002', 'luisa.sanchez@example.com', 31, 'Mariana', 'Desarrolladora'),
  ('678901231', 'Valentina', 'Gomez', '999-000-1113', 'valentina.gomez@example.com', 30, 'Lucas', 'Diseñador');


INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('789012346', 'Laura', 'Hernandez', '666-666-6667', 'laura.hernandez@example.com', 16, 'Gabriel', 'Asistente'),
  ('890123457', 'Andrés', 'Garcia', '555-555-5556', 'andres.garcia@example.com', 19, 'Mariana', 'Analista'),
  ('901234566', 'Juliana', 'Perez', '444-444-4445', 'juliana.perez@example.com', 18, 'Lucas', 'Desarrollador'),
  ('012345679', 'Daniel', 'Rodriguez', '777-777-7778', 'daniel.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567898', 'Camila', 'Lopez', '888-888-8889', 'camila.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678910', 'David', 'Martinez', '999-999-9990', 'david.martinez@example.com', 23, 'Mariana', 'Desarrollador'),
  ('456780012', 'Valentina', 'Hernandez', '111-111-1112', 'valentina.hernandez@example.com', 22, 'Lucas', 'Diseñador'),
  ('567890124', 'Sebastian', 'Gomez', '222-222-2223', 'sebastian.gomez@example.com', 25, 'Matias', 'Analista'),
  ('678901235', 'Natalia', 'Torres', '333-333-3334', 'natalia.torres@example.com', 24, 'Gabriel', 'Programador'),
  ('900234569', 'Mateo', 'Hernandez', '444-555-6667', 'mateo.hernandez@example.com', 27, 'Mariana', 'Desarrolladora'),
  ('234578100', 'Gabriela', 'Ramirez', '555-666-7778', 'gabriela.ramirez@example.com', 26, 'Lucas', 'Diseñador'),
  ('345678903', 'Alejandro', 'Garcia', '666-777-8889', 'alejandro.garcia@example.com', 29, 'Matias', 'Analista'),
  ('456789019', 'Sara', 'Martinez', '777-888-9990', 'sara.martinez@example.com', 28, 'Gabriel', 'Programador'),
  ('567890121', 'Luis', 'Sanchez', '888-999-0001', 'luis.sanchez@example.com', 31, 'Mariana', 'Desarrolladora'),
  ('678901230', 'Valentín', 'Gomez', '999-000-1112', 'valentin.gomez@example.com', 30, 'Lucas', 'Diseñador');
 
 
 INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('789012349', 'Roberto', 'Hernandez', '666-666-6670', 'roberto.hernandez@example.com', 16, 'Gabriel', 'Asistente'),
  ('890123460', 'Alejandra', 'Garcia', '555-555-5559', 'alejandra.garcia@example.com', 19, 'Mariana', 'Analista'),
  ('901234571', 'Fernando', 'Perez', '444-444-4448', 'fernando.perez@example.com', 18, 'Lucas', 'Desarrollador'),
  ('012345672', 'Carla', 'Rodriguez', '777-777-7781', 'carla.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567897', 'Eduardo', 'Lopez', '888-888-8892', 'eduardo.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678913', 'Catalina', 'Martinez', '999-999-9993', 'catalina.martinez@example.com', 23, 'Mariana', 'Desarrollador'),
  ('456789015', 'Ricardo', 'Hernandez', '111-111-1115', 'ricardo.hernandez@example.com', 22, 'Lucas', 'Diseñador'),
  ('567890127', 'Ana', 'Gomez', '222-222-2226', 'ana.gomez@example.com', 25, 'Matias', 'Analista'),
  ('678901238', 'Daniel', 'Torres', '333-333-3337', 'daniel.torres@example.com', 24, 'Gabriel', 'Programador'),
  ('901234572', 'Marcela', 'Hernandez', '444-555-6670', 'marcela.hernandez@example.com', 27, 'Mariana', 'Desarrolladora'),
  ('234567896', 'Patricia', 'Ramirez', '555-666-7781', 'patricia.ramirez@example.com', 26, 'Lucas', 'Diseñador'),
  ('345678906', 'Miguel', 'Garcia', '666-777-8892', 'miguel.garcia@example.com', 29, 'Matias', 'Analista'),
  ('456789022', 'Gloria', 'Martinez', '777-888-9993', 'gloria.martinez@example.com', 28, 'Gabriel', 'Programador'),
  ('567890014', 'Jorge', 'Sanchez', '888-999-0004', 'jorge.sanchez@example.com', 31, 'Mariana', 'Desarrolladora'),
  ('678901233', 'Carolina', 'Gomez', '999-000-1115', 'carolina.gomez@example.com', 30, 'Lucas', 'Diseñador');

INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('789012351', 'Federico', 'Hernandez', '666-666-6672', 'federico.hernandez@example.com', 16, 'Gabriel', 'Asistente'),
  ('890123462', 'Sofia', 'Garcia', '555-555-5561', 'sofia.garcia@example.com', 19, 'Mariana', 'Analista'),
  ('901234573', 'Raul', 'Perez', '444-444-4449', 'raul.perez@example.com', 18, 'Lucas', 'Desarrollador'),
  ('012345674', 'Daniela', 'Rodriguez', '777-777-7783', 'daniela.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567899', 'Carlos', 'Lopez', '888-888-8894', 'carlos.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678915', 'Juliana', 'Martinez', '999-999-9995', 'juliana.martinez@example.com', 23, 'Mariana', 'Desarrollador'),
  ('456789017', 'Roberto', 'Hernandez', '111-111-1117', 'roberto.hernandez@example.com', 22, 'Lucas', 'Diseñador'),
  ('567890129', 'Natalia', 'Gomez', '222-222-2228', 'natalia.gomez@example.com', 25, 'Matias', 'Analista'),
  ('678901240', 'Javier', 'Torres', '333-333-3339', 'javier.torres@example.com', 24, 'Gabriel', 'Programador'),
  ('901234574', 'Isabel', 'Hernandez', '444-555-6672', 'isabel.hernandez@example.com', 27, 'Mariana', 'Desarrolladora'),
  ('234567000', 'Ramon', 'Ramirez', '555-666-7783', 'ramon.ramirez@example.com', 26, 'Lucas', 'Diseñador'),
  ('345678908', 'Patricia', 'Garcia', '666-777-8894', 'patricia.garcia@example.com', 29, 'Matias', 'Analista'),
  ('456789024', 'Felipe', 'Martinez', '777-888-9995', 'felipe.martinez@example.com', 28, 'Gabriel', 'Programador'),
  ('567890126', 'Maria', 'Sanchez', '888-999-0006', 'maria.sanchez@example.com', 31, 'Mariana', 'Desarrolladora'),
  ('678900000', 'Andres', 'Gomez', '999-000-1117', 'andres.gomez@example.com', 30, 'Lucas', 'Diseñador');
 
 
 INSERT INTO Empleado (Documento, Nombre, Apellido, Telefono, Correo, Id_oficina, Jefe, Cargo)
VALUES
  ('789012352', 'Gustavo', 'Hernandez', '666-666-6674', 'gustavo.hernandez@example.com', 16, 'Gabriel', 'Asistente'),
  ('890123463', 'Julia', 'Garcia', '555-555-5563', 'julia.garcia@example.com', 19, 'Mariana', 'Analista'),
  ('901234575', 'Rosa', 'Perez', '444-444-4451', 'rosa.perez@example.com', 18, 'Lucas', 'Desarrollador'),
  ('012345676', 'Hector', 'Rodriguez', '777-777-7785', 'hector.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567901', 'Camila', 'Lopez', '888-888-8896', 'camila.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678917', 'Lucia', 'Martinez', '999-999-9997', 'lucia.martinez@example.com', 23, 'Mariana', 'Desarrollador'),
  ('400789019', 'Rafael', 'Hernandez', '111-111-1119', 'rafael.hernandez@example.com', 22, 'Lucas', 'Diseñador'),
  ('567890131', 'Adriana', 'Gomez', '222-222-2230', 'adriana.gomez@example.com', 25, 'Matias', 'Analista'),
  ('678901242', 'Leonardo', 'Torres', '333-333-3341', 'leonardo.torres@example.com', 24, 'Gabriel', 'Programador'),
  ('901234576', 'Gabriela', 'Hernandez', '444-555-6674', 'gabriela.hernandez@example.com', 27, 'Mariana', 'Desarrolladora'),
  ('234567900', 'Victor', 'Ramirez', '555-666-7785', 'victor.ramirez@example.com', 26, 'Lucas', 'Diseñador'),
  ('345688910', 'Laura', 'Garcia', '666-777-8896', 'laura.garcia@example.com', 29, 'Matias', 'Analista'),
  ('456789026', 'Fernando', 'Martinez', '777-888-9997', 'fernando.martinez@example.com', 28, 'Gabriel', 'Programador'),
  ('567890128', 'Carmen', 'Sanchez', '888-999-0008', 'carmen.sanchez@example.com', 31, 'Mariana', 'Desarrolladora'),
  ('678901237', 'Diego', 'Gomez', '999-000-1119', 'diego.gomez@example.com', 30, 'Lucas', 'Diseñador'),
  ('789012354', 'Daniela', 'Hernandez', '666-666-6676', 'daniela.hernandez@example.com', 16, 'Gabriel', 'Asistente'),
  ('890123465', 'Roberto', 'Garcia', '555-555-5565', 'roberto.garcia@example.com', 19, 'Mariana', 'Analista'),
  ('901234577', 'Carolina', 'Perez', '444-444-4453', 'carolina.perez@example.com', 18, 'Lucas', 'Desarrollador'),
  ('000345678', 'Mario', 'Rodriguez', '777-777-7787', 'mario.rodriguez@example.com', 21, 'Matias', 'Gerente'),
  ('234567903', 'Laura', 'Lopez', '888-888-8898', 'laura.lopez@example.com', 20, 'Gabriel', 'Analista'),
  ('345678919', 'Julian', 'Martinez', '999-999-9999', 'julian.martinez@example.com', 23, 'Mariana', 'Desarrollador');



INSERT INTO Cliente (Id_cliente, Empresa, Nombre, Apellido, Teléfono, Dirección, Departamento, País, Empleado_atiende)
VALUES
(1, 'ABC Company', 'Juan', 'Perez', '555-1234', 'Calle 123', 'Bogotá', 'Colombia', '789012345'),
(2, 'XYZ Corp', 'Maria', 'Gomez', '444-5678', 'Avenida 456', 'Medellín', 'Colombia', '890123456'),
(3, '123 Inc', 'Carlos', 'Rodriguez', '777-8899', 'Carrera 789', 'Cali', 'Colombia', '901234567'),
(4, 'Acme Corp', 'Laura', 'Lopez', '666-9876', 'Calle 567', 'Barranquilla', 'Colombia', '012345678'),
(5, 'XYZ Corp', 'Ana', 'Hernandez', '555-4321', 'Avenida 987', 'Cartagena', 'Colombia', '234567893'),
(6, 'ABC Company', 'Pedro', 'Torres', '444-8765', 'Carrera 654', 'Santa Marta', 'Colombia', '345678909'),
(7, 'XYZ Corp', 'Sofia', 'Garcia', '777-9988', 'Calle 321', 'Bogotá', 'Colombia', '456789011'),
(8, '123 Inc', 'Diego', 'Sanchez', '666-5678', 'Avenida 654', 'Medellín', 'Colombia', '567890123'),
(9, 'Acme Corp', 'Valentina', 'Ramirez', '555-8765', 'Carrera 987', 'Cali', 'Colombia', '678901234'),
(10, 'ABC Company', 'Julian', 'Martinez', '444-1234', 'Calle 234', 'Barranquilla', 'Colombia', '901234568'),
(11, 'XYZ Corp', 'Luisa', 'Lopez', '777-4321', 'Avenida 876', 'Cartagena', 'Colombia', '234567892'),
(12, '123 Inc', 'Andres', 'Hernandez', '666-8899', 'Carrera 543', 'Santa Marta', 'Colombia', '345678902'),
(13, 'Acme Corp', 'Camila', 'Gomez', '555-9876', 'Calle 876', 'Bogotá', 'Colombia', '456789018'),
(14, 'XYZ Corp', 'Manuel', 'Torres', '444-4321', 'Avenida 234', 'Medellín', 'Colombia', '567890120'),
(15, 'ABC Company', 'Valeria', 'Garcia', '777-8765', 'Carrera 678', 'Cali', 'Colombia', '678901239'),
(16, '123 Inc', 'Gabriel', 'Sanchez', '666-1234', 'Calle 345', 'Barranquilla', 'Colombia', '901234568'),
(17, 'Acme Corp', 'Mariana', 'Ramirez', '555-5678', 'Avenida 432', 'Cartagena', 'Colombia', '789012345'),
(18, 'XYZ Corp', 'Lucas', 'Lopez', '444-8765', 'Carrera 789', 'Santa Marta', 'Colombia', '890123456'),
(19, 'ABC Company', 'Isabella', 'Torres', '777-9988', 'Calle 321', 'Bogotá', 'Colombia', '901234567'),
(20, '123 Inc', 'Mateo', 'Gomez', '666-5678', 'Avenida 654', 'Medellín', 'Colombia', '012345678'),
(21, 'Acme Corp', 'Sara', 'Ramirez', '555-8765', 'Carrera 987', 'Cali', 'Colombia', '234567893'),
(22, 'XYZ Corp', 'Joaquin', 'Martinez', '444-1234', 'Calle 234', 'Barranquilla', 'Colombia', '345678909'),
(23, 'ABC Company', 'Valentina', 'Lopez', '777-4321', 'Avenida 876', 'Cartagena', 'Colombia', '456789011'),
(24, '123 Inc', 'Sebastian', 'Hernandez', '666-8899', 'Carrera 543', 'Santa Marta', 'Colombia', '567890123'),
(25, 'Acme Corp', 'Catalina', 'Gomez', '555-9876', 'Calle 876', 'Bogotá', 'Colombia', '678901234'),
(26, 'XYZ Corp', 'Daniel', 'Torres', '444-4321', 'Avenida 234', 'Medellín', 'Colombia', '789012345'),
(27, 'ABC Company', 'Isabella', 'Garcia', '777-8765', 'Carrera 678', 'Cali', 'Colombia', '890123456'),
(28, '123 Inc', 'Mateo', 'Sanchez', '666-1234', 'Calle 345', 'Barranquilla', 'Colombia', '901234567'),
(29, 'Acme Corp', 'Sofia', 'Ramirez', '555-5678', 'Avenida 432', 'Cartagena', 'Colombia', '012345678'),
(30, 'XYZ Corp', 'Luis', 'Lopez', '444-8765', 'Carrera 789', 'Santa Marta', 'Colombia', '123456789'),
(31, 'ABC Company', 'Laura', 'Torres', '777-9988', 'Calle 321', 'Bogotá', 'Colombia', '234567893'),
(32, '123 Inc', 'Diego', 'Gomez', '666-5678', 'Avenida 654', 'Medellín', 'Colombia', '345678909'),
(33, 'Acme Corp', 'Valeria', 'Ramirez', '555-8765', 'Carrera 987', 'Cali', 'Colombia', '456789011'),
(34, 'XYZ Corp', 'Andres', 'Martinez', '444-1234', 'Calle 234', 'Barranquilla', 'Colombia', '567890123'),
(35, 'ABC Company', 'Camila', 'Lopez', '777-4321', 'Avenida 876', 'Cartagena', 'Colombia', '678901234'),
(36, '123 Inc', 'Luciana', 'Hernandez', '666-8899', 'Carrera 543', 'Santa Marta', 'Colombia', '789012345'),
(37, 'Acme Corp', 'Santiago', 'Gomez', '555-9876', 'Calle 876', 'Bogotá', 'Colombia', '890123456'),
(38, 'XYZ Corp', 'Emma', 'Torres', '444-4321', 'Avenida 234', 'Medellín', 'Colombia', '901234567'),
(39, 'ABC Company', 'Antonio', 'Garcia', '777-8765', 'Carrera 678', 'Cali', 'Colombia', '012345678'),
(40, '123 Inc', 'Olivia', 'Sanchez', '666-1234', 'Calle 345', 'Barranquilla', 'Colombia', "123456789");

INSERT INTO Cliente (Id_cliente, Empresa, Nombre, Apellido, Teléfono, Dirección, Departamento, País, Empleado_atiende)
VALUES
(41, 'Acme Corp', 'Isabella', 'Hernandez', '555-4321', 'Avenida 654', 'Cartagena', 'Colombia', '234567890'),
(42, 'XYZ Corp', 'Daniel', 'Gomez', '444-8899', 'Carrera 987', 'Santa Marta', 'Colombia', '345678901'),
(43, 'ABC Company', 'Valentina', 'Martinez', '777-9876', 'Calle 234', 'Bogotá', 'Colombia', '456789012'),
(44, '123 Inc', 'Sebastian', 'Lopez', '666-4321', 'Avenida 876', 'Medellín', 'Colombia', '567890123'),
(45, 'Acme Corp', 'Sofia', 'Ramirez', '555-1234', 'Carrera 543', 'Cali', 'Colombia', '678901234'),
(46, 'XYZ Corp', 'Mateo', 'Garcia', '444-8765', 'Calle 876', 'Barranquilla', 'Colombia', '789012345'),
(47, 'ABC Company', 'Isabella', 'Sanchez', '777-8899', 'Avenida 234', 'Cartagena', 'Colombia', '890123456'),
(48, '123 Inc', 'Santiago', 'Torres', '666-9876', 'Carrera 678', 'Santa Marta', 'Colombia', '901234567'),
(49, 'Acme Corp', 'Emma', 'Gomez', '555-8899', 'Calle 345', 'Bogotá', 'Colombia', '012345678'),
(50, 'XYZ Corp', 'Antonio', 'Hernandez', '444-1234', 'Avenida 654', 'Medellín', 'Colombia', '123456789');

 
 SELECT * FROM Oficinas WHERE Departamento LIKE "Ca%";
 
 SELECT Id_oficina FROM Oficinas WHERE Id_oficina BETWEEN 2 AND 10;
 
 SELECT Id_oficina, Departamento, Direccion FROM Oficinas WHERE Id_oficina BETWEEN 1 AND 9;
 
 
 
 
 
 
 
 
 
 
 
 
 


