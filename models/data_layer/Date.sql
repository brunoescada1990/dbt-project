with date_table as (
    Select
        *
    from {{ ref('date_table_staging_en') }}
) 
Select * from date_table