select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    select *
    from "dev"."public"."vw_sales"
    where comissao < 0


      
    ) dbt_internal_test