SELECT
    oi.order_item_id
    , oi.order_id
    , oi.item_id
    , oi.product_id
    , oi.quantity
    , p.list_price
    , oi.discount
    , oi.quantity * p.list_price * (1 - oi.discount) AS total_item_price
FROM
    {{ ref('stg_sales__order_items') }} oi
INNER JOIN
    {{ ref('stg_production__products') }} p
        ON oi.product_id = p.product_id