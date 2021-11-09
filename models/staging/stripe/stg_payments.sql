with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method, --added
        status,
        amount / 100 as amount, -- amount is stored in cents, convert it to dollars
        created as created_at --added

    from raw.stripe.payment

)

select * from payments