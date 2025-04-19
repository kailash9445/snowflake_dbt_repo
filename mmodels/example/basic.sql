{# jinja code to print numbers from 0-9 
 --i am jinja code ----dbt compile  --dbt run --no-version-check
#}
{% set max_no=10 %}
{% for i in range(max_no) %}
select {{i}} as number
{%  if not loop.last %}
union
{% endif %}
{% endfor %}
