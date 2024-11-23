SELECT
    CAST(staff_id AS STRING) AS staff_id
    , CAST(store_id AS STRING) as store_id
    , CAST(manager_id AS STRING) AS manager_id
    , first_name
    , last_name
    , email
    , phone
    , CAST(active AS BOOLEAN) AS active
FROM
    {{ source('local_bike', 'staffs') }}