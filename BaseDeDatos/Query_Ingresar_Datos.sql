INSERT INTO [Persona] ([idPersona], [idTipoPersona], [dni], [apellidoPaterno], [apellidoMaterno], [idUbigeo], [estado])
VALUES
(1, 1, '8765432', 'Garc�a', 'Fern�ndez', '010101', 1),
(2, 2, '7654321', 'L�pez', 'Mart�nez', '020101', 0),
(3, 3, '6543210', 'P�rez', 'Gonz�lez', '030101', 1),
(4, 1, '5432109', 'S�nchez', 'Ram�rez', '040101', 0),
(5, 2, '4321098', 'Torres', 'Ruiz', '050101', 1),
(6, 3, '3210987', 'Flores', 'Morales', '060101', 1),
(7, 1, '2109876', 'G�mez', 'Ortiz', '070101', 0),
(8, 2, '1098765', 'D�az', 'Moreno', '080101', 1),
(9, 3, '0987654', 'Mendoza', 'Jim�nez', '090101', 0),
(10, 1, '9876543', 'Alvarez', 'P�rez', '100101', 1),
(11, 2, '8765439', 'Vargas', 'Guti�rrez', '110101', 1),
(12, 3, '7654328', 'Castillo', 'Rojas', '120101', 0),
(13, 1, '6543217', 'Ortega', 'Cruz', '130101', 1),
(14, 2, '5432106', 'Su�rez', 'Delgado', '010201', 0),
(15, 3, '4321095', 'Molina', 'Soto', '020201', 1),
(16, 1, '3210984', 'Romero', 'V�squez', '030201', 1),
(17, 2, '2109873', 'Santos', 'Herrera', '040201', 0),
(18, 3, '1098762', 'Salazar', 'Aguilar', '050201', 1),
(19, 1, '0987651', 'Luna', 'Castro', '060201', 0),
(20, 3, '9876540', 'Cabrera', 'Espinoza', '070101', 1);
GO

INSERT INTO [TipoPersona] ([idTipoPersona], [descripcion])
VALUES 
    (1, 'Paciente'),
    (2, 'M�dico'),
    (3, 'Empleado');
GO

INSERT INTO [Paciente] ([idPersona], [numeroDeHistoria], [estado])
VALUES
(1, '12345678', 1),
(4, '23456789', 0),
(7, '34567890', 1),
(10, '45678901', 1),
(13, '56789012', 1),
(16, '67890123', 1),
(19, '78901234', 0);
GO

INSERT INTO [Medico] ([idPersona], [nroColegiatura], [especialiad], [estado])
VALUES
(2, '012345', 'Cardiolog�a', 1),
(5, '023456', 'Dermatolog�a', 1),
(8, '034567', 'Neurolog�a', 0),
(11, '045678', 'Pediatr�a', 1),
(14, '056789', 'Ginecolog�a', 0),
(17, '067890', 'Oncolog�a', 1),
(20, '078901', 'Traumatolog�a', 1);
GO

INSERT INTO [Empleado] ([idPersona], [nombreEmpleado], [clave], [estado])
VALUES
(3, 'Juan', 'clave123', 1),
(6, 'Ana', 'clave456', 1),
(9, 'Carlos', 'clave789', 0),
(12, 'Luc�a', 'clave012', 0),
(15, 'Miguel', 'clave345', 1),
(18, 'Sof�a', 'clave678', 1),
(20, 'Gabriela', 'clave901', 1);
GO

INSERT INTO [Empresa] ([idEmpresa], [nombre], [RUC], [idUbigeo], [estado])
VALUES
(1, 'Productos Globales S.A.C', '2012345678', '010101', 1),
(2, 'Industrias Unidas S.A.C', '2023456789', '020101', 0),
(3, 'Comercializadora Andina S.A.C', '2034567890', '030101', 1),
(4, 'Inversiones Pac�fico S.A.C', '2045678901', '040101', 0),
(5, 'Electr�nicos Modernos S.A.C', '2056789012', '050101', 1),
(6, 'Textiles Importados S.A.C', '2067890123', '060101', 1),
(7, 'Construcciones Metropolitanas S.A.C', '2078901234', '070101', 0),
(8, 'Cosm�tica Natural S.A.C', '2089012345', '080101', 1),
(9, 'Agronegocios del Sur S.A.C', '2090123456', '090101', 0),
(10, 'Distribuidora Centro S.A.C', '2012345678', '100101', 1),
(11, 'Miner�a Nacional S.A.C', '2023456789', '110101', 0),
(12, 'Envases y Embalajes S.A.C', '2034567890', '120101', 1),
(13, 'Consultor�a Integral S.A.C', '2045678901', '130101', 0),
(14, 'Bebidas y Refrescos S.A.C', '2056789012', '010201', 1),
(15, 'Comunicaciones Avanzadas S.A.C', '2067890123', '020201', 0),
(16, 'Automotriz Nacional S.A.C', '2078901234', '030201', 1),
(17, 'Transportes R�pidos S.A.C', '2089012345', '040201', 0),
(18, 'Servicios Corporativos S.A.C', '2090123456', '050201', 1),
(19, 'Cosm�ticos y Belleza S.A.C', '2012345678', '060201', 0),
(20, 'Editorial Educativa S.A.C', '2023456789', '070101', 1);
GO

