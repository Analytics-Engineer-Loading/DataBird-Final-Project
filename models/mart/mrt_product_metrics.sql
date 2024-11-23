SELECT
    o.order_id
    , o.placed_date
    , o.shipped_late
    , o.label_status
    , b.name AS brand_name
    , c.name AS category_name
    , p.name AS product_name
    , p.model_year
    , oi.quantity
    , oi.list_price
    , oi.discount
    , oi.total_item_price
FROM
    {{ ref('int_sales__orders') }} o
INNER JOIN
    {{ ref('int_sales__order_items') }} oi
        ON o.order_id = oi.order_id
INNER JOIN
    {{ ref('stg_production__products') }} p
        ON oi.product_id = p.product_id
INNER JOIN
    {{ ref('stg_production__categories') }} c
        ON p.category_id = c.category_id
INNER JOIN
    {{ ref('stg_production__brands') }} b
        ON p.brand_id = b.brand_id