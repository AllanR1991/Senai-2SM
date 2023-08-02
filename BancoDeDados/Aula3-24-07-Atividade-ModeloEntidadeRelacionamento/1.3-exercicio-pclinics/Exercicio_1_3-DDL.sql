create database Exercicio_1_3;

use Exercicio_1_3;

create table Endereco(
	IdEndereco int primary key identity,
	Bairro varchar(100) not null,
	Cep varchar(10)not null,
	Cidade varchar(100) not null,
	Complemento varchar(50),
	Logradouro varchar(100) not null,
	Numero int not null,
	UF varchar(2)
)

alter table Endereco
alter column Complemento varchar(100) null;

create table Clinica(
	IdClinica int primary key identity,
	IdEndereco int foreign key references Endereco(IdEndereco),
	RazaoSocial varchar(150) not null,
	CNPJ varchar(20) not null
)

create table Cliente(
	IdCliente int primary key identity,
	IdEndereco int foreign key references Endereco(IdEndereco) unique,
	Cliente varchar(150) not null,
	CPF varchar(20)not null
)

create table Veterinaro(
	IdVeterinario int primary key identity,
	IdClinica int foreign key references Clinica(IdClinica),
	Clinica varchar(150) not null,
	CRMV varchar(15) not null
)

create table TipoPet(
	IdTipoPet int primary key identity,
	Tipo varchar(50) not null,
)

create table Raca(
	IdRaca int primary key identity,
	Raca varchar(50) not null,
)

create table Pet(
	IdPet int primary key identity,
	IdRaca int foreign key references Raca(IdRaca),
	IdTipoPet int foreign key references TipoPet(IdTipoPet),
	Nome varchar(150),
	DataNascimento date
)

create table Atendimento(
	IdAtendimento int primary key identity,
	IdVeterinario int foreign key references Veterinaro(IdVeterinario),
	IdPet int foreign key references Pet(IdPet),
	Protocolo varchar(50),
	DataAtendimento date,
	HistoricoClinico varchar(2000)
)

create table PetCliente(
	IdPetCliente int primary key identity,
	IdPet int foreign key references Pet(IdPet),
	IdCliente int foreign key references Cliente(IdCliente),
)