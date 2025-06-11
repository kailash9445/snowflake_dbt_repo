{%snapshot ads_snapshot_kailashh_chk_ref%}--DB_KAILASH.SNAPSHOTSSS.ADS_SNAPSHOT_KAILASHH_CHK_REF
{{
    config(
      target_schema='snapshotsss',
      unique_key = 'ENO',
      strategy='check',
      check_cols=['ENAME','JOB']
      
    )
}}
select * from {{ref('kailash')}} --DB_KAILASH.SCH_KAILASH.kailash 
{% endsnapshot %}

-- ,line 4 target_schema='snapshotsss',--it will cretae  new schema 
--7369	smith	clerk	7902	0080-12-17	2000	1111	20  --extra coulmns below
--dbt_scd_id,                       dbt_updated_at,                dbt_valid_from,            dbt_valid_to
--479fad441a115de1c7c14f394cbf1d11	2025-06-09 16:08:49.956	       2025-06-09 16:08:49.956	  null
--snapshot will be created only once,...untill u change the code it will not cretae new one
--it will create  new schema