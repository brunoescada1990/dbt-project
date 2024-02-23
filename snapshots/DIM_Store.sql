{% snapshot DIM_Store %}

{{
    config(
      target_database='BD_STORE_TEST_DBT',
      target_schema='DBT_SNAPSHOT',
      unique_key='ID',
      strategy='check',
      check_cols=['STORE_NAME','CITY', 'ZIP_CODE']
    )
}}

SELECT 
      ID,
      STORE_NAME,
      CITY,
      ZIP_CODE 
FROM {{ ref('Store') }}

{% endsnapshot %}