CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);


CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,
	FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Grande",false);

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Frango c/ Catupiry", 30.00, "Tradicional", 5, 1);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Mussarela", 40.00, "Tradicional", 5, 2);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Prestígio", 50.99, "Tradicional", 2, 6);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Lombo c/ Catupiry", 60.00, "Tradicional", 3, 3);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Brócolis com Catupiry", 40.00, "Tradicional", 4, 7);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Calabresa", 45.99, "Tradicional", 5, 4);

SELECT * FROM tb_pizzas;

#Consulta ordernada em ordem ascendente
SELECT * FROM tb_pizzas WHERE preco >45 ORDER BY preco ASC;
SELECT * FROM tb_pizzas WHERE preco <45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 and 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_categorias WHERE descricao LIKE "%doce%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT sabor FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id WHERE descricao LIKE "%doce%";













