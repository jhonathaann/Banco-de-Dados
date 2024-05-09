-- Recupere o nome de todos os projeto do departamento 5 ou 1

-- Ordene pelo nome do projeto de forma crescente

select
    projnome 
from 
    projeto 
where 
    dnum = 5 or dnum = 1;
    
order by projome asc;