CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh (
id bigint auto_increment primary key,
nome varchar(100),
data_nascimento date,
cargo varchar(50),
salario decimal(8,2)

);

SELECT * FROM tb_rh;

INSERT INTO tb_rh(nome, data_nascimento, cargo, salario) VALUES ("Mirelle", "1994-12-6", "Analista de Banco de Dados", 7.900);
INSERT INTO tb_rh(nome, data_nascimento, cargo, salario) VALUES ("Ana Cristina", "1990-06-12", "Gerente de Administrativo", 3.900);
INSERT INTO tb_rh(nome, data_nascimento, cargo, salario) VALUES ("Luiza Melo", "1992-04-3", "Gerente de Vendas", 5.000);
INSERT INTO tb_rh(nome, data_nascimento, cargo, salario) VALUES ("Fabio Gonçalves", "1988-08-9", "Vendedor", 2.500);
INSERT INTO tb_rh(nome, data_nascimento, cargo, salario) VALUES ("Matheus Lopes", "1985-07-22", "Motorista", 1.900);

SELECT * FROM tb_rh WHERE salario <2000;

SELECT * FROM tb_rh WHERE salario >2000;

UPDATE tb_rh SET salario=1900 WHERE id=5;