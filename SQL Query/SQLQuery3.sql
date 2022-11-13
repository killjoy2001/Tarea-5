create database EncuestasTarea5

create table Persona
(
  CedulaP varchar(9) primary key, 
  Nombre varchar (25) not null, 
  Genero char(1) constraint chk_Genero Check(Genero='F' or Genero='M'),
  Fecha date constraint Def_Fecha Default Getdate()

)

Create table Respuestas
(
  ID int identity(1,1),
  CedulaR varchar(9),
  R1 char(1),
  R2 char(1),
  R3 char(1),
  constraint PK_ID Primary key(ID),
  constraint FK_Cedula Foreign key(CedulaR) references Persona(CedulaP)
)

SELECT r.ID, r.CedulaR, p.Nombre, r.R1, r.R2, r.R3 from Respuestas r inner join Persona p on r.CedulaR= p.CedulaP
Select * from Persona
Select * from Respuestas