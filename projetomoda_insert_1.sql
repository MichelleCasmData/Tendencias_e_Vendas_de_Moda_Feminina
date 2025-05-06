use projetomodafeminina;
-- inserção de dados na tabela Região 
INSERT INTO Regioes (id_regiao, estado, cidade, pais, populacao) VALUES 
(1, '(MS, Mato Grosso do Sul)', 'Oliveira do Campo', 'Brasil', 1440975),
(2, '(PB, Paraíba)', 'Souza', 'Brasil', 333478),
(3, '(PB, Paraíba)', 'Santos', 'Brasil', 152451),
(4, '(BA, Bahia)', 'Viana do Sul', 'Brasil', 1655144),
(5, '(PR, Paraná)', 'Farias', 'Brasil', 676778);


-- inserção de dados na tebela Clientes
INSERT INTO Clientes (id_cliente, nome, data_nascimento, genero, email, telefone, fk_id_regiao) VALUES 
(1, 'Lucca Souza', '2006-05-26', 'Feminino', 'hfernandes@ig.com.br', '0800 916 0449', 2),
(2, 'Raquel Nascimento', '1997-12-25', 'Feminino', 'acosta@gmail.com', '+55 71 3905-2330', 1),
(3, 'Luiza Peixoto', '2001-06-15', 'Feminino', 'bda-conceicao@cardoso.org', '+55 (084) 6914-6937', 5),
(4, 'Catarina Gonçalves', '1987-12-02', 'Masculino', 'zgomes@bol.com.br', '(081) 4573-6651', 1),
(5, 'Otávio Cavalcanti', '2007-05-02', 'Feminino', 'ana-sophia35@ig.com.br', '+55 84 2872 4563', 1);
INSERT INTO Clientes (id_cliente, nome, data_nascimento, genero, email, telefone, fk_id_regiao) VALUES
(6, 'Camila Ribeiro', '1995-08-10', 'Feminino', 'camila.ribeiro@gmail.com', '+55 11 91234-5678', 3),
(7, 'Felipe Martins', '1990-03-22', 'Masculino', 'felipe.martins@yahoo.com', '+55 21 99876-5432', 2),
(8, 'Juliana Mendes', '1988-11-19', 'Feminino', 'juliana.mendes@outlook.com', '+55 31 98456-1234', 4),
(9, 'Rafael Costa', '1999-07-05', 'Masculino', 'rafael.costa@gmail.com', '+55 85 99999-8888', 2),
(10, 'Mariana Dias', '2000-04-30', 'Feminino', 'mariana.dias@uol.com.br', '+55 21 97777-6655', 5),
(11, 'Bruna Silva', '1996-09-15', 'Feminino', 'bruna.silva@gmail.com', '+55 61 99123-4567', 3),
(12, 'Carlos Lima', '1985-02-20', 'Masculino', 'carlos.lima@hotmail.com', '+55 71 99222-3344', 4),
(13, 'Fernanda Rocha', '1993-06-08', 'Feminino', 'fernanda.rocha@gmail.com', '+55 11 98888-7766', 1),
(14, 'Gustavo Ferreira', '1991-12-03', 'Masculino', 'gustavo.ferreira@live.com', '+55 41 98765-4321', 5),
(15, 'Larissa Moura', '1998-01-27', 'Feminino', 'larissa.moura@yahoo.com.br', '+55 34 99999-5555', 3),
(16, 'André Barbosa', '1994-10-12', 'Masculino', 'andre.barbosa@gmail.com', '+55 85 98888-4444', 2),
(17, 'Patrícia Gomes', '1992-05-18', 'Feminino', 'patricia.gomes@outlook.com', '+55 31 97777-1122', 1),
(18, 'Thiago Almeida', '1989-07-29', 'Masculino', 'thiago.almeida@gmail.com', '+55 61 99999-2233', 4),
(19, 'Débora Tavares', '2001-03-07', 'Feminino', 'debora.tavares@gmail.com', '+55 11 96543-7890', 3),
(20, 'Vinícius Andrade', '1997-11-23', 'Masculino', 'vinicius.andrade@globo.com', '+55 19 99887-7766', 2);


