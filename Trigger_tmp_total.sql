-- trigger pra atributo tempo total da playlist
create trigger tgr_playlist_tempototal 
on Fai_Play
for insert, update
as
begin
	declare
	@tempo time

	select @tempo = f.tmp_exec from Playlist p, Faixas f, inserted fp
	where p.cod_play = fp.cod_play and fp.cod_fai = f.cod_fai

	update Playlist set tempototal = convert(datetime,(convert(datetime,@tempo) + convert(datetime,tempototal)),114)
end
