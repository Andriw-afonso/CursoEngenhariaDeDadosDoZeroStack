select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select comissao
from "dev"."public"."vw_sales"
where comissao is null



      
    ) dbt_internal_test