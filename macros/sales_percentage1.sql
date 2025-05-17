{% macro sales_percentage1(a,b) %}
    (({{a}}-{{b}})/{{b}})*100
{% endmacro %}

