WITH SRC_CTRY AS (
    SELECT * FROM {{ source('pos', 'country') }}
),

SELECT * FROM SRC_CTRY