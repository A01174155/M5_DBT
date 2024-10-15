WITH st_order_header AS (
    SELECT * FROM {{ ref ('stg_order_header') }}
)

SELECT * 
FROM st_order_header