CREATE DATABASE db_pizzaria;

USE db_pizzaria;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR ( 255 ) NOT NULL ,
tamanho VARCHAR ( 255 ) NOT NULL ,
preco DECIMAL (8,2) NOT NULL ,
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ( "Queijo" , " Brotinho " , 17.00 );
INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ( "Calabresa" , " Média " , 47.00 );
INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ( "Brocolis com bacon" , " Grande " , 67.00 );
INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ( "Frango com Catupiry" , " Média " , 39.00 );
INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ( "Pepperoni" , " Grande " , 70.00 );

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
nome_cliente VARCHAR ( 255 ) NOT NULL,
endereco_entrega VARCHAR ( 255 ) NOT NULL,
telefone BIGINT,
forma_pagamento VARCHAR (255) NOT NULL ,
forma_entrega VARCHAR ( 255 ) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Pedro Moraes", "Rua Panambi, 12", 19-99874523, "Cartão de credito", "Retirada", 3 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Melissa Arantes", "Avenida Comendador, 1632", 19-998654531, "Dinheiro", "Motoboy", 5 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Samira tolero", " no ", 1923654789, "Cartão de débito", "Comer no local", 4 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Miguel Veros", "estrada Garça, 78", 19-985742698, "Cartão de Credito", "Motoboy", 5 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "João Paulo Camargos", "Rua Rio de Janeiro, 996", 19-932569874, "Dinheiro", "Retirada", 2 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Manoel Piedade", "Av.Samuel solh, 43", 19-928793541, "Cartão de Débito", "Motoboy", 4 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Rose", "NO", 19-996742583, "Dinheiro", "Comer no Local", 1 );
INSERT INTO tb_pizza (nome_cliente, endereco_entrega, telefone, forma_pagamento, forma_entrega, categoria_id)
VALUES ( "Riberio Ronn", "NO", 19-997485231, "Cartão de Credito", "Retirada", 5 );


SELECT  *  FROM tb_categoria;

SELECT  *  FROM tb_pizza;

SELECT  *  FROM tb_categoria WHERE preco >=  45.00 ;

SELECT  *  FROM tb_categoria WHERE preco BETWEEN 29.00  AND  60.00 ;

SELECT  *  FROM tb_categoria WHERE sabor LIKE  " %C% " ;

SELECT  *  FROM tb_categoria INNER JOIN tb_pizza
ON  tb_categoria . id  =  tb_pizza . categoria_id ;

SELECT  *  FROM tb_categoria INNER JOIN tb_pizza
ON  tb_categoria . id  =  tb_pizza . categoria_id
WHERE forma_entrega LIKE "%Motoboy%" ;