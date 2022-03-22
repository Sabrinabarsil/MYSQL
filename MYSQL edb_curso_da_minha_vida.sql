CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
modalidade VARCHAR(255) NOT NULL,
formacao VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (modalidade, formacao)  
VALUES("EAD", "Bacharel" );

INSERT INTO tb_categoria (modalidade, formacao) 
VALUES("SemiPresencial", "Tecnologo");

INSERT INTO tb_categoria (modalidade, formacao)
VALUES("Presencial","Licenciatura" );

INSERT INTO tb_categoria (modalidade, formacao) 
VALUES("EAD", "Pós Graduação");

INSERT INTO tb_categoria (modalidade, formacao)  
VALUES("Presencial","Doutorado");

CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT,
curso VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
semestre INT NOT NULL,
desconto VARCHAR(255) ,
id_categoria BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria) 
VALUES("Direito", 5.000, 10, "5% na pontualidade", 1);

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria)
VALUES("Analise e Desenvolvimento de Sistemas", 750.00, 3, " NO ", 2);

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria) 
VALUES("Medicina", 9500.00, 12, "6% pontualidade", 1);

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria)
VALUES("História", 825.00, 8, "5% Pontualidade", 3);

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria)
VALUES("User Experience Design and Beyond", 1300.00, 3, "NO", 4 );

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria)
VALUES("Economia dos Negocios", 3700.00, 4, "NO", 5);

INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria)
 VALUES("Geografia", 500.00, 8, "10% pontualidade", 3);
 
INSERT INTO tb_curso (curso, preco, semestre, desconto, id_categoria)
VALUES("Jornalismo", 2000.00, 9, "5% pontualidade", 1);



SELECT curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) AS preco , semestre, desconto FROM tb_curso WHERE preco > 50;

SELECT curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) AS preco , semestre, desconto FROM tb_curso WHERE preco > 3 AND preco < 60;

SELECT curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) AS preco , semestre, desconto FROM tb_curso WHERE curso LIKE 'J%';

SELECT * FROM tb_curso INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produtos.id_categoria; 

SELECT * FROM tb_curso INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produtos.id_categoria 
WHERE duracao LIKE '%anos%';