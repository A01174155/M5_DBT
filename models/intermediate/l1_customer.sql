WITH stg_customer AS (
    SELECT * {{ ref ('stg_customer') }}
),
rename_cust AS (
    SELECT 
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    CITY,
    COUNTRY,
    POSTAL_CODE,
    PREFERRED_LANGUAGE,
    GENDER,
    FAVORITE_BRAND,
    MARITAL_STATUS
    FROM stg_customer
)

SELECT * 
FROM rename_cust