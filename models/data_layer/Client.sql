with client as (
    Select
        *
    from {{ ref('client_table_staging_en') }}
) 
Select * from client