-- Liste o cpf dos funcionarios que trabalham para o departamento 5 ou que 
-- supervisionam um empregado que trabalha para o departamento 5. Ordene  de forma ascendente. (utilize UNION)

select
    cpf
from funcionario where funcionario.dnr = 5

union

select 
    cpf_supervisor
from funcionario where funcionario.dnr = 5;
