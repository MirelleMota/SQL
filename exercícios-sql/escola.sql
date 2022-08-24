CREATE DATABASE db_escola_generation;

#seleciona o banco de dados a ser utilizado
USE db_escola_generation;

#comando para criação de tabelas
CREATE TABLE tb_alunes(
	id bigint auto_increment primary key,
    nome varchar(100),
    data_nascimento date,
    turma int,
    nota decimal(4,2)

);

SELECT * FROM tb_alunes;
/*Inserir dados da tabela (8 registros)*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Leticia Santos","1998-03-07",57,7.0);

SELECT * FROM tb_alunes WHERE nota >7;

SELECT * FROM tb_alunes WHERE nota <7;

UPDATE tb_alunes SET nota = 7 WHERE id=3;

SET SQL_SAFE_UPDATES = 0;

