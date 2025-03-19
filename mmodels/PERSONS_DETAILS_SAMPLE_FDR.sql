--select * from {{source("kailash sources","PERSONS_SAMPLE_FDR")}}
select *,
{{(sales_percentage('sales1','sales2'))}} as change,
{{(sales_percentage('sales1','sales3'))}} as change1,
{{(sales_percentage('sales1','cost'))}} as change2
from {{source("kailash sources","PERSONS_SAMPLE_FDR")}}
