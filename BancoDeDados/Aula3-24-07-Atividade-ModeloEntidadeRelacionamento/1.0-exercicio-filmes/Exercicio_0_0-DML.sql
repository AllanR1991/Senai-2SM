use Exercicio_0_0;

insert into Genero(Genero) values
	('Ação'),
	('Terror'),
	('Comédia'),
	('Suspense')

insert into Filme(IdGenero,Filme) values
	(2,'O Exorcista do Papa'),
	(1,'John Wick 4: Baba Yaga'),
	(4,'Alerta Máximo'),
	(3,'Mistério em Paris')


select * from Filme;
select * from Genero;