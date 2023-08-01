USE [Exercicio_1_2]

INSERT INTO [dbo].[Empresa]
           ([Empresa]
           ,[CNPJ])
     VALUES
           ('Localiza','76612794000106'),
		   ('Movida','10724671000159'),
		   ('Hertz','52671482000105')


insert into dbo.Marca(Marca) values
	('Ford'),
	('GM'),
	('VolksWagen'),
	('Hyundai'),
	('Porsche')

insert into Modelo(Modelo) values
	('Panamera'),
	('Mustang'),
	('Creta'),
	('Passat'),
	('Onix'),
	('Cayenne')

insert into Veiculo(IdEmpresa,IdMarca,IdModelo,Placa) values
	(3,5,1,'HQE4163'),
	(2,1,2,'HTT0693'),
	(3,5,6,'NBA2143'),
	(1,2,5,'MLU3413'),
	(2,3,4,'JNZ1207'),
	(1,4,3,'JVG0834')

insert into Cliente(Cliente,CPF) values
	('Murilo Yuri Almada','31539524345'),
	('Lorena Sueli Assis','52619337062'),
	('Beatriz Lavínia Lúcia Souza','30592817180'),
	('Danilo Julio Nogueira','37428624053')

insert into Aluguel(IdVeiculo,IdCliente,Protocolo,DataRetirada,DataDevolucao) values 
	(6,3,'00000120230801','2023-08-01','2023-08-13'),
	(2,1,'00000120230802','2023-08-02','2023-09-02'),
	(4,2,'00000120230815','2023-08-15','2023-08-24'),
	(5,4,'00000220230815','2023-08-15','2023-08-18'),
	(1,1,'00000320230815','2023-08-15','2023-09-01'),
	(3,2,'00000120230820','2023-08-20','2023-08-21')
	

SELECT 
    Veiculo.Placa AS Placa,
    Modelo.Modelo AS Modelo,
    Marca.Marca AS Marca
FROM 
    Veiculo
LEFT JOIN 
    Modelo ON Veiculo.IdModelo = Modelo.IdModelo
LEFT JOIN 
    Marca ON Veiculo.IdMarca = Marca.IdMarca; 

select * from Cliente