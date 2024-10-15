WITH stg_order_detail AS (
    SELECT * {{ ref ('stg_menu') }}
),
ajust_order_detail AS (
    SELECT 
    ORDER_DETAIL_ID,
    UNIT_PRICE,
    QUANTITY,
    MENU_ITEM_ID
    FROM stg_order_detail
)

SELECT * 
FROM ajust_order_detail