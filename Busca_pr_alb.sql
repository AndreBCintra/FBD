-- item 8(a)
select a.descricao, a.pr_de_compra from Album a 
where pr_de_compra > (select avg(a.pr_de_compra)from Album a)
