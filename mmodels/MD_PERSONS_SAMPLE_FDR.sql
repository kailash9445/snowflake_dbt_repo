--select * from {{source("kailash sources","PERSONS_SAMPLE_FDR")}}
select *,
{{(sales_percentage1('sales1','sales2'))}} as change,
{{(sales_percentage1('sales1','sales3'))}} as change1,
{{(sales_percentage1('sales1','cost'))}} as change2
from {{source("kailash sources","PERSONS_SAMPLE_FDR")}}

