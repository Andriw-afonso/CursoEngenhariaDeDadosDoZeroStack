select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select valor_pago
from "dev"."public"."vw_sales"
where valor_pago is null



      
    ) dbt_internal_test