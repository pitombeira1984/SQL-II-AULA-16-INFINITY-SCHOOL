CREATE DATABASE loja3;

USE loja3;

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE produtos(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    CHECK (preco > 0)
);

ALTER TABLE clientes ADD COLUMN email VARCHAR(40) NOT NULL UNIQUE;

ALTER TABLE produtos ADD COLUMN quantidade INT DEFAULT 0 AFTER nome_produto;

SELECT * FROM produtos;

INSERT INTO produtos (nome_produto, quantidade, preco) VALUES ('Mochila', 15, 19.90),
															  ('Caderno', 200, 15.90),
                                                              ('Lancheira', 22, 32.90);

SELECT * FROM produtos;                                                              