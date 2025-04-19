with cte as (
select hiredate,
case when to_date(hiredate,'yyyy-mm-dd') is not null then 'valid format'
else 'invalid format' end  as date_format_status
from {{ ref('xxxx') }}
where hiredate is not null)
select * 
from cte 
where date_format_status ='invalid format'


tests:
  - dbt_expectations.expect_column_values_to_be_between:
      min_value: 0  # (Optional)
      max_value: 10 # (Optional)
      row_condition: "id is not null" # (Optional)
      strictly: false # (Optional. Default is 'false'. Adds an 'or equal to' to the comparison operator for min/max)
