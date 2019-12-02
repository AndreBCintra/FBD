-- item 5
create view v_playlist (nome_playlist, qtde_albuns)
as
 select p.nome,count(a.cod_alb) from playlist p inner join fai_play fp
 on p.cod_play = fp.cod_play inner join faixas f on fp.cod_fai = f.cod_fai
 inner join album a on f.cod_alb = a.cod_alb
 group by p.nome
