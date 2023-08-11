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

--Realizado Copia de dados do amigo.

--Inserir dados na tabela
INSERT INTO TipoDeUsuario(TituloTipoUsuario)
VALUES ('Administrador') , ('Comum')

--Exemplo de forma simplificada, obrigado preencher todos os campos na ordem
--INSERT INTO TipoDeUsuario VALUES ('Administrador') , ('Comum')

INSERT INTO TiposDeEvento (TituloTipoEvento)
VALUES ('Sql Server')

INSERT INTO Instituicao(CNPJ, Endereco, NomeFantasia)
VALUES ('12345678901234', 'Rua Niterói 180', 'DevSchool')

INSERT INTO Usuario(IdTipoDeUsuario,Nome,Email,Senha)
VALUES (1, 'Gabriel','admin@admin.com', 'admin1234')

INSERT INTO Evento(IdTipoDeEvento, IdInstituicao, Nome, Descricao, DataEvento, HoraEvento)
VALUES (1,1,'Introdução ao Banco de Dados SQL Server', 'Aprenda conceitos básicos do SQL Server', '2023-08-10', '10:00:00')

INSERT INTO PresencasEvento(IdUsuario, IdEvento)
VALUES (1,1)

INSERT INTO ComentarioEvento(Idusuario, IdEvento, Descricao, Exibe)
VALUES (1,1, 'Excelente evento, professor top!', 1)