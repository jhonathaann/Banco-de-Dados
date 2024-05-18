-- Recupere o cpf e nome dos gerentes que possuam ao menos dois dependente.

-- UTILIZE IN / NOT IN
-- Colunas esperadas: cpf, pnome, unome
-- Ordenação: cpf (ascendente)

select
    cpf,
    pnome,
    unome

from funcionario as f

join departamento on cpf = cpf_gerente
    where cpf in(
        select 
            fcpf
        from departamento
        group by
            fcpf
        having count(fcpf) >= 2;
    )

    order by 1 asc;