--Comandos DDL -> Data Definition Language
create database Filme;

use Filme;

create table Genero(
	IdGenero int primary key identity,
	Genero varchar(50) not null,
)

create table Filme(
	IdFilme int primary Key identity,
	IdGenero int foreign key references Genero(IdGenero),
	Filme varchar(100) not null,
)