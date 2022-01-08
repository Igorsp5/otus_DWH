

  
    create table db.customer__dbt_tmp
    
  
    
    engine = MergeTree()
    order by (C_CUSTKEY)
    
  as (
    

SELECT  "C_CUSTKEY",
  "C_NAME",
  "C_ADDRESS",
  "C_CITY",
  "C_NATION",
  "C_REGION",
  "C_PHONE",
  "C_MKTSEGMENT"
FROM db.src_customer
  )