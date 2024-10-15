WITH SRC_TRUCK AS (
    SELECT * FROM {{ source('pos', 'truck') }}
)

SELECT * FROM SRC_TRUCK