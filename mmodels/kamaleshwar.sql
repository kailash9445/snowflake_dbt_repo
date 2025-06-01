{# duplicates sql query group by,having clauses....#}

select DPNO,count(*)

from {{ref('kailash')}} 

--GROUP BY dpno
{{ dbt_utils.group_by(n=1) }}
--group by 2  means group by second column
--group by 1
having count(*)>=5

--earlier 3 records...10,20,30...after adding having clause 2 records.
--ENO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DPNO

{# output
20     5
30     6
#}