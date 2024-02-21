with source_data as (
    Select * from {{ source('DIMENSIONS', 'lojas') }}
),
all_columns as (
    Select
        ID_LOJA AS ID,
        NOME_LOJA AS STORE_NAME,
        CIDADE AS CITY,
        CODIGO_POSTAL AS ZIP_CODE
    FROM source_data
)
select * from all_columns