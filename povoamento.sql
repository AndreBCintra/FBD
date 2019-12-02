insert into Gravadora(cod_grav, nome, homepage, endereco)
values (01, 'gravadora 1', 'www.grav1.com.br', 'Rua ex1')
insert into Gravadora(cod_grav, nome, homepage, endereco)
values (02, 'gravadora 2', 'www.grav2.com.br', 'Rua ex2')
insert into Gravadora(cod_grav, nome, homepage, endereco)
values (03, 'gravadora 3', 'www.grav3.com.br', 'Rua ex3')

insert into Album
values (10.00, 01, 'AM', 01, '2013-09-09', '2019-04-06', 'Download')
insert into Album
values (12.00, 02, 'Melhores de Mozart', 02, '1999-12-3', '2000-4-6', 'Download')
insert into Album
values (14.00, 03, 'Melhores de Ednaldo Pereira', 01, '2001-12-3', '2012-4-6', 'Download')
insert into Album -- Teste numero de faixas <= 64
values (10.00, 04, 'Teste n faixas', 03, '2000-01-01', '2000-04-06', 'Download')
insert into Album
values (8.00, 05, 'Novak', 02, '2015-07-07', '2017-04-16', 'Fisica')
insert into Album -- Teste do barroco com concerto e barroco DDD
values (9.00, 06, 'Barroco massa', 03,'1987-06-18', '2004-06-19', 'Fisica')
insert into Album -- Teste dt_grav < dt_compra
values (10.00, 07, 'Teste dt_grav', 03, '2015-04-18', '2015-03-11', 'Fisica')
insert into Album -- Teste dt compra > 2000-01-01
values (10.00, 08, 'Teste dt_compra', 03, '1999-07-09', '1999-08-11', 'Download')

insert into Tipo_Comp
values (01, 'Sinfonia')
insert into Tipo_Comp
values (02, 'Opera')
insert into Tipo_Comp
values (03, 'Sonata')
insert into Tipo_Comp
values (04, 'Concerto')

