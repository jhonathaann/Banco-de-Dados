-- Listar todos os departamentos combinados com todos os funcionários. 

-- Ordene de forma ascendente por nome do departamento e nome do funcionário respectivamente.

-- Colunas esperadas: dnome, dnumero, pnome, unome

select 
    d.dnome as "dnome",
    d.dnumero as "dnumero",
    f.pnome as "pnome",
    f.unome as "unome"
from 
    departamento d
cross join
    funcionario f
order by
    d.dnome asc,
    f.pnome asc;
