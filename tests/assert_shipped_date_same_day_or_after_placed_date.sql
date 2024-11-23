SELECT
    order_id
FROM
    {{ ref('stg_sales__orders') }}
WHERE
    shipped_date < placed_date