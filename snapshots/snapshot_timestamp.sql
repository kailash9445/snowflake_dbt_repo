{% snapshot snp_timestamp %}

    {{
        config(
          target_schema='snapshots',
          strategy='timestamp',
          unique_key='eno',
          updated_at='hiredate',
          invalidate_hard_deletes=True,
        )
    }}

    select * from {{source("kailash sources","EMPLOYEE")}}--DB_KAILASH.SCH_KAILASH.EMPLOYEE
    --user
--need to check above snapshot config .....but source is fine
{% endsnapshot %}
--mdf(uniquekey,updated_at)
--select * from DB_KAILASH.SCH_KAILASH.EMPLOYEE
--user
--need to check above snapshot config ..but source is fine
