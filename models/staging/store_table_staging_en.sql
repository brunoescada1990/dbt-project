with source_data as (
    Select * from {{ source('DIMENSIONS', 'lojas') }}
),
all_columns as (
    Select
        ID_LOJA AS ID,
        NOME_LOJA AS STORE_NAME,
        CIDADE AS CITY,
        CODIGO_POSTAL AS ZIP_CODE,
        DATA_CRIACAO AS CREATE_AT,
        DATA_UPDATE AS UPDATE_AT        
    FROM source_data
)
select * from all_columns