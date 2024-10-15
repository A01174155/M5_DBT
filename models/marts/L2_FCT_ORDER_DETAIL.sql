WITH order_header AS (
    SELECT  
        ORDER_ID,
        TRUCK_ID,
        CUSTOMER_ID
    FROM {{ ref('l1_order_header') }}
),

dim_orderdt AS (
    SELECT 
    ORDER_DETAIL_ID,
    UNIT_PRICE,
    QUANTITY,
    PRODUCT_ID,
    ORDER_ID
FROM {{ ref('l1_order_detail') }}
)

SELECT
    oh.TRUCK_ID,
    oh.CUSTOMER_ID,
    dr.ORDER_DETAIL_ID,
    dr.UNIT_PRICE,
    dr.QUANTITY,
    dr.PRODUCT_ID
FROM order_header oh
JOIN dim_orderdt dr
    ON oh.ORDER_ID = dr.ORDER_ID