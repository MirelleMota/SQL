CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
tipo varchar(50),
quantidade_caixas int

);

CREATE TABLE tb_produtos (
id bigint auto_increment primary key,
nome_produto varchar(100),
preco_compra decimal(5,2),
preco_kg decimal(5,2),
preco_caixa decimal(5,2),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, quantidade_caixas) VALUES ("Vegetal", 10);
INSERT INTO tb_categorias(tipo, quantidade_caixas) VALUES ("Fruta", 120);
INSERT INTO tb_categorias(tipo, quantidade_caixas) VALUES ("Vegetal", 50);
INSERT INTO tb_categorias(tipo, quantidade_caixas) VALUES ("Fruta", 110);
INSERT INTO tb_categorias(tipo, quantidade_caixas) VALUES ("Vegetal", 60);

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Maçã Fuji", 4.00, 12.99, 139.00,2);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Alface Roxa", 1.90, 3.99, 79.00,3);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Banana Nanina", 1.29, 4.99, 149.00,4);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Maçã Gala", 3.00, 11.99, 129.00,2);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Banana Prata", 1.39, 5.99, 159.00,4);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Laranja Lima", 20.00, 5.00, 89.00,4);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Repolho", 1.00, 2.99, 99.00,1);
INSERT INTO tb_produtos(nome_produto, preco_compra, preco_kg, preco_caixa, categoria_id) VALUES ("Acelga", 2.00, 4.99, 119,1);

SELECT * FROM tb_produtos;
DELETE FROM tb_produtos WHERE id=1;

SELECT * FROM tb_produtos WHERE preco_caixa >50;
SELECT * FROM tb_produtos WHERE preco_caixa BETWEEN 50 and 150;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT nome_produto FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id WHERE tipo like "%fruta%";