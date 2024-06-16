-- Inserindo dados nas tabelas

-- Tabela infosFornecedor
INSERT INTO infosFornecedor (fornecedorID, nomeF, sobrenomeF) VALUES
(1, 'Carlos', 'Silva'),
(2, 'Maria', 'Souza'),
(3, 'José', 'Oliveira'),
(4, 'Ana', 'Santos'),
(5, 'Pedro', 'Lima'),
(6, 'Paula', 'Ferreira'),
(7, 'João', 'Pereira'),
(8, 'Mariana', 'Costa'),
(9, 'Roberto', 'Alves'),
(10, 'Juliana', 'Moura');

-- Tabela infosFornecedor_tipoFornecedor
INSERT INTO infosFornecedor_tipoFornecedor (fornecedorID, tipoFornecedor) VALUES
(1, 'Eletrônicos', 'Móveis'),
(2, 'Roupas', 'Tecidos'),
(3, 'Alimentos'),
(4, 'Móveis'),
(5, 'Brinquedos'),
(6, 'Cosméticos'),
(7, 'Ferramentas'),
(8, 'Livros', 'Mangás'),
(9, 'Bebidas'),
(10, 'Material de Construção');

-- Tabela contatosFornecedor
INSERT INTO contatosFornecedor (fornecedorID, telComercial, telResidencial, emailPessoal, emailComercial) VALUES
(1, '1111-1111', '2222-2222', 'carlos@gmail.com', 'carlos@empresa.com'),
(2, '3333-3333', '4444-4444', 'maria@gmail.com', 'maria@empresa.com'),
(3, '5555-5555', '6666-6666', 'jose@gmail.com', 'jose@empresa.com'),
(4, '7777-7777', '8888-8888', 'ana@gmail.com', 'ana@empresa.com'),
(5, '9999-9999', '1010-1010', 'pedro@gmail.com', 'pedro@empresa.com'),
(6, '1111-1112', '2222-2223', 'paula@gmail.com', 'paula@empresa.com'),
(7, '3333-3334', '4444-4445', 'joao@gmail.com', 'joao@empresa.com'),
(8, '5555-5556', '6666-6667', 'mariana@gmail.com', 'mariana@empresa.com'),
(9, '7777-7778', '8888-8889', 'roberto@gmail.com', 'roberto@empresa.com'),
(10, '9999-1000', '1010-1011', 'juliana@gmail.com', 'juliana@empresa.com');

-- Tabela enderecoFornecedor
INSERT INTO enderecoFornecedor (fornecedorID, numero, cep, rua, bairro, cidade) VALUES
(1, 100, '01000-000', 'Rua A', 'Centro', 'São Paulo'),
(2, 101, '02000-000', 'Rua B', 'Vila Nova', 'Rio de Janeiro'),
(3, 102, '03000-000', 'Rua C', 'Jardim', 'Belo Horizonte'),
(4, 103, '04000-000', 'Rua D', 'Santa Clara', 'Porto Alegre'),
(5, 104, '05000-000', 'Rua E', 'Boa Vista', 'Curitiba'),
(6, 105, '06000-000', 'Rua F', 'Centro', 'Florianópolis'),
(7, 106, '07000-000', 'Rua G', 'Zona Sul', 'Salvador'),
(8, 107, '08000-000', 'Rua H', 'Zona Norte', 'Recife'),
(9, 108, '09000-000', 'Rua I', 'Centro', 'Manaus'),
(10, 109, '10000-000', 'Rua J', 'Industrial', 'Fortaleza');

-- Tabela produtoFornecedor
INSERT INTO produtoFornecedor (produtoID, nomeP, PreçoProdutoUnitario, QuantEstoque) VALUES
(1, 'TV', 1500, 10),
(2, 'Calça', 100, 50),
(3, 'Arroz', 20, 200),
(4, 'Mesa', 300, 15),
(5, 'Boneca', 50, 30),
(6, 'Creme', 30, 100),
(7, 'Martelo', 25, 70),
(8, 'Livro', 40, 150),
(9, 'Vinho', 60, 90),
(10, 'Cimento', 25, 120);

-- Tabela pedido
INSERT INTO pedido (pedidoID, dataPedido) VALUES
(1, '2020-01-01'),
(2, '2021-02-01'),
(3, '2022-03-01'),
(4, '2023-04-01'),
(5, '2022-05-01'),
(6, '2020-06-01'),
(7, '2021-07-01'),
(8, '2021-08-01'),
(9, '2022-09-01'),
(10, '2023-10-01');

