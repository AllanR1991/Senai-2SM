--Comandos DDL -> Data Definition Language
create database Exercicio_0_0;

use Exercicio_0_0;

create table Genero(
	IdGenero int primary key identity,
	Genero varchar(50) not null,
)

create table Filme(
	IdFilme int primary Key identity,
	IdGenero int foreign key references Genero(IdGenero),
	Filme varchar(100) not null,
)