WITH SRC_ORDERHD AS (
    SELECT * FROM {{ source('pos', 'order_header') }}
),

SELECT * FROM SRC_ORDERHD