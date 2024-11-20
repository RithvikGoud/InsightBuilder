WITH booking_data AS (
  SELECT 
    ROW_NUMBER() OVER (ORDER BY property_id) AS booking_id,
    property_id,
    availability,
    date,
    price
  FROM {{ source('HL_R_S', 'Booking_Summary') }}
)

SELECT 
    booking_id,  
    property_id, 
    date,      
    price      
FROM booking_data
WHERE availability = true