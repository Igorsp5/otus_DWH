{% macro init_s3_sources() -%}

    {% set sql %}
        DROP TABLE IF EXISTS db.src_customer;
        CREATE TABLE db.src_customer 
        (
                C_CUSTKEY       UInt32,
                C_NAME          String,
                C_ADDRESS       String,
                C_CITY          LowCardinality(String),
                C_NATION        LowCardinality(String),
                C_REGION        LowCardinality(String),
                C_PHONE         String,
                C_MKTSEGMENT    LowCardinality(String)
        )
        ENGINE = S3('https://storage.yandexcloud.net/otus-dwh/dbgen/customer.tbl', 'CSV')
        ;

        DROP TABLE IF EXISTS db.src_lineorder;
        CREATE TABLE db.src_lineorder
        (
            LO_ORDERKEY             UInt32,
            LO_LINENUMBER           UInt8,
            LO_CUSTKEY              UInt32,
            LO_PARTKEY              UInt32,
            LO_SUPPKEY              UInt32,
            LO_ORDERDATE            Date,
            LO_ORDERPRIORITY        LowCardinality(String),
            LO_SHIPPRIORITY         UInt8,
            LO_QUANTITY             UInt8,
            LO_EXTENDEDPRICE        UInt32,
            LO_ORDTOTALPRICE        UInt32,
            LO_DISCOUNT             UInt8,
            LO_REVENUE              UInt32,
            LO_SUPPLYCOST           UInt32,
            LO_TAX                  UInt8,
            LO_COMMITDATE           Date,
            LO_SHIPMODE             LowCardinality(String)
        )
        ENGINE = S3('https://storage.yandexcloud.net/otus-dwh/dbgen/lineorder.tbl', 'CSV')
        ;

        DROP TABLE IF EXISTS db.src_part;
        CREATE TABLE db.src_part 
        (
                P_PARTKEY       UInt32,
                P_NAME          String,
                P_MFGR          LowCardinality(String),
                P_CATEGORY      LowCardinality(String),
                P_BRAND         LowCardinality(String),
                P_COLOR         LowCardinality(String),
                P_TYPE          LowCardinality(String),
                P_SIZE          UInt8,
                P_CONTAINER     LowCardinality(String)
        )
        ENGINE = S3('https://storage.yandexcloud.net/otus-dwh/dbgen/part.tbl', 'CSV')
        ;

        DROP TABLE IF EXISTS db.src_supplier;
        CREATE TABLE db.src_supplier
        (
                S_SUPPKEY       UInt32,
                S_NAME          String,
                S_ADDRESS       String,
                S_CITY          LowCardinality(String),
                S_NATION        LowCardinality(String),
                S_REGION        LowCardinality(String),
                S_PHONE         String
        )
        ENGINE = S3('https://storage.yandexcloud.net/otus-dwh/dbgen/supplier.tbl', 'CSV')
        ;

    {% endset %}

    {% for query in sql.split(';') if query.strip() %}
        {% do run_query(query) %}
    {% endfor %}


{%- endmacro %}