insert into Faixas
values (1, 01, 01, 'Do I wanna know', 01, '00:04:25', 'DDD')
insert into Faixas
values (2, 02, 01, 'Are you mine', 01, '00:03:22', 'DDD')
insert into Faixas
values (3, 03, 01, 'Fireside', 01, '00:03:02', 'DDD')
insert into Faixas
values (1, 04, 03, 'What is the brother', 03, '00:04:27', 'ADD')
insert into Faixas
values (2, 05, 03, 'Vale nada vale tudo', 03, '00:04:27', 'ADD')
insert into Faixas
values (3, 06, 03, 'Ninguém', 03, '00:04:27', 'ADD')
insert into Faixas
values (4, 07, 03, 'Chance', 03, '00:04:27', 'DDD')
insert into Faixas
values (5, 08, 03, 'Mesclado', 03, '00:04:27', 'ADD')
insert into Faixas
values (6, 09, 03, 'God is good', 03, '00:04:27', 'DDD')
insert into Faixas
values (7, 10, 03, 'Cidade capital', 03, '00:04:27', 'DDD')
insert into Faixas
values (8, 11, 03, 'Who is the sister', 03, '00:04:27', 'ADD')
insert into Faixas
values (9, 12, 03, 'Mulher oferecida', 03, '00:04:27', 'ADD')
insert into Faixas
values (10, 13, 03, 'Mulher contrariada', 03, '00:04:27', 'ADD')
insert into Faixas
values (1, 14, 02, 'Le nozze di Figaro', 01, '00:04:13', 'DDD')
insert into Faixas
values (2, 15, 02, 'Elvira Madigan', 04, '00:06:43', 'DDD')
insert into Faixas
values (3, 16, 02, 'Adagio', 03, '00:05:00', 'ADD')
insert into Faixas
values (1, 17, 05, 'Marysa', 02, '00:11:45', 'DDD')
insert into Faixas
values (1, 18, 05, 'Into the church', 02, '00:06:47', 'DDD')
insert into Faixas
values (1, 19, 05, 'Between childrens', 02, '00:03:48', 'DDD')
insert into Faixas
values (1, 20, 05, 'The lovers', 02, '00:04:27', 'DDD')
insert into Faixas -- Faixa para testar o tipo concerto e periodo barroco
values (1, 21, 06, 'tp comp = concerto e per = barroco', 04, '00:02:34', 'DDD')
insert into Faixas -- Faixa para testar o barroco ADD
values (2, 22, 06, 'barroco ADD', 01, '00:02:34', 'ADD')
insert into Faixas
values (1, 100, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (2, 101, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (3, 102, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (4, 103, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (5, 104, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (6, 105, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (7, 106, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (8, 107, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (9, 108, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (10, 109, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (11, 110, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (12, 111, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (13, 112, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (14, 113, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (15, 114, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (16, 115, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (17, 116, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (18, 117, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (19, 118, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (20, 119, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (21, 120, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (22, 121, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (23, 122, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (24, 123, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (25, 124, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (26, 125, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (27, 126, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (28, 127, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (29, 128, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (30, 129, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (31, 130, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (32, 131, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (33, 132, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (34, 133, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (35, 134, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (36, 135, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (37, 136, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (38, 137, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (39, 138, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (40, 139, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (41, 140, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (42, 141, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (43, 142, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (44, 143, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (45, 144, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (46, 145, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (47, 146, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (48, 147, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (49, 148, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (50, 149, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (51, 150, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (52, 151, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (53, 152, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (54, 153, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (55, 154, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (56, 155, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (57, 156, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (58, 157, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (59, 158, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (60, 159, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (61, 160, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (62, 161, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (63, 162, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas
values (64, 163, 04, 'teste 64', 01, '00:01:01', 'DDD')
insert into Faixas -- Ativa a trigger > 64 faixas
values (65, 164, 04, 'teste 64', 01, '00:01:01', 'DDD')

insert into Per_Mus
values (01, 'Barroco', '1630-1750')
insert into Per_Mus
values (02, 'Idade Media', '470-1430')
insert into Per_Mus
values (03, 'Renascenca', '1400-1600')
insert into Per_Mus
values (04, 'Classico', '1750-1810')
insert into Per_Mus
values (05, 'Romantico', '1810-1900')
insert into Per_Mus
values (06, 'Moderno', '1950-2020')

insert into Compositor
values (01, 'Dvorack', 'Republica Tcheca', '1841-09-08', '1904-05-01', 05)
insert into Compositor
values (02, 'Ednaldo Pereira', 'Brasil', '1978-06-18', null, 06)
insert into Compositor
values (03, 'Amadeus Mozart', 'Áustria', '1756-01-27', '1791-12-05', 04)
insert into Compositor
values (04, 'so pra testar o bagulho do barroco la', 'barroco', '1841-09-08', '1904-05-01', 01)
insert into Compositor
values (05, 'Alex Turner', 'Reino Unido', '1986-01-06', null, 06)

insert into Interprete
values (01, 'Ednaldo Pereira', 'Tenor')
insert into Interprete
values (02, 'Arctic Monkeys', 'Banda?')

insert into Fai_Comp
values (01, 05)
insert into Fai_Comp
values (02, 05)
insert into Fai_Comp
values (03, 05)
insert into Fai_Comp
values (04, 02)
insert into Fai_Comp
values (05, 02)
insert into Fai_Comp
values (06, 02)
insert into Fai_Comp
values (07, 02)
insert into Fai_Comp
values (08, 02)
insert into Fai_Comp
values (09, 02)
insert into Fai_Comp
values (10, 02)
insert into Fai_Comp
values (11, 02)
insert into Fai_Comp
values (12, 02)
insert into Fai_Comp
values (13, 02)
insert into Fai_Comp
values (14, 03)
insert into Fai_Comp
values (15, 03)
insert into Fai_Comp
values (16, 03)
insert into Fai_Comp
values (17, 01)
insert into Fai_Comp
values (18, 01)
insert into Fai_Comp
values (19, 01)
insert into Fai_Comp
values (20, 01)
insert into Fai_Comp
values (21, 04)
insert into Fai_Comp
values (22, 04)

insert into Playlist
values (01, 'Melhores', getdate(), default)
insert into Playlist -- Só adicionar concerto barroco para testar a busca
values (02, 'só concerto barroco', getdate(), default)
insert into Playlist
values (03, 'Classicas', getdate(), default)

insert into Fai_Play
values (01, 01, default, default)
insert into Fai_Play
values (02, 01, default, default)
insert into Fai_Play
values (07, 01, default, default)
insert into Fai_Play
values (11, 01, default, default)
insert into Fai_Play
values (14, 01, default, default)
insert into Fai_Play
values (17, 01, default, default)
insert into Fai_Play
values (20, 01, default, default)
insert into Fai_Play
values (21, 02, default, default)
insert into Fai_Play
values (20, 03, default, default)
insert into Fai_Play
values (19, 03, default, default)
insert into Fai_Play
values (15, 03, default, default)
insert into Fai_Play
values (16, 03, default, default)
insert into Fai_Play -- ativa a trigger do barroco ADD
values (22, 02, default, default)
