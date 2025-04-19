

select
	cast(eno as string) as emp_no,
	--order_id, this row is commented out
    cast(ename as string) as emp_name,
	hiredate
from {{ ref ('kailash') }} 
