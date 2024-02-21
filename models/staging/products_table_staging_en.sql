with source_data as (
    Select * from {{ source('DIMENSIONS', 'Produtos') }}
),
all_columns as (
    Select
        ID_PRODUTO AS ID,
        NOME_PRODUTO AS NAME_PRODUCT,
        CATEGORIA AS CATEGORY,
        MARCA AS BRAND,
        PRECO AS PRICE
    FROM source_data
)
select * from all_columns