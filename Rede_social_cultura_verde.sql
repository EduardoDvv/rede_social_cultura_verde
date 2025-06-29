#rede social database
create database rede_social_cultura_verde;

#Tabela usuarios
create table if not exists usuarios(

pk_usuario int not null auto_increment,
nome_usuario varchar (30) unique not null,
email varchar (20) unique not null,
senha varchar(50) not null,
nome_completo varchar (50) not null,
data_cadastro datetime default current_timestamp,
data_de_nascimento date,
descricao_bio text not null,
primary key (pk_usuario)
);

#Tabela banca_produtos
create table if not exists banca_produtos(

pk_produto int not null auto_increment,
primary key (pk_produto),
fk_usuario int not null,
nome_banca varchar(30),
nome_produto varchar (30),
quant_produto varchar (1000),
valor_produto float 

);

#Adicionando chave estrangeira(fk_usuario) na tabela banca_produtos
alter table banca_produtos
add foreign key (fk_usuario)
references usuarios(pk_usuario);

#TabelaComentarios
create table if not exists comentarios(

pk_comentario int not null auto_increment,
fk_produto int not null,
fk_usuario int not null,
conteudo text not null, 
data_comentario datetime default current_timestamp,
primary key(pk_comentario)

);



#Adicionando chave estrangeira(fk_usuario) na tabela comentarios
alter table comentarios 
add foreign key (fk_usuario)
references usuarios (pk_usuario);


#Adicionando chave estrangeira(fk_banca) na tabela comentarios
alter table comentarios
add foreign key (fk_produto)
references banca_produtos(pk_produto);

#Tabela Curtidas
create table if not exists curtidas(

pk_curtidas int not null auto_increment,
fk_produto int not null unique,
fk_usuario int not null unique,
data_curtida datetime default current_timestamp,
primary key (pk_curtidas)

);

alter table curtidas
add foreign key (fk_produto)
references banca_produtos(pk_produto);

alter table curtidas 
add foreign key (fk_usuario)
references usuarios (pk_usuario);

#tabela seguidores
create table if not exists seguidores(

pk_fk_seguido int not null,
pk_fk_seguiu int not null,
data_seguiu datetime default current_timestamp,
primary key (pk_fk_seguido, pk_fk_seguiu)

);

#Ligando a chave estrangeira (pk_fk_seguido) a tabela usuarios
alter table seguidores
add foreign key (pk_fk_seguido)
references usuarios (pk_usuario);

#Ligando a chave estrangeira (pk_fk_seguiu) a tabela usuarios
alter table seguidores
add foreign key (pk_fk_seguiu)
references usuarios (pk_usuario);


