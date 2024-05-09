-- Liste o nome do funcionário, seu departamento, o nome do seu supervisor e o departamento do supervisor, 
-- considerando todos os funcionários que trabalham para o departamento 5 ou que são supervisionados por 
-- supervisores que trabalham no departamento 5;

-- Colunas esperadas: nome_funcionario, dep_funcionario, nome_supervisor, dep_supervisor
-- Ordene pelo nome do funcionario de forma crescente

select 
    f.pnome, 
    f.dnr, 
    s.pnome, 
    s.dnr 
from 
    funcionario f
    
left join
    funcionario s on f.cpf_supervisor = s.cpf

where 
    f.dnr=5 or s.dnr = 5

order by
    f.pnome asc;