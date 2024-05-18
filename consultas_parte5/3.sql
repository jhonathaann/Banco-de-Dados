-- Recupere os funcionários que não possuem dependentes

-- UTILIZE EXISTS /NOT EXISTS
-- Colunas esperadas: todos os atributos de funcionário
-- Ordenação: primeiro atributo desc

select *
from 
    funcionario as f
    where not exists (
        select 1
        from dependente as d
        where d.fcpf = f.cpf
    )
    order by f.cpf desc;