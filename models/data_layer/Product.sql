with product as (
    Select
        *
    from {{ ref('products_table_staging_en') }}
) 
Select * from product