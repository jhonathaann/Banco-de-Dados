-- Listar todos os departamentos e seus respectivos funcionários. Listar também aqueles departamentos que não possuem funcionário.

-- Colunas esperadas: pnome, unome, endereco, dnome, dnumero
-- Observação: SQLite não implementa: RIGHT JOIN, FULL JOIN

select 
    f.pnome as "pnome_funcionario",
    f.unome as "unome_funcionario",
    f.endereco as "endereco_funcionario",
    d.dnome as "nome_departamento",
    d.dnumero as "numero_departamento"
from
    departamento d
left join
    funcionario f on d.dnumero = f.dnr;
