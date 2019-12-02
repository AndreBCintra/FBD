-- item 8(d)
select p.nome as 'Playlist de concerto barroco'
from Playlist p
group by p.cod_play, p.nome
having 'Barroco' = all(select pm.descricao 
from Per_Mus pm inner join Compositor c on pm.cod_per = c.cod_per inner join Fai_Comp fc on fc.cod_comp = c.cod_comp 
inner join Faixas f on f.cod_fai = fc.cod_fai inner join Fai_Play fp on fp.cod_fai = f.cod_fai inner join Playlist p1 on p1.cod_play = fp.cod_play
where p1.cod_play = p.cod_play) and 'Concerto' = all(select tc.descricao 
from Tipo_Comp tc inner join Faixas f1 on f1.cod_tp_comp = tc.cod_tp_comp inner join Fai_Play fp1 on fp1.cod_fai = f1.cod_fai inner join Playlist p2 on p2.cod_play = fp1.cod_play
where p2.cod_play = p.cod_play)
