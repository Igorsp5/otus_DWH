{{
    config (
        engine='MergeTree()',
        order_by=['LO_ORDERDATE', 'LO_ORDERKEY'],
        partition_by='toYear(LO_ORDERDATE)'
    )
}}

SELECT {{ dbt_utils.star(from=source('dbgen', 'lineorder'))}}
FROM {{ source('dbgen', 'lineorder') }}
