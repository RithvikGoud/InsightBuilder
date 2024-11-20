SELECT
    booking_id,
    date,
    property_id,
    price
FROM {{ ref('stg_booking') }}
