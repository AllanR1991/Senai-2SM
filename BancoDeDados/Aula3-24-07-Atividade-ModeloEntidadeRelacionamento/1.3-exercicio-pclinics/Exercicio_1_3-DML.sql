use Exercicio_1_3

insert into Endereco (Bairro,Cep,Cidade,Complemento,Logradouro,Numero,UF) values 
	('Apicum','65025300','São Luís','','Rua Dom Luís de Brito','200','MA'),
	('Centro','13500400','Rio Claro','','Avenida 1','65','SP'),
	('Sal Torrado','48605812','Paulo Afonso','','Travessa Atalaia','2','BA'),
	('Jardim HD','78714118','Rondonópolis','','Rua Divino Pai Eterno','23','MT'),
	('Alecrim','59040035','Natal','','Vila Benjamin Constant','45','RN'),
	('Cidade Nova','69097163','Manaus','','Rua Barbosa Machado','6','AM'),
	('Luzia','49045410','Aracaju','','Rua Jovino Silva','76','SE'),
	('Nossa Senhora da Saúde','95032765','Caxias do Sul','','Rua Tranquilino Tissot','45','RS'),
	('Conjunto Habitacional Doutor Ulisses Guimarães','18078336','Sorocaba','','Rua Cleude Carlos Costa','432','SP'),
	('Mutirão','69101542','Itacoatiara','','Travessa Miso Barros','876','AM'),
	('Jardim Caramuru','79830903','Dourados','','Avenida Marcelino Pires 3600','7','MS')

insert into Clinica (RazaoSocial,CNPJ,IdEndereco) values
	('Dr. Rato','61843652000182',11),
	('Petz','19477266000158',10),
	('Bom Cão','59512625000185',9)

insert into Veterinario (Veterinario, CRMV,IdClinica) values
	('Lívia Jéssica Silveira','29309655',3),
	('Emilly Julia Costa','74366235',1),
	('Vanessa Andrea Natália Campos','76980970',3),
	('Murilo Nelson Yago Castro','76824296',2),
	('Arthur Benjamin Samuel Ferreira','65055480',1),
	('Tomás Manuel da Mota','65068728',2)

insert into TipoPet (Tipo) values
	('Cachorro'),
	('Papagaio'),
	('Gato'),
	('Pato')

insert into Raca (Raca) values
	('Persa'),
	('Papagaio-verdadeiro'),
	('Chow Chow'),
	('Pato-real'),
	('Rottweiler'),
	('Siamês')

insert into Pet (Nome,DataNascimento,IdTipoPet,IdRaca) values
	('Peludo','2015-08-21',3,1),
	('Palmerinha','2010-02-08',2,2),
	('Trovão','2018-09-02',1,5),
	('BolaDePelo','2023-08-02',1,3),
	('Quack','2020-04-25',4,4),
	('Pulga','2019-06-02',3,6)

