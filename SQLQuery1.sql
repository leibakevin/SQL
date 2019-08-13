

create table Atleta
(
Id int IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(100)
)
 
create table Disciplina
(
Id int IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(100)
)

create table Pais
(
Id int IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(100)
)

create table Medalla
(
Id int IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(100)
)

create table Competencia
(
Id int IDENTITY(1,1) PRIMARY KEY,
IdAtleta int not null,
IdPais int not null,
IdDisciplina int not null,
Compite bit not null,
IdMedalla int,
FOREIGN KEY (IdAtleta) REFERENCES Atleta(Id),
FOREIGN KEY (IdPais) REFERENCES Pais(Id),
FOREIGN KEY (IdDisciplina) REFERENCES Disciplina(Id),
FOREIGN KEY (IdMedalla) REFERENCES Medalla(Id)
)