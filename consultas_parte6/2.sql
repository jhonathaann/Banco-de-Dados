-- Crie uma view que retorna o nome do departamento, o tipo de profissional ("funcionario simples", "gerente", "supervisor", "gerente e supervisor" ao mesmo tempo),
-- o número do departamento e a quantidade de cada um desses profissionais para cada departamento. 
-- Após a definição da VIEW, crie um comando SQL que liste todos os atributos da view definida.

-- Colunas esperadas: nome_depto, tipo, dnumero, qtd_profissionais
-- Ordenação: nome_depto ascendente e tipo ascendente
-- Nome da view: vdep_tipofunc
-- IMPORTANTE: 

-- Não utilize OR REPLACE na definição da view 
-- Utilize apenas a estrutura abaixo (1 view completa + 1 select que consulta a view definida):
-- CREATE VIEW vdep_tipofunc AS
-- <consulta>;
-- SELECT * FROM vdep_tipofunc;

select cpf, 'funcionario_simples' tipo_funcionario from

(select cpf from funcionario
except
select cpf_gerente from departamento) as funcsimples
union
select cpf, 'supervisor' tipo from
(select cpf_supervisor cpf from funcionario
except
select cpf_gerente cpf from departamento) as funcsupervisor

-- ainda falta terminar...