INSERT INTO [PerfilMedico] ([idPerfilMedico], [idPersona], [idEmpresa], [descripcion])
VALUES
(1, 1, 1, 'Revisi�n anual completa incluyendo evaluaci�n cardiovascular y pruebas de esfuerzo.'),
(2, 4, 2, 'Evaluaci�n ergon�mica para prevenir lesiones por esfuerzo repetitivo.'),
(3, 7, 3, 'Examen visual y auditivo para trabajadores en ambientes de alta demanda sensorial.'),
(4, 10, 4, 'Control de salud mental y estr�s laboral para optimizar el rendimiento y bienestar.'),
(5, 13, 5, 'Chequeo general pre-empleo con �nfasis en capacidad respiratoria.'),
(6, 16, 1, 'Evaluaciones peri�dicas para trabajadores nocturnos, enfoc�ndose en ritmos circadianos.'),
(7, 19, 2, 'Ex�menes regulares para detectar riesgos ocupacionales espec�ficos del sector industrial.');
GO

CREATE TABLE [Examen] (
  [idExamen] integer PRIMARY KEY,
  [nombre] varchar(100)
)
GO

INSERT INTO [Examen] ([idExamen], [nombre])
VALUES
(1, 'Evaluaci�n Cardiovascular Completa'),
(2, 'Prueba de Esfuerzo Card�aco'),
(3, 'Evaluaci�n Ergon�mica'),
(4, 'Examen Visual Est�ndar'),
(5, 'Examen Auditivo'),
(6, 'Evaluaci�n de Salud Mental'),
(7, 'Control de Estr�s Laboral'),
(8, 'Chequeo General Pre-empleo'),
(9, 'Prueba de Capacidad Respiratoria'),
(10, 'Evaluaci�n de Ritmos Circadianos'),
(11, 'An�lisis de Riesgos Ocupacionales'),
(12, 'Examen de Flexibilidad y Movilidad'),
(13, 'Test de Tolerancia al Estr�s'),
(14, 'Examen Dermatol�gico B�sico'),
(15, 'Monitorizaci�n de la Presi�n Arterial'),
(16, 'Screening de Diabetes Ocupacional'),
(17, 'An�lisis de Postura y Movimiento'),
(18, 'Evaluaci�n Nutricional'),
(19, 'Revisi�n Ortop�dica'),
(20, 'Pruebas de Detecci�n de Sustancias');
GO

INSERT INTO [PerfilMedicoExamen] ([idPerfilMedicoExamen], [idPerfilMedico], [idExamen])
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 17),
(5, 3, 4),
(6, 3, 5),
(7, 4, 6),
(8, 4, 7),
(9, 5, 8),
(10, 5, 9),
(11, 6, 10),
(12, 7, 11),
(13, 1, 15),
(14, 2, 12),
(15, 3, 14),
(16, 4, 13),
(17, 5, 18),
(18, 6, 16),
(19, 7, 19),
(20, 1, 20),
(21, 2, 20),
(22, 3, 20),
(23, 4, 20),
(24, 5, 20),
(25, 6, 20),
(26, 7, 20);
GO

