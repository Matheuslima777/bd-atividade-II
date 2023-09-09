CREATE DATABASE Blog;

USE Blog;

CREATE table Artigos(
  Id INT auto_increment primary key,
  Titulo varchar(255) not null,
  Conteudo text,
  DataPublicacao date
);
CREATE TABLE Comentarios(
  Id INT auto_increment primary key,
  artigo_Id INT,
  Autor varchar(255) not null,
  Texto text,
  DataComentario date,
  Foreign Key (artigo_id) REFERENCES Artigos(Id)
);


INSERT INTO Artigos(Titulo, Conteudo, DataPublicacao)
VALUES
    ('Meu pé de laranja Lima', 'Zezé é muito serelepe', '1968-01-01'),
    ('O mundo de sofia', 'A historia da filosofia', '1991-10-05'),
    ('Divina comedia', 'Poema epico e a historia de Dante e Beatrice', '1472-01-01'),
    ('A Menina que roubava livros', 'Quando a morte te conta uma historia, você tem que parar para ouvi-la', '2005-01-01'),
    ('Flores para algernon', 'A inteligencia é uma dádiva ou um fardo?', '1966-01-01');

INSERT INTO Comentarios(artigo_id, Autor, Texto, DataComentario)
VALUES
    (1, 'Matheus Lima', 'Encantadorr', '2022-10-23'),
    (1, 'Pontes', 'Muito bom', '2023-08-11'),
    (2, 'Matheus Fagundes', 'Muito bom, amo filosofia', '2016-07-12'),
    (3, 'Julia Fernandes', 'Amo a divina comedia', '2017-09-30'),
    (5, 'Jay z', 'Melhor livro que já li', '2021-11-07');


SELECT * FROM Blog.Comentarios;
SELECT * FROM Blog.Artigos;
