{%snapshot SNP_APRIL12EMPLOYEE %}

{% set new_schema = target.schema +'snapshot_KAILASH' %}

{{
    config(
      target_schema= new_schema,
      target_database='DB_KAILASH',
      unique_key = 'ENO',
      strategy='check',
      check_cols=['ENAME','JOB']
    )
}}

select * from {{ref('kailash')}} 

{% endsnapshot %}
