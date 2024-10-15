WITH st_location AS (
    SELECT * FROM {{ ref ('stg_location') }}
)

SELECT * 
FROM st_location