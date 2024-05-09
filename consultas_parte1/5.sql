-- Liste as informações dos funcionarios que trabalham para o departamento 4 e que recebem salário maior do que 
-- R$25.000,00 ou que trabalham para o departamento 5 e que recebem salário maior do que R$30.000,00

-- Colunas esperadas: pnome, salario, dnr 
-- Ordene pelo nome do funcionario de forma crescente

-- esta listando os nomes dos funcionarios em ordem alfabetica

select 
    pnome, salario, dnr 
from 
    funcionario 
where 
    (dnr = 5 and salario > 30000) or (dnr = 4 and salario > 25000)
    
order by 
    pnome asc;