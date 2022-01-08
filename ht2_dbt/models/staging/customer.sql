{{
    config (
        engine='MergeTree()',
        order_by='C_CUSTKEY'
    )
}}

SELECT  {{ dbt_utils.star(from=source('dbgen','customer'))}}
FROM {{ source('dbgen', 'customer') }}
