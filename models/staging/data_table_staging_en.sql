with source_data as (
    Select * from {{ source('DIMENSIONS', 'datas') }}
),
all_columns as (
    Select
        ID_data AS ID,
        DATA_COMPLETE AS "DATE_COMPLETE",
        ano AS "YEAR",
        mes AS "MONTH",
        dia_semana AS DAY_OF_WEEK,
        feriado as PUBLIC_HOLYDAY
    FROM source_data
)
select * from all_columns