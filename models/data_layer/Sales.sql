with Sales as (
    Select
        *
    from {{ ref('sales_table_staging_en') }}
) 
Select * from Sales