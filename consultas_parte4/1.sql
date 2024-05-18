-- Qual o maior salário, o menor salário e a média de salários na relação funcionário por supervisor?

-- Colunas esperadas: cpf_supervisor, menor_salario, maior_salario, media_salarios
-- Observação: utilize a função round(atributo, numero_casas_decimais) para arredondar para duas casas decimais.

select
    f_supervisor.cpf as cpf_supervisor,
    round(MIN(f_funcionario.salario), 2) as menor_salario,
    round(MAX(f_funcionario.salario), 2) as maior_salario,
    round(AVG(f_funcionario.salario), 2) as media_salarios
from
    funcionario f_funcionario
left join
    funcionario f_supervisor on f_funcionario.cpf_supervisor = f_supervisor.cpf
group by
    f_supervisor.cpf;