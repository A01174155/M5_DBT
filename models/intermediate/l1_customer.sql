WITH stg_customer AS (
    SELECT * FROM {{ ref ('stg_customer') }}
),

ajust_cust AS (
    SELECT *,
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    LOWER (E_MAIL) AS EMAIL
    FROM stg_customer
)

SELECT * 
FROM ajust_cust