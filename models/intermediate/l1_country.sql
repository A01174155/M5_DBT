WITH stg_country AS (
    SELECT * {{ ref ('stg_country') }}
)

SELECT * 
FROM stg_country