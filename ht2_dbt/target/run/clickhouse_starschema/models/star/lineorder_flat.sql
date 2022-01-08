

  
    create table db.lineorder_flat__dbt_tmp
    
  
    
    engine = MergeTree()
    order by (LO_ORDERDATE,LO_ORDERKEY)
    partition by (toYear(LO_ORDERDATE))
  as (
    

SELECT
    "LO_ORDERKEY",
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
  "LO_SHIPMODE",
    "C_CUSTKEY",
  "C_NAME",
  "C_ADDRESS",
  "C_CITY",
  "C_NATION",
  "C_REGION",
  "C_PHONE",
  "C_MKTSEGMENT",
    "S_SUPPKEY",
  "S_NAME",
  "S_ADDRESS",
  "S_CITY",
  "S_NATION",
  "S_REGION",
  "S_PHONE",
    "P_PARTKEY",
  "P_NAME",
  "P_MFGR",
  "P_CATEGORY",
  "P_BRAND",
  "P_COLOR",
  "P_TYPE",
  "P_SIZE",
  "P_CONTAINER"
FROM db.lineorder AS l
INNER JOIN db.customer AS c ON c.C_CUSTKEY = l.LO_CUSTKEY
INNER JOIN db.supplier AS s ON s.S_SUPPKEY = l.LO_SUPPKEY
INNER JOIN db.part AS p ON p.P_PARTKEY = l.LO_PARTKEY
  )