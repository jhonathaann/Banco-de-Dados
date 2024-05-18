-- Liste o cpf dos funcionários que não possuem dependentes (utilize EXCEPT)

select 
    cpf
from 
    funcionario
except
    select
        cpf from funcionario, dependente where funcionario.cpf = dependente.cpf;
   