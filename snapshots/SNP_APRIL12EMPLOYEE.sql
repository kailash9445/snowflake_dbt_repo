{%snapshot SNP_APRIL12EMPLOYEE %}

{% set new_schema = target.schema +'_KAILASH' %}

{{
    config(
      target_schema= new_schema,
      target_database='DB_KAILASH',
      
      unique_key = 'ENO',
      strategy='check',
      check_cols=['ENAME','JOB']
    )
}}

select c.eno,c.ename,c.job,c.sal from {{ref('kailash')}} c

{% endsnapshot %}
--snapshot will be created only once,...untill u change the code it will not cretae new one