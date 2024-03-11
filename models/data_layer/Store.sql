with store as (
    Select
        *
    from {{ ref('store_table_staging_en') }}
) 
Select * from store