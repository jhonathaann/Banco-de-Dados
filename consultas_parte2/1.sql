-- Liste o cpf dos funcionários que são gerentes e supervisores (INTERSECT)

select
    cpf_supervisor

from 
    funcionario where cpf_supervisor is not null

intersect

select 
    cpf_gerente from departamento;