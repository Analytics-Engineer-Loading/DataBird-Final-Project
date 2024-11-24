SELECT
    customer_id
FROM
    {{ ref('stg_sales__customers') }}
WHERE
    NOT REGEXP_CONTAINS(email, r'[^ ]*@[^ ]*\.com')