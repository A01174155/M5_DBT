WITH st_order_detail AS (
    SELECT * FROM {{ ref ('stg_order_detail') }}
)

SELECT *,
    MENU_ITEM_ID AS PRODUCT_ID
FROM st_order_detail