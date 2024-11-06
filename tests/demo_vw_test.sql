{{ config(store_failures = true) }}
select
    CUSTOMER_ID,
    count(*) as total_count
from {{ ref('demo_vw') }}
group by 1
having total_count < 0