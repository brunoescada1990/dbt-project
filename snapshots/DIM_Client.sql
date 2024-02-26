{% snapshot DIM_Client %}

{{
    config(
      target_database='BD_STORE_TEST_DBT',
      target_schema='DBT_SNAPSHOT',
      unique_key='ID',
      strategy='timestamp',
      updated_at='UPDATED_AT'
    )
}}
SELECT
    ID,
    CLIENT_NAME,
    AGE,
    GENDER,
    CITY,
    ZIP_CODE,
    CREATED_AT,
    UPDATED_AT
FROM {{ ref('Client_test_error_alert') }}
{% endsnapshot %}