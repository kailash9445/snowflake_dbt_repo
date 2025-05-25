{% macro get_value_of_pii() %}

CREATE OR REPLACE FUNCTION {{target.database}}.{{target.schema}}.get_value_of_pii() RETURNS FLOAT64 AS (3.14159265358973);
	
{% endmacro %}