with sales as (

    select * from {{ ref('vw_sales') }}

),
compradores as (

    SELECT
        (firstname ||' '|| lastname) as Nome_Completo, userid
    FROM users
),

top_10_compradores as (

    SELECT
        compradores.Nome_Completo as Nome_Completo,
        sum(sales.quantidade_vendida) as Vendas_totais,
        sales.comissao as Comissao
    FROM sales INNER JOIN compradores
    ON sales.id_comprador = compradores.userid
    GROUP BY compradores.userid, compradores.Nome_Completo, sales.comissao
    ORDER BY Vendas_totais DESC
    LIMIT 10

)

select * from top_10_compradores