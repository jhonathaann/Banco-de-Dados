-- Qual o maior salário, o menor salário e a média de salários na relação funcionário por supervisor, 
-- para médias salariais superiores a 30000?

-- Colunas esperadas: cpf_supervisor, menor_salario, maior_salario, media_salarios

select
    f_supervisor.cpf as cpf_supervisor,
    round(min(f_funcionario.salario), 1) as menor_salario,
    round(max(f_funcionario.salario), 1) as maior_salario,
    round(avg(f_funcionario.salario), 1) as media_salario
    
from
    funcionario f_funcionario
left join
    funcionario f_supervisor on f_funcionario.cpf_supervisor = f_supervisor.cpf
    
group by
    f_supervisor.cpf
having
    avg(f_funcionario.salario) > 30000;