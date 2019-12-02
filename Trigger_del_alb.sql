-- item 3(c)
create trigger del_alb
on Album
for delete
as
begin
	delete from Fai_Comp
	where cod_fai in (select f.cod_fai from Faixas f inner join deleted a on a.cod_alb = f.cod_alb)
	delete from Fai_Int
	where cod_fai in (select f.cod_fai from Faixas f inner join deleted a on a.cod_alb = f.cod_alb)
	delete from Fai_Play
	where cod_fai in (select f.cod_fai from Faixas f inner join deleted a on a.cod_alb = f.cod_alb)
	delete from Faixas
	where cod_alb = (select a.cod_alb from deleted a)
end
go
