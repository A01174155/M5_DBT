WITH SRC_ORDERDL AS (
    SELECT * FROM {{ source('pos', 'order_detail') }}
)

SELECT 
    ORDER_DETAIL_ID,
    ORDER_ID,
    MENU_ITEM_ID,
    DISCOUNT_ID,
    LINE_NUMBER,
    QUANTITY,
    UNIT_PRICE,
    PRICE,
    ORDER_ITEM_DISCOUNT_AMOUNT
 FROM SRC_ORDERDL