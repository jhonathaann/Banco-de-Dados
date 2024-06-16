-- Criar uma consulta SQL que retorne a receita total gerada por cada cliente, 
-- juntamente com a quantidade total de produtos comprados e o custo total de envio por ano.

SELECT
    c.clienteID,
    c.nomeCliente,
    c.sobrenomeCliente,

    -- Essa função extrai o ano da data de pagamento
    EXTRACT(YEAR FROM p.dataPag) AS ano,

    -- Soma os todos os valores pagos
    SUM(p.valorPago) AS receita_total,
    
    -- Soma todas as quantidades de produtos disponiveis
    SUM(pp.quantDisponvel) AS quantidade_total_produtos,

    -- Soma todos os custos de envio de cada produto
    SUM(e.precoEnv) AS custo_total_envio
FROM 
    cliente c
JOIN 
    
    -- junta a tabela "pagamento" com a tabela "cliente" através do "clienteID"
    pagamento p ON c.clienteID = p.clienteID
JOIN 

    -- junta a tabela "pedido" com a tabela "pagamento" através do "clienteID"
    pedido pe ON p.pagID = pe.pedidoID
JOIN 

    -- junta a tabela "produtoPedido" com a tabela "pedido" através do "clienteID"
    produtoPedido pp ON pe.pedidoID = pp.pedidoID
JOIN

    -- junta a tabela "envioProduto" com a tabela "pedido" através do "clienteID"
    envioProduto e ON pe.pedidoID = e.pedidoID
WHERE 

    -- filtra todos os registros para os casos onde a data de pagamento não é nula
    p.dataPag IS NOT NULL
GROUP BY 

    -- agrupa pelos campos "clienteID"
    c.clienteID, 

    -- agrupa pelos campos "nomeCliente"
    c.nomeCliente,

    -- agrupa pelos campos "sobrenomeCliente"
    c.sobrenomeCliente, 

    -- agrupa pelo ano da data de pagamento
    EXTRACT(YEAR FROM p.dataPag)

-- por fim, ordena os resultados pelo "clienteID" e pelo "ano"    
ORDER BY 
    c.clienteID, 
    ano;
