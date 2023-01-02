

  create  table
    "dev"."public"."tb_vendas_primeiro_trimestre__dbt_tmp"
    
    
    
  as (
    -- define o as variáveis meses e ano



-- cria a fonte com os dados de date e converte o  nome das colunas
with source_date as (
    select  dateid as id_date,
            month as mes,
            year as ano
    from date

),
-- cria uma fonte de dados unindo a tabela sales com date
sales_date as (

    select  source_date.mes, 
            sum(quantidade_vendida)
    from  "dev"."public"."vw_sales" sales inner join source_date
    on sales.id_date = source_date.id_date
    where source_date.mes in ('JAN', 'FEB', 'MAR')
    and source_date.ano = '2008'
    group by source_date.mes
)
select * from sales_date
  );