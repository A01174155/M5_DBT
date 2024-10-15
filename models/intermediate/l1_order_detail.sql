WITH st_order_detail AS (
    SELECT * FROM {{ ref ('stg_menu') }}
)

SELECT * 
FROM st_order_detail