SELECT
    CAST(store_id AS STRING) AS store_id
    , store_name AS name
    , phone
    , email
    , street
    , city
    , state
    , CAST(zip_code AS STRING) AS zip_code
FROM
    {{ source('local_bike', 'stores') }}