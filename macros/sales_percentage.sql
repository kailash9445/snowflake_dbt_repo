{% macro sales_percentage(a,b) %}
    (({{a}}-{{b}})/{{b}})*100
{% endmacro %}