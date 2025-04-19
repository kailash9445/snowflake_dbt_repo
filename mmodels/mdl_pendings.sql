{{ config(
    materialized='incremental') }}         
select eno,ename

from {{source("kailash sources","EMPLOYEE")}}

/*--select * from {{source("kailash sources","EMPLOYEE")}}

--{% if adapter.already_exists(this.schema, this.name) %}
--where id > (select max(id) from {{this}})
--{% endif %}



*/

