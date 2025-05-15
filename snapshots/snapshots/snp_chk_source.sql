{%snapshot ads_snapshot_kailashh_chk_source%}--DB_KAILASH.SNAPSHOTSSS.ADS_SNAPSHOT_KAILASHH_CHK_SOURCE
{{






    
    config(
      target_schema='snapshotsss',
      unique_key = 'ENO',
      strategy='check',
      check_cols=['ENAME','JOB']
      
    )
}}
select * 
from {{source("kailash sources","EMPLOYEE")}}--
--from {{ref('kailash')}} 
{% endsnapshot %}

--from DB_KAILASH.SCH_KAILASH.EMPLOYEE
--from DB_KAILASH.DB_KAILASH.kailash 
