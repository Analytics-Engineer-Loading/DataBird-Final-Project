SELECT
    CAST(order_id AS STRING) AS order_id
    , CAST(customer_id AS STRING) AS customer_id
    , CAST(store_id AS STRING) AS store_id
    , CAST(staff_id AS STRING) AS staff_id
    , order_status AS status
    , order_date AS placed_date
    , required_date
    , CAST(
        CASE
            WHEN shipped_date = 'NULL'
                THEN NULL
            ELSE shipped_date
            END
        AS DATE) AS shipped_date
FROM
    {{ source('local_bike', 'orders') }}