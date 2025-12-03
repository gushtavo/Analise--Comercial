-- top 10 produtos vendidos
select
    p.produto
    , SUM(v.quantidade) as qtd_vendidas
    ,p.preco
from vendas v
left join produtos p on v.id_produto = p.id_produto
group by p.produto, p.preco
order by qtd_vendidas desc
limit 10;

-- total faturamento por regiao
select
    e.regiao
    , SUM(v.valor_total) as total_faturamento
from vendas v
left join estados e
on e.idEstado = v.idEstado
group by e.regiao
order by total_faturamento desc;

-- Valor vendido por mês agrupado por vendedores
select
    v.nome
    , sum(vd.valor_total) as valorMes
    , year(vd.data_venda) AS ano
    , month(vd.data_venda) as mes
from vendedores v
left join vendas vd
on v.id_vendedor = vd.id_vendedor
group by v.nome, mes, ano
order by ano, mes;

-- Valor total vendido por vendedores
SELECT
    v.nome
    ,SUM(vd.valor_total) as total_vendido
FROM vendedores v
left join vendas vd
on v.id_vendedor = vd.id_vendedor
GROUP BY v.nome
ORDER BY total_vendido desc;

-- comparando faturamento mensal com a meta mensal
select
    v.nome
    , sum(vd.valor_total) as faturamento
    , year(vd.data_venda) AS ano
    , month(vd.data_venda) as mes
    , m.meta_mensal
from vendedores v
left join vendas vd
    on v.id_vendedor = vd.id_vendedor
left join metas m
    on m.id_vendedor = v.id_vendedor
    AND MONTH(vd.data_venda) = ELT(
            FIELD(LOWER(LEFT(m.mes, 3)), 
                'jan','fev','mar','abr','mai','jun','jul','ago','set','out','nov','dez'),
            1,2,3,4,5,6,7,8,9,10,11,12
        )
    AND YEAR(vd.data_venda) = RIGHT(m.mes, 4)
group by 
    v.nome
    , year(vd.data_venda)
    , month(vd.data_venda)
    , m.meta_mensal
order by 
    ano, mes;
    
-- Top 10 Faturamento por produto
SELECT
    p.produto
    , SUM(vd.valor_total) as faturamento
    , sum(vd.quantidade) as qtdvendidas
    ,p.preco as preco_unitario
FROM produtos p
LEFT JOIN vendas vd
on p.id_produto = vd.id_produto
group by p.produto, p.preco
order by faturamento desc
limit 10;