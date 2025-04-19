{{ config(
    materialized='table') }}

select eno,ename,job, 
max(sal) as max_sal,
avg(sal) as avg_sal,
count(dpno) count

from {{ ref ('kailash') }} 
{{ dbt_utils.group_by(n=3) }}
--compile out put
--select eno,ename,job, max(sal), avg(sal),count(dpno)
--from DB_KAILASH.DB_KAILASH.kailash 
--group by 1,2,3
