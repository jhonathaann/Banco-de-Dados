-- Crie a visão a qual recupera o primeiro nome e o sobrenome dos funcionários ,  
--o nome do projeto e as horas trabalhadas em cada projeto, somente se o projeto for localizado em 'Stanford'. 
-- Após a definição da VIEW, crie um comando SQL que liste todos os atributos da view definida.

-- Nome da view vfuncionario_projeto
-- Colunas esperadas: pnome, unome, projnome, horas 
-- IMPORTANTE: 
-- Não utilize OR REPLACE na definição da view 

create view vfuncionario_projeto(pnome, unome, projnome, horas) as

select f.pnome, f.unome, p.projnome, te.horas from funcionario f

join trabalha_em te on f.cpf = te.cpf

join projeto p on te.pnr = p.projnumero

join depto_localizacoes dl on p.dnum = dl.dnumero

where dl.local = 'Starford';

select * from vfuncionario_projeto;