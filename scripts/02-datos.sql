/* =============================================================
   Gestion Academica - Datos
   Volcado del contenido actual. Solo inserta en las tablas vacias,
   asi que volver a ejecutarlo no duplica nada.

   Se fuerzan los id con IDENTITY_INSERT para conservar las
   referencias entre Nota, Estudiante y Profesor.

   Usuarios sembrados (contrasenas de ejemplo, cambialas en produccion):
     admin    / Admin123*      rol Admin
     consulta / Consulta123*   rol Lector
   ============================================================= */

USE GestionAcademica;
GO

-- Sin esto, 165 INSERT producen 165 lineas de "(1 rows affected)".
SET NOCOUNT ON;
GO

/* ---------- Usuarios (2 filas) ---------- */
IF NOT EXISTS (SELECT 1 FROM dbo.Usuario)
BEGIN
    SET IDENTITY_INSERT dbo.Usuario ON;

    INSERT INTO Usuario (id, nombreUsuario, nombreCompleto, contrasenaHash, rol, activo) VALUES (1, N'admin', N'Administrador del sistema', N'$2a$11$dT2Pnc8SzDYbO8iMfAkZ/Oo6HsifxX2MLI4S.W3iZtp3XXxm.V.Ki', N'Admin', 1);
    INSERT INTO Usuario (id, nombreUsuario, nombreCompleto, contrasenaHash, rol, activo) VALUES (2, N'consulta', N'Usuario de consulta', N'$2a$11$8.csBU0R1rhXNBSeulvaq.8OSuvbv6fpp1/4lTgq275Jatb1/gOqO', N'Lector', 1);

    SET IDENTITY_INSERT dbo.Usuario OFF;
END
GO

/* ---------- Profesores (4 filas) ---------- */
IF NOT EXISTS (SELECT 1 FROM dbo.Profesor)
BEGIN
    SET IDENTITY_INSERT dbo.Profesor ON;

    INSERT INTO Profesor (id, nombre) VALUES (1, N'Carlos Andrés Gales');
    INSERT INTO Profesor (id, nombre) VALUES (2, N'María Fernanda López');
    INSERT INTO Profesor (id, nombre) VALUES (3, N'Jorge Luis Ramírez');
    INSERT INTO Profesor (id, nombre) VALUES (4, N'Luisa Fernanda Torres');

    SET IDENTITY_INSERT dbo.Profesor OFF;
END
GO

/* ---------- Estudiantes (14 filas) ---------- */
IF NOT EXISTS (SELECT 1 FROM dbo.Estudiante)
BEGIN
    SET IDENTITY_INSERT dbo.Estudiante ON;

    INSERT INTO Estudiante (id, nombre) VALUES (1, N'Ana María Gomez');
    INSERT INTO Estudiante (id, nombre) VALUES (2, N'Juan Sebastián Rodríguez');
    INSERT INTO Estudiante (id, nombre) VALUES (3, N'Laura Camila Martínez');
    INSERT INTO Estudiante (id, nombre) VALUES (4, N'Santiago Hernández');
    INSERT INTO Estudiante (id, nombre) VALUES (5, N'Valentina Castro López');
    INSERT INTO Estudiante (id, nombre) VALUES (6, N'Mateo Alejandro Ruiz');
    INSERT INTO Estudiante (id, nombre) VALUES (7, N'Isabella Moreno');
    INSERT INTO Estudiante (id, nombre) VALUES (8, N'Daniel Felipe Ortiz');
    INSERT INTO Estudiante (id, nombre) VALUES (9, N'Sofía Jiménez');
    INSERT INTO Estudiante (id, nombre) VALUES (10, N'Nicolás Vargas');
    INSERT INTO Estudiante (id, nombre) VALUES (11, N'Mariana Rojas');
    INSERT INTO Estudiante (id, nombre) VALUES (12, N'Samuel Cárdenas');
    INSERT INTO Estudiante (id, nombre) VALUES (19, N'Lorena Vargas');
    INSERT INTO Estudiante (id, nombre) VALUES (24, N'Bruno Alvenis');

    SET IDENTITY_INSERT dbo.Estudiante OFF;
END
GO

