

  
    create table db.lineorder__dbt_tmp
    
  
    
    engine = MergeTree()
    order by (LO_ORDERDATE,LO_ORDERKEY)
    partition by (toYear(LO_ORDERDATE))
  as (
    

SELECT "LO_ORDERKEY",
  "LO_LINENUMBER",
  "LO_CUSTKEY",
  "LO_PARTKEY",
  "LO_SUPPKEY",
  "LO_ORDERDATE",
  "LO_ORDERPRIORITY",
  "LO_SHIPPRIORITY",
  "LO_QUANTITY",
  "LO_EXTENDEDPRICE",
  "LO_ORDTOTALPRICE",
  "LO_DISCOUNT",
  "LO_REVENUE",
  "LO_SUPPLYCOST",
  "LO_TAX",
  "LO_COMMITDATE",
  "LO_SHIPMODE"
FROM db.src_lineorder
  )