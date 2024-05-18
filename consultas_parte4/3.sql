-- Listar os nomes de todos os funcionários com dois ou mais dependentes

-- Colunas esperadas: pnome, qtd_dependentes

select
    funcionario.pnome as pnome,
    count(*) as qtd_dependentes
    
from
    funcionario
    
join
    dependente on funcionario.cpf = dependente.fcpf
group by
    funcionario.cpf
    
having
    count(*) >= 2;