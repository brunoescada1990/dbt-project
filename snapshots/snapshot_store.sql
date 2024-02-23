{% snapshot snapshot_store %}

{{
    config(
      target_database='SNAPSHOT',
      target_schema='public',
      unique_key='ID',
      strategy='timestamp',
      updated_at='UPDATE_AT',
    )
}}

select * from {{ ref('Store') }}

{% endsnapshot %}