
with raw as (
    select ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DPNO from {{ref('kailash')}}
),
cleaned as (
    select
        ENO as customer_id,
        ENAME as customer_name,
        JOB,
        MGR,
        {{ dbt_utils.generate_surrogate_key(['ENO','ENAME','JOB']) }}  record_hash
    from raw
)
select * from cleaned
--coalesce(cast(" ~ field ~ " as " ~ dbt.type_string() ~ "), '_dbt_utils_surrogate_key_null_')
{#
--ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DPNO
--  {{ dbt_utils.surrogate_key(['customer_name', 'email', 'address']) }} 
-- {{ dbt_utils.generate_surrogate_key(['date','user_id','type']) }}   
-- select ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DPNO from {{source('kailash sources','employee')}}
#}
