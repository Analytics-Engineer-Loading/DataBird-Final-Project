SELECT
    CONCAT(order_id, "_", product_id) AS order_item_id
    , CAST(order_id AS STRING) AS order_id
    , CAST(item_id AS STRING) AS item_id
    , CAST(product_id AS STRING) AS product_id
    , quantity
    , COALESCE(discount, 0) AS discount
FROM
    {{ source('local_bike', 'order_items') }}