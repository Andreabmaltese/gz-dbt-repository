with 

source as (

    select * from {{ source('gz_data', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id As products_id,
        revenue,
        quantity

    from source

)

select * from renamed
