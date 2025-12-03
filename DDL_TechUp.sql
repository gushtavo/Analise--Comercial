USE bdtechup;

DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS metas;
DROP TABLE IF EXISTS vendedores;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS estados;

CREATE TABLE vendedores (
    id_vendedor INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    genero VARCHAR(20)
);

CREATE TABLE estados (
    idEstado INT PRIMARY KEY,
    nomeEstado VARCHAR(50),
    regiao VARCHAR(30)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    produto VARCHAR(50),
    categoria VARCHAR(30),
    preco DECIMAL(10,2)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    id_vendedor INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    valor_total DECIMAL(10,2),
    cidade VARCHAR(50),
    idEstado INT,
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
    FOREIGN KEY (idEstado) REFERENCES estados(idEstado)
);

CREATE TABLE metas (
    id_meta INT PRIMARY KEY,
    id_vendedor INT,
    mes VARCHAR(10),
    meta_mensal DECIMAL(10,2),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);