-- Tabela cliente
INSERT INTO cliente (clienteID, nomeCliente, sobrenomeCliente) VALUES
(1, 'Bruno', 'Marques'),
(2, 'Carla', 'Almeida'),
(3, 'Daniel', 'Costa'),
(4, 'Eduarda', 'Dias'),
(5, 'Felipe', 'Fernandes'),
(6, 'Gabriela', 'Gomes'),
(7, 'Henrique', 'Mendes'),
(8, 'Isabela', 'Nunes'),
(9, 'Júlio', 'Pinto'),
(10, 'Larissa', 'Ribeiro');

-- Tabela enderecoCliente
INSERT INTO enderecoCliente (clienteID, numero, cep, cidade, rua, bairro) VALUES
(1, 200, '11000-000', 'São Paulo', 'Rua K', 'Centro'),
(2, 201, '12000-000', 'Rio de Janeiro', 'Rua L', 'Vila Nova'),
(3, 202, '13000-000', 'Belo Horizonte', 'Rua M', 'Jardim'),
(4, 203, '14000-000', 'Porto Alegre', 'Rua N', 'Santa Clara'),
(5, 204, '15000-000', 'Curitiba', 'Rua O', 'Boa Vista'),
(6, 205, '16000-000', 'Florianópolis', 'Rua P', 'Centro'),
(7, 206, '17000-000', 'Salvador', 'Rua Q', 'Zona Sul'),
(8, 207, '18000-000', 'Recife', 'Rua R', 'Zona Norte'),
(9, 208, '19000-000', 'Manaus', 'Rua S', 'Centro'),
(10, 209, '20000-000', 'Fortaleza', 'Rua T', 'Industrial');

-- Tabela produtoPedido
INSERT INTO produtoPedido (produtoID, nomeP, quantDisponvel, precoUnitario, categoriaProd) VALUES
(1, 'TV', 10, 1500.00, 'Eletrônicos'),
(2, 'Calça', 50, 100.00, 'Roupas'),
(3, 'Arroz', 200, 20.00, 'Alimentos'),
(4, 'Mesa', 15, 300.00, 'Móveis'),
(5, 'Boneca', 30, 50.00, 'Brinquedos'),
(6, 'Creme', 100, 30.00, 'Cosméticos'),
(7, 'Martelo', 70, 25.00, 'Ferramentas'),
(8, 'Livro', 150, 40.00, 'Livros'),
(9, 'Vinho', 90, 60.00, 'Bebidas'),
(10, 'Cimento', 120, 25.00, 'Material de Construção');

-- Tabela enderecoEntrega
INSERT INTO enderecoEntrega (pedidoID, numero, cep, cidade, rua, bairro) VALUES
(1, 300, '21000-000', 'São Paulo', 'Rua U', 'Centro'),
(2, 301, '22000-000', 'Rio de Janeiro', 'Rua V', 'Vila Nova'),
(3, 302, '23000-000', 'Belo Horizonte', 'Rua W', 'Jardim'),
(4, 303, '24000-000', 'Porto Alegre', 'Rua X', 'Santa Clara'),
(5, 304, '25000-000', 'Curitiba', 'Rua Y', 'Boa Vista'),
(6, 305, '26000-000', 'Florianópolis', 'Rua Z', 'Centro'),
(7, 306, '27000-000', 'Salvador', 'Rua AA', 'Zona Sul'),
(8, 307, '28000-000', 'Recife', 'Rua BB', 'Zona Norte'),
(9, 308, '29000-000', 'Manaus', 'Rua CC', 'Centro'),
(10, 309, '30000-000', 'Fortaleza', 'Rua DD', 'Industrial');

-- Tabela metodoPag
INSERT INTO metodoPag (metodoPagID, numCartao, nomeCartao, dataValidade, codSeguranca, descricaoMetodo) VALUES
(1, 1234567890123456, 'Visa', '2025-01-01', 123, 'Crédito'),
(2, 2345678901234567, 'Mastercard', '2025-02-01', 234, 'Débito'),
(3, 3456789012345678, 'Amex', '2025-03-01', 345, 'Crédito'),
(4, 4567890123456789, 'Elo', '2025-04-01', 456, 'Débito'),
(5, 5678901234567890, 'Hipercard', '2025-05-01', 567, 'Crédito'),
(6, 6789012345678901, 'Diners', '2025-06-01', 678, 'Crédito'),
(7, 7890123456789012, 'Discover', '2025-07-01', 789, 'Débito'),
(8, 8901234567890123, 'Aura', '2025-08-01', 890, 'Crédito'),
(9, 9012345678901234, 'JCB', '2025-09-01', 901, 'Débito'),
(10, 1234509876543210, 'UnionPay', '2025-10-01', 210, 'Crédito');

