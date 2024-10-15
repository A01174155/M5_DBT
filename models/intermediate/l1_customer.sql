WITH stg_customer AS (
    SELECT * {{ ref ('stg_customer') }}
),
ajust_cust AS (
    SELECT 
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    CITY,
    COUNTRY,
    GENDER,
    LOWER (E_MAIL) AS EMAIL
    FROM stg_customer
)

SELECT * 
FROM ajust_cust