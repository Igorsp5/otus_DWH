

  
    create table db.q2_1__dbt_tmp
    
  
    
    engine = MergeTree()
    
    order by (tuple())
    
  as (
    SELECT
    sum(LO_REVENUE) AS sum_LO_REVENUE,
    toYear(LO_ORDERDATE) AS year,
    P_BRAND
FROM db.lineorder_flat
WHERE P_CATEGORY = 'MFGR#12' AND S_REGION = 'AMERICA'
GROUP BY
    year,
    P_BRAND
ORDER BY
    year,
    P_BRAND
  )