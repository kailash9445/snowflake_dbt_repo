{%snapshot ads_snapshot_kailashh_chk_ref%}--DB_KAILASH.SNAPSHOTSSS.ADS_SNAPSHOT_KAILASHH_CHK_REF
{{



    
    config(
      target_schema='snapshotsss',
      unique_key = 'ENO',
      strategy='check',
      check_cols=['ENAME','JOB']
      
    )
}}
select * from {{ref('kailash')}} --DB_KAILASH.DB_KAILASH.kailash 
{% endsnapshot %}
