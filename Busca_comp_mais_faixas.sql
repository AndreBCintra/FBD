-- item 8(c)
select c.nome from Compositor c left outer join Fai_Comp fc on c.cod_comp = fc.cod_comp inner join Faixas f on fc.cod_fai = f.cod_fai
left outer join Fai_Play fp on f.cod_fai = fp.cod_fai
group by c.cod_comp, c.nome
having (select count(distinct f1.cod_fai) 
from Fai_Play fp1 inner join Faixas f1 on fp1.cod_fai = f1.cod_fai inner join Fai_Comp fc1 on f1.cod_fai = fc1.cod_fai
where fc1.cod_comp = c.cod_comp) >= all(select count(distinct f2.cod_fai) 
from Fai_Play fp2 inner join Faixas f2 on fp2.cod_fai = f2.cod_fai inner join Fai_Comp fc2 on f2.cod_fai = fc2.cod_fai right outer join Compositor c1 on fc2.cod_comp = c1.cod_comp 
where fc2.cod_comp = c1.cod_comp
group by c1.cod_comp)
