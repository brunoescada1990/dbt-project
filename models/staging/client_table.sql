with source_client as (
    Select * from {{source('cliente_table')}}
)