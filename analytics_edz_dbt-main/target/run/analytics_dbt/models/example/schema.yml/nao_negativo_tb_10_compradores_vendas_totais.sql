select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    select *
    from "dev"."public"."tb_10_compradores"
    where vendas_totais < 0


      
    ) dbt_internal_test