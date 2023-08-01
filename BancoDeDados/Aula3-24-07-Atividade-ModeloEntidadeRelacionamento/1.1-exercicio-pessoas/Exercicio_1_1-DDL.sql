create database Exercicio_1_1;
go
use Exercicio_1_1;
go
create table Pessoa(
	IdPessoa int primary key identity,
	Nome varchar(100)not null,
	CNH varchar(11)not null
);
go
create table Email(
	IdEmail int primary key identity,
	IdPessoa int foreign key references Pessoa(IdPessoa),
	EnderecoEmail varchar(100)not null
);
go
create table Telefone(
	IdTelefone int primary key identity,
	IdPessoa int foreign key references Pessoa(IdPessoa),
	NumeroTelefone varchar(30)
);
go