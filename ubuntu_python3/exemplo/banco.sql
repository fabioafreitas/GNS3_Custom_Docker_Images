CREATE SCHEMA IF NOT EXISTS projeto_redes;

USE projeto_redes;

CREATE TABLE IF NOT EXISTS estudante (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
    periodo INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO estudante (nome, periodo) VALUES
("fabio",10),
("eduarda",4),
("joselito",1),
("joana",9);

SELECT * FROM estudante;