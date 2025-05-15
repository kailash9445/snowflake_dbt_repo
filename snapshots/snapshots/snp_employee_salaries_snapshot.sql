{% snapshot snp_employee_salaries %}

{% set unique_key_column = 'eno' %}
{% set strategy = 'check' %}
{% set check_columns = ['ename', 'job'] %}

{{ config(
    target_schema='snapshots',
    unique_key=unique_key_column,
    strategy=strategy,
    check_cols=check_columns,
    updated_at='updated_at'
) }}
--TBL_emp_10_20
--VW_emp_10_20
SELECT * 
FROM 
from {{source("kailash sources","EMPLOYEE")}}
--{{ ref('kailash') }} --dbkailash.dbkailash.kailash
{% endsnapshot %}