insert into Atendimento (Protocolo,DataAtendimento,HistoricoClinico,IdVeterinario,IdPet) values
	('0000120230110','2023-01-10','Accumsan integer donec dolor ultricies inceptos duis porta inceptos nulla porta tincidunt iaculis, tortor scelerisque semper euismod feugiat porttitor lacus commodo at lobortis nunc. duis est vivamus augue arcu dictum nam senectus at dictumst praesent ligula nunc cursus mattis, euismod pharetra ipsum tristique hac malesuada tempor amet posuere mauris quis feugiat viverra. placerat nulla porttitor integer torquent, aliquam massa ornare.',3,6),
	
	('0000120230210','2023-02-10','Diam mauris ut tortor iaculis fusce placerat nisi conubia luctus, quam aliquet senectus eu dapibus aliquam venenatis ut suscipit, per ipsum ut praesent mauris aenean vel congue. vehicula leo aenean enim donec nostra libero quis semper torquent viverra, vestibulum ut imperdiet luctus dictum luctus nec venenatis conubia, leo elementum orci nostra auctor nisi elementum hendrerit libero. elit egestas vitae, vel.',5,1),
	
	('0000120230222','2023-02-22','Hac curabitur tristique faucibus platea auctor venenatis ut eget, vehicula taciti a ullamcorper sed convallis molestie varius tellus, dictum euismod vitae habitant fames lacinia curae. urna felis auctor class euismod placerat taciti curabitur rhoncus, vel volutpat malesuada litora venenatis est potenti, lobortis eros orci scelerisque sit vestibulum suscipit. maecenas sodales venenatis egestas eu, tellus integer rutrum euismod, habitasse vulputate imperdiet.',4,2),
	
	('0000120230301','2023-03-01','Taciti lacus litora dolor auctor tempus taciti non vestibulum viverra risus accumsan nibh eget rhoncus sem eleifend, venenatis libero mauris mollis ante conubia duis erat posuere integer tristique sociosqu donec nunc ultrices. quisque cubilia bibendum quam nostra porttitor auctor dictum senectus purus, sagittis porta ad lectus class primis sociosqu non tristique felis, etiam dapibus volutpat amet viverra ut molestie sollicitudin. ',6,4),
	
	('0000120230303','2023-03-03','Habitasse ut litora fusce ultricies malesuada odio ante elit, nec curabitur mattis fames enim suscipit cras facilisis, etiam nostra quisque hendrerit interdum curabitur ultricies. mauris vel felis faucibus feugiat interdum eu, nunc laoreet ullamcorper dolor hendrerit vehicula, commodo donec dapibus risus lacus. risus inceptos iaculis platea pulvinar placerat libero, ipsum platea ligula placerat nulla mi, vitae sed curabitur laoreet nibh.',1,3),
	
	('0000220230210','2023-03-03','Potenti ut ad odio volutpat inceptos lorem aenean, est vivamus lectus senectus varius porttitor aliquam justo, velit elit fermentum tristique elementum pulvinar. dictumst proin accumsan tincidunt pellentesque curabitur rhoncus sapien, metus vehicula et iaculis magna porttitor, nisl sapien turpis torquent laoreet aliquet. orci nostra curabitur felis quis vulputate rhoncus dolor volutpat donec, per eget dictum mollis vulputate tempor praesent at.',2,5),
	
	('0000120230210','2023-03-03','Diam mauris ut tortor iaculis fusce placerat nisi conubia luctus, quam aliquet senectus eu dapibus aliquam venenatis ut suscipit, per ipsum ut praesent mauris aenean vel congue. vehicula leo aenean enim donec nostra libero quis semper torquent viverra, vestibulum ut imperdiet luctus dictum luctus nec venenatis conubia, leo elementum orci nostra auctor nisi elementum hendrerit libero. elit egestas vitae, vel.',1,3)

insert into Cliente (Cliente,CPF,IdEndereco) values
	('Luzia Vanessa Martins','06748147204',4),

	('Marcos André Ricardo da Mata','57466593550',5),

	('Kevin Gael Duarte','15983104454',1),

	('Cláudio Luiz Filipe Moreira','01433524589',3),

	('Marina Laís Figueiredo','28728400445',2),

	('Isis Gabriela Maya Sales','89857250173',1),

	('Laís Alessandra Ramos','00518732576',6)


insert into PetCliente (IdPet,IdCliente) values
	(2,6),
	(3,4),
	(5,1),
	(6,5),
	(4,2),
	(1,3),
	(3,7)

select * from Pet;
select * from Cliente;
select * from Endereco;

--Resposta Exercicio DQL

select Veterinario.Veterinario,Veterinario.CRMV from Clinica join Veterinario on Clinica.IdClinica=Veterinario.IdClinica and Clinica.RazaoSocial='Bom Cão'
select Raca.Raca from Raca where Raca.Raca like 's%'
select Tipo from TipoPet where Tipo like '%o'
select Pet.Nome,Cliente.Cliente from Pet left join PetCliente on Pet.IdPet=PetCliente.IdPet left join Cliente on PetCliente.IdCliente=Cliente.IdCliente

select Atendimento.Protocolo,Atendimento.DataAtendimento,Atendimento.HistoricoClinico,Veterinario.Veterinario,Pet.Nome,Raca.Raca,TipoPet.Tipo,Cliente.Cliente,.Clinica.RazaoSocial from Atendimento 
left join Veterinario on Atendimento.IdVeterinario=Veterinario.IdVeterinario
left join Clinica on Veterinario.IdClinica=Clinica.IdClinica
left join Pet on Atendimento.IdPet = Pet.IdPet
left join Raca on Pet.IdRaca = Raca.IdRaca
left join TipoPet on Pet.IdTipoPet=TipoPet.IdTipoPet
left join PetCliente on Pet.IdPet=PetCliente.IdPet 
left join Cliente on PetCliente.IdCliente=Cliente.IdCliente