-- n ta funcionando direito
create view gravadoraPlaylist(id_gravadora, nome_gravadora, id_playlist)
as
select g.cod_grav, g.nome, p.cod_play as Gravadora
from Gravadora g inner join Album a on g.cod_grav = a.cod_grav
inner join Faixas f on f.cod_alb = a.cod_alb 
inner join Fai_Comp fc on fc.cod_fai = f.cod_fai
inner join Compositor c on c.cod_comp = fc.cod_comp and c.nome like '%Dvorack%'
inner join Fai_Play fp on fp.cod_fai = f.cod_fai
inner join Playlist p on p.cod_play = fp.cod_play
group by  g.cod_grav, g.nome, p.cod_play

------------------------------------------------------

select gp.nome_gravadora from gravadoraPlaylist gp
group by gp.id_gravadora, gp.nome_gravadora
having count(gp.id_playlist) >= all(select count(gp1.id_playlist) from gravadoraPlaylist gp1)
