CREATE DATABASE Empresa;
GO

USE Empresa;
GO

CREATE TABLE Fornecedor
(
    Codigo VARCHAR(50) NOT NULL PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL,
    CNPJ VARCHAR(14) NOT NULL,
    Endereco VARCHAR(35)
);
GO

CREATE TABLE Produtos
(
    Codigo VARCHAR(50) NOT NULL PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL,
    Descricao VARCHAR(MAX)
);
GO

CREATE TABLE Fornecedor_Produtos
(
    FOREIGN KEY (Cod_Fornecedor) REFERENCES Fornecedor(Codigo),
    FOREIGN KEY (Cod_Produto) REFERENCES Produtos(Codigo)
);
GO

CREATE TABLE Cliente
(
    Codigo VARCHAR(50) NOT NULL PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL,
    Endereco VARCHAR(35)
);
GO

CREATE TABLE Loja
(
    Codigo VARCHAR(50) NOT NULL PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL,
    CNPJ VARCHAR(14) NOT NULL
);
GO

CREATE TABLE Venda
(
    Num_NFiscal VARCHAR NOT NULL PRIMARY KEY,
    DataNasc DATE,
    Valor_Total FLOAT,
    FOREIGN KEY (Cod_Cliente) REFERENCES Cliente(Codigo),
    FOREIGN KEY (Cod_Loja) REFERENCES Loja(Codigo)
);
GO

CREATE TABLE Produto_Venda
(
    Preco FLOAT,
    Quantidade INT,
    FOREIGN KEY (Cod_Produto) REFERENCES Produtos(Codigo),
    FOREIGN KEY (Num_NFiscal) REFERENCES Venda(Num_NFiscal)
);
GO
