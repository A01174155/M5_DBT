WITH brand_truck AS (
    SELECT DISTINCT 
        TRUCK_BRAND_NAME,
        MENU_TYPE_ID
    FROM {{ ref('l1_menu') }}
),

dim_truck AS (
    SELECT 
    TRUCK_ID,
    MENU_TYPE_ID,
    CAR_BRAND,
    MODEL,
    YEAR
FROM {{ ref('l1_truck') }}
)

SELECT
    bt.TRUCK_BRAND_NAME,
    dt.TRUCK_ID,
    dt.CAR_BRAND,
    dt.MODEL,
    dt.MENU_TYPE_ID,
    dt.YEAR
FROM brand_truck bt
JOIN dim_truck dt
    ON bt.MENU_TYPE_ID = dt.MENU_TYPE_ID
