

  
    create table db.supplier__dbt_tmp
    
  
    
    engine = MergeTree()
    order by (S_SUPPKEY)
    
  as (
    

SELECT "S_SUPPKEY",
  "S_NAME",
  "S_ADDRESS",
  "S_CITY",
  "S_NATION",
  "S_REGION",
  "S_PHONE" 
FROM db.src_supplier
  )