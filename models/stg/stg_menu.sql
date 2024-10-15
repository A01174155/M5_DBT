WITH SRC_MENU AS (
    SELECT * FROM {{ source('pos', 'menu') }}
)

SELECT * FROM SRC_MENU