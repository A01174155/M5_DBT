WITH stg_truck AS (
    SELECT * {{ ref ('stg_menu') }}
),
ajust_truck AS (
    SELECT *,
    MAKE AS CAR_BRAND,
    FROM stg_truck
)

SELECT * 
FROM ajust_truck