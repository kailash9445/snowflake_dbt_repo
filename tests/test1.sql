{#
tests:
  - dbt_expectations.expect_column_values_to_be_between:
      min_value: 0  # (Optional)
      max_value: 10 # (Optional)
      row_condition: "id is not null" # (Optional)
      strictly: false # (Optional. Default is 'false'. Adds an 'or equal to' to the comparison operator for min/max)


{{ dbt_utils.union_relations([
        ref('data_union_table_1'),
        ref('data_union_table_2')]
) }}
########
{% for col_name in column_list %}
        select cast('{{ col_name }}' as {{ type_string() }}) as input_column
        {% if not loop.last %}union all{% endif %}
        {% endfor %}
#########

{% for col_name in relation_column_names %}
        select cast('{{ col_name }}' as {{ type_string() }}) as relation_column
        {% if not loop.last %}union all{% endif %}
        {% endfor %}
######
{%- for itm in column_list -%}
        {%- if itm in relation_column_names -%}
            {%- do matching_columns.append(itm) -%}
        {%- endif -%}
    {%- endfor -%}
######
integration_tests:
  target: postgres
  outputs:
    postgres:
      type: "postgres"
      host: "{{ env_var('POSTGRES_HOST') }}"
      user: "{{ env_var('POSTGRES_USER') }}"
      pass: "{{ env_var('DBT_ENV_SECRET_POSTGRES_PASS') }}"
      port: "{{ env_var('POSTGRES_PORT') | as_number }}"
      dbname: "{{ env_var('POSTGRES_DATABASE') }}"
      schema: "{{ env_var('POSTGRES_SCHEMA') }}"
      threads: 5

    redshift:
      type: "redshift"
      host: "{{ env_var('REDSHIFT_HOST') }}"
      user: "{{ env_var('REDSHIFT_USER') }}"
      pass: "{{ env_var('DBT_ENV_SECRET_REDSHIFT_PASS') }}"
      dbname: "{{ env_var('REDSHIFT_DATABASE') }}"
      port: "{{ env_var('REDSHIFT_PORT') | as_number }}"
      schema: "{{ env_var('REDSHIFT_SCHEMA') }}"
      threads: 5

    bigquery:
      type: "bigquery"
      method: "service-account-json"
      project: "{{ env_var('BIGQUERY_PROJECT') }}"
      dataset: "{{ env_var('BIGQUERY_SCHEMA') }}"
      threads: 10
      keyfile_json:
        "{{ env_var('BIGQUERY_KEYFILE_JSON') | as_native }}"
      job_retries: 3

    snowflake:
      type: "snowflake"
      account: "{{ env_var('SNOWFLAKE_ACCOUNT') }}"
      user: "{{ env_var('SNOWFLAKE_USER') }}"
      password: "{{ env_var('DBT_ENV_SECRET_SNOWFLAKE_PASS') }}"
      role: "{{ env_var('SNOWFLAKE_ROLE') }}"
      database: "{{ env_var('SNOWFLAKE_DATABASE') }}"
      warehouse: "{{ env_var('SNOWFLAKE_WAREHOUSE') }}"
      schema: "{{ env_var('SNOWFLAKE_SCHEMA') }}"
      threads: 10
      
#}