INSERT INTO [Cita] ([idCita], [idPersona], [idPerfilMedico], [fecha], [idEmpladoCrea], [idEmpleadoModifica], [idEmpleadoElimina], [estado])
VALUES
(1, 1, 1, '2023-01-15 09:00:00', 3, NULL, NULL, 1),
(2, 4, 2, '2023-03-22 10:30:00', 6, 9, NULL, 1),
(3, 7, 3, '2022-11-01 14:00:00', 12, NULL, 18, 0),
(4, 10, 4, '2024-02-18 16:45:00', 15, 15, 20, 1),
(5, 13, 5, '2023-05-20 08:15:00', 18, 3, NULL, 1),
(6, 16, 6, '2023-07-30 11:00:00', 20, NULL, NULL, 0),
(7, 19, 7, '2023-09-15 13:30:00', 3, 6, 9, 1),
(8, 1, 1, '2023-12-05 09:45:00', 12, NULL, NULL, 1),
(9, 4, 2, '2022-10-21 14:30:00', 15, 18, 20, 0),
(10, 7, 3, '2024-01-11 15:00:00', 6, 12, 18, 1);
GO

INSERT INTO [CitaExamen] ([idCitaExamen], [idCita], [idExamen], [idMedico], [estado])
VALUES
(1, 1, 1, 2, 1),
(2, 1, 2, 2, 1),
(3, 2, 3, 5, 1),
(4, 3, 4, 8, 0),
(5, 3, 5, 8, 1),
(6, 4, 6, 11, 1),
(7, 5, 7, 14, 1),
(8, 6, 8, 17, 0),
(9, 7, 9, 20, 1),
(10, 8, 10, 2, 1),
(11, 9, 11, 5, 0),
(12, 10, 12, 8, 1),
(13, 1, 13, 2, 1),
(14, 2, 14, 5, 1),
(15, 3, 15, 8, 1),
(16, 4, 16, 11, 0),
(17, 5, 17, 14, 1),
(18, 6, 18, 17, 0),
(19, 7, 19, 20, 1),
(20, 8, 20, 2, 1);
GO

INSERT INTO [Ubigeo] ([idUbigeo], [codProvincia], [codDepartamento], [codDistrito], [provincia], [departamento], [distrito], [estado])
VALUES
('010101', '01', '01', '01', 'Chachapoyas', 'Amazonas', 'Chachapoyas', 1),
('010201', '02', '01', '01', 'Bagua', 'Amazonas', 'Aramango', 0),
('020101', '01', '02', '01', 'Huaraz', 'Ancash', 'Huaraz', 1),
('020201', '02', '02', '01', 'Aija', 'Ancash', 'Aija', 1),
('030101', '01', '03', '01', 'Abancay', 'Apur�mac', 'Abancay', 0),
('030201', '02', '03', '01', 'Andahuaylas', 'Apur�mac', 'Talavera', 0),
('040101', '01', '04', '01', 'Arequipa', 'Arequipa', 'Arequipa', 1),
('040201', '02', '04', '01', 'Caravel�', 'Arequipa', 'Caravel�', 0),
('050101', '01', '05', '01', 'Ayacucho', 'Ayacucho', 'Ayacucho', 1),
('050201', '02', '05', '01', 'Huanta', 'Ayacucho', 'Huanta', 0),
('060101', '01', '06', '01', 'Cajamarca', 'Cajamarca', 'Cajamarca', 1),
('060201', '02', '06', '01', 'Celend�n', 'Cajamarca', 'Celend�n', 1),
('070101', '01', '07', '01', 'Callao', 'Callao', 'Callao', 0),
('080101', '01', '08', '01', 'Cusco', 'Cusco', 'Cusco', 1),
('080201', '02', '08', '01', 'Canas', 'Cusco', 'Yanaoca', 0),
('090101', '01', '09', '01', 'Huancavelica', 'Huancavelica', 'Huancavelica', 0),
('100101', '01', '10', '01', 'Hu�nuco', 'Hu�nuco', 'Hu�nuco', 1),
('110101', '01', '11', '01', 'Ica', 'Ica', 'Ica', 0),
('120101', '01', '12', '01', 'Huancayo', 'Jun�n', 'Huancayo', 1),
('130101', '01', '13', '01', 'Trujillo', 'La Libertad', 'Trujillo', 0);
GO

INSERT INTO [CitaExamenResultado] ([idCitaExamenResultado], [idCita], [idExamenComponente], [resultado], [estado])
VALUES
(1, 1, 1, 'Niveles de glucosa normales', 1),
(2, 1, 2, 'Presi�n arterial elevada', 1),
(3, 2, 3, 'Respuesta neurol�gica adecuada', 1),
(4, 3, 4, 'Disminuci�n en la capacidad auditiva', 0),
(5, 3, 5, 'Visi�n dentro de los par�metros normales', 1),
(6, 4, 6, 'Niveles elevados de colesterol', 1),
(7, 5, 7, 'Funci�n pulmonar �ptima', 1),
(8, 6, 8, 'Marcadores tumorales negativos', 0),
(9, 7, 9, 'Signos de estr�s cr�nico', 1),
(10, 8, 10, 'Buena movilidad articular', 1),
(11, 9, 11, 'Riesgo cardiovascular bajo', 0),
(12, 10, 12, 'Sin signos de anemia', 1);
GO

