SELECT
    CAST(product_id AS STRING) AS product_id
    , CAST(brand_id AS STRING) AS brand_id
    , CAST(category_id AS STRING) AS category_id
    , product_name AS name
    , CAST(model_year AS STRING) AS model_year
    , list_price
FROM
    {{ source('local_bike', 'products') }}