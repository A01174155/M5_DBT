WITH SRC_CUST AS (
    SELECT * FROM {{ source('customer', 'customer_loyalty') }}
)

SELECT * FROM SRC_CUST