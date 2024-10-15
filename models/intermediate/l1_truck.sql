WITH stg_truck AS (
    SELECT * {{ ref ('stg_menu') }}
),
ajust_truck AS (
    SELECT 
    TRUCK_ID,
    MENU_TYPE_ID,
    MAKE AS CAR_BRAND,
    MODEL,
    YEAR
    FROM stg_truck
)

SELECT * 
FROM ajust_truck