{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{source("kailash sources","USER")}}

--hi