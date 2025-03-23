
{%- set j = dbt_utils.get_column_values (source("kailash sources","PAY_MODES"),'payment_mode') -%}
select
{%- for i in j %}
sum(case when payment_mode =  '{{i}}'  then sales end) as {{i}}_SALES,
{%- endfor -%}
from {{source("kailash sources","PAY_MODES")}}

