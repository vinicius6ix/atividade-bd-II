CREATE DATABASE blog;
SHOW DATABASES;
USE blog;

create table Artigos(

ArtigoID int auto_increment,
titulo varchar (255) NOT NULL,
conteudo varchar (255) NOT NULL,
datapublicacao date NOT NULL,
primary key (ArtigoID)
);

INSERT INTO artigos ( ArtigoID, titulo,conteudo,datapublicacao) values (1, "Filmes de ação", "A inclusão feminina nos filmes", '2023-05-10');
INSERT INTO artigos ( ArtigoID, titulo,conteudo,datapublicacao) values (2, "Filmes de romance", " A romantização do abuso no romance", '2023-01-20');
INSERT INTO artigos ( ArtigoID, titulo,conteudo,datapublicacao) values (3, "Abuso Sexual", " Normalização do abuso em relacionamento", ' 2023-09-21');
INSERT INTO artigos ( ArtigoID, titulo,conteudo,datapublicacao) values (4, "Dicionário inclusivo", "Adição de palavras inclusivas", '2023-01-27');
INSERT INTO artigos ( ArtigoID, titulo,conteudo,datapublicacao) values (5, " Sexualidade" , " Conversas sobre sexualidade", ' 2023-04-29' );

CREATE TABLE Comentários(

comentarioID int auto_increment primary key,
ArtigoID int not null,
autor varchar (255) not null,
texto varchar (255) not null,
datacomentario date not null,
foreign key (comentarioID) references artigos (ArtigoID)
);

insert into Comentários ( comentarioID, artigoID, autor, texto, datacomentario) values
(1,1, "deffour", "olá", '23-02-08'),
(2,2, "embiid", "tudo bem?", '23-03-09'),
(3,3, "Stephen", "Vamos!!!", '23-04-10'),
(4,4, "Luka", "Calma", 23-05-11),
(5,5, "Doncic", "OK", 23-06-12);

select * from Artigos;
select * from Comentários;

