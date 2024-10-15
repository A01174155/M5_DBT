WITH stg_menu AS (
    SELECT * FROM {{ ref ('stg_menu') }}
),
ajust_menu AS (
    SELECT *,
    MENU_ITEM_ID AS PRODUCT_ID,
    MENU_ITEM_NAME AS PRODUCT_NAME,
    ITEM_CATEGORY AS PRODUCT_CATEGORY,
    ITEM_SUBCATEGORY AS PRODUCT_SUBCATEGORY
    FROM stg_menu
)

SELECT * 
FROM ajust_menu