-- inserção de dados na tebela Categorias
INSERT INTO Categorias (id_categoria, nome_categoria) VALUES
(1, 'Roupas'), (2, 'Calçados'), (3, 'Acessórios');
INSERT INTO Categorias (id_categoria, nome_categoria) VALUES
(4, 'Moda Praia'),
(5, 'Casual'),
(6, 'Esportivo'),
(7, 'Inverno'),
(8, 'Verão'),
(9, 'Social'),
(10, 'Intimidade');


-- inserção de dados na tabela Produtos
INSERT INTO Produtos (id_produto, nome, preco, tamanho, cor, estilo, fk_id_categoria) VALUES
(1, 'Vestido Floral', 199.90, 'M', 'Azul', 'Casual', 1),
(2, 'Sandália Salto', 149.90, '38', 'Preto', 'Social', 2),
(3, 'Brinco Dourado', 59.90, 'Único', 'Dourado', 'Acessórios', 3),
(4, 'Biquíni Listrado', 89.90, 'P', 'Colorido', 'Praia', 4),
(5, 'Camisa Jeans', 129.90, 'G', 'Azul', 'Casual', 5),
(6, 'Tênis Esportivo', 179.90, '40', 'Branco', 'Esportivo', 6),
(7, 'Casaco de Lã', 249.90, 'GG', 'Cinza', 'Inverno', 7),
(8, 'Saia Leve Verão', 99.90, 'M', 'Rosa', 'Verão', 8),
(9, 'Conjunto Social', 329.90, 'M', 'Preto', 'Social', 9),
(10, 'Lingerie Rendada', 89.90, 'P', 'Vermelho', 'Intimidade', 10);

-- inserção de dados na tabela Estoque
INSERT INTO Estoque (id_estoque, fk_id_produto, quantidade_disponivel, ultima_reposicao) VALUES
(1, 1, 40, '2025-04-01'),  -- Vestido Floral
(2, 2, 25, '2025-04-10'),  -- Sandália Salto
(3, 3, 60, '2025-03-28'),  -- Brinco Dourado
(4, 4, 35, '2025-03-15'),  -- Biquíni Listrado
(5, 5, 50, '2025-04-05'),  -- Camisa Jeans
(6, 6, 30, '2025-04-12'),  -- Tênis Esportivo
(7, 7, 15, '2025-02-25'),  -- Casaco de Lã
(8, 8, 45, '2025-04-03'),  -- Saia Leve Verão
(9, 9, 20, '2025-03-20'),  -- Conjunto Social
(10, 10, 55, '2025-04-08'); -- Lingerie Rendada

-- inserção de dados na tebela Canais
INSERT INTO Canais (id_canal, nome_canal) VALUES (1, 'Site');
INSERT INTO Canais (id_canal, nome_canal) VALUES (2, 'App');
INSERT INTO Canais (id_canal, nome_canal) VALUES (3, 'Loja Física');

-- inserção de dados na tabela Campanhas
INSERT INTO Campanhas (id_campanha, nome_campanha, tipo_campanha, data_inicio, data_fim, canal_principal) VALUES 
(1, 'Campanha 1', 'Email', '2025-02-21', '2025-04-10', 'Site'),
(2, 'Campanha 2', 'Email', '2025-03-30', '2025-04-28', 'Site'),
(3, 'Campanha 3', 'Instagram', '2025-03-01', '2025-03-30', 'App'),
(4, 'Campanha 4', 'Email', '2025-03-08', '2025-04-30', 'Site'),
(5, 'Campanha 5', 'Google Ads', '2025-02-12', '2025-04-15', 'Loja Física');

-- inserção de dados na tabela Cliente_Campanha
INSERT INTO Cliente_Campanha (fk_id_cliente, fk_id_campanha) VALUES (11, 1);
INSERT INTO Cliente_Campanha (fk_id_cliente, fk_id_campanha) VALUES (20, 1);
INSERT INTO Cliente_Campanha (fk_id_cliente, fk_id_campanha) VALUES (2, 1);











