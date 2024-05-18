-- Liste os nomes dos funcionários, as horas trabalhadas e o nome dos projetos que os funcionários trabalharam e 
-- são controlado pelo departamento número 5

-- Colunas esperadas: pnome, unome, horas, projnome
-- Ordernação: pnome e projnome crescente

select 
    f.pnome, 
    f.unome,
    t.horas,
    p.projnome

from 
    projeto p

inner join 
    trabalha_em t on p.projnumero = t.pnr
inner join
    funcionario fon f.cpf = t.fcpf

where
    .dnum = 5

order by 
    f.pnome asc,
    p.projnome asc;
