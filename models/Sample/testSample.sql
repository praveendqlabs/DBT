{{ config(store_failures = true) }}
select
    productid,
    count(TOTAL_AMOUNT_SALES) as total_amount
from {{ ref('CSview') }}
group by 1
having total_amount > 0