/* ---------- Notas (145 filas) ---------- */
IF NOT EXISTS (SELECT 1 FROM dbo.Nota)
BEGIN
    SET IDENTITY_INSERT dbo.Nota ON;

    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (1, N'Parcial 1 – Matemáticas', 1, 1, 4.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (2, N'Parcial 1 – Matemáticas', 1, 2, 2.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (3, N'Parcial 1 – Matemáticas', 1, 3, 2.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (4, N'Parcial 1 – Matemáticas', 1, 4, 3.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (5, N'Parcial 1 – Matemáticas', 1, 5, 4.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (6, N'Parcial 1 – Matemáticas', 1, 6, 5.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (7, N'Parcial 1 – Matemáticas', 1, 7, 2.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (8, N'Parcial 1 – Matemáticas', 1, 8, 3.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (9, N'Parcial 1 – Matemáticas', 1, 9, 4.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (10, N'Parcial 1 – Matemáticas', 1, 10, 4.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (11, N'Parcial 1 – Matemáticas', 1, 11, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (12, N'Parcial 1 – Matemáticas', 1, 12, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (13, N'Parcial 2 – Matemáticas', 1, 1, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (14, N'Parcial 2 – Matemáticas', 1, 2, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (15, N'Parcial 2 – Matemáticas', 1, 3, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (16, N'Parcial 2 – Matemáticas', 1, 4, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (17, N'Parcial 2 – Matemáticas', 1, 5, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (18, N'Parcial 2 – Matemáticas', 1, 6, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (19, N'Parcial 2 – Matemáticas', 1, 7, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (20, N'Parcial 2 – Matemáticas', 1, 8, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (21, N'Parcial 2 – Matemáticas', 1, 9, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (22, N'Parcial 2 – Matemáticas', 1, 10, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (23, N'Parcial 2 – Matemáticas', 1, 11, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (24, N'Parcial 2 – Matemáticas', 1, 12, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (25, N'Taller – Matemáticas', 1, 1, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (26, N'Taller – Matemáticas', 1, 2, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (27, N'Taller – Matemáticas', 1, 3, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (28, N'Taller – Matemáticas', 1, 4, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (29, N'Taller – Matemáticas', 1, 5, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (30, N'Taller – Matemáticas', 1, 6, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (31, N'Taller – Matemáticas', 1, 7, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (32, N'Taller – Matemáticas', 1, 8, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (33, N'Taller – Matemáticas', 1, 9, 3.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (34, N'Taller – Matemáticas', 1, 10, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (35, N'Taller – Matemáticas', 1, 11, 4.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (36, N'Taller – Matemáticas', 1, 12, 2.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (37, N'Parcial 1 – Español', 2, 1, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (38, N'Parcial 1 – Español', 2, 2, 3.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (39, N'Parcial 1 – Español', 2, 3, 4.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (40, N'Parcial 1 – Español', 2, 4, 4.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (41, N'Parcial 1 – Español', 2, 5, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (42, N'Parcial 1 – Español', 2, 6, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (43, N'Parcial 1 – Español', 2, 7, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (44, N'Parcial 1 – Español', 2, 8, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (45, N'Parcial 1 – Español', 2, 9, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (46, N'Parcial 1 – Español', 2, 10, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (47, N'Parcial 1 – Español', 2, 11, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (48, N'Parcial 1 – Español', 2, 12, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (49, N'Parcial 2 – Español', 2, 1, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (50, N'Parcial 2 – Español', 2, 2, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (51, N'Parcial 2 – Español', 2, 3, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (52, N'Parcial 2 – Español', 2, 4, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (53, N'Parcial 2 – Español', 2, 5, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (54, N'Parcial 2 – Español', 2, 6, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (55, N'Parcial 2 – Español', 2, 7, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (56, N'Parcial 2 – Español', 2, 8, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (57, N'Parcial 2 – Español', 2, 9, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (58, N'Parcial 2 – Español', 2, 10, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (59, N'Parcial 2 – Español', 2, 11, 2.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (60, N'Parcial 2 – Español', 2, 12, 3.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (61, N'Taller – Español', 2, 1, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (62, N'Taller – Español', 2, 2, 2.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (63, N'Taller – Español', 2, 3, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (64, N'Taller – Español', 2, 4, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (65, N'Taller – Español', 2, 5, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (66, N'Taller – Español', 2, 6, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (67, N'Taller – Español', 2, 7, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (68, N'Taller – Español', 2, 8, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (69, N'Taller – Español', 2, 9, 4.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (70, N'Taller – Español', 2, 10, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (71, N'Taller – Español', 2, 11, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (72, N'Taller – Español', 2, 12, 4.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (73, N'Parcial 1 – Ciencias', 3, 1, 4.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (74, N'Parcial 1 – Ciencias', 3, 2, 5.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (75, N'Parcial 1 – Ciencias', 3, 3, 2.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (76, N'Parcial 1 – Ciencias', 3, 4, 3.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (77, N'Parcial 1 – Ciencias', 3, 5, 4.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (78, N'Parcial 1 – Ciencias', 3, 6, 4.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (79, N'Parcial 1 – Ciencias', 3, 7, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (80, N'Parcial 1 – Ciencias', 3, 8, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (81, N'Parcial 1 – Ciencias', 3, 9, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (82, N'Parcial 1 – Ciencias', 3, 10, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (83, N'Parcial 1 – Ciencias', 3, 11, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (84, N'Parcial 1 – Ciencias', 3, 12, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (85, N'Parcial 2 – Ciencias', 3, 1, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (86, N'Parcial 2 – Ciencias', 3, 2, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (87, N'Parcial 2 – Ciencias', 3, 3, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (88, N'Parcial 2 – Ciencias', 3, 4, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (89, N'Parcial 2 – Ciencias', 3, 5, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (90, N'Parcial 2 – Ciencias', 3, 6, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (91, N'Parcial 2 – Ciencias', 3, 7, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (92, N'Parcial 2 – Ciencias', 3, 8, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (93, N'Parcial 2 – Ciencias', 3, 9, 2.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (94, N'Parcial 2 – Ciencias', 3, 10, 3.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (95, N'Parcial 2 – Ciencias', 3, 11, 3.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (96, N'Parcial 2 – Ciencias', 3, 12, 4.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (97, N'Taller – Ciencias', 3, 1, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (98, N'Taller – Ciencias', 3, 2, 3.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (99, N'Taller – Ciencias', 3, 3, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (100, N'Taller – Ciencias', 3, 4, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (101, N'Taller – Ciencias', 3, 5, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (102, N'Taller – Ciencias', 3, 6, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (103, N'Taller – Ciencias', 3, 7, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (104, N'Taller – Ciencias', 3, 8, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (105, N'Taller – Ciencias', 3, 9, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (106, N'Taller – Ciencias', 3, 10, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (107, N'Taller – Ciencias', 3, 11, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (108, N'Taller – Ciencias', 3, 12, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (109, N'Parcial 1 – Inglés', 4, 1, 2.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (110, N'Parcial 1 – Inglés', 4, 2, 3.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (111, N'Parcial 1 – Inglés', 4, 3, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (112, N'Parcial 1 – Inglés', 4, 4, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (113, N'Parcial 1 – Inglés', 4, 5, 2.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (114, N'Parcial 1 – Inglés', 4, 6, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (115, N'Parcial 1 – Inglés', 4, 7, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (116, N'Parcial 1 – Inglés', 4, 8, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (117, N'Parcial 1 – Inglés', 4, 9, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (118, N'Parcial 1 – Inglés', 4, 10, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (119, N'Parcial 1 – Inglés', 4, 11, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (120, N'Parcial 1 – Inglés', 4, 12, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (121, N'Parcial 2 – Inglés', 4, 1, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (122, N'Parcial 2 – Inglés', 4, 2, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (123, N'Parcial 2 – Inglés', 4, 3, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (124, N'Parcial 2 – Inglés', 4, 4, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (125, N'Parcial 2 – Inglés', 4, 5, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (126, N'Parcial 2 – Inglés', 4, 6, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (127, N'Parcial 2 – Inglés', 4, 7, 2.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (128, N'Parcial 2 – Inglés', 4, 8, 3.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (129, N'Parcial 2 – Inglés', 4, 9, 3.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (130, N'Parcial 2 – Inglés', 4, 10, 4.50);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (131, N'Parcial 2 – Inglés', 4, 11, 2.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (132, N'Parcial 2 – Inglés', 4, 12, 2.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (133, N'Taller – Inglés', 4, 1, 4.60);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (134, N'Taller – Inglés', 4, 2, 2.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (135, N'Taller – Inglés', 4, 3, 3.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (136, N'Taller – Inglés', 4, 4, 3.90);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (137, N'Taller – Inglés', 4, 5, 4.70);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (138, N'Taller – Inglés', 4, 6, 2.30);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (139, N'Taller – Inglés', 4, 7, 3.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (140, N'Taller – Inglés', 4, 8, 4.00);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (141, N'Taller – Inglés', 4, 9, 4.80);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (142, N'Taller – Inglés', 4, 10, 2.40);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (143, N'Taller – Inglés', 4, 11, 3.20);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (144, N'Taller – Inglés', 4, 12, 4.10);
    INSERT INTO Nota (id, nombre, idProfesor, idEstudiante, valor) VALUES (145, N'Parcial 2', 1, 2, 4.20);

    SET IDENTITY_INSERT dbo.Nota OFF;
END
GO

/* Deja los contadores IDENTITY donde corresponde, para que el proximo
   INSERT no choque con un id ya usado. */
DBCC CHECKIDENT ('dbo.Profesor',   RESEED) WITH NO_INFOMSGS;
DBCC CHECKIDENT ('dbo.Estudiante', RESEED) WITH NO_INFOMSGS;
DBCC CHECKIDENT ('dbo.Nota',       RESEED) WITH NO_INFOMSGS;
DBCC CHECKIDENT ('dbo.Usuario',    RESEED) WITH NO_INFOMSGS;
GO

PRINT 'Datos listos.';
