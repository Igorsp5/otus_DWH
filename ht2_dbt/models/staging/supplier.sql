{{
    config (
        engine='MergeTree()',
        order_by='S_SUPPKEY'
    )
}}

SELECT {{ dbt_utils.star(from=source('dbgen', 'supplier'))}} 
FROM {{ source('dbgen', 'supplier') }}
