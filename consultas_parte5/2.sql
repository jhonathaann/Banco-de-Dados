-- Recupere os funcionários que não possuem dependentes

-- UTILIZE IN / NOT IN
-- Colunas esperadas: todos os atributos de funcionário
-- Ordenação: primeiro atributo desc

select *
from 
    funcionario
    where cpf not in(
        select fcpf
        from dependente
    )
    order by cpf desc