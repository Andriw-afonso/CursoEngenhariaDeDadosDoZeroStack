select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select vendas_totais
from "dev"."public"."tb_10_compradores"
where vendas_totais is null



      
    ) dbt_internal_test