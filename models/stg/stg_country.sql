WITH SRC_CTRY AS (
    SELECT * FROM {{ source('pos', 'country') }}
)

SELECT 
    COUNTRY_ID,
    COUNTRY,
    ISO_CURRENCY,
    ISO_COUNTRY,
    CITY_ID,
    CITY.
    CITY_POPULATION
    FROM SRC_CTRY