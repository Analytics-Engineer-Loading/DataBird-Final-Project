SELECT
    order_id
    , customer_id
    , store_id
    , staff_id
    , code_status
    , CASE
        WHEN code_status = 1
            THEN 'Placed'
        WHEN code_status = 2
            THEN 'In preparation'
        WHEN code_status = 3
            THEN 'Canceled'
        WHEN code_status = 4
            THEN 'Completed'
        ELSE 'Error'
    END AS label_status
    , placed_date
    , required_date
    , shipped_date
    , shipped_date > required_date AS shipped_late
FROM
    {{ ref('stg_sales__orders') }}