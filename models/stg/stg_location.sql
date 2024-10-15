WITH SRC_LOC AS (
    SELECT * FROM {{ source('pos', 'location') }}
)

SELECT 
    LOCATION_ID, 
    PLACEKEY,
    LOCATION,
    CITY,
    REGION,
    ISO_COUNTRY_CODE,
    COUNTRY
 FROM SRC_LOC