CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;
CREATE TABLE tb_recursos_humanos( 
id bigint AUTO_INCREMENT, 
Nome VARCHAR (255) NOT NULL, 
Cargo VARCHAR (255) not null, 
Data_admissão date, 
Salario decimal NOT NULL,
Beneficios VARCHAR (255),
PRIMARY KEY (id)
);

INSERT INTO tb_recursos_humanos (Nome, Cargo, Data_admissão, Salario, Beneficios)
VALUES ("Pedro Lopes Hanzs", "Gerente de Operações", "1997-05-07", 7000.00, "VR/VA/CONV");

INSERT INTO tb_recursos_humanos (Nome, Cargo, Data_admissão, Salario, Beneficios)
VALUES ("Helena Camargo Santos", "Diretora Executivas", "2015-09-26", 22000.00, " ");

INSERT INTO tb_recursos_humanos (Nome, Cargo, Data_admissão, Salario, Beneficios)
VALUES ("Henrinque Mattos", "Estagiario", "2022-02-17", 1350.25, "VR");

INSERT INTO tb_recursos_humanos (Nome, Cargo, Data_admissão, Salario, Beneficios)
VALUES ("Leticia Salles Ferreira", "Assistente de Marketing", "2018-10-26", 2955.00, "VR/VA/CONV");

INSERT INTO tb_recursos_humanos (Nome, Cargo, Data_admissão, Salario, Beneficios)
VALUES ("Marta Angelina Perez", "Analista Contabil", "2019-07-12", 3840.00, "VR/VA/CONV");

SELECT * FROM tb_recursos_humanos;
SELECT  CONCAT("R$ ", FORMAT (Salario, 2, "pt_BR")) AS Salario FROM tb_recursos_humanos; 
SELECT * FROM tb_recursos_humanos WHERE Salario > 2000.00;
SELECT * FROM tb_recursos_humanos WHERE Salario < 2000.00;

UPDATE tb_recursos_humanos SET Salario = 1350.00 WHERE id = 3;
ALTER TABLE tb_recursos_humanos MODIFY Salario decimal (8,2);