-- Tabela pagamento
INSERT INTO pagamento (pagID, metodoPagID, dataPag, modoPag, valorPago, clienteID) VALUES
(1, 1, '2023-01-01', 'Online', 1500.00, 1),
(2, 2, '2023-02-01', 'Offline', 100.00, 2),
(3, 3, '2023-03-01', 'Online', 20.00, 3),
(4, 4, '2023-04-01', 'Offline', 300.00, 4),
(5, 5, '2023-05-01', 'Online', 50.00, 5),
(6, 6, '2023-06-01', 'Offline', 30.00, 6),
(7, 7, '2023-07-01', 'Online', 25.00, 7),
(8, 8, '2023-08-01', 'Offline', 40.00, 8),
(9, 9, '2023-09-01', 'Online', 60.00, 9),
(10, 10, '2023-10-01', 'Offline', 25.00, 10);

-- Tabela envioProduto
INSERT INTO envioProduto (envioID, metodoEnvio, dataEnvio, precoEnv, nomeTransport, dataEstimada, pedidoID, clienteID) VALUES
(1, 'Correios', '2023-01-02', 20.00, 'Transportadora A', '2023-01-10', 1, 1),
(2, 'Sedex', '2023-02-02', 25.00, 'Transportadora B', '2023-02-10', 2, 2),
(3, 'Transportadora', '2023-03-02', 30.00, 'Transportadora C', '2023-03-10', 3, 3),
(4, 'Correios', '2023-04-02', 35.00, 'Transportadora D', '2023-04-10', 4, 4),
(5, 'Sedex', '2023-05-02', 40.00, 'Transportadora E', '2023-05-10', 5, 5),
(6, 'Transportadora', '2023-06-02', 45.00, 'Transportadora F', '2023-06-10', 6, 6),
(7, 'Correios', '2023-07-02', 50.00, 'Transportadora G', '2023-07-10', 7, 7),
(8, 'Sedex', '2023-08-02', 55.00, 'Transportadora H', '2023-08-10', 8, 8),
(9, 'Transportadora', '2023-09-02', 60.00, 'Transportadora I', '2023-09-10', 9, 9),
(10, 'Correios', '2023-10-02', 65.00, 'Transportadora J', '2023-10-10', 10, 10);

-- Tabela metodosEnv
INSERT INTO metodosEnv (envioID, MetodoEnvioID, DescricaoMetodo) VALUES
(1, 1, 'Rápido'),
(2, 2, 'Econômico'),
(3, 3, 'Normal'),
(4, 4, 'Rápido'),
(5, 5, 'Econômico'),
(6, 6, 'Normal'),
(7, 7, 'Rápido'),
(8, 8, 'Econômico'),
(9, 9, 'Normal'),
(10, 10, 'Rápido');

-- Tabela endereco_envio
INSERT INTO endereco_envio (envioID, cidade, rua, numero, cep, bairro) VALUES
(1, 'São Paulo', 'Rua A', 100, '01000-000', 'Centro'),
(2, 'Rio de Janeiro', 'Rua B', 101, '02000-000', 'Vila Nova'),
(3, 'Belo Horizonte', 'Rua C', 102, '03000-000', 'Jardim'),
(4, 'Porto Alegre', 'Rua D', 103, '04000-000', 'Santa Clara'),
(5, 'Curitiba', 'Rua E', 104, '05000-000', 'Boa Vista'),
(6, 'Florianópolis', 'Rua F', 105, '06000-000', 'Centro'),
(7, 'Salvador', 'Rua G', 106, '07000-000', 'Zona Sul'),
(8, 'Recife', 'Rua H', 107, '08000-000', 'Zona Norte'),
(9, 'Manaus', 'Rua I', 108, '09000-000', 'Centro'),
(10, 'Fortaleza', 'Rua J', 109, '10000-000', 'Industrial');