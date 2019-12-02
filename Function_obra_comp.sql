-- item 6
create function f_obras_comp (@nome_comp varchar(50))
returns @tab_alb_comp table
(Código_do_Album smallint)
as
begin
insert into @tab_alb_comp
select a.cod_alb from Album a, Faixas f, Fai_Comp fc, Compositor c
where a.cod_alb = f.cod_alb and f.cod_fai = fc.cod_fai and fc.cod_comp = c.cod_comp and c.nome like '%'+@nome_comp+'%'
group by a.cod_alb
return
end
