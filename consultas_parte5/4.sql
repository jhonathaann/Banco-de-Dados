-- Recupere o segundo maior salario dos funcionários

-- Colunas esperadas: segundo_maior_salario

select 
    max(salario) as segundo_maior
    from
        funcionario
        where salario not in(
            select
                max(salario)
            from funcionario;
        )