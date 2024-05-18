-- Retorne  pnome do funcionário e de seu supervisor. Liste todos os funcionários, mesmo aqueles que não possuem supervisor.

-- Colunas esperadas: nome_funcionario, nome_supervisor
-- Observação: SQLite não implementa: RIGHT JOIN, FULL JOIN

select 
    f.pnome as "nome_funcionario",
    s.pnome as "nome_supervisor"
from 
    funcionario f
left join 
    funcionario s on f.cpf_supervisor = s.cpf;
