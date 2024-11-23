SELECT
    order_id
FROM
    {{ ref('stg_sales__orders') }}
WHERE
    required_date < placed_date