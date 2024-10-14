WITH SRC_LOC AS (
    SELECT * FROM {{ source('pos', 'location') }}
),

SELECT * FROM SRC_LOC