IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = 'Exercicio_1_2')
BEGIN
    CREATE DATABASE Exercicio_1_2;
END
go

use Exercicio_1_2;
go

create table Empresa (
	IdEmpresa int primary key identity,
	Empresa varchar(100) not null,
	CNPJ varchar(14)
)

create table Marca(
	IdMarca int primary key identity,
	Marca varchar(100)
)

create table Modelo(
	IdModelo int primary key identity,
	Modelo varchar(100)
)

create table Veiculo (
	IdVeiculo int primary key identity,
	IdEmpresa int foreign key references Empresa(IdEmpresa),
	IdMarca int foreign key references Marca(IdMarca),
	IdModelo int foreign key references Modelo(IdModelo),
	Placa varchar(10) not null
)

create table Cliente(
	IdCliente int primary key identity,
	Cliente varchar(100) not null,
	CPF varchar(11)
)

create table Aluguel(
	IdAluguel int primary key identity,
	IdVeiculo int foreign key references Veiculo(IdVeiculo),
	IdCliente int foreign key references Cliente(IdCliente),
	Protocolo varchar(50) not null,
	DataRetirada date not null,
	DataDevolucao date not null,
)
