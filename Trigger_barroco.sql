-- item 3(a)
create trigger tgr_barroco
on Fai_Play
for insert, update
as
begin
	declare
	@per_mus varchar(50),
	@tp_grav varchar(5)

	select @per_mus = isnull(p.descricao, ''), @tp_grav = f.tp_grav 
	from inserted i inner join Faixas f on i.cod_fai = f.cod_fai left outer join Fai_Comp fc on fc.cod_fai = f.cod_fai 
	inner join Compositor c on c.cod_comp = fc.cod_comp inner join Per_Mus p on p.cod_per = c.cod_per
	where p.cod_per = c.cod_per and c.cod_comp = fc.cod_comp and fc.cod_fai = f.cod_fai and i.cod_fai = f.cod_fai

	if @per_mus like 'Barroco' and @tp_grav like 'ADD'
		begin
			rollback transaction
		end
end
