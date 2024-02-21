with simple_client as (
    Select
        ID,
        CLIENT_NAME,
        GENDER 
    from {{ ref('client_table_staging_en') }}
) 
Select * from simple_client