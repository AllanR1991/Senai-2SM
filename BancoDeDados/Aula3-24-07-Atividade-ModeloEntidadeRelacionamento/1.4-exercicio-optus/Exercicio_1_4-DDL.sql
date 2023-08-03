create database Exercicio_1_4;

use Exercicio_1_4;

create table Estilo (
	IdEstilo int primary key identity,
	Estilo varchar(50),
)

create table Artista (
	IdArtista int primary key identity,
	Artista varchar(100)
)

create table Album (
	IdAlbum int primary key identity,
	IdArtista int foreign key references Artista(IdArtista),
	Titulo varchar(100) not null,
	DataLancamento date not null,
	Localizacao varchar(50),
	QuantidadeMinutos varchar(10),
	Ativo bit
)

create table EstiloAlbum(
	IdEstiloAlbum int primary key identity,
	IdEstilo int foreign key references Artista(IdArtista),
	IdAlbum int foreign key references Artista(IdArtista),
)