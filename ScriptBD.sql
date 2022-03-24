Create database IES;
use IES;
Create table if not exists TipoEnsino (
	cod_ensino int primary key not null,
    nome varchar(40) not null
) ENGINE=InnoDB;
Create table if not exists Curso (
	Cod_Curso int primary key not null,
    nomeCurso varchar(100) ,
    nomeCurto varchar(10),
    cod_ensino int,
    constraint cod_ensino foreign key (cod_ensino)    
    references TipoEnsino(cod_ensino)
) ENGINE=InnoDB;
create table if not exists alumno (
	Cod_alumno int primary key not null,
    nome varchar (40),
    apellidos varchar(80),
    grupo varchar(10),
    imagenruta varchar(1000),
    Cod_Curso int,
    constraint FK_Curso foreign key (Cod_Curso)
    references Curso(Cod_Curso)
) Engine=InnoDB;

INSERT INTO TipoEnsino (cod_ensino, nome)
values (1 ,"Educación Secundaria Obrigatoria");

INSERT INTO TipoEnsino (cod_ensino, nome)
values (2 ,"Bacharelato");

INSERT INTO TipoEnsino (cod_ensino, nome)
values (3 ,"Ciclos Formativos");

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (1 , "1º Ensinanza secundaria obrigatoria","1ºESO", 1); 

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (2 , "2º Ensinanza secundaria obrigatoria","2ºESO", 1);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (3 , "3º Ensinanza secundaria obrigatoria","3ºESO", 1);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (4 , "4º Ensinanza secundaria obrigatoria","4ºESO", 1);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (5 , "1º Bacharelato","1ºBAC", 2);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (6 , "2º Bacharelato","2ºBAC", 2);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (7 , "1º Administración de sistemas informáticos en rede","1ºASIR", 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (8 , "2º Administración de sistemas informáticos en rede","2ºASIR", 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (9 , "1º Desenvolvemento de aplicacións web","1ºDAW", 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (10 , "2º Desenvolvemento de aplicacións web","2ºDAW", 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (11 , "1º Sistemas microinformáticos e redes","1ºSMIR", 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (12 , "2º Sistemas microinformáticos e redes","2ºSMIR", 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (13, "1º Informatica de oficina","1ºFPB" , 3);

INSERT INTO Curso (Cod_Curso, nomeCurso,nomeCurto, cod_ensino)
VALUES (14, "2º Informatica de oficina","2ºFPB", 3);