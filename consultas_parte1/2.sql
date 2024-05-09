-- retorna o nome e o endereço de todos os funcionarios cujo drn = 4 (administraçao)
-- por algum motivo, quando dnr = 4 ele da erro. quando dnr = 15 ele funciona (????)
-- Colunas esperadas (renomeamento se necessário): pnome, endereco

select 
    pnome, endereco 
from 
    funcionario 
where 
    dnr = 15;