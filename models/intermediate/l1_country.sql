WITH st_country AS (
    SELECT * FROM {{ ref ('stg_country') }}
)

SELECT * 
FROM st_country