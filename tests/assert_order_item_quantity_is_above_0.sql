SELECT
    order_item_id
FROM
    {{ ref('stg_sales__order_items') }}
WHERE
    quantity <= 0