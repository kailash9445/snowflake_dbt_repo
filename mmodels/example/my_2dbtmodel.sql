
-- Use the `ref` function to select from other models

select *
from {{ ref('my_1dbtmodel') }}
where id = 1
