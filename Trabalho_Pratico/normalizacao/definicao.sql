-- Criando as tabelas

-- Tabela que contém as informações do Fonercedor
CREATE TABLE infosFornecedor(
    fornecedorID INT PRIMARY KEY,
    nomeF VARCHAR (100),
    sobrenomeF VARCHAR(100)
);

-- Tabela que contém quais são os tipos de cada fornecedor (esse atributo pode ser multivalorado)
CREATE TABLE infosFornecedor_tipoFornecedor(
    fornecedorID INT,
    tipoFornecedor VARCHAR(100),

    -- chave estrangeira (fornecedorID) dessa tabela aponta para a chave primaria (FornecedorID) da tabela infosFornecedor
    FOREIGN KEY (fornecedorID) REFERENCES infosFornecedor(fornecedorID)
);

-- Tabela que contém as informações para contato com o fornecedor
CREATE TABLE contatosFornecedor(
    fornecedorID INT,
    telComercial VARCHAR(100),
    telResidencial VARCHAR(100),
    emailPessoal VARCHAR(100),
    emailComercial VARCHAR(100),

    -- chave estrangeira (fornecedorID) dessa tabela aponta para a chave primaria (FornecedorID) da tabela infosFornecedor
    FOREIGN KEY (fornecedorID) REFERENCES infosFornecedor(fornecedorID)
);

-- Tabela que contém o endereço do fornecedor
CREATE TABLE enderecoFornecedor(
    fornecedorID INT,
    numero INT,
    cep VARCHAR(100),
    rua VARCHAR(100),
    bairro VARCHAR(100),
    cidade VARCHAR(100),

    -- chave estrangeira (fornecedorID) dessa tabela aponta para a chave primaria (FornecedorID) da tabela infosFornecedor
    FOREIGN KEY (fornecedorID) REFERENCES infosFornecedor(fornecedorID)
);

-- Tabela que contém as informações do produto
CREATE TABLE produtoFornecedor(
    produtoID INT PRIMARY KEY,
    nomeP VARCHAR(100),
    PreçoProdutoUnitario INT,
    QuantEstoque INT,
);

-- Tabela que contém as informações do pedido
CREATE TABLE pedido(
    pedidoID INT PRIMARY KEY,
    dataPedido DATE
);

-- Tabela que contém as informações do cliente
CREATE TABLE cliente(
    clienteID INT PRIMARY KEY,
    nomeCliente VARCHAR(100),
    sobrenomeCliente VARCHAR(100)
);

-- Tabela que contém as informações do endereço do cliente
CREATE TABLE enderecoCliente(
    clienteID INT,
    numero INT,
    cep VARCHAR(100),
    cidade VARCHAR(100),
    rua VARCHAR(100),
    bairro VARCHAR,

    -- Chave estrangiera (clienteID) aponta para clienteID da tabela cliente
    FOREIGN KEY (clienteID) REFERENCES cliente(clienteID)

);

-- Tabela que contém as informações do produto
CREATE TABLE produtoPedido(
    produtoID INT,
    nomeP VARCHAR(100),
    quantDisponvel INT,
    precoUnitario DECIMAL(10, 2),
    categoriaProd VARCHAR(100),

    -- FK dessa tebela aponta para a PK de cliente e de produtoFornecedor
    FOREIGN KEY (produtoID) REFERENCES cliente(produtoID),
    FOREIGN KEY (produtoID) REFERENCES produtoFornecedor(produtoID)
);

-- Tabela que contém as informações do endereço de entrega do pedido
CREATE TABLE enderecoEntrega(
    pedidoID INT,
    numero INT,
    cep VARCHAR(100),
    cidade VARCHAR(100),
    rua VARCHAR(100),
    bairro VARCHAR(100),

    -- FK dessa tabela aponta para PK de pedido
    FOREIGN KEY (pedidoID) REFERENCES pedido(pedidoID)
);

-- Tabela que contém as informações do método de pagamento
CREATE TABLE metodoPag(
    metodoPagID INT PRIMARY KEY,
    numCartao INT,
    nomeCartao VARCHAR(100),
    dataValidade DATE,
    codSeguranca INT,
    descricaoMetodo VARCHAR
);

-- Tabela que contém as informações sobre o pagamento
CREATE TABLE pagamento(
    pagID INT PRIMARY KEY,
    metodoPagID INT,
    dataPag DATE,
    modoPag VARCHAR(100),
    valorPago DECIMAL(10, 2),
    clienteID INT,

    -- FK (metodoPadId) aponta para PK(metodoPagID) da tabela metodoPag
    FOREIGN KEY (metodoPagID) REFERENCES metodoPag(metodoPagID),
    -- FK (clienteID) aponta para PK (clienteID) de cliente
    FOREIGN KEY (clienteID) REFERENCES cliente(clienteID)
);

-- Tabela que contém as informações do envio do produto
CREATE TABLE envioProduto (
    envioID INT PRIMARY KEY,
    metodoEnvio VARCHAR(100),
    dataEnvio DATE,
    precoEnv DECIMAL(10, 2),
    nomeTransport VARCHAR(100),
    dataEstimada DATE,
    pedidoID INT,
    clienteID INT,

    -- FK (pedidoID) aponta para PK(pedidoID) da tabela pedido
    FOREIGN KEY (pedidoID) REFERENCES pedido(pedidoID),
    -- FK (clienteID) aponta para PK(clienteID) da tabela cliente
    FOREIGN KEY (clienteID) REFERENCES cliente(clienteID)
);

-- Tabela que contém as informações do método de envio do produto
CREATE TABLE metodosEnv (
    envioID INT,
    MetodoEnvioID INT PRIMARY KEY,
    DescricaoMetodo VARCHAR(100),

    -- FK (envioID) aponta para PK (envidoID) da tabela envioProduto
    FOREIGN KEY (envioID) REFERENCES envioProduto(envioID)
);

-- Tabela que contém as informações do endereço de envio do produto
CREATE TABLE endereco_envio (
    envioID INT,
    cidade VARCHAR(100),
    rua VARCHAR(100),
    numero INT,
    cep VARCHAR(100),
    bairro VARCHAR(100),

    -- FK (enviodID) aponta para PK (envioID) da tabela envioProduto
    FOREIGN KEY (envioID) REFERENCES envioProduto(envioID)
);