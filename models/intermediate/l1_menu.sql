WITH stg_menu AS (
    SELECT * {{ ref ('stg_menu') }}
),
ajust_menu AS (
    SELECT 
    MENU_ITEM_ID AS PRODUCT_ID,
    MENU_ITEM_NAME AS PRODUCT_NAME,
    ITEM_CATEGORY AS PRODUCT_CATEGORY,
    ITEM_SUBCATEGORY AS PRODUCT_SUBCATEGORY,
    MENU_TYPE_ID,
    TRUCK_BRAND_NAME
    FROM stg_menu
)

SELECT * 
FROM ajust_menu