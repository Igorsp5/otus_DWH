

  
    create table db.part__dbt_tmp
    
  
    
    engine = MergeTree()
    order by (P_PARTKEY)
    
  as (
    

SELECT "P_PARTKEY",
  "P_NAME",
  "P_MFGR",
  "P_CATEGORY",
  "P_BRAND",
  "P_COLOR",
  "P_TYPE",
  "P_SIZE",
  "P_CONTAINER"  
FROM db.src_part
  )