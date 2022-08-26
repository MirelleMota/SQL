CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
tipo varchar(100),
areas varchar(250)

);

CREATE TABLE tb_cursos(
id bigint auto_increment primary key,
nome varchar(100),
modelo varchar(100),
preco int,
duracao varchar(100),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, areas) VALUES ("Tecnólogo", "Tecnologia");
INSERT INTO tb_categorias(tipo, areas) VALUES ("Bacharel", "Tecnologia");
INSERT INTO tb_categorias(tipo, areas) VALUES ("Livre", "Tecnologia");
INSERT INTO tb_categorias(tipo, areas) VALUES ("Tecnólogo", "Tecnologia");
INSERT INTO tb_categorias(tipo, areas) VALUES ("Livre", "Tecnologia");

SELECT * FROM tb_categorias;

INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Análise e Desenvolvimento de Sistemas", "EAD", 429, "5 semestres", 1);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Sistemas da Informação", "EAD", 639, "8 semestres", 2);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Banco de Dados", "EAD", 419, "5 semestres", 4);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Curso de Python", "EAD", 690, "12 horas", 3);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Cuso de Prossessamento de Dados", "EAD", 790, "10 horas", 5);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Engenharia da Computação", "EAD", 819, "8 semestres", 2);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Git e Git Hub", "EAD", 240, "8 horas", 3);
INSERT INTO tb_cursos(nome, modelo, preco, duracao, categoria_id) VALUES ("Desenvolvimento FullStack", "EAD", 830, "4 meses", 5);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco <500;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome LIKE"%s";
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;
SELECT * FROM tb_categorias INNER JOIN tb_cursos 
ON tb_categorias.id = tb_cursos.categoria_id WHERE tipo = "tecnólogo";

