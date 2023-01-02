

  create view "dev"."public"."tb_10_compradores__dbt_tmp" as (
    with sales as (

    select * from "dev"."public"."vw_sales"

)

compradores as (

    SELECT
        (firstname ||' '|| lastname) as Nome_Completo,
        userid
    FROM users
)

top_10_compradores as (

    SELECT
        compradores.Nome_Completo as Nome_Completo,
        sum(sales.quantidade_vendida) as Vendas_totais,
        sales.comisão as Comissão
    FROM sales INNER JOIN compradores
    ON sales.id_comprador = compradores.userid
    GROUP BY compradores.userid
    ORDER BY Vendas_totais DESC
    LIMIT 10

)

select * from top_10_compradores
  ) ;
