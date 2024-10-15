WITH st_truck AS (
    SELECT * FROM {{ ref ('stg_truck') }}
),

ajust_truck AS (
    SELECT *,
    MAKE AS CAR_BRAND
    FROM st_truck
)

SELECT * 
FROM ajust_truck