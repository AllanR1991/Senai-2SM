select [Event+_Manha].dbo.Usuario.Nome as 'Nome do Usuario' , 
[Event+_Manha].dbo.TiposUsuario.TipoUsuario, 
[Event+_Manha].dbo.Evento.DataEvento, 
Concat([Event+_Manha].dbo.Instituicao.NomeFantasia,' ',[Event+_Manha].dbo.Instituicao.Endereco) as 'Instituiçao e endereço do  Evento', 
[Event+_Manha].dbo.Evento.NomeEvento, 
[Event+_Manha].dbo.Evento.Descricao as 'Descricao Evento', 
case when [Event+_Manha].dbo.PresencasEnvento.Situacao = 1 then 'Confimada' else 'Náo Confirmada' end as 'Presenca', 
[Event+_Manha].dbo.Comentario.Descricao as [Descricao comentario]

from [Event+_Manha].dbo.Evento 
join Comentario on Comentario.IdEvento = Evento.IdEvento
left join Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao
left join PresencasEnvento on PresencasEnvento.IdEvento = Evento.IdEvento
left join Usuario on	Usuario.IdUsuario = PresencasEnvento.IdUsuario
join TiposUsuario on TiposUsuario.IdTipoUsuario = Usuario.IdTipoUsuario
