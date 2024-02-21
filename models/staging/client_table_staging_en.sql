with source_client as (
    Select * from {{ source('cliente_table', 'clientes') }}
),
all_columns as (
    Select
        ID_CLIENTE AS ID,
        NOME_CLIENTE AS CLIENT_NAME,
        IDADE AS AGE,
        GENERO AS GENDER,
        CIDADE AS CITY,
        CODIGO_POSTAL AS ZIP_CODE,
    FROM source_client
)
select * from all_columns