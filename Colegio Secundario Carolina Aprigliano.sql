CREATE SCHEMA colegio(
);

USE colegio;

CREATE TABLE equipo_de_conduccion(
	PRIMARY KEY (ID_Conduccion),
	FOREIGN KEY (ID_Rector) REFERENCES ID_Rector(Rector),
	FOREIGN KEY (ID_Vicerrector) REFERENCES ID_Vicerrector(Vicerrector),
	FOREIGN KEY (ID_Regente) REFERENCES ID_Regente(Regente),
	FOREIGN KEY (ID_Secretaria) REFERENCES ID_Secretaria(Secretaria),
	FOREIGN KEY (ID_Prosecretaria) REFERENCES ID_Prosecretaria(Prosecretaria),
);

CREATE TABLE Rector (
	PRIMARY KEY (ID_Rector),
    FOREIGN KEY (ID_Conduccion) REFERENCES ID_Conduccion(equipo_de_conduccion),
    ID_Rector varchar(255),
    ID_Conduccion varchar(255) ,
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Direccion varchar(255),
    Telefono_fijo int,
    Telefono_celular int,
    Legajo int,
    Ficha_censal int,
    Numero_de_Emergencia int,
    Titulo varchar(255),
    Familiares_a_Cargo varchar(255)
);

CREATE TABLE Vicerrector (
	PRIMARY KEY (ID_Vicerrector),
    FOREIGN KEY (ID_Conduccion) REFERENCES ID_Conduccion(equipo_de_conduccion),
    ID_Vicerrector varchar(255),
    ID_Conduccion varchar(255) ,
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Direccion varchar(255),
    Telefono_fijo int,
    Telefono_celular int,
    Legajo int,
    Ficha_censal int,
    Numero_de_Emergencia int,
    Titulo varchar(255),
    Familiares_a_Cargo varchar(255)
);

CREATE TABLE Regente (
	PRIMARY KEY (ID_Regente),
    FOREIGN KEY (ID_Conduccion) REFERENCES ID_Conduccion(equipo_de_conduccion),
    ID_Regente varchar(255),
    ID_Conduccion varchar(255) ,
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Direccion varchar(255),
    Telefono_fijo int,
    Telefono_celular int,
    Legajo int,
    Ficha_censal int,
    Numero_de_Emergencia int,
    Titulo varchar(255),
    Familiares_a_Cargo varchar(255)
);

CREATE TABLE Secretaria (
	PRIMARY KEY (ID_Secretaria),
    FOREIGN KEY (ID_Conduccion) REFERENCES ID_Conduccion(equipo_de_conduccion),
    ID_Secretaria varchar(255),
    ID_Conduccion varchar(255) ,
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Direccion varchar(255),
    Telefono_fijo int,
    Telefono_celular int,
    Legajo int,
    Ficha_censal int,
    Numero_de_Emergencia int,
    Titulo varchar(255),
    Familiares_a_Cargo varchar(255)
);

CREATE TABLE Prosecretaria (
	PRIMARY KEY (ID_Prosecretaria),
    FOREIGN KEY (ID_Conduccion) REFERENCES ID_Conduccion(equipo_de_conduccion),
    ID_Prosecretaria varchar(255),
    ID_Conduccion varchar(255) ,
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Direccion varchar(255),
    Telefono_fijo int,
    Telefono_celular int,
    Legajo int,
    Ficha_censal int,
    Numero_de_Emergencia int,
    Titulo varchar(255),
    Familiares_a_Cargo varchar(255)
);

CREATE TABLE Profesores (
	PRIMARY KEY (ID_Profesor),
    FOREIGN KEY (ID_Regente) REFERENCES ID_Regente(Regente),
    FOREIGN KEY (ID_Cursos) REFERENCES ID_Cursos(Cursos),
    ID_Prosecretaria varchar(255),
    ID_Regente varchar(255),
    ID_Cursos varchar (255),
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Direccion varchar(255),
    Telefono_fijo int,
    Telefono_celular int,
    Legajo int,
    Ficha_censal int,
    Numero_de_Emergencia int,
    Titulo varchar(255),
    Familiares_a_Cargo varchar(255),
    Turno varchar (255)
);

CREATE TABLE Cursos (
	PRIMARY KEY (ID_Cursos),
    FOREIGN KEY (ID_Profesor) REFERENCES ID_Profesor(Profesores),
    ID_Cursos varchar(255),
	ID_Profesor varchar (255),
	Horarios varchar (255),
	Materias varchar (255),
	Turno varchar (255)
);

CREATE TABLE  Matricula(
	PRIMARY KEY (ID_Matricula),
    FOREIGN KEY (ID_Alumnos) REFERENCES ID_Alumnos(Alumnos),
    ID_Matricula varchar(255),
	ID_Alumnos varchar (255),
	Precio  double,
	Pagada boolean
);

CREATE TABLE Alumnos_por_cursos (
	PRIMARY KEY (ID_Alumnos_por_cursos),
	FOREIGN KEY (ID_Cursos),
	FOREIGN KEY (ID_Alumnos),
	ID_Alumnos_por_cursos varchar(255),
	ID_Cursos varchar(255),
	ID_Alumnos varchar(255),
	Nombre varchar(255),
	Apellido varchar(255),
	Curso_actual varchar (255)
	;
	
CREATE TABLE Alumnos (
	PRIMARY KEY (ID_Alumnos),
    FOREIGN KEY (ID_Matricula) REFERENCES ID_Matricula(Matricula),
    FOREIGN KEY (ID_Cursos) REFERENCES ID_Cursos(Cursos),
    ID_Alumnos varchar(255),
    ID_Matricula varchar(255),
    ID_Cursos varchar (255),
    Nombre varchar(255),
    Apellido varchar(255),
    DNI int,
    Legajo int,
    Asistencia float,
    Direccion varchar (255),
    Telefono_fijo int,
    Telefono_celular int,
    Numero_de_Emergencia int,
    Turnoo varchar(255),
    Historial varchar (255)
    
);
