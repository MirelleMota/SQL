CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_e_commerce (
id bigint auto_increment primary key,
nome_produto varchar(100),
descricao varchar(50),
preco_compra decimal(4,2),
preco_venda decimal (4,2),
marca varchar(50)
);

SELECT * FROM tb_e_commerce;

INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Fone de Ouvido", "Fone de ouvido sem fio", 19.90, 39.90, "Xing Xing");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Teclado", "Techado sem fio", 25.90, 55.90, "Xong Xong");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Mouse", "Mouse gamer sem fio", 9.90, 49.90, "Reddragon");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Mouse Pad", "Mouse Pad para mouse de mesa", 2.90, 19.90, "Xami Xami");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("HD Externo", "HD Externo 1TB", 49.90, 99.90, "Seagate");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Web Cam", "Web cam com infra-vermelho", 29.90, 69.90, "Multilaser");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Caixa de Som", "Caixa de som portátil", 9.90, 39.90, "Xing Xing");
INSERT INTO tb_e_commerce(nome_produto, descricao, preco_compra, preco_venda, marca) VALUES ("Fone de Ouvido Headset", "Fone de ouvido gamer", 29.90, 99.90, "Multilaser");



SELECT * FROM tb_e_commerce WHERE preco_venda <500;

SELECT * FROM tb_e_commerce WHERE preco_venda >500;

UPDATE tb_e_commerce SET marca="Xong Xong" WHERE id=6;