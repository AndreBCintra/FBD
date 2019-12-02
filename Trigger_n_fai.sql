-- item 3(b)
create trigger tgr_n_fai_alb
on Faixas
for insert, update
as
begin
	declare
	@n_fai smallint

	select @n_fai = count(f.cod_fai) from Faixas f, inserted i
	where f.cod_alb = i.cod_alb

	if @n_fai >= 64
		begin
			rollback transaction
		end
end
