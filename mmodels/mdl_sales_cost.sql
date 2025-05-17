
select e.*,
{{(sales_percentage1('PRODUCT_A_SALES','PRODUCT_B_SALES'))}} as change0,
{{(sales_percentage1('e.PRODUCT_A_SALES','e.PRODUCT_c_SALES'))}} as change1

from {{source("kailash sources","sales_and_costs")}} e

{#
--sales_and_costs.csv
--PRODUCT_A_SALES
--{{(sales_percentage1('PRODUCT_A_SALES','cost'))}} as change2
--select * from {{source("kailash sources","sales_and_costs")}}
#}
