--DDL

--Cria um bando de dados
CREATE DATABASE Teste;
go --Ao clicar no botao execute, ele roda os scripts de go em go.

--Usa um banco de dados.
use Teste;
go
--Cria uma tabela
CREATE TABLE Funcionarios(
	IdFuncionario int primary key identity,
	Nome varchar(100),
);
go

create table Empresas(
	IdEmpresa int primary key identity,
	IdFuncionario int foreign key references Funcionarios(IdFuncionario), 
	Nome varchar(100)
);
go

alter table Funcionarios --ALTER para modificar a definição de entidades existentes.
drop column nome; --Exclui a coluna da tabela.

--Exclui uma tabela.
drop table Funcionarios;

--Exclui banco de dados, OBS: não permite excluir estando em uso.
drop database Teste;


---------------------------------------------------------------------------------
