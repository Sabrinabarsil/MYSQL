-- Criar banco de dados 
CREATE DATABASE db_quitanda;
-- criar tabela tb_produtos

USE db_quitanda; -- seleciona banco de dados clica no 2° raio
CREATE TABLE tb_produtos( -- clica no 2° raio depois de executar o USE
id bigint AUTO_INCREMENT, 
nome VARCHAR (255) NOT NULL, -- 255 valor padrão atribuido ao varchar, not null força user a dar nome ao produto
quantidade	int, 
data_validade date, -- aaaa/mm/dd formato americano
preco decimal NOT NULL,
PRIMARY KEY (id)
);
-- inserir dados na tabela
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Arroz", 50, "2029-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("XUXU", 20, "2022-04-01", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Tomate", 80, "2022-03-25", 4.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Cenoura", 75, "2022-04-01", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Morango", 01, "2022-03-20", 9.25); 

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana", 100, "2022-04-01", 10.50);
-- seleciona e executa todos os itens no 1° raio

SELECT * FROM tb_produtos; -- lista os produtos (executa no 2° rario)
SELECT nome, preco FROM tb_produtos; -- mostrar apenas nome e preço (ver apenas alguns itens)
SELECT * FROM tb_produtos WHERE preco > 10.00; -- visualização especifica (podemos usar op. relacionais p/ buscar)
SELECT * FROM tb_produtos WHERE preco > 10.00 and Quant < 130;
SELECT nome, CONCAT("R$ ", FORMAT (preco, 2, "pt_BR")) AS preco FROM tb_produtos; -- formata para aparecer em real

UPDATE tb_produtos SET preco = 9.25 WHERE id = 5; -- atualizar dados tabela
UPDATE tb_produtos SET quantidade = 150 WHERE id = 4; -- alterar dados dos itens

DELETE FROM tb_produtos WHERE id = 3 or id=7 or id= 8 or id= 9 or id= 10 or id= 11 or id=6 ; -- deleta item

ALTER TABLE tb_produtos MODIFY preco decimal (8,2); -- alterar estrutura da tabela (executa no 2° rario)
ALTER TABLE tb_produtos ADD  descricao VARCHAR (255); -- adiciona atributo
ALTER TABLE tb_produtos DROP  descricao;-- remove atributo
ALTER TABLE tb_produtos CHANGE quantidade Quant int; -- altera dados do atributo






