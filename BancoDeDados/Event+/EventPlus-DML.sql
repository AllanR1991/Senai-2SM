use [Event+_Manha]

insert into TiposUsuario values (
	('Administrador'),
	('Comum')
)

insert into [Event+_Manha].dbo.Usuario Values (
	(1, 'Allan Rodrigues', 'allan@allan.com', 'allan'),
	(2, 'Everton Araujo', 'everton@everton.com', 'everton')
)

insert into [Event+_Manha].dbo.TiposEvento values (
	('SQL Server'),
	('C#')
);

insert into [Event+_Manha].dbo.Instituicao values(
	('1234567891012','Rua Niteroi 180','Escola Internacional de Desenvolvimento','DevSchool')
);

insert into [Event+_Manha].dbo.Evento values (
	(1,1,'Introdução ao banco de dados SQL Server','Conceitos básicos do SQL Server, como DDL, DML, DQL.','2023-081-10','13:00:00')
)

insert into PresencasEnvento (IdUsuario,IdEvento) Values (
	(1,1)
)

insert into Comentario (IdUsuario,IdEvento,Descricao,Exibe) values (
	(1,1,'Excelente evento',1)
)