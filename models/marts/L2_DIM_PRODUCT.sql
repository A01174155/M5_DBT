WITH order_detail AS (
    SELECT 
        PRODUCT_ID
    FROM {{ ref('l1_order_detail') }}
),

dim_product AS (
    SELECT 
    PRODUCT_ID,
    PRODUCT_NAME,
    PRODUCT_CATEGORY,
    PRODUCT_SUBCATEGORY
FROM {{ ref('l1_menu') }}
)

SELECT
    dp.PRODUCT_ID,
    dp.PRODUCT_NAME,
    dp.PRODUCT_CATEGORY,
    dp.PRODUCT_SUBCATEGORY
FROM order_detail od
JOIN dim_product dp
    ON od.PRODUCT_ID = dp.PRODUCT_ID