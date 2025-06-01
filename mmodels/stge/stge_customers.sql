with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('kailash') }}

),

renamed as (

    select
        eno as customer_id,
        ename,
        sal

    from source

)

select * from renamed
{#to know about with clause ...Sworking#}
