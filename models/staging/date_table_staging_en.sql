with source_date as (
    Select * from {{ source('DIMENSIONS', 'datas') }}
),
all_columns as (
    Select
        ID_data AS ID,
        DATA_COMPLETA AS "DATE_COMPLETE",
        ano AS "YEAR",
        mes AS "MONTH",
        dia_semana AS DAY_OF_WEEK,
        feriado as PUBLIC_HOLYDAY
    FROM source_date
)
select * from all_columns