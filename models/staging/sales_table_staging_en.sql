with source_data as (
    Select * from {{ source('FACTS', 'Vendas') }}
),
all_columns as (
    Select
        ID_REGISTO AS ID,
        ID_VENDA AS SALE,
        ID_DATA AS DATE_SALE,
        ID_PRODUTO AS PRODUCT,
        ID_CLIENTE AS CLIENT,
        ID_LOJA AS STORE,
        QUANTIDADE AS QUANTITY,
        VALOR_VENDA AS VALUE_SALE,
        ESTADO_VENDA AS STATUS_SALE
    FROM source_data
)
select * from all_columns