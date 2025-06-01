{{ dbt_utils.deduplicate(
relation=ref("kailash"),
partition_by ='job',
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
7900	james	clerk	7698	0081-12-03	950		    30
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

relation=ref("kailash"),
partition_by ='job',
order_by ='sal desc',
ENO	ENAME	JOB	MGR	HIREDATE                  	SAL	    COMM  DPNO
7788	scott	analyst	7566	0082-12-09	    3000		    20
7369	smith	clerk	7902	0080-12-17	    2000	 1111	20
7566	jones	manager	7839	0081-04-02	    2975		    20
7839	king	president		0081-11-17	    5000		    10
7499	allen	salesmen	7698	0081-02-20	1600    300	    30
#}
{#
relation=ref("employee"),---not working
relation=ref("kailash"),--- working
relation=ref("mdl_naresh"),--- working
relation= source("kailash sources","EMPLOYEE"),--- working
#}