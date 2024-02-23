{% snapshot snapshot_store %}

{{
    config(
      target_database='BD_STORE_TEST_DBT',
      target_schema='DBT_BRUNOESCADA',
      unique_key='ID',
      strategy='timestamp',
      updated_at='UPDATE_AT',
    )
}}

select * from {{ ref('Store') }}

{% endsnapshot %}