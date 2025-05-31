{{ dbt_utils.deduplicate(
relation=ref("kailash"),
partition_by ='dpno',
order_by ='sal desc',
)
}} 
{#output
relation= source("kailash sources","EMPLOYEE"),
partition_by ='dpno',
order_by ='sal',
ENO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DPNO
7934	miller	clerk	7782	0082-01-23	1300		10
7876	adams	clerk	7788	0003-01-12	1100		20
7900	james	clerk	7698	0081-12-03	950		30
relation= source("kailash sources","EMPLOYEE"),
partition_by ='dpno',
order_by ='sal desc',
ENO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DPNO
7839	king	president		0081-11-17	5000		10
7788	scott	analyst	7566	0082-12-09	3000		20
7698	blake	manager	7839	0081-05-01	2850		30

relation=ref("kailash"),
partition_by ='dpno',
order_by ='sal desc',
ENO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DPNO
7839	king	president		0081-11-17	5000		10
7788	scott	analyst	7566	0082-12-09	3000		20
7698	blake	manager	7839	0081-05-01	2850		30

#}
{#
relation=ref("employee"),---not working
relation=ref("kailash"),--- working
relation=ref("mdl_naresh"),--- working
relation= source("kailash sources","EMPLOYEE"),--- working
#}