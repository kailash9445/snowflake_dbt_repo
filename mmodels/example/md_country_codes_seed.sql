{{ config(materialized='table') }}

with source_t_sample as (
    select *  from {{ ref('country_codes') }}
),

final as (
    select * from source_t_sample
)

select * from final


-- created with 1 column
-- This refers to the table created from seeds/country_codes.csv
--select * from {{ ref('country_codes') }}
