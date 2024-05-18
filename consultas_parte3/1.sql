-- Para cada funcionário, recupere o primeiro e o último nome do funcionário e o primeiro e o último nome  de seus supervisor imediato.

-- Colunas esperadas: funcionario.pnome, funcionario.unome, supervisor.pnome, supervisor.unome 

select
    f.pnome as "funcionario_pnome",
    f.unome as "funcionario_unome",
    s.pnome as "supervisor_pnome",
    s.unome as "supervisor_unome"
from 
    funcionario f
join 
    funcionario s on f.cpf_supervisor = s.cpf;