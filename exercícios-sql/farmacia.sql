CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
tipo varchar(50),
descricao varchar(250)

);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
nome_produto varchar(250),
marca varchar(100),
preco_compra decimal(5,2),
preco_venda decimal(5,2),
categoria_id bigint,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)

);

INSERT INTO tb_categorias(tipo, descricao) VALUES("Drogaria", "Medicamento de uso contínuo");
INSERT INTO tb_categorias(tipo, descricao) VALUES("Drogaria", "Medicamento com prescrição médica");
INSERT INTO tb_categorias(tipo, descricao) VALUES("Perfumaria", "Hastes flexíveis com algodão");
INSERT INTO tb_categorias(tipo, descricao) VALUES("Perfumaria", "Para cabelos oleosos");
INSERT INTO tb_categorias(tipo, descricao) VALUES("Perfumaria", "Com abas e toque seco");

DELETE FROM tb_categorias WHERE id=2;
SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome_produto, marca, preco_compra,preco_venda,categoria_id) VALUES ("Levotiroxina 100mcg", "Medley (genérico)", 1.99, 9.99,1);
INSERT INTO tb_produtos(nome_produto, marca, preco_compra,preco_venda,categoria_id) VALUES ("Cotonetes", "Johnson", 1.19, 11.99,4);
INSERT INTO tb_produtos(nome_produto, marca, preco_compra,preco_venda,categoria_id) VALUES ("Amoxicilina 500mg - Antibiótico", "EMS (genérico)", 14.99, 69.99,3);
INSERT INTO tb_produtos(nome_produto, marca, preco_compra,preco_venda,categoria_id) VALUES ("Shampoo", "Pantene", 2.99, 9.99,5);
INSERT INTO tb_produtos(nome_produto, marca, preco_compra,preco_venda,categoria_id) VALUES ("Absorvente", "Always", 1.29, 4.99,6);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco_venda >50;
SELECT * FROM tb_produtos WHERE preco_venda BETWEEN 5.0 and 60.0;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT nome_produto FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id WHERE tipo like "%perfumaria%";



