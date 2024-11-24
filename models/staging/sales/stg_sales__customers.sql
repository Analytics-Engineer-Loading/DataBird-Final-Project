SELECT
    CAST(customer_id AS STRING) AS customer_id
    , first_name
    , last_name
    , CASE 
        WHEN phone = 'NULL'
            THEN NULL
        ELSE phone
      END AS phone
    , email
    , street
    , city
    , state
    , CAST(zip_code AS STRING) AS zip_code
FROM
    {{ source('local_bike', 'customers') }}