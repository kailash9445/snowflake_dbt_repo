{{ dbt_utils.deduplicate(
relation= source("kailash sources","EMPLOYEE"),
partition_by ='dpno',
order_by ='sal desc',
)
}} 