INSERT INTO [ExamenComponente] ([idExamenComponente], [idExamen], [descripcionComponente], [estado])
VALUES
(1, 1, 'Medici�n de la presi�n arterial', 1),
(2, 1, 'Electrocardiograma (ECG)', 1),
(3, 1, 'Ecocardiograma', 1),
(4, 2, 'Monitoreo cardiaco durante ejercicio', 1),
(5, 2, 'Medici�n de la capacidad de recuperaci�n', 1),
(6, 2, 'An�lisis de la frecuencia cardiaca', 1),
(7, 3, 'Evaluaci�n de posturas', 1),
(8, 3, 'Test de repetici�n de movimiento', 1),
(9, 3, 'An�lisis de movimientos ergon�micos', 1),
(10, 4, 'Examen de agudeza visual', 1),
(11, 4, 'Test de campo visual', 1),
(12, 4, 'Examen de ojo derecho', 1),
(13, 5, 'Audiometr�a tonal', 1),
(14, 5, 'Audiometr�a verbal', 1),
(15, 5, 'Test de susceptibilidad a ruidos', 1),
(16, 6, 'Evaluaci�n de ansiedad', 1),
(17, 6, 'Evaluaci�n de depresi�n', 1),
(18, 6, 'Evaluaci�n de estr�s', 1),
(19, 7, 'Test de manejo del estr�s', 1),
(20, 7, 'Monitoreo de la reacci�n al estr�s', 1),
(21, 7, 'Evaluaci�n de la fatiga laboral', 1),
(22, 8, 'Examen f�sico general', 1),
(23, 8, 'Prueba de flexibilidad', 1),
(24, 8, 'An�lisis de sangre completo', 1),
(25, 9, 'Capacidad pulmonar total', 1),
(26, 9, 'Prueba de esfuerzo pulmonar', 1),
(27, 9, 'Medici�n de flujo espiratorio', 1),
(28, 10, 'Monitoreo del sue�o', 1),
(29, 10, 'Evaluaci�n del ciclo sue�o-vigilia', 1),
(30, 10, 'Test de latencia del sue�o', 1),
(31, 11, 'Identificaci�n de agentes de riesgo', 1),
(32, 11, 'Evaluaci�n de exposici�n a riesgos', 1),
(33, 11, 'Medidas de control de riesgos', 1),
(34, 12, 'Test de movilidad articular', 1),
(35, 12, 'Prueba de fuerza muscular', 1),
(36, 12, 'Evaluaci�n de equilibrio', 1),
(37, 13, 'Test de tolerancia al estr�s f�sico', 1),
(38, 13, 'Test de resistencia', 1),
(39, 13, 'An�lisis de la respuesta al estr�s', 1),
(40, 14, 'Inspecci�n de la piel', 1),
(41, 14, 'Prueba de reacciones d�rmicas', 1),
(42, 14, 'Evaluaci�n de condiciones de la piel', 1),
(43, 15, 'Medici�n de la presi�n arterial sist�lica', 1),
(44, 15, 'Medici�n de la presi�n arterial diast�lica', 1),
(45, 15, 'Monitoreo continuo de la presi�n arterial', 1),
(46, 16, 'Medici�n de glucosa en sangre', 1),
(47, 16, 'Prueba de tolerancia a la glucosa', 1),
(48, 16, 'Monitoreo de niveles de insulina', 1),
(49, 17, 'An�lisis de postura sentada', 1),
(50, 17, 'Evaluaci�n de postura al caminar', 1),
(51, 17, 'Test de alineaci�n corporal', 1),
(52, 18, 'An�lisis nutricional b�sico', 1),
(53, 18, 'Evaluaci�n de dieta y nutrici�n', 1),
(54, 18, 'Seguimiento de ingesta de micronutrientes', 1),
(55, 19, 'Examen de la estructura �sea', 1),
(56, 19, 'Evaluaci�n de la funci�n articular', 1),
(57, 19, 'Pruebas de resistencia �sea', 1),
(58, 20, 'Detecci�n de alcohol en sangre', 1),
(59, 20, 'Detecci�n de sustancias prohibidas', 1),
(60, 20, 'Pruebas de detecci�n de nicotina', 1);
GO
