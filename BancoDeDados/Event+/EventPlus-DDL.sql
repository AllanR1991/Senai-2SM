CREATE DATABASE [Event+_Manha];

USE [Event+_Manha];

CREATE TABLE TiposUsuario (
	IdTipoUsuario int primary key identity,
	TipoUsuario varchar (50) NOT NULL UNIQUE
)

CREATE TABLE Usuario (
	IdUsuario int primary key identity,
	IdTipoUsuario int foreign key references TiposUsuario(IdTipoUsuario) NOT NULL,
	Nome varchar(150) NOT NULL,
	Email varchar(150) NOT NULL UNIQUE,
	Senha varchar(100) NOT NULL
)

CREATE TABLE Instituicao (
	IdInstituicao int primary key identity,
	CNPJ varchar(14) NOT NULL UNIQUE,
	Endereco varchar(150) NOT NULL,
	RazaoSocial varchar(150) NOT NULL,
	NomeFantasia varchar(150) NOT NULL
)

CREATE TABLE TiposEvento (
	IdTipoEvento int primary key identity,
	TipoEvento varchar(100) NOT NULL UNIQUE
)

CREATE TABLE Evento (
	IdEvento int primary key identity,
	IdInstituicao int foreign key references Instituicao(IdInstituicao) NOT NULL,
	IdTipoEvento int foreign key references TiposEvento(IdTipoEvento) NOT NULL,
	NomeEvento varchar(150) NOT NULL,
	Descricao varchar(1500) NOT NULL,
	DataEvento date NOT NULL,
	HorarioEvento time NOT NULL
)

CREATE TABLE Comentario (
	IdComentario int primary key identity,
	IdUsuario int foreign key references Usuario(IdUsuario) NOT NULL,
	IdEvento int foreign key references Evento(IdEvento) NOT NULL,
	Descricao TEXT NOT NULL,
	Exibe BIT DEFAULT 0
)

CREATE TABLE PresencasEnvento (
	IdPresencasEnvento int primary key identity,
	IdUsuario int foreign key references Usuario(IdUsuario) NOT NULL,
	IdEvento int foreign key references Evento(IdEvento) NOT NULL,
	Situacao BIT DEFAULT 0 --DEFININDO UM VALOR PADRAO.
)