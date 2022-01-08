{{
    config (
        engine='MergeTree()',
        order_by='P_PARTKEY'
    )
}}

SELECT {{ dbt_utils.star(from=source('dbgen', 'part'))}}  
FROM {{ source('dbgen', 'part') }}
