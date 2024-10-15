WITH stg_order_header AS (
    SELECT * {{ ref ('stg_order_header') }}
)

SELECT * 
FROM stg_order_header