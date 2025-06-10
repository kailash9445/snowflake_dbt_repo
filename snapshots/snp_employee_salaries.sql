{% snapshot snp_employee_salaries_snapshot %}
{% set unique_key = 'eno' %}
{% set strategy = 'check' %}
{% set check_cols = ['ename', 'job'] %}
{{ config(
    target_schema='snapshots',
    unique_key=unique_key,
    strategy=strategy,
    check_cols=check_cols
    updated_at='hiredate',
) }}
--TBL_emp_10_20
--VW_emp_10_20
SELECT * 

from {{source("kailash sources","EMPLOYEE")}}
--{{ ref('kailash') }} 
--dbkailash.dbkailash.kailash
{% endsnapshot %}
