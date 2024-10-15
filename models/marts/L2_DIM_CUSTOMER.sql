dim_customer AS (
    SELECT 
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    FULL_NAME,
    COUNTRY,
    CITY,
    GENDER,
    EMAIL
FROM {{ ref('l1_customer') }}
)