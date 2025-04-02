select *
from {{ ref('my_1dbtmodel1') }}
where id = 1