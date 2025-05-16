
{% macro count_of_emp(item_name) %}

    SUM(CASE WHEN job = '{{item_name}}' THEN 1 ELSE 0 END)

{% endmacro %}

--SUM(CASE WHEN job = 'salesmen' THEN 1 ELSE 0 END)  AS salesmen_COUNT