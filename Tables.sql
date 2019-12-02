use BDSpotPer_418253_415103

create table Gravadora(
	cod_grav smallint NOT NULL,
	nome varchar(50) NOT NULL,
	homepage varchar(50) NOT NULL,
	endereco varchar(50) NOT NULL,
	constraint Gravadora_pk PRIMARY KEY (cod_grav),
)	on BDSpotPer_fg01

create table Telefones(
	numero int not null,
	cod_grav smallint not null,
	constraint Telefones_pk PRIMARY KEY (numero),
	constraint Telefones_Gravadora_fk FOREIGN KEY (cod_grav) REFERENCES Gravadora (cod_grav)
}	on BDSpotPer_fg01

create table Album(
	pr_de_compra dec(6,2) NOT NULL,
	cod_alb smallint NOT NULL,
	descricao varchar(50),
	cod_grav smallint NOT NULL,
	dt_grav date NOT NULL,
	dt_compra date NOT NULL,
	tp_compra varchar(20) NOT NULL,
	constraint Album_pk PRIMARY KEY (cod_alb),
	constraint Album_fk_Gravadora FOREIGN KEY (cod_grav) REFERENCES Gravadora(cod_grav) ON UPDATE cascade ON DELETE NO ACTION,
	constraint Album_ck_data_compra CHECK (dt_compra > '2000-01-01'),
	constraint Album_ck_data_grav CHECK (dt_grav < dt_compra),
	constraint Album_ck_tp_compra CHECK (tp_compra in ('Fisica', 'Download'))
)	on BDSpotPer_fg01

create table Tipo_Comp(
	cod_tp_comp smallint NOT NULL,
	descricao varchar(50),
	constraint Tipo_Comp_pk PRIMARY KEY (cod_tp_comp)
)	on BDSpotPer_fg01

create table Faixas(
	posicao smallint NOT NULL,
	cod_fai smallint NOT NULL,
	cod_alb smallint NOT NULL,
	descricao varchar(50) NOT NULL,
	cod_tp_comp smallint NOT NULL,
	tmp_exec time NOT NULL,
	tp_grav nvarchar(3) NOT NULL,
	constraint faixa_pk PRIMARY KEY (cod_fai),
	constraint faixa_fk_Tp_Comp FOREIGN KEY (cod_tp_comp) REFERENCES Tipo_Comp(cod_tp_comp) ON UPDATE cascade ON DELETE NO ACTION,
	constraint album_fk FOREIGN KEY (cod_alb) REFERENCES Album (cod_alb) ON UPDATE cascade ON DELETE cascade,
	constraint tp_grav_ck CHECK (tp_grav in ('ADD' , 'DDD'))
)	on BDSpotPer_fg02
create nonclustered index faixas_index_tp_comp on Faixas(cod_tp_comp) with (PAD_INDEX = ON, FILLFACTOR = 100)
create clustered index faixas_index_album on Faixas (Cod_alb) with (PAD_INDEX = ON, FILLFACTOR = 100)

create table Interprete(
	cod_int smallint NOT NULL,
	nome varchar(50) NOT NULL,
	tipo varchar(50) NOT NULL,
	constraint Interprete_pk PRIMARY KEY (cod_int)
)	on BDSpotPer_fg01

create table Per_Mus(
	cod_per smallint NOT NULL,
	descricao varchar(50) NOT NULL,
	int_tmp varchar(50) NOT NULL,
	constraint Per_Mus_pk PRIMARY KEY (cod_per)
)	on BDSpotPer_fg01

create table Compositor(
	cod_comp smallint NOT NULL,
	nome varchar(50) NOT NULL,
	local_nasc varchar(50) NOT NULL,
	dt_nasc date NOT NULL,
	dt_morte date,
	cod_per smallint NOT NULL,
	constraint Compositor_pk PRIMARY KEY (cod_comp),
	constraint Compositor_Per_fk FOREIGN KEY (cod_per) REFERENCES Per_Mus (cod_per) ON UPDATE cascade ON DELETE NO ACTION
)	on BDSpotPer_fg01

create table Playlist(
	cod_play smallint NOT NULL,
	nome varchar(50) NOT NULL,
	dt_criacao date NOT NULL,
	tempototal time DEFAULT '00:00:00',
	constraint Playlist_pk PRIMARY KEY (cod_play)
)	on BDSpotPer_fg02

create table Fai_Play(
	cod_fai smallint NOT NULL,
	cod_play smallint NOT NULL,
	dt_tocada date default getdate(),
	n_vezes_tocada smallint default 0,
	constraint Fai_Play_pk PRIMARY KEY (cod_fai, cod_play),
	constraint Fai_Play_fk_Faixa FOREIGN KEY (cod_fai) REFERENCES Faixas (cod_fai) ON UPDATE cascade ON DELETE cascade,
	constraint Fai_Play_fk_Playlist FOREIGN KEY (cod_play) REFERENCES Playlist (cod_play) ON UPDATE cascade ON DELETE NO ACTION
)	on BDSpotPer_fg02

create table Fai_Comp(
	cod_fai smallint NOT NULL,
	cod_comp smallint NOT NULL,
	constraint Fai_Comp_pk PRIMARY KEY (cod_fai, cod_comp),
	constraint Fai_Comp_fk_Faixa FOREIGN KEY (cod_fai) REFERENCES Faixas (cod_fai) ON UPDATE cascade ON DELETE cascade,
	constraint Fai_Comp_fk_Compositor FOREIGN KEY (cod_comp) REFERENCES Compositor (cod_comp) ON UPDATE cascade ON DELETE NO ACTION
)	on BDSpotPer_fg01

create table Fai_Int(
	cod_fai smallint NOT NULL,
	cod_int smallint NOT NULL,
	constraint Fai_Int_pk PRIMARY KEY (cod_fai, cod_int),
	constraint Fai_Int_fk_Faixa FOREIGN KEY (cod_fai) REFERENCES Faixas (cod_fai) ON UPDATE cascade ON DELETE cascade,
	constraint Fai_Int_fk_Interprete FOREIGN KEY (cod_int) REFERENCES Interprete (cod_int) ON UPDATE cascade ON DELETE NO ACTION
)	on BDSpotPer_fg01
