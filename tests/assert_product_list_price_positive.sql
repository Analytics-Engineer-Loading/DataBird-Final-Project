SELECT
    product_id
FROM
    {{ ref('stg_production__products') }}
WHERE
    list_price < 0