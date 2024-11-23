SELECT
    stock_id
FROM
    {{ ref('stg_production__stocks') }}
WHERE
    quantity < 0