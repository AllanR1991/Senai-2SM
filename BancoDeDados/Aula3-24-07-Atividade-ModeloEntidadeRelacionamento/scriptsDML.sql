--DML Data Manipulation Language
use Teste;

insert into Funcionarios(Nome)
	values ('Gabriel')
insert into Funcionarios(Nome)
	values ('Enzo')
insert into Funcionarios(Nome)
	values ('Pedro')
insert into Funcionarios(Nome)
	values ('João')
insert into Funcionarios(Nome)
	values ('Gabriel')


insert into Empresas(Idfuncionario,Nome) values
	(5,'Engemet'),
	(2,'Engemet'),
	(1,'Senai'),
	(3,'Senai'),
	(4,'Engemet')


UPDATE Funcionarios
set Nome = 'Kamille' where IdFuncionario = 3;

delete from Funcionarios
where Nome = 'Enzo'