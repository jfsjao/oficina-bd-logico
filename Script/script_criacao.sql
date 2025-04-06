-- Criação das tabelas para o projeto E-commerce

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE pessoa_fisica (
    id_cliente INT PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE,
    data_nascimento DATE,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pessoa_juridica (
    id_cliente INT PRIMARY KEY,
    cnpj VARCHAR(18) UNIQUE,
    razao_social VARCHAR(100),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_cliente INT,
    tipo_pagamento VARCHAR(50),
    detalhes_pagamento TEXT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pedido (
    id_pedido SERIAL PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE entrega (
    id_entrega SERIAL PRIMARY KEY,
    id_pedido INT,
    status_entrega VARCHAR(50),
    codigo_rastreamento VARCHAR(50),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);


