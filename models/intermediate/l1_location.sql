WITH stg_location AS (
    SELECT * {{ ref ('stg_location') }}
)

SELECT * 
FROM stg_location