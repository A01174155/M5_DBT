WITH SRC_ORDERDL AS (
    SELECT * FROM {{ source('pos', 'order_detail') }}
),

SELECT * FROM SRC_ORDERDL