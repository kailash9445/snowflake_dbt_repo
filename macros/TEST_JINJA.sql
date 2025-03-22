--select * from {{source("kailash sources","PERSONS_SAMPLE_FDR")}}

--{% macro  get_columns %}

{% set j = dbt_utils.get_column_values (source("kailash sources","PERSONS_SAMPLE_FDR"),'person') %}



