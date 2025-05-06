-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS ProjetoModaFeminina;
USE ProjetoModaFeminina;

-- Tabela de Regiões
CREATE TABLE Regioes (
    id_regiao INTEGER PRIMARY KEY,
    estado VARCHAR(50),
    cidade VARCHAR(100),
    pais VARCHAR(50),
    populacao INTEGER
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    genero VARCHAR(10),
    email VARCHAR(100),
    telefone VARCHAR(20),
    fk_id_regiao INTEGER,
    FOREIGN KEY (fk_id_regiao) REFERENCES Regioes(id_regiao)
);

-- Tabela de Categorias de Produtos
CREATE TABLE Categorias (
    id_categoria INTEGER PRIMARY KEY,
    nome_categoria VARCHAR(50)
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    id_produto INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    tamanho VARCHAR(10),
    cor VARCHAR(30),
    estilo VARCHAR(50),
    fk_id_categoria INTEGER,
    FOREIGN KEY (fk_id_categoria) REFERENCES Categorias(id_categoria)
);

-- Tabela de Estoque
CREATE TABLE Estoque (
    id_estoque INTEGER PRIMARY KEY,
    fk_id_produto INTEGER,
    quantidade_disponivel INTEGER,
    ultima_reposicao DATE,
    FOREIGN KEY (fk_id_produto) REFERENCES Produtos(id_produto)
);

-- Tabela de Canais de Venda
CREATE TABLE Canais (
    id_canal INTEGER PRIMARY KEY,
    nome_canal VARCHAR(50)
);

-- Tabela de Campanhas de Marketing
CREATE TABLE Campanhas (
    id_campanha INTEGER PRIMARY KEY,
    nome_campanha VARCHAR(100),
    tipo_campanha VARCHAR(50),
    data_inicio DATE,
    data_fim DATE,
    canal_principal VARCHAR(50)
);

-- Tabela de associação Cliente x Campanha
CREATE TABLE Cliente_Campanha (
    fk_id_cliente INTEGER,
    fk_id_campanha INTEGER,
    PRIMARY KEY (fk_id_cliente, fk_id_campanha),
    FOREIGN KEY (fk_id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (fk_id_campanha) REFERENCES Campanhas(id_campanha)
);

-- Tabela de Vendas
CREATE TABLE Vendas (
    id_venda INTEGER PRIMARY KEY,
    data_venda DATE,
    fk_id_cliente INTEGER,
    fk_id_canal INTEGER,
    fk_id_campanha INTEGER,
    total DECIMAL(10,2),
    FOREIGN KEY (fk_id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (fk_id_canal) REFERENCES Canais(id_canal),
    FOREIGN KEY (fk_id_campanha) REFERENCES Campanhas(id_campanha)
);

-- Tabela de Itens da Venda
CREATE TABLE Itens_Venda (
    id_item INTEGER PRIMARY KEY,
    fk_id_venda INTEGER,
    fk_id_produto INTEGER,
    quantidade INTEGER,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (fk_id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (fk_id_produto) REFERENCES Produtos(id_produto)
);

-- Tabela de Pagamentos
CREATE TABLE Pagamentos (
    id_pagamento INTEGER PRIMARY KEY,
    forma_pagamento VARCHAR(50),
    valor_pago DECIMAL(10,2),
    fk_id_venda INTEGER UNIQUE,
    FOREIGN KEY (fk_id_venda) REFERENCES Vendas(id_venda)
);

-- Tabela de Sazonalidade (tempo)
CREATE TABLE Sazonalidade (
    id_tempo INTEGER PRIMARY KEY,
    data DATE,
    mes INTEGER,
    trimestre INTEGER,
    estacao VARCHAR(20),
    ano INTEGER
);

-- Tabela de associação Vendas x Tempo
CREATE TABLE Tempo_Venda (
    fk_id_venda INTEGER,
    fk_id_tempo INTEGER,
    PRIMARY KEY (fk_id_venda, fk_id_tempo),
    FOREIGN KEY (fk_id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (fk_id_tempo) REFERENCES Sazonalidade(id_tempo)
);

-- Tabela de Acessos (simula visitas antes da compra)
CREATE TABLE Acessos_Clientes (
    id_acesso INTEGER PRIMARY KEY,
    fk_id_cliente INTEGER,
    data_acesso DATE,
    origem_acesso VARCHAR(50),
    FOREIGN KEY (fk_id_cliente) REFERENCES Clientes(id_cliente)
);