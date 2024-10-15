WITH stg_order_detail AS (
    SELECT * {{ ref ('stg_menu') }}
)

SELECT * 
FROM stg